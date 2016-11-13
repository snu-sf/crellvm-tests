; ModuleID = './gdevpdtw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
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
%struct.pdf_text_data_s = type { %struct.pdf_outline_fonts_s*, %struct.pdf_bitmap_fonts_s*, %struct.pdf_text_state_s* }
%struct.pdf_outline_fonts_s = type { %struct.pdf_standard_font_s* }
%struct.pdf_standard_font_s = type { %struct.pdf_font_resource_s*, %struct.gs_matrix_s }
%struct.pdf_bitmap_fonts_s = type { %struct.pdf_font_resource_s*, i32, i64, i32 }
%struct.pdf_text_state_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
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
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.gs_string_s = type { i8*, i32 }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.anon = type { %struct.pdf_font_resource_s*, [27 x i8], %struct.gs_const_string_s, i32, i32, i32 }
%struct.anon.5 = type { i32 }
%struct.anon.2 = type { i64, i16*, i32, i64, double*, double*, i8*, %struct.pdf_font_resource_s* }
%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.pdf_data_writer_s = type { %struct.psdf_binary_writer_s, i64, i64, %struct.pdf_resource_s*, %struct.gx_device_pdf_s*, i64, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.stream_arcfour_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, [256 x i8] }

@gx_extendeg_glyph_name_separator = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [17 x i8] c"<</Type/Encoding\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/BaseEncoding/%s\00", align 1
@encoding_names = internal constant [7 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"/Differences[\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"]>>\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"/Encoding %ld 0 R\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/Encoding/%s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"/Encoding %s\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"/DescendantFonts[%ld 0 R]\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"/Subtype/Type0>>\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"/Subtype/Type3>>\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"/CIDToGIDMap %ld 0 R\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/CIDToGIDMap /Identity\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"/WMode\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/CMapName\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"/CIDSystemInfo\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"/CMap\00", align 1
@pdf_write_OneByteIdentityH.cidsi = internal constant %struct.gs_cid_system_info_s { %struct.gs_const_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 5 }, %struct.gs_const_string_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 8 }, i32 0 }, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"/OneByteIdentityH\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@OneByteIdentityH = internal global [25 x i8*] [i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* null], align 16
@.str.23 = private unnamed_addr constant [17 x i8] c"StandardEncoding\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"ISOLatin1Encoding\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SymbolEncoding\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"DingbatsEncoding\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"WinAnsiEncoding\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"MacRomanEncoding\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"MacExpertEncoding\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"/FirstChar %d/LastChar %d/Widths[\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\0A%g\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"/Subtype/%s>>\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"TrueType\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"MMType1\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Type1\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"/DW 0\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"/CIDSystemInfo %ld 0 R\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"/Subtype/CIDFontType%d>>\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"/W2\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"/W\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"/DW2 [%d %d]\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"/DW %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"\0A%d %d %d\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%d[%d %d %d\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%d[%d\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"]]\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"/BaseFont\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"/FontDescriptor %ld 0 R\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"/ToUnicode %ld 0 R\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"/Type/Font\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"/Type/Font/Name/R%ld\0A\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"/.Global true\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"/Resources %ld 0 R\0A\00", align 1
@gs_c_min_std_encoding_glyph = external constant i64, align 8
@gs_c_pdf_glyph_type = external constant [0 x i8], align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"temporary buffer for Registry\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"free temporary Registry buffer\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"free temporary Ordering buffer\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"<<\0A/Registry\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"\0A/Ordering\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"\0A/Supplement %d\0A>>\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"/CIDInit /ProcSet findresource begin\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"12 dict begin\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"begincmap\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"/CIDSystemInfo 3 dict dup begin\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"/Registry (Adobe) def\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"/Ordering (Identity) def\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"/Supplement 0 def\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"end def\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"/CMapName /OneByteIdentityH def\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"/CMapVersion 1.000 def\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"/CMapType 1 def\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"/UIDOffset 0 def\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"/XUID [1 10 25404 9999] def\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"/WMode 0 def\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"1 begincodespacerange\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"<00> <FF>\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"endcodespacerange\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"1 begincidrange\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"<00> <FF> 0\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"endcidrange\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"endcmap\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"CMapName currentdict /CMap defineresource pop\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_different_encoding_index(%struct.pdf_font_resource_s* %pdfont, i32 %ch0) #0 {
entry:
  %retval = alloca i32, align 4
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch0.addr = alloca i32, align 4
  %base_encoding = alloca i32, align 4
  %ch = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %ch0, i32* %ch0.addr, align 4, !tbaa !5
  %0 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %BaseEncoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 2
  %2 = load i32, i32* %BaseEncoding, align 4, !tbaa !7
  store i32 %2, i32* %base_encoding, align 4, !tbaa !9
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %ch0.addr, align 4, !tbaa !5
  store i32 %5, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %8 = load i32, i32* %ch, align 4, !tbaa !5
  %9 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %call = call i32 @pdf_different_encoding_element(%struct.pdf_font_resource_s* %7, i32 %8, i32 %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %13 = load i32, i32* %ch, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  %14 = load i32, i32* %ch, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @pdf_different_encoding_element(%struct.pdf_font_resource_s* %pdfont, i32 %ch, i32 %encoding_index) #0 {
entry:
  %retval = alloca i32, align 4
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch.addr = alloca i32, align 4
  %encoding_index.addr = alloca i32, align 4
  %glyph0 = alloca i64, align 8
  %glyph1 = alloca i64, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store i32 %encoding_index, i32* %encoding_index.addr, align 4, !tbaa !5
  %0 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %2 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %2, i64 %idxprom
  %is_difference = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx, i32 0, i32 2
  %3 = load i32, i32* %is_difference, align 4, !tbaa !11
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %encoding_index.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then.1, label %if.end.28

if.then.1:                                        ; preds = %if.else
  %5 = bitcast i64* %glyph0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %7 = load i32, i32* %encoding_index.addr, align 4, !tbaa !5
  %call = call i64 @gs_c_known_encode(i64 %conv, i32 %7) #5
  store i64 %call, i64* %glyph0, align 8, !tbaa !15
  %8 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 20
  %simple4 = bitcast %union.anon.1* %u3 to %struct.anon.3*
  %Encoding5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple4, i32 0, i32 4
  %11 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding5, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %11, i64 %idxprom2
  %glyph = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx6, i32 0, i32 0
  %12 = load i64, i64* %glyph, align 8, !tbaa !16
  store i64 %12, i64* %glyph1, align 8, !tbaa !15
  %13 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i64, i64* %glyph0, align 8, !tbaa !15
  %call7 = call i32 @gs_c_glyph_name(i64 %15, %struct.gs_const_string_s* %str) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.1
  %18 = load i64, i64* %glyph1, align 8, !tbaa !15
  %cmp11 = icmp ne i64 %18, 2147483647
  br i1 %cmp11, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.end
  %19 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u15 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 20
  %simple16 = bitcast %union.anon.1* %u15 to %struct.anon.3*
  %Encoding17 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple16, i32 0, i32 4
  %21 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding17, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %21, i64 %idxprom14
  %str19 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx18, i32 0, i32 1
  %call20 = call i32 @strings_equal(%struct.gs_const_string_s* %str, %struct.gs_const_string_s* %str19) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.13
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.13
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.10
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64* %glyph0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.end.28:                                        ; preds = %cleanup.cont, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %cleanup, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_write_encoding(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i64 %id, i32 %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %id.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %base_encoding = alloca i32, align 4
  %sl = alloca i32, align 4
  %prev = alloca i32, align 4
  %code = alloca i32, align 4
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !15
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %BaseEncoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 2
  %3 = load i32, i32* %BaseEncoding, align 4, !tbaa !7
  store i32 %3, i32* %base_encoding, align 4, !tbaa !9
  %4 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %call = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %sl, align 4, !tbaa !5
  %5 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 256, i32* %prev, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %cnt, align 4, !tbaa !5
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load i64, i64* %id.addr, align 8, !tbaa !15
  %call1 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %8, i64 %9, i32 16) #5
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 47
  %11 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %11, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  %13 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 99
  %15 = load i32, i32* %ForOPDFRead, align 4, !tbaa !58
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %base_encoding, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %cmp4 = icmp sgt i32 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @encoding_names, i32 0, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call7 = call i8* @pprints1(%struct.stream_s* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %19) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end.8
  %21 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %21, 256
  br i1 %cmp10, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %22 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %23 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %24 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %call12 = call i32 @pdf_different_encoding_element(%struct.pdf_font_resource_s* %22, i32 %23, i32 %24) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %25, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %27, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.53

land.lhs.true.19:                                 ; preds = %if.end.16
  %28 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %28, i32 0, i32 8
  %29 = load i32, i32* %FontType, align 4, !tbaa !59
  %cmp20 = icmp eq i32 %29, 3
  br i1 %cmp20, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %30 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType22 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %30, i32 0, i32 8
  %31 = load i32, i32* %FontType22, align 4, !tbaa !59
  %cmp23 = icmp eq i32 %31, 53
  br i1 %cmp23, label %if.then.37, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %32 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType26 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %32, i32 0, i32 8
  %33 = load i32, i32* %FontType26, align 4, !tbaa !59
  %cmp27 = icmp eq i32 %33, 51
  br i1 %cmp27, label %if.then.37, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %34 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %34, i32 0, i32 8
  %35 = load i32, i32* %FontType30, align 4, !tbaa !59
  %cmp31 = icmp eq i32 %35, 52
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType34 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 8
  %37 = load i32, i32* %FontType34, align 4, !tbaa !59
  %cmp35 = icmp eq i32 %37, 54
  br i1 %cmp35, label %if.then.37, label %if.end.53

if.then.37:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false, %land.lhs.true.19
  %38 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %shr = ashr i32 %38, 3
  %idxprom38 = sext i32 %shr to i64
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %39, i32 0, i32 15
  %40 = load i8*, i8** %used, align 8, !tbaa !62
  %arrayidx39 = getelementptr inbounds i8, i8* %40, i64 %idxprom38
  %41 = load i8, i8* %arrayidx39, align 1, !tbaa !9
  %conv40 = zext i8 %41 to i32
  %42 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %and = and i32 %42, 7
  %shr41 = ashr i32 128, %and
  %and42 = and i32 %conv40, %shr41
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %if.then.37
  %43 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u46 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %44, i32 0, i32 20
  %simple47 = bitcast %union.anon.1* %u46 to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple47, i32 0, i32 4
  %45 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !10
  %arrayidx48 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %45, i64 %idxprom45
  %str = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx48, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %46 = load i32, i32* %size, align 4, !tbaa !63
  %tobool49 = icmp ne i32 %46, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.44
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.37
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %lor.lhs.false.33, %if.end.16
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %47, 0
  br i1 %tobool54, label %if.then.55, label %if.end.94

if.then.55:                                       ; preds = %if.end.53
  %48 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom56 = sext i32 %49 to i64
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u57 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 20
  %simple58 = bitcast %union.anon.1* %u57 to %struct.anon.3*
  %Encoding59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple58, i32 0, i32 4
  %51 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding59, align 8, !tbaa !10
  %arrayidx60 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %51, i64 %idxprom56
  %str61 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx60, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str61, i32 0, i32 0
  %52 = load i8*, i8** %data, align 8, !tbaa !64
  store i8* %52, i8** %d, align 8, !tbaa !1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom62 = sext i32 %55 to i64
  %56 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u63 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %56, i32 0, i32 20
  %simple64 = bitcast %union.anon.1* %u63 to %struct.anon.3*
  %Encoding65 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple64, i32 0, i32 4
  %57 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding65, align 8, !tbaa !10
  %arrayidx66 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %57, i64 %idxprom62
  %str67 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx66, i32 0, i32 1
  %size68 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str67, i32 0, i32 1
  %58 = load i32, i32* %size68, align 4, !tbaa !63
  store i32 %58, i32* %l, align 4, !tbaa !5
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HavePDFWidths = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 103
  %60 = load i32, i32* %HavePDFWidths, align 4, !tbaa !65
  %tobool69 = icmp ne i32 %60, 0
  br i1 %tobool69, label %if.then.70, label %if.end.80

if.then.70:                                       ; preds = %if.then.55
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.then.70
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %62 = load i32, i32* %sl, align 4, !tbaa !5
  %add = add nsw i32 %61, %62
  %63 = load i32, i32* %l, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %add, %63
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %64 = load i8*, i8** %d, align 8, !tbaa !1
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %65 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  %66 = load i32, i32* %sl, align 4, !tbaa !5
  %conv75 = sext i32 %66 to i64
  %call76 = call i32 @memcmp(i8* %add.ptr, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0), i64 %conv75) #6
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %for.body.74
  %67 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %67, i32* %l, align 4, !tbaa !5
  br label %for.end

if.end.79:                                        ; preds = %for.body.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.71

for.end:                                          ; preds = %if.then.78, %for.cond.71
  br label %if.end.80

if.end.80:                                        ; preds = %for.end, %if.then.55
  %69 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %70 = load i32, i32* %prev, align 4, !tbaa !5
  %add81 = add nsw i32 %70, 1
  %cmp82 = icmp ne i32 %69, %add81
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.end.80
  %71 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %72 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %call85 = call i8* @pprintd1(%struct.stream_s* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %72) #5
  store i32 1, i32* %cnt, align 4, !tbaa !5
  br label %if.end.92

if.else:                                          ; preds = %if.end.80
  %73 = load i32, i32* %cnt, align 4, !tbaa !5
  %inc86 = add nsw i32 %73, 1
  store i32 %inc86, i32* %cnt, align 4, !tbaa !5
  %and87 = and i32 %73, 15
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.else
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call90 = call i32 @stream_puts(%struct.stream_s* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.else
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.84
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %d, align 8, !tbaa !1
  %77 = load i32, i32* %l, align 4, !tbaa !5
  %call93 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %75, i8* %76, i32 %77) #5
  %78 = load i32, i32* %ch.addr, align 4, !tbaa !5
  store i32 %78, i32* %prev, align 4, !tbaa !5
  %79 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.92, %if.end.53
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %82 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %inc96 = add nsw i32 %82, 1
  store i32 %inc96, i32* %ch.addr, align 4, !tbaa !5
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call98 = call i32 @stream_puts(%struct.stream_s* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #5
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call99 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %84, i32 16) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.97, %if.then.15
  %85 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #3

declare i32 @stream_puts(%struct.stream_s*, i8*) #3

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #3

declare i32 @pdf_put_name(%struct.gx_device_pdf_s*, i8*, i32) #3

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_write_encoding_ref(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i64 %id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %id.addr = alloca i64, align 8
  %s = alloca %struct.stream_s*, align 8
  %base_encoding = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !15
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load i64, i64* %id.addr, align 8, !tbaa !15
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load i64, i64* %id.addr, align 8, !tbaa !15
  %call = call i8* @pprintld1(%struct.stream_s* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i64 %5) #5
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load i64, i64* %id.addr, align 8, !tbaa !15
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 7
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %id1 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 1
  %10 = load i64, i64* %id1, align 8, !tbaa !67
  %call2 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %6, i64 %7, i64 %10) #5
  br label %if.end.9

if.else:                                          ; preds = %entry
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %BaseEncoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 2
  %12 = load i32, i32* %BaseEncoding, align 4, !tbaa !7
  %cmp3 = icmp sgt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %13 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %simple6 = bitcast %union.anon.1* %u5 to %struct.anon.3*
  %BaseEncoding7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple6, i32 0, i32 2
  %15 = load i32, i32* %BaseEncoding7, align 4, !tbaa !7
  store i32 %15, i32* %base_encoding, align 4, !tbaa !9
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load i32, i32* %base_encoding, align 4, !tbaa !9
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @encoding_names, i32 0, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call8 = call i8* @pprints1(%struct.stream_s* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %18) #5
  %19 = bitcast i32* %base_encoding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %20 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 0
}

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #3

declare i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s*, i64, i64) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_type0(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %3, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %Encoding_name = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 20
  %type02 = bitcast %union.anon.1* %u1 to %struct.anon*
  %Encoding_name3 = getelementptr inbounds %struct.anon, %struct.anon* %type02, i32 0, i32 1
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name3, i32 0, i32 0
  %call = call i8* @pprints1(%struct.stream_s* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 20
  %type05 = bitcast %union.anon.1* %u4 to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type05, i32 0, i32 0
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !70
  %call6 = call i64 @pdf_font_id(%struct.pdf_font_resource_s* %9) #5
  %call7 = call i8* @pprintld1(%struct.stream_s* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i64 %call6) #5
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call8 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #5
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call9 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %11, i32 6) #5
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 0
}

declare i64 @pdf_font_id(%struct.pdf_font_resource_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_finish_write_contents_type3(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %4, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s1 to %struct.anon.7*
  %FontBBox = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 0
  %call = call i32 @pdf_write_font_bbox_float(%struct.gx_device_pdf_s* %3, %struct.gs_rect_s* %FontBBox) #5
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 20
  %simple3 = bitcast %union.anon.1* %u2 to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple3, i32 0, i32 0
  %7 = load i32, i32* %FirstChar, align 4, !tbaa !72
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 20
  %simple5 = bitcast %union.anon.1* %u4 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple5, i32 0, i32 1
  %9 = load i32, i32* %LastChar, align 4, !tbaa !73
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 14
  %11 = load double*, double** %Widths, align 8, !tbaa !74
  %call6 = call i32 @pdf_write_Widths(%struct.gx_device_pdf_s* %5, i32 %7, i32 %9, double* %11) #5
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call7 = call i32 @stream_puts(%struct.stream_s* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #5
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %13, i32 6) #5
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 0
}

declare i32 @pdf_write_font_bbox_float(%struct.gx_device_pdf_s*, %struct.gs_rect_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_Widths(%struct.gx_device_pdf_s* %pdev, i32 %first, i32 %last, double* %widths) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %widths.addr = alloca double*, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %first, i32* %first.addr, align 4, !tbaa !5
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  store double* %widths, double** %widths.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %first.addr, align 4, !tbaa !5
  %5 = load i32, i32* %last.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %last.addr, align 4, !tbaa !5
  store i32 0, i32* %first.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load i32, i32* %first.addr, align 4, !tbaa !5
  %8 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i8* @pprintd2(%struct.stream_s* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i32 %7, i32 %8) #5
  %9 = load i32, i32* %first.addr, align 4, !tbaa !5
  store i32 %9, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %last.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %10, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %13, 15
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load double*, double** %widths.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8, !tbaa !75
  %call2 = call double @psdf_round(double %16, i32 100, i32 10) #5
  %call3 = call i8* @pprintg1(%struct.stream_s* %12, i8* %cond, double %call2) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call4 = call i32 @stream_puts(%struct.stream_s* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_std(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_simple_contents(%struct.gx_device_pdf_s* %0, %struct.pdf_font_resource_s* %1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_simple_contents(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %diff_id = alloca i64, align 8
  %ch = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i64* %diff_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %diff_id, align 8, !tbaa !15
  %4 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %6 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !10
  %tobool = icmp ne %struct.pdf_encoding_element_s* %6, null
  %cond = select i1 %tobool, i32 0, i32 256
  store i32 %cond, i32* %ch, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %9 = load i32, i32* %ch, align 4, !tbaa !5
  %call = call i32 @pdf_different_encoding_index(%struct.pdf_font_resource_s* %8, i32 %9) #5
  store i32 %call, i32* %ch, align 4, !tbaa !5
  %10 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %11) #5
  store i64 %call1, i64* %diff_id, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %14 = load i64, i64* %diff_id, align 8, !tbaa !15
  %call2 = call i32 @pdf_write_encoding_ref(%struct.gx_device_pdf_s* %12, %struct.pdf_font_resource_s* %13, i64 %14) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 8
  %19 = load i32, i32* %FontType, align 4, !tbaa !59
  %cmp6 = icmp eq i32 %19, 42
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u7 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 20
  %simple8 = bitcast %union.anon.1* %u7 to %struct.anon.3*
  %s9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple8, i32 0, i32 7
  %type1 = bitcast %union.anon.4* %s9 to %struct.anon.5*
  %is_MM_instance = getelementptr inbounds %struct.anon.5, %struct.anon.5* %type1, i32 0, i32 0
  %21 = load i32, i32* %is_MM_instance, align 4, !tbaa !76
  %tobool10 = icmp ne i32 %21, 0
  %cond11 = select i1 %tobool10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %cond.true ], [ %cond11, %cond.false ]
  %call13 = call i8* @pprints1(%struct.stream_s* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* %cond12) #5
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call14 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %22, i32 6) #5
  %23 = load i64, i64* %diff_id, align 8, !tbaa !15
  %tobool15 = icmp ne i64 %23, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %cond.end
  %24 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call17 = call i32 @mark_font_descriptor_symbolic(%struct.pdf_font_resource_s* %24) #5
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %27 = load i64, i64* %diff_id, align 8, !tbaa !15
  %28 = load i32, i32* %ch, align 4, !tbaa !5
  %call18 = call i32 @pdf_write_encoding(%struct.gx_device_pdf_s* %25, %struct.pdf_font_resource_s* %26, i64 %27, i32 %28) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %29, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.20, %if.then.4
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i64* %diff_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_simple(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 0
  %2 = load i32, i32* %FirstChar, align 4, !tbaa !72
  %3 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %3, i32 0, i32 20
  %simple2 = bitcast %union.anon.1* %u1 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple2, i32 0, i32 1
  %4 = load i32, i32* %LastChar, align 4, !tbaa !73
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 14
  %6 = load double*, double** %Widths, align 8, !tbaa !74
  %call = call i32 @pdf_write_Widths(%struct.gx_device_pdf_s* %0, i32 %2, i32 %4, double* %6) #5
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_write_simple_contents(%struct.gx_device_pdf_s* %7, %struct.pdf_font_resource_s* %8) #5
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_cid0(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call = call i32 @write_contents_cid_common(%struct.gx_device_pdf_s* %0, %struct.pdf_font_resource_s* %1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @write_contents_cid_common(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i32 %subtype) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %subtype.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %subtype, i32* %subtype.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %4, i32 0, i32 14
  %5 = load double*, double** %Widths, align 8, !tbaa !74
  %cmp = icmp ne double* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_CIDFont_widths(%struct.gx_device_pdf_s* %6, %struct.pdf_font_resource_s* %7, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 4
  %12 = load double*, double** %Widths2, align 8, !tbaa !78
  %cmp5 = icmp ne double* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call7 = call i32 @pdf_write_CIDFont_widths(%struct.gx_device_pdf_s* %13, %struct.pdf_font_resource_s* %14, i32 1) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.4
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 20
  %cidfont13 = bitcast %union.anon.1* %u12 to %struct.anon.2*
  %CIDSystemInfo_id = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont13, i32 0, i32 0
  %18 = load i64, i64* %CIDSystemInfo_id, align 8, !tbaa !80
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.11
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u15 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 20
  %cidfont16 = bitcast %union.anon.1* %u15 to %struct.anon.2*
  %CIDSystemInfo_id17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont16, i32 0, i32 0
  %21 = load i64, i64* %CIDSystemInfo_id17, align 8, !tbaa !80
  %call18 = call i8* @pprintld1(%struct.stream_s* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i64 %21) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.11
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load i32, i32* %subtype.addr, align 4, !tbaa !5
  %call20 = call i8* @pprintd1(%struct.stream_s* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i32 %23) #5
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call21 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %24, i32 6) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.9, %if.then.2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_cid2(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %count = alloca i32, align 4
  %map_id = alloca i64, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %code = alloca i32, align 4
  %cid = alloca i32, align 4
  %gid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %i = alloca i32, align 4
  %gid36 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 13
  %2 = load i32, i32* %count1, align 4, !tbaa !81
  store i32 %2, i32* %count, align 4, !tbaa !5
  %3 = bitcast i64* %map_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %map_id, align 8, !tbaa !15
  %4 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 15
  %8 = load i8*, i8** %used, align 8, !tbaa !62
  %9 = load i32, i32* %count, align 4, !tbaa !5
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* null, i8* %8, i32 %9, i32 1) #5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %call = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i64, i64* %glyph, align 8, !tbaa !15
  %sub = sub i64 %11, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !5
  %12 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 1
  %15 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !82
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !83
  %conv2 = zext i16 %16 to i32
  store i32 %conv2, i32* %gid, align 4, !tbaa !5
  %17 = load i32, i32* %gid, align 4, !tbaa !5
  %18 = load i32, i32* %cid, align 4, !tbaa !5
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %19) #5
  store i64 %call4, i64* %map_id, align 8, !tbaa !15
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 47
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  %22 = load i64, i64* %map_id, align 8, !tbaa !15
  %call5 = call i8* @pprintld1(%struct.stream_s* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i64 %22) #5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %25 = load i64, i64* %map_id, align 8, !tbaa !15
  %cmp7 = icmp eq i64 %25, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %while.end
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %26, i32 0, i32 11
  %27 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !84
  %call9 = call i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %27) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 47
  %29 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !17
  %call13 = call i32 @stream_puts(%struct.stream_s* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %30, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.11
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.17:                                        ; preds = %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %while.end
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call19 = call i32 @write_contents_cid_common(%struct.gx_device_pdf_s* %32, %struct.pdf_font_resource_s* %33, i32 2) #5
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %34, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.23:                                        ; preds = %if.end.18
  %36 = load i64, i64* %map_id, align 8, !tbaa !15
  %tobool24 = icmp ne i64 %36, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.51

land.lhs.true.25:                                 ; preds = %if.end.23
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor26 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %37, i32 0, i32 11
  %38 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor26, align 8, !tbaa !84
  %call27 = call i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %38) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.51

if.then.29:                                       ; preds = %land.lhs.true.25
  %39 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 94
  %43 = load i32, i32* %CompressFonts, align 4, !tbaa !85
  %tobool30 = icmp ne i32 %43, 0
  %cond = select i1 %tobool30, i32 2, i32 0
  %or = or i32 1, %cond
  %44 = load i64, i64* %map_id, align 8, !tbaa !15
  %call31 = call i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s* %41, %struct.pdf_data_writer_s* %writer, i32 %or, i64 %44) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.29
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u32 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 20
  %cidfont33 = bitcast %union.anon.1* %u32 to %struct.anon.2*
  %CIDToGIDMapLength = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont33, i32 0, i32 2
  %47 = load i32, i32* %CIDToGIDMapLength, align 4, !tbaa !86
  %cmp34 = icmp ult i32 %45, %47
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast i32* %gid36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %49 to i64
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u38 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 20
  %cidfont39 = bitcast %union.anon.1* %u38 to %struct.anon.2*
  %CIDToGIDMap40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont39, i32 0, i32 1
  %51 = load i16*, i16** %CIDToGIDMap40, align 8, !tbaa !82
  %arrayidx41 = getelementptr inbounds i16, i16* %51, i64 %idxprom37
  %52 = load i16, i16* %arrayidx41, align 2, !tbaa !83
  %conv42 = zext i16 %52 to i32
  store i32 %conv42, i32* %gid36, align 4, !tbaa !5
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm43 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %53 = load %struct.stream_s*, %struct.stream_s** %strm43, align 8, !tbaa !87
  %54 = load i32, i32* %gid36, align 4, !tbaa !5
  %shr = lshr i32 %54, 8
  %conv44 = trunc i32 %shr to i8
  %call45 = call i32 @spputc(%struct.stream_s* %53, i8 zeroext %conv44) #5
  %binary46 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm47 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary46, i32 0, i32 2
  %55 = load %struct.stream_s*, %struct.stream_s** %strm47, align 8, !tbaa !87
  %56 = load i32, i32* %gid36, align 4, !tbaa !5
  %conv48 = trunc i32 %56 to i8
  %call49 = call i32 @spputc(%struct.stream_s* %55, i8 zeroext %conv48) #5
  %57 = bitcast i32* %gid36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call50 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #5
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %60) #1
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %land.lhs.true.25, %if.end.23
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.51, %if.then.22, %if.then.16
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %64) #1
  %65 = bitcast i64* %map_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i8*, i32, i32) #3

declare i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s*, i64*) #3

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #3

declare i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s*) #3

declare i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s*, %struct.pdf_data_writer_s*, i32, i64) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #3

declare i32 @pdf_end_data(%struct.pdf_data_writer_s*) #3

; Function Attrs: nounwind uwtable
define i32 @write_font_resources(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_list_s* %prlist) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %prlist.addr = alloca %struct.pdf_resource_list_s*, align 8
  %j = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_list_s* %prlist, %struct.pdf_resource_list_s** %prlist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %2 = load i32, i32* %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.pdf_resource_list_s*, %struct.pdf_resource_list_s** %prlist.addr, align 8, !tbaa !1
  %chains = getelementptr inbounds %struct.pdf_resource_list_s, %struct.pdf_resource_list_s* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x %struct.pdf_resource_s*], [16 x %struct.pdf_resource_s*]* %chains, i32 0, i64 %idxprom
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %arrayidx, align 8, !tbaa !1
  store %struct.pdf_resource_s* %5, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.pdf_resource_s* %6, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %9 = bitcast %struct.pdf_resource_s* %8 to %struct.pdf_font_resource_s*
  store %struct.pdf_font_resource_s* %9, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %10) #5
  %cmp4 = icmp ne i64 %call, -1
  br i1 %cmp4, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body.3
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call5 = call i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %12, %struct.pdf_font_resource_s* %13, i32 1) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call8 = call i32 @pdf_write_font_resource(%struct.gx_device_pdf_s* %16, %struct.pdf_font_resource_s* %17) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 7
  %21 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %21, i32 0, i32 8
  store i8 1, i8* %written, align 1, !tbaa !90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.7
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %for.body.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %if.end.12, %cleanup
  %23 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %cleanup.dest.14 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.14, label %cleanup.18 [
    i32 0, label %cleanup.cont.15
  ]

cleanup.cont.15:                                  ; preds = %cleanup.13
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.15
  %24 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %24, i32 0, i32 0
  %25 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %next, align 8, !tbaa !91
  store %struct.pdf_resource_s* %25, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

cleanup.18:                                       ; preds = %for.end.17, %cleanup.13
  %27 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #3

declare i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_font_resource(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pcd_Resources = alloca %struct.cos_dict_s*, align 8
  %base14_name = alloca i8*, align 8
  %id = alloca i32, align 4
  %prcmap = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code63 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %2 = bitcast i8** %base14_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %base14_name, align 8, !tbaa !1
  %3 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %4, i32 0, i32 17
  %5 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !93
  %cmp = icmp ne %struct.gs_cmap_s* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 16
  %7 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !94
  %cmp1 = icmp eq %struct.pdf_resource_s* %7, null
  br i1 %cmp1, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 8
  %9 = load i32, i32* %FontType, align 4, !tbaa !59
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 8
  %11 = load i32, i32* %FontType3, align 4, !tbaa !59
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %land.lhs.true.26, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 8
  %13 = load i32, i32* %FontType6, align 4, !tbaa !59
  %cmp7 = icmp eq i32 %13, 2
  br i1 %cmp7, label %land.lhs.true.26, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 8
  %15 = load i32, i32* %FontType9, align 4, !tbaa !59
  %cmp10 = icmp eq i32 %15, 42
  br i1 %cmp10, label %land.lhs.true.26, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %16, i32 0, i32 8
  %17 = load i32, i32* %FontType12, align 4, !tbaa !59
  %cmp13 = icmp eq i32 %17, 3
  br i1 %cmp13, label %land.lhs.true.26, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType15 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 8
  %19 = load i32, i32* %FontType15, align 4, !tbaa !59
  %cmp16 = icmp eq i32 %19, 52
  br i1 %cmp16, label %land.lhs.true.26, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType18 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 8
  %21 = load i32, i32* %FontType18, align 4, !tbaa !59
  %cmp19 = icmp eq i32 %21, 53
  br i1 %cmp19, label %land.lhs.true.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %22 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType21 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %22, i32 0, i32 8
  %23 = load i32, i32* %FontType21, align 4, !tbaa !59
  %cmp22 = icmp eq i32 %23, 51
  br i1 %cmp22, label %land.lhs.true.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %24 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType24 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %24, i32 0, i32 8
  %25 = load i32, i32* %FontType24, align 4, !tbaa !59
  %cmp25 = icmp eq i32 %25, 54
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call = call i32 @pdf_simple_font_needs_ToUnicode(%struct.pdf_font_resource_s* %26) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true.26, %if.then
  %27 = bitcast %struct.pdf_resource_s** %prcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode28 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %30, i32 0, i32 17
  %31 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode28, align 8, !tbaa !93
  %call29 = call i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s* %29, %struct.gs_cmap_s* %31, %struct.pdf_resource_s** %prcmap, i32 -1) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %32, 0
  br i1 %cmp30, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.then.27
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.27
  %34 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %prcmap, align 8, !tbaa !1
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode32 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %35, i32 0, i32 16
  store %struct.pdf_resource_s* %34, %struct.pdf_resource_s** %res_ToUnicode32, align 8, !tbaa !94
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.31
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.pdf_resource_s** %prcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.167 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %land.lhs.true.26, %lor.lhs.false.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %entry
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 75
  %39 = load double, double* %CompatibilityLevel, align 8, !tbaa !95
  %cmp36 = fcmp oge double %39, 1.200000e+00
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.82

land.lhs.true.37:                                 ; preds = %if.end.35
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType38 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 8
  %41 = load i32, i32* %FontType38, align 4, !tbaa !59
  %cmp39 = icmp eq i32 %41, 3
  br i1 %cmp39, label %land.lhs.true.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.37
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType41 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 8
  %43 = load i32, i32* %FontType41, align 4, !tbaa !59
  %cmp42 = icmp eq i32 %43, 53
  br i1 %cmp42, label %land.lhs.true.52, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %44 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType44 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %44, i32 0, i32 8
  %45 = load i32, i32* %FontType44, align 4, !tbaa !59
  %cmp45 = icmp eq i32 %45, 51
  br i1 %cmp45, label %land.lhs.true.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.43
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType47 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 8
  %47 = load i32, i32* %FontType47, align 4, !tbaa !59
  %cmp48 = icmp eq i32 %47, 52
  br i1 %cmp48, label %land.lhs.true.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType50 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 8
  %49 = load i32, i32* %FontType50, align 4, !tbaa !59
  %cmp51 = icmp eq i32 %49, 54
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.82

land.lhs.true.52:                                 ; preds = %lor.lhs.false.49, %lor.lhs.false.46, %lor.lhs.false.43, %lor.lhs.false.40, %land.lhs.true.37
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s53 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s53 to %struct.anon.7*
  %Resources = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 5
  %51 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources, align 8, !tbaa !96
  %cmp54 = icmp ne %struct.cos_dict_s* %51, null
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.82

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %52 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u56 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %52, i32 0, i32 20
  %simple57 = bitcast %union.anon.1* %u56 to %struct.anon.3*
  %s58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple57, i32 0, i32 7
  %type359 = bitcast %union.anon.4* %s58 to %struct.anon.7*
  %Resources60 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type359, i32 0, i32 5
  %53 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources60, align 8, !tbaa !96
  %elements = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %53, i32 0, i32 2
  %54 = load %struct.cos_dict_element_s*, %struct.cos_dict_element_s** %elements, align 8, !tbaa !98
  %cmp61 = icmp ne %struct.cos_dict_element_s* %54, null
  br i1 %cmp61, label %if.then.62, label %if.end.82

if.then.62:                                       ; preds = %land.lhs.true.55
  %55 = bitcast i32* %code63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u64 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %56, i32 0, i32 20
  %simple65 = bitcast %union.anon.1* %u64 to %struct.anon.3*
  %s66 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple65, i32 0, i32 7
  %type367 = bitcast %union.anon.4* %s66 to %struct.anon.7*
  %Resources68 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type367, i32 0, i32 5
  %57 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources68, align 8, !tbaa !96
  store %struct.cos_dict_s* %57, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call69 = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %58) #5
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %id70 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %59, i32 0, i32 1
  store i64 %call69, i64* %id70, align 8, !tbaa !100
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %61 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %id71 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %61, i32 0, i32 1
  %62 = load i64, i64* %id71, align 8, !tbaa !100
  %call72 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %60, i64 %62, i32 6) #5
  %63 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %63, i32 0, i32 0
  %64 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %66 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %id73 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %66, i32 0, i32 1
  %67 = load i64, i64* %id73, align 8, !tbaa !100
  %call74 = call i32 @cos_write(%struct.cos_object_s* %64, %struct.gx_device_pdf_s* %65, i64 %67) #5
  store i32 %call74, i32* %code63, align 4, !tbaa !5
  %68 = load i32, i32* %code63, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %68, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.62
  %69 = load i32, i32* %code63, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end.77:                                        ; preds = %if.then.62
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call78 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %70, i32 6) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.77, %if.then.76
  %71 = bitcast i32* %code63 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.167 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.79
  br label %if.end.82

if.end.82:                                        ; preds = %cleanup.cont.81, %land.lhs.true.55, %land.lhs.true.52, %lor.lhs.false.49, %if.end.35
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %73 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call83 = call i64 @pdf_font_id(%struct.pdf_font_resource_s* %73) #5
  %call84 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %72, i64 %call83, i32 6) #5
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 47
  %75 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %75, %struct.stream_s** %s, align 8, !tbaa !1
  %76 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call85 = call i32 @stream_puts(%struct.stream_s* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)) #5
  %77 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %77, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont, i32 0, i32 1
  %78 = load i32, i32* %size, align 4, !tbaa !101
  %cmp86 = icmp ugt i32 %78, 0
  br i1 %cmp86, label %if.then.87, label %if.end.109

if.then.87:                                       ; preds = %if.end.82
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call88 = call i32 @stream_puts(%struct.stream_s* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0)) #5
  %80 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %80, i32 0, i32 11
  %81 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !84
  %tobool89 = icmp ne %struct.pdf_font_descriptor_s* %81, null
  br i1 %tobool89, label %land.lhs.true.90, label %if.else

land.lhs.true.90:                                 ; preds = %if.then.87
  %82 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor91 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %82, i32 0, i32 11
  %83 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor91, align 8, !tbaa !84
  %call92 = call i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %83) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.else, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %land.lhs.true.90
  %84 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont95 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %84, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont95, i32 0, i32 0
  %85 = load i8*, i8** %data, align 8, !tbaa !102
  %86 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont96 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %86, i32 0, i32 10
  %size97 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont96, i32 0, i32 1
  %87 = load i32, i32* %size97, align 4, !tbaa !101
  %call98 = call i8* @pdf_find_base14_name(i8* %85, i32 %87) #5
  store i8* %call98, i8** %base14_name, align 8, !tbaa !1
  %tobool99 = icmp ne i8* %call98, null
  br i1 %tobool99, label %if.then.100, label %if.else

if.then.100:                                      ; preds = %land.lhs.true.94
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %89 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %90 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %call101 = call i64 @strlen(i8* %90) #6
  %conv = trunc i64 %call101 to i32
  %call102 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %88, i8* %89, i32 %conv) #5
  br label %if.end.108

if.else:                                          ; preds = %land.lhs.true.94, %land.lhs.true.90, %if.then.87
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %92 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont103 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %92, i32 0, i32 10
  %data104 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont103, i32 0, i32 0
  %93 = load i8*, i8** %data104, align 8, !tbaa !102
  %94 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont105 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %94, i32 0, i32 10
  %size106 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont105, i32 0, i32 1
  %95 = load i32, i32* %size106, align 4, !tbaa !101
  %call107 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %91, i8* %93, i32 %95) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.82
  %96 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor110 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %96, i32 0, i32 11
  %97 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor110, align 8, !tbaa !84
  %tobool111 = icmp ne %struct.pdf_font_descriptor_s* %97, null
  br i1 %tobool111, label %if.then.112, label %if.end.125

if.then.112:                                      ; preds = %if.end.109
  %98 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor113 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %98, i32 0, i32 11
  %99 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor113, align 8, !tbaa !84
  %call114 = call i64 @pdf_font_descriptor_id(%struct.pdf_font_descriptor_s* %99) #5
  %conv115 = trunc i64 %call114 to i32
  store i32 %conv115, i32* %id, align 4, !tbaa !5
  %100 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %101 = load i32, i32* %id, align 4, !tbaa !5
  %conv116 = sext i32 %101 to i64
  %call117 = call i8* @pprintld1(%struct.stream_s* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i64 %conv116) #5
  %102 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Linearise = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %102, i32 0, i32 249
  %103 = load i32, i32* %Linearise, align 4, !tbaa !103
  %tobool118 = icmp ne i32 %103, 0
  br i1 %tobool118, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %if.then.112
  %104 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %105 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %105, i32 0, i32 7
  %106 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !66
  %id120 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %106, i32 0, i32 1
  %107 = load i64, i64* %id120, align 8, !tbaa !67
  %conv121 = trunc i64 %107 to i32
  %108 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor122 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %108, i32 0, i32 11
  %109 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor122, align 8, !tbaa !84
  %call123 = call i64 @pdf_set_font_descriptor_usage(%struct.gx_device_pdf_s* %104, i32 %conv121, %struct.pdf_font_descriptor_s* %109) #5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %if.then.112
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.109
  %110 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode126 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %110, i32 0, i32 16
  %111 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode126, align 8, !tbaa !94
  %tobool127 = icmp ne %struct.pdf_resource_s* %111, null
  br i1 %tobool127, label %if.then.128, label %if.end.138

if.then.128:                                      ; preds = %if.end.125
  %112 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode129 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %112, i32 0, i32 16
  %113 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode129, align 8, !tbaa !94
  %call130 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %113) #5
  %conv131 = trunc i64 %call130 to i32
  store i32 %conv131, i32* %id, align 4, !tbaa !5
  %114 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %115 = load i32, i32* %id, align 4, !tbaa !5
  %conv132 = sext i32 %115 to i64
  %call133 = call i8* @pprintld1(%struct.stream_s* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i64 %conv132) #5
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %117 = load i32, i32* %id, align 4, !tbaa !5
  %conv134 = sext i32 %117 to i64
  %118 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object135 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %118, i32 0, i32 7
  %119 = load %struct.cos_object_s*, %struct.cos_object_s** %object135, align 8, !tbaa !66
  %id136 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %119, i32 0, i32 1
  %120 = load i64, i64* %id136, align 8, !tbaa !67
  %call137 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %116, i64 %conv134, i64 %120) #5
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.128, %if.end.125
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel139 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %121, i32 0, i32 75
  %122 = load double, double* %CompatibilityLevel139, align 8, !tbaa !95
  %cmp140 = fcmp ogt double %122, 1.000000e+00
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.end.138
  %123 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call143 = call i32 @stream_puts(%struct.stream_s* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)) #5
  br label %if.end.147

if.else.144:                                      ; preds = %if.end.138
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %125 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call145 = call i64 @pdf_font_id(%struct.pdf_font_resource_s* %125) #5
  %call146 = call i8* @pprintld1(%struct.stream_s* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i64 %call145) #5
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.142
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 99
  %127 = load i32, i32* %ForOPDFRead, align 4, !tbaa !58
  %tobool148 = icmp ne i32 %127, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.153

land.lhs.true.149:                                ; preds = %if.end.147
  %128 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %global = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %128, i32 0, i32 4
  %129 = load i32, i32* %global, align 4, !tbaa !104
  %tobool150 = icmp ne i32 %129, 0
  br i1 %tobool150, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %land.lhs.true.149
  %130 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call152 = call i32 @stream_puts(%struct.stream_s* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0)) #5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %land.lhs.true.149, %if.end.147
  %131 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cmp154 = icmp ne %struct.cos_dict_s* %131, null
  br i1 %cmp154, label %if.then.156, label %if.end.165

if.then.156:                                      ; preds = %if.end.153
  %132 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %id157 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %132, i32 0, i32 1
  %133 = load i64, i64* %id157, align 8, !tbaa !100
  %conv158 = trunc i64 %133 to i32
  store i32 %conv158, i32* %id, align 4, !tbaa !5
  %134 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %135 = load i32, i32* %id, align 4, !tbaa !5
  %conv159 = sext i32 %135 to i64
  %call160 = call i8* @pprintld1(%struct.stream_s* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), i64 %conv159) #5
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %137 = load i32, i32* %id, align 4, !tbaa !5
  %conv161 = sext i32 %137 to i64
  %138 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object162 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %138, i32 0, i32 7
  %139 = load %struct.cos_object_s*, %struct.cos_object_s** %object162, align 8, !tbaa !66
  %id163 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %139, i32 0, i32 1
  %140 = load i64, i64* %id163, align 8, !tbaa !67
  %call164 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %136, i64 %conv161, i64 %140) #5
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.156, %if.end.153
  %141 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %write_contents = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %141, i32 0, i32 9
  %142 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents, align 8, !tbaa !105
  %143 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %144 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call166 = call i32 %142(%struct.gx_device_pdf_s* %143, %struct.pdf_font_resource_s* %144) #5
  store i32 %call166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

cleanup.167:                                      ; preds = %if.end.165, %cleanup.79, %cleanup
  %145 = bitcast i32* %id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i8** %base14_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = load i32, i32* %retval
  ret i32 %149
}

; Function Attrs: nounwind uwtable
define i32 @pdf_finish_resources(%struct.gx_device_pdf_s* %pdev, i32 %type, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)* %finish_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %type.addr = alloca i32, align 4
  %finish_proc.addr = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)*, align 8
  %j = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !9
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)* %finish_proc, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)** %finish_proc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %2 = load i32, i32* %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %type.addr, align 4, !tbaa !9
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 165
  %arrayidx = getelementptr inbounds [15 x %struct.pdf_resource_list_s], [15 x %struct.pdf_resource_list_s]* %resources, i32 0, i64 %idxprom1
  %chains = getelementptr inbounds %struct.pdf_resource_list_s, %struct.pdf_resource_list_s* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [16 x %struct.pdf_resource_s*], [16 x %struct.pdf_resource_s*]* %chains, i32 0, i64 %idxprom
  %6 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %arrayidx2, align 8, !tbaa !1
  store %struct.pdf_resource_s* %6, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.pdf_resource_s* %7, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*)** %finish_proc.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_pdf_s* %10, %struct.pdf_resource_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %15, i32 0, i32 0
  %16 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %next, align 8, !tbaa !91
  store %struct.pdf_resource_s* %16, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %17 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %for.end.8, %cleanup
  %18 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_cid_system_info(%struct.gx_device_pdf_s* %pdev, %struct.gs_cid_system_info_s* %pcidsi, i64 %object_id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %object_id.addr = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !15
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  %3 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %4 = load i64, i64* %object_id.addr, align 8, !tbaa !15
  %call = call i32 @pdf_write_cid_system_info_to_stream(%struct.gx_device_pdf_s* %0, %struct.stream_s* %2, %struct.gs_cid_system_info_s* %3, i64 %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_cid_system_info_to_stream(%struct.gx_device_pdf_s* %pdev, %struct.stream_s* %s, %struct.gs_cid_system_info_s* %pcidsi, i64 %object_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %object_id.addr = alloca i64, align 8
  %Registry = alloca i8*, align 8
  %Ordering = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %sarc4 = alloca %struct.stream_arcfour_state_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store i64 %object_id, i64* %object_id.addr, align 8, !tbaa !15
  %0 = bitcast i8** %Registry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %Ordering to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 43
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !106
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %4 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !107
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 43
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !106
  %7 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry2 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %7, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry2, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !110
  %call = call i8* %4(%struct.gs_memory_s* %6, i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0)) #5
  store i8* %call, i8** %Registry, align 8, !tbaa !1
  %9 = load i8*, i8** %Registry, align 8, !tbaa !1
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 43
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory3, align 8, !tbaa !106
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %12 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !107
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 43
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory6, align 8, !tbaa !106
  %15 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering7 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %15, i32 0, i32 1
  %size8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering7, i32 0, i32 1
  %16 = load i32, i32* %size8, align 4, !tbaa !112
  %call9 = call i8* %12(%struct.gs_memory_s* %14, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0)) #5
  store i8* %call9, i8** %Ordering, align 8, !tbaa !1
  %17 = load i8*, i8** %Ordering, align 8, !tbaa !1
  %tobool10 = icmp ne i8* %17, null
  br i1 %tobool10, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 43
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory12, align 8, !tbaa !106
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !113
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 43
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory14, align 8, !tbaa !106
  %23 = load i8*, i8** %Registry, align 8, !tbaa !1
  call void %20(%struct.gs_memory_s* %22, i8* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.15:                                        ; preds = %if.end
  %24 = load i8*, i8** %Registry, align 8, !tbaa !1
  %25 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry16 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %25, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry16, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8, !tbaa !114
  %27 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry17 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %27, i32 0, i32 0
  %size18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry17, i32 0, i32 1
  %28 = load i32, i32* %size18, align 4, !tbaa !110
  %conv = zext i32 %28 to i64
  %call19 = call i8* @memcpy(i8* %24, i8* %26, i64 %conv) #7
  %29 = load i8*, i8** %Ordering, align 8, !tbaa !1
  %30 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering20 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %30, i32 0, i32 1
  %data21 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering20, i32 0, i32 0
  %31 = load i8*, i8** %data21, align 8, !tbaa !115
  %32 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering22 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %32, i32 0, i32 1
  %size23 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering22, i32 0, i32 1
  %33 = load i32, i32* %size23, align 4, !tbaa !112
  %conv24 = zext i32 %33 to i64
  %call25 = call i8* @memcpy(i8* %29, i8* %31, i64 %conv24) #7
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %KeyLength = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 117
  %35 = load i32, i32* %KeyLength, align 4, !tbaa !116
  %tobool26 = icmp ne i32 %35, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.15
  %36 = load i64, i64* %object_id.addr, align 8, !tbaa !15
  %cmp = icmp ne i64 %36, 0
  br i1 %cmp, label %if.then.28, label %if.end.62

if.then.28:                                       ; preds = %land.lhs.true
  %37 = bitcast %struct.stream_arcfour_state_s* %sarc4 to i8*
  call void @llvm.lifetime.start(i64 376, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load i64, i64* %object_id.addr, align 8, !tbaa !15
  %call29 = call i32 @pdf_encrypt_init(%struct.gx_device_pdf_s* %39, i64 %40, %struct.stream_arcfour_state_s* %sarc4) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %41, 0
  br i1 %cmp30, label %if.then.32, label %if.end.41

if.then.32:                                       ; preds = %if.then.28
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory33 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 43
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory33, align 8, !tbaa !106
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !113
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 43
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory36, align 8, !tbaa !106
  %47 = load i8*, i8** %Registry, align 8, !tbaa !1
  call void %44(%struct.gs_memory_s* %46, i8* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0)) #5
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 43
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory37, align 8, !tbaa !106
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object39, align 8, !tbaa !113
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 43
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory40, align 8, !tbaa !106
  %53 = load i8*, i8** %Ordering, align 8, !tbaa !1
  call void %50(%struct.gs_memory_s* %52, i8* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0)) #5
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.then.28
  %55 = load i8*, i8** %Registry, align 8, !tbaa !1
  %56 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry42 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %56, i32 0, i32 0
  %size43 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry42, i32 0, i32 1
  %57 = load i32, i32* %size43, align 4, !tbaa !110
  %call44 = call i32 @s_arcfour_process_buffer(%struct.stream_arcfour_state_s* %sarc4, i8* %55, i32 %57) #5
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %59 = load i64, i64* %object_id.addr, align 8, !tbaa !15
  %call45 = call i32 @pdf_encrypt_init(%struct.gx_device_pdf_s* %58, i64 %59, %struct.stream_arcfour_state_s* %sarc4) #5
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %60, 0
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.end.41
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 43
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory49, align 8, !tbaa !106
  %procs50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object51 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs50, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object51, align 8, !tbaa !113
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 43
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory52, align 8, !tbaa !106
  %66 = load i8*, i8** %Registry, align 8, !tbaa !1
  call void %63(%struct.gs_memory_s* %65, i8* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0)) #5
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory53 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 43
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory53, align 8, !tbaa !106
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object55 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object55, align 8, !tbaa !113
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory56 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 43
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory56, align 8, !tbaa !106
  %72 = load i8*, i8** %Ordering, align 8, !tbaa !1
  call void %69(%struct.gs_memory_s* %71, i8* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0)) #5
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.41
  %74 = load i8*, i8** %Ordering, align 8, !tbaa !1
  %75 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering58 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %75, i32 0, i32 1
  %size59 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering58, i32 0, i32 1
  %76 = load i32, i32* %size59, align 4, !tbaa !112
  %call60 = call i32 @s_arcfour_process_buffer(%struct.stream_arcfour_state_s* %sarc4, i8* %74, i32 %76) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.48, %if.then.32
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.stream_arcfour_state_s* %sarc4 to i8*
  call void @llvm.lifetime.end(i64 376, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.62

if.end.62:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.15
  %79 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call63 = call i32 @stream_puts(%struct.stream_s* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0)) #5
  %80 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %Registry, align 8, !tbaa !1
  %82 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Registry64 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %82, i32 0, i32 0
  %size65 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Registry64, i32 0, i32 1
  %83 = load i32, i32* %size65, align 4, !tbaa !110
  call void @s_write_ps_string(%struct.stream_s* %80, i8* %81, i32 %83, i32 4) #5
  %84 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call66 = call i32 @stream_puts(%struct.stream_s* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #5
  %85 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %86 = load i8*, i8** %Ordering, align 8, !tbaa !1
  %87 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Ordering67 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %87, i32 0, i32 1
  %size68 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering67, i32 0, i32 1
  %88 = load i32, i32* %size68, align 4, !tbaa !112
  call void @s_write_ps_string(%struct.stream_s* %85, i8* %86, i32 %88, i32 4) #5
  %89 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %90 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %Supplement = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %90, i32 0, i32 2
  %91 = load i32, i32* %Supplement, align 4, !tbaa !117
  %call69 = call i8* @pprintd1(%struct.stream_s* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i32 %91) #5
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory70 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %92, i32 0, i32 43
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory70, align 8, !tbaa !106
  %procs71 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 1
  %free_object72 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs71, i32 0, i32 2
  %94 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object72, align 8, !tbaa !113
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory73 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %95, i32 0, i32 43
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory73, align 8, !tbaa !106
  %97 = load i8*, i8** %Registry, align 8, !tbaa !1
  call void %94(%struct.gs_memory_s* %96, i8* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.59, i32 0, i32 0)) #5
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 43
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory74, align 8, !tbaa !106
  %procs75 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 1
  %free_object76 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs75, i32 0, i32 2
  %100 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object76, align 8, !tbaa !113
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %101, i32 0, i32 43
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory77, align 8, !tbaa !106
  %103 = load i8*, i8** %Ordering, align 8, !tbaa !1
  call void %100(%struct.gs_memory_s* %102, i8* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.62, %cleanup, %if.then.11, %if.then
  %104 = bitcast i8** %Ordering to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i8** %Registry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_cid_systemInfo_separate(%struct.gx_device_pdf_s* %pdev, %struct.gs_cid_system_info_s* %pcidsi, i64* %id) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %id.addr = alloca i64*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store i64* %id, i64** %id.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i64 @pdf_begin_separate(%struct.gx_device_pdf_s* %1, i32 17) #5
  %2 = load i64*, i64** %id.addr, align 8, !tbaa !1
  store i64 %call, i64* %2, align 8, !tbaa !15
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %5 = load i64*, i64** %id.addr, align 8, !tbaa !1
  %6 = load i64, i64* %5, align 8, !tbaa !15
  %call1 = call i32 @pdf_write_cid_system_info(%struct.gx_device_pdf_s* %3, %struct.gs_cid_system_info_s* %4, i64 %6) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %7, i32 17) #5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

declare i64 @pdf_begin_separate(%struct.gx_device_pdf_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_write_cmap(%struct.gx_device_pdf_s* %pdev, %struct.gs_cmap_s* %pcmap, %struct.pdf_resource_s** %ppres, i32 %font_index_only) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %font_index_only.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %alt_cmap_name = alloca %struct.gs_const_string_s, align 8
  %cmap_name = alloca %struct.gs_const_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  %buf = alloca [200 x i8], align 16
  %pcd = alloca %struct.cos_dict_s*, align 8
  %s = alloca %struct.stream_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #1
  %2 = bitcast %struct.gs_const_string_s* %alt_cmap_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_const_string_s** %cmap_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %4, i32 0, i32 2
  store %struct.gs_const_string_s* %CMapName, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 94
  %7 = load i32, i32* %CompressFonts, align 4, !tbaa !85
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %or = or i32 0, %cond
  %call = call i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s* %5, %struct.pdf_data_writer_s* %writer, i32 %or, i64 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !118
  %11 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %10, %struct.pdf_resource_s** %11, align 8, !tbaa !1
  %pres1 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %12 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !118
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %12, i32 0, i32 6
  store i64 0, i64* %where_used, align 8, !tbaa !119
  %13 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %ToUnicode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %13, i32 0, i32 10
  %14 = load i32, i32* %ToUnicode, align 4, !tbaa !120
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %if.end.41, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %15 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %15) #1
  %16 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %pres4 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres4, align 8, !tbaa !118
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %17, i32 0, i32 7
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !123
  %19 = bitcast %struct.cos_object_s* %18 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %19, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %20 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %20) #1
  %21 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %22 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %22, i32 0, i32 8
  %23 = load i32, i32* %WMode, align 4, !tbaa !124
  %call5 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %23) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %24, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.3
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i64 0
  store i8 47, i8* %arrayidx, align 1, !tbaa !9
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %26 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName9 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %26, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName9, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8, !tbaa !125
  %28 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName10 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %28, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName10, i32 0, i32 1
  %29 = load i32, i32* %size, align 4, !tbaa !126
  %conv = zext i32 %29 to i64
  %call11 = call i8* @memcpy(i8* %add.ptr, i8* %27, i64 %conv) #7
  %30 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %31 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName13 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %31, i32 0, i32 2
  %size14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName13, i32 0, i32 1
  %32 = load i32, i32* %size14, align 4, !tbaa !126
  %add = add i32 %32, 1
  %call15 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay12, i32 %add) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %33, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.8
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.8
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !127
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %36) #5
  %arraydecay20 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void @swrite_string(%struct.stream_s* %s, i8* %arraydecay20, i32 200) #5
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %38 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %38, i32 0, i32 3
  %39 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %CIDSystemInfo, align 8, !tbaa !128
  %call21 = call i32 @pdf_write_cid_system_info_to_stream(%struct.gx_device_pdf_s* %37, %struct.stream_s* %s, %struct.gs_cid_system_info_s* %39, i64 0) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %40, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.19
  %42 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay26 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call27 = call i64 @stell(%struct.stream_s* %s) #5
  %conv28 = trunc i64 %call27 to i32
  %call29 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay26, i32 %conv28) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %43, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.25
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.25
  %45 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call34 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %46, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37, %if.then.32, %if.then.24, %if.then.18, %if.then.7
  %48 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %48) #1
  %49 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont, %if.end
  %51 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName42 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %51, i32 0, i32 2
  %size43 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName42, i32 0, i32 1
  %52 = load i32, i32* %size43, align 4, !tbaa !126
  %cmp44 = icmp eq i32 %52, 0
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.41
  %53 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %54 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %53, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %54, i32 0, i32 5
  %arraydecay47 = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %data48 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %alt_cmap_name, i32 0, i32 0
  store i8* %arraydecay47, i8** %data48, align 8, !tbaa !129
  %55 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %56 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %55, align 8, !tbaa !1
  %rname49 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %56, i32 0, i32 5
  %arraydecay50 = getelementptr inbounds [24 x i8], [24 x i8]* %rname49, i32 0, i32 0
  %call51 = call i64 @strlen(i8* %arraydecay50) #6
  %conv52 = trunc i64 %call51 to i32
  %size53 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %alt_cmap_name, i32 0, i32 1
  store i32 %conv52, i32* %size53, align 4, !tbaa !130
  store %struct.gs_const_string_s* %alt_cmap_name, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %if.end.41
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !127
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %59 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !87
  %60 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call56 = call i32 (%struct.stream_s*, i8*, i32)* @pdf_put_name_chars_proc(%struct.gx_device_pdf_s* %61) #5
  %62 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %cmap_name, align 8, !tbaa !1
  %63 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call57 = call i32 @psf_write_cmap(%struct.gs_memory_s* %58, %struct.stream_s* %59, %struct.gs_cmap_s* %60, i32 (%struct.stream_s*, i8*, i32)* %call56, %struct.gs_const_string_s* %62, i32 %63) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %64, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.54
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.61:                                        ; preds = %if.end.54
  %call62 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %66, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.66:                                        ; preds = %if.end.61
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %if.then.65, %if.then.60, %cleanup, %if.then
  %69 = bitcast %struct.gs_const_string_s** %cmap_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.gs_const_string_s* %alt_cmap_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %70) #1
  %71 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %71) #1
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #3

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #3

declare void @swrite_string(%struct.stream_s*, i8*, i32) #3

declare i64 @stell(%struct.stream_s*) #3

declare i32 @cos_dict_put_string_copy(%struct.cos_dict_s*, i8*, i8*) #3

declare i32 @psf_write_cmap(%struct.gs_memory_s*, %struct.stream_s*, %struct.gs_cmap_s*, i32 (%struct.stream_s*, i8*, i32)*, %struct.gs_const_string_s*, i32) #3

declare i32 (%struct.stream_s*, i8*, i32)* @pdf_put_name_chars_proc(%struct.gx_device_pdf_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_write_OneByteIdentityH(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %buf = alloca [200 x i8], align 16
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #1
  %3 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %4) #1
  %5 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %IdentityCIDSystemInfo_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 170
  %7 = load i64, i64* %IdentityCIDSystemInfo_id, align 8, !tbaa !131
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_write_cid_systemInfo_separate(%struct.gx_device_pdf_s* %8, %struct.gs_cid_system_info_s* @pdf_write_OneByteIdentityH.cidsi, i64* %id) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %id, align 8, !tbaa !15
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %IdentityCIDSystemInfo_id3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 170
  store i64 %11, i64* %IdentityCIDSystemInfo_id3, align 8, !tbaa !131
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %OneByteIdentityH = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 169
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %OneByteIdentityH, align 8, !tbaa !132
  %cmp5 = icmp ne %struct.pdf_resource_s* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 94
  %17 = load i32, i32* %CompressFonts, align 4, !tbaa !85
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %or = or i32 0, %cond
  %call8 = call i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s* %15, %struct.pdf_data_writer_s* %writer, i32 %or, i64 0) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %20 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !118
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %OneByteIdentityH12 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 169
  store %struct.pdf_resource_s* %20, %struct.pdf_resource_s** %OneByteIdentityH12, align 8, !tbaa !132
  %pres13 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres13, align 8, !tbaa !118
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %22, i32 0, i32 7
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !123
  %24 = bitcast %struct.cos_object_s* %23 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %24, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call14 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %26, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.11
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %IdentityCIDSystemInfo_id18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 170
  %29 = load i64, i64* %IdentityCIDSystemInfo_id18, align 8, !tbaa !131
  %call19 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 %29) #5
  %30 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %arraydecay20 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call21 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay20) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.17
  %33 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call25 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %34, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.24
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [25 x i8*], [25 x i8*]* @OneByteIdentityH, i32 0, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool29 = icmp ne i8* %37, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 47
  %39 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %40 to i64
  %arrayidx31 = getelementptr inbounds [25 x i8*], [25 x i8*]* @OneByteIdentityH, i32 0, i64 %idxprom30
  %41 = load i8*, i8** %arrayidx31, align 8, !tbaa !1
  %call32 = call i32 @stream_puts(%struct.stream_s* %39, i8* %41) #5
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm33 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 47
  %43 = load %struct.stream_s*, %struct.stream_s** %strm33, align 8, !tbaa !17
  %call34 = call i32 @spputc(%struct.stream_s* %43, i8 zeroext 10) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call35 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #5
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.27, %if.then.23, %if.then.16, %if.then.10, %if.then.6, %if.then.2
  %45 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %46) #1
  %47 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @gs_sprintf(i8*, i8*, ...) #3

declare i64 @gs_c_known_encode(i64, i32) #3

declare i32 @gs_c_glyph_name(i64, %struct.gs_const_string_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @strings_equal(%struct.gs_const_string_s* %str0, %struct.gs_const_string_s* %str1) #0 {
entry:
  %str0.addr = alloca %struct.gs_const_string_s*, align 8
  %str1.addr = alloca %struct.gs_const_string_s*, align 8
  store %struct.gs_const_string_s* %str0, %struct.gs_const_string_s** %str0.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %str1, %struct.gs_const_string_s** %str1.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str0.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4, !tbaa !130
  %2 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str1.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4, !tbaa !130
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str0.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !129
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str1.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data2, align 8, !tbaa !129
  %8 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str0.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size3, align 4, !tbaa !130
  %conv = zext i32 %9 to i64
  %call = call i32 @memcmp(i8* %5, i8* %7, i64 %conv) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

declare i8* @pprintd2(%struct.stream_s*, i8*, i32, i32) #3

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #3

declare double @psdf_round(double, i32, i32) #3

declare i32 @mark_font_descriptor_symbolic(%struct.pdf_font_resource_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_write_CIDFont_widths(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i32 %wmode) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %wmode.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %dw = alloca i32, align 4
  %dv = alloca i32, align 4
  %prev = alloca i32, align 4
  %Widths_key = alloca i8*, align 8
  %w = alloca double*, align 8
  %cid = alloca i32, align 4
  %width = alloca i32, align 4
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %info = alloca %struct.gs_glyph_info_s, align 8
  %glyph1 = alloca i64, align 8
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vx = alloca i32, align 4
  %vy = alloca i32, align 4
  %vx133 = alloca i32, align 4
  %vy143 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !17
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %dw, align 4, !tbaa !5
  %6 = bitcast i32* %dv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %dv, align 4, !tbaa !5
  %7 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -2, i32* %prev, align 4, !tbaa !5
  %8 = bitcast i8** %Widths_key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)
  store i8* %cond, i8** %Widths_key, align 8, !tbaa !1
  %10 = bitcast double** %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %11, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 4
  %13 = load double*, double** %Widths2, align 8, !tbaa !78
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 14
  %15 = load double*, double** %Widths, align 8, !tbaa !74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double* [ %13, %cond.true ], [ %15, %cond.false ]
  store double* %cond2, double** %w, align 8, !tbaa !1
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %17 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %call = call i32 @pdf_compute_CIDFont_default_widths(%struct.pdf_font_resource_s* %16, i32 %17, i32* %dw, i32* %dv) #5
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end.8

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %18, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i32, i32* %dv, align 4, !tbaa !5
  %21 = load i32, i32* %dw, align 4, !tbaa !5
  %call6 = call i8* @pprintd2(%struct.stream_s* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 %20, i32 %21) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load i32, i32* %dw, align 4, !tbaa !5
  %call7 = call i8* @pprintd1(%struct.stream_s* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 %23) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %cond.end
  %24 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %24, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %if.end.8
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u11 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 20
  %cidfont12 = bitcast %union.anon.1* %u11 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont12, i32 0, i32 6
  %26 = load i8*, i8** %used2, align 8, !tbaa !133
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.end.8
  %27 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %27, i32 0, i32 15
  %28 = load i8*, i8** %used, align 8, !tbaa !62
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.10
  %cond15 = phi i8* [ %26, %cond.true.10 ], [ %28, %cond.false.13 ]
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 13
  %30 = load i32, i32* %count, align 4, !tbaa !81
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* null, i8* %cond15, i32 %30, i32 1) #5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.162, %cleanup.159, %cond.end.14
  %call16 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i64, i64* %glyph, align 8, !tbaa !15
  %sub = sub i64 %32, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !5
  %33 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load double*, double** %w, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %35, i64 %idxprom
  %36 = load double, double* %arrayidx, align 8, !tbaa !75
  %add = fadd double %36, 5.000000e-01
  %conv18 = fptosi double %add to i32
  store i32 %conv18, i32* %width, align 4, !tbaa !5
  %37 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call19 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %38, i32 0) #5
  store %struct.gs_font_base_s* %call19, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %39 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %39) #1
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %40, i32 0, i32 11
  %41 = load i32, i32* %FontType, align 4, !tbaa !134
  %cmp = icmp eq i32 %41, 42
  br i1 %cmp, label %if.then.21, label %if.else.44

if.then.21:                                       ; preds = %while.body
  %42 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i64, i64* %glyph, align 8, !tbaa !15
  %and = and i64 %44, 255
  %conv22 = trunc i64 %and to i32
  store i32 %conv22, i32* %ch, align 4, !tbaa !5
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %45, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %46 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !139
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %48 = bitcast %struct.gs_font_base_s* %47 to %struct.gs_font_s*
  %49 = load i32, i32* %ch, align 4, !tbaa !5
  %conv23 = sext i32 %49 to i64
  %call24 = call i64 %46(%struct.gs_font_s* %48, i64 %conv23, i32 0) #5
  store i64 %call24, i64* %glyph1, align 8, !tbaa !15
  %50 = load i32, i32* %cid, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %50, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.then.21
  %51 = load i64, i64* %glyph1, align 8, !tbaa !15
  %cmp27 = icmp eq i64 %51, 2147483647
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %land.lhs.true
  %52 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call30 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %52, i32 0) #5
  %53 = bitcast %struct.gs_font_base_s* %call30 to %struct.gs_font_s*
  %call31 = call i64 @copied_get_notdef(%struct.gs_font_s* %53) #5
  store i64 %call31, i64* %glyph1, align 8, !tbaa !15
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %land.lhs.true, %if.then.21
  %54 = load i64, i64* %glyph1, align 8, !tbaa !15
  %cmp33 = icmp eq i64 %54, 2147483647
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.32
  %55 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %55, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs37, i32 0, i32 7
  %56 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !140
  %57 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_base_s* %57 to %struct.gs_font_s*
  %59 = load i64, i64* %glyph1, align 8, !tbaa !15
  %call38 = call i32 %56(%struct.gs_font_s* %58, i64 %59, %struct.gs_matrix_s* null, i32 0, %struct.gs_glyph_info_s* %info) #5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41, %if.then.35
  %60 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.else.44:                                       ; preds = %while.body
  %62 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %62, i32 0, i32 20
  %glyph_info46 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs45, i32 0, i32 7
  %63 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info46, align 8, !tbaa !140
  %64 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %65 = bitcast %struct.gs_font_base_s* %64 to %struct.gs_font_s*
  %66 = load i64, i64* %glyph, align 8, !tbaa !15
  %call47 = call i32 %63(%struct.gs_font_s* %65, i64 %66, %struct.gs_matrix_s* null, i32 0, %struct.gs_glyph_info_s* %info) #5
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.else.44
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.51:                                        ; preds = %if.else.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.52, %if.then.50, %cleanup
  %67 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %67) #1
  %68 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.159 [
    i32 0, label %cleanup.cont.56
  ]

cleanup.cont.56:                                  ; preds = %cleanup.53
  %69 = load i32, i32* %cid, align 4, !tbaa !5
  %70 = load i32, i32* %prev, align 4, !tbaa !5
  %add57 = add nsw i32 %70, 1
  %cmp58 = icmp eq i32 %69, %add57
  br i1 %cmp58, label %if.then.60, label %if.else.83

if.then.60:                                       ; preds = %cleanup.cont.56
  %71 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %71, 0
  br i1 %tobool61, label %if.then.62, label %if.else.80

if.then.62:                                       ; preds = %if.then.60
  %72 = bitcast i32* %vx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i32, i32* %cid, align 4, !tbaa !5
  %mul = mul nsw i32 %73, 2
  %add63 = add nsw i32 %mul, 0
  %idxprom64 = sext i32 %add63 to i64
  %74 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u65 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %74, i32 0, i32 20
  %cidfont66 = bitcast %union.anon.1* %u65 to %struct.anon.2*
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont66, i32 0, i32 5
  %75 = load double*, double** %v, align 8, !tbaa !141
  %arrayidx67 = getelementptr inbounds double, double* %75, i64 %idxprom64
  %76 = load double, double* %arrayidx67, align 8, !tbaa !75
  %add68 = fadd double %76, 5.000000e-01
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* %vx, align 4, !tbaa !5
  %77 = bitcast i32* %vy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load i32, i32* %cid, align 4, !tbaa !5
  %mul70 = mul nsw i32 %78, 2
  %add71 = add nsw i32 %mul70, 1
  %idxprom72 = sext i32 %add71 to i64
  %79 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u73 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %79, i32 0, i32 20
  %cidfont74 = bitcast %union.anon.1* %u73 to %struct.anon.2*
  %v75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont74, i32 0, i32 5
  %80 = load double*, double** %v75, align 8, !tbaa !141
  %arrayidx76 = getelementptr inbounds double, double* %80, i64 %idxprom72
  %81 = load double, double* %arrayidx76, align 8, !tbaa !75
  %add77 = fadd double %81, 5.000000e-01
  %conv78 = fptosi double %add77 to i32
  store i32 %conv78, i32* %vy, align 4, !tbaa !5
  %82 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %83 = load i32, i32* %width, align 4, !tbaa !5
  %84 = load i32, i32* %vx, align 4, !tbaa !5
  %85 = load i32, i32* %vy, align 4, !tbaa !5
  %call79 = call i8* @pprintd3(%struct.stream_s* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %83, i32 %84, i32 %85) #5
  %86 = bitcast i32* %vy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %vx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %if.end.82

if.else.80:                                       ; preds = %if.then.60
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %89 = load i32, i32* %width, align 4, !tbaa !5
  %call81 = call i8* @pprintd1(%struct.stream_s* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %89) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.62
  br label %if.end.158

if.else.83:                                       ; preds = %cleanup.cont.56
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 109
  %91 = load i32, i32* %PDFA, align 4, !tbaa !142
  %cmp84 = icmp eq i32 %91, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.122

land.lhs.true.86:                                 ; preds = %if.else.83
  %92 = load i32, i32* %width, align 4, !tbaa !5
  %93 = load i32, i32* %dw, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %92, %93
  br i1 %cmp87, label %land.lhs.true.89, label %if.else.122

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %94 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool90 = icmp ne i32 %94, 0
  br i1 %tobool90, label %lor.lhs.false, label %land.lhs.true.107

lor.lhs.false:                                    ; preds = %land.lhs.true.89
  %95 = load i32, i32* %cid, align 4, !tbaa !5
  %mul91 = mul nsw i32 %95, 2
  %add92 = add nsw i32 %mul91, 0
  %idxprom93 = sext i32 %add92 to i64
  %96 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u94 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %96, i32 0, i32 20
  %cidfont95 = bitcast %union.anon.1* %u94 to %struct.anon.2*
  %v96 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont95, i32 0, i32 5
  %97 = load double*, double** %v96, align 8, !tbaa !141
  %arrayidx97 = getelementptr inbounds double, double* %97, i64 %idxprom93
  %98 = load double, double* %arrayidx97, align 8, !tbaa !75
  %add98 = fadd double %98, 5.000000e-01
  %conv99 = fptosi double %add98 to i32
  %99 = load i32, i32* %cid, align 4, !tbaa !5
  %idxprom100 = sext i32 %99 to i64
  %100 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths101 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %100, i32 0, i32 14
  %101 = load double*, double** %Widths101, align 8, !tbaa !74
  %arrayidx102 = getelementptr inbounds double, double* %101, i64 %idxprom100
  %102 = load double, double* %arrayidx102, align 8, !tbaa !75
  %div = fdiv double %102, 2.000000e+00
  %add103 = fadd double %div, 5.000000e-01
  %conv104 = fptosi double %add103 to i32
  %cmp105 = icmp eq i32 %conv99, %conv104
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.122

land.lhs.true.107:                                ; preds = %lor.lhs.false, %land.lhs.true.89
  %103 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool108 = icmp ne i32 %103, 0
  br i1 %tobool108, label %lor.lhs.false.109, label %if.then.121

lor.lhs.false.109:                                ; preds = %land.lhs.true.107
  %104 = load i32, i32* %cid, align 4, !tbaa !5
  %mul110 = mul nsw i32 %104, 2
  %add111 = add nsw i32 %mul110, 1
  %idxprom112 = sext i32 %add111 to i64
  %105 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u113 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %105, i32 0, i32 20
  %cidfont114 = bitcast %union.anon.1* %u113 to %struct.anon.2*
  %v115 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont114, i32 0, i32 5
  %106 = load double*, double** %v115, align 8, !tbaa !141
  %arrayidx116 = getelementptr inbounds double, double* %106, i64 %idxprom112
  %107 = load double, double* %arrayidx116, align 8, !tbaa !75
  %add117 = fadd double %107, 5.000000e-01
  %conv118 = fptosi double %add117 to i32
  %108 = load i32, i32* %dv, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %conv118, %108
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %lor.lhs.false.109, %land.lhs.true.107
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.159

if.else.122:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false, %land.lhs.true.86, %if.else.83
  %109 = load i32, i32* %prev, align 4, !tbaa !5
  %cmp123 = icmp sge i32 %109, 0
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.else.122
  %110 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call126 = call i32 @stream_puts(%struct.stream_s* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #5
  br label %if.end.130

if.else.127:                                      ; preds = %if.else.122
  %111 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %112 = load i8*, i8** %Widths_key, align 8, !tbaa !1
  %call128 = call i32 @stream_puts(%struct.stream_s* %111, i8* %112) #5
  %113 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call129 = call i32 @stream_puts(%struct.stream_s* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)) #5
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.125
  %114 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool131 = icmp ne i32 %114, 0
  br i1 %tobool131, label %if.then.132, label %if.else.154

if.then.132:                                      ; preds = %if.end.130
  %115 = bitcast i32* %vx133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i32, i32* %cid, align 4, !tbaa !5
  %mul134 = mul nsw i32 %116, 2
  %add135 = add nsw i32 %mul134, 0
  %idxprom136 = sext i32 %add135 to i64
  %117 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u137 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %117, i32 0, i32 20
  %cidfont138 = bitcast %union.anon.1* %u137 to %struct.anon.2*
  %v139 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont138, i32 0, i32 5
  %118 = load double*, double** %v139, align 8, !tbaa !141
  %arrayidx140 = getelementptr inbounds double, double* %118, i64 %idxprom136
  %119 = load double, double* %arrayidx140, align 8, !tbaa !75
  %add141 = fadd double %119, 5.000000e-01
  %conv142 = fptosi double %add141 to i32
  store i32 %conv142, i32* %vx133, align 4, !tbaa !5
  %120 = bitcast i32* %vy143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i32, i32* %cid, align 4, !tbaa !5
  %mul144 = mul nsw i32 %121, 2
  %add145 = add nsw i32 %mul144, 1
  %idxprom146 = sext i32 %add145 to i64
  %122 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u147 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %122, i32 0, i32 20
  %cidfont148 = bitcast %union.anon.1* %u147 to %struct.anon.2*
  %v149 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont148, i32 0, i32 5
  %123 = load double*, double** %v149, align 8, !tbaa !141
  %arrayidx150 = getelementptr inbounds double, double* %123, i64 %idxprom146
  %124 = load double, double* %arrayidx150, align 8, !tbaa !75
  %add151 = fadd double %124, 5.000000e-01
  %conv152 = fptosi double %add151 to i32
  store i32 %conv152, i32* %vy143, align 4, !tbaa !5
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %126 = load i32, i32* %cid, align 4, !tbaa !5
  %127 = load i32, i32* %width, align 4, !tbaa !5
  %128 = load i32, i32* %vx133, align 4, !tbaa !5
  %129 = load i32, i32* %vy143, align 4, !tbaa !5
  %call153 = call i8* @pprintd4(%struct.stream_s* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i32 %126, i32 %127, i32 %128, i32 %129) #5
  %130 = bitcast i32* %vy143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %vx133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  br label %if.end.156

if.else.154:                                      ; preds = %if.end.130
  %132 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %133 = load i32, i32* %cid, align 4, !tbaa !5
  %134 = load i32, i32* %width, align 4, !tbaa !5
  %call155 = call i8* @pprintd2(%struct.stream_s* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %133, i32 %134) #5
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154, %if.then.132
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.82
  %135 = load i32, i32* %cid, align 4, !tbaa !5
  store i32 %135, i32* %prev, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %if.then.121, %cleanup.53
  %136 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest.161 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.161, label %unreachable [
    i32 0, label %cleanup.cont.162
    i32 2, label %while.cond
  ]

cleanup.cont.162:                                 ; preds = %cleanup.159
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %138 = load i32, i32* %prev, align 4, !tbaa !5
  %cmp163 = icmp sge i32 %138, 0
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %while.end
  %139 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call166 = call i32 @stream_puts(%struct.stream_s* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0)) #5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %while.end
  store i32 1, i32* %cleanup.dest.slot
  %140 = bitcast double** %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i8** %Widths_key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %dv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %146) #1
  %147 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  ret i32 0

unreachable:                                      ; preds = %cleanup.159
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_compute_CIDFont_default_widths(%struct.pdf_font_resource_s* %pdfont, i32 %wmode, i32* %pdw, i32* %pdv) #0 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %wmode.addr = alloca i32, align 4
  %pdw.addr = alloca i32*, align 8
  %pdv.addr = alloca i32*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %counts = alloca [1500 x i16], align 16
  %dw_count = alloca i32, align 4
  %i = alloca i32, align 4
  %dwi = alloca i32, align 4
  %neg_count = alloca i32, align 4
  %pos_count = alloca i32, align 4
  %w = alloca double*, align 8
  %i10 = alloca i32, align 4
  %width = alloca i32, align 4
  %i75 = alloca i32, align 4
  %width82 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store i32* %pdw, i32** %pdw.addr, align 8, !tbaa !1
  store i32* %pdv, i32** %pdv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [1500 x i16]* %counts to i8*
  call void @llvm.lifetime.start(i64 3000, i8* %2) #1
  %3 = bitcast i32* %dw_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %dw_count, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %dwi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %dwi, align 4, !tbaa !5
  %6 = bitcast i32* %neg_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %neg_count, align 4, !tbaa !5
  %7 = bitcast i32* %pos_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %pos_count, align 4, !tbaa !5
  %8 = bitcast double** %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 4
  %11 = load double*, double** %Widths2, align 8, !tbaa !78
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 14
  %13 = load double*, double** %Widths, align 8, !tbaa !74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %11, %cond.true ], [ %13, %cond.false ]
  store double* %cond, double** %w, align 8, !tbaa !1
  %14 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.5

cond.true.2:                                      ; preds = %cond.end
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %15, i32 0, i32 20
  %cidfont4 = bitcast %union.anon.1* %u3 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont4, i32 0, i32 6
  %16 = load i8*, i8** %used2, align 8, !tbaa !133
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 15
  %18 = load i8*, i8** %used, align 8, !tbaa !62
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.2
  %cond7 = phi i8* [ %16, %cond.true.2 ], [ %18, %cond.false.5 ]
  %19 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %19, i32 0, i32 13
  %20 = load i32, i32* %count, align 4, !tbaa !81
  call void @psf_enumerate_bits_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* null, i8* %cond7, i32 %20, i32 1) #5
  %arraydecay = getelementptr inbounds [1500 x i16], [1500 x i16]* %counts, i32 0, i32 0
  %21 = bitcast i16* %arraydecay to i8*
  %call = call i8* @memset(i8* %21, i32 0, i64 3000) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %cond.end.6
  %call8 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i64, i64* %glyph, align 8, !tbaa !15
  %sub = sub i64 %23, 2147483648
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i10, align 4, !tbaa !5
  %24 = load i32, i32* %i10, align 4, !tbaa !5
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count11 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 13
  %26 = load i32, i32* %count11, align 4, !tbaa !81
  %cmp = icmp ult i32 %24, %26
  br i1 %cmp, label %if.then, label %if.end.46

if.then:                                          ; preds = %while.body
  %27 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %i10, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load double*, double** %w, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %29, i64 %idxprom
  %30 = load double, double* %arrayidx, align 8, !tbaa !75
  %add = fadd double %30, 5.000000e-01
  %conv13 = fptosi double %add to i32
  store i32 %conv13, i32* %width, align 4, !tbaa !5
  %31 = load i32, i32* %width, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %31, 0
  br i1 %cmp14, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %if.then
  %32 = load i32, i32* %width, align 4, !tbaa !5
  %sub17 = sub nsw i32 0, %32
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.then
  %33 = load i32, i32* %width, align 4, !tbaa !5
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.16
  %cond20 = phi i32 [ %sub17, %cond.true.16 ], [ %33, %cond.false.18 ]
  %conv21 = sext i32 %cond20 to i64
  %cmp22 = icmp ult i64 %conv21, 1499
  br i1 %cmp22, label %cond.true.24, label %cond.false.33

cond.true.24:                                     ; preds = %cond.end.19
  %34 = load i32, i32* %width, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %34, 0
  br i1 %cmp25, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.true.24
  %35 = load i32, i32* %width, align 4, !tbaa !5
  %sub28 = sub nsw i32 0, %35
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.true.24
  %36 = load i32, i32* %width, align 4, !tbaa !5
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i32 [ %sub28, %cond.true.27 ], [ %36, %cond.false.29 ]
  %conv32 = sext i32 %cond31 to i64
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.19
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end.30
  %cond35 = phi i64 [ %conv32, %cond.end.30 ], [ 1499, %cond.false.33 ]
  %arrayidx36 = getelementptr inbounds [1500 x i16], [1500 x i16]* %counts, i32 0, i64 %cond35
  %37 = load i16, i16* %arrayidx36, align 2, !tbaa !83
  %inc = add i16 %37, 1
  store i16 %inc, i16* %arrayidx36, align 2, !tbaa !83
  %38 = load i32, i32* %width, align 4, !tbaa !5
  %cmp37 = icmp sgt i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %cond.end.34
  %39 = load i32, i32* %pos_count, align 4, !tbaa !5
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* %pos_count, align 4, !tbaa !5
  br label %if.end.45

if.else:                                          ; preds = %cond.end.34
  %40 = load i32, i32* %width, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %40, 0
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else
  %41 = load i32, i32* %neg_count, align 4, !tbaa !5
  %inc44 = add nsw i32 %41, 1
  store i32 %inc44, i32* %neg_count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.39
  %42 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.body
  %43 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %conv47 = sext i32 %44 to i64
  %cmp48 = icmp ult i64 %conv47, 1500
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %45 to i64
  %arrayidx51 = getelementptr inbounds [1500 x i16], [1500 x i16]* %counts, i32 0, i64 %idxprom50
  %46 = load i16, i16* %arrayidx51, align 2, !tbaa !83
  %conv52 = zext i16 %46 to i32
  %47 = load i32, i32* %dw_count, align 4, !tbaa !5
  %cmp53 = icmp sgt i32 %conv52, %47
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %48, i32* %dwi, align 4, !tbaa !5
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds [1500 x i16], [1500 x i16]* %counts, i32 0, i64 %idxprom56
  %50 = load i16, i16* %arrayidx57, align 2, !tbaa !83
  %conv58 = zext i16 %50 to i32
  store i32 %conv58, i32* %dw_count, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %51, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %neg_count, align 4, !tbaa !5
  %53 = load i32, i32* %pos_count, align 4, !tbaa !5
  %cmp61 = icmp sgt i32 %52, %53
  br i1 %cmp61, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %for.end
  %54 = load i32, i32* %dwi, align 4, !tbaa !5
  %sub64 = sub nsw i32 0, %54
  br label %cond.end.66

cond.false.65:                                    ; preds = %for.end
  %55 = load i32, i32* %dwi, align 4, !tbaa !5
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.63
  %cond67 = phi i32 [ %sub64, %cond.true.63 ], [ %55, %cond.false.65 ]
  %56 = load i32*, i32** %pdw.addr, align 8, !tbaa !1
  store i32 %cond67, i32* %56, align 4, !tbaa !5
  %57 = load i32*, i32** %pdv.addr, align 8, !tbaa !1
  store i32 0, i32* %57, align 4, !tbaa !5
  %58 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %58, 0
  br i1 %tobool68, label %if.then.69, label %if.end.133

if.then.69:                                       ; preds = %cond.end.66
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %genum) #5
  br label %while.cond.70

while.cond.70:                                    ; preds = %cleanup.cont.131, %if.then.69
  %call71 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br i1 %lnot73, label %while.body.74, label %while.end.132

while.body.74:                                    ; preds = %while.cond.70
  %59 = bitcast i32* %i75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i64, i64* %glyph, align 8, !tbaa !15
  %sub76 = sub i64 %60, 2147483648
  %conv77 = trunc i64 %sub76 to i32
  store i32 %conv77, i32* %i75, align 4, !tbaa !5
  %61 = load i32, i32* %i75, align 4, !tbaa !5
  %62 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count78 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %62, i32 0, i32 13
  %63 = load i32, i32* %count78, align 4, !tbaa !81
  %cmp79 = icmp ult i32 %61, %63
  br i1 %cmp79, label %if.then.81, label %if.end.128

if.then.81:                                       ; preds = %while.body.74
  %64 = bitcast i32* %width82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i32, i32* %i75, align 4, !tbaa !5
  %idxprom83 = sext i32 %65 to i64
  %66 = load double*, double** %w, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds double, double* %66, i64 %idxprom83
  %67 = load double, double* %arrayidx84, align 8, !tbaa !75
  %add85 = fadd double %67, 5.000000e-01
  %conv86 = fptosi double %add85 to i32
  store i32 %conv86, i32* %width82, align 4, !tbaa !5
  %68 = load i32, i32* %width82, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %68, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.91

cond.true.89:                                     ; preds = %if.then.81
  %69 = load i32, i32* %width82, align 4, !tbaa !5
  %sub90 = sub nsw i32 0, %69
  br label %cond.end.92

cond.false.91:                                    ; preds = %if.then.81
  %70 = load i32, i32* %width82, align 4, !tbaa !5
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.89
  %cond93 = phi i32 [ %sub90, %cond.true.89 ], [ %70, %cond.false.91 ]
  %conv94 = sext i32 %cond93 to i64
  %cmp95 = icmp ult i64 %conv94, 1499
  br i1 %cmp95, label %cond.true.97, label %cond.false.106

cond.true.97:                                     ; preds = %cond.end.92
  %71 = load i32, i32* %width82, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %71, 0
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.true.97
  %72 = load i32, i32* %width82, align 4, !tbaa !5
  %sub101 = sub nsw i32 0, %72
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.true.97
  %73 = load i32, i32* %width82, align 4, !tbaa !5
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.100
  %cond104 = phi i32 [ %sub101, %cond.true.100 ], [ %73, %cond.false.102 ]
  %conv105 = sext i32 %cond104 to i64
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.92
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.end.103
  %cond108 = phi i64 [ %conv105, %cond.end.103 ], [ 1499, %cond.false.106 ]
  %74 = load i32, i32* %dwi, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %74, 0
  br i1 %cmp109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %cond.end.107
  %75 = load i32, i32* %dwi, align 4, !tbaa !5
  %sub112 = sub nsw i32 0, %75
  br label %cond.end.114

cond.false.113:                                   ; preds = %cond.end.107
  %76 = load i32, i32* %dwi, align 4, !tbaa !5
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi i32 [ %sub112, %cond.true.111 ], [ %76, %cond.false.113 ]
  %conv116 = sext i32 %cond115 to i64
  %cmp117 = icmp eq i64 %cond108, %conv116
  br i1 %cmp117, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %cond.end.114
  %77 = load i32, i32* %i75, align 4, !tbaa !5
  %mul = mul nsw i32 %77, 2
  %add120 = add nsw i32 %mul, 1
  %idxprom121 = sext i32 %add120 to i64
  %78 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u122 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %78, i32 0, i32 20
  %cidfont123 = bitcast %union.anon.1* %u122 to %struct.anon.2*
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont123, i32 0, i32 5
  %79 = load double*, double** %v, align 8, !tbaa !141
  %arrayidx124 = getelementptr inbounds double, double* %79, i64 %idxprom121
  %80 = load double, double* %arrayidx124, align 8, !tbaa !75
  %add125 = fadd double %80, 5.000000e-01
  %conv126 = fptosi double %add125 to i32
  %81 = load i32*, i32** %pdv.addr, align 8, !tbaa !1
  store i32 %conv126, i32* %81, align 4, !tbaa !5
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %cond.end.114
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.127, %if.then.119
  %82 = bitcast i32* %width82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.128

if.end.128:                                       ; preds = %cleanup.cont, %while.body.74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.128, %cleanup
  %83 = bitcast i32* %i75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %cleanup.dest.130 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.130, label %unreachable [
    i32 0, label %cleanup.cont.131
    i32 8, label %while.end.132
  ]

cleanup.cont.131:                                 ; preds = %cleanup.129
  br label %while.cond.70

while.end.132:                                    ; preds = %cleanup.129, %while.cond.70
  br label %if.end.133

if.end.133:                                       ; preds = %while.end.132, %cond.end.66
  %84 = load i32, i32* %dw_count, align 4, !tbaa !5
  %arrayidx134 = getelementptr inbounds [1500 x i16], [1500 x i16]* %counts, i32 0, i64 0
  %85 = load i16, i16* %arrayidx134, align 2, !tbaa !83
  %conv135 = zext i16 %85 to i32
  %add136 = add nsw i32 %84, %conv135
  %cmp137 = icmp sgt i32 %add136, 0
  %conv138 = zext i1 %cmp137 to i32
  store i32 1, i32* %cleanup.dest.slot
  %86 = bitcast double** %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %pos_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %neg_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %dwi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %dw_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast [1500 x i16]* %counts to i8*
  call void @llvm.lifetime.end(i64 3000, i8* %92) #1
  %93 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %94) #1
  ret i32 %conv138

unreachable:                                      ; preds = %cleanup.129
  unreachable
}

declare %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s*, i32) #3

declare i64 @copied_get_notdef(%struct.gs_font_s*) #3

declare i8* @pprintd3(%struct.stream_s*, i8*, i32, i32, i32) #3

declare i8* @pprintd4(%struct.stream_s*, i8*, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pdf_simple_font_needs_ToUnicode(%struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch = alloca i32, align 4
  %mask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %pet = alloca %struct.pdf_encoding_element_s*, align 8
  %glyph = alloca i64, align 8
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 8
  %2 = load i32, i32* %FontType, align 4, !tbaa !59
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %3, i32 0, i32 8
  %4 = load i32, i32* %FontType1, align 4, !tbaa !59
  %cmp2 = icmp eq i32 %4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %5, i32 1, i32 2
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %mask, align 1, !tbaa !9
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %7 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !10
  %cmp3 = icmp eq %struct.pdf_encoding_element_s* %7, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end:                                           ; preds = %lor.end
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 8
  %9 = load i32, i32* %FontType5, align 4, !tbaa !59
  %cmp6 = icmp eq i32 %9, 42
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %10 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, 256
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %13, i32 0, i32 20
  %simple13 = bitcast %union.anon.1* %u12 to %struct.anon.3*
  %Encoding14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple13, i32 0, i32 4
  %14 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding14, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %14, i64 %idxprom
  store %struct.pdf_encoding_element_s* %arrayidx, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %15 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph15 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %16, i32 0, i32 0
  %17 = load i64, i64* %glyph15, align 8, !tbaa !16
  store i64 %17, i64* %glyph, align 8, !tbaa !15
  %18 = load i64, i64* %glyph, align 8, !tbaa !15
  %cmp16 = icmp eq i64 %18, 2147483647
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.body
  %19 = load i64, i64* %glyph, align 8, !tbaa !15
  %20 = load i64, i64* @gs_c_min_std_encoding_glyph, align 8, !tbaa !15
  %cmp20 = icmp ult i64 %19, %20
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %21 = load i64, i64* %glyph, align 8, !tbaa !15
  %cmp22 = icmp uge i64 %21, 2147483648
  br i1 %cmp22, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.19
  %22 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %22, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !63
  %cmp25 = icmp eq i32 %23, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.24
  %24 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str29 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %24, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str29, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8, !tbaa !64
  %26 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str30 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %26, i32 0, i32 1
  %size31 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str30, i32 0, i32 1
  %27 = load i32, i32* %size31, align 4, !tbaa !63
  %call = call i64 @gs_c_name_glyph(i8* %25, i32 %27) #5
  store i64 %call, i64* %glyph, align 8, !tbaa !15
  %28 = load i64, i64* %glyph, align 8, !tbaa !15
  %cmp32 = icmp eq i64 %28, 2147483647
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false
  %29 = load i64, i64* @gs_c_min_std_encoding_glyph, align 8, !tbaa !15
  %30 = load i64, i64* %glyph, align 8, !tbaa !15
  %sub = sub i64 %30, %29
  store i64 %sub, i64* %glyph, align 8, !tbaa !15
  %31 = load i64, i64* %glyph, align 8, !tbaa !15
  %cmp37 = icmp ugt i64 %31, 21894
  br i1 %cmp37, label %if.then.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.36
  %32 = load i64, i64* %glyph, align 8, !tbaa !15
  %shr = lshr i64 %32, 2
  %arrayidx40 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_c_pdf_glyph_type, i32 0, i64 %shr
  %33 = load i8, i8* %arrayidx40, align 1, !tbaa !9
  %conv41 = zext i8 %33 to i32
  %34 = load i8, i8* %mask, align 1, !tbaa !9
  %conv42 = zext i8 %34 to i32
  %35 = load i64, i64* %glyph, align 8, !tbaa !15
  %and = and i64 %35, 3
  %shl = shl i64 %and, 1
  %sh_prom = trunc i64 %shl to i32
  %shl43 = shl i32 %conv42, %sh_prom
  %and44 = and i32 %conv41, %shl43
  %tobool = icmp ne i32 %and44, 0
  br i1 %tobool, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false.39, %if.end.36
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.lhs.false.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45, %if.then.34, %if.then.27, %if.then.18
  %36 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %38 = load i32, i32* %ch, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %for.end, %cleanup, %if.then.8, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  %39 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s*, %struct.gs_cmap_s*, %struct.pdf_resource_s**, i32) #3

declare i32 @cos_write(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64) #3

declare i8* @pdf_find_base14_name(i8*, i32) #3

declare i64 @pdf_font_descriptor_id(%struct.pdf_font_descriptor_s*) #3

declare i64 @pdf_set_font_descriptor_usage(%struct.gx_device_pdf_s*, i32, %struct.pdf_font_descriptor_s*) #3

declare i64 @gs_c_name_glyph(i8*, i32) #3

declare i32 @pdf_encrypt_init(%struct.gx_device_pdf_s*, i64, %struct.stream_arcfour_state_s*) #3

declare i32 @s_arcfour_process_buffer(%struct.stream_arcfour_state_s*, i8*, i32) #3

declare void @s_write_ps_string(%struct.stream_s*, i8*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 8}
!8 = !{!"", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 12, !2, i64 16, !2, i64 24, !6, i64 32, !3, i64 40}
!9 = !{!3, !3, i64 0}
!10 = !{!8, !2, i64 16}
!11 = !{!12, !6, i64 24}
!12 = !{!"pdf_encoding_element_s", !13, i64 0, !14, i64 8, !6, i64 24}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!15 = !{!13, !13, i64 0}
!16 = !{!12, !13, i64 0}
!17 = !{!18, !2, i64 5848}
!18 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !19, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !20, i64 96, !23, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !24, i64 984, !6, i64 1052, !6, i64 1056, !25, i64 1064, !2, i64 1104, !3, i64 1112, !27, i64 1120, !28, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !29, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !42, i64 7512, !42, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !35, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !36, i64 8872, !47, i64 8880, !6, i64 9360, !36, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !51, i64 9424, !51, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !13, i64 9472, !6, i64 9480, !6, i64 9484, !50, i64 9488, !50, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !13, i64 9576, !13, i64 9584, !13, i64 9592, !52, i64 9600, !50, i64 9616, !50, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !50, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !53, i64 9784, !54, i64 9816, !54, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !13, i64 9920, !3, i64 9928, !6, i64 9960, !13, i64 9968, !13, i64 9976, !3, i64 9984, !3, i64 9988, !55, i64 9992, !55, i64 14120, !55, i64 18248, !55, i64 22376, !13, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !13, i64 26536, !6, i64 26544, !6, i64 26548, !13, i64 26552, !3, i64 26560, !13, i64 26568, !13, i64 26576, !3, i64 26584, !2, i64 26592, !56, i64 26600, !2, i64 26648, !6, i64 26656, !13, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !13, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !35, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !57, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !32, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !34, i64 30488, !6, i64 30524, !53, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !13, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !32, i64 30612, !36, i64 30640, !2, i64 30648, !14, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!19 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !21, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !22, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!21 = !{!"short", !3, i64 0}
!22 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!23 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!24 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!25 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !26, i64 16, !6, i64 32, !3, i64 36}
!26 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!27 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!28 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!29 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !30, i64 24, !6, i64 128, !34, i64 132, !6, i64 168, !35, i64 176, !35, i64 192, !6, i64 208, !6, i64 212, !21, i64 216, !3, i64 220, !37, i64 224, !37, i64 228, !38, i64 232, !13, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !31, i64 296, !39, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !31, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !40, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !41, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !41, i64 1336}
!30 = !{!"gx_line_params_s", !31, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !6, i64 36, !32, i64 40, !33, i64 64}
!31 = !{!"float", !3, i64 0}
!32 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!33 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !31, i64 12, !6, i64 16, !31, i64 20, !6, i64 24, !6, i64 28, !31, i64 32}
!34 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!35 = !{!"gs_point_s", !36, i64 0, !36, i64 8}
!36 = !{!"double", !3, i64 0}
!37 = !{!"gs_transparency_source_s", !31, i64 0}
!38 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!39 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!40 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!41 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !3, i64 24}
!42 = !{!"gx_hl_saved_color_s", !13, i64 0, !13, i64 8, !6, i64 16, !43, i64 24, !45, i64 288}
!43 = !{!"gs_client_color_s", !2, i64 0, !44, i64 8}
!44 = !{!"gs_paint_color_s", !3, i64 0}
!45 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !46, i64 336}
!46 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!47 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64, !14, i64 80, !14, i64 96, !14, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !48, i64 152, !6, i64 232, !6, i64 236, !48, i64 240, !48, i64 320, !49, i64 400, !49, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !50, i64 448, !49, i64 464}
!48 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !31, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!49 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!53 = !{!"gs_rect_s", !35, i64 0, !35, i64 16}
!54 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !53, i64 8}
!55 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!56 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!57 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !31, i64 40, !31, i64 44, !3, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !6, i64 80, !31, i64 84, !31, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !42, i64 120, !42, i64 752, !30, i64 1384, !2, i64 1488, !6, i64 1496, !13, i64 1504}
!58 = !{!18, !6, i64 9524}
!59 = !{!60, !3, i64 72}
!60 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !13, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !61, i64 88, !2, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!61 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!62 = !{!60, !2, i64 136}
!63 = !{!12, !6, i64 16}
!64 = !{!12, !2, i64 8}
!65 = !{!18, !6, i64 9540}
!66 = !{!60, !2, i64 64}
!67 = !{!68, !13, i64 8}
!68 = !{!"cos_object_s", !2, i64 0, !13, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !13, i64 56, !2, i64 64, !69, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!69 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!70 = !{!71, !2, i64 0}
!71 = !{!"", !2, i64 0, !3, i64 8, !14, i64 40, !6, i64 56, !6, i64 60, !6, i64 64}
!72 = !{!8, !6, i64 0}
!73 = !{!8, !6, i64 4}
!74 = !{!60, !2, i64 128}
!75 = !{!36, !36, i64 0}
!76 = !{!77, !6, i64 0}
!77 = !{!"", !6, i64 0}
!78 = !{!79, !2, i64 32}
!79 = !{!"", !13, i64 0, !2, i64 8, !6, i64 16, !13, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!80 = !{!79, !13, i64 0}
!81 = !{!60, !6, i64 120}
!82 = !{!79, !2, i64 8}
!83 = !{!21, !21, i64 0}
!84 = !{!60, !2, i64 104}
!85 = !{!18, !6, i64 9480}
!86 = !{!79, !6, i64 16}
!87 = !{!88, !2, i64 16}
!88 = !{!"pdf_data_writer_s", !89, i64 0, !13, i64 32, !13, i64 40, !2, i64 48, !2, i64 56, !13, i64 64, !6, i64 72}
!89 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!90 = !{!68, !3, i64 50}
!91 = !{!92, !2, i64 0}
!92 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !13, i64 56, !2, i64 64}
!93 = !{!60, !2, i64 152}
!94 = !{!60, !2, i64 144}
!95 = !{!18, !36, i64 9368}
!96 = !{!97, !2, i64 72}
!97 = !{!"", !53, i64 0, !32, i64 32, !2, i64 56, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!98 = !{!99, !2, i64 16}
!99 = !{!"cos_dict_s", !2, i64 0, !13, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !13, i64 56, !2, i64 64, !69, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!100 = !{!99, !13, i64 8}
!101 = !{!60, !6, i64 96}
!102 = !{!60, !2, i64 88}
!103 = !{!18, !6, i64 30764}
!104 = !{!60, !6, i64 28}
!105 = !{!60, !2, i64 80}
!106 = !{!18, !2, i64 1728}
!107 = !{!108, !2, i64 64}
!108 = !{!"gs_memory_s", !2, i64 0, !109, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!109 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!110 = !{!111, !6, i64 8}
!111 = !{!"gs_cid_system_info_s", !14, i64 0, !14, i64 16, !6, i64 32}
!112 = !{!111, !6, i64 24}
!113 = !{!108, !2, i64 24}
!114 = !{!111, !2, i64 0}
!115 = !{!111, !2, i64 16}
!116 = !{!18, !6, i64 9648}
!117 = !{!111, !6, i64 32}
!118 = !{!88, !2, i64 48}
!119 = !{!92, !13, i64 56}
!120 = !{!121, !6, i64 80}
!121 = !{!"gs_cmap_s", !6, i64 0, !13, i64 8, !14, i64 16, !2, i64 32, !6, i64 40, !31, i64 44, !122, i64 48, !13, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104}
!122 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!123 = !{!92, !2, i64 64}
!124 = !{!121, !6, i64 72}
!125 = !{!121, !2, i64 16}
!126 = !{!121, !6, i64 24}
!127 = !{!18, !2, i64 24}
!128 = !{!121, !2, i64 32}
!129 = !{!14, !2, i64 0}
!130 = !{!14, !6, i64 8}
!131 = !{!18, !13, i64 28664}
!132 = !{!18, !2, i64 28656}
!133 = !{!79, !2, i64 48}
!134 = !{!135, !3, i64 128}
!135 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !136, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !32, i64 80, !32, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !31, i64 156, !6, i64 160, !137, i64 168, !138, i64 272, !138, i64 324, !53, i64 376, !122, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!136 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!137 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!138 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!139 = !{!135, !2, i64 200}
!140 = !{!135, !2, i64 224}
!141 = !{!79, !2, i64 40}
!142 = !{!18, !6, i64 9564}
