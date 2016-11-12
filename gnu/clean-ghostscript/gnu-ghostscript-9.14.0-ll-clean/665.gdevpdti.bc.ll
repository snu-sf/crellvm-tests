; ModuleID = './gdevpdti.bc'
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.pdf_filter_names_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type opaque
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
%struct.pdf_text_data_s = type { %struct.pdf_outline_fonts_s*, %struct.pdf_bitmap_fonts_s*, %struct.pdf_text_state_s* }
%struct.pdf_outline_fonts_s = type { %struct.pdf_standard_font_s* }
%struct.pdf_standard_font_s = type { %struct.pdf_font_resource_s*, %struct.gs_matrix_s }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, {}*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_s = type opaque
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type { %struct.pdf_char_proc_s*, %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s*, %struct.pdf_font_resource_s*, i64, i64, %struct.gs_const_string_s, i32 }
%struct.pdf_char_proc_s = type { %struct.pdf_char_proc_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.gs_point_s, %struct.gs_point_s }
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
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type { i32, i32, i32, [1 x %struct.pdf_char_glyph_pair_s] }
%struct.pdf_char_glyph_pair_s = type { i64, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_stream_position_s = type { i64, i64 }
%struct.pdf_text_state_values_s = type { float, %struct.pdf_font_resource_s*, double, %struct.gs_matrix_s, i32, float }
%struct.pdf_data_writer_s = type { %struct.psdf_binary_writer_s, i64, i64, %struct.pdf_resource_s*, %struct.gx_device_pdf_s*, i64, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.charproc_compatibility_data_s = type { %struct.pdf_char_glyph_pairs_s*, %struct.pdf_font_resource_s*, i64, i64, %struct.gs_font_s* }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }

@.str = private unnamed_addr constant [16 x i8] c"pdf_char_proc_t\00", align 1
@pdf_char_proc_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_char_proc_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_char_proc = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_char_proc_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"/CharProcs <<\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/a%ld %ld 0 R\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" %ld 0 R\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"/FontMatrix[%g %g %g %g %g %g]\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pdf_bitmap_fonts_alloc\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Free CharProc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"<</Length       >>stream\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"<</Type/Encoding/Differences[0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"/a%d\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A] >>\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%g 0 d0\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%g %g %g %g %g %g d1\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"0.01 0 0 0.01 0 0 cm\0A\00", align 1
@pdf_open_aside.fnames = internal constant %struct.pdf_filter_names_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"/ASCII85Decode\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"/ASCIIHexDecode\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"/CCITTFaxDecode\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"/DCTDecode\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"/DecodeParms\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"/Filter\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"/FlateDecode\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"/LZWDecode\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"/RunLengthDecode\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"/JBIG2Decode\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"/JPXDecode\00", align 1
@pdf_resource_type_structs = external constant [0 x %struct.gs_memory_struct_type_s*], align 8
@cos_stream_procs = external constant %struct.cos_object_procs_s, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c"pdf_enter_substream\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"pdf_end_charproc_accum\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"[/PDF\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"/ImageB\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"/ImageC\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"/ImageI\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"/Text\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"/ProcSet\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"/.Global\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"%ld 0 R\0A\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.41 = private unnamed_addr constant [17 x i8] c"pdf_add_resource\00", align 1
@st_pdf_resource = external constant %struct.gs_memory_struct_type_s, align 8
@pdf_char_proc_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }], align 2
@.str.42 = private unnamed_addr constant [19 x i8] c"pdf_bitmap_fonts_t\00", align 1
@pdf_bitmap_fonts_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_bitmap_fonts_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_bitmap_fonts = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_bitmap_fonts_reloc_ptrs to i8*) }, align 8
@pdf_bitmap_fonts_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.43 = private unnamed_addr constant [20 x i8] c"pdf_attach_charproc\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"pdf_char_proc_ownership_t\00", align 1
@pdf_char_proc_ownership_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 5, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([5 x %struct.gc_ptr_element_s], [5 x %struct.gc_ptr_element_s]* @pdf_char_proc_ownership_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_char_proc_ownership = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_char_proc_ownership_reloc_ptrs to i8*) }, align 8
@pdf_char_proc_ownership_enum_ptrs = internal constant [5 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 48 }, %struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 16

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_write_contents_bitmap(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %diff_id = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %diff_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i64 0, i64* %diff_id, align 8, !tbaa !49
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s1 to %struct.anon.7*
  %bitmap_font = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 4
  %7 = load i32, i32* %bitmap_font, align 4, !tbaa !50
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 160
  %9 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %bitmap_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %9, i32 0, i32 1
  %10 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %bitmap_fonts, align 8, !tbaa !53
  %bitmap_encoding_id = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %10, i32 0, i32 2
  %11 = load i64, i64* %bitmap_encoding_id, align 8, !tbaa !55
  store i64 %11, i64* %diff_id, align 8, !tbaa !49
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %12) #6
  store i64 %call, i64* %diff_id, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %15 = load i64, i64* %diff_id, align 8, !tbaa !49
  %call2 = call i32 @pdf_write_encoding_ref(%struct.gx_device_pdf_s* %13, %struct.pdf_font_resource_s* %14, i64 %15) #6
  store i32 %call2, i32* %code, align 4, !tbaa !57
  %16 = load i32, i32* %code, align 4, !tbaa !57
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call5 = call i32 @stream_puts(%struct.stream_s* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #6
  %19 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %19, i32 0, i32 20
  %simple7 = bitcast %union.anon.1* %u6 to %struct.anon.3*
  %s8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple7, i32 0, i32 7
  %type39 = bitcast %union.anon.4* %s8 to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type39, i32 0, i32 2
  %20 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %20, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %21 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %tobool10 = icmp ne %struct.pdf_char_proc_ownership_s* %21, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u11 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %22, i32 0, i32 20
  %simple12 = bitcast %union.anon.1* %u11 to %struct.anon.3*
  %s13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple12, i32 0, i32 7
  %type314 = bitcast %union.anon.4* %s13 to %struct.anon.7*
  %bitmap_font15 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type314, i32 0, i32 4
  %23 = load i32, i32* %bitmap_font15, align 4, !tbaa !50
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %for.body
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %25, i32 0, i32 4
  %26 = load i64, i64* %char_code, align 8, !tbaa !59
  %27 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %27, i32 0, i32 0
  %28 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %char_proc, align 8, !tbaa !61
  %call18 = call i64 @pdf_char_proc_id(%struct.pdf_char_proc_s* %28) #6
  %call19 = call i8* @pprintld2(%struct.stream_s* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i64 %26, i64 %call18) #6
  br label %if.end.29

if.else.20:                                       ; preds = %for.body
  %29 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %duplicate_char_name = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %29, i32 0, i32 7
  %30 = load i32, i32* %duplicate_char_name, align 4, !tbaa !62
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %if.end.28, label %if.then.22

if.then.22:                                       ; preds = %if.else.20
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %32 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %32, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8, !tbaa !63
  %34 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name23 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %34, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name23, i32 0, i32 1
  %35 = load i32, i32* %size, align 4, !tbaa !64
  %call24 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %31, i8* %33, i32 %35) #6
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %37 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc25 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %37, i32 0, i32 0
  %38 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %char_proc25, align 8, !tbaa !61
  %call26 = call i64 @pdf_char_proc_id(%struct.pdf_char_proc_s* %38) #6
  %call27 = call i8* @pprintld1(%struct.stream_s* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 %call26) #6
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.else.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc30 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %40, i32 0, i32 0
  %41 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %char_proc30, align 8, !tbaa !61
  %call31 = call i64 @pdf_char_proc_id(%struct.pdf_char_proc_s* %41) #6
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 7
  %43 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !65
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %43, i32 0, i32 1
  %44 = load i64, i64* %id, align 8, !tbaa !68
  %call32 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %39, i64 %call31, i64 %44) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %45 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %45, i32 0, i32 2
  %46 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %46, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call33 = call i32 @stream_puts(%struct.stream_s* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %49 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u34 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %49, i32 0, i32 20
  %simple35 = bitcast %union.anon.1* %u34 to %struct.anon.3*
  %s36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple35, i32 0, i32 7
  %type337 = bitcast %union.anon.4* %s36 to %struct.anon.7*
  %FontMatrix = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type337, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %50 = load float, float* %xx, align 4, !tbaa !72
  %conv = fpext float %50 to double
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u38 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 20
  %simple39 = bitcast %union.anon.1* %u38 to %struct.anon.3*
  %s40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple39, i32 0, i32 7
  %type341 = bitcast %union.anon.4* %s40 to %struct.anon.7*
  %FontMatrix42 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type341, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix42, i32 0, i32 1
  %52 = load float, float* %xy, align 4, !tbaa !73
  %conv43 = fpext float %52 to double
  %53 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u44 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %53, i32 0, i32 20
  %simple45 = bitcast %union.anon.1* %u44 to %struct.anon.3*
  %s46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple45, i32 0, i32 7
  %type347 = bitcast %union.anon.4* %s46 to %struct.anon.7*
  %FontMatrix48 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type347, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix48, i32 0, i32 2
  %54 = load float, float* %yx, align 4, !tbaa !74
  %conv49 = fpext float %54 to double
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u50 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 20
  %simple51 = bitcast %union.anon.1* %u50 to %struct.anon.3*
  %s52 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple51, i32 0, i32 7
  %type353 = bitcast %union.anon.4* %s52 to %struct.anon.7*
  %FontMatrix54 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type353, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix54, i32 0, i32 3
  %56 = load float, float* %yy, align 4, !tbaa !75
  %conv55 = fpext float %56 to double
  %57 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u56 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %57, i32 0, i32 20
  %simple57 = bitcast %union.anon.1* %u56 to %struct.anon.3*
  %s58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple57, i32 0, i32 7
  %type359 = bitcast %union.anon.4* %s58 to %struct.anon.7*
  %FontMatrix60 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type359, i32 0, i32 1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix60, i32 0, i32 4
  %58 = load float, float* %tx, align 4, !tbaa !76
  %conv61 = fpext float %58 to double
  %59 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %59, i32 0, i32 20
  %simple63 = bitcast %union.anon.1* %u62 to %struct.anon.3*
  %s64 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple63, i32 0, i32 7
  %type365 = bitcast %union.anon.4* %s64 to %struct.anon.7*
  %FontMatrix66 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type365, i32 0, i32 1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix66, i32 0, i32 5
  %60 = load float, float* %ty, align 4, !tbaa !77
  %conv67 = fpext float %60 to double
  %call68 = call i8* @pprintg6(%struct.stream_s* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), double %conv, double %conv43, double %conv49, double %conv55, double %conv61, double %conv67) #6
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %62 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call69 = call i32 @pdf_finish_write_contents_type3(%struct.gx_device_pdf_s* %61, %struct.pdf_font_resource_s* %62) #6
  store i32 %call69, i32* %code, align 4, !tbaa !57
  %63 = load i32, i32* %code, align 4, !tbaa !57
  %cmp70 = icmp slt i32 %63, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.end
  %64 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %for.end
  %65 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u74 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %65, i32 0, i32 20
  %simple75 = bitcast %union.anon.1* %u74 to %struct.anon.3*
  %s76 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple75, i32 0, i32 7
  %type377 = bitcast %union.anon.4* %s76 to %struct.anon.7*
  %bitmap_font78 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type377, i32 0, i32 4
  %66 = load i32, i32* %bitmap_font78, align 4, !tbaa !50
  %tobool79 = icmp ne i32 %66, 0
  br i1 %tobool79, label %if.end.88, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.73
  %67 = load i64, i64* %diff_id, align 8, !tbaa !49
  %cmp80 = icmp sgt i64 %67, 0
  br i1 %cmp80, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %land.lhs.true
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %70 = load i64, i64* %diff_id, align 8, !tbaa !49
  %call83 = call i32 @pdf_write_encoding(%struct.gx_device_pdf_s* %68, %struct.pdf_font_resource_s* %69, i64 %70, i32 0) #6
  store i32 %call83, i32* %code, align 4, !tbaa !57
  %71 = load i32, i32* %code, align 4, !tbaa !57
  %cmp84 = icmp slt i32 %71, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.82
  %72 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.then.82
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true, %if.end.73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.86, %if.then.72, %if.then.3
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i64* %diff_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @pdf_obj_ref(%struct.gx_device_pdf_s*) #0

declare i32 @pdf_write_encoding_ref(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i64) #0

declare i32 @stream_puts(%struct.stream_s*, i8*) #0

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #0

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @pdf_char_proc_id(%struct.pdf_char_proc_s* %pcp) #3 {
entry:
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_char_proc_s* %0 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %1) #6
  ret i64 %call
}

declare i32 @pdf_put_name(%struct.gx_device_pdf_s*, i8*, i32) #0

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #0

declare i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s*, i64, i64) #0

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #0

declare i32 @pdf_finish_write_contents_type3(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #0

declare i32 @pdf_write_encoding(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i64, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.pdf_bitmap_fonts_s* @pdf_bitmap_fonts_alloc(%struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca %struct.pdf_bitmap_fonts_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pbfs = alloca %struct.pdf_bitmap_fonts_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !78
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_bitmap_fonts to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #6
  %4 = bitcast i8* %call to %struct.pdf_bitmap_fonts_s*
  store %struct.pdf_bitmap_fonts_s* %4, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %5 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_bitmap_fonts_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.pdf_bitmap_fonts_s* null, %struct.pdf_bitmap_fonts_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %7 = bitcast %struct.pdf_bitmap_fonts_s* %6 to i8*
  %call1 = call i8* @memset(i8* %7, i32 0, i64 32) #7
  %8 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %max_embedded_code = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %8, i32 0, i32 3
  store i32 -1, i32* %max_embedded_code, align 4, !tbaa !81
  %9 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  store %struct.pdf_bitmap_fonts_s* %9, %struct.pdf_bitmap_fonts_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %retval
  ret %struct.pdf_bitmap_fonts_s* %11
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define void @pdf_close_text_page(%struct.gx_device_pdf_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 75
  %1 = load double, double* %CompatibilityLevel, align 8, !tbaa !82
  %cmp = fcmp ole double %1, 1.200000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 160
  %3 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %bitmap_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %3, i32 0, i32 1
  %4 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %bitmap_fonts, align 8, !tbaa !53
  %use_open_font = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %4, i32 0, i32 1
  store i32 0, i32* %use_open_font, align 4, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_charproc_y_offset(%struct.pdf_char_proc_s* %pcp) #1 {
entry:
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %y_offset = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %0, i32 0, i32 9
  %1 = load i32, i32* %y_offset, align 4, !tbaa !84
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @pdf_charproc_x_offset(%struct.pdf_char_proc_s* %pcp) #1 {
entry:
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %0, i32 0, i32 10
  %1 = load i32, i32* %x_offset, align 4, !tbaa !86
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @pdf_free_charproc_ownership(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %next = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_resource_s* %2 to %struct.pdf_char_proc_ownership_s*
  store %struct.pdf_char_proc_ownership_s* %3, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_char_proc_ownership_s* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %5, i32 0, i32 2
  %6 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %6, %struct.pdf_char_proc_ownership_s** %next, align 8, !tbaa !1
  %7 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %7, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !64
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name1 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %9, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name1, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !63
  %tobool2 = icmp ne i8* %10, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name3 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %11, i32 0, i32 6
  %data4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name3, i32 0, i32 0
  store i8* null, i8** %data4, align 8, !tbaa !63
  %12 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name5 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %12, i32 0, i32 6
  %size6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name5, i32 0, i32 1
  store i32 0, i32* %size6, align 4, !tbaa !64
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 43
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !87
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !88
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 43
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory7, align 8, !tbaa !87
  %18 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %19 = bitcast %struct.pdf_char_proc_ownership_s* %18 to i8*
  call void %15(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #6
  %20 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %next, align 8, !tbaa !1
  store %struct.pdf_char_proc_ownership_s* %20, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.pdf_char_proc_ownership_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_begin_char_proc(%struct.gx_device_pdf_s* %pdev, i32 %w, i32 %h, i32 %x_width, i32 %y_offset, i32 %x_offset, i64 %id, %struct.pdf_char_proc_s** %ppcp, %struct.pdf_stream_position_s* %ppos) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x_width.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %ppcp.addr = alloca %struct.pdf_char_proc_s**, align 8
  %ppos.addr = alloca %struct.pdf_stream_position_s*, align 8
  %char_code = alloca i64, align 8
  %pbfs = alloca %struct.pdf_bitmap_fonts_s*, align 8
  %font = alloca %struct.pdf_font_resource_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %code = alloca i32, align 4
  %glyph = alloca i64, align 8
  %str = alloca %struct.gs_const_string_s*, align 8
  %show_enum = alloca %struct.gs_show_enum_s*, align 8
  %pet = alloca %struct.pdf_encoding_element_s*, align 8
  %allowed_op = alloca i32, align 4
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %base = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp111 = alloca i32, align 4
  %s203 = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !57
  store i32 %h, i32* %h.addr, align 4, !tbaa !57
  store i32 %x_width, i32* %x_width.addr, align 4, !tbaa !57
  store i32 %y_offset, i32* %y_offset.addr, align 4, !tbaa !57
  store i32 %x_offset, i32* %x_offset.addr, align 4, !tbaa !57
  store i64 %id, i64* %id.addr, align 8, !tbaa !49
  store %struct.pdf_char_proc_s** %ppcp, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  store %struct.pdf_stream_position_s* %ppos, %struct.pdf_stream_position_s** %ppos.addr, align 8, !tbaa !1
  %0 = bitcast i64* %char_code to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %char_code, align 8, !tbaa !49
  %1 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 160
  %3 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %bitmap_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %3, i32 0, i32 1
  %4 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %bitmap_fonts, align 8, !tbaa !53
  store %struct.pdf_bitmap_fonts_s* %4, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %5 = bitcast %struct.pdf_font_resource_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i64 2147483647, i64* %glyph, align 8, !tbaa !49
  %10 = bitcast %struct.gs_const_string_s** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %str, align 8, !tbaa !1
  %11 = bitcast %struct.gs_show_enum_s** %show_enum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pte = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 191
  %13 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte, align 8, !tbaa !89
  %14 = bitcast %struct.gs_text_enum_s* %13 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %14, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %15 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %16 = bitcast i32* %allowed_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 0
  %18 = load i32, i32* %operation, align 4, !tbaa !90
  %and = and i32 %18, 23
  store i32 %and, i32* %allowed_op, align 4, !tbaa !57
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 12
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !97
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 11
  %21 = load i32, i32* %FontType, align 4, !tbaa !98
  %cmp = icmp eq i32 %21, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %22 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %22, i32 0, i32 12
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font2, align 8, !tbaa !97
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 11
  %24 = load i32, i32* %FontType3, align 4, !tbaa !98
  %cmp4 = icmp eq i32 %24, 53
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 12
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font6, align 8, !tbaa !97
  %FontType7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 11
  %27 = load i32, i32* %FontType7, align 4, !tbaa !98
  %cmp8 = icmp eq i32 %27, 51
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %28 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %28, i32 0, i32 12
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font10, align 8, !tbaa !97
  %FontType11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 11
  %30 = load i32, i32* %FontType11, align 4, !tbaa !98
  %cmp12 = icmp eq i32 %30, 52
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %31 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %31, i32 0, i32 12
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font14, align 8, !tbaa !97
  %FontType15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %32, i32 0, i32 11
  %33 = load i32, i32* %FontType15, align 4, !tbaa !98
  %cmp16 = icmp eq i32 %33, 54
  br i1 %cmp16, label %land.lhs.true, label %if.else.186

land.lhs.true:                                    ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %entry
  %34 = load i32, i32* %allowed_op, align 4, !tbaa !57
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %land.lhs.true.17, label %if.else.186

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %35 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font18 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %35, i32 0, i32 12
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font18, align 8, !tbaa !97
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %37 = load float, float* %xx, align 4, !tbaa !103
  %cmp19 = fcmp oeq float %37, 1.000000e+00
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.186

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font21 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 12
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font21, align 8, !tbaa !97
  %FontMatrix22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix22, i32 0, i32 1
  %40 = load float, float* %xy, align 4, !tbaa !104
  %cmp23 = fcmp oeq float %40, 0.000000e+00
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.186

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %41 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font25 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %41, i32 0, i32 12
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font25, align 8, !tbaa !97
  %FontMatrix26 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix26, i32 0, i32 2
  %43 = load float, float* %yx, align 4, !tbaa !105
  %cmp27 = fcmp oeq float %43, 0.000000e+00
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.186

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font29 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 12
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font29, align 8, !tbaa !97
  %FontMatrix30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix30, i32 0, i32 3
  %46 = load float, float* %yy, align 4, !tbaa !106
  %cmp31 = fcmp oeq float %46, 1.000000e+00
  br i1 %cmp31, label %if.then, label %if.else.186

if.then:                                          ; preds = %land.lhs.true.28
  %47 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = bitcast %struct.gs_font_base_s** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font32 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 12
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font32, align 8, !tbaa !97
  %51 = bitcast %struct.gs_font_s* %50 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %51, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %53 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %current_font33 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %53, i32 0, i32 12
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font33, align 8, !tbaa !97
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %52, %struct.gs_font_s* %54, %struct.pdf_font_resource_s** %font, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %55 = load i32, i32* %code, align 4, !tbaa !57
  %cmp34 = icmp slt i32 %55, 0
  br i1 %cmp34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.then
  %56 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %57 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %57, i32 0, i32 17
  %58 = load i32, i32* %index, align 4, !tbaa !107
  %dec = add i32 %58, -1
  store i32 %dec, i32* %index, align 4, !tbaa !107
  %59 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %show_enum, align 8, !tbaa !1
  %60 = bitcast %struct.gs_show_enum_s* %59 to %struct.gs_text_enum_s*
  %call36 = call i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s* %60, i64* %char_code, i64* %glyph) #6
  store i32 %call36, i32* %code, align 4, !tbaa !57
  %61 = load i32, i32* %code, align 4, !tbaa !57
  %cmp37 = icmp slt i32 %61, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end
  %62 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end
  %63 = load i64, i64* %char_code, align 8, !tbaa !49
  %cmp40 = icmp uge i64 %63, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else

land.lhs.true.41:                                 ; preds = %if.end.39
  %64 = load i64, i64* %char_code, align 8, !tbaa !49
  %cmp42 = icmp ule i64 %64, 255
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %land.lhs.true.41
  %65 = load i64, i64* %char_code, align 8, !tbaa !49
  %66 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %66, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %67 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %67, i64 %65
  store %struct.pdf_encoding_element_s* %arrayidx, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %68 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.pdf_encoding_element_s* %68, null
  br i1 %tobool44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %if.then.43
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u46 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 20
  %simple47 = bitcast %union.anon.1* %u46 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple47, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %70 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %70, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.45
  %71 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp48 = icmp ne %struct.pdf_char_proc_ownership_s* %71, null
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph49 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %72, i32 0, i32 5
  %73 = load i64, i64* %glyph49, align 8, !tbaa !110
  %74 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph50 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %74, i32 0, i32 0
  %75 = load i64, i64* %glyph50, align 8, !tbaa !111
  %cmp51 = icmp eq i64 %73, %75
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.56

land.lhs.true.52:                                 ; preds = %for.body
  %76 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code53 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %76, i32 0, i32 4
  %77 = load i64, i64* %char_code53, align 8, !tbaa !59
  %78 = load i64, i64* %char_code, align 8, !tbaa !49
  %cmp54 = icmp eq i64 %77, %78
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.52
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  br label %for.end

if.end.56:                                        ; preds = %land.lhs.true.52, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %79 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %79, i32 0, i32 2
  %80 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %80, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.55, %for.cond
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %if.then.43
  br label %if.end.58

if.else:                                          ; preds = %land.lhs.true.41, %if.end.39
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.end.57
  %81 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %tobool59 = icmp ne %struct.pdf_encoding_element_s* %81, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.180

land.lhs.true.60:                                 ; preds = %if.end.58
  %82 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph61 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %82, i32 0, i32 0
  %83 = load i64, i64* %glyph61, align 8, !tbaa !111
  %cmp62 = icmp ne i64 %83, 2147483647
  br i1 %cmp62, label %land.lhs.true.63, label %if.else.180

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %84 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str64 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %84, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str64, i32 0, i32 1
  %85 = load i32, i32* %size, align 4, !tbaa !113
  %cmp65 = icmp eq i32 %85, 7
  br i1 %cmp65, label %land.lhs.true.66, label %if.then.121

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %call67 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #8
  %cmp68 = icmp ult i64 %call67, 7
  br i1 %cmp68, label %cond.true, label %cond.false.116

cond.true:                                        ; preds = %land.lhs.true.66
  %86 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true.69, label %cond.false

land.lhs.true.69:                                 ; preds = %cond.true
  %call70 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #8
  store i64 %call70, i64* %__s2_len, align 8, !tbaa !49
  %88 = load i64, i64* %__s2_len, align 8, !tbaa !49
  %cmp71 = icmp ult i64 %88, 4
  br i1 %cmp71, label %cond.true.72, label %cond.false

cond.true.72:                                     ; preds = %land.lhs.true.69
  %89 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  %90 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str74 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %90, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str74, i32 0, i32 0
  %91 = load i8*, i8** %data, align 8, !tbaa !114
  store i8* %91, i8** %__s1, align 8, !tbaa !1
  %92 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %93, i64 0
  %94 = load i8, i8* %arrayidx76, align 1, !tbaa !115
  %conv = zext i8 %94 to i32
  %95 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !115
  %conv77 = zext i8 %95 to i32
  %sub = sub nsw i32 %conv, %conv77
  store i32 %sub, i32* %__result, align 4, !tbaa !57
  %96 = load i64, i64* %__s2_len, align 8, !tbaa !49
  %cmp78 = icmp ugt i64 %96, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.110

land.lhs.true.80:                                 ; preds = %cond.true.72
  %97 = load i32, i32* %__result, align 4, !tbaa !57
  %cmp81 = icmp eq i32 %97, 0
  br i1 %cmp81, label %if.then.83, label %if.end.110

if.then.83:                                       ; preds = %land.lhs.true.80
  %98 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx84, align 1, !tbaa !115
  %conv85 = zext i8 %99 to i32
  %100 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !115
  %conv86 = zext i8 %100 to i32
  %sub87 = sub nsw i32 %conv85, %conv86
  store i32 %sub87, i32* %__result, align 4, !tbaa !57
  %101 = load i64, i64* %__s2_len, align 8, !tbaa !49
  %cmp88 = icmp ugt i64 %101, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.109

land.lhs.true.90:                                 ; preds = %if.then.83
  %102 = load i32, i32* %__result, align 4, !tbaa !57
  %cmp91 = icmp eq i32 %102, 0
  br i1 %cmp91, label %if.then.93, label %if.end.109

if.then.93:                                       ; preds = %land.lhs.true.90
  %103 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx94, align 1, !tbaa !115
  %conv95 = zext i8 %104 to i32
  %105 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !115
  %conv96 = zext i8 %105 to i32
  %sub97 = sub nsw i32 %conv95, %conv96
  store i32 %sub97, i32* %__result, align 4, !tbaa !57
  %106 = load i64, i64* %__s2_len, align 8, !tbaa !49
  %cmp98 = icmp ugt i64 %106, 2
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.108

land.lhs.true.100:                                ; preds = %if.then.93
  %107 = load i32, i32* %__result, align 4, !tbaa !57
  %cmp101 = icmp eq i32 %107, 0
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %land.lhs.true.100
  %108 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %108, i64 3
  %109 = load i8, i8* %arrayidx104, align 1, !tbaa !115
  %conv105 = zext i8 %109 to i32
  %110 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !115
  %conv106 = zext i8 %110 to i32
  %sub107 = sub nsw i32 %conv105, %conv106
  store i32 %sub107, i32* %__result, align 4, !tbaa !57
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %land.lhs.true.100, %if.then.93
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %land.lhs.true.90, %if.then.83
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %land.lhs.true.80, %cond.true.72
  %111 = load i32, i32* %__result, align 4, !tbaa !57
  store i32 %111, i32* %tmp111, !tbaa !57
  %112 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = load i32, i32* %tmp111, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.69, %cond.true
  %115 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str112 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %115, i32 0, i32 1
  %data113 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str112, i32 0, i32 0
  %116 = load i8*, i8** %data113, align 8, !tbaa !114
  %call114 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.110
  %cond = phi i32 [ %114, %if.end.110 ], [ %call114, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !57
  %117 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = load i32, i32* %tmp, !tbaa !57
  %tobool115 = icmp ne i32 %119, 0
  br i1 %tobool115, label %if.then.121, label %if.else.180

cond.false.116:                                   ; preds = %land.lhs.true.66
  %120 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str117 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %120, i32 0, i32 1
  %data118 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str117, i32 0, i32 0
  %121 = load i8*, i8** %data118, align 8, !tbaa !114
  %call119 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 7) #8
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.else.180

if.then.121:                                      ; preds = %cond.false.116, %cond.end, %land.lhs.true.63
  %122 = load i64, i64* %char_code, align 8, !tbaa !49
  %123 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u122 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %123, i32 0, i32 20
  %simple123 = bitcast %union.anon.1* %u122 to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple123, i32 0, i32 0
  %124 = load i32, i32* %FirstChar, align 4, !tbaa !116
  %conv124 = sext i32 %124 to i64
  %cmp125 = icmp ult i64 %122, %conv124
  br i1 %cmp125, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.then.121
  %125 = load i64, i64* %char_code, align 8, !tbaa !49
  %conv128 = trunc i64 %125 to i32
  %126 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u129 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %126, i32 0, i32 20
  %simple130 = bitcast %union.anon.1* %u129 to %struct.anon.3*
  %FirstChar131 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple130, i32 0, i32 0
  store i32 %conv128, i32* %FirstChar131, align 4, !tbaa !116
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %if.then.121
  %127 = load i64, i64* %char_code, align 8, !tbaa !49
  %conv133 = trunc i64 %127 to i32
  %128 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u134 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %128, i32 0, i32 20
  %simple135 = bitcast %union.anon.1* %u134 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple135, i32 0, i32 1
  %129 = load i32, i32* %LastChar, align 4, !tbaa !117
  %cmp136 = icmp sgt i32 %conv133, %129
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.end.132
  %130 = load i64, i64* %char_code, align 8, !tbaa !49
  %conv139 = trunc i64 %130 to i32
  %131 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u140 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %131, i32 0, i32 20
  %simple141 = bitcast %union.anon.1* %u140 to %struct.anon.3*
  %LastChar142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple141, i32 0, i32 1
  store i32 %conv139, i32* %LastChar142, align 4, !tbaa !117
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.end.132
  %132 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %132, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %133 = load double, double* %x, align 8, !tbaa !118
  %134 = load i32, i32* %w.addr, align 4, !tbaa !57
  %conv144 = sitofp i32 %134 to double
  %cmp145 = fcmp ogt double %133, %conv144
  br i1 %cmp145, label %cond.true.147, label %cond.false.151

cond.true.147:                                    ; preds = %if.end.143
  %135 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox148 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %135, i32 0, i32 23
  %q149 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox148, i32 0, i32 1
  %x150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q149, i32 0, i32 0
  %136 = load double, double* %x150, align 8, !tbaa !118
  br label %cond.end.153

cond.false.151:                                   ; preds = %if.end.143
  %137 = load i32, i32* %w.addr, align 4, !tbaa !57
  %conv152 = sitofp i32 %137 to double
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.151, %cond.true.147
  %cond154 = phi double [ %136, %cond.true.147 ], [ %conv152, %cond.false.151 ]
  %138 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox155 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %138, i32 0, i32 23
  %q156 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox155, i32 0, i32 1
  %x157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q156, i32 0, i32 0
  store double %cond154, double* %x157, align 8, !tbaa !118
  %139 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox158 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %139, i32 0, i32 23
  %q159 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox158, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q159, i32 0, i32 1
  %140 = load double, double* %y, align 8, !tbaa !121
  %141 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %142 = load i32, i32* %h.addr, align 4, !tbaa !57
  %add = add nsw i32 %141, %142
  %conv160 = sitofp i32 %add to double
  %cmp161 = fcmp ogt double %140, %conv160
  br i1 %cmp161, label %cond.true.163, label %cond.false.167

cond.true.163:                                    ; preds = %cond.end.153
  %143 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox164 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %143, i32 0, i32 23
  %q165 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox164, i32 0, i32 1
  %y166 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q165, i32 0, i32 1
  %144 = load double, double* %y166, align 8, !tbaa !121
  br label %cond.end.170

cond.false.167:                                   ; preds = %cond.end.153
  %145 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %146 = load i32, i32* %h.addr, align 4, !tbaa !57
  %add168 = add nsw i32 %145, %146
  %conv169 = sitofp i32 %add168 to double
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.167, %cond.true.163
  %cond171 = phi double [ %144, %cond.true.163 ], [ %conv169, %cond.false.167 ]
  %147 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %base, align 8, !tbaa !1
  %FontBBox172 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %147, i32 0, i32 23
  %q173 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox172, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q173, i32 0, i32 1
  store double %cond171, double* %y174, align 8, !tbaa !121
  %148 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str175 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %148, i32 0, i32 1
  store %struct.gs_const_string_s* %str175, %struct.gs_const_string_s** %str, align 8, !tbaa !1
  %149 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph176 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %149, i32 0, i32 0
  %150 = load i64, i64* %glyph176, align 8, !tbaa !111
  store i64 %150, i64* %glyph, align 8, !tbaa !49
  %151 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %is_difference = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %151, i32 0, i32 2
  store i32 1, i32* %is_difference, align 4, !tbaa !122
  %152 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %char_width = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %152, i32 0, i32 186
  %x177 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_width, i32 0, i32 0
  %153 = load double, double* %x177, align 8, !tbaa !123
  %call178 = call double @psdf_round(double %153, i32 100, i32 10) #6
  %154 = load i64, i64* %char_code, align 8, !tbaa !49
  %155 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %155, i32 0, i32 14
  %156 = load double*, double** %Widths, align 8, !tbaa !124
  %arrayidx179 = getelementptr inbounds double, double* %156, i64 %154
  store double %call178, double* %arrayidx179, align 8, !tbaa !125
  br label %if.end.184

if.else.180:                                      ; preds = %cond.false.116, %cond.end, %land.lhs.true.60, %if.end.58
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %158 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pte181 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %158, i32 0, i32 191
  %159 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte181, align 8, !tbaa !89
  %call182 = call i32 @assign_char_code(%struct.gx_device_pdf_s* %157, %struct.gs_text_enum_s* %159) #6
  %conv183 = sext i32 %call182 to i64
  store i64 %conv183, i64* %char_code, align 8, !tbaa !49
  %160 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %160, i32 0, i32 0
  %161 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %open_font, align 8, !tbaa !126
  store %struct.pdf_font_resource_s* %161, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.180, %cond.end.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.184, %if.then.38, %if.then.35
  %162 = bitcast %struct.gs_font_base_s** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.305 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.191

if.else.186:                                      ; preds = %land.lhs.true.28, %land.lhs.true.24, %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true, %lor.lhs.false.13
  %164 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %165 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pte187 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %165, i32 0, i32 191
  %166 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte187, align 8, !tbaa !89
  %call188 = call i32 @assign_char_code(%struct.gx_device_pdf_s* %164, %struct.gs_text_enum_s* %166) #6
  %conv189 = sext i32 %call188 to i64
  store i64 %conv189, i64* %char_code, align 8, !tbaa !49
  %167 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font190 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %167, i32 0, i32 0
  %168 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %open_font190, align 8, !tbaa !126
  store %struct.pdf_font_resource_s* %168, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.186, %cleanup.cont
  %169 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %170 = load i64, i64* %id.addr, align 8, !tbaa !49
  %call192 = call i32 @pdf_begin_resource(%struct.gx_device_pdf_s* %169, i32 7, i64 %170, %struct.pdf_resource_s** %pres) #6
  store i32 %call192, i32* %code, align 4, !tbaa !57
  %171 = load i32, i32* %code, align 4, !tbaa !57
  %cmp193 = icmp slt i32 %171, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.191
  %172 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.196:                                       ; preds = %if.end.191
  %173 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %174 = bitcast %struct.pdf_resource_s* %173 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %174, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %175 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %176 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %177 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %178 = load i64, i64* %glyph, align 8, !tbaa !49
  %179 = load i64, i64* %char_code, align 8, !tbaa !49
  %180 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %str, align 8, !tbaa !1
  %call197 = call i32 @pdf_attach_charproc(%struct.gx_device_pdf_s* %175, %struct.pdf_font_resource_s* %176, %struct.pdf_char_proc_s* %177, i64 %178, i64 %179, %struct.gs_const_string_s* %180) #6
  store i32 %call197, i32* %code, align 4, !tbaa !57
  %181 = load i32, i32* %code, align 4, !tbaa !57
  %cmp198 = icmp slt i32 %181, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.196
  %182 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %182, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.201:                                       ; preds = %if.end.196
  %183 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %183, i32 0, i32 7
  %184 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !127
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %184, i32 0, i32 8
  store i8 1, i8* %written, align 1, !tbaa !129
  %185 = bitcast %struct.stream_s** %s203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #2
  %186 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %186, i32 0, i32 47
  %187 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %187, %struct.stream_s** %s203, align 8, !tbaa !1
  %188 = load %struct.stream_s*, %struct.stream_s** %s203, align 8, !tbaa !1
  %call204 = call i32 @stream_puts(%struct.stream_s* %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6
  %189 = load %struct.stream_s*, %struct.stream_s** %s203, align 8, !tbaa !1
  %call205 = call i64 @stell(%struct.stream_s* %189) #6
  %190 = load %struct.pdf_stream_position_s*, %struct.pdf_stream_position_s** %ppos.addr, align 8, !tbaa !1
  %start_pos = getelementptr inbounds %struct.pdf_stream_position_s, %struct.pdf_stream_position_s* %190, i32 0, i32 1
  store i64 %call205, i64* %start_pos, align 8, !tbaa !130
  %191 = bitcast %struct.stream_s** %s203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %193 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm206 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %193, i32 0, i32 47
  %194 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object207 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %194, i32 0, i32 7
  %195 = load %struct.cos_object_s*, %struct.cos_object_s** %object207, align 8, !tbaa !127
  %id208 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %195, i32 0, i32 1
  %196 = load i64, i64* %id208, align 8, !tbaa !68
  %call209 = call i32 @pdf_begin_encrypt(%struct.gx_device_pdf_s* %192, %struct.stream_s** %strm206, i64 %196) #6
  store i32 %call209, i32* %code, align 4, !tbaa !57
  %197 = load i32, i32* %code, align 4, !tbaa !57
  %cmp210 = icmp slt i32 %197, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.end.201
  %198 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %198, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.213:                                       ; preds = %if.end.201
  %199 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %200 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %y_offset214 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %200, i32 0, i32 9
  store i32 %199, i32* %y_offset214, align 4, !tbaa !84
  %201 = load i32, i32* %x_offset.addr, align 4, !tbaa !57
  %202 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %x_offset215 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %202, i32 0, i32 10
  store i32 %201, i32* %x_offset215, align 4, !tbaa !86
  %203 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u216 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %203, i32 0, i32 20
  %simple217 = bitcast %union.anon.1* %u216 to %struct.anon.3*
  %s218 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple217, i32 0, i32 7
  %type3219 = bitcast %union.anon.4* %s218 to %struct.anon.7*
  %FontBBox220 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3219, i32 0, i32 0
  %q221 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox220, i32 0, i32 1
  %x222 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q221, i32 0, i32 0
  %204 = load double, double* %x222, align 8, !tbaa !132
  %205 = load i32, i32* %w.addr, align 4, !tbaa !57
  %conv223 = sitofp i32 %205 to double
  %cmp224 = fcmp ogt double %204, %conv223
  br i1 %cmp224, label %cond.true.226, label %cond.false.234

cond.true.226:                                    ; preds = %if.end.213
  %206 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u227 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %206, i32 0, i32 20
  %simple228 = bitcast %union.anon.1* %u227 to %struct.anon.3*
  %s229 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple228, i32 0, i32 7
  %type3230 = bitcast %union.anon.4* %s229 to %struct.anon.7*
  %FontBBox231 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3230, i32 0, i32 0
  %q232 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox231, i32 0, i32 1
  %x233 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q232, i32 0, i32 0
  %207 = load double, double* %x233, align 8, !tbaa !132
  br label %cond.end.236

cond.false.234:                                   ; preds = %if.end.213
  %208 = load i32, i32* %w.addr, align 4, !tbaa !57
  %conv235 = sitofp i32 %208 to double
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.234, %cond.true.226
  %cond237 = phi double [ %207, %cond.true.226 ], [ %conv235, %cond.false.234 ]
  %209 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u238 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %209, i32 0, i32 20
  %simple239 = bitcast %union.anon.1* %u238 to %struct.anon.3*
  %s240 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple239, i32 0, i32 7
  %type3241 = bitcast %union.anon.4* %s240 to %struct.anon.7*
  %FontBBox242 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3241, i32 0, i32 0
  %q243 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox242, i32 0, i32 1
  %x244 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q243, i32 0, i32 0
  store double %cond237, double* %x244, align 8, !tbaa !132
  %210 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u245 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %210, i32 0, i32 20
  %simple246 = bitcast %union.anon.1* %u245 to %struct.anon.3*
  %s247 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple246, i32 0, i32 7
  %type3248 = bitcast %union.anon.4* %s247 to %struct.anon.7*
  %FontBBox249 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3248, i32 0, i32 0
  %q250 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox249, i32 0, i32 1
  %y251 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q250, i32 0, i32 1
  %211 = load double, double* %y251, align 8, !tbaa !133
  %212 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %213 = load i32, i32* %h.addr, align 4, !tbaa !57
  %add252 = add nsw i32 %212, %213
  %conv253 = sitofp i32 %add252 to double
  %cmp254 = fcmp ogt double %211, %conv253
  br i1 %cmp254, label %cond.true.256, label %cond.false.264

cond.true.256:                                    ; preds = %cond.end.236
  %214 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u257 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %214, i32 0, i32 20
  %simple258 = bitcast %union.anon.1* %u257 to %struct.anon.3*
  %s259 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple258, i32 0, i32 7
  %type3260 = bitcast %union.anon.4* %s259 to %struct.anon.7*
  %FontBBox261 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3260, i32 0, i32 0
  %q262 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox261, i32 0, i32 1
  %y263 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q262, i32 0, i32 1
  %215 = load double, double* %y263, align 8, !tbaa !133
  br label %cond.end.267

cond.false.264:                                   ; preds = %cond.end.236
  %216 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %217 = load i32, i32* %h.addr, align 4, !tbaa !57
  %add265 = add nsw i32 %216, %217
  %conv266 = sitofp i32 %add265 to double
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.264, %cond.true.256
  %cond268 = phi double [ %215, %cond.true.256 ], [ %conv266, %cond.false.264 ]
  %218 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u269 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %218, i32 0, i32 20
  %simple270 = bitcast %union.anon.1* %u269 to %struct.anon.3*
  %s271 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple270, i32 0, i32 7
  %type3272 = bitcast %union.anon.4* %s271 to %struct.anon.7*
  %FontBBox273 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3272, i32 0, i32 0
  %q274 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox273, i32 0, i32 1
  %y275 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q274, i32 0, i32 1
  store double %cond268, double* %y275, align 8, !tbaa !133
  %219 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u276 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %219, i32 0, i32 20
  %simple277 = bitcast %union.anon.1* %u276 to %struct.anon.3*
  %s278 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple277, i32 0, i32 7
  %type3279 = bitcast %union.anon.4* %s278 to %struct.anon.7*
  %max_y_offset = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3279, i32 0, i32 3
  %220 = load i32, i32* %max_y_offset, align 4, !tbaa !134
  %221 = load i32, i32* %h.addr, align 4, !tbaa !57
  %222 = load i32, i32* %h.addr, align 4, !tbaa !57
  %shr = ashr i32 %222, 2
  %add280 = add nsw i32 %221, %shr
  %cmp281 = icmp sgt i32 %220, %add280
  br i1 %cmp281, label %cond.true.283, label %cond.false.289

cond.true.283:                                    ; preds = %cond.end.267
  %223 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u284 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %223, i32 0, i32 20
  %simple285 = bitcast %union.anon.1* %u284 to %struct.anon.3*
  %s286 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple285, i32 0, i32 7
  %type3287 = bitcast %union.anon.4* %s286 to %struct.anon.7*
  %max_y_offset288 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3287, i32 0, i32 3
  %224 = load i32, i32* %max_y_offset288, align 4, !tbaa !134
  br label %cond.end.292

cond.false.289:                                   ; preds = %cond.end.267
  %225 = load i32, i32* %h.addr, align 4, !tbaa !57
  %226 = load i32, i32* %h.addr, align 4, !tbaa !57
  %shr290 = ashr i32 %226, 2
  %add291 = add nsw i32 %225, %shr290
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.289, %cond.true.283
  %cond293 = phi i32 [ %224, %cond.true.283 ], [ %add291, %cond.false.289 ]
  %227 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !1
  %u294 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %227, i32 0, i32 20
  %simple295 = bitcast %union.anon.1* %u294 to %struct.anon.3*
  %s296 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple295, i32 0, i32 7
  %type3297 = bitcast %union.anon.4* %s296 to %struct.anon.7*
  %max_y_offset298 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3297, i32 0, i32 3
  store i32 %cond293, i32* %max_y_offset298, align 4, !tbaa !134
  %228 = load i32, i32* %w.addr, align 4, !tbaa !57
  %conv299 = sitofp i32 %228 to double
  %229 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %229, i32 0, i32 11
  %x300 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  store double %conv299, double* %x300, align 8, !tbaa !135
  %230 = load i32, i32* %y_offset.addr, align 4, !tbaa !57
  %231 = load i32, i32* %h.addr, align 4, !tbaa !57
  %add301 = add nsw i32 %230, %231
  %conv302 = sitofp i32 %add301 to double
  %232 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width303 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %232, i32 0, i32 11
  %y304 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width303, i32 0, i32 1
  store double %conv302, double* %y304, align 8, !tbaa !136
  %233 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %234 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %233, %struct.pdf_char_proc_s** %234, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

cleanup.305:                                      ; preds = %cond.end.292, %if.then.212, %if.then.200, %if.then.195, %cleanup
  %235 = bitcast i32* %allowed_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast %struct.gs_show_enum_s** %show_enum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast %struct.gs_const_string_s** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #2
  %242 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  %243 = bitcast %struct.pdf_font_resource_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #2
  %244 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #2
  %245 = bitcast i64* %char_code to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #2
  %246 = load i32, i32* %retval
  ret i32 %246
}

declare i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**, i8**, double**, i32*, i32*) #0

declare i32 @gs_default_next_char_glyph(%struct.gs_text_enum_s*, i64*, i64*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare double @psdf_round(double, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @assign_char_code(%struct.gx_device_pdf_s* %pdev, %struct.gs_text_enum_s* %pte) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pbfs = alloca %struct.pdf_bitmap_fonts_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %code = alloca i32, align 4
  %operation = alloca i32, align 4
  %pc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %p70 = alloca i8, align 1
  %index = alloca i8, align 1
  %bit = alloca i8, align 1
  %index123 = alloca i8, align 1
  %bit124 = alloca i8, align 1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %bitmap_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 1
  %3 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %bitmap_fonts, align 8, !tbaa !53
  store %struct.pdf_bitmap_fonts_s* %3, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %5, i32 0, i32 0
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %open_font, align 8, !tbaa !126
  store %struct.pdf_font_resource_s* %6, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %c, align 4, !tbaa !57
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 0
  %operation2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 0
  %12 = load i32, i32* %operation2, align 4, !tbaa !137
  store i32 %12, i32* %operation, align 4, !tbaa !57
  %13 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %bitmap_encoding_id = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %13, i32 0, i32 2
  %14 = load i64, i64* %bitmap_encoding_id, align 8, !tbaa !55
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i64 @pdf_obj_ref(%struct.gx_device_pdf_s* %15) #6
  %16 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %bitmap_encoding_id3 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %16, i32 0, i32 2
  store i64 %call, i64* %bitmap_encoding_id3, align 8, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.pdf_font_resource_s* %17, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 1
  %19 = load i32, i32* %LastChar, align 4, !tbaa !117
  %cmp5 = icmp eq i32 %19, 255
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %20 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %use_open_font = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %20, i32 0, i32 1
  %21 = load i32, i32* %use_open_font, align 4, !tbaa !83
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end.64, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %22 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_font_type3_alloc(%struct.gx_device_pdf_s* %23, %struct.pdf_font_resource_s** %pdfont, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_bitmap) #6
  store i32 %call8, i32* %code, align 4, !tbaa !57
  %24 = load i32, i32* %code, align 4, !tbaa !57
  %cmp9 = icmp slt i32 %24, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %25 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %26, i32 0, i32 20
  %simple13 = bitcast %union.anon.1* %u12 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple13, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %bitmap_font = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 4
  store i32 1, i32* %bitmap_font, align 4, !tbaa !50
  %27 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font14 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %27, i32 0, i32 0
  %28 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %open_font14, align 8, !tbaa !126
  %cmp15 = icmp eq %struct.pdf_font_resource_s* %28, null
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.11
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 5
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !115
  br label %if.end.22

if.else:                                          ; preds = %if.end.11
  %30 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %rname17 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %30, i32 0, i32 5
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %rname17, i32 0, i32 0
  %31 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font18 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %31, i32 0, i32 0
  %32 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %open_font18, align 8, !tbaa !126
  %rname19 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %32, i32 0, i32 5
  %arraydecay20 = getelementptr inbounds [24 x i8], [24 x i8]* %rname19, i32 0, i32 0
  %call21 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay20) #7
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.16
  %33 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u23 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %33, i32 0, i32 20
  %simple24 = bitcast %union.anon.1* %u23 to %struct.anon.3*
  %s25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple24, i32 0, i32 7
  %type326 = bitcast %union.anon.4* %s25 to %struct.anon.7*
  %FontBBox = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type326, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !139
  %34 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u27 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %34, i32 0, i32 20
  %simple28 = bitcast %union.anon.1* %u27 to %struct.anon.3*
  %s29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple28, i32 0, i32 7
  %type330 = bitcast %union.anon.4* %s29 to %struct.anon.7*
  %FontBBox31 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type330, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox31, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !140
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u33 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %35, i32 0, i32 20
  %simple34 = bitcast %union.anon.1* %u33 to %struct.anon.3*
  %s35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple34, i32 0, i32 7
  %type336 = bitcast %union.anon.4* %s35 to %struct.anon.7*
  %FontBBox37 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type336, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox37, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double 0.000000e+00, double* %x38, align 8, !tbaa !132
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u39 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 20
  %simple40 = bitcast %union.anon.1* %u39 to %struct.anon.3*
  %s41 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple40, i32 0, i32 7
  %type342 = bitcast %union.anon.4* %s41 to %struct.anon.7*
  %FontBBox43 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type342, i32 0, i32 0
  %q44 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox43, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q44, i32 0, i32 1
  store double 0.000000e+00, double* %y45, align 8, !tbaa !133
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %mark_glyph = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %37, i32 0, i32 18
  store i32 (%struct.gs_memory_s*, i64, i8*)* null, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !141
  %38 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u46 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %38, i32 0, i32 20
  %simple47 = bitcast %union.anon.1* %u46 to %struct.anon.3*
  %s48 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple47, i32 0, i32 7
  %type349 = bitcast %union.anon.4* %s48 to %struct.anon.7*
  %FontMatrix = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type349, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %FontMatrix) #6
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %rname50 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %39, i32 0, i32 5
  %arraydecay51 = getelementptr inbounds [24 x i8], [24 x i8]* %rname50, i32 0, i32 0
  store i8* %arraydecay51, i8** %pc, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %40 = load i8*, i8** %pc, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !115
  %conv = sext i8 %41 to i32
  %cmp52 = icmp eq i32 %conv, 90
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %pc, align 8, !tbaa !1
  store i8 64, i8* %42, align 1, !tbaa !115
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i8*, i8** %pc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %pc, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i8*, i8** %pc, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !115
  %inc = add i8 %45, 1
  store i8 %inc, i8* %44, align 1, !tbaa !115
  %conv54 = sext i8 %45 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end
  %46 = load i8*, i8** %pc, align 8, !tbaa !1
  store i8 65, i8* %46, align 1, !tbaa !115
  %47 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 0, i8* %arrayidx58, align 1, !tbaa !115
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %for.end
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %49 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %open_font60 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %49, i32 0, i32 0
  store %struct.pdf_font_resource_s* %48, %struct.pdf_font_resource_s** %open_font60, align 8, !tbaa !126
  %50 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %use_open_font61 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %50, i32 0, i32 1
  store i32 1, i32* %use_open_font61, align 4, !tbaa !83
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 20
  %simple63 = bitcast %union.anon.1* %u62 to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple63, i32 0, i32 0
  store i32 255, i32* %FirstChar, align 4, !tbaa !116
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.10
  %52 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.161 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont, %lor.lhs.false.6
  %53 = load i32, i32* %operation, align 4, !tbaa !57
  %and = and i32 %53, 3
  %tobool65 = icmp ne i32 %and, 0
  br i1 %tobool65, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.64
  %54 = load i32, i32* %operation, align 4, !tbaa !57
  %and67 = and i32 %54, 20
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.122

if.then.69:                                       ; preds = %lor.lhs.false.66, %if.end.64
  call void @llvm.lifetime.start(i64 1, i8* %p70) #2
  %55 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text71 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %55, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text71, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %56 = load i8*, i8** %bytes, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !115
  store i8 %57, i8* %p70, align 1, !tbaa !115
  call void @llvm.lifetime.start(i64 1, i8* %index) #2
  %58 = load i8, i8* %p70, align 1, !tbaa !115
  %conv72 = zext i8 %58 to i32
  %div = sdiv i32 %conv72, 8
  %conv73 = trunc i32 %div to i8
  store i8 %conv73, i8* %index, align 1, !tbaa !115
  call void @llvm.lifetime.start(i64 1, i8* %bit) #2
  %59 = load i8, i8* %p70, align 1, !tbaa !115
  %conv74 = zext i8 %59 to i32
  %rem = srem i32 %conv74, 8
  %shl = shl i32 1, %rem
  %conv75 = trunc i32 %shl to i8
  store i8 %conv75, i8* %bit, align 1, !tbaa !115
  %60 = load i8, i8* %index, align 1, !tbaa !115
  %idxprom = zext i8 %60 to i64
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 15
  %62 = load i8*, i8** %used, align 8, !tbaa !142
  %arrayidx76 = getelementptr inbounds i8, i8* %62, i64 %idxprom
  %63 = load i8, i8* %arrayidx76, align 1, !tbaa !115
  %conv77 = zext i8 %63 to i32
  %64 = load i8, i8* %bit, align 1, !tbaa !115
  %conv78 = zext i8 %64 to i32
  %and79 = and i32 %conv77, %conv78
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.103

if.then.81:                                       ; preds = %if.then.69
  store i32 0, i32* %i, align 4, !tbaa !57
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %if.then.81
  %65 = load i32, i32* %i, align 4, !tbaa !57
  %cmp83 = icmp slt i32 %65, 256
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.82
  %66 = load i32, i32* %i, align 4, !tbaa !57
  %div86 = sdiv i32 %66, 8
  %conv87 = trunc i32 %div86 to i8
  store i8 %conv87, i8* %index, align 1, !tbaa !115
  %67 = load i32, i32* %i, align 4, !tbaa !57
  %rem88 = srem i32 %67, 8
  %shl89 = shl i32 1, %rem88
  %conv90 = trunc i32 %shl89 to i8
  store i8 %conv90, i8* %bit, align 1, !tbaa !115
  %68 = load i8, i8* %index, align 1, !tbaa !115
  %idxprom91 = zext i8 %68 to i64
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used92 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 15
  %70 = load i8*, i8** %used92, align 8, !tbaa !142
  %arrayidx93 = getelementptr inbounds i8, i8* %70, i64 %idxprom91
  %71 = load i8, i8* %arrayidx93, align 1, !tbaa !115
  %conv94 = zext i8 %71 to i32
  %72 = load i8, i8* %bit, align 1, !tbaa !115
  %conv95 = zext i8 %72 to i32
  %and96 = and i32 %conv94, %conv95
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %for.body.85
  %73 = load i32, i32* %i, align 4, !tbaa !57
  store i32 %73, i32* %c, align 4, !tbaa !57
  br label %for.end.102

if.end.99:                                        ; preds = %for.body.85
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %74 = load i32, i32* %i, align 4, !tbaa !57
  %inc101 = add nsw i32 %74, 1
  store i32 %inc101, i32* %i, align 4, !tbaa !57
  br label %for.cond.82

for.end.102:                                      ; preds = %if.then.98, %for.cond.82
  br label %if.end.105

if.else.103:                                      ; preds = %if.then.69
  %75 = load i8, i8* %p70, align 1, !tbaa !115
  %conv104 = zext i8 %75 to i32
  store i32 %conv104, i32* %c, align 4, !tbaa !57
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.103, %for.end.102
  %76 = load i8, i8* %bit, align 1, !tbaa !115
  %conv106 = zext i8 %76 to i32
  %77 = load i8, i8* %index, align 1, !tbaa !115
  %idxprom107 = zext i8 %77 to i64
  %78 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used108 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %78, i32 0, i32 15
  %79 = load i8*, i8** %used108, align 8, !tbaa !142
  %arrayidx109 = getelementptr inbounds i8, i8* %79, i64 %idxprom107
  %80 = load i8, i8* %arrayidx109, align 1, !tbaa !115
  %conv110 = zext i8 %80 to i32
  %or = or i32 %conv110, %conv106
  %conv111 = trunc i32 %or to i8
  store i8 %conv111, i8* %arrayidx109, align 1, !tbaa !115
  %81 = load i32, i32* %c, align 4, !tbaa !57
  %82 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u112 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %82, i32 0, i32 20
  %simple113 = bitcast %union.anon.1* %u112 to %struct.anon.3*
  %LastChar114 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple113, i32 0, i32 1
  %83 = load i32, i32* %LastChar114, align 4, !tbaa !117
  %cmp115 = icmp sgt i32 %81, %83
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.105
  %84 = load i32, i32* %c, align 4, !tbaa !57
  %85 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u118 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %85, i32 0, i32 20
  %simple119 = bitcast %union.anon.1* %u118 to %struct.anon.3*
  %LastChar120 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple119, i32 0, i32 1
  store i32 %84, i32* %LastChar120, align 4, !tbaa !117
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.end.105
  call void @llvm.lifetime.end(i64 1, i8* %bit) #2
  call void @llvm.lifetime.end(i64 1, i8* %index) #2
  call void @llvm.lifetime.end(i64 1, i8* %p70) #2
  br label %if.end.141

if.else.122:                                      ; preds = %lor.lhs.false.66
  call void @llvm.lifetime.start(i64 1, i8* %index123) #2
  call void @llvm.lifetime.start(i64 1, i8* %bit124) #2
  %86 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u125 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %86, i32 0, i32 20
  %simple126 = bitcast %union.anon.1* %u125 to %struct.anon.3*
  %LastChar127 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple126, i32 0, i32 1
  %87 = load i32, i32* %LastChar127, align 4, !tbaa !117
  %inc128 = add nsw i32 %87, 1
  store i32 %inc128, i32* %LastChar127, align 4, !tbaa !117
  store i32 %inc128, i32* %c, align 4, !tbaa !57
  %88 = load i32, i32* %c, align 4, !tbaa !57
  %div129 = sdiv i32 %88, 8
  %conv130 = trunc i32 %div129 to i8
  store i8 %conv130, i8* %index123, align 1, !tbaa !115
  %89 = load i32, i32* %c, align 4, !tbaa !57
  %rem131 = srem i32 %89, 8
  %shl132 = shl i32 1, %rem131
  %conv133 = trunc i32 %shl132 to i8
  store i8 %conv133, i8* %bit124, align 1, !tbaa !115
  %90 = load i8, i8* %bit124, align 1, !tbaa !115
  %conv134 = zext i8 %90 to i32
  %91 = load i8, i8* %index123, align 1, !tbaa !115
  %idxprom135 = zext i8 %91 to i64
  %92 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used136 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %92, i32 0, i32 15
  %93 = load i8*, i8** %used136, align 8, !tbaa !142
  %arrayidx137 = getelementptr inbounds i8, i8* %93, i64 %idxprom135
  %94 = load i8, i8* %arrayidx137, align 1, !tbaa !115
  %conv138 = zext i8 %94 to i32
  %or139 = or i32 %conv138, %conv134
  %conv140 = trunc i32 %or139 to i8
  store i8 %conv140, i8* %arrayidx137, align 1, !tbaa !115
  call void @llvm.lifetime.end(i64 1, i8* %bit124) #2
  call void @llvm.lifetime.end(i64 1, i8* %index123) #2
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.122, %if.end.121
  %95 = load i32, i32* %c, align 4, !tbaa !57
  %96 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u142 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %96, i32 0, i32 20
  %simple143 = bitcast %union.anon.1* %u142 to %struct.anon.3*
  %FirstChar144 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple143, i32 0, i32 0
  %97 = load i32, i32* %FirstChar144, align 4, !tbaa !116
  %cmp145 = icmp slt i32 %95, %97
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.end.141
  %98 = load i32, i32* %c, align 4, !tbaa !57
  %99 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u148 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %99, i32 0, i32 20
  %simple149 = bitcast %union.anon.1* %u148 to %struct.anon.3*
  %FirstChar150 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple149, i32 0, i32 0
  store i32 %98, i32* %FirstChar150, align 4, !tbaa !116
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %if.end.141
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %char_width = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %100, i32 0, i32 186
  %x152 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_width, i32 0, i32 0
  %101 = load double, double* %x152, align 8, !tbaa !123
  %call153 = call double @psdf_round(double %101, i32 100, i32 10) #6
  %102 = load i32, i32* %c, align 4, !tbaa !57
  %idxprom154 = sext i32 %102 to i64
  %103 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %103, i32 0, i32 14
  %104 = load double*, double** %Widths, align 8, !tbaa !124
  %arrayidx155 = getelementptr inbounds double, double* %104, i64 %idxprom154
  store double %call153, double* %arrayidx155, align 8, !tbaa !125
  %105 = load i32, i32* %c, align 4, !tbaa !57
  %106 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %max_embedded_code = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %106, i32 0, i32 3
  %107 = load i32, i32* %max_embedded_code, align 4, !tbaa !81
  %cmp156 = icmp sgt i32 %105, %107
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %if.end.151
  %108 = load i32, i32* %c, align 4, !tbaa !57
  %109 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %max_embedded_code159 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %109, i32 0, i32 3
  store i32 %108, i32* %max_embedded_code159, align 4, !tbaa !81
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %if.end.151
  %110 = load i32, i32* %c, align 4, !tbaa !57
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup.161:                                      ; preds = %if.end.160, %cleanup
  %111 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = load i32, i32* %retval
  ret i32 %117
}

declare i32 @pdf_begin_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_attach_charproc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, %struct.pdf_char_proc_s* %pcp, i64 %glyph, i64 %char_code, %struct.gs_const_string_s* %gnstr) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  %glyph.addr = alloca i64, align 8
  %char_code.addr = alloca i64, align 8
  %gnstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %duplicate_char_name = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !49
  store i64 %char_code, i64* %char_code.addr, align 8, !tbaa !49
  store %struct.gs_const_string_s* %gnstr, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %duplicate_char_name to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %duplicate_char_name, align 4, !tbaa !57
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %3 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %3, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_char_proc_ownership_s* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph1 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %5, i32 0, i32 5
  %6 = load i64, i64* %glyph1, align 8, !tbaa !110
  %7 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %cmp2 = icmp eq i64 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code3 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %8, i32 0, i32 4
  %9 = load i64, i64* %char_code3, align 8, !tbaa !59
  %10 = load i64, i64* %char_code.addr, align 8, !tbaa !49
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %11, i32 0, i32 2
  %12 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %12, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %13, i32 0, i32 20
  %simple6 = bitcast %union.anon.1* %u5 to %struct.anon.3*
  %s7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple6, i32 0, i32 7
  %type38 = bitcast %union.anon.4* %s7 to %struct.anon.7*
  %bitmap_font = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type38, i32 0, i32 4
  %14 = load i32, i32* %bitmap_font, align 4, !tbaa !50
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.27, label %if.then.9

if.then.9:                                        ; preds = %for.end
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u10 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %15, i32 0, i32 20
  %simple11 = bitcast %union.anon.1* %u10 to %struct.anon.3*
  %s12 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple11, i32 0, i32 7
  %type313 = bitcast %union.anon.4* %s12 to %struct.anon.7*
  %char_procs14 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type313, i32 0, i32 2
  %16 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs14, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %16, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %if.then.9
  %17 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.pdf_char_proc_ownership_s* %17, null
  br i1 %cmp16, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.15
  %18 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %18, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !63
  %20 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name18 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %20, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name18, i32 0, i32 1
  %21 = load i32, i32* %size, align 4, !tbaa !64
  %22 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %data19, align 8, !tbaa !143
  %24 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %24, i32 0, i32 1
  %25 = load i32, i32* %size20, align 4, !tbaa !144
  %call = call i32 @bytes_compare(i8* %19, i32 %21, i8* %23, i32 %25) #6
  %tobool21 = icmp ne i32 %call, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body.17
  store i32 1, i32* %duplicate_char_name, align 4, !tbaa !57
  br label %for.end.26

if.end.23:                                        ; preds = %for.body.17
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %26 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next25 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %26, i32 0, i32 2
  %27 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next25, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %27, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.15

for.end.26:                                       ; preds = %if.then.22, %for.cond.15
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %for.end
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 43
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !87
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %30 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !78
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory28 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 43
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory28, align 8, !tbaa !87
  %call29 = call i8* %30(%struct.gs_memory_s* %32, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_char_proc_ownership to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0)) #6
  %33 = bitcast i8* %call29 to %struct.pdf_char_proc_ownership_s*
  store %struct.pdf_char_proc_ownership_s* %33, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %34 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.pdf_char_proc_ownership_s* %34, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %36 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %36, i32 0, i32 3
  store %struct.pdf_font_resource_s* %35, %struct.pdf_font_resource_s** %font, align 8, !tbaa !145
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u33 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %37, i32 0, i32 20
  %simple34 = bitcast %union.anon.1* %u33 to %struct.anon.3*
  %s35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple34, i32 0, i32 7
  %type336 = bitcast %union.anon.4* %s35 to %struct.anon.7*
  %char_procs37 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type336, i32 0, i32 2
  %38 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs37, align 8, !tbaa !58
  %39 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next38 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %39, i32 0, i32 2
  store %struct.pdf_char_proc_ownership_s* %38, %struct.pdf_char_proc_ownership_s** %char_next38, align 8, !tbaa !71
  %40 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %41 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u39 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %41, i32 0, i32 20
  %simple40 = bitcast %union.anon.1* %u39 to %struct.anon.3*
  %s41 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple40, i32 0, i32 7
  %type342 = bitcast %union.anon.4* %s41 to %struct.anon.7*
  %char_procs43 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type342, i32 0, i32 2
  store %struct.pdf_char_proc_ownership_s* %40, %struct.pdf_char_proc_ownership_s** %char_procs43, align 8, !tbaa !58
  %42 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %43 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %43, i32 0, i32 0
  store %struct.pdf_char_proc_s* %42, %struct.pdf_char_proc_s** %char_proc, align 8, !tbaa !61
  %44 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %owner_fonts = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %44, i32 0, i32 8
  %45 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %owner_fonts, align 8, !tbaa !146
  %46 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %46, i32 0, i32 1
  store %struct.pdf_char_proc_ownership_s* %45, %struct.pdf_char_proc_ownership_s** %font_next, align 8, !tbaa !147
  %47 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %48 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %owner_fonts44 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %48, i32 0, i32 8
  store %struct.pdf_char_proc_ownership_s* %47, %struct.pdf_char_proc_ownership_s** %owner_fonts44, align 8, !tbaa !146
  %49 = load i64, i64* %char_code.addr, align 8, !tbaa !49
  %50 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code45 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %50, i32 0, i32 4
  store i64 %49, i64* %char_code45, align 8, !tbaa !59
  %51 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %52 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph46 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %52, i32 0, i32 5
  store i64 %51, i64* %glyph46, align 8, !tbaa !110
  %53 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %cmp47 = icmp eq %struct.gs_const_string_s* %53, null
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.32
  %54 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name49 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %54, i32 0, i32 6
  %data50 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name49, i32 0, i32 0
  store i8* null, i8** %data50, align 8, !tbaa !63
  %55 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name51 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %55, i32 0, i32 6
  %size52 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %char_name51, i32 0, i32 1
  store i32 0, i32* %size52, align 4, !tbaa !64
  br label %if.end.54

if.else:                                          ; preds = %if.end.32
  %56 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_name53 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %56, i32 0, i32 6
  %57 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_const_string_s* %char_name53 to i8*
  %59 = bitcast %struct.gs_const_string_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false), !tbaa.struct !148
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.48
  %60 = load i32, i32* %duplicate_char_name, align 4, !tbaa !57
  %61 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %duplicate_char_name55 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %61, i32 0, i32 7
  store i32 %60, i32* %duplicate_char_name55, align 4, !tbaa !62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.31, %if.then
  %62 = bitcast i32* %duplicate_char_name to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i64 @stell(%struct.stream_s*) #0

declare i32 @pdf_begin_encrypt(%struct.gx_device_pdf_s*, %struct.stream_s**, i64) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_end_char_proc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_stream_position_s* %ppos) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppos.addr = alloca %struct.pdf_stream_position_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %start_pos = alloca i64, align 8
  %end_pos = alloca i64, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_stream_position_s* %ppos, %struct.pdf_stream_position_s** %ppos.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %end_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_end_encrypt(%struct.gx_device_pdf_s* %4) #6
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load %struct.pdf_stream_position_s*, %struct.pdf_stream_position_s** %ppos.addr, align 8, !tbaa !1
  %start_pos1 = getelementptr inbounds %struct.pdf_stream_position_s, %struct.pdf_stream_position_s* %7, i32 0, i32 1
  %8 = load i64, i64* %start_pos1, align 8, !tbaa !130
  store i64 %8, i64* %start_pos, align 8, !tbaa !49
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %9) #6
  store i64 %call, i64* %end_pos, align 8, !tbaa !49
  %10 = load i64, i64* %end_pos, align 8, !tbaa !49
  %11 = load i64, i64* %start_pos, align 8, !tbaa !49
  %sub = sub nsw i64 %10, %11
  store i64 %sub, i64* %length, align 8, !tbaa !49
  %12 = load i64, i64* %length, align 8, !tbaa !49
  %cmp = icmp sgt i64 %12, 999999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load i64, i64* %start_pos, align 8, !tbaa !49
  %sub2 = sub nsw i64 %14, 15
  %call3 = call i32 @spseek(%struct.stream_s* %13, i64 %sub2) #6
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load i64, i64* %length, align 8, !tbaa !49
  %conv = trunc i64 %16 to i32
  %call4 = call i8* @pprintd1(%struct.stream_s* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv) #6
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i64, i64* %end_pos, align 8, !tbaa !49
  %call5 = call i32 @spseek(%struct.stream_s* %17, i64 %18) #6
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 109
  %20 = load i32, i32* %PDFA, align 4, !tbaa !149
  %cmp6 = icmp ne i32 %20, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call11 = call i32 @stream_puts(%struct.stream_s* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #6
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call12 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %23, i32 7) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %24 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i64* %end_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @pdf_end_encrypt(%struct.gx_device_pdf_s*) #0

declare i32 @spseek(%struct.stream_s*, i64) #0

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #0

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @pdf_mark_glyph_names(%struct.pdf_font_resource_s* %pdfont, %struct.gs_memory_s* %memory) #1 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %mark_glyph = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %0, i32 0, i32 18
  %1 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !141
  %cmp = icmp eq i32 (%struct.gs_memory_s*, i64, i8*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.42

if.end:                                           ; preds = %entry
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %3 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !108
  %cmp1 = icmp ne %struct.pdf_encoding_element_s* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.end
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %i, align 4, !tbaa !57
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %5 = load i32, i32* %i, align 4, !tbaa !57
  %cmp3 = icmp slt i32 %5, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !57
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 20
  %simple5 = bitcast %union.anon.1* %u4 to %struct.anon.3*
  %Encoding6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple5, i32 0, i32 4
  %8 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding6, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %8, i64 %idxprom
  %glyph = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx, i32 0, i32 0
  %9 = load i64, i64* %glyph, align 8, !tbaa !111
  %cmp7 = icmp ne i64 %9, 2147483647
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %mark_glyph9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 18
  %11 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph9, align 8, !tbaa !141
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !57
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u11 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %simple12 = bitcast %union.anon.1* %u11 to %struct.anon.3*
  %Encoding13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple12, i32 0, i32 4
  %15 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding13, align 8, !tbaa !108
  %arrayidx14 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %15, i64 %idxprom10
  %glyph15 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx14, i32 0, i32 0
  %16 = load i64, i64* %glyph15, align 8, !tbaa !111
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %mark_glyph_data = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 19
  %18 = load i8*, i8** %mark_glyph_data, align 8, !tbaa !150
  %call = call i32 %11(%struct.gs_memory_s* %12, i64 %16, i8* %18) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %19 = load i32, i32* %i, align 4, !tbaa !57
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !57
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %if.end
  %21 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %21, i32 0, i32 8
  %22 = load i32, i32* %FontType, align 4, !tbaa !151
  %cmp18 = icmp eq i32 %22, 3
  br i1 %cmp18, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %23 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType19 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %23, i32 0, i32 8
  %24 = load i32, i32* %FontType19, align 4, !tbaa !151
  %cmp20 = icmp eq i32 %24, 53
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType22 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 8
  %26 = load i32, i32* %FontType22, align 4, !tbaa !151
  %cmp23 = icmp eq i32 %26, 51
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %27 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType25 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %27, i32 0, i32 8
  %28 = load i32, i32* %FontType25, align 4, !tbaa !151
  %cmp26 = icmp eq i32 %28, 52
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType28 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 8
  %30 = load i32, i32* %FontType28, align 4, !tbaa !151
  %cmp29 = icmp eq i32 %30, 54
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false, %if.end.17
  %31 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u31 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %32, i32 0, i32 20
  %simple32 = bitcast %union.anon.1* %u31 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple32, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %33 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %33, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %if.then.30
  %34 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp34 = icmp ne %struct.pdf_char_proc_ownership_s* %34, null
  br i1 %cmp34, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.33
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %mark_glyph36 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %35, i32 0, i32 18
  %36 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph36, align 8, !tbaa !141
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %38 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph37 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %38, i32 0, i32 5
  %39 = load i64, i64* %glyph37, align 8, !tbaa !110
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %mark_glyph_data38 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 19
  %41 = load i8*, i8** %mark_glyph_data38, align 8, !tbaa !150
  %call39 = call i32 %36(%struct.gs_memory_s* %37, i64 %39, i8* %41) #6
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %42 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %42, i32 0, i32 1
  %43 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %font_next, align 8, !tbaa !147
  store %struct.pdf_char_proc_ownership_s* %43, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.33

for.end.41:                                       ; preds = %for.cond.33
  %44 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  br label %if.end.42

if.end.42:                                        ; preds = %if.then, %for.end.41, %lor.lhs.false.27
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_do_char_image(%struct.gx_device_pdf_s* %pdev, %struct.pdf_char_proc_s* %pcp, %struct.gs_matrix_s* %pimat) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  %pimat.addr = alloca %struct.gs_matrix_s*, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %ch = alloca i8, align 1
  %values = alloca %struct.pdf_text_state_values_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pimat, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %owner_fonts = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %1, i32 0, i32 8
  %2 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %owner_fonts, align 8, !tbaa !146
  store %struct.pdf_char_proc_ownership_s* %2, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %4, i32 0, i32 3
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !145
  store %struct.pdf_font_resource_s* %5, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2
  %6 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %6, i32 0, i32 4
  %7 = load i64, i64* %char_code, align 8, !tbaa !59
  %conv = trunc i64 %7 to i8
  store i8 %conv, i8* %ch, align 1, !tbaa !115
  %8 = bitcast %struct.pdf_text_state_values_s* %values to i8*
  call void @llvm.lifetime.start(i64 56, i8* %8) #2
  %character_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 0
  store float 0.000000e+00, float* %character_spacing, align 4, !tbaa !152
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %pdfont1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 1
  store %struct.pdf_font_resource_s* %9, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !154
  %size = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 2
  store double 1.000000e+00, double* %size, align 8, !tbaa !155
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 3
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_matrix_s* %matrix to i8*
  %12 = bitcast %struct.gs_matrix_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 4, i1 false), !tbaa.struct !156
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 4
  store i32 0, i32* %render_mode, align 4, !tbaa !158
  %word_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 5
  store float 0.000000e+00, float* %word_spacing, align 4, !tbaa !159
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s* %13, %struct.pdf_text_state_values_s* %values) #6
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %15, i32 0, i32 10
  %16 = load i32, i32* %x_offset, align 4, !tbaa !86
  %17 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %y_offset = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %17, i32 0, i32 9
  %18 = load i32, i32* %y_offset, align 4, !tbaa !84
  %19 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %19, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  %20 = load double, double* %x, align 8, !tbaa !135
  %21 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %real_width2 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %21, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width2, i32 0, i32 1
  %22 = load double, double* %y, align 8, !tbaa !136
  %call3 = call i32 @pdf_bitmap_char_update_bbox(%struct.gx_device_pdf_s* %14, i32 %16, i32 %18, double %20, double %22) #6
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load i8, i8* %ch, align 1, !tbaa !115
  %idxprom = zext i8 %24 to i64
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 14
  %26 = load double*, double** %Widths, align 8, !tbaa !124
  %arrayidx = getelementptr inbounds double, double* %26, i64 %idxprom
  %27 = load double, double* %arrayidx, align 8, !tbaa !125
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pimat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 0
  %29 = load float, float* %xx, align 4, !tbaa !160
  %conv4 = fpext float %29 to double
  %mul = fmul double %27, %conv4
  %call5 = call i32 @pdf_append_chars(%struct.gx_device_pdf_s* %23, i8* %ch, i32 1, double %mul, double 0.000000e+00, i32 0) #6
  %30 = bitcast %struct.pdf_text_state_values_s* %values to i8*
  call void @llvm.lifetime.end(i64 56, i8* %30) #2
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2
  %31 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s*, %struct.pdf_text_state_values_s*) #0

declare i32 @pdf_bitmap_char_update_bbox(%struct.gx_device_pdf_s*, i32, i32, double, double) #0

declare i32 @pdf_append_chars(%struct.gx_device_pdf_s*, i8*, i32, double, double, i32) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_write_bitmap_fonts_Encoding(%struct.gx_device_pdf_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfs = alloca %struct.pdf_bitmap_fonts_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %bitmap_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 1
  %3 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %bitmap_fonts, align 8, !tbaa !53
  store %struct.pdf_bitmap_fonts_s* %3, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %4 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %bitmap_encoding_id = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %4, i32 0, i32 2
  %5 = load i64, i64* %bitmap_encoding_id, align 8, !tbaa !55
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %bitmap_encoding_id1 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %9, i32 0, i32 2
  %10 = load i64, i64* %bitmap_encoding_id1, align 8, !tbaa !55
  %call = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %8, i64 %10, i32 16) #6
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 47
  %12 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0)) #6
  store i32 0, i32* %i, align 4, !tbaa !57
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !57
  %15 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %max_embedded_code = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %15, i32 0, i32 3
  %16 = load i32, i32* %max_embedded_code, align 4, !tbaa !81
  %cmp = icmp sle i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !57
  %and = and i32 %17, 15
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %for.body
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call5 = call i32 @stream_puts(%struct.stream_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !57
  %call6 = call i8* @pprintd1(%struct.stream_s* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %20) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !57
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !57
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call7 = call i32 @stream_puts(%struct.stream_s* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #6
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %23, i32 16) #6
  %24 = load %struct.pdf_bitmap_fonts_s*, %struct.pdf_bitmap_fonts_s** %pbfs, align 8, !tbaa !1
  %bitmap_encoding_id9 = getelementptr inbounds %struct.pdf_bitmap_fonts_s, %struct.pdf_bitmap_fonts_s* %24, i32 0, i32 2
  store i64 0, i64* %bitmap_encoding_id9, align 8, !tbaa !55
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %27 = bitcast %struct.pdf_bitmap_fonts_s** %pbfs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 0
}

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_start_charproc_accum(%struct.gx_device_pdf_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !161
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %5, i32 1) #6
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 94
  %7 = load i32, i32* %CompressFonts, align 4, !tbaa !162
  %call1 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %3, i32 7, i64 %call, %struct.pdf_resource_s** %pres, i32 0, i32 %7) #6
  store i32 %call1, i32* %code, align 4, !tbaa !57
  %8 = load i32, i32* %code, align 4, !tbaa !57
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = bitcast %struct.pdf_resource_s* %10 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %11, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %12 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %owner_fonts = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %12, i32 0, i32 8
  store %struct.pdf_char_proc_ownership_s* null, %struct.pdf_char_proc_ownership_s** %owner_fonts, align 8, !tbaa !146
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %pdev, i32 %rtype, i64 %id, %struct.pdf_resource_s** %ppres, i32 %reserve_object_id, i32 %compress) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %rtype.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %reserve_object_id.addr = alloca i32, align 4
  %compress.addr = alloca i32, align 4
  %sbstack_ptr = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %save_strm = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %rtype, i32* %rtype.addr, align 4, !tbaa !115
  store i64 %id, i64* %id.addr, align 8, !tbaa !49
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store i32 %reserve_object_id, i32* %reserve_object_id.addr, align 4, !tbaa !57
  store i32 %compress, i32* %compress.addr, align 4, !tbaa !57
  %0 = bitcast i32* %sbstack_ptr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 199
  %2 = load i32, i32* %sbstack_depth, align 4, !tbaa !163
  store i32 %2, i32* %sbstack_ptr, align 4, !tbaa !57
  %3 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %6, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 199
  %9 = load i32, i32* %sbstack_depth1, align 4, !tbaa !163
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_size = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 198
  %11 = load i32, i32* %sbstack_size, align 4, !tbaa !164
  %cmp = icmp sge i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 200
  %14 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack, align 8, !tbaa !165
  %arrayidx = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %14, i64 %idxprom
  %text_state = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx, i32 0, i32 1
  %15 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !166
  %cmp2 = icmp eq %struct.pdf_text_state_s* %15, null
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 43
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !87
  %call = call %struct.pdf_text_state_s* @pdf_text_state_alloc(%struct.gs_memory_s* %17) #6
  %18 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom4 = sext i32 %18 to i64
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 200
  %20 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack5, align 8, !tbaa !165
  %arrayidx6 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %20, i64 %idxprom4
  %text_state7 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx6, i32 0, i32 1
  store %struct.pdf_text_state_s* %call, %struct.pdf_text_state_s** %text_state7, align 8, !tbaa !166
  %21 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 200
  %23 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack9, align 8, !tbaa !165
  %arrayidx10 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %23, i64 %idxprom8
  %text_state11 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx10, i32 0, i32 1
  %24 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state11, align 8, !tbaa !166
  %cmp12 = icmp eq %struct.pdf_text_state_s* %24, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %rtype.addr, align 4, !tbaa !115
  %27 = load i64, i64* %id.addr, align 8, !tbaa !49
  %28 = load i32, i32* %reserve_object_id.addr, align 4, !tbaa !57
  %29 = load i32, i32* %compress.addr, align 4, !tbaa !57
  %tobool = icmp ne i32 %29, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %call16 = call i32 @pdf_open_aside(%struct.gx_device_pdf_s* %25, i32 %26, i64 %27, %struct.pdf_resource_s** %pres, i32 %28, i32 %cond) #6
  store i32 %call16, i32* %code, align 4, !tbaa !57
  %30 = load i32, i32* %code, align 4, !tbaa !57
  %cmp17 = icmp slt i32 %30, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %31 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call20 = call i32 @pdf_save_viewer_state(%struct.gx_device_pdf_s* %32, %struct.stream_s* null) #6
  store i32 %call20, i32* %code, align 4, !tbaa !57
  %33 = load i32, i32* %code, align 4, !tbaa !57
  %cmp21 = icmp slt i32 %33, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %34 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 47
  store %struct.stream_s* %34, %struct.stream_s** %strm23, align 8, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 156
  %38 = load i32, i32* %context, align 4, !tbaa !168
  %39 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 200
  %41 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack26, align 8, !tbaa !165
  %arrayidx27 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %41, i64 %idxprom25
  %context28 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx27, i32 0, i32 0
  store i32 %38, i32* %context28, align 4, !tbaa !169
  %42 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom29 = sext i32 %42 to i64
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 200
  %44 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack30, align 8, !tbaa !165
  %arrayidx31 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %44, i64 %idxprom29
  %text_state32 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx31, i32 0, i32 1
  %45 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state32, align 8, !tbaa !166
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 160
  %47 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %text_state33 = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %47, i32 0, i32 2
  %48 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state33, align 8, !tbaa !170
  call void @pdf_text_state_copy(%struct.pdf_text_state_s* %45, %struct.pdf_text_state_s* %48) #6
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 160
  %50 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text34, align 8, !tbaa !52
  %text_state35 = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %50, i32 0, i32 2
  %51 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state35, align 8, !tbaa !170
  call void @pdf_set_text_state_default(%struct.pdf_text_state_s* %51) #6
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 187
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8, !tbaa !171
  %54 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom36 = sext i32 %54 to i64
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 200
  %56 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack37, align 8, !tbaa !165
  %arrayidx38 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %56, i64 %idxprom36
  %clip_path39 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx38, i32 0, i32 2
  store %struct.gx_path_s* %53, %struct.gx_path_s** %clip_path39, align 8, !tbaa !172
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 187
  store %struct.gx_path_s* null, %struct.gx_path_s** %clip_path40, align 8, !tbaa !171
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 59
  %59 = load i64, i64* %clip_path_id, align 8, !tbaa !173
  %60 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom41 = sext i32 %60 to i64
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack42 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 200
  %62 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack42, align 8, !tbaa !165
  %arrayidx43 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %62, i64 %idxprom41
  %clip_path_id44 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx43, i32 0, i32 3
  store i64 %59, i64* %clip_path_id44, align 8, !tbaa !174
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 58
  %64 = load i64, i64* %no_clip_path_id, align 8, !tbaa !175
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 59
  store i64 %64, i64* %clip_path_id45, align 8, !tbaa !173
  %66 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %66, i32 0, i32 195
  %67 = load i32, i32* %vgstack_bottom, align 4, !tbaa !176
  %68 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom46 = sext i32 %68 to i64
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 200
  %70 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack47, align 8, !tbaa !165
  %arrayidx48 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %70, i64 %idxprom46
  %vgstack_bottom49 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx48, i32 0, i32 4
  store i32 %67, i32* %vgstack_bottom49, align 4, !tbaa !177
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 194
  %72 = load i32, i32* %vgstack_depth, align 4, !tbaa !178
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 195
  store i32 %72, i32* %vgstack_bottom50, align 4, !tbaa !176
  %74 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %75 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom51 = sext i32 %75 to i64
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 200
  %77 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack52, align 8, !tbaa !165
  %arrayidx53 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %77, i64 %idxprom51
  %strm54 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx53, i32 0, i32 5
  store %struct.stream_s* %74, %struct.stream_s** %strm54, align 8, !tbaa !179
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 159
  %79 = load i32, i32* %procsets, align 4, !tbaa !180
  %80 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom55 = sext i32 %80 to i64
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack56 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 200
  %82 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack56, align 8, !tbaa !165
  %arrayidx57 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %82, i64 %idxprom55
  %procsets58 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx57, i32 0, i32 7
  store i32 %79, i32* %procsets58, align 4, !tbaa !181
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 205
  %84 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !182
  %85 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom59 = sext i32 %85 to i64
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack60 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 200
  %87 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack60, align 8, !tbaa !165
  %arrayidx61 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %87, i64 %idxprom59
  %substream_Resources62 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx61, i32 0, i32 6
  store %struct.cos_dict_s* %84, %struct.cos_dict_s** %substream_Resources62, align 8, !tbaa !183
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %88, i32 0, i32 207
  %89 = load i32, i32* %skip_colors, align 4, !tbaa !184
  %90 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom63 = sext i32 %90 to i64
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %91, i32 0, i32 200
  %92 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack64, align 8, !tbaa !165
  %arrayidx65 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %92, i64 %idxprom63
  %skip_colors66 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx65, i32 0, i32 8
  store i32 %89, i32* %skip_colors66, align 4, !tbaa !185
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %font3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 209
  %94 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %font3, align 8, !tbaa !186
  %95 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom67 = sext i32 %95 to i64
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 200
  %97 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack68, align 8, !tbaa !165
  %arrayidx69 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %97, i64 %idxprom67
  %font370 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx69, i32 0, i32 9
  store %struct.pdf_resource_s* %94, %struct.pdf_resource_s** %font370, align 8, !tbaa !187
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 210
  %99 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !188
  %100 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom71 = sext i32 %100 to i64
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack72 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %101, i32 0, i32 200
  %102 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack72, align 8, !tbaa !165
  %arrayidx73 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %102, i64 %idxprom71
  %accumulating_substream_resource74 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx73, i32 0, i32 10
  store %struct.pdf_resource_s* %99, %struct.pdf_resource_s** %accumulating_substream_resource74, align 8, !tbaa !189
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %103, i32 0, i32 214
  %104 = load i32, i32* %charproc_just_accumulated, align 4, !tbaa !190
  %105 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom75 = sext i32 %105 to i64
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack76 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 200
  %107 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack76, align 8, !tbaa !165
  %arrayidx77 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %107, i64 %idxprom75
  %charproc_just_accumulated78 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx77, i32 0, i32 11
  store i32 %104, i32* %charproc_just_accumulated78, align 4, !tbaa !191
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_a_global_object = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %108, i32 0, i32 216
  %109 = load i32, i32* %accumulating_a_global_object, align 4, !tbaa !192
  %110 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom79 = sext i32 %110 to i64
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack80 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %111, i32 0, i32 200
  %112 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack80, align 8, !tbaa !165
  %arrayidx81 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %112, i64 %idxprom79
  %accumulating_a_global_object82 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx81, i32 0, i32 12
  store i32 %109, i32* %accumulating_a_global_object82, align 4, !tbaa !193
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 226
  %114 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !194
  %115 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom83 = sext i32 %115 to i64
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack84 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 200
  %117 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack84, align 8, !tbaa !165
  %arrayidx85 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %117, i64 %idxprom83
  %pres_soft_mask_dict86 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx85, i32 0, i32 13
  store %struct.pdf_resource_s* %114, %struct.pdf_resource_s** %pres_soft_mask_dict86, align 8, !tbaa !195
  %118 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom87 = sext i32 %118 to i64
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack88 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 200
  %120 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack88, align 8, !tbaa !165
  %arrayidx89 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %120, i64 %idxprom87
  %objname = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx89, i32 0, i32 14
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname90 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %121, i32 0, i32 227
  %122 = bitcast %struct.gs_const_string_s* %objname to i8*
  %123 = bitcast %struct.gs_const_string_s* %objname90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 16, i32 8, i1 false), !tbaa.struct !148
  %124 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %last_charpath_op = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %124, i32 0, i32 230
  %125 = load i32, i32* %last_charpath_op, align 4, !tbaa !196
  %126 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom91 = sext i32 %126 to i64
  %127 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack92 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %127, i32 0, i32 200
  %128 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack92, align 8, !tbaa !165
  %arrayidx93 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %128, i64 %idxprom91
  %last_charpath_op94 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx93, i32 0, i32 15
  store i32 %125, i32* %last_charpath_op94, align 4, !tbaa !197
  %129 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors95 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %129, i32 0, i32 207
  store i32 0, i32* %skip_colors95, align 4, !tbaa !184
  %130 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated96 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %130, i32 0, i32 214
  store i32 0, i32* %charproc_just_accumulated96, align 4, !tbaa !190
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %131, i32 0, i32 226
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres_soft_mask_dict97, align 8, !tbaa !194
  %132 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname98 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %132, i32 0, i32 227
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname98, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !198
  %133 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname99 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %133, i32 0, i32 227
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %objname99, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !199
  %134 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth100 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %134, i32 0, i32 199
  %135 = load i32, i32* %sbstack_depth100, align 4, !tbaa !163
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %sbstack_depth100, align 4, !tbaa !163
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %136, i32 0, i32 159
  store i32 0, i32* %procsets101, align 4, !tbaa !180
  %137 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %font3102 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %137, i32 0, i32 209
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %font3102, align 8, !tbaa !186
  %138 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context103 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %138, i32 0, i32 156
  store i32 1, i32* %context103, align 4, !tbaa !168
  %139 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %140 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource104 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %140, i32 0, i32 210
  store %struct.pdf_resource_s* %139, %struct.pdf_resource_s** %accumulating_substream_resource104, align 8, !tbaa !188
  %141 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %last_charpath_op105 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %141, i32 0, i32 230
  store i32 0, i32* %last_charpath_op105, align 4, !tbaa !196
  %142 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  call void @pdf_reset_graphics(%struct.gx_device_pdf_s* %142) #6
  %143 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %144 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %143, %struct.pdf_resource_s** %144, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.18, %if.then.13, %if.then
  %145 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i32* %sbstack_ptr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = load i32, i32* %retval
  ret i32 %149
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_set_charproc_attrs(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, double* %pw, i32 %narg, i32 %control, i64 %ch, i32 %scale_100) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pw.addr = alloca double*, align 8
  %narg.addr = alloca i32, align 4
  %control.addr = alloca i32, align 4
  %ch.addr = alloca i64, align 8
  %scale_100.addr = alloca i32, align 4
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store double* %pw, double** %pw.addr, align 8, !tbaa !1
  store i32 %narg, i32* %narg.addr, align 4, !tbaa !57
  store i32 %control, i32* %control.addr, align 4, !tbaa !115
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !49
  store i32 %scale_100, i32* %scale_100.addr, align 4, !tbaa !57
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 210
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !188
  store %struct.pdf_resource_s* %3, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %6, %struct.gs_font_s* %7, %struct.pdf_font_resource_s** %pdfont, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %8 = load i32, i32* %code, align 4, !tbaa !57
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = bitcast %struct.pdf_resource_s* %10 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %11, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %12 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %owner_fonts = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %12, i32 0, i32 8
  store %struct.pdf_char_proc_ownership_s* null, %struct.pdf_char_proc_ownership_s** %owner_fonts, align 8, !tbaa !146
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 16
  %14 = load i32, i32* %WMode, align 4, !tbaa !200
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %15 = load i32, i32* %narg.addr, align 4, !tbaa !57
  %cmp1 = icmp sgt i32 %15, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %16 = phi i1 [ false, %if.end ], [ %cmp1, %land.rhs ]
  %cond = select i1 %16, i32 6, i32 0
  %idxprom = sext i32 %cond to i64
  %17 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %17, i64 %idxprom
  %18 = load double, double* %arrayidx, align 8, !tbaa !125
  %19 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %19, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  store double %18, double* %x, align 8, !tbaa !135
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 16
  %21 = load i32, i32* %WMode2, align 4, !tbaa !200
  %tobool3 = icmp ne i32 %21, 0
  br i1 %tobool3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %land.end
  %22 = load i32, i32* %narg.addr, align 4, !tbaa !57
  %cmp5 = icmp sgt i32 %22, 6
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %land.end
  %23 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs.4 ]
  %cond7 = select i1 %23, i32 7, i32 1
  %idxprom8 = sext i32 %cond7 to i64
  %24 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %24, i64 %idxprom8
  %25 = load double, double* %arrayidx9, align 8, !tbaa !125
  %26 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width10 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %26, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width10, i32 0, i32 1
  store double %25, double* %y, align 8, !tbaa !136
  %27 = load i32, i32* %narg.addr, align 4, !tbaa !57
  %cmp11 = icmp sgt i32 %27, 8
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.6
  %28 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %28, i64 8
  %29 = load double, double* %arrayidx12, align 8, !tbaa !125
  br label %cond.end

cond.false:                                       ; preds = %land.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi double [ %29, %cond.true ], [ 0.000000e+00, %cond.false ]
  %30 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %30, i32 0, i32 12
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %cond13, double* %x14, align 8, !tbaa !201
  %31 = load i32, i32* %narg.addr, align 4, !tbaa !57
  %cmp15 = icmp sgt i32 %31, 8
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end
  %32 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %32, i64 9
  %33 = load double, double* %arrayidx17, align 8, !tbaa !125
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.16
  %cond20 = phi double [ %33, %cond.true.16 ], [ 0.000000e+00, %cond.false.18 ]
  %34 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %v21 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %34, i32 0, i32 12
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v21, i32 0, i32 1
  store double %cond20, double* %y22, align 8, !tbaa !202
  %35 = load i32, i32* %control.addr, align 4, !tbaa !115
  %cmp23 = icmp eq i32 %35, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %cond.end.19
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 207
  store i32 0, i32* %skip_colors, align 4, !tbaa !184
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 47
  %38 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  %39 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds double, double* %39, i64 0
  %40 = load double, double* %arrayidx25, align 8, !tbaa !125
  %conv = fptrunc double %40 to float
  %conv26 = fpext float %conv to double
  %call27 = call i8* @pprintg1(%struct.stream_s* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), double %conv26) #6
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 11
  %42 = load i32, i32* %FontType, align 4, !tbaa !98
  %cmp28 = icmp eq i32 %42, 53
  br i1 %cmp28, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %43, i32 0, i32 11
  %44 = load i32, i32* %FontType30, align 4, !tbaa !98
  %cmp31 = icmp eq i32 %44, 52
  br i1 %cmp31, label %if.then.41, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType34 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 11
  %46 = load i32, i32* %FontType34, align 4, !tbaa !98
  %cmp35 = icmp eq i32 %46, 54
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType38 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %47, i32 0, i32 11
  %48 = load i32, i32* %FontType38, align 4, !tbaa !98
  %cmp39 = icmp eq i32 %48, 51
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false, %if.then.24
  %49 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %and = and i64 %49, 7
  %sh_prom = trunc i64 %and to i32
  %shr = ashr i32 128, %sh_prom
  %50 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %shr42 = lshr i64 %50, 3
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 6
  %52 = load i8*, i8** %cached, align 8, !tbaa !203
  %arrayidx43 = getelementptr inbounds i8, i8* %52, i64 %shr42
  %53 = load i8, i8* %arrayidx43, align 1, !tbaa !115
  %conv44 = zext i8 %53 to i32
  %or = or i32 %conv44, %shr
  %conv45 = trunc i32 %or to i8
  store i8 %conv45, i8* %arrayidx43, align 1, !tbaa !115
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %lor.lhs.false.37
  br label %if.end.98

if.else:                                          ; preds = %cond.end.19
  %54 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors47 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 207
  store i32 1, i32* %skip_colors47, align 4, !tbaa !184
  %56 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds double, double* %56, i64 4
  %57 = load double, double* %arrayidx48, align 8, !tbaa !125
  %58 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %58, i64 2
  %59 = load double, double* %arrayidx49, align 8, !tbaa !125
  %cmp50 = fcmp olt double %57, %59
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.else
  %60 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %60, i64 2
  %61 = load double, double* %arrayidx53, align 8, !tbaa !125
  store double %61, double* %d, align 8, !tbaa !125
  %62 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds double, double* %62, i64 4
  %63 = load double, double* %arrayidx54, align 8, !tbaa !125
  %64 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds double, double* %64, i64 2
  store double %63, double* %arrayidx55, align 8, !tbaa !125
  %65 = load double, double* %d, align 8, !tbaa !125
  %66 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds double, double* %66, i64 4
  store double %65, double* %arrayidx56, align 8, !tbaa !125
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.else
  %67 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds double, double* %67, i64 5
  %68 = load double, double* %arrayidx58, align 8, !tbaa !125
  %69 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds double, double* %69, i64 3
  %70 = load double, double* %arrayidx59, align 8, !tbaa !125
  %cmp60 = fcmp olt double %68, %70
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.57
  %71 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds double, double* %71, i64 5
  %72 = load double, double* %arrayidx63, align 8, !tbaa !125
  store double %72, double* %d, align 8, !tbaa !125
  %73 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds double, double* %73, i64 3
  %74 = load double, double* %arrayidx64, align 8, !tbaa !125
  %75 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds double, double* %75, i64 5
  store double %74, double* %arrayidx65, align 8, !tbaa !125
  %76 = load double, double* %d, align 8, !tbaa !125
  %77 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds double, double* %77, i64 3
  store double %76, double* %arrayidx66, align 8, !tbaa !125
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.end.57
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 47
  %79 = load %struct.stream_s*, %struct.stream_s** %strm68, align 8, !tbaa !5
  %80 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds double, double* %80, i64 0
  %81 = load double, double* %arrayidx69, align 8, !tbaa !125
  %conv70 = fptrunc double %81 to float
  %conv71 = fpext float %conv70 to double
  %82 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds double, double* %82, i64 2
  %83 = load double, double* %arrayidx72, align 8, !tbaa !125
  %conv73 = fptrunc double %83 to float
  %conv74 = fpext float %conv73 to double
  %84 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds double, double* %84, i64 3
  %85 = load double, double* %arrayidx75, align 8, !tbaa !125
  %conv76 = fptrunc double %85 to float
  %conv77 = fpext float %conv76 to double
  %86 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds double, double* %86, i64 4
  %87 = load double, double* %arrayidx78, align 8, !tbaa !125
  %conv79 = fptrunc double %87 to float
  %conv80 = fpext float %conv79 to double
  %88 = load double*, double** %pw.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds double, double* %88, i64 5
  %89 = load double, double* %arrayidx81, align 8, !tbaa !125
  %conv82 = fptrunc double %89 to float
  %conv83 = fpext float %conv82 to double
  %call84 = call i8* @pprintg6(%struct.stream_s* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), double %conv71, double 0.000000e+00, double %conv74, double %conv77, double %conv80, double %conv83) #6
  %90 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %and85 = and i64 %90, 7
  %sh_prom86 = trunc i64 %and85 to i32
  %shr87 = ashr i32 128, %sh_prom86
  %91 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %shr88 = lshr i64 %91, 3
  %92 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u89 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %92, i32 0, i32 20
  %simple90 = bitcast %union.anon.1* %u89 to %struct.anon.3*
  %s91 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple90, i32 0, i32 7
  %type392 = bitcast %union.anon.4* %s91 to %struct.anon.7*
  %cached93 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type392, i32 0, i32 6
  %93 = load i8*, i8** %cached93, align 8, !tbaa !203
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 %shr88
  %94 = load i8, i8* %arrayidx94, align 1, !tbaa !115
  %conv95 = zext i8 %94 to i32
  %or96 = or i32 %conv95, %shr87
  %conv97 = trunc i32 %or96 to i8
  store i8 %conv97, i8* %arrayidx94, align 1, !tbaa !115
  %95 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.67, %if.end.46
  %96 = load i32, i32* %scale_100.addr, align 4, !tbaa !57
  %tobool99 = icmp ne i32 %96, 0
  br i1 %tobool99, label %if.then.100, label %if.end.107

if.then.100:                                      ; preds = %if.end.98
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %97, i32 0, i32 47
  %98 = load %struct.stream_s*, %struct.stream_s** %strm101, align 8, !tbaa !5
  %call102 = call i32 @stream_puts(%struct.stream_s* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #6
  store i32 %call102, i32* %code, align 4, !tbaa !57
  %99 = load i32, i32* %code, align 4, !tbaa !57
  %cmp103 = icmp slt i32 %99, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.100
  %100 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.then.100
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.105, %if.then
  %101 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_open_aside(%struct.gx_device_pdf_s* %pdev, i32 %rtype, i64 %id, %struct.pdf_resource_s** %ppres, i32 %reserve_object_id, i32 %options) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %rtype.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %reserve_object_id.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %save_strm = alloca %struct.stream_s*, align 8
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %rtype, i32* %rtype.addr, align 4, !tbaa !115
  store i64 %id, i64* %id.addr, align 8, !tbaa !49
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store i32 %reserve_object_id, i32* %reserve_object_id.addr, align 4, !tbaa !57
  store i32 %options, i32* %options.addr, align 4, !tbaa !57
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 47
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %5, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %6 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %6) #2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 47
  %8 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !5
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 146
  %save_strm2 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 4
  store %struct.stream_s* %8, %struct.stream_s** %save_strm2, align 8, !tbaa !204
  %10 = load i32, i32* %rtype.addr, align 4, !tbaa !115
  %cmp = icmp ugt i32 %10, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %rtype.addr, align 4, !tbaa !115
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load i64, i64* %id.addr, align 8, !tbaa !49
  %13 = load i64, i64* %id.addr, align 8, !tbaa !49
  %div = udiv i64 %13, 16
  %add = add i64 %12, %div
  %rem = urem i64 %add, 16
  %14 = load i32, i32* %rtype.addr, align 4, !tbaa !115
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 165
  %arrayidx = getelementptr inbounds [15 x %struct.pdf_resource_list_s], [15 x %struct.pdf_resource_list_s]* %resources, i32 0, i64 %idxprom
  %chains = getelementptr inbounds %struct.pdf_resource_list_s, %struct.pdf_resource_list_s* %arrayidx, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [16 x %struct.pdf_resource_s*], [16 x %struct.pdf_resource_s*]* %chains, i32 0, i64 %rem
  %16 = load i32, i32* %rtype.addr, align 4, !tbaa !115
  %idxprom4 = zext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.gs_memory_struct_type_s*], [0 x %struct.gs_memory_struct_type_s*]* @pdf_resource_type_structs, i32 0, i64 %idxprom4
  %17 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %arrayidx5, align 8, !tbaa !1
  %18 = load i32, i32* %reserve_object_id.addr, align 4, !tbaa !57
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i32 0, i32 -1
  %conv = sext i32 %cond to i64
  %call = call i32 @pdf_alloc_aside(%struct.gx_device_pdf_s* %11, %struct.pdf_resource_s** %arrayidx3, %struct.gs_memory_struct_type_s* %17, %struct.pdf_resource_s** %pres, i64 %conv) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %19 = load i32, i32* %code, align 4, !tbaa !57
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %21 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %21, i32 0, i32 7
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !127
  %call10 = call i32 @cos_become(%struct.cos_object_s* %22, %struct.cos_object_procs_s* @cos_stream_procs) #6
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object11 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %23, i32 0, i32 7
  %24 = load %struct.cos_object_s*, %struct.cos_object_s** %object11, align 8, !tbaa !127
  %25 = bitcast %struct.cos_object_s* %24 to %struct.cos_stream_s*
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call12 = call %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s* %25, %struct.gx_device_pdf_s* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #6
  store %struct.stream_s* %call12, %struct.stream_s** %s, align 8, !tbaa !1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.stream_s* %27, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.9
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 47
  store %struct.stream_s* %28, %struct.stream_s** %strm17, align 8, !tbaa !5
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %31 = load i32, i32* %options.addr, align 4, !tbaa !57
  %or = or i32 %31, 4
  %32 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object18 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %32, i32 0, i32 7
  %33 = load %struct.cos_object_s*, %struct.cos_object_s** %object18, align 8, !tbaa !127
  %id19 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %33, i32 0, i32 1
  %34 = load i64, i64* %id19, align 8, !tbaa !68
  %call20 = call i32 @pdf_append_data_stream_filters(%struct.gx_device_pdf_s* %30, %struct.pdf_data_writer_s* %writer, i32 %or, i64 %34) #6
  store i32 %call20, i32* %code, align 4, !tbaa !57
  %35 = load i32, i32* %code, align 4, !tbaa !57
  %cmp21 = icmp slt i32 %35, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.16
  %36 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 47
  store %struct.stream_s* %36, %struct.stream_s** %strm24, align 8, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.16
  %39 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object26 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %39, i32 0, i32 7
  %40 = load %struct.cos_object_s*, %struct.cos_object_s** %object26, align 8, !tbaa !127
  %41 = bitcast %struct.cos_object_s* %40 to %struct.cos_dict_s*
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm27 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %43 = load %struct.stream_s*, %struct.stream_s** %strm27, align 8, !tbaa !205
  %call28 = call i32 @pdf_put_filters(%struct.cos_dict_s* %41, %struct.gx_device_pdf_s* %42, %struct.stream_s* %43, %struct.pdf_filter_names_s* @pdf_open_aside.fnames) #6
  store i32 %call28, i32* %code, align 4, !tbaa !57
  %44 = load i32, i32* %code, align 4, !tbaa !57
  %cmp29 = icmp slt i32 %44, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.25
  %45 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !1
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 47
  store %struct.stream_s* %45, %struct.stream_s** %strm32, align 8, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.25
  %binary34 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm35 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary34, i32 0, i32 2
  %48 = load %struct.stream_s*, %struct.stream_s** %strm35, align 8, !tbaa !205
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 47
  store %struct.stream_s* %48, %struct.stream_s** %strm36, align 8, !tbaa !5
  %50 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %51 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %50, %struct.pdf_resource_s** %51, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then.23, %if.then.15, %if.then.8
  %52 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %52) #2
  %53 = bitcast %struct.stream_s** %save_strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @pdf_alloc_aside(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, %struct.gs_memory_struct_type_s*, %struct.pdf_resource_s**, i64) #0

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #0

declare %struct.stream_s* @cos_write_stream_alloc(%struct.cos_stream_s*, %struct.gx_device_pdf_s*, i8*) #0

declare i32 @pdf_append_data_stream_filters(%struct.gx_device_pdf_s*, %struct.pdf_data_writer_s*, i32, i64) #0

declare i32 @pdf_put_filters(%struct.cos_dict_s*, %struct.gx_device_pdf_s*, %struct.stream_s*, %struct.pdf_filter_names_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_close_aside(%struct.gx_device_pdf_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pcs = alloca %struct.cos_stream_s*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s* %4) #6
  store %struct.cos_stream_s* %call, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %call1 = call i32 @s_close_filters(%struct.stream_s** %s, %struct.stream_s* null) #6
  store i32 %call1, i32* %status, align 4, !tbaa !57
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 146
  %save_strm = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %streams, i32 0, i32 4
  %7 = load %struct.stream_s*, %struct.stream_s** %save_strm, align 8, !tbaa !204
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 47
  store %struct.stream_s* %7, %struct.stream_s** %strm2, align 8, !tbaa !5
  %9 = load i32, i32* %status, align 4, !tbaa !57
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.cos_stream_s*, %struct.cos_stream_s** %pcs, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.cos_stream_s, %struct.cos_stream_s* %10, i32 0, i32 6
  store i8 0, i8* %is_open, align 1, !tbaa !208
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.cos_stream_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct.cos_stream_s* @cos_stream_from_pipeline(%struct.stream_s*) #0

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #0

declare %struct.pdf_text_state_s* @pdf_text_state_alloc(%struct.gs_memory_s*) #0

declare i32 @pdf_save_viewer_state(%struct.gx_device_pdf_s*, %struct.stream_s*) #0

declare void @pdf_text_state_copy(%struct.pdf_text_state_s*, %struct.pdf_text_state_s*) #0

declare void @pdf_set_text_state_default(%struct.pdf_text_state_s*) #0

declare void @pdf_reset_graphics(%struct.gx_device_pdf_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %sbstack_ptr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %sbstack_ptr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 199
  %4 = load i32, i32* %sbstack_depth, align 4, !tbaa !163
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_open_contents(%struct.gx_device_pdf_s* %5, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 199
  %7 = load i32, i32* %sbstack_depth1, align 4, !tbaa !163
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %sbstack_ptr, align 4, !tbaa !57
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 194
  %9 = load i32, i32* %vgstack_depth, align 4, !tbaa !178
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 195
  %11 = load i32, i32* %vgstack_bottom, align 4, !tbaa !176
  %cmp2 = icmp sgt i32 %9, %11
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 47
  %14 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !5
  %call3 = call i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s* %12, %struct.stream_s* %14) #6
  store i32 %call3, i32* %code1, align 4, !tbaa !57
  %15 = load i32, i32* %code, align 4, !tbaa !57
  %cmp4 = icmp sge i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %16 = load i32, i32* %code1, align 4, !tbaa !57
  store i32 %16, i32* %code, align 4, !tbaa !57
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 187
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8, !tbaa !171
  %cmp7 = icmp ne %struct.gx_path_s* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %while.end
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 187
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path9, align 8, !tbaa !171
  call void @gx_path_free(%struct.gx_path_s* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0)) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %while.end
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call11 = call i32 @pdf_close_aside(%struct.gx_device_pdf_s* %21) #6
  store i32 %call11, i32* %code1, align 4, !tbaa !57
  %22 = load i32, i32* %code1, align 4, !tbaa !57
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.10
  %23 = load i32, i32* %code, align 4, !tbaa !57
  %cmp13 = icmp sge i32 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %code1, align 4, !tbaa !57
  store i32 %24, i32* %code, align 4, !tbaa !57
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.10
  %25 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 200
  %27 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack, align 8, !tbaa !165
  %arrayidx = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %27, i64 %idxprom
  %context = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx, i32 0, i32 0
  %28 = load i32, i32* %context, align 4, !tbaa !169
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %context16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 156
  store i32 %28, i32* %context16, align 4, !tbaa !168
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 160
  %31 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !52
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %31, i32 0, i32 2
  %32 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !170
  %33 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 200
  %35 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack18, align 8, !tbaa !165
  %arrayidx19 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %35, i64 %idxprom17
  %text_state20 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx19, i32 0, i32 1
  %36 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state20, align 8, !tbaa !166
  call void @pdf_text_state_copy(%struct.pdf_text_state_s* %32, %struct.pdf_text_state_s* %36) #6
  %37 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 200
  %39 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack22, align 8, !tbaa !165
  %arrayidx23 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %39, i64 %idxprom21
  %clip_path24 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx23, i32 0, i32 2
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path24, align 8, !tbaa !172
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 187
  store %struct.gx_path_s* %40, %struct.gx_path_s** %clip_path25, align 8, !tbaa !171
  %42 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom26 = sext i32 %42 to i64
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 200
  %44 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack27, align 8, !tbaa !165
  %arrayidx28 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %44, i64 %idxprom26
  %clip_path29 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx28, i32 0, i32 2
  store %struct.gx_path_s* null, %struct.gx_path_s** %clip_path29, align 8, !tbaa !172
  %45 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom30 = sext i32 %45 to i64
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack31 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 200
  %47 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack31, align 8, !tbaa !165
  %arrayidx32 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %47, i64 %idxprom30
  %clip_path_id = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx32, i32 0, i32 3
  %48 = load i64, i64* %clip_path_id, align 8, !tbaa !174
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %clip_path_id33 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %49, i32 0, i32 59
  store i64 %48, i64* %clip_path_id33, align 8, !tbaa !173
  %50 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom34 = sext i32 %50 to i64
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack35 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 200
  %52 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack35, align 8, !tbaa !165
  %arrayidx36 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %52, i64 %idxprom34
  %vgstack_bottom37 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx36, i32 0, i32 4
  %53 = load i32, i32* %vgstack_bottom37, align 4, !tbaa !177
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %vgstack_bottom38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 195
  store i32 %53, i32* %vgstack_bottom38, align 4, !tbaa !176
  %55 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom39 = sext i32 %55 to i64
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 200
  %57 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack40, align 8, !tbaa !165
  %arrayidx41 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %57, i64 %idxprom39
  %strm42 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx41, i32 0, i32 5
  %58 = load %struct.stream_s*, %struct.stream_s** %strm42, align 8, !tbaa !179
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 47
  store %struct.stream_s* %58, %struct.stream_s** %strm43, align 8, !tbaa !5
  %60 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom44 = sext i32 %60 to i64
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 200
  %62 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack45, align 8, !tbaa !165
  %arrayidx46 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %62, i64 %idxprom44
  %strm47 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx46, i32 0, i32 5
  store %struct.stream_s* null, %struct.stream_s** %strm47, align 8, !tbaa !179
  %63 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom48 = sext i32 %63 to i64
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack49 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 200
  %65 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack49, align 8, !tbaa !165
  %arrayidx50 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %65, i64 %idxprom48
  %procsets = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx50, i32 0, i32 7
  %66 = load i32, i32* %procsets, align 4, !tbaa !181
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 159
  store i32 %66, i32* %procsets51, align 4, !tbaa !180
  %68 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom52 = sext i32 %68 to i64
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack53 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 200
  %70 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack53, align 8, !tbaa !165
  %arrayidx54 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %70, i64 %idxprom52
  %substream_Resources = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx54, i32 0, i32 6
  %71 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !183
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 205
  store %struct.cos_dict_s* %71, %struct.cos_dict_s** %substream_Resources55, align 8, !tbaa !182
  %73 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom56 = sext i32 %73 to i64
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack57 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 200
  %75 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack57, align 8, !tbaa !165
  %arrayidx58 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %75, i64 %idxprom56
  %substream_Resources59 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx58, i32 0, i32 6
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %substream_Resources59, align 8, !tbaa !183
  %76 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom60 = sext i32 %76 to i64
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack61 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %77, i32 0, i32 200
  %78 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack61, align 8, !tbaa !165
  %arrayidx62 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %78, i64 %idxprom60
  %skip_colors = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx62, i32 0, i32 8
  %79 = load i32, i32* %skip_colors, align 4, !tbaa !185
  %80 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %skip_colors63 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %80, i32 0, i32 207
  store i32 %79, i32* %skip_colors63, align 4, !tbaa !184
  %81 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom64 = sext i32 %81 to i64
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack65 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 200
  %83 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack65, align 8, !tbaa !165
  %arrayidx66 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %83, i64 %idxprom64
  %font3 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx66, i32 0, i32 9
  %84 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %font3, align 8, !tbaa !187
  %85 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %font367 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %85, i32 0, i32 209
  store %struct.pdf_resource_s* %84, %struct.pdf_resource_s** %font367, align 8, !tbaa !186
  %86 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom68 = sext i32 %86 to i64
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack69 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %87, i32 0, i32 200
  %88 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack69, align 8, !tbaa !165
  %arrayidx70 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %88, i64 %idxprom68
  %font371 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx70, i32 0, i32 9
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %font371, align 8, !tbaa !187
  %89 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom72 = sext i32 %89 to i64
  %90 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack73 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %90, i32 0, i32 200
  %91 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack73, align 8, !tbaa !165
  %arrayidx74 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %91, i64 %idxprom72
  %accumulating_substream_resource = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx74, i32 0, i32 10
  %92 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !189
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource75 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 210
  store %struct.pdf_resource_s* %92, %struct.pdf_resource_s** %accumulating_substream_resource75, align 8, !tbaa !188
  %94 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom76 = sext i32 %94 to i64
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %95, i32 0, i32 200
  %96 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack77, align 8, !tbaa !165
  %arrayidx78 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %96, i64 %idxprom76
  %accumulating_substream_resource79 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx78, i32 0, i32 10
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %accumulating_substream_resource79, align 8, !tbaa !189
  %97 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom80 = sext i32 %97 to i64
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack81 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 200
  %99 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack81, align 8, !tbaa !165
  %arrayidx82 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %99, i64 %idxprom80
  %charproc_just_accumulated = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx82, i32 0, i32 11
  %100 = load i32, i32* %charproc_just_accumulated, align 4, !tbaa !191
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated83 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %101, i32 0, i32 214
  store i32 %100, i32* %charproc_just_accumulated83, align 4, !tbaa !190
  %102 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom84 = sext i32 %102 to i64
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack85 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %103, i32 0, i32 200
  %104 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack85, align 8, !tbaa !165
  %arrayidx86 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %104, i64 %idxprom84
  %accumulating_a_global_object = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx86, i32 0, i32 12
  %105 = load i32, i32* %accumulating_a_global_object, align 4, !tbaa !193
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_a_global_object87 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 216
  store i32 %105, i32* %accumulating_a_global_object87, align 4, !tbaa !192
  %107 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom88 = sext i32 %107 to i64
  %108 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack89 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %108, i32 0, i32 200
  %109 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack89, align 8, !tbaa !165
  %arrayidx90 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %109, i64 %idxprom88
  %pres_soft_mask_dict = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx90, i32 0, i32 13
  %110 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !195
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict91 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %111, i32 0, i32 226
  store %struct.pdf_resource_s* %110, %struct.pdf_resource_s** %pres_soft_mask_dict91, align 8, !tbaa !194
  %112 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %objname = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %112, i32 0, i32 227
  %113 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom92 = sext i32 %113 to i64
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %114, i32 0, i32 200
  %115 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack93, align 8, !tbaa !165
  %arrayidx94 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %115, i64 %idxprom92
  %objname95 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx94, i32 0, i32 14
  %116 = bitcast %struct.gs_const_string_s* %objname to i8*
  %117 = bitcast %struct.gs_const_string_s* %objname95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 16, i32 8, i1 false), !tbaa.struct !148
  %118 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %idxprom96 = sext i32 %118 to i64
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack97 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 200
  %120 = load %struct.pdf_substream_save_s*, %struct.pdf_substream_save_s** %sbstack97, align 8, !tbaa !165
  %arrayidx98 = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %120, i64 %idxprom96
  %last_charpath_op = getelementptr inbounds %struct.pdf_substream_save_s, %struct.pdf_substream_save_s* %arrayidx98, i32 0, i32 15
  %121 = load i32, i32* %last_charpath_op, align 4, !tbaa !197
  %122 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %last_charpath_op99 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %122, i32 0, i32 230
  store i32 %121, i32* %last_charpath_op99, align 4, !tbaa !196
  %123 = load i32, i32* %sbstack_ptr, align 4, !tbaa !57
  %124 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth100 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %124, i32 0, i32 199
  store i32 %123, i32* %sbstack_depth100, align 4, !tbaa !163
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call101 = call i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s* %125, %struct.stream_s* null) #6
  store i32 %call101, i32* %code1, align 4, !tbaa !57
  %126 = load i32, i32* %code1, align 4, !tbaa !57
  %cmp102 = icmp slt i32 %126, 0
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.106

land.lhs.true.103:                                ; preds = %if.end.15
  %127 = load i32, i32* %code, align 4, !tbaa !57
  %cmp104 = icmp sge i32 %127, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.103
  %128 = load i32, i32* %code1, align 4, !tbaa !57
  store i32 %128, i32* %code, align 4, !tbaa !57
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %land.lhs.true.103, %if.end.15
  %129 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then
  %130 = bitcast i32* %sbstack_ptr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = load i32, i32* %retval
  ret i32 %133
}

declare i32 @pdf_open_contents(%struct.gx_device_pdf_s*, i32) #0

declare i32 @pdf_restore_viewer_state(%struct.gx_device_pdf_s*, %struct.stream_s*) #0

declare void @gx_path_free(%struct.gx_path_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_end_charproc_accum(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, %struct.pdf_char_glyph_pairs_s* %cgp, i64 %glyph, i64 %output_char_code, %struct.gs_const_string_s* %gnstr) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %cgp.addr = alloca %struct.pdf_char_glyph_pairs_s*, align 8
  %glyph.addr = alloca i64, align 8
  %output_char_code.addr = alloca i64, align 8
  %gnstr.addr = alloca %struct.gs_const_string_s*, align 8
  %code = alloca i32, align 4
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %ch = alloca i64, align 8
  %checking_glyph_variation = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdfont1 = alloca %struct.pdf_font_resource_s*, align 8
  %base_font = alloca %struct.gs_font_s*, align 8
  %below = alloca %struct.gs_font_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_char_glyph_pairs_s* %cgp, %struct.pdf_char_glyph_pairs_s** %cgp.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !49
  store i64 %output_char_code, i64* %output_char_code.addr, align 8, !tbaa !49
  store %struct.gs_const_string_s* %gnstr, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 210
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !188
  store %struct.pdf_resource_s* %3, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %6 = bitcast %struct.pdf_resource_s* %5 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %6, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %7 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i64, i64* %output_char_code.addr, align 8, !tbaa !49
  store i64 %9, i64* %ch, align 8, !tbaa !49
  %10 = bitcast i32* %checking_glyph_variation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %checking_glyph_variation, align 4, !tbaa !57
  %11 = load i64, i64* %ch, align 8, !tbaa !49
  %cmp = icmp eq i64 %11, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %ch, align 8, !tbaa !49
  %cmp1 = icmp uge i64 %12, 256
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.3:                                         ; preds = %if.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %13, %struct.gs_font_s* %14, %struct.pdf_font_resource_s** %pdfont, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %15 = load i32, i32* %code, align 4, !tbaa !57
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %16 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.6:                                         ; preds = %if.end.3
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %font3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 209
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %font3, align 8, !tbaa !186
  %20 = bitcast %struct.pdf_resource_s* %19 to %struct.pdf_font_resource_s*
  %cmp7 = icmp ne %struct.pdf_font_resource_s* %17, %20
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.9:                                         ; preds = %if.end.6
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call10 = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %21) #6
  store i32 %call10, i32* %code, align 4, !tbaa !57
  %22 = load i32, i32* %code, align 4, !tbaa !57
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %23 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.13:                                        ; preds = %if.end.9
  %24 = load i64, i64* %ch, align 8, !tbaa !49
  %shr = lshr i64 %24, 3
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 15
  %26 = load i8*, i8** %used, align 8, !tbaa !142
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %shr
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !115
  %conv = zext i8 %27 to i32
  %28 = load i64, i64* %ch, align 8, !tbaa !49
  %and = and i64 %28, 7
  %sh_prom = trunc i64 %and to i32
  %shr14 = ashr i32 128, %sh_prom
  %and15 = and i32 %conv, %shr14
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %if.end.13
  %29 = load i64, i64* %ch, align 8, !tbaa !49
  %shr16 = lshr i64 %29, 3
  %30 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %30, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 6
  %31 = load i8*, i8** %cached, align 8, !tbaa !203
  %arrayidx17 = getelementptr inbounds i8, i8* %31, i64 %shr16
  %32 = load i8, i8* %arrayidx17, align 1, !tbaa !115
  %conv18 = zext i8 %32 to i32
  %33 = load i64, i64* %ch, align 8, !tbaa !49
  %and19 = and i64 %33, 7
  %sh_prom20 = trunc i64 %and19 to i32
  %shr21 = ashr i32 128, %sh_prom20
  %and22 = and i32 %conv18, %shr21
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end.76, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.13
  %34 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %35, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  store i32 1, i32* %checking_glyph_variation, align 4, !tbaa !57
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %37 = load %struct.pdf_char_glyph_pairs_s*, %struct.pdf_char_glyph_pairs_s** %cgp.addr, align 8, !tbaa !1
  %38 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %39 = load i64, i64* %ch, align 8, !tbaa !49
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call25 = call i32 @pdf_find_same_charproc(%struct.gx_device_pdf_s* %36, %struct.pdf_font_resource_s** %pdfont, %struct.pdf_char_glyph_pairs_s* %37, %struct.pdf_char_proc_s** %pcp, i64 %38, i64 %39, %struct.gs_font_s* %40) #6
  store i32 %call25, i32* %code, align 4, !tbaa !57
  %41 = load i32, i32* %code, align 4, !tbaa !57
  %cmp26 = icmp slt i32 %41, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  %42 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.29:                                        ; preds = %if.then.24
  %43 = load i32, i32* %code, align 4, !tbaa !57
  %cmp30 = icmp ne i32 %43, 0
  br i1 %cmp30, label %if.then.32, label %if.end.53

if.then.32:                                       ; preds = %if.end.29
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %45 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call33 = call i32 @pdf_cancel_resource(%struct.gx_device_pdf_s* %44, %struct.pdf_resource_s* %45, i32 7) #6
  store i32 %call33, i32* %code, align 4, !tbaa !57
  %46 = load i32, i32* %code, align 4, !tbaa !57
  %cmp34 = icmp slt i32 %46, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %47 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.37:                                        ; preds = %if.then.32
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_forget_resource(%struct.gx_device_pdf_s* %48, %struct.pdf_resource_s* %49, i32 7) #6
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmp38 = icmp ne %struct.pdf_font_resource_s* %50, %51
  br i1 %cmp38, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %if.end.37
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %54 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call41 = call i32 @pdf_attach_font_resource(%struct.gx_device_pdf_s* %52, %struct.gs_font_s* %53, %struct.pdf_font_resource_s* %54) #6
  store i32 %call41, i32* %code, align 4, !tbaa !57
  %55 = load i32, i32* %code, align 4, !tbaa !57
  %cmp42 = icmp slt i32 %55, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  %56 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.45:                                        ; preds = %if.then.40
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call46 = call i32 @pdf_char_widths_from_charprocs(%struct.gx_device_pdf_s* %57, %struct.gs_font_s* %58) #6
  store i32 %call46, i32* %code, align 4, !tbaa !57
  %59 = load i32, i32* %code, align 4, !tbaa !57
  %cmp47 = icmp slt i32 %59, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  %60 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.50:                                        ; preds = %if.end.45
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 214
  store i32 1, i32* %charproc_just_accumulated, align 4, !tbaa !190
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %64 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %65 = load i64, i64* %ch, align 8, !tbaa !49
  %66 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %67 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %call52 = call i32 @complete_adding_char(%struct.gx_device_pdf_s* %62, %struct.gs_font_s* %63, i64 %64, i64 %65, %struct.pdf_char_proc_s* %66, %struct.gs_const_string_s* %67) #6
  store i32 %call52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.53:                                        ; preds = %if.end.29
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %70 = load i64, i64* %ch, align 8, !tbaa !49
  %call54 = call i32 @pdf_is_charproc_defined(%struct.gx_device_pdf_s* %68, %struct.pdf_font_resource_s* %69, i64 %70) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %if.end.53
  %71 = bitcast %struct.gs_font_s** %base_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #2
  %72 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %72, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %73 = bitcast %struct.gs_font_s** %below to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.56
  %74 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %74, i32 0, i32 7
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !210
  store %struct.gs_font_s* %75, %struct.gs_font_s** %below, align 8, !tbaa !1
  %76 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %cmp57 = icmp ne %struct.gs_font_s* %75, %76
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %77, i32 0, i32 20
  %same_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 3
  %78 = load i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)** %same_font, align 8, !tbaa !211
  %79 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %80 = load %struct.gs_font_s*, %struct.gs_font_s** %below, align 8, !tbaa !1
  %call59 = call i32 %78(%struct.gs_font_s* %79, %struct.gs_font_s* %80, i32 1) #6
  %tobool60 = icmp ne i32 %call59, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %81 = phi i1 [ false, %while.cond ], [ %tobool60, %land.rhs ]
  br i1 %81, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %82 = load %struct.gs_font_s*, %struct.gs_font_s** %below, align 8, !tbaa !1
  store %struct.gs_font_s* %82, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %84 = load %struct.gs_font_s*, %struct.gs_font_s** %base_font, align 8, !tbaa !1
  %call61 = call i32 @pdf_make_font3_resource(%struct.gx_device_pdf_s* %83, %struct.gs_font_s* %84, %struct.pdf_font_resource_s** %pdfont) #6
  store i32 %call61, i32* %code, align 4, !tbaa !57
  %85 = load i32, i32* %code, align 4, !tbaa !57
  %cmp62 = icmp slt i32 %85, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.end
  %86 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %while.end
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %88 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %89 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call66 = call i32 @pdf_attach_font_resource(%struct.gx_device_pdf_s* %87, %struct.gs_font_s* %88, %struct.pdf_font_resource_s* %89) #6
  store i32 %call66, i32* %code, align 4, !tbaa !57
  %90 = load i32, i32* %code, align 4, !tbaa !57
  %cmp67 = icmp slt i32 %90, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  %91 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.then.69, %if.then.64
  %92 = bitcast %struct.gs_font_s** %below to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast %struct.gs_font_s** %base_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.73 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.72

if.end.72:                                        ; preds = %cleanup.cont, %if.end.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.73

cleanup.73:                                       ; preds = %if.end.72, %cleanup, %if.end.51, %if.then.49, %if.then.44, %if.then.36, %if.then.28
  %94 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %cleanup.dest.74 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.74, label %cleanup.82 [
    i32 0, label %cleanup.cont.75
  ]

cleanup.cont.75:                                  ; preds = %cleanup.73
  br label %if.end.76

if.end.76:                                        ; preds = %cleanup.cont.75, %lor.lhs.false
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %96 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %95, %struct.pdf_resource_s* %96, i64 0) #6
  %97 = load i32, i32* %checking_glyph_variation, align 4, !tbaa !57
  %tobool77 = icmp ne i32 %97, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.76
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated79 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %98, i32 0, i32 214
  store i32 1, i32* %charproc_just_accumulated79, align 4, !tbaa !190
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.76
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %101 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %102 = load i64, i64* %ch, align 8, !tbaa !49
  %103 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %104 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %call81 = call i32 @complete_adding_char(%struct.gx_device_pdf_s* %99, %struct.gs_font_s* %100, i64 %101, i64 %102, %struct.pdf_char_proc_s* %103, %struct.gs_const_string_s* %104) #6
  store i32 %call81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.80, %cleanup.73, %if.then.12, %if.then.8, %if.then.5, %if.then.2, %if.then
  %105 = bitcast i32* %checking_glyph_variation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_find_same_charproc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppdfont, %struct.pdf_char_glyph_pairs_s* %cgp, %struct.pdf_char_proc_s** %ppcp, i64 %glyph, i64 %char_code, %struct.gs_font_s* %font) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppdfont.addr = alloca %struct.pdf_font_resource_s**, align 8
  %cgp.addr = alloca %struct.pdf_char_glyph_pairs_s*, align 8
  %ppcp.addr = alloca %struct.pdf_char_proc_s**, align 8
  %glyph.addr = alloca i64, align 8
  %char_code.addr = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %data = alloca %struct.charproc_compatibility_data_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppdfont, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  store %struct.pdf_char_glyph_pairs_s* %cgp, %struct.pdf_char_glyph_pairs_s** %cgp.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s** %ppcp, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !49
  store i64 %char_code, i64* %char_code.addr, align 8, !tbaa !49
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.charproc_compatibility_data_s* %data to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.pdf_char_glyph_pairs_s*, %struct.pdf_char_glyph_pairs_s** %cgp.addr, align 8, !tbaa !1
  %cgp1 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 0
  store %struct.pdf_char_glyph_pairs_s* %2, %struct.pdf_char_glyph_pairs_s** %cgp1, align 8, !tbaa !212
  %3 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %3, align 8, !tbaa !1
  %pdfont = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 1
  store %struct.pdf_font_resource_s* %4, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !214
  %5 = load i64, i64* %char_code.addr, align 8, !tbaa !49
  %char_code2 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 2
  store i64 %5, i64* %char_code2, align 8, !tbaa !215
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %glyph3 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 3
  store i64 %6, i64* %glyph3, align 8, !tbaa !216
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font4 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 4
  store %struct.gs_font_s* %7, %struct.gs_font_s** %font4, align 8, !tbaa !217
  %8 = bitcast %struct.charproc_compatibility_data_s* %data to i8*
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %find_resource_param = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 229
  store i8* %8, i8** %find_resource_param, align 8, !tbaa !218
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  %12 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %call = call i32 @pdf_find_same_charproc_aux(%struct.gx_device_pdf_s* %10, %struct.pdf_font_resource_s** %11, %struct.pdf_char_proc_s** %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %find_resource_param5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 229
  store i8* null, i8** %find_resource_param5, align 8, !tbaa !218
  %pdfont6 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %data, i32 0, i32 1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont6, align 8, !tbaa !214
  %15 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %14, %struct.pdf_font_resource_s** %15, align 8, !tbaa !1
  %16 = load i32, i32* %code, align 4, !tbaa !57
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.charproc_compatibility_data_s* %data to i8*
  call void @llvm.lifetime.end(i64 40, i8* %18) #2
  ret i32 %16
}

declare i32 @pdf_cancel_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i32) #0

declare void @pdf_forget_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i32) #0

declare i32 @pdf_attach_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_char_widths_from_charprocs(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %real_widths = alloca double*, align 8
  %glyph_usage = alloca i8*, align 8
  %char_cache_size = alloca i32, align 4
  %width_cache_size = alloca i32, align 4
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %ch = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %7, %struct.gs_font_s* %8, %struct.pdf_font_resource_s** %pdfont, i8** %glyph_usage, double** %real_widths, i32* %char_cache_size, i32* %width_cache_size) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %9 = load i32, i32* %code, align 4, !tbaa !57
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %12 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %12, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.pdf_char_proc_ownership_s* %13, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %15, i32 0, i32 0
  %16 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %char_proc, align 8, !tbaa !61
  store %struct.pdf_char_proc_s* %16, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %17 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %18, i32 0, i32 4
  %19 = load i64, i64* %char_code, align 8, !tbaa !59
  store i64 %19, i64* %ch, align 8, !tbaa !49
  %20 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %20, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  %21 = load double, double* %x, align 8, !tbaa !135
  %22 = load i64, i64* %ch, align 8, !tbaa !49
  %mul = mul i64 %22, 2
  %23 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %23, i64 %mul
  store double %21, double* %arrayidx, align 8, !tbaa !125
  %24 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %real_width2 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %24, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width2, i32 0, i32 1
  %25 = load double, double* %y, align 8, !tbaa !136
  %26 = load i64, i64* %ch, align 8, !tbaa !49
  %mul3 = mul i64 %26, 2
  %add = add i64 %mul3, 1
  %27 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %27, i64 %add
  store double %25, double* %arrayidx4, align 8, !tbaa !125
  %28 = load i64, i64* %ch, align 8, !tbaa !49
  %and = and i64 %28, 7
  %sh_prom = trunc i64 %and to i32
  %shr = ashr i32 128, %sh_prom
  %29 = load i64, i64* %ch, align 8, !tbaa !49
  %div = udiv i64 %29, 8
  %30 = load i8*, i8** %glyph_usage, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %30, i64 %div
  %31 = load i8, i8* %arrayidx5, align 1, !tbaa !115
  %conv = zext i8 %31 to i32
  %or = or i32 %conv, %shr
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* %arrayidx5, align 1, !tbaa !115
  %32 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %34, i32 0, i32 2
  %35 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %35, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @complete_adding_char(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, i64 %glyph, i64 %ch, %struct.pdf_char_proc_s* %pcp, %struct.gs_const_string_s* %gnstr) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %pcp.addr = alloca %struct.pdf_char_proc_s*, align 8
  %gnstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %real_widths = alloca double*, align 8
  %glyph_usage = alloca i8*, align 8
  %char_cache_size = alloca i32, align 4
  %width_cache_size = alloca i32, align 4
  %pet = alloca %struct.pdf_encoding_element_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !49
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !49
  store %struct.pdf_char_proc_s* %pcp, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %gnstr, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %7, %struct.gs_font_s* %8, %struct.pdf_font_resource_s** %pdfont, i8** %glyph_usage, double** %real_widths, i32* %char_cache_size, i32* %width_cache_size) #6
  store i32 %call, i32* %code, align 4, !tbaa !57
  %9 = load i32, i32* %code, align 4, !tbaa !57
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %13 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %14 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %15 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %16 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_attach_charproc(%struct.gx_device_pdf_s* %11, %struct.pdf_font_resource_s* %12, %struct.pdf_char_proc_s* %13, i64 %14, i64 %15, %struct.gs_const_string_s* %16) #6
  store i32 %call1, i32* %code, align 4, !tbaa !57
  %17 = load i32, i32* %code, align 4, !tbaa !57
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %19 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %20 = load i32, i32* %char_cache_size, align 4, !tbaa !57
  %conv = sext i32 %20 to i64
  %cmp5 = icmp uge i64 %19, %conv
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %21 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %22 = load i32, i32* %width_cache_size, align 4, !tbaa !57
  %conv7 = sext i32 %22 to i64
  %cmp8 = icmp uge i64 %21, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.4
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %23 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %24 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %24, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %25 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %25, i64 %23
  store %struct.pdf_encoding_element_s* %arrayidx, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %26 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %26, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  %27 = load double, double* %x, align 8, !tbaa !135
  %28 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 14
  %30 = load double*, double** %Widths, align 8, !tbaa !124
  %arrayidx12 = getelementptr inbounds double, double* %30, i64 %28
  store double %27, double* %arrayidx12, align 8, !tbaa !125
  %31 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %real_width13 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %31, i32 0, i32 11
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width13, i32 0, i32 0
  %32 = load double, double* %x14, align 8, !tbaa !135
  %33 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %mul = mul i64 %33, 2
  %34 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %34, i64 %mul
  store double %32, double* %arrayidx15, align 8, !tbaa !125
  %35 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %real_width16 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %35, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width16, i32 0, i32 1
  %36 = load double, double* %y, align 8, !tbaa !136
  %37 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %mul17 = mul i64 %37, 2
  %add = add i64 %mul17, 1
  %38 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %38, i64 %add
  store double %36, double* %arrayidx18, align 8, !tbaa !125
  %39 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %and = and i64 %39, 7
  %sh_prom = trunc i64 %and to i32
  %shr = ashr i32 128, %sh_prom
  %40 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %div = udiv i64 %40, 8
  %41 = load i8*, i8** %glyph_usage, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %41, i64 %div
  %42 = load i8, i8* %arrayidx19, align 1, !tbaa !115
  %conv20 = zext i8 %42 to i32
  %or = or i32 %conv20, %shr
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1, !tbaa !115
  %43 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %and22 = and i64 %43, 7
  %sh_prom23 = trunc i64 %and22 to i32
  %shr24 = ashr i32 128, %sh_prom23
  %44 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %shr25 = lshr i64 %44, 3
  %45 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %45, i32 0, i32 15
  %46 = load i8*, i8** %used, align 8, !tbaa !142
  %arrayidx26 = getelementptr inbounds i8, i8* %46, i64 %shr25
  %47 = load i8, i8* %arrayidx26, align 1, !tbaa !115
  %conv27 = zext i8 %47 to i32
  %or28 = or i32 %conv27, %shr24
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %arrayidx26, align 1, !tbaa !115
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 20
  %simple31 = bitcast %union.anon.1* %u30 to %struct.anon.3*
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple31, i32 0, i32 5
  %49 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !219
  %cmp32 = icmp ne %struct.gs_point_s* %49, null
  br i1 %cmp32, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.11
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %50, i32 0, i32 16
  %51 = load i32, i32* %WMode, align 4, !tbaa !200
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %land.lhs.true
  %52 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %v35 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %52, i32 0, i32 12
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v35, i32 0, i32 0
  %53 = load double, double* %x36, align 8, !tbaa !201
  %54 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u37 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 20
  %simple38 = bitcast %union.anon.1* %u37 to %struct.anon.3*
  %v39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple38, i32 0, i32 5
  %56 = load %struct.gs_point_s*, %struct.gs_point_s** %v39, align 8, !tbaa !219
  %arrayidx40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %56, i64 %54
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx40, i32 0, i32 0
  store double %53, double* %x41, align 8, !tbaa !220
  %57 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp.addr, align 8, !tbaa !1
  %v42 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %57, i32 0, i32 12
  %x43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v42, i32 0, i32 0
  %58 = load double, double* %x43, align 8, !tbaa !201
  %59 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %60 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u44 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %60, i32 0, i32 20
  %simple45 = bitcast %union.anon.1* %u44 to %struct.anon.3*
  %v46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple45, i32 0, i32 5
  %61 = load %struct.gs_point_s*, %struct.gs_point_s** %v46, align 8, !tbaa !219
  %arrayidx47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %61, i64 %59
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx47, i32 0, i32 1
  store double %58, double* %y48, align 8, !tbaa !221
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.34, %land.lhs.true, %if.end.11
  %62 = load i64, i64* %glyph.addr, align 8, !tbaa !49
  %63 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph50 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %63, i32 0, i32 0
  store i64 %62, i64* %glyph50, align 8, !tbaa !111
  %64 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %64, i32 0, i32 1
  %65 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gs_const_string_s* %str to i8*
  %67 = bitcast %struct.gs_const_string_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !tbaa.struct !148
  %68 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %is_difference = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %68, i32 0, i32 2
  store i32 1, i32* %is_difference, align 4, !tbaa !122
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u51 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 20
  %simple52 = bitcast %union.anon.1* %u51 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple52, i32 0, i32 1
  %70 = load i32, i32* %LastChar, align 4, !tbaa !117
  %71 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %conv53 = trunc i64 %71 to i32
  %cmp54 = icmp slt i32 %70, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.49
  %72 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %conv57 = trunc i64 %72 to i32
  %73 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u58 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %73, i32 0, i32 20
  %simple59 = bitcast %union.anon.1* %u58 to %struct.anon.3*
  %LastChar60 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple59, i32 0, i32 1
  store i32 %conv57, i32* %LastChar60, align 4, !tbaa !117
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %if.end.49
  %74 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %74, i32 0, i32 20
  %simple63 = bitcast %union.anon.1* %u62 to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple63, i32 0, i32 0
  %75 = load i32, i32* %FirstChar, align 4, !tbaa !116
  %76 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %conv64 = trunc i64 %76 to i32
  %cmp65 = icmp sgt i32 %75, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.61
  %77 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %conv68 = trunc i64 %77 to i32
  %78 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u69 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %78, i32 0, i32 20
  %simple70 = bitcast %union.anon.1* %u69 to %struct.anon.3*
  %FirstChar71 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple70, i32 0, i32 0
  store i32 %conv68, i32* %FirstChar71, align 4, !tbaa !116
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then.10, %if.then.3, %if.then
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_is_charproc_defined(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i64 %ch) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch.addr = alloca i64, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !49
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %2 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %2, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_char_proc_ownership_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %4, i32 0, i32 4
  %5 = load i64, i64* %char_code, align 8, !tbaa !59
  %6 = load i64, i64* %ch.addr, align 8, !tbaa !49
  %cmp1 = icmp eq i64 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %7, i32 0, i32 2
  %8 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %8, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @pdf_make_font3_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**) #0

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_add_procsets(%struct.cos_dict_s* %pcd, i32 %procsets) #1 {
entry:
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %procsets.addr = alloca i32, align 4
  %str = alloca [33 x i8], align 16
  %v = alloca %struct.cos_value_s, align 8
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i32 %procsets, i32* %procsets.addr, align 4, !tbaa !115
  %0 = bitcast [33 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 33, i8* %0) #2
  %1 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #7
  %2 = load i32, i32* %procsets.addr, align 4, !tbaa !115
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call2 = call i8* @strcat(i8* %arraydecay1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %procsets.addr, align 4, !tbaa !115
  %and3 = and i32 %3, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call7 = call i8* @strcat(i8* %arraydecay6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %4 = load i32, i32* %procsets.addr, align 4, !tbaa !115
  %and9 = and i32 %4, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %arraydecay12 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call13 = call i8* @strcat(i8* %arraydecay12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #7
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %5 = load i32, i32* %procsets.addr, align 4, !tbaa !115
  %and15 = and i32 %5, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %arraydecay18 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call19 = call i8* @strcat(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #7
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %arraydecay21 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call22 = call i8* @strcat(i8* %arraydecay21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)) #7
  %arraydecay23 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [33 x i8], [33 x i8]* %str, i32 0, i32 0
  %call25 = call i64 @strlen(i8* %arraydecay24) #8
  %conv = trunc i64 %call25 to i32
  %call26 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %v, i8* %arraydecay23, i32 %conv) #6
  %6 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %call27 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct.cos_value_s* %v) #6
  %7 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %7) #2
  %8 = bitcast [33 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 33, i8* %8) #2
  ret i32 %call27
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare %struct.cos_value_s* @cos_string_value(%struct.cos_value_s*, i8*, i32) #0

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_add_resource(%struct.gx_device_pdf_s* %pdev, %struct.cos_dict_s* %pcd, i8* %key, %struct.pdf_resource_s* %pres) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %v = alloca %struct.cos_value_s*, align 8
  %list = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %buf1 = alloca [25 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cos_dict_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call to i32
  %call1 = call %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s* %2, i8* %3, i32 %conv) #6
  store %struct.cos_value_s* %call1, %struct.cos_value_s** %v, align 8, !tbaa !1
  %5 = bitcast %struct.cos_dict_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast [25 x i8]* %buf1 to i8*
  call void @llvm.lifetime.start(i64 25, i8* %8) #2
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 99
  %10 = load i32, i32* %ForOPDFRead, align 4, !tbaa !222
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %global = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %11, i32 0, i32 4
  %12 = load i32, i32* %global, align 4, !tbaa !223
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.end.11, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_a_global_object = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 216
  %14 = load i32, i32* %accumulating_a_global_object, align 4, !tbaa !192
  %tobool4 = icmp ne i32 %14, 0
  br i1 %tobool4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %land.lhs.true.3
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %global6 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %15, i32 0, i32 4
  store i32 1, i32* %global6, align 4, !tbaa !223
  %16 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %16, i32 0, i32 7
  %17 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !127
  %18 = bitcast %struct.cos_object_s* %17 to %struct.cos_dict_s*
  %call7 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 1) #6
  store i32 %call7, i32* %code, align 4, !tbaa !57
  %19 = load i32, i32* %code, align 4, !tbaa !57
  %cmp8 = icmp slt i32 %19, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.5
  %20 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %if.then
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %21 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object12 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %21, i32 0, i32 7
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object12, align 8, !tbaa !127
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %22, i32 0, i32 1
  %23 = load i64, i64* %id, align 8, !tbaa !68
  %call13 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i64 %23) #6
  %24 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %cmp14 = icmp ne %struct.cos_value_s* %24, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.11
  %25 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %25, i32 0, i32 0
  %26 = load i32, i32* %value_type, align 4, !tbaa !224
  %cmp17 = icmp ne i32 %26, 2
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %if.then.16
  %27 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %value_type20 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %27, i32 0, i32 0
  %28 = load i32, i32* %value_type20, align 4, !tbaa !224
  %cmp21 = icmp ne i32 %28, 3
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %land.lhs.true.19, %if.then.16
  %29 = load %struct.cos_value_s*, %struct.cos_value_s** %v, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %29, i32 0, i32 1
  %object25 = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %30 = load %struct.cos_object_s*, %struct.cos_object_s** %object25, align 8, !tbaa !1
  %31 = bitcast %struct.cos_object_s* %30 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %31, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %32 = load %struct.cos_dict_s*, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %32, i32 0, i32 0
  %33 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !226
  %cmp26 = icmp ne %struct.cos_object_procs_s* %33, @cos_dict_procs
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  br label %if.end.40

if.else:                                          ; preds = %if.end.11
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call30 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call30, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %35 = load %struct.cos_dict_s*, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.cos_dict_s* %35, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.else
  %36 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %38 = load %struct.cos_dict_s*, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %39 = bitcast %struct.cos_dict_s* %38 to %struct.cos_object_s*
  %call35 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %36, i8* %37, %struct.cos_object_s* %39) #6
  store i32 %call35, i32* %code, align 4, !tbaa !57
  %40 = load i32, i32* %code, align 4, !tbaa !57
  %cmp36 = icmp slt i32 %40, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  %41 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.29
  %arrayidx = getelementptr inbounds [25 x i8], [25 x i8]* %buf1, i32 0, i64 0
  store i8 47, i8* %arrayidx, align 1, !tbaa !115
  %arraydecay41 = getelementptr inbounds [25 x i8], [25 x i8]* %buf1, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay41, i64 1
  %42 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %42, i32 0, i32 5
  %arraydecay42 = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %call43 = call i8* @strcpy(i8* %add.ptr, i8* %arraydecay42) #7
  %43 = load %struct.cos_dict_s*, %struct.cos_dict_s** %list, align 8, !tbaa !1
  %arraydecay44 = getelementptr inbounds [25 x i8], [25 x i8]* %buf1, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [25 x i8], [25 x i8]* %buf1, i32 0, i32 0
  %call46 = call i64 @strlen(i8* %arraydecay45) #8
  %conv47 = trunc i64 %call46 to i32
  %arraydecay48 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call50 = call i64 @strlen(i8* %arraydecay49) #8
  %conv51 = trunc i64 %call50 to i32
  %call52 = call i32 @cos_dict_put_string(%struct.cos_dict_s* %43, i8* %arraydecay44, i32 %conv47, i8* %arraydecay48, i32 %conv51) #6
  store i32 %call52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.38, %if.then.33, %if.then.28, %if.then.23, %if.then.10
  %44 = bitcast [25 x i8]* %buf1 to i8*
  call void @llvm.lifetime.end(i64 25, i8* %44) #2
  %45 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 32, i8* %45) #2
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast %struct.cos_dict_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.cos_value_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %return

if.end.57:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %cleanup
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct.cos_value_s* @cos_dict_find(%struct.cos_dict_s*, i8*, i32) #0

declare i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s*, i8*, i32) #0

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #0

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #0

declare i32 @cos_dict_put_string(%struct.cos_dict_s*, i8*, i32, i8*, i32) #0

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #0

declare i32 @pdf_font_type3_alloc(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s**, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*) #0

declare void @gs_make_identity(%struct.gs_matrix_s*) #0

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_find_same_charproc_aux(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppdfont, %struct.pdf_char_proc_s** %ppcp) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppdfont.addr = alloca %struct.pdf_font_resource_s**, align 8
  %ppcp.addr = alloca %struct.pdf_char_proc_s**, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %code = alloca i32, align 4
  %pcp = alloca %struct.pdf_char_proc_s*, align 8
  %pco0 = alloca %struct.cos_object_s*, align 8
  %pco1 = alloca %struct.cos_object_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppdfont, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s** %ppcp, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppdfont.addr, align 8, !tbaa !1
  %3 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %2, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %3, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %4, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_char_proc_ownership_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_proc = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %7, i32 0, i32 0
  %8 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %char_proc, align 8, !tbaa !61
  store %struct.pdf_char_proc_s* %8, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %9 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %10 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %9, align 8, !tbaa !1
  %11 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.pdf_char_proc_s* %10, %11
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %13, align 8, !tbaa !1
  %15 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %call = call i32 @pdf_is_same_charproc_attrs1(%struct.gx_device_pdf_s* %12, %struct.pdf_char_proc_s* %14, %struct.pdf_char_proc_s* %15) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %16 = bitcast %struct.cos_object_s** %pco0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %17, i32 0, i32 7
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !228
  store %struct.cos_object_s* %18, %struct.cos_object_s** %pco0, align 8, !tbaa !1
  %19 = bitcast %struct.cos_object_s** %pco1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %21 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %20, align 8, !tbaa !1
  %object2 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %21, i32 0, i32 7
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object2, align 8, !tbaa !228
  store %struct.cos_object_s* %22, %struct.cos_object_s** %pco1, align 8, !tbaa !1
  %23 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %23, i32 0, i32 0
  %24 = load %struct.cos_object_procs_s*, %struct.cos_object_procs_s** %cos_procs, align 8, !tbaa !229
  %equal = getelementptr inbounds %struct.cos_object_procs_s, %struct.cos_object_procs_s* %24, i32 0, i32 2
  %25 = load i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)** %equal, align 8, !tbaa !230
  %26 = load %struct.cos_object_s*, %struct.cos_object_s** %pco0, align 8, !tbaa !1
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %pco1, align 8, !tbaa !1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 %25(%struct.cos_object_s* %26, %struct.cos_object_s* %27, %struct.gx_device_pdf_s* %28) #6
  store i32 %call3, i32* %code, align 4, !tbaa !57
  %29 = load i32, i32* %code, align 4, !tbaa !57
  %cmp4 = icmp slt i32 %29, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %30 = load i32, i32* %code, align 4, !tbaa !57
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %31 = load i32, i32* %code, align 4, !tbaa !57
  %tobool6 = icmp ne i32 %31, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %32 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp, align 8, !tbaa !1
  %33 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %32, %struct.pdf_char_proc_s** %33, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.5
  %34 = bitcast %struct.cos_object_s** %pco1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.cos_object_s** %pco0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %if.end.10, %cleanup
  %36 = bitcast %struct.pdf_char_proc_s** %pcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %cleanup.dest.12 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.12, label %cleanup.15 [
    i32 0, label %cleanup.cont.13
  ]

cleanup.cont.13:                                  ; preds = %cleanup.11
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.13
  %37 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %37, i32 0, i32 2
  %38 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %38, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %40 = load %struct.pdf_char_proc_s**, %struct.pdf_char_proc_s*** %ppcp.addr, align 8, !tbaa !1
  %41 = bitcast %struct.pdf_char_proc_s** %40 to %struct.pdf_resource_s**
  %call14 = call i32 @pdf_find_same_resource(%struct.gx_device_pdf_s* %39, i32 7, %struct.pdf_resource_s** %41, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* @pdf_is_charproc_compatible) #6
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %for.end, %cleanup.11
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_is_same_charproc_attrs1(%struct.gx_device_pdf_s* %pdev, %struct.pdf_char_proc_s* %pcp0, %struct.pdf_char_proc_s* %pcp1) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcp0.addr = alloca %struct.pdf_char_proc_s*, align 8
  %pcp1.addr = alloca %struct.pdf_char_proc_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %pcp0, %struct.pdf_char_proc_s** %pcp0.addr, align 8, !tbaa !1
  store %struct.pdf_char_proc_s* %pcp1, %struct.pdf_char_proc_s** %pcp1.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp0.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %0, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width, i32 0, i32 0
  %1 = load double, double* %x, align 8, !tbaa !135
  %2 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1.addr, align 8, !tbaa !1
  %real_width1 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %2, i32 0, i32 11
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width1, i32 0, i32 0
  %3 = load double, double* %x2, align 8, !tbaa !135
  %cmp = fcmp une double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp0.addr, align 8, !tbaa !1
  %real_width3 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %4, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width3, i32 0, i32 1
  %5 = load double, double* %y, align 8, !tbaa !136
  %6 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1.addr, align 8, !tbaa !1
  %real_width4 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %6, i32 0, i32 11
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %real_width4, i32 0, i32 1
  %7 = load double, double* %y5, align 8, !tbaa !136
  %cmp6 = fcmp une double %5, %7
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp0.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %8, i32 0, i32 12
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %9 = load double, double* %x9, align 8, !tbaa !201
  %10 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1.addr, align 8, !tbaa !1
  %v10 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %10, i32 0, i32 12
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v10, i32 0, i32 0
  %11 = load double, double* %x11, align 8, !tbaa !201
  %cmp12 = fcmp une double %9, %11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %12 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp0.addr, align 8, !tbaa !1
  %v15 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %12, i32 0, i32 12
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v15, i32 0, i32 1
  %13 = load double, double* %y16, align 8, !tbaa !202
  %14 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1.addr, align 8, !tbaa !1
  %v17 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %14, i32 0, i32 12
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v17, i32 0, i32 1
  %15 = load double, double* %y18, align 8, !tbaa !202
  %cmp19 = fcmp une double %13, %15
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.13, %if.then.7, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @pdf_find_same_resource(%struct.gx_device_pdf_s*, i32, %struct.pdf_resource_s**, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_is_charproc_compatible(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres0, %struct.pdf_resource_s* %pres1) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres0.addr = alloca %struct.pdf_resource_s*, align 8
  %pres1.addr = alloca %struct.pdf_resource_s*, align 8
  %data = alloca %struct.charproc_compatibility_data_s*, align 8
  %pcp0 = alloca %struct.pdf_char_proc_s*, align 8
  %pcp1 = alloca %struct.pdf_char_proc_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %e = alloca %struct.pdf_font_cache_elem_s**, align 8
  %can_add_to_current_font = alloca i32, align 4
  %computed_can_add_to_current_font = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres0, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres1, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.charproc_compatibility_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %find_resource_param = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 229
  %2 = load i8*, i8** %find_resource_param, align 8, !tbaa !218
  %3 = bitcast i8* %2 to %struct.charproc_compatibility_data_s*
  store %struct.charproc_compatibility_data_s* %3, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_char_proc_s** %pcp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres0.addr, align 8, !tbaa !1
  %6 = bitcast %struct.pdf_resource_s* %5 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %6, %struct.pdf_char_proc_s** %pcp0, align 8, !tbaa !1
  %7 = bitcast %struct.pdf_char_proc_s** %pcp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres1.addr, align 8, !tbaa !1
  %9 = bitcast %struct.pdf_resource_s* %8 to %struct.pdf_char_proc_s*
  store %struct.pdf_char_proc_s* %9, %struct.pdf_char_proc_s** %pcp1, align 8, !tbaa !1
  %10 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %pdfont1 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %11, i32 0, i32 1
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !214
  store %struct.pdf_font_resource_s* %12, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %13 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.pdf_font_cache_elem_s*** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32* %can_add_to_current_font to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %can_add_to_current_font, align 4, !tbaa !57
  %16 = bitcast i32* %computed_can_add_to_current_font to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %computed_can_add_to_current_font, align 4, !tbaa !57
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp0, align 8, !tbaa !1
  %19 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1, align 8, !tbaa !1
  %call = call i32 @pdf_is_same_charproc_attrs1(%struct.gx_device_pdf_s* %17, %struct.pdf_char_proc_s* %18, %struct.pdf_char_proc_s* %19) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1, align 8, !tbaa !1
  %owner_fonts = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %20, i32 0, i32 8
  %21 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %owner_fonts, align 8, !tbaa !146
  store %struct.pdf_char_proc_ownership_s* %21, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_char_proc_ownership_s* %22, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %24 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %24, i32 0, i32 3
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font, align 8, !tbaa !145
  %cmp2 = icmp eq %struct.pdf_font_resource_s* %23, %25
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %for.body
  %26 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %26, i32 0, i32 4
  %27 = load i64, i64* %char_code, align 8, !tbaa !59
  %28 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %char_code4 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %28, i32 0, i32 2
  %29 = load i64, i64* %char_code4, align 8, !tbaa !215
  %cmp5 = icmp eq i64 %27, %29
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then.3
  %30 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %30, i32 0, i32 5
  %31 = load i64, i64* %glyph, align 8, !tbaa !110
  %32 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %glyph6 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %32, i32 0, i32 3
  %33 = load i64, i64* %glyph6, align 8, !tbaa !216
  %cmp7 = icmp eq i64 %31, %33
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %land.lhs.true, %if.then.3
  %34 = load i32, i32* %computed_can_add_to_current_font, align 4, !tbaa !57
  %tobool10 = icmp ne i32 %34, 0
  br i1 %tobool10, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %36 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %char_code12 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %36, i32 0, i32 2
  %37 = load i64, i64* %char_code12, align 8, !tbaa !215
  %call13 = call i32 @is_char_code_used(%struct.pdf_font_resource_s* %35, i64 %37) #6
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %can_add_to_current_font, align 4, !tbaa !57
  store i32 1, i32* %computed_can_add_to_current_font, align 4, !tbaa !57
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.9
  %38 = load i32, i32* %can_add_to_current_font, align 4, !tbaa !57
  %tobool16 = icmp ne i32 %38, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %39 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %39, i32 0, i32 2
  %40 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %40, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %font20 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %42, i32 0, i32 4
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font20, align 8, !tbaa !217
  %call21 = call %struct.pdf_font_cache_elem_s** @pdf_locate_font_cache_elem(%struct.gx_device_pdf_s* %41, %struct.gs_font_s* %43) #6
  store %struct.pdf_font_cache_elem_s** %call21, %struct.pdf_font_cache_elem_s*** %e, align 8, !tbaa !1
  %44 = load %struct.pdf_font_cache_elem_s**, %struct.pdf_font_cache_elem_s*** %e, align 8, !tbaa !1
  %cmp22 = icmp ne %struct.pdf_font_cache_elem_s** %44, null
  br i1 %cmp22, label %if.then.23, label %if.end.80

if.then.23:                                       ; preds = %for.end
  %45 = load %struct.pdf_char_proc_s*, %struct.pdf_char_proc_s** %pcp1, align 8, !tbaa !1
  %owner_fonts24 = getelementptr inbounds %struct.pdf_char_proc_s, %struct.pdf_char_proc_s* %45, i32 0, i32 8
  %46 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %owner_fonts24, align 8, !tbaa !146
  store %struct.pdf_char_proc_ownership_s* %46, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.77, %if.then.23
  %47 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.pdf_char_proc_ownership_s* %47, null
  br i1 %cmp26, label %for.body.27, label %for.end.79

for.body.27:                                      ; preds = %for.cond.25
  %48 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code28 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %48, i32 0, i32 4
  %49 = load i64, i64* %char_code28, align 8, !tbaa !59
  %50 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %char_code29 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %50, i32 0, i32 2
  %51 = load i64, i64* %char_code29, align 8, !tbaa !215
  %cmp30 = icmp ne i64 %49, %51
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.27
  %52 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %glyph31 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %52, i32 0, i32 5
  %53 = load i64, i64* %glyph31, align 8, !tbaa !110
  %54 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %glyph32 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %54, i32 0, i32 3
  %55 = load i64, i64* %glyph32, align 8, !tbaa !216
  %cmp33 = icmp ne i64 %53, %55
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %for.body.27
  br label %for.inc.77

if.end.35:                                        ; preds = %lor.lhs.false
  %56 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %56, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %bitmap_font = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 4
  %57 = load i32, i32* %bitmap_font, align 4, !tbaa !50
  %58 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font36 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %58, i32 0, i32 3
  %59 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font36, align 8, !tbaa !145
  %u37 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %59, i32 0, i32 20
  %simple38 = bitcast %union.anon.1* %u37 to %struct.anon.3*
  %s39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple38, i32 0, i32 7
  %type340 = bitcast %union.anon.4* %s39 to %struct.anon.7*
  %bitmap_font41 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type340, i32 0, i32 4
  %60 = load i32, i32* %bitmap_font41, align 4, !tbaa !50
  %cmp42 = icmp ne i32 %57, %60
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.35
  br label %for.inc.77

if.end.44:                                        ; preds = %if.end.35
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u45 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 20
  %simple46 = bitcast %union.anon.1* %u45 to %struct.anon.3*
  %s47 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple46, i32 0, i32 7
  %type348 = bitcast %union.anon.4* %s47 to %struct.anon.7*
  %FontMatrix = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type348, i32 0, i32 1
  %62 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font49 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %62, i32 0, i32 3
  %63 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font49, align 8, !tbaa !145
  %u50 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %63, i32 0, i32 20
  %simple51 = bitcast %union.anon.1* %u50 to %struct.anon.3*
  %s52 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple51, i32 0, i32 7
  %type353 = bitcast %union.anon.4* %s52 to %struct.anon.7*
  %FontMatrix54 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type353, i32 0, i32 1
  %call55 = call i32 @gs_matrix_compare(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix54) #6
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.44
  br label %for.inc.77

if.end.58:                                        ; preds = %if.end.44
  %64 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %cgp = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %64, i32 0, i32 0
  %65 = load %struct.pdf_char_glyph_pairs_s*, %struct.pdf_char_glyph_pairs_s** %cgp, align 8, !tbaa !212
  %cmp59 = icmp ne %struct.pdf_char_glyph_pairs_s* %65, null
  br i1 %cmp59, label %if.then.60, label %if.end.69

if.then.60:                                       ; preds = %if.end.58
  %66 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font61 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %66, i32 0, i32 3
  %67 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font61, align 8, !tbaa !145
  %68 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %cgp62 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %68, i32 0, i32 0
  %69 = load %struct.pdf_char_glyph_pairs_s*, %struct.pdf_char_glyph_pairs_s** %cgp62, align 8, !tbaa !212
  %s63 = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %69, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x %struct.pdf_char_glyph_pair_s], [1 x %struct.pdf_char_glyph_pair_s]* %s63, i32 0, i32 0
  %70 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %cgp64 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %70, i32 0, i32 0
  %71 = load %struct.pdf_char_glyph_pairs_s*, %struct.pdf_char_glyph_pairs_s** %cgp64, align 8, !tbaa !212
  %num_all_chars = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %71, i32 0, i32 0
  %72 = load i32, i32* %num_all_chars, align 4, !tbaa !232
  %call65 = call i32 @pdf_check_encoding_compatibility(%struct.pdf_font_resource_s* %67, %struct.pdf_char_glyph_pair_s* %arraydecay, i32 %72) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.60
  br label %for.inc.77

if.end.68:                                        ; preds = %if.then.60
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.58
  %73 = load %struct.pdf_font_cache_elem_s**, %struct.pdf_font_cache_elem_s*** %e, align 8, !tbaa !1
  %74 = load %struct.pdf_font_cache_elem_s*, %struct.pdf_font_cache_elem_s** %73, align 8, !tbaa !1
  %pdfont70 = getelementptr inbounds %struct.pdf_font_cache_elem_s, %struct.pdf_font_cache_elem_s* %74, i32 0, i32 4
  %75 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont70, align 8, !tbaa !234
  %76 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font71 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %76, i32 0, i32 3
  %77 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font71, align 8, !tbaa !145
  %cmp72 = icmp ne %struct.pdf_font_resource_s* %75, %77
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.69
  br label %for.inc.77

if.end.74:                                        ; preds = %if.end.69
  %78 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %font75 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %78, i32 0, i32 3
  %79 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %font75, align 8, !tbaa !145
  %80 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %pdfont76 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %80, i32 0, i32 1
  store %struct.pdf_font_resource_s* %79, %struct.pdf_font_resource_s** %pdfont76, align 8, !tbaa !214
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

for.inc.77:                                       ; preds = %if.then.73, %if.then.67, %if.then.57, %if.then.43, %if.then.34
  %81 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next78 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %81, i32 0, i32 2
  %82 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next78, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %82, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond.25

for.end.79:                                       ; preds = %for.cond.25
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %for.end
  %83 = load i32, i32* %computed_can_add_to_current_font, align 4, !tbaa !57
  %tobool81 = icmp ne i32 %83, 0
  br i1 %tobool81, label %if.end.88, label %if.then.82

if.then.82:                                       ; preds = %if.end.80
  %84 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %85 = load %struct.charproc_compatibility_data_s*, %struct.charproc_compatibility_data_s** %data, align 8, !tbaa !1
  %char_code83 = getelementptr inbounds %struct.charproc_compatibility_data_s, %struct.charproc_compatibility_data_s* %85, i32 0, i32 2
  %86 = load i64, i64* %char_code83, align 8, !tbaa !215
  %call84 = call i32 @is_char_code_used(%struct.pdf_font_resource_s* %84, i64 %86) #6
  %tobool85 = icmp ne i32 %call84, 0
  %lnot86 = xor i1 %tobool85, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  store i32 %lnot.ext87, i32* %can_add_to_current_font, align 4, !tbaa !57
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.82, %if.end.80
  %87 = load i32, i32* %can_add_to_current_font, align 4, !tbaa !57
  %tobool89 = icmp ne i32 %87, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.88
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %if.end.88
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.91, %if.then.90, %if.end.74, %if.then.17, %if.then.8, %if.then
  %88 = bitcast i32* %computed_can_add_to_current_font to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %can_add_to_current_font to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast %struct.pdf_font_cache_elem_s*** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast %struct.pdf_char_proc_s** %pcp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast %struct.pdf_char_proc_s** %pcp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast %struct.charproc_compatibility_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @is_char_code_used(%struct.pdf_font_resource_s* %pdfont, i64 %char_code) #1 {
entry:
  %retval = alloca i32, align 4
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %char_code.addr = alloca i64, align 8
  %pcpo = alloca %struct.pdf_char_proc_ownership_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %char_code, i64* %char_code.addr, align 8, !tbaa !49
  %0 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %2 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !58
  store %struct.pdf_char_proc_ownership_s* %2, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_char_proc_ownership_s* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_code1 = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %4, i32 0, i32 4
  %5 = load i64, i64* %char_code1, align 8, !tbaa !59
  %6 = load i64, i64* %char_code.addr, align 8, !tbaa !49
  %cmp2 = icmp eq i64 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  %char_next = getelementptr inbounds %struct.pdf_char_proc_ownership_s, %struct.pdf_char_proc_ownership_s* %7, i32 0, i32 2
  %8 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_next, align 8, !tbaa !71
  store %struct.pdf_char_proc_ownership_s* %8, %struct.pdf_char_proc_ownership_s** %pcpo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast %struct.pdf_char_proc_ownership_s** %pcpo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.pdf_font_cache_elem_s** @pdf_locate_font_cache_elem(%struct.gx_device_pdf_s*, %struct.gs_font_s*) #0

declare i32 @gs_matrix_compare(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @pdf_check_encoding_compatibility(%struct.pdf_font_resource_s*, %struct.pdf_char_glyph_pair_s*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 5848}
!6 = !{!"gx_device_pdf_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !19, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !32, i64 7512, !32, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !25, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !26, i64 8872, !37, i64 8880, !7, i64 9360, !26, i64 9368, !7, i64 9376, !7, i64 9380, !7, i64 9384, !7, i64 9388, !7, i64 9392, !7, i64 9396, !7, i64 9400, !7, i64 9404, !7, i64 9408, !7, i64 9412, !7, i64 9416, !7, i64 9420, !42, i64 9424, !42, i64 9440, !7, i64 9456, !7, i64 9460, !7, i64 9464, !9, i64 9472, !7, i64 9480, !7, i64 9484, !41, i64 9488, !41, i64 9504, !7, i64 9520, !7, i64 9524, !7, i64 9528, !7, i64 9532, !7, i64 9536, !7, i64 9540, !7, i64 9544, !7, i64 9548, !7, i64 9552, !7, i64 9556, !7, i64 9560, !7, i64 9564, !7, i64 9568, !9, i64 9576, !9, i64 9584, !9, i64 9592, !43, i64 9600, !41, i64 9616, !41, i64 9632, !7, i64 9648, !7, i64 9652, !7, i64 9656, !41, i64 9664, !7, i64 9680, !7, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !7, i64 9768, !7, i64 9772, !7, i64 9776, !44, i64 9784, !45, i64 9816, !45, i64 9856, !7, i64 9896, !7, i64 9900, !7, i64 9904, !7, i64 9908, !7, i64 9912, !9, i64 9920, !3, i64 9928, !7, i64 9960, !9, i64 9968, !9, i64 9976, !3, i64 9984, !3, i64 9988, !46, i64 9992, !46, i64 14120, !46, i64 18248, !46, i64 22376, !9, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !9, i64 26536, !7, i64 26544, !7, i64 26548, !9, i64 26552, !3, i64 26560, !9, i64 26568, !9, i64 26576, !3, i64 26584, !2, i64 26592, !47, i64 26600, !2, i64 26648, !7, i64 26656, !9, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !9, i64 28664, !2, i64 28672, !7, i64 28680, !7, i64 28684, !7, i64 28688, !7, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !25, i64 28792, !2, i64 28808, !2, i64 28816, !7, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !7, i64 28856, !7, i64 28860, !7, i64 28864, !48, i64 28872, !7, i64 30384, !7, i64 30388, !7, i64 30392, !2, i64 30400, !7, i64 30408, !7, i64 30412, !7, i64 30416, !22, i64 30420, !2, i64 30448, !3, i64 30456, !7, i64 30460, !7, i64 30464, !2, i64 30472, !2, i64 30480, !24, i64 30488, !7, i64 30524, !44, i64 30528, !7, i64 30560, !7, i64 30564, !7, i64 30568, !2, i64 30576, !7, i64 30584, !7, i64 30588, !9, i64 30592, !7, i64 30600, !7, i64 30604, !7, i64 30608, !22, i64 30612, !26, i64 30640, !2, i64 30648, !38, i64 30656, !7, i64 30672, !2, i64 30680, !7, i64 30688, !7, i64 30692, !7, i64 30696, !7, i64 30700, !7, i64 30704, !7, i64 30708, !7, i64 30712, !7, i64 30716, !7, i64 30720, !7, i64 30724, !7, i64 30728, !7, i64 30732, !7, i64 30736, !7, i64 30740, !7, i64 30744, !7, i64 30748, !7, i64 30752, !7, i64 30756, !7, i64 30760, !7, i64 30764, !7, i64 30768, !7, i64 30772, !2, i64 30776, !7, i64 30784, !7, i64 30788}
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
!19 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !25, i64 176, !25, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !21, i64 296, !29, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !21, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !30, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !31, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !31, i64 1336}
!20 = !{!"gx_line_params_s", !21, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !7, i64 36, !22, i64 40, !23, i64 64}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!23 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !21, i64 12, !7, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!24 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!25 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !3, i64 0}
!27 = !{!"gs_transparency_source_s", !21, i64 0}
!28 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!29 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!30 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!31 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!32 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !7, i64 16, !33, i64 24, !35, i64 288}
!33 = !{!"gs_client_color_s", !2, i64 0, !34, i64 8}
!34 = !{!"gs_paint_color_s", !3, i64 0}
!35 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !36, i64 336}
!36 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!37 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !38, i64 64, !38, i64 80, !38, i64 96, !38, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !39, i64 152, !7, i64 232, !7, i64 236, !39, i64 240, !39, i64 320, !40, i64 400, !40, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !41, i64 448, !40, i64 464}
!38 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!39 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !21, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!40 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!41 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!42 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!43 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!44 = !{!"gs_rect_s", !25, i64 0, !25, i64 16}
!45 = !{!"pdf_page_dsc_info_s", !7, i64 0, !7, i64 4, !44, i64 8}
!46 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!47 = !{!"pdf_text_rotation_s", !3, i64 0, !7, i64 40}
!48 = !{!"pdf_viewer_state_s", !7, i64 0, !3, i64 8, !21, i64 40, !21, i64 44, !3, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !7, i64 80, !21, i64 84, !21, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !32, i64 120, !32, i64 752, !20, i64 1384, !2, i64 1488, !7, i64 1496, !9, i64 1504}
!49 = !{!9, !9, i64 0}
!50 = !{!51, !7, i64 68}
!51 = !{!"", !44, i64 0, !22, i64 32, !2, i64 56, !7, i64 64, !7, i64 68, !2, i64 72, !2, i64 80}
!52 = !{!6, !2, i64 26592}
!53 = !{!54, !2, i64 8}
!54 = !{!"pdf_text_data_s", !2, i64 0, !2, i64 8, !2, i64 16}
!55 = !{!56, !9, i64 16}
!56 = !{!"pdf_bitmap_fonts_s", !2, i64 0, !7, i64 8, !9, i64 16, !7, i64 24}
!57 = !{!7, !7, i64 0}
!58 = !{!51, !2, i64 56}
!59 = !{!60, !9, i64 32}
!60 = !{!"pdf_char_proc_ownership_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !9, i64 40, !38, i64 48, !7, i64 64}
!61 = !{!60, !2, i64 0}
!62 = !{!60, !7, i64 64}
!63 = !{!60, !2, i64 48}
!64 = !{!60, !7, i64 56}
!65 = !{!66, !2, i64 64}
!66 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !67, i64 88, !2, i64 104, !2, i64 112, !7, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!67 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!68 = !{!69, !9, i64 8}
!69 = !{!"cos_object_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !70, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!70 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!71 = !{!60, !2, i64 16}
!72 = !{!51, !21, i64 32}
!73 = !{!51, !21, i64 36}
!74 = !{!51, !21, i64 40}
!75 = !{!51, !21, i64 44}
!76 = !{!51, !21, i64 48}
!77 = !{!51, !21, i64 52}
!78 = !{!79, !2, i64 72}
!79 = !{!"gs_memory_s", !2, i64 0, !80, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!80 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!81 = !{!56, !7, i64 24}
!82 = !{!6, !26, i64 9368}
!83 = !{!56, !7, i64 8}
!84 = !{!85, !7, i64 80}
!85 = !{!"pdf_char_proc_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64, !2, i64 72, !7, i64 80, !7, i64 84, !25, i64 88, !25, i64 104}
!86 = !{!85, !7, i64 84}
!87 = !{!6, !2, i64 1728}
!88 = !{!79, !2, i64 24}
!89 = !{!6, !2, i64 28840}
!90 = !{!91, !7, i64 0}
!91 = !{!"gs_show_enum_s", !92, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !8, i64 160, !2, i64 184, !2, i64 192, !9, i64 200, !7, i64 208, !93, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !94, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !25, i64 360, !9, i64 376, !7, i64 384, !93, i64 388, !25, i64 400, !95, i64 416, !7, i64 448, !2, i64 456, !7, i64 464, !3, i64 468, !2, i64 472, !7, i64 480, !96, i64 484, !96, i64 500, !7, i64 516, !7, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !29, i64 560, !25, i64 568, !7, i64 584, !29, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!92 = !{!"gs_text_params_s", !7, i64 0, !3, i64 8, !7, i64 16, !25, i64 24, !25, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !7, i64 80}
!93 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!94 = !{!"gx_font_stack_s", !7, i64 0, !3, i64 8}
!95 = !{!"gs_text_returned_s", !9, i64 0, !9, i64 8, !25, i64 16}
!96 = !{!"gs_int_rect_s", !36, i64 0, !36, i64 8}
!97 = !{!91, !2, i64 192}
!98 = !{!99, !3, i64 128}
!99 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !100, i64 40, !9, i64 56, !2, i64 64, !2, i64 72, !22, i64 80, !22, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !21, i64 156, !7, i64 160, !101, i64 168, !102, i64 272, !102, i64 324}
!100 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!101 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!102 = !{!"gs_font_name_s", !3, i64 0, !7, i64 48}
!103 = !{!99, !21, i64 80}
!104 = !{!99, !21, i64 84}
!105 = !{!99, !21, i64 88}
!106 = !{!99, !21, i64 92}
!107 = !{!91, !7, i64 232}
!108 = !{!109, !2, i64 16}
!109 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 12, !2, i64 16, !2, i64 24, !7, i64 32, !3, i64 40}
!110 = !{!60, !9, i64 40}
!111 = !{!112, !9, i64 0}
!112 = !{!"pdf_encoding_element_s", !9, i64 0, !38, i64 8, !7, i64 24}
!113 = !{!112, !7, i64 16}
!114 = !{!112, !2, i64 8}
!115 = !{!3, !3, i64 0}
!116 = !{!109, !7, i64 0}
!117 = !{!109, !7, i64 4}
!118 = !{!119, !26, i64 392}
!119 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !100, i64 40, !9, i64 56, !2, i64 64, !2, i64 72, !22, i64 80, !22, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !21, i64 156, !7, i64 160, !101, i64 168, !102, i64 272, !102, i64 324, !44, i64 376, !120, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!120 = !{!"gs_uid_s", !9, i64 0, !2, i64 8}
!121 = !{!119, !26, i64 400}
!122 = !{!112, !7, i64 24}
!123 = !{!6, !26, i64 28792}
!124 = !{!66, !2, i64 128}
!125 = !{!26, !26, i64 0}
!126 = !{!56, !2, i64 0}
!127 = !{!128, !2, i64 64}
!128 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64}
!129 = !{!69, !3, i64 50}
!130 = !{!131, !9, i64 8}
!131 = !{!"pdf_stream_position_s", !9, i64 0, !9, i64 8}
!132 = !{!51, !26, i64 16}
!133 = !{!51, !26, i64 24}
!134 = !{!51, !7, i64 64}
!135 = !{!85, !26, i64 88}
!136 = !{!85, !26, i64 96}
!137 = !{!138, !7, i64 0}
!138 = !{!"gs_text_enum_s", !92, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !8, i64 160, !2, i64 184, !2, i64 192, !9, i64 200, !7, i64 208, !93, i64 212, !2, i64 224, !7, i64 232, !7, i64 236, !94, i64 240, !7, i64 344, !7, i64 348, !7, i64 352, !25, i64 360, !9, i64 376, !7, i64 384, !93, i64 388, !25, i64 400, !95, i64 416}
!139 = !{!51, !26, i64 0}
!140 = !{!51, !26, i64 8}
!141 = !{!66, !2, i64 160}
!142 = !{!66, !2, i64 136}
!143 = !{!38, !2, i64 0}
!144 = !{!38, !7, i64 8}
!145 = !{!60, !2, i64 24}
!146 = !{!85, !2, i64 72}
!147 = !{!60, !2, i64 8}
!148 = !{i64 0, i64 8, !1, i64 8, i64 4, !57}
!149 = !{!6, !7, i64 9564}
!150 = !{!66, !2, i64 168}
!151 = !{!66, !3, i64 72}
!152 = !{!153, !21, i64 0}
!153 = !{!"pdf_text_state_values_s", !21, i64 0, !2, i64 8, !26, i64 16, !22, i64 24, !7, i64 48, !21, i64 52}
!154 = !{!153, !2, i64 8}
!155 = !{!153, !26, i64 16}
!156 = !{i64 0, i64 4, !157, i64 4, i64 4, !157, i64 8, i64 4, !157, i64 12, i64 4, !157, i64 16, i64 4, !157, i64 20, i64 4, !157}
!157 = !{!21, !21, i64 0}
!158 = !{!153, !7, i64 48}
!159 = !{!153, !21, i64 52}
!160 = !{!22, !21, i64 0}
!161 = !{!6, !2, i64 24}
!162 = !{!6, !7, i64 9480}
!163 = !{!6, !7, i64 30392}
!164 = !{!6, !7, i64 30388}
!165 = !{!6, !2, i64 30400}
!166 = !{!167, !2, i64 8}
!167 = !{!"pdf_substream_save_s", !3, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !7, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 60, !2, i64 64, !2, i64 72, !7, i64 80, !7, i64 84, !2, i64 88, !38, i64 96, !7, i64 112}
!168 = !{!6, !3, i64 26560}
!169 = !{!167, !3, i64 0}
!170 = !{!54, !2, i64 16}
!171 = !{!6, !2, i64 28808}
!172 = !{!167, !2, i64 16}
!173 = !{!6, !9, i64 8784}
!174 = !{!167, !9, i64 24}
!175 = !{!6, !9, i64 8776}
!176 = !{!6, !7, i64 28864}
!177 = !{!167, !7, i64 32}
!178 = !{!6, !7, i64 28860}
!179 = !{!167, !2, i64 40}
!180 = !{!6, !3, i64 26584}
!181 = !{!167, !3, i64 56}
!182 = !{!6, !2, i64 30448}
!183 = !{!167, !2, i64 48}
!184 = !{!6, !7, i64 30460}
!185 = !{!167, !7, i64 60}
!186 = !{!6, !2, i64 30472}
!187 = !{!167, !2, i64 64}
!188 = !{!6, !2, i64 30480}
!189 = !{!167, !2, i64 72}
!190 = !{!6, !7, i64 30560}
!191 = !{!167, !7, i64 80}
!192 = !{!6, !7, i64 30568}
!193 = !{!167, !7, i64 84}
!194 = !{!6, !2, i64 30648}
!195 = !{!167, !2, i64 88}
!196 = !{!6, !7, i64 30688}
!197 = !{!167, !7, i64 112}
!198 = !{!6, !2, i64 30656}
!199 = !{!6, !7, i64 30664}
!200 = !{!99, !7, i64 148}
!201 = !{!85, !26, i64 104}
!202 = !{!85, !26, i64 112}
!203 = !{!51, !2, i64 80}
!204 = !{!6, !2, i64 22368}
!205 = !{!206, !2, i64 16}
!206 = !{!"pdf_data_writer_s", !207, i64 0, !9, i64 32, !9, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !7, i64 72}
!207 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!208 = !{!209, !3, i64 48}
!209 = !{!"cos_stream_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !70, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!210 = !{!99, !2, i64 64}
!211 = !{!99, !2, i64 192}
!212 = !{!213, !2, i64 0}
!213 = !{!"charproc_compatibility_data_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 24, !2, i64 32}
!214 = !{!213, !2, i64 8}
!215 = !{!213, !9, i64 16}
!216 = !{!213, !9, i64 24}
!217 = !{!213, !2, i64 32}
!218 = !{!6, !2, i64 30680}
!219 = !{!109, !2, i64 24}
!220 = !{!25, !26, i64 0}
!221 = !{!25, !26, i64 8}
!222 = !{!6, !7, i64 9524}
!223 = !{!128, !7, i64 28}
!224 = !{!225, !3, i64 0}
!225 = !{!"cos_value_s", !3, i64 0, !3, i64 8}
!226 = !{!227, !2, i64 0}
!227 = !{!"cos_dict_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !70, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!228 = !{!85, !2, i64 64}
!229 = !{!69, !2, i64 0}
!230 = !{!231, !2, i64 16}
!231 = !{!"cos_object_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!232 = !{!233, !7, i64 0}
!233 = !{!"pdf_char_glyph_pairs_s", !7, i64 0, !7, i64 4, !7, i64 8, !3, i64 16}
!234 = !{!235, !2, i64 24}
!235 = !{!"pdf_font_cache_elem_s", !2, i64 0, !9, i64 8, !7, i64 16, !7, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
