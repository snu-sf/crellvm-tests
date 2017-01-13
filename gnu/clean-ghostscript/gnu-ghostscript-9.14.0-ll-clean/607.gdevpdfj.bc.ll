; ModuleID = './gdevpdfj.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.pdf_image_names_s = type { %struct.pdf_color_space_names_s, %struct.pdf_filter_names_s, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
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
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
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
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_image_writer_s = type { [4 x %struct.psdf_binary_writer_s], i32, %struct.pdf_image_names_s*, %struct.pdf_resource_s*, i32, %struct.cos_stream_s*, i8*, %struct.cos_dict_s*, %struct.pdf_resource_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }
%struct.pdf_x_object_s = type { %struct.pdf_x_object_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32, i32 }
%struct.stream_compr_chooser_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"pdf_image_writer\00", align 1
@st_pdf_image_writer = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_image_writer_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_image_writer_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"/DeviceCMYK\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/DeviceGray\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/DeviceRGB\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/Indexed\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"/ASCII85Decode\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"/ASCIIHexDecode\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"/CCITTFaxDecode\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"/DCTDecode\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"/DecodeParms\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"/Filter\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"/FlateDecode\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"/LZWDecode\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"/RunLengthDecode\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"/JBIG2Decode\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"/JPXDecode\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"/BitsPerComponent\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"/Decode\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"/Height\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"/ImageMask\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"/Interpolate\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"/Width\00", align 1
@pdf_image_names_full = constant %struct.pdf_image_names_s { %struct.pdf_color_space_names_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0) }, %struct.pdf_filter_names_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0) }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"/CMYK\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"/G\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"/RGB\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"/I\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"/A85\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"/AHx\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"/CCF\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"/DCT\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"/DP\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"/F\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"/Fl\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"/LZW\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"/RL\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"/???\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"/BPC\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"/CS\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"/D\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"/H\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"/IM\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"/W\00", align 1
@pdf_image_names_short = constant %struct.pdf_image_names_s { %struct.pdf_color_space_names_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0) }, %struct.pdf_filter_names_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0) }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0) }, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"pdf_put_image_values(mask)\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"/Mask\00", align 1
@pdf_put_image_matrix.imat = private unnamed_addr constant %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@.str.46 = private unnamed_addr constant [3 x i8] c"q \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"cm\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"/R%ld Do\0AQ\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"pdf_begin_image_data\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c" Q\00", align 1
@cos_stream_procs = external constant %struct.cos_object_procs_s, align 8
@.str.51 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"/Image\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"pdf_begin_write_image\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"pdf_make_alt_stream\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8
@.str.55 = private unnamed_addr constant [9 x i8] c"/.Global\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"BI\0A\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"ID \00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"ID\0A\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"\0AEI%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"pdf_end_write_image\00", align 1
@st_psdf_binary_writer = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.62 = private unnamed_addr constant [35 x i8] c"pdf_put_pixel_image_values(decode)\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"PDFA doesn't allow images with Interpolate true.\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"pdf_image_choose_filter\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pdf_image_writer_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %piw = alloca %struct.pdf_image_writer_s*, align 8
  %ret = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_image_writer_s** %piw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_image_writer_s*
  store %struct.pdf_image_writer_s* %2, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.9
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 4
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %6 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %6, i32 0, i32 1
  %7 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  %mul = mul nsw i32 3, %7
  %cmp = icmp slt i32 %5, %mul
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %sw.default
  %8 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_psdf_binary_writer, i32 0, i32 4), align 8, !tbaa !9
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %11 = load i32, i32* %index.addr, align 4, !tbaa !5
  %div = sdiv i32 %11, 3
  %idxprom = sext i32 %div to i64
  %12 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 %idxprom
  %13 = bitcast %struct.psdf_binary_writer_s* %arrayidx to i8*
  %14 = load i32, i32* %index.addr, align 4, !tbaa !5
  %rem = srem i32 %14, 3
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %9(%struct.gs_memory_s* %10, i8* %13, i32 32, i32 %rem, %struct.enum_ptr_s* %15, %struct.gs_memory_struct_type_s* @st_psdf_binary_writer, %struct.gc_state_s* %16) #7
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %17 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_ptr_procs_s* %17, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %19, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %20 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %cleanup.11

if.end.3:                                         ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

sw.bb:                                            ; preds = %entry
  %21 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %21, i32 0, i32 3
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !13
  %23 = bitcast %struct.pdf_resource_s* %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr4, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

sw.bb.5:                                          ; preds = %entry
  %25 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %25, i32 0, i32 5
  %26 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !14
  %27 = bitcast %struct.cos_stream_s* %26 to i8*
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr6, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

sw.bb.7:                                          ; preds = %entry
  %29 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %named = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %29, i32 0, i32 7
  %30 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !15
  %31 = bitcast %struct.cos_dict_s* %30 to i8*
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr8, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

sw.bb.9:                                          ; preds = %entry
  %33 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres_mask = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %33, i32 0, i32 8
  %34 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_mask, align 8, !tbaa !16
  %35 = bitcast %struct.pdf_resource_s* %34 to i8*
  %36 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %36, i32 0, i32 0
  store i8* %35, i8** %ptr10, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb, %if.end.3, %cleanup
  %37 = bitcast %struct.pdf_image_writer_s** %piw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %38
}

; Function Attrs: nounwind uwtable
define internal void @pdf_image_writer_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %piw = alloca %struct.pdf_image_writer_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_image_writer_s** %piw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_image_writer_s*
  store %struct.pdf_image_writer_s* %2, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %5, i32 0, i32 1
  %6 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_psdf_binary_writer, i32 0, i32 5), align 8, !tbaa !17
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 %idxprom
  %10 = bitcast %struct.psdf_binary_writer_s* %arrayidx to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %10, i32 32, %struct.gs_memory_struct_type_s* @st_psdf_binary_writer, %struct.gc_state_s* %11) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !18
  %17 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %17, i32 0, i32 3
  %18 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !13
  %19 = bitcast %struct.pdf_resource_s* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %16(i8* %19, %struct.gc_state_s* %20) #7
  %21 = bitcast i8* %call to %struct.pdf_resource_s*
  %22 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres1 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %22, i32 0, i32 3
  store %struct.pdf_resource_s* %21, %struct.pdf_resource_s** %pres1, align 8, !tbaa !13
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !18
  %27 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %27, i32 0, i32 5
  %28 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !14
  %29 = bitcast %struct.cos_stream_s* %28 to i8*
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %26(i8* %29, %struct.gc_state_s* %30) #7
  %31 = bitcast i8* %call3 to %struct.cos_stream_s*
  %32 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %32, i32 0, i32 5
  store %struct.cos_stream_s* %31, %struct.cos_stream_s** %data4, align 8, !tbaa !14
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gc_state_s* %33 to %struct.gc_procs_common_s**
  %35 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %34, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %35, i32 0, i32 0
  %36 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !18
  %37 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %named = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %37, i32 0, i32 7
  %38 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !15
  %39 = bitcast %struct.cos_dict_s* %38 to i8*
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %36(i8* %39, %struct.gc_state_s* %40) #7
  %41 = bitcast i8* %call6 to %struct.cos_dict_s*
  %42 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %named7 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %42, i32 0, i32 7
  store %struct.cos_dict_s* %41, %struct.cos_dict_s** %named7, align 8, !tbaa !15
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gc_state_s* %43 to %struct.gc_procs_common_s**
  %45 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %44, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %45, i32 0, i32 0
  %46 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !18
  %47 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres_mask = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %47, i32 0, i32 8
  %48 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_mask, align 8, !tbaa !16
  %49 = bitcast %struct.pdf_resource_s* %48 to i8*
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %46(i8* %49, %struct.gc_state_s* %50) #7
  %51 = bitcast i8* %call9 to %struct.pdf_resource_s*
  %52 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw, align 8, !tbaa !1
  %pres_mask10 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %52, i32 0, i32 8
  store %struct.pdf_resource_s* %51, %struct.pdf_resource_s** %pres_mask10, align 8, !tbaa !16
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.pdf_image_writer_s** %piw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_put_image_values(%struct.cos_dict_s* %pcd, %struct.gx_device_pdf_s* %pdev, %struct.gs_pixel_image_s* %pic, %struct.pdf_image_names_s* %pin, %struct.cos_value_s* %pcsvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pic.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pin.addr = alloca %struct.pdf_image_names_s*, align 8
  %pcsvalue.addr = alloca %struct.cos_value_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %pim = alloca %struct.gs_image1_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pim9 = alloca %struct.gs_image4_s*, align 8
  %num_components = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %i = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pic, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  store %struct.pdf_image_names_s* %pin, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pcsvalue, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %1, i32 0, i32 9
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !20
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %4, i32 0, i32 0
  %5 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !24
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %5, i32 0, i32 6
  %6 = load i32, i32* %index, align 4, !tbaa !25
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %7 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_pixel_image_s* %8 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %9, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 10
  %11 = load i32, i32* %ImageMask, align 4, !tbaa !27
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %ImageMask1 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %13, i32 0, i32 6
  %14 = load i8*, i8** %ImageMask1, align 8, !tbaa !29
  %call = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %12, i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 159
  %17 = load i32, i32* %procsets, align 4, !tbaa !33
  %or = or i32 %17, 1
  store i32 %or, i32* %procsets, align 4, !tbaa !33
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %18 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 75
  %20 = load double, double* %CompatibilityLevel, align 8, !tbaa !74
  %cmp5 = fcmp olt double %20, 1.300000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.7:                                         ; preds = %sw.bb.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %21 = bitcast %struct.gs_image4_s** %pim9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_pixel_image_s* %22 to %struct.gs_image4_s*
  store %struct.gs_image4_s* %23, %struct.gs_image4_s** %pim9, align 8, !tbaa !1
  %24 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call10 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %25) #7
  store i32 %call10, i32* %num_components, align 4, !tbaa !5
  %26 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 75
  %29 = load double, double* %CompatibilityLevel11, align 8, !tbaa !74
  %cmp12 = fcmp olt double %29, 1.300000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.14:                                        ; preds = %sw.bb.8
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call15 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call15, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %31 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.cos_array_s* %31, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.18:                                        ; preds = %if.end.14
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %32, %33
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim9, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %36, i32 0, i32 10
  %37 = load i32, i32* %MaskColor_is_range, align 4, !tbaa !75
  %tobool20 = icmp ne i32 %37, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %38, 2
  %idxprom = sext i32 %mul to i64
  %39 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim9, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %39, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 %idxprom
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %40, i32* %lo, align 4, !tbaa !5
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %mul22 = mul nsw i32 %41, 2
  %add = add nsw i32 %mul22, 1
  %idxprom23 = sext i32 %add to i64
  %42 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim9, align 8, !tbaa !1
  %MaskColor24 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %42, i32 0, i32 11
  %arrayidx25 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor24, i32 0, i64 %idxprom23
  %43 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  store i32 %43, i32* %hi, align 4, !tbaa !5
  br label %if.end.29

if.else:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %44 to i64
  %45 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim9, align 8, !tbaa !1
  %MaskColor27 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %45, i32 0, i32 11
  %arrayidx28 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor27, i32 0, i64 %idxprom26
  %46 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  store i32 %46, i32* %hi, align 4, !tbaa !5
  store i32 %46, i32* %lo, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.21
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %47 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %48 = load i32, i32* %lo, align 4, !tbaa !5
  %call31 = call i32 @cos_array_add_int(%struct.cos_array_s* %47, i32 %48) #7
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.30
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.34:                                        ; preds = %do.body.30
  br label %do.cond.35

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %50 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %51 = load i32, i32* %hi, align 4, !tbaa !5
  %call38 = call i32 @cos_array_add_int(%struct.cos_array_s* %50, i32 %51) #7
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %do.body.37
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.41:                                        ; preds = %do.body.37
  br label %do.cond.42

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %do.end.43, %if.then.40, %if.then.33
  %53 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %lo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %cleanup.dest.46 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.46, label %cleanup.55 [
    i32 0, label %cleanup.cont.47
  ]

cleanup.cont.47:                                  ; preds = %cleanup.44
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.47
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.48

do.body.48:                                       ; preds = %for.end
  %56 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %57 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %57, i32 0, i32 0
  %58 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call49 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), %struct.cos_object_s* %58) #7
  store i32 %call49, i32* %code, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.body.48
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.52:                                        ; preds = %do.body.48
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %do.end.54, %if.then.51, %cleanup.44, %if.then.17, %if.then.13
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.gs_image4_s** %pim9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest.59 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.59, label %cleanup.62 [
    i32 0, label %cleanup.cont.60
    i32 2, label %sw.epilog
  ]

cleanup.cont.60:                                  ; preds = %cleanup.55
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

sw.epilog:                                        ; preds = %cleanup.cont.60, %cleanup.55, %if.end.7, %cleanup.cont
  %64 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %66 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %67 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %68 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %69 = load %struct.cos_value_s*, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  %call61 = call i32 @pdf_put_pixel_image_values(%struct.cos_dict_s* %64, %struct.gx_device_pdf_s* %65, %struct.gs_pixel_image_s* %66, %struct.gs_color_space_s* %67, %struct.pdf_image_names_s* %68, %struct.cos_value_s* %69) #7
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %sw.epilog, %sw.default, %cleanup.55, %if.then.6, %cleanup
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @cos_dict_put_c_strings(%struct.cos_dict_s*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @cos_array_add_int(%struct.cos_array_s*, i32) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_put_pixel_image_values(%struct.cos_dict_s* %pcd, %struct.gx_device_pdf_s* %pdev, %struct.gs_pixel_image_s* %pim, %struct.gs_color_space_s* %pcs, %struct.pdf_image_names_s* %pin, %struct.cos_value_s* %pcsvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pin.addr = alloca %struct.pdf_image_names_s*, align 8
  %pcsvalue.addr = alloca %struct.cos_value_s*, align 8
  %num_components = alloca i32, align 4
  %indexed_decode = alloca [2 x float], align 4
  %default_decode = alloca float*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.pdf_image_names_s* %pin, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pcsvalue, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [2 x float]* %indexed_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast float** %default_decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store float* null, float** %default_decode, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %6 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %6, i32 0, i32 3
  %7 = load i8*, i8** %ColorSpace, align 8, !tbaa !77
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  %call = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %5, i8* %7, %struct.cos_value_s* %8) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %do.body
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void @pdf_color_space_procsets(%struct.gx_device_pdf_s* %10, %struct.gs_color_space_s* %11) #7
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %12) #7
  store i32 %call2, i32* %num_components, align 4, !tbaa !5
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %13) #7
  %cmp4 = icmp eq i32 %call3, 10
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.end
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %indexed_decode, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !78
  %14 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %14, i32 0, i32 4
  %15 = load i32, i32* %BitsPerComponent, align 4, !tbaa !79
  %shl = shl i32 1, %15
  %sub = sub nsw i32 %shl, 1
  %conv = sitofp i32 %sub to float
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %indexed_decode, i32 0, i64 1
  store float %conv, float* %arrayidx6, align 4, !tbaa !78
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %indexed_decode, i32 0, i32 0
  store float* %arraydecay, float** %default_decode, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.end
  br label %if.end.8

if.else:                                          ; preds = %entry
  store i32 1, i32* %num_components, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %16 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %17, i32 0, i32 8
  %18 = load i8*, i8** %Width, align 8, !tbaa !80
  %19 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width10 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %19, i32 0, i32 2
  %20 = load i32, i32* %Width10, align 4, !tbaa !81
  %call11 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %16, i8* %18, i32 %20) #7
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body.9
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.15:                                        ; preds = %do.body.9
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %22 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %23 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %23, i32 0, i32 5
  %24 = load i8*, i8** %Height, align 8, !tbaa !82
  %25 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height19 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %25, i32 0, i32 3
  %26 = load i32, i32* %Height19, align 4, !tbaa !83
  %call20 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %22, i8* %24, i32 %26) #7
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.18
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.24:                                        ; preds = %do.body.18
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %28 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %29 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %BitsPerComponent28 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %29, i32 0, i32 2
  %30 = load i8*, i8** %BitsPerComponent28, align 8, !tbaa !84
  %31 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent29 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %31, i32 0, i32 4
  %32 = load i32, i32* %BitsPerComponent29, align 4, !tbaa !79
  %call30 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %28, i8* %30, i32 %32) #7
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.27
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.34:                                        ; preds = %do.body.27
  br label %do.cond.35

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.36
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %36 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %36, 2
  %cmp37 = icmp slt i32 %35, %mul
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %38, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 %idxprom
  %39 = load float, float* %arrayidx39, align 4, !tbaa !78
  %40 = load float*, float** %default_decode, align 8, !tbaa !1
  %tobool40 = icmp ne float* %40, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %41 to i64
  %42 = load float*, float** %default_decode, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds float, float* %42, i64 %idxprom41
  %43 = load float, float* %arrayidx42, align 4, !tbaa !78
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %44, 1
  %conv43 = sitofp i32 %and to float
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %43, %cond.true ], [ %conv43, %cond.false ]
  %cmp44 = fcmp une float %39, %cond
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end
  br label %for.end

if.end.47:                                        ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.46, %for.cond
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %47 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul48 = mul nsw i32 %47, 2
  %cmp49 = icmp slt i32 %46, %mul48
  br i1 %cmp49, label %if.then.51, label %if.end.120

if.then.51:                                       ; preds = %for.end
  %48 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call52 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7
  store %struct.cos_array_s* %call52, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %50 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp53 = icmp eq %struct.cos_array_s* %50, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.then.51
  %51 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmp57 = icmp eq %struct.gs_color_space_s* %51, null
  br i1 %cmp57, label %if.then.59, label %if.else.89

if.then.59:                                       ; preds = %if.end.56
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.86, %if.then.59
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %53 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul61 = mul nsw i32 %53, 2
  %cmp62 = icmp slt i32 %52, %mul61
  br i1 %cmp62, label %for.body.64, label %for.end.88

for.body.64:                                      ; preds = %for.cond.60
  br label %do.body.65

do.body.65:                                       ; preds = %for.body.64
  %54 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %55 to i64
  %56 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode67 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %56, i32 0, i32 5
  %arrayidx68 = getelementptr inbounds [130 x float], [130 x float]* %Decode67, i32 0, i64 %idxprom66
  %57 = load float, float* %arrayidx68, align 4, !tbaa !78
  %cmp69 = fcmp olt float %57, 1.000000e+00
  br i1 %cmp69, label %cond.true.71, label %cond.false.75

cond.true.71:                                     ; preds = %do.body.65
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %58 to i64
  %59 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode73 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %59, i32 0, i32 5
  %arrayidx74 = getelementptr inbounds [130 x float], [130 x float]* %Decode73, i32 0, i64 %idxprom72
  %60 = load float, float* %arrayidx74, align 4, !tbaa !78
  br label %cond.end.76

cond.false.75:                                    ; preds = %do.body.65
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.71
  %cond77 = phi float [ %60, %cond.true.71 ], [ 1.000000e+00, %cond.false.75 ]
  %conv78 = fpext float %cond77 to double
  %call79 = call i32 @cos_array_add_real(%struct.cos_array_s* %54, double %conv78) #7
  store i32 %call79, i32* %code, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %cond.end.76
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %cond.end.76
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %for.inc.86

for.inc.86:                                       ; preds = %do.end.85
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %inc87 = add nsw i32 %62, 1
  store i32 %inc87, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.end.88:                                       ; preds = %for.cond.60
  br label %if.end.110

if.else.89:                                       ; preds = %if.end.56
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.107, %if.else.89
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %64 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul91 = mul nsw i32 %64, 2
  %cmp92 = icmp slt i32 %63, %mul91
  br i1 %cmp92, label %for.body.94, label %for.end.109

for.body.94:                                      ; preds = %for.cond.90
  br label %do.body.95

do.body.95:                                       ; preds = %for.body.94
  %65 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %66 to i64
  %67 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode97 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %67, i32 0, i32 5
  %arrayidx98 = getelementptr inbounds [130 x float], [130 x float]* %Decode97, i32 0, i64 %idxprom96
  %68 = load float, float* %arrayidx98, align 4, !tbaa !78
  %conv99 = fpext float %68 to double
  %call100 = call i32 @cos_array_add_real(%struct.cos_array_s* %65, double %conv99) #7
  store i32 %call100, i32* %code, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %do.body.95
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %do.body.95
  br label %do.cond.105

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %for.inc.107

for.inc.107:                                      ; preds = %do.end.106
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %inc108 = add nsw i32 %70, 1
  store i32 %inc108, i32* %i, align 4, !tbaa !5
  br label %for.cond.90

for.end.109:                                      ; preds = %for.cond.90
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %for.end.88
  br label %do.body.111

do.body.111:                                      ; preds = %if.end.110
  %71 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %72 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %Decode112 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %72, i32 0, i32 4
  %73 = load i8*, i8** %Decode112, align 8, !tbaa !85
  %74 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %74, i32 0, i32 0
  %75 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call113 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %71, i8* %73, %struct.cos_object_s* %75) #7
  store i32 %call113, i32* %code, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %do.body.111
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %do.body.111
  br label %do.cond.118

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.119, %if.then.116, %if.then.103, %if.then.82, %if.then.55
  %77 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.121 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.120

if.end.120:                                       ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %if.end.120, %cleanup
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest.122 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.122, label %cleanup.145 [
    i32 0, label %cleanup.cont.123
  ]

cleanup.cont.123:                                 ; preds = %cleanup.121
  %79 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %79, i32 0, i32 6
  %80 = load i32, i32* %Interpolate, align 4, !tbaa !86
  %tobool124 = icmp ne i32 %80, 0
  br i1 %tobool124, label %if.then.125, label %if.end.144

if.then.125:                                      ; preds = %cleanup.cont.123
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 109
  %82 = load i32, i32* %PDFA, align 4, !tbaa !87
  %cmp126 = icmp ne i32 %82, 0
  br i1 %cmp126, label %if.then.128, label %if.else.133

if.then.128:                                      ; preds = %if.then.125
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %call129 = call i8* @gs_program_name() #7
  %call130 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %84, i8* %call129, i64 %call130) #7
  %85 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !88
  %call132 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0)) #7
  br label %if.end.143

if.else.133:                                      ; preds = %if.then.125
  br label %do.body.134

do.body.134:                                      ; preds = %if.else.133
  %87 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %88 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %Interpolate135 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %88, i32 0, i32 7
  %89 = load i8*, i8** %Interpolate135, align 8, !tbaa !89
  %call136 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %87, i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #7
  store i32 %call136, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.body.134
  %90 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.140:                                       ; preds = %do.body.134
  br label %do.cond.141

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %if.then.128
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %cleanup.cont.123
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %if.end.144, %if.then.139, %cleanup.121, %if.then.33, %if.then.23, %if.then.14, %if.then.1
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast float** %default_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast [2 x float]* %indexed_decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define i32 @pdf_put_image_filters(%struct.cos_dict_s* %pcd, %struct.gx_device_pdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw, %struct.pdf_image_names_s* %pin) #0 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pin.addr = alloca %struct.pdf_image_names_s*, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.pdf_image_names_s* %pin, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %2, i32 0, i32 2
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !90
  %4 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin.addr, align 8, !tbaa !1
  %filter_names = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %4, i32 0, i32 1
  %call = call i32 @pdf_put_filters(%struct.cos_dict_s* %0, %struct.gx_device_pdf_s* %1, %struct.stream_s* %3, %struct.pdf_filter_names_s* %filter_names) #7
  ret i32 %call
}

declare i32 @pdf_put_filters(%struct.cos_dict_s*, %struct.gx_device_pdf_s*, %struct.stream_s*, %struct.pdf_filter_names_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf_make_bitmap_matrix(%struct.gs_matrix_s* %pmat, i32 %x, i32 %y, i32 %w, i32 %h, i32 %h_actual) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %h_actual.addr = alloca i32, align 4
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %h_actual, i32* %h_actual.addr, align 4, !tbaa !5
  %0 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv = sitofp i32 %0 to float
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  store float %conv, float* %xx, align 4, !tbaa !92
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !93
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !94
  %4 = load i32, i32* %h_actual.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %4
  %conv1 = sitofp i32 %sub to float
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 3
  store float %conv1, float* %yy, align 4, !tbaa !95
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %6 to float
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 4
  store float %conv2, float* %tx, align 4, !tbaa !96
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %conv3 = sitofp i32 %add to float
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 5
  store float %conv3, float* %ty, align 4, !tbaa !97
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %pdev, %struct.gs_matrix_s* %pmat, double %y_scale) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %y_scale.addr = alloca double, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store double %y_scale, double* %y_scale.addr, align 8, !tbaa !98
  %0 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_matrix_s* @pdf_put_image_matrix.imat to i8*), i64 24, i32 4, i1 false)
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %3 = load double, double* %y_scale.addr, align 8, !tbaa !98
  %sub = fsub double 1.000000e+00, %3
  %call = call i32 @gs_matrix_translate(%struct.gs_matrix_s* %2, double 0.000000e+00, double %sub, %struct.gs_matrix_s* %imat) #7
  %4 = load double, double* %y_scale.addr, align 8, !tbaa !98
  %call1 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %imat, double 1.000000e+00, double %4, %struct.gs_matrix_s* %imat) #7
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_put_matrix(%struct.gx_device_pdf_s* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), %struct.gs_matrix_s* %imat, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0)) #7
  %6 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_matrix_translate(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #2

declare void @pdf_put_matrix(%struct.gx_device_pdf_s*, i8*, %struct.gs_matrix_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_do_image_by_id(%struct.gx_device_pdf_s* %pdev, double %scale, %struct.gs_matrix_s* %pimat, i32 %in_contents, i64 %id) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %scale.addr = alloca double, align 8
  %pimat.addr = alloca %struct.gs_matrix_s*, align 8
  %in_contents.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !98
  store %struct.gs_matrix_s* %pimat, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  store i32 %in_contents, i32* %in_contents.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !99
  %0 = load i32, i32* %in_contents.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %2, i32 1) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.2

if.end.2:                                         ; preds = %cleanup.cont, %entry
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gs_matrix_s* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %9 = load double, double* %scale.addr, align 8, !tbaa !98
  call void @pdf_put_image_matrix(%struct.gx_device_pdf_s* %7, %struct.gs_matrix_s* %8, double %9) #7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 47
  %11 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !100
  %12 = load i64, i64* %id.addr, align 8, !tbaa !99
  %call6 = call i8* @pprintld1(%struct.stream_s* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i64 %12) #7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %cleanup
  %13 = load i32, i32* %retval
  ret i32 %13

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_do_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres, %struct.gs_matrix_s* %pimat, i32 %in_contents) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pimat.addr = alloca %struct.gs_matrix_s*, align 8
  %in_contents.addr = alloca i32, align 4
  %scale = alloca double, align 8
  %pxo = alloca %struct.pdf_x_object_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pimat, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  store i32 %in_contents, i32* %in_contents.addr, align 4, !tbaa !5
  %0 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 1.000000e+00, double* %scale, align 8, !tbaa !98
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_resource_s* %3 to %struct.pdf_x_object_s*
  store %struct.pdf_x_object_s* %4, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %5 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %data_height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %5, i32 0, i32 10
  %6 = load i32, i32* %data_height, align 4, !tbaa !101
  %conv = sitofp i32 %6 to double
  %7 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %7, i32 0, i32 9
  %8 = load i32, i32* %height, align 4, !tbaa !103
  %conv1 = sitofp i32 %8 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %scale, align 8, !tbaa !98
  %9 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load double, double* %scale, align 8, !tbaa !98
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %13 = load i32, i32* %in_contents.addr, align 4, !tbaa !5
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %14) #7
  %call2 = call i32 @pdf_do_image_by_id(%struct.gx_device_pdf_s* %10, double %11, %struct.gs_matrix_s* %12, i32 %13, i64 %call) #7
  %15 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %call2
}

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf_image_writer_init(%struct.pdf_image_writer_s* %piw) #0 {
entry:
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_image_writer_s* %0 to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 192) #8
  %2 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %2, i32 0, i32 1
  store i32 1, i32* %alt_writer_count, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_begin_write_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw, i64 %id, i32 %w, i32 %h, %struct.cos_dict_s* %named, i32 %in_line) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %id.addr = alloca i64, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %named.addr = alloca %struct.cos_dict_s*, align 8
  %in_line.addr = alloca i32, align 4
  %save_strm = alloca %struct.stream_s*, align 8
  %data = alloca %struct.cos_stream_s*, align 8
  %mask = alloca i32, align 4
  %alt_stream_index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pxo = alloca %struct.pdf_x_object_s*, align 8
  %pcos = alloca %struct.cos_stream_s*, align 8
  %pres7 = alloca %struct.pdf_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !99
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.cos_dict_s* %named, %struct.cos_dict_s** %named.addr, align 8, !tbaa !1
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !100
  store %struct.stream_s* %2, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %5, i32 0, i32 5
  %6 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data1, align 8, !tbaa !14
  %cmp = icmp ne %struct.cos_stream_s* %6, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %mask, align 4, !tbaa !5
  %7 = bitcast i32* %alt_stream_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %9, i32 0, i32 1
  %10 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %alt_stream_index, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %in_line.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %13, i32 0, i32 3
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !13
  %14 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %14, i32 0, i32 2
  store %struct.pdf_image_names_s* @pdf_image_names_short, %struct.pdf_image_names_s** %pin, align 8, !tbaa !104
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0)) #7
  store %struct.cos_stream_s* %call, %struct.cos_stream_s** %data, align 8, !tbaa !1
  %16 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.cos_stream_s* %16, null
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %if.then
  %17 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %end_string = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %17, i32 0, i32 6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8** %end_string, align 8, !tbaa !105
  %18 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %named6 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %18, i32 0, i32 7
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %named6, align 8, !tbaa !15
  br label %if.end.40

if.else:                                          ; preds = %cond.end
  %19 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.pdf_resource_s** %pres7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load i64, i64* %id.addr, align 8, !tbaa !99
  %24 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named.addr, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.cos_dict_s* %24, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.else
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named.addr, align 8, !tbaa !1
  %id10 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %25, i32 0, i32 1
  %26 = load i64, i64* %id10, align 8, !tbaa !106
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.else
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i64 [ %26, %cond.true.9 ], [ -1, %cond.false.11 ]
  %call14 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %22, i32 4, i64 %23, %struct.pdf_resource_s** %pres7, i64 %cond13) #7
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %27, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end.12
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %cond.end.12
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres7, align 8, !tbaa !1
  %30 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %30, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end.18
  %31 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres_mask = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %31, i32 0, i32 8
  br label %cond.end.23

cond.false.21:                                    ; preds = %if.end.18
  %32 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres22 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %32, i32 0, i32 3
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi %struct.pdf_resource_s** [ %pres_mask, %cond.true.20 ], [ %pres22, %cond.false.21 ]
  store %struct.pdf_resource_s* %29, %struct.pdf_resource_s** %cond24, align 8, !tbaa !1
  %33 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres7, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %33, i32 0, i32 7
  %34 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !109
  %call25 = call i32 @cos_become(%struct.cos_object_s* %34, %struct.cos_object_procs_s* @cos_stream_procs) #7
  %35 = load i64, i64* %id.addr, align 8, !tbaa !99
  %36 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres7, align 8, !tbaa !1
  %rid = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %36, i32 0, i32 2
  store i64 %35, i64* %rid, align 8, !tbaa !111
  %37 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin26 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %37, i32 0, i32 2
  store %struct.pdf_image_names_s* @pdf_image_names_full, %struct.pdf_image_names_s** %pin26, align 8, !tbaa !104
  %38 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres7, align 8, !tbaa !1
  %39 = bitcast %struct.pdf_resource_s* %38 to %struct.pdf_x_object_s*
  store %struct.pdf_x_object_s* %39, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %40 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %object27 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %40, i32 0, i32 7
  %41 = load %struct.cos_object_s*, %struct.cos_object_s** %object27, align 8, !tbaa !112
  %42 = bitcast %struct.cos_object_s* %41 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %42, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.23
  %43 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %call28 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %43) #7
  %call29 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %call28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)) #7
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %46 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %46, i32 0, i32 8
  store i32 %45, i32* %width, align 4, !tbaa !113
  %47 = load i32, i32* %h.addr, align 4, !tbaa !5
  %48 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %48, i32 0, i32 9
  store i32 %47, i32* %height, align 4, !tbaa !103
  %49 = load i32, i32* %h.addr, align 4, !tbaa !5
  %50 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %data_height = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %50, i32 0, i32 10
  store i32 %49, i32* %data_height, align 4, !tbaa !101
  %51 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  store %struct.cos_stream_s* %51, %struct.cos_stream_s** %data, align 8, !tbaa !1
  %52 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %52, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %do.end
  %53 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named.addr, align 8, !tbaa !1
  %54 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %named36 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %54, i32 0, i32 7
  store %struct.cos_dict_s* %53, %struct.cos_dict_s** %named36, align 8, !tbaa !15
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.32, %if.then.17
  %55 = bitcast %struct.pdf_resource_s** %pres7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont, %if.end
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 146
  %strm41 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 2
  %59 = load %struct.stream_s*, %struct.stream_s** %strm41, align 8, !tbaa !114
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm42 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %60, i32 0, i32 47
  store %struct.stream_s* %59, %struct.stream_s** %strm42, align 8, !tbaa !100
  %61 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !1
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call43 = call %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s* %61, %struct.gx_device_pdf_s* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0)) #7
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm44 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 47
  store %struct.stream_s* %call43, %struct.stream_s** %strm44, align 8, !tbaa !100
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 47
  %65 = load %struct.stream_s*, %struct.stream_s** %strm45, align 8, !tbaa !100
  %cmp46 = icmp eq %struct.stream_s* %65, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.40
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.49:                                        ; preds = %if.end.40
  %66 = load i32, i32* %mask, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %66, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %67 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !1
  %68 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data52 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %68, i32 0, i32 5
  store %struct.cos_stream_s* %67, %struct.cos_stream_s** %data52, align 8, !tbaa !14
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %69 = load i32, i32* %h.addr, align 4, !tbaa !5
  %70 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height54 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %70, i32 0, i32 4
  store i32 %69, i32* %height54, align 4, !tbaa !115
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_pdf_s* %71 to %struct.gx_device_psdf_s*
  %73 = load i32, i32* %alt_stream_index, align 4, !tbaa !5
  %idxprom = sext i32 %73 to i64
  %74 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %74, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 %idxprom
  %call55 = call i32 @psdf_begin_binary(%struct.gx_device_psdf_s* %72, %struct.psdf_binary_writer_s* %arrayidx) #7
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %alt_stream_index, align 4, !tbaa !5
  %idxprom56 = sext i32 %75 to i64
  %76 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary57 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %76, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary57, i32 0, i64 %idxprom56
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx58, i32 0, i32 1
  store %struct.stream_s* null, %struct.stream_s** %target, align 8, !tbaa !116
  %77 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm59 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 47
  store %struct.stream_s* %77, %struct.stream_s** %strm59, align 8, !tbaa !100
  %79 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.53, %if.then.48, %cleanup, %if.then.5
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %alt_stream_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.cos_stream_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #2

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #2

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #2

declare %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s*, %struct.gx_device_pdf_s*, i8*) #2

declare i32 @psdf_begin_binary(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_make_alt_stream(%struct.gx_device_pdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %save_strm = alloca %struct.stream_s*, align 8
  %pcos = alloca %struct.cos_stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !100
  store %struct.stream_s* %2, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.cos_stream_s* @cos_stream_alloc(%struct.gx_device_pdf_s* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #7
  store %struct.cos_stream_s* %call, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_stream_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %7, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !117
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %call1 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %8) #7
  %call2 = call i32 @cos_dict_put_c_strings(%struct.cos_dict_s* %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)) #7
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcos, align 8, !tbaa !1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s* %10, %struct.gx_device_pdf_s* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #7
  %12 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm7 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %12, i32 0, i32 2
  store %struct.stream_s* %call6, %struct.stream_s** %strm7, align 8, !tbaa !90
  %13 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm8 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %13, i32 0, i32 2
  %14 = load %struct.stream_s*, %struct.stream_s** %strm8, align 8, !tbaa !90
  %cmp9 = icmp eq %struct.stream_s* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.end
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_pdf_s* %15 to %struct.gx_device_psdf_s*
  %17 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %17, i32 0, i32 3
  store %struct.gx_device_psdf_s* %16, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !119
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 43
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !120
  %20 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %20, i32 0, i32 0
  store %struct.gs_memory_s* %19, %struct.gs_memory_s** %memory, align 8, !tbaa !121
  %21 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm12 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %21, i32 0, i32 2
  %22 = load %struct.stream_s*, %struct.stream_s** %strm12, align 8, !tbaa !90
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 47
  store %struct.stream_s* %22, %struct.stream_s** %strm13, align 8, !tbaa !100
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_pdf_s* %24 to %struct.gx_device_psdf_s*
  %26 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %call14 = call i32 @psdf_begin_binary(%struct.gx_device_psdf_s* %25, %struct.psdf_binary_writer_s* %26) #7
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %27 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 47
  store %struct.stream_s* %27, %struct.stream_s** %strm15, align 8, !tbaa !100
  %29 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %29, i32 0, i32 1
  store %struct.stream_s* null, %struct.stream_s** %target, align 8, !tbaa !116
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.cos_stream_s** %pcos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @pdf_begin_image_data(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw, %struct.gs_pixel_image_s* %pim, %struct.cos_value_s* %pcsvalue, i32 %alt_writer_index) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pcsvalue.addr = alloca %struct.cos_value_s*, align 8
  %alt_writer_index.addr = alloca i32, align 4
  %s = alloca %struct.cos_stream_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pcsvalue, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  store i32 %alt_writer_index, i32* %alt_writer_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cos_stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %alt_writer_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 %idxprom
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx, i32 0, i32 2
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !90
  %call = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %3) #7
  store %struct.cos_stream_s* %call, %struct.cos_stream_s** %s, align 8, !tbaa !1
  %4 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.cos_stream_s*, %struct.cos_stream_s** %s, align 8, !tbaa !1
  %call1 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %5) #7
  store %struct.cos_dict_s* %call1, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %10 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %10, i32 0, i32 2
  %11 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin, align 8, !tbaa !104
  %12 = load %struct.cos_value_s*, %struct.cos_value_s** %pcsvalue.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_put_image_values(%struct.cos_dict_s* %7, %struct.gx_device_pdf_s* %8, %struct.gs_pixel_image_s* %9, %struct.pdf_image_names_s* %11, %struct.cos_value_s* %12) #7
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load i32, i32* %alt_writer_index.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary4 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %17, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary4, i32 0, i64 %idxprom3
  %18 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin6 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %18, i32 0, i32 2
  %19 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin6, align 8, !tbaa !104
  %call7 = call i32 @pdf_put_image_filters(%struct.cos_dict_s* %14, %struct.gx_device_pdf_s* %15, %struct.psdf_binary_writer_s* %arrayidx5, %struct.pdf_image_names_s* %19) #7
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %21 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %21, i32 0, i32 3
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !13
  %tobool = icmp ne %struct.pdf_resource_s* %22, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.9
  %23 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %23, i32 0, i32 5
  %24 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !14
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %24, i32 0, i32 0
  %25 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.9
  %26 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %26, i32 0, i32 5
  store %struct.cos_stream_s* null, %struct.cos_stream_s** %data12, align 8, !tbaa !14
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %if.end
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.cos_stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %27
}

declare %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s*) #2

declare void @cos_free(%struct.cos_object_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_complete_image_data(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw, i32 %data_h, i32 %width, i32 %bits_per_pixel) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %data_h.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bits_per_pixel.addr = alloca i32, align 4
  %bytes_per_line = alloca i32, align 4
  %lines_left = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %lb = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %ignore = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i32 %data_h, i32* %data_h.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %0 = load i32, i32* %data_h.addr, align 4, !tbaa !5
  %1 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %1, i32 0, i32 4
  %2 = load i32, i32* %height, align 4, !tbaa !115
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %3 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx, i32 0, i32 2
  %4 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !90
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %5 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !122
  %6 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 2), align 8, !tbaa !126
  %cmp1 = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %5, %6
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary2 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary2, i32 0, i64 0
  %strm4 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx3, i32 0, i32 2
  %8 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !90
  %procs5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 14
  %process6 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs5, i32 0, i32 5
  %9 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process6, align 8, !tbaa !122
  %10 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_PNGPE_template, i32 0, i32 2), align 8, !tbaa !126
  %cmp7 = icmp eq i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %9, %10
  br i1 %cmp7, label %if.then.8, label %if.end.35

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %11 = bitcast i32* %bytes_per_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %width.addr, align 4, !tbaa !5
  %13 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  %add = add nsw i32 %mul, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %bytes_per_line, align 4, !tbaa !5
  %14 = bitcast i32* %lines_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %15, i32 0, i32 4
  %16 = load i32, i32* %height9, align 4, !tbaa !115
  %17 = load i32, i32* %data_h.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %17
  store i32 %sub, i32* %lines_left, align 4, !tbaa !5
  %18 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %18) #1
  %19 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 256, i32* %lb, align 4, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 128, i64 256) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.then.8
  %23 = load i32, i32* %lines_left, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %25 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %25, i32 0, i32 1
  %26 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  %cmp11 = icmp slt i32 %24, %26
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %27 = load i32, i32* %bytes_per_line, align 4, !tbaa !5
  store i32 %27, i32* %l, align 4, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body.12
  %28 = load i32, i32* %l, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %28, 0
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary16 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %30, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary16, i32 0, i64 %idxprom
  %strm18 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx17, i32 0, i32 2
  %31 = load %struct.stream_s*, %struct.stream_s** %strm18, align 8, !tbaa !90
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %32 = load i32, i32* %l, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %32, 256
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %33 = load i32, i32* %l, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ 256, %cond.false ]
  %call21 = call i32 @sputs(%struct.stream_s* %31, i8* %arraydecay19, i32 %cond, i32* %ignore) #7
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %cond.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %l, align 4, !tbaa !5
  %sub24 = sub i32 %34, 256
  store i32 %sub24, i32* %l, align 4, !tbaa !5
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %36 = load i32, i32* %lines_left, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %lines_left, align 4, !tbaa !5
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.28, %if.then.23
  %37 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %lb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %41) #1
  %42 = bitcast i32* %lines_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %bytes_per_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.end.35:                                        ; preds = %cleanup.cont, %lor.lhs.false
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %cleanup
  %44 = load i32, i32* %retval
  ret i32 %44

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_end_image_binary(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw, i32 %data_h) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %data_h.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %data = alloca [255 x i8], align 16
  %OutHeight = alloca i32, align 4
  %value = alloca %struct.cos_value_s*, align 8
  %cleanup.dest.slot = alloca i32
  %factor = alloca float, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i32 %data_h, i32* %data_h.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code1, align 4, !tbaa !5
  %2 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %2, i32 0, i32 1
  %3 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %call = call i32 @pdf_choose_compression(%struct.pdf_image_writer_s* %4, i32 1) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %call1 = call i32 @psdf_end_binary(%struct.psdf_binary_writer_s* %arrayidx) #7
  store i32 %call1, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %data_h.addr, align 4, !tbaa !5
  %7 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %7, i32 0, i32 4
  %8 = load i32, i32* %height, align 4, !tbaa !115
  %cmp2 = icmp ne i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.end.50

if.then.3:                                        ; preds = %if.end
  %9 = bitcast [255 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 255, i8* %9) #1
  %10 = bitcast i32* %OutHeight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.cos_value_s** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %12, i32 0, i32 5
  %13 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data4, align 8, !tbaa !14
  %call5 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %13) #7
  %14 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %14, i32 0, i32 2
  %15 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin, align 8, !tbaa !104
  %Height = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %15, i32 0, i32 5
  %16 = load i8*, i8** %Height, align 8, !tbaa !82
  %17 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin6 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %17, i32 0, i32 2
  %18 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin6, align 8, !tbaa !104
  %Height7 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %18, i32 0, i32 5
  %19 = load i8*, i8** %Height7, align 8, !tbaa !82
  %call8 = call i64 @strlen(i8* %19) #9
  %conv = trunc i64 %call8 to i32
  %call9 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %call5, i8* %16, i32 %conv) #7
  store %struct.cos_value_s* %call9, %struct.cos_value_s** %value, align 8, !tbaa !1
  %20 = load %struct.cos_value_s*, %struct.cos_value_s** %value, align 8, !tbaa !1
  %tobool = icmp ne %struct.cos_value_s* %20, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.then.3
  %21 = load %struct.cos_value_s*, %struct.cos_value_s** %value, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %21, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 1
  %22 = load i32, i32* %size, align 4, !tbaa !128
  %cmp10 = icmp ugt i32 %22, 255
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  %23 = bitcast [255 x i8]* %data to i8*
  %24 = load %struct.cos_value_s*, %struct.cos_value_s** %value, align 8, !tbaa !1
  %contents14 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %24, i32 0, i32 1
  %chars15 = bitcast %union.vc_* %contents14 to %struct.gs_string_s*
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars15, i32 0, i32 0
  %25 = load i8*, i8** %data16, align 8, !tbaa !129
  %26 = load %struct.cos_value_s*, %struct.cos_value_s** %value, align 8, !tbaa !1
  %contents17 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %26, i32 0, i32 1
  %chars18 = bitcast %union.vc_* %contents17 to %struct.gs_string_s*
  %size19 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars18, i32 0, i32 1
  %27 = load i32, i32* %size19, align 4, !tbaa !128
  %conv20 = zext i32 %27 to i64
  %call21 = call i8* @strncpy(i8* %23, i8* %25, i64 %conv20) #8
  %28 = load %struct.cos_value_s*, %struct.cos_value_s** %value, align 8, !tbaa !1
  %contents22 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %28, i32 0, i32 1
  %chars23 = bitcast %union.vc_* %contents22 to %struct.gs_string_s*
  %size24 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars23, i32 0, i32 1
  %29 = load i32, i32* %size24, align 4, !tbaa !128
  %idxprom = zext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [255 x i8], [255 x i8]* %data, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx25, align 1, !tbaa !130
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %data, i32 0, i32 0
  %call26 = call i32 @atoi(i8* %arraydecay) #9
  store i32 %call26, i32* %OutHeight, align 4, !tbaa !5
  %30 = load i32, i32* %OutHeight, align 4, !tbaa !5
  %31 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %31, i32 0, i32 4
  %32 = load i32, i32* %height27, align 4, !tbaa !115
  %cmp28 = icmp ne i32 %30, %32
  br i1 %cmp28, label %if.then.30, label %if.else.41

if.then.30:                                       ; preds = %if.end.13
  %33 = bitcast float* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %OutHeight, align 4, !tbaa !5
  %conv31 = sitofp i32 %34 to float
  %35 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %height32 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %35, i32 0, i32 4
  %36 = load i32, i32* %height32, align 4, !tbaa !115
  %conv33 = sitofp i32 %36 to float
  %div = fdiv float %conv31, %conv33
  store float %div, float* %factor, align 4, !tbaa !78
  %37 = load float, float* %factor, align 4, !tbaa !78
  %38 = load i32, i32* %data_h.addr, align 4, !tbaa !5
  %conv34 = sitofp i32 %38 to float
  %mul = fmul float %37, %conv34
  %conv35 = fptosi float %mul to i32
  store i32 %conv35, i32* %OutHeight, align 4, !tbaa !5
  %39 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data36 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %39, i32 0, i32 5
  %40 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data36, align 8, !tbaa !14
  %call37 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %40) #7
  %41 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin38 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %41, i32 0, i32 2
  %42 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin38, align 8, !tbaa !104
  %Height39 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %42, i32 0, i32 5
  %43 = load i8*, i8** %Height39, align 8, !tbaa !82
  %44 = load i32, i32* %OutHeight, align 4, !tbaa !5
  %call40 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %call37, i8* %43, i32 %44) #7
  store i32 %call40, i32* %code1, align 4, !tbaa !5
  %45 = bitcast float* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %if.end.47

if.else.41:                                       ; preds = %if.end.13
  %46 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data42 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %46, i32 0, i32 5
  %47 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data42, align 8, !tbaa !14
  %call43 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %47) #7
  %48 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pin44 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %48, i32 0, i32 2
  %49 = load %struct.pdf_image_names_s*, %struct.pdf_image_names_s** %pin44, align 8, !tbaa !104
  %Height45 = getelementptr inbounds %struct.pdf_image_names_s, %struct.pdf_image_names_s* %49, i32 0, i32 5
  %50 = load i8*, i8** %Height45, align 8, !tbaa !82
  %51 = load i32, i32* %data_h.addr, align 4, !tbaa !5
  %call46 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %call43, i8* %50, i32 %51) #7
  store i32 %call46, i32* %code1, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.41, %if.then.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.12
  %52 = bitcast %struct.cos_value_s** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %OutHeight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [255 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 255, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %if.end
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %55, 0
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %56 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %57 = load i32, i32* %code1, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %56, %cond.true ], [ %57, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %cond.end, %cleanup
  %58 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @pdf_choose_compression(%struct.pdf_image_writer_s* %piw, i32 %end_binary) #0 {
entry:
  %retval = alloca i32, align 4
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %end_binary.addr = alloca i32, align 4
  %s = alloca [2 x %struct.cos_stream_s*], align 16
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store i32 %end_binary, i32* %end_binary.addr, align 4, !tbaa !5
  %0 = bitcast [2 x %struct.cos_stream_s*]* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx, i32 0, i32 2
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !90
  %call = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %2) #7
  %arrayidx1 = getelementptr inbounds [2 x %struct.cos_stream_s*], [2 x %struct.cos_stream_s*]* %s, i32 0, i64 0
  store %struct.cos_stream_s* %call, %struct.cos_stream_s** %arrayidx1, align 8, !tbaa !1
  %3 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary2 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary2, i32 0, i64 1
  %strm4 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx3, i32 0, i32 2
  %4 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !90
  %call5 = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %4) #7
  %arrayidx6 = getelementptr inbounds [2 x %struct.cos_stream_s*], [2 x %struct.cos_stream_s*]* %s, i32 0, i64 1
  store %struct.cos_stream_s* %call5, %struct.cos_stream_s** %arrayidx6, align 8, !tbaa !1
  %5 = load i32, i32* %end_binary.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary7 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary7, i32 0, i64 0
  %strm9 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx8, i32 0, i32 2
  %8 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary10 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %8, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary10, i32 0, i64 0
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx11, i32 0, i32 1
  %9 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !116
  %call12 = call i32 @s_close_filters(%struct.stream_s** %strm9, %struct.stream_s* %9) #7
  store i32 %call12, i32* %status, align 4, !tbaa !5
  %10 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary14 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %11, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary14, i32 0, i64 1
  %strm16 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx15, i32 0, i32 2
  %12 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary17 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %12, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary17, i32 0, i64 1
  %target19 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx18, i32 0, i32 1
  %13 = load %struct.stream_s*, %struct.stream_s** %target19, align 8, !tbaa !116
  %call20 = call i32 @s_close_filters(%struct.stream_s** %strm16, %struct.stream_s* %13) #7
  store i32 %call20, i32* %status, align 4, !tbaa !5
  %14 = load i32, i32* %status, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %14, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [2 x %struct.cos_stream_s*], [2 x %struct.cos_stream_s*]* %s, i32 0, i64 1
  %15 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx23, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %15, i32 0, i32 9
  store i64 -1, i64* %length, align 8, !tbaa !131
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.13
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %entry
  %17 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x %struct.cos_stream_s*], [2 x %struct.cos_stream_s*]* %s, i32 0, i32 0
  %18 = load i32, i32* %end_binary.addr, align 4, !tbaa !5
  call void @pdf_choose_compression_cos(%struct.pdf_image_writer_s* %17, %struct.cos_stream_s** %arraydecay, i32 %18) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.25, %cleanup
  %19 = bitcast [2 x %struct.cos_stream_s*]* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @psdf_end_binary(%struct.psdf_binary_writer_s*) #2

declare %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #8
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_end_write_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_image_writer_s* %piw) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %named = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pxo = alloca %struct.pdf_x_object_s*, align 8
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %KeyLength = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres1 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %1, i32 0, i32 3
  %2 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1, align 8, !tbaa !13
  store %struct.pdf_resource_s* %2, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_resource_s* %3, null
  br i1 %tobool, label %if.then, label %if.else.49

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %5, i32 0, i32 7
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !109
  store %struct.cos_object_s* %6, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %7 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %9 = bitcast %struct.cos_object_s* %8 to %struct.cos_stream_s*
  store %struct.cos_stream_s* %9, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %10 = bitcast %struct.cos_dict_s** %named to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %named2 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %11, i32 0, i32 7
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named2, align 8, !tbaa !15
  store %struct.cos_dict_s* %12, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.cos_dict_s* %14, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 99
  %16 = load i32, i32* %ForOPDFRead, align 4, !tbaa !132
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.4
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %call = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 1) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.6
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.4
  %20 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %call9 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %20) #7
  %21 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %call10 = call i32 @cos_dict_move_all(%struct.cos_dict_s* %call9, %struct.cos_dict_s* %21) #7
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.13:                                        ; preds = %if.end.8
  %24 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %named14 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %24, i32 0, i32 3
  store i32 1, i32* %named14, align 4, !tbaa !133
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %26 = bitcast %struct.cos_dict_s* %25 to %struct.cos_object_s*
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %28 = bitcast %struct.cos_object_s* %26 to i8*
  %29 = bitcast %struct.cos_object_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 200, i32 8, i1 false), !tbaa.struct !134
  %30 = load %struct.cos_dict_s*, %struct.cos_dict_s** %named, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %30, i32 0, i32 0
  %31 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %32 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object15 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %32, i32 0, i32 7
  store %struct.cos_object_s* %31, %struct.cos_object_s** %object15, align 8, !tbaa !109
  br label %if.end.39

if.else:                                          ; preds = %if.then
  %33 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %named16 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %33, i32 0, i32 3
  %34 = load i32, i32* %named16, align 4, !tbaa !133
  %tobool17 = icmp ne i32 %34, 0
  br i1 %tobool17, label %if.end.38, label %if.then.18

if.then.18:                                       ; preds = %if.else
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %DetectDuplicateImages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 240
  %36 = load i32, i32* %DetectDuplicateImages, align 4, !tbaa !135
  %tobool19 = icmp ne i32 %36, 0
  br i1 %tobool19, label %if.then.20, label %if.else.34

if.then.20:                                       ; preds = %if.then.18
  %37 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres21 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %38, i32 0, i32 3
  %39 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres21, align 8, !tbaa !13
  %40 = bitcast %struct.pdf_resource_s* %39 to %struct.pdf_x_object_s*
  store %struct.pdf_x_object_s* %40, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %41 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %42, i32 0, i32 9
  %43 = load i32, i32* %height22, align 4, !tbaa !103
  store i32 %43, i32* %height, align 4, !tbaa !5
  %44 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %45, i32 0, i32 8
  %46 = load i32, i32* %width23, align 4, !tbaa !113
  store i32 %46, i32* %width, align 4, !tbaa !5
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres24 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %48, i32 0, i32 3
  %call25 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %47, %struct.pdf_resource_s** %pres24, i32 4, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #7
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %49, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.20
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.20
  %51 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres29 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %51, i32 0, i32 3
  %52 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres29, align 8, !tbaa !13
  %53 = bitcast %struct.pdf_resource_s* %52 to %struct.pdf_x_object_s*
  store %struct.pdf_x_object_s* %53, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %54 = load i32, i32* %height, align 4, !tbaa !5
  %55 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %height30 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %55, i32 0, i32 9
  store i32 %54, i32* %height30, align 4, !tbaa !103
  %56 = load i32, i32* %width, align 4, !tbaa !5
  %57 = load %struct.pdf_x_object_s*, %struct.pdf_x_object_s** %pxo, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.pdf_x_object_s, %struct.pdf_x_object_s* %57, i32 0, i32 8
  store i32 %56, i32* %width31, align 4, !tbaa !113
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %58 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.pdf_x_object_s** %pxo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.else.34:                                       ; preds = %if.then.18
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %62 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres35 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %62, i32 0, i32 3
  %63 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres35, align 8, !tbaa !13
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %61, %struct.pdf_resource_s* %63, i64 0) #7
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %cleanup.cont
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 164
  %65 = load i64, i64* %used_mask, align 8, !tbaa !136
  %66 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres37 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %66, i32 0, i32 3
  %67 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres37, align 8, !tbaa !13
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %67, i32 0, i32 6
  %68 = load i64, i64* %where_used, align 8, !tbaa !137
  %or = or i64 %68, %65
  store i64 %or, i64* %where_used, align 8, !tbaa !137
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.13
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 205
  %71 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !138
  %72 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres40 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %72, i32 0, i32 3
  %73 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres40, align 8, !tbaa !13
  %call41 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %69, %struct.cos_dict_s* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), %struct.pdf_resource_s* %73) #7
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %74, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  %75 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.44:                                        ; preds = %if.end.39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %if.then.43, %cleanup, %if.then.12, %if.then.7
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.cos_dict_s** %named to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  br label %cleanup.64

if.else.49:                                       ; preds = %entry
  %80 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 47
  %82 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !100
  store %struct.stream_s* %82, %struct.stream_s** %s, align 8, !tbaa !1
  %83 = bitcast i32* %KeyLength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %KeyLength50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 117
  %85 = load i32, i32* %KeyLength50, align 4, !tbaa !139
  store i32 %85, i32* %KeyLength, align 4, !tbaa !5
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call51 = call i32 @stream_puts(%struct.stream_s* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #7
  %87 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %87, i32 0, i32 5
  %88 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data, align 8, !tbaa !14
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call52 = call i32 @cos_stream_elements_write(%struct.cos_stream_s* %88, %struct.gx_device_pdf_s* %89) #7
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %91, i32 0, i32 68
  %92 = load i32, i32* %binary_ok, align 4, !tbaa !140
  %tobool53 = icmp ne i32 %92, 0
  %cond = select i1 %tobool53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)
  %call54 = call i32 @stream_puts(%struct.stream_s* %90, i8* %cond) #7
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %KeyLength55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 117
  store i32 0, i32* %KeyLength55, align 4, !tbaa !139
  %94 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data56 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %94, i32 0, i32 5
  %95 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data56, align 8, !tbaa !14
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call57 = call i32 @cos_stream_contents_write(%struct.cos_stream_s* %95, %struct.gx_device_pdf_s* %96) #7
  %97 = load i32, i32* %KeyLength, align 4, !tbaa !5
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %KeyLength58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 117
  store i32 %97, i32* %KeyLength58, align 4, !tbaa !139
  %99 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %100 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %end_string = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %100, i32 0, i32 6
  %101 = load i8*, i8** %end_string, align 8, !tbaa !105
  %call59 = call i8* @pprints1(%struct.stream_s* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* %101) #7
  %102 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data60 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %102, i32 0, i32 5
  %103 = load %struct.cos_stream_s*, %struct.cos_stream_s** %data60, align 8, !tbaa !14
  %cos_procs61 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %103, i32 0, i32 0
  %104 = bitcast %struct.cos_object_procs_s** %cos_procs61 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0)) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %105 = bitcast i32* %KeyLength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.else.49, %cleanup.45
  %107 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

declare i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s*, i8*, i32) #2

declare i32 @cos_dict_move_all(%struct.cos_dict_s*, %struct.cos_dict_s*) #2

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #2

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #2

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare i32 @cos_stream_elements_write(%struct.cos_stream_s*, %struct.gx_device_pdf_s*) #2

declare i32 @cos_stream_contents_write(%struct.cos_stream_s*, %struct.gx_device_pdf_s*) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_copy_mask_bits(%struct.stream_s* %s, i8* %base, i32 %sourcex, i32 %raster, i32 %w, i32 %h, i8 zeroext %invert) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %invert.addr = alloca i8, align 1
  %yi = alloca i32, align 4
  %data = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %i = alloca i32, align 4
  %wleft = alloca i32, align 4
  %rbit = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i8 %invert, i8* %invert.addr, align 1, !tbaa !130
  %0 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %yi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %1 = load i32, i32* %yi, align 4, !tbaa !5
  %2 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %5 = load i32, i32* %yi, align 4, !tbaa !5
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr = ashr i32 %7, 3
  %idx.ext1 = sext i32 %shr to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext1
  store i8* %add.ptr2, i8** %data, align 8, !tbaa !1
  %8 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and = and i32 %9, 7
  store i32 %and, i32* %sbit, align 4, !tbaa !5
  %10 = load i32, i32* %sbit, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %12, 7
  %shr4 = ashr i32 %add, 3
  store i32 %shr4, i32* %nbytes, align 4, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %nbytes, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w8 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w8, i32 0, i32 1
  %17 = load i8*, i8** %ptr, align 8, !tbaa !141
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 2
  %19 = load i8*, i8** %limit, align 8, !tbaa !143
  %cmp11 = icmp uge i8* %17, %19
  br i1 %cmp11, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body.7
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_write_s*
  %ptr14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w13, i32 0, i32 1
  %21 = load i8*, i8** %ptr14, align 8, !tbaa !141
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr14, align 8, !tbaa !141
  %22 = load i8*, i8** %data, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !130
  %conv = zext i8 %23 to i32
  %24 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv15 = zext i8 %24 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %ptr19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 1
  %26 = load i8*, i8** %ptr19, align 8, !tbaa !141
  store i8 %conv16, i8* %26, align 1, !tbaa !130
  br label %cond.end

cond.false:                                       ; preds = %for.body.7
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %data, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !130
  %conv20 = zext i8 %29 to i32
  %30 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv21 = zext i8 %30 to i32
  %xor22 = xor i32 %conv20, %conv21
  %conv23 = trunc i32 %xor22 to i8
  %call = call i32 @spputc(%struct.stream_s* %27, i8 zeroext %conv23) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr24, i8** %data, align 8, !tbaa !1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %if.end.111

if.else:                                          ; preds = %for.body
  %35 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %36, i32* %wleft, align 4, !tbaa !5
  %37 = bitcast i32* %rbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub = sub nsw i32 8, %38
  store i32 %sub, i32* %rbit, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.66, %if.else
  %39 = load i32, i32* %wleft, align 4, !tbaa !5
  %40 = load i32, i32* %sbit, align 4, !tbaa !5
  %add26 = add nsw i32 %39, %40
  %cmp27 = icmp sgt i32 %add26, 8
  br i1 %cmp27, label %for.body.29, label %for.end.69

for.body.29:                                      ; preds = %for.cond.25
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %w31 = bitcast %union.stream_cursor_s* %cursor30 to %struct.stream_cursor_write_s*
  %ptr32 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w31, i32 0, i32 1
  %42 = load i8*, i8** %ptr32, align 8, !tbaa !141
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %w34 = bitcast %union.stream_cursor_s* %cursor33 to %struct.stream_cursor_write_s*
  %limit35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w34, i32 0, i32 2
  %44 = load i8*, i8** %limit35, align 8, !tbaa !143
  %cmp36 = icmp uge i8* %42, %44
  br i1 %cmp36, label %cond.false.53, label %cond.true.38

cond.true.38:                                     ; preds = %for.body.29
  %45 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 5
  %w40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_write_s*
  %ptr41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w40, i32 0, i32 1
  %46 = load i8*, i8** %ptr41, align 8, !tbaa !141
  %incdec.ptr42 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr42, i8** %ptr41, align 8, !tbaa !141
  %47 = load i8*, i8** %data, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !130
  %conv43 = zext i8 %48 to i32
  %49 = load i32, i32* %sbit, align 4, !tbaa !5
  %shl = shl i32 %conv43, %49
  %50 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx, align 1, !tbaa !130
  %conv44 = zext i8 %51 to i32
  %52 = load i32, i32* %rbit, align 4, !tbaa !5
  %shr45 = ashr i32 %conv44, %52
  %add46 = add nsw i32 %shl, %shr45
  %53 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv47 = zext i8 %53 to i32
  %xor48 = xor i32 %add46, %conv47
  %conv49 = trunc i32 %xor48 to i8
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor50 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %w51 = bitcast %union.stream_cursor_s* %cursor50 to %struct.stream_cursor_write_s*
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w51, i32 0, i32 1
  %55 = load i8*, i8** %ptr52, align 8, !tbaa !141
  store i8 %conv49, i8* %55, align 1, !tbaa !130
  br label %cond.end.64

cond.false.53:                                    ; preds = %for.body.29
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !130
  %conv54 = zext i8 %58 to i32
  %59 = load i32, i32* %sbit, align 4, !tbaa !5
  %shl55 = shl i32 %conv54, %59
  %60 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx56, align 1, !tbaa !130
  %conv57 = zext i8 %61 to i32
  %62 = load i32, i32* %rbit, align 4, !tbaa !5
  %shr58 = ashr i32 %conv57, %62
  %add59 = add nsw i32 %shl55, %shr58
  %63 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv60 = zext i8 %63 to i32
  %xor61 = xor i32 %add59, %conv60
  %conv62 = trunc i32 %xor61 to i8
  %call63 = call i32 @spputc(%struct.stream_s* %56, i8 zeroext %conv62) #7
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.53, %cond.true.38
  %cond65 = phi i32 [ 0, %cond.true.38 ], [ %call63, %cond.false.53 ]
  br label %for.inc.66

for.inc.66:                                       ; preds = %cond.end.64
  %64 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr67, i8** %data, align 8, !tbaa !1
  %65 = load i32, i32* %wleft, align 4, !tbaa !5
  %sub68 = sub nsw i32 %65, 8
  store i32 %sub68, i32* %wleft, align 4, !tbaa !5
  br label %for.cond.25

for.end.69:                                       ; preds = %for.cond.25
  %66 = load i32, i32* %wleft, align 4, !tbaa !5
  %cmp70 = icmp sgt i32 %66, 0
  br i1 %cmp70, label %if.then.72, label %if.end

if.then.72:                                       ; preds = %for.end.69
  %67 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %67, i32 0, i32 5
  %w74 = bitcast %union.stream_cursor_s* %cursor73 to %struct.stream_cursor_write_s*
  %ptr75 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w74, i32 0, i32 1
  %68 = load i8*, i8** %ptr75, align 8, !tbaa !141
  %69 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %69, i32 0, i32 5
  %w77 = bitcast %union.stream_cursor_s* %cursor76 to %struct.stream_cursor_write_s*
  %limit78 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w77, i32 0, i32 2
  %70 = load i8*, i8** %limit78, align 8, !tbaa !143
  %cmp79 = icmp uge i8* %68, %70
  br i1 %cmp79, label %cond.false.98, label %cond.true.81

cond.true.81:                                     ; preds = %if.then.72
  %71 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor82 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 5
  %w83 = bitcast %union.stream_cursor_s* %cursor82 to %struct.stream_cursor_write_s*
  %ptr84 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w83, i32 0, i32 1
  %72 = load i8*, i8** %ptr84, align 8, !tbaa !141
  %incdec.ptr85 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr85, i8** %ptr84, align 8, !tbaa !141
  %73 = load i8*, i8** %data, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !130
  %conv86 = zext i8 %74 to i32
  %75 = load i32, i32* %sbit, align 4, !tbaa !5
  %shl87 = shl i32 %conv86, %75
  %76 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv88 = zext i8 %76 to i32
  %xor89 = xor i32 %shl87, %conv88
  %77 = load i32, i32* %wleft, align 4, !tbaa !5
  %shr90 = ashr i32 65280, %77
  %conv91 = trunc i32 %shr90 to i8
  %conv92 = zext i8 %conv91 to i32
  %and93 = and i32 %xor89, %conv92
  %conv94 = trunc i32 %and93 to i8
  %78 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor95 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %78, i32 0, i32 5
  %w96 = bitcast %union.stream_cursor_s* %cursor95 to %struct.stream_cursor_write_s*
  %ptr97 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w96, i32 0, i32 1
  %79 = load i8*, i8** %ptr97, align 8, !tbaa !141
  store i8 %conv94, i8* %79, align 1, !tbaa !130
  br label %cond.end.109

cond.false.98:                                    ; preds = %if.then.72
  %80 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %data, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !130
  %conv99 = zext i8 %82 to i32
  %83 = load i32, i32* %sbit, align 4, !tbaa !5
  %shl100 = shl i32 %conv99, %83
  %84 = load i8, i8* %invert.addr, align 1, !tbaa !130
  %conv101 = zext i8 %84 to i32
  %xor102 = xor i32 %shl100, %conv101
  %85 = load i32, i32* %wleft, align 4, !tbaa !5
  %shr103 = ashr i32 65280, %85
  %conv104 = trunc i32 %shr103 to i8
  %conv105 = zext i8 %conv104 to i32
  %and106 = and i32 %xor102, %conv105
  %conv107 = trunc i32 %and106 to i8
  %call108 = call i32 @spputc(%struct.stream_s* %80, i8 zeroext %conv107) #7
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.98, %cond.true.81
  %cond110 = phi i32 [ 0, %cond.true.81 ], [ %call108, %cond.false.98 ]
  br label %if.end

if.end:                                           ; preds = %cond.end.109, %for.end.69
  %86 = bitcast i32* %rbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %if.end.111

if.end.111:                                       ; preds = %if.end, %for.end
  %88 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %90 = load i32, i32* %yi, align 4, !tbaa !5
  %inc113 = add nsw i32 %90, 1
  store i32 %inc113, i32* %yi, align 4, !tbaa !5
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %91 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret i32 0
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_copy_color_bits(%struct.stream_s* %s, i8* %base, i32 %sourcex, i32 %raster, i32 %w, i32 %h, i32 %bytes_per_pixel) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %bytes_per_pixel.addr = alloca i32, align 4
  %yi = alloca i32, align 4
  %ignore = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %bytes_per_pixel, i32* %bytes_per_pixel.addr, align 4, !tbaa !5
  %0 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %yi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %yi, align 4, !tbaa !5
  %2 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %6 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %7 = load i32, i32* %bytes_per_pixel.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %8 = load i32, i32* %yi, align 4, !tbaa !5
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 %8, %9
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext2
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %11 = load i32, i32* %bytes_per_pixel.addr, align 4, !tbaa !5
  %mul4 = mul nsw i32 %10, %11
  %call = call i32 @sputs(%struct.stream_s* %4, i8* %add.ptr3, i32 %mul4, i32* %ignore) #7
  %12 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %yi, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %yi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 0
}

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal void @pdf_choose_compression_cos(%struct.pdf_image_writer_s* %piw, %struct.cos_stream_s** %s, i32 %force) #0 {
entry:
  %piw.addr = alloca %struct.pdf_image_writer_s*, align 8
  %s.addr = alloca %struct.cos_stream_s**, align 8
  %force.addr = alloca i32, align 4
  %l0 = alloca i64, align 8
  %l1 = alloca i64, align 8
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_image_writer_s* %piw, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  store %struct.cos_stream_s** %s, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  store i32 %force, i32* %force.addr, align 4, !tbaa !5
  %0 = bitcast i64* %l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %l1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %4, i64 0
  %5 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx, align 8, !tbaa !1
  %call = call i64 @cos_stream_length(%struct.cos_stream_s* %5) #7
  store i64 %call, i64* %l0, align 8, !tbaa !99
  %6 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %6, i64 1
  %7 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx1, align 8, !tbaa !1
  %call2 = call i64 @cos_stream_length(%struct.cos_stream_s* %7) #7
  store i64 %call2, i64* %l1, align 8, !tbaa !99
  %8 = load i32, i32* %force.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %9 = load i64, i64* %l0, align 8, !tbaa !99
  %10 = load i64, i64* %l1, align 8, !tbaa !99
  %cmp = icmp sle i64 %9, %10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %11 = load i64, i64* %l1, align 8, !tbaa !99
  %cmp3 = icmp eq i64 %11, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %k0, align 4, !tbaa !5
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %12 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary, i32 0, i64 2
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx4, i32 0, i32 2
  %13 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !90
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 18
  %14 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !144
  %15 = bitcast %struct.stream_state_s* %14 to %struct.stream_compr_chooser_state_s*
  %16 = load i32, i32* %force.addr, align 4, !tbaa !5
  %call5 = call i32 @s_compr_chooser__get_choice(%struct.stream_compr_chooser_state_s* %15, i32 %16) #7
  store i32 %call5, i32* %k0, align 4, !tbaa !5
  %17 = load i32, i32* %k0, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.12

land.lhs.true.7:                                  ; preds = %if.else
  %18 = load i64, i64* %l0, align 8, !tbaa !99
  %cmp8 = icmp sgt i64 %18, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.12

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %19 = load i64, i64* %l1, align 8, !tbaa !99
  %cmp10 = icmp sgt i64 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true.9
  %20 = load i32, i32* %k0, align 4, !tbaa !5
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %k0, align 4, !tbaa !5
  br label %if.end.24

if.else.12:                                       ; preds = %land.lhs.true.9, %land.lhs.true.7, %if.else
  %21 = load i64, i64* %l0, align 8, !tbaa !99
  %22 = load i64, i64* %l1, align 8, !tbaa !99
  %call13 = call i32 @much_bigger__DL(i64 %21, i64 %22) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 0, i32* %k0, align 4, !tbaa !5
  br label %if.end.23

if.else.16:                                       ; preds = %if.else.12
  %23 = load i64, i64* %l1, align 8, !tbaa !99
  %24 = load i64, i64* %l0, align 8, !tbaa !99
  %call17 = call i32 @much_bigger__DL(i64 %23, i64 %24) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.else.16
  %25 = load i32, i32* %force.addr, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false.19, %if.else.16
  store i32 1, i32* %k0, align 4, !tbaa !5
  br label %if.end

if.else.22:                                       ; preds = %lor.lhs.false.19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.11
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %26 = load i32, i32* %k0, align 4, !tbaa !5
  %sub = sub nsw i32 1, %26
  store i32 %sub, i32* %k1, align 4, !tbaa !5
  %27 = load i32, i32* %k0, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary26 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %28, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary26, i32 0, i64 %idxprom
  %strm28 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx27, i32 0, i32 2
  %29 = load i32, i32* %k0, align 4, !tbaa !5
  %idxprom29 = sext i32 %29 to i64
  %30 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary30 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %30, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary30, i32 0, i64 %idxprom29
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx31, i32 0, i32 1
  %31 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !116
  %call32 = call i32 @s_close_filters(%struct.stream_s** %strm28, %struct.stream_s* %31) #7
  %32 = load i32, i32* %k0, align 4, !tbaa !5
  %idxprom33 = sext i32 %32 to i64
  %33 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %33, i64 %idxprom33
  %34 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx34, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %34, i32 0, i32 0
  %35 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !145
  %release = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %35, i32 0, i32 0
  %36 = load void (%struct.cos_object_s*, i8*)*, void (%struct.cos_object_s*, i8*)** %release, align 8, !tbaa !146
  %37 = load i32, i32* %k0, align 4, !tbaa !5
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %38, i64 %idxprom35
  %39 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx36, align 8, !tbaa !1
  %40 = bitcast %struct.cos_stream_s* %39 to %struct.cos_object_s*
  call void %36(%struct.cos_object_s* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0)) #7
  %41 = load i32, i32* %k0, align 4, !tbaa !5
  %idxprom37 = sext i32 %41 to i64
  %42 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %42, i64 %idxprom37
  %43 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx38, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %43, i32 0, i32 8
  store i8 1, i8* %written, align 1, !tbaa !148
  %44 = load i32, i32* %k1, align 4, !tbaa !5
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary40 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %45, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary40, i32 0, i64 %idxprom39
  %strm42 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx41, i32 0, i32 2
  %46 = load %struct.stream_s*, %struct.stream_s** %strm42, align 8, !tbaa !90
  %47 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary43 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %47, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary43, i32 0, i64 0
  %strm45 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx44, i32 0, i32 2
  store %struct.stream_s* %46, %struct.stream_s** %strm45, align 8, !tbaa !90
  %48 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary46 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %48, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary46, i32 0, i64 2
  %strm48 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx47, i32 0, i32 2
  %49 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary49 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %49, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary49, i32 0, i64 2
  %target51 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx50, i32 0, i32 1
  %50 = load %struct.stream_s*, %struct.stream_s** %target51, align 8, !tbaa !116
  %call52 = call i32 @s_close_filters(%struct.stream_s** %strm48, %struct.stream_s* %50) #7
  %51 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary53 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %51, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary53, i32 0, i64 2
  %strm55 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx54, i32 0, i32 2
  store %struct.stream_s* null, %struct.stream_s** %strm55, align 8, !tbaa !90
  %52 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary56 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %52, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary56, i32 0, i64 1
  %strm58 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx57, i32 0, i32 2
  store %struct.stream_s* null, %struct.stream_s** %strm58, align 8, !tbaa !90
  %53 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary59 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %53, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary59, i32 0, i64 2
  %target61 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx60, i32 0, i32 1
  store %struct.stream_s* null, %struct.stream_s** %target61, align 8, !tbaa !116
  %54 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary62 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %54, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary62, i32 0, i64 1
  %target64 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx63, i32 0, i32 1
  store %struct.stream_s* null, %struct.stream_s** %target64, align 8, !tbaa !116
  %55 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %55, i32 0, i32 3
  %56 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !13
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %56, i32 0, i32 7
  %57 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !109
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %57, i32 0, i32 1
  %58 = load i64, i64* %id, align 8, !tbaa !149
  %59 = load i32, i32* %k1, align 4, !tbaa !5
  %idxprom65 = sext i32 %59 to i64
  %60 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %60, i64 %idxprom65
  %61 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx66, align 8, !tbaa !1
  %id67 = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %61, i32 0, i32 1
  store i64 %58, i64* %id67, align 8, !tbaa !117
  %62 = load i32, i32* %k1, align 4, !tbaa !5
  %idxprom68 = sext i32 %62 to i64
  %63 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %63, i64 %idxprom68
  %64 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx69, align 8, !tbaa !1
  %65 = bitcast %struct.cos_stream_s* %64 to %struct.cos_object_s*
  %66 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %pres70 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %66, i32 0, i32 3
  %67 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres70, align 8, !tbaa !13
  %object71 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %67, i32 0, i32 7
  store %struct.cos_object_s* %65, %struct.cos_object_s** %object71, align 8, !tbaa !109
  %68 = load i32, i32* %k1, align 4, !tbaa !5
  %idxprom72 = sext i32 %68 to i64
  %69 = load %struct.cos_stream_s**, %struct.cos_stream_s*** %s.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.cos_stream_s*, %struct.cos_stream_s** %69, i64 %idxprom72
  %70 = load %struct.cos_stream_s*, %struct.cos_stream_s** %arrayidx73, align 8, !tbaa !1
  %71 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %71, i32 0, i32 5
  store %struct.cos_stream_s* %70, %struct.cos_stream_s** %data, align 8, !tbaa !14
  %72 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %72, i32 0, i32 1
  %73 = load i32, i32* %alt_writer_count, align 4, !tbaa !7
  %cmp74 = icmp sgt i32 %73, 3
  br i1 %cmp74, label %if.then.75, label %if.end.86

if.then.75:                                       ; preds = %if.end.25
  %74 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary76 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %74, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary76, i32 0, i64 1
  %75 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary78 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %75, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary78, i32 0, i64 3
  %76 = bitcast %struct.psdf_binary_writer_s* %arrayidx77 to i8*
  %77 = bitcast %struct.psdf_binary_writer_s* %arrayidx79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false), !tbaa.struct !151
  %78 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary80 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %78, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary80, i32 0, i64 3
  %strm82 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx81, i32 0, i32 2
  store %struct.stream_s* null, %struct.stream_s** %strm82, align 8, !tbaa !90
  %79 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %binary83 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %79, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [4 x %struct.psdf_binary_writer_s], [4 x %struct.psdf_binary_writer_s]* %binary83, i32 0, i64 3
  %target85 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %arrayidx84, i32 0, i32 1
  store %struct.stream_s* null, %struct.stream_s** %target85, align 8, !tbaa !116
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.75, %if.end.25
  %80 = load %struct.pdf_image_writer_s*, %struct.pdf_image_writer_s** %piw.addr, align 8, !tbaa !1
  %alt_writer_count87 = getelementptr inbounds %struct.pdf_image_writer_s, %struct.pdf_image_writer_s* %80, i32 0, i32 1
  %81 = load i32, i32* %alt_writer_count87, align 4, !tbaa !7
  %sub88 = sub nsw i32 %81, 2
  store i32 %sub88, i32* %alt_writer_count87, align 4, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.else.22
  %82 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i64* %l1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
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

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #2

declare void @pdf_color_space_procsets(%struct.gx_device_pdf_s*, %struct.gs_color_space_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @cos_array_add_real(%struct.cos_array_s*, double) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare i64 @cos_stream_length(%struct.cos_stream_s*) #2

declare i32 @s_compr_chooser__get_choice(%struct.stream_compr_chooser_state_s*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @much_bigger__DL(i64 %l1, i64 %l2) #6 {
entry:
  %l1.addr = alloca i64, align 8
  %l2.addr = alloca i64, align 8
  store i64 %l1, i64* %l1.addr, align 8, !tbaa !99
  store i64 %l2, i64* %l2.addr, align 8, !tbaa !99
  %0 = load i64, i64* %l1.addr, align 8, !tbaa !99
  %cmp = icmp sgt i64 %0, 1048576
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %l2.addr, align 8, !tbaa !99
  %2 = load i64, i64* %l1.addr, align 8, !tbaa !99
  %div = sdiv i64 %2, 3
  %cmp1 = icmp slt i64 %1, %div
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
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
!7 = !{!8, !6, i64 128}
!8 = !{!"pdf_image_writer_s", !3, i64 0, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!9 = !{!10, !2, i64 32}
!10 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!8, !2, i64 144}
!14 = !{!8, !2, i64 160}
!15 = !{!8, !2, i64 176}
!16 = !{!8, !2, i64 184}
!17 = !{!10, !2, i64 40}
!18 = !{!19, !2, i64 0}
!19 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!20 = !{!21, !2, i64 576}
!21 = !{!"gs_pixel_image_s", !2, i64 0, !22, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576}
!22 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!23 = !{!"float", !3, i64 0}
!24 = !{!21, !2, i64 0}
!25 = !{!26, !6, i64 48}
!26 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48}
!27 = !{!28, !6, i64 584}
!28 = !{!"gs_image1_s", !2, i64 0, !22, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!29 = !{!30, !2, i64 152}
!30 = !{!"pdf_image_names_s", !31, i64 0, !32, i64 32, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168}
!31 = !{!"pdf_color_space_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!"pdf_filter_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!33 = !{!34, !3, i64 26584}
!34 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !35, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !37, i64 96, !40, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !36, i64 928, !36, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !36, i64 968, !36, i64 976, !41, i64 984, !6, i64 1052, !6, i64 1056, !42, i64 1064, !2, i64 1104, !3, i64 1112, !44, i64 1120, !45, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !46, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !57, i64 7512, !57, i64 8144, !36, i64 8776, !36, i64 8784, !3, i64 8792, !3, i64 8796, !50, i64 8800, !6, i64 8816, !2, i64 8824, !36, i64 8832, !36, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !51, i64 8872, !62, i64 8880, !6, i64 9360, !51, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !67, i64 9424, !67, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !36, i64 9472, !6, i64 9480, !6, i64 9484, !66, i64 9488, !66, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !36, i64 9576, !36, i64 9584, !36, i64 9592, !68, i64 9600, !66, i64 9616, !66, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !66, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !69, i64 9784, !70, i64 9816, !70, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !36, i64 9920, !3, i64 9928, !6, i64 9960, !36, i64 9968, !36, i64 9976, !3, i64 9984, !3, i64 9988, !71, i64 9992, !71, i64 14120, !71, i64 18248, !71, i64 22376, !36, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !36, i64 26536, !6, i64 26544, !6, i64 26548, !36, i64 26552, !3, i64 26560, !36, i64 26568, !36, i64 26576, !3, i64 26584, !2, i64 26592, !72, i64 26600, !2, i64 26648, !6, i64 26656, !36, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !36, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !50, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !73, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !22, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !49, i64 30488, !6, i64 30524, !69, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !36, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !22, i64 30612, !51, i64 30640, !2, i64 30648, !63, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!35 = !{!"rc_header_s", !36, i64 0, !2, i64 8, !2, i64 16}
!36 = !{!"long", !3, i64 0}
!37 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !38, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !39, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !36, i64 704, !6, i64 712}
!38 = !{!"short", !3, i64 0}
!39 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!40 = !{!"gx_device_cached_colors_s", !36, i64 0, !36, i64 8}
!41 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!42 = !{!"gdev_space_params_s", !36, i64 0, !36, i64 8, !43, i64 16, !6, i64 32, !3, i64 36}
!43 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !36, i64 8}
!44 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!46 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !47, i64 24, !6, i64 128, !49, i64 132, !6, i64 168, !50, i64 176, !50, i64 192, !6, i64 208, !6, i64 212, !38, i64 216, !3, i64 220, !52, i64 224, !52, i64 228, !53, i64 232, !36, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !23, i64 296, !54, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !23, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !55, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !56, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !56, i64 1336}
!47 = !{!"gx_line_params_s", !23, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !6, i64 36, !22, i64 40, !48, i64 64}
!48 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !23, i64 12, !6, i64 16, !23, i64 20, !6, i64 24, !6, i64 28, !23, i64 32}
!49 = !{!"gs_matrix_fixed_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!50 = !{!"gs_point_s", !51, i64 0, !51, i64 8}
!51 = !{!"double", !3, i64 0}
!52 = !{!"gs_transparency_source_s", !23, i64 0}
!53 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!54 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!55 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!56 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !36, i64 16, !3, i64 24}
!57 = !{!"gx_hl_saved_color_s", !36, i64 0, !36, i64 8, !6, i64 16, !58, i64 24, !60, i64 288}
!58 = !{!"gs_client_color_s", !2, i64 0, !59, i64 8}
!59 = !{!"gs_paint_color_s", !3, i64 0}
!60 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !61, i64 336}
!61 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!62 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !36, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !63, i64 64, !63, i64 80, !63, i64 96, !63, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !64, i64 152, !6, i64 232, !6, i64 236, !64, i64 240, !64, i64 320, !65, i64 400, !65, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !66, i64 448, !65, i64 464}
!63 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!64 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !23, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!65 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!66 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!67 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!68 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!69 = !{!"gs_rect_s", !50, i64 0, !50, i64 16}
!70 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !69, i64 8}
!71 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!72 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!73 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !23, i64 40, !23, i64 44, !3, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !6, i64 80, !23, i64 84, !23, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !57, i64 120, !57, i64 752, !47, i64 1384, !2, i64 1488, !6, i64 1496, !36, i64 1504}
!74 = !{!34, !51, i64 9368}
!75 = !{!76, !6, i64 584}
!76 = !{!"gs_image4_s", !2, i64 0, !22, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !3, i64 588, !3, i64 1108}
!77 = !{!30, !2, i64 128}
!78 = !{!23, !23, i64 0}
!79 = !{!21, !6, i64 40}
!80 = !{!30, !2, i64 168}
!81 = !{!21, !6, i64 32}
!82 = !{!30, !2, i64 144}
!83 = !{!21, !6, i64 36}
!84 = !{!30, !2, i64 120}
!85 = !{!30, !2, i64 136}
!86 = !{!21, !6, i64 564}
!87 = !{!34, !6, i64 9564}
!88 = !{!34, !2, i64 24}
!89 = !{!30, !2, i64 160}
!90 = !{!91, !2, i64 16}
!91 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!92 = !{!22, !23, i64 0}
!93 = !{!22, !23, i64 4}
!94 = !{!22, !23, i64 8}
!95 = !{!22, !23, i64 12}
!96 = !{!22, !23, i64 16}
!97 = !{!22, !23, i64 20}
!98 = !{!51, !51, i64 0}
!99 = !{!36, !36, i64 0}
!100 = !{!34, !2, i64 5848}
!101 = !{!102, !6, i64 80}
!102 = !{!"pdf_x_object_s", !2, i64 0, !2, i64 8, !36, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !36, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !6, i64 80}
!103 = !{!102, !6, i64 76}
!104 = !{!8, !2, i64 136}
!105 = !{!8, !2, i64 168}
!106 = !{!107, !36, i64 8}
!107 = !{!"cos_dict_s", !2, i64 0, !36, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !36, i64 56, !2, i64 64, !108, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!108 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!109 = !{!110, !2, i64 64}
!110 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !36, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !36, i64 56, !2, i64 64}
!111 = !{!110, !36, i64 16}
!112 = !{!102, !2, i64 64}
!113 = !{!102, !6, i64 72}
!114 = !{!34, !2, i64 22352}
!115 = !{!8, !6, i64 152}
!116 = !{!91, !2, i64 8}
!117 = !{!118, !36, i64 8}
!118 = !{!"cos_stream_s", !2, i64 0, !36, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !36, i64 56, !2, i64 64, !108, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!119 = !{!91, !2, i64 24}
!120 = !{!34, !2, i64 1728}
!121 = !{!91, !2, i64 0}
!122 = !{!123, !2, i64 224}
!123 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !38, i64 152, !3, i64 154, !3, i64 155, !124, i64 160, !36, i64 176, !125, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !38, i64 264, !38, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !63, i64 312, !6, i64 328, !36, i64 336, !36, i64 344}
!124 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!125 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!126 = !{!127, !2, i64 16}
!127 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!128 = !{!124, !6, i64 8}
!129 = !{!124, !2, i64 0}
!130 = !{!3, !3, i64 0}
!131 = !{!118, !36, i64 56}
!132 = !{!34, !6, i64 9524}
!133 = !{!110, !6, i64 24}
!134 = !{i64 0, i64 8, !1, i64 8, i64 8, !99, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 1, !130, i64 49, i64 1, !130, i64 50, i64 1, !130, i64 56, i64 8, !99, i64 64, i64 8, !1, i64 72, i64 8, !130, i64 80, i64 16, !130, i64 96, i64 64, !130, i64 160, i64 4, !5, i64 164, i64 16, !130, i64 180, i64 4, !5, i64 184, i64 16, !130}
!135 = !{!34, !6, i64 30728}
!136 = !{!34, !36, i64 26664}
!137 = !{!110, !36, i64 56}
!138 = !{!34, !2, i64 30448}
!139 = !{!34, !6, i64 9648}
!140 = !{!34, !6, i64 8852}
!141 = !{!142, !2, i64 8}
!142 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!143 = !{!142, !2, i64 16}
!144 = !{!123, !2, i64 256}
!145 = !{!118, !2, i64 0}
!146 = !{!147, !2, i64 0}
!147 = !{!"cos_object_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!148 = !{!118, !3, i64 50}
!149 = !{!150, !36, i64 8}
!150 = !{!"cos_object_s", !2, i64 0, !36, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !36, i64 56, !2, i64 64, !108, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!151 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
