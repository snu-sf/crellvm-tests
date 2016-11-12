; ModuleID = './gdevpdfc.bc'
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
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
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
%struct.gs_device_n_map_s = type { %struct.rc_header_s, i32 (float*, float*, %struct.gs_imager_state_s*, i8*)*, i8*, i32, [64 x float], [64 x i16] }
%struct.gs_device_n_attributes_s = type { %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_device_n_attributes_s* }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_Sd_params_s = type { i32, float*, i32, float*, i32, %struct.gs_data_source_s, i32, float*, float*, i32*, double*, i32*, i32*, i32 }
%struct.gs_function_ElIn_params_s = type { i32, float*, i32, float*, float*, float*, float }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.6, i32 }
%union.anon.6 = type { %struct.gs_const_string_s }
%struct.stream_AXE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.pdf_color_space_s = type { %struct.pdf_color_space_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, %struct.gs_range_s*, i32, i8* }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.5 }
%struct.anon.5 = type { %struct.gx_cie_vector_cache_s }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.4 }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.anon.4 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_pattern_params_s = type { i32 }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.2, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.3 }
%struct.anon.2 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.anon.3 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.0, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.1 }
%struct.anon.0 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.anon.1 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_separation_params_s = type { i64, %struct.gs_device_n_map_s*, i32, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }

@.str = private unnamed_addr constant [18 x i8] c"pdf_color_space_t\00", align 1
@pdf_color_space_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @pdf_color_space_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_color_space = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_color_space_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"/WhitePoint\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/BlackPoint\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/DeviceCMYK\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/DeviceGray\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/DeviceRGB\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/Indexed\00", align 1
@pdf_color_space_names = constant %struct.pdf_color_space_names_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"/CMYK\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"/G\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"/RGB\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/I\00", align 1
@pdf_color_space_names_short = constant %struct.pdf_color_space_names_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"pdf_delete_function\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"pdf_dselete_function\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"pdf_DeviceN\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"pdf_make_function(Domain)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"pdf_make_function(Range)\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"pdf_make_function(C0)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"pdf_make_function(C1)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"pdf_make_function\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"pdf_color_space(table)\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"pdf_color_space(palette)\00", align 1
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"/Pattern\00", align 1
@.str.22 = private unnamed_addr constant [84 x i8] c"\0AUnable to convert color space to CMYK, reverting strategy to LeaveColorUnchanged.\0A\00", align 1
@.str.23 = private unnamed_addr constant [84 x i8] c"\0AUnable to convert color space to sRGB, reverting strategy to LeaveColorUnchanged.\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"\0AUnable to convert color space to Gray, reverting strategy to LeaveColorUnchanged.\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"pdf_color_space\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"GRAY\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"/CalGray\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"pdf_color_space(dict)\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"/Gamma\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"RGB \00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"/CalRGB\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"pdf_color_space(Matrix)\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"/Matrix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"pdf_color_space(DeviceN)\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.36 = private unnamed_addr constant [11 x i8] c"/Colorants\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"/DeviceN\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"/Separation\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"free serialized colour space\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"release ColorSpace object\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"free ColorSpace object\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"[/Pattern]\00", align 1
@pdf_cs_Pattern_uncolored.pcs_names = internal constant [5 x i8*] [i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0)], align 16
@.str.44 = private unnamed_addr constant [23 x i8] c"[/Pattern /DeviceGray]\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"[/Pattern /DeviceRGB]\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"[/Pattern /DeviceCMYK]\00", align 1
@st_pdf_resource = external constant %struct.gs_memory_struct_type_s, align 8
@pdf_color_space_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 0, i16 88 }], align 2
@.str.47 = private unnamed_addr constant [23 x i8] c"cos_array_from_vector3\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_finish_cie_space(%struct.cos_array_s* %pca, %struct.cos_dict_s* %pcd, %struct.gs_cie_common_s* %pciec) #1 {
entry:
  %retval = alloca i32, align 4
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %pciec.addr = alloca %struct.gs_cie_common_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pciec, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %2 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %2, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %call = call i32 @cos_dict_put_c_key_vector3(%struct.cos_dict_s* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct.gs_vector3_s* %WhitePoint) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points1 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %5, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points1, i32 0, i32 1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint, i32 0, i32 0
  %6 = load float, float* %u, align 4, !tbaa !7
  %cmp2 = fcmp une float %6, 0.000000e+00
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points3 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %7, i32 0, i32 5
  %BlackPoint4 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points3, i32 0, i32 1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint4, i32 0, i32 1
  %8 = load float, float* %v, align 4, !tbaa !16
  %cmp5 = fcmp une float %8, 0.000000e+00
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points7 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %9, i32 0, i32 5
  %BlackPoint8 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points7, i32 0, i32 1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %BlackPoint8, i32 0, i32 2
  %10 = load float, float* %w, align 4, !tbaa !17
  %cmp9 = fcmp une float %10, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %11 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %12 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec.addr, align 8, !tbaa !1
  %points11 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %12, i32 0, i32 5
  %BlackPoint12 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points11, i32 0, i32 1
  %call13 = call i32 @cos_dict_put_c_key_vector3(%struct.cos_dict_s* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.gs_vector3_s* %BlackPoint12) #6
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false.6
  %15 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %16 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %16, i32 0, i32 0
  %17 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call18 = call i32 @cos_array_add_object(%struct.cos_array_s* %15, %struct.cos_object_s* %17) #6
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @cos_dict_put_c_key_vector3(%struct.cos_dict_s* %pcd, i8* %key, %struct.gs_vector3_s* %pvec) #1 {
entry:
  %retval = alloca i32, align 4
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %pca = alloca %struct.cos_array_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %1, i32 0, i32 4
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !18
  %call = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0)) #6
  store %struct.cos_array_s* %call, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp = icmp eq %struct.cos_array_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %call1 = call i32 @cos_array_add_vector3(%struct.cos_array_s* %5, %struct.gs_vector3_s* %6) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %8, i32 0, i32 0
  %9 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0)) #6
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %13 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs5 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %13, i32 0, i32 0
  %14 = bitcast %struct.cos_object_procs_s** %cos_procs5 to %struct.cos_object_s*
  %call6 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %11, i8* %12, %struct.cos_object_s* %14) #6
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @cos_array_add_object(%struct.cos_array_s*, %struct.cos_object_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_cspace_init_Device(%struct.gs_memory_s* %mem, %struct.gs_color_space_s** %ppcs, i32 %num_components) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %num_components.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %1) #6
  %2 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %2, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %3) #6
  %4 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %call2, %struct.gs_color_space_s** %4, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s* %5) #6
  %6 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %call4, %struct.gs_color_space_s** %6, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.1, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #0

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #0

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceCMYK(%struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_delete_sampled_base_space_function(%struct.gx_device_pdf_s* %pdev, %struct.gs_function_s* %pfn) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gs_function_params_s* %params1 to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %2, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !22
  %8 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %8, i32 0, i32 1
  %9 = load float*, float** %Domain, align 8, !tbaa !66
  %10 = bitcast float* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !22
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !63
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !22
  %16 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %16, i32 0, i32 3
  %17 = load float*, float** %Range, align 8, !tbaa !69
  %18 = bitcast float* %17 to i8*
  call void %13(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !22
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 19
  %21 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !70
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !22
  %24 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %24, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %25 = load i8*, i8** %data10, align 8, !tbaa !71
  %26 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params, align 8, !tbaa !1
  %DataSource11 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %26, i32 0, i32 5
  %data12 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource11, i32 0, i32 2
  %str13 = bitcast %union.d_* %data12 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str13, i32 0, i32 1
  %27 = load i32, i32* %size, align 4, !tbaa !72
  call void %21(%struct.gs_memory_s* %23, i8* %25, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #6
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !22
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !63
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !22
  %33 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gs_function_s* %33 to i8*
  call void %30(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %35 = bitcast %struct.gs_function_Sd_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_delete_base_space_function(%struct.gx_device_pdf_s* %pdev, %struct.gs_function_s* %pfn) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %params = alloca %struct.gs_function_ElIn_params_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gs_function_params_s* %params1 to %struct.gs_function_ElIn_params_s*
  store %struct.gs_function_ElIn_params_s* %2, %struct.gs_function_ElIn_params_s** %params, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !22
  %8 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %8, i32 0, i32 1
  %9 = load float*, float** %Domain, align 8, !tbaa !73
  %10 = bitcast float* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !22
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !63
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !22
  %16 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %16, i32 0, i32 3
  %17 = load float*, float** %Range, align 8, !tbaa !75
  %18 = bitcast float* %17 to i8*
  call void %13(%struct.gs_memory_s* %15, i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !22
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !63
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !22
  %24 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params, align 8, !tbaa !1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %24, i32 0, i32 4
  %25 = load float*, float** %C0, align 8, !tbaa !76
  %26 = bitcast float* %25 to i8*
  call void %21(%struct.gs_memory_s* %23, i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !22
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object13, align 8, !tbaa !63
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !22
  %32 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params, align 8, !tbaa !1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %32, i32 0, i32 5
  %33 = load float*, float** %C1, align 8, !tbaa !77
  %34 = bitcast float* %33 to i8*
  call void %29(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !22
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !63
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !22
  %40 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gs_function_s* %40 to i8*
  call void %37(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #6
  %42 = bitcast %struct.gs_function_ElIn_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_make_sampled_base_space_function(%struct.gx_device_pdf_s* %pdev, %struct.gs_function_s** %pfn, i32 %nSrcComp, i32 %nDstComp, i8* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s**, align 8
  %nSrcComp.addr = alloca i32, align 4
  %nDstComp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %ptr1 = alloca i8*, align 8
  %ptr2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %pfn, %struct.gs_function_s*** %pfn.addr, align 8, !tbaa !1
  store i32 %nSrcComp, i32* %nSrcComp.addr, align 4, !tbaa !5
  store i32 %nDstComp, i32* %nDstComp.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #2
  %1 = bitcast i8** %ptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %ptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !78
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !22
  %11 = load i32, i32* %nDstComp.addr, align 4, !tbaa !5
  %12 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  %mul2 = mul nsw i32 %mul, 2
  %conv = sext i32 %mul2 to i64
  %mul3 = mul i64 %conv, 4
  %conv4 = trunc i64 %mul3 to i32
  %call = call i8* %8(%struct.gs_memory_s* %10, i32 %conv4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #6
  %data5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %call, i8** %data5, align 8, !tbaa !71
  %13 = load i32, i32* %nDstComp.addr, align 4, !tbaa !5
  %14 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %conv6 = sitofp i32 %14 to double
  %call7 = call double @pow(double 2.000000e+00, double %conv6) #7
  %conv8 = fptoui double %call7 to i32
  %mul9 = mul i32 %13, %conv8
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %mul9, i32* %size, align 4, !tbaa !72
  %data10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %15 = load i8*, i8** %data10, align 8, !tbaa !71
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %17 = load i32, i32* %size11, align 4, !tbaa !72
  %conv12 = zext i32 %17 to i64
  %call13 = call i8* @memcpy(i8* %15, i8* %16, i64 %conv12) #7
  %18 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  store i32 %18, i32* %m, align 4, !tbaa !79
  %19 = load i32, i32* %nDstComp.addr, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  store i32 %19, i32* %n, align 4, !tbaa !80
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  store i32 1, i32* %Order, align 4, !tbaa !81
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  store i32 8, i32* %BitsPerSample, align 4, !tbaa !82
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !22
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !83
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !22
  %25 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %call17 = call i8* %22(%struct.gs_memory_s* %24, i32 %25, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %call17, i8** %ptr1, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %30 = bitcast i8* %29 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %33 = bitcast i8* %32 to i32*
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* %33, i32** %Size, align 8, !tbaa !84
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !22
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_byte_array21 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 10
  %36 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array21, align 8, !tbaa !83
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !22
  %39 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %mul23 = mul nsw i32 2, %39
  %call24 = call i8* %36(%struct.gs_memory_s* %38, i32 %mul23, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #6
  %40 = bitcast i8* %call24 to float*
  %41 = bitcast float* %40 to i8*
  store i8* %41, i8** %ptr1, align 8, !tbaa !1
  %42 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %42, null
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !22
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_byte_array29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 10
  %45 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array29, align 8, !tbaa !83
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !22
  %48 = load i32, i32* %nDstComp.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 2, %48
  %call32 = call i8* %45(%struct.gs_memory_s* %47, i32 %mul31, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  %49 = bitcast i8* %call32 to float*
  %50 = bitcast float* %49 to i8*
  store i8* %50, i8** %ptr2, align 8, !tbaa !1
  %51 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %cmp33 = icmp eq i8* %51, null
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !22
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !22
  %57 = load i8*, i8** %ptr1, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %56, i8* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %if.end.39
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %59 = load i32, i32* %nSrcComp.addr, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %58, %59
  br i1 %cmp41, label %for.body.43, label %for.end.52

for.body.43:                                      ; preds = %for.cond.40
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %mul44 = mul nsw i32 %60, 2
  %idxprom45 = sext i32 %mul44 to i64
  %61 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %62 = bitcast i8* %61 to float*
  %arrayidx46 = getelementptr inbounds float, float* %62, i64 %idxprom45
  store float 0.000000e+00, float* %arrayidx46, align 4, !tbaa !85
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %mul47 = mul nsw i32 %63, 2
  %add = add nsw i32 %mul47, 1
  %idxprom48 = sext i32 %add to i64
  %64 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %65 = bitcast i8* %64 to float*
  %arrayidx49 = getelementptr inbounds float, float* %65, i64 %idxprom48
  store float 1.000000e+00, float* %arrayidx49, align 4, !tbaa !85
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.43
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %66, 1
  store i32 %inc51, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.64, %for.end.52
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %68 = load i32, i32* %nDstComp.addr, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %67, %68
  br i1 %cmp54, label %for.body.56, label %for.end.66

for.body.56:                                      ; preds = %for.cond.53
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %mul57 = mul nsw i32 %69, 2
  %idxprom58 = sext i32 %mul57 to i64
  %70 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %71 = bitcast i8* %70 to float*
  %arrayidx59 = getelementptr inbounds float, float* %71, i64 %idxprom58
  store float 0.000000e+00, float* %arrayidx59, align 4, !tbaa !85
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %mul60 = mul nsw i32 %72, 2
  %add61 = add nsw i32 %mul60, 1
  %idxprom62 = sext i32 %add61 to i64
  %73 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %74 = bitcast i8* %73 to float*
  %arrayidx63 = getelementptr inbounds float, float* %74, i64 %idxprom62
  store float 1.000000e+00, float* %arrayidx63, align 4, !tbaa !85
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.56
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %75, 1
  store i32 %inc65, i32* %i, align 4, !tbaa !5
  br label %for.cond.53

for.end.66:                                       ; preds = %for.cond.53
  %76 = load i8*, i8** %ptr1, align 8, !tbaa !1
  %77 = bitcast i8* %76 to float*
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  store float* %77, float** %Domain, align 8, !tbaa !66
  %78 = load i8*, i8** %ptr2, align 8, !tbaa !1
  %79 = bitcast i8* %78 to float*
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 3
  store float* %79, float** %Range, align 8, !tbaa !69
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  store float* null, float** %Decode, align 8, !tbaa !86
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !87
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !88
  %DataSource67 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data68 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource67, i32 0, i32 2
  %str69 = bitcast %union.d_* %data68 to %struct.gs_const_string_s*
  %80 = bitcast %struct.gs_const_string_s* %str69 to i8*
  %81 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false), !tbaa.struct !89
  %DataSource70 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource70, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_string, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !90
  %82 = load %struct.gs_function_s**, %struct.gs_function_s*** %pfn.addr, align 8, !tbaa !1
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory71, align 8, !tbaa !22
  %call72 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %82, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %84) #6
  store i32 %call72, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.66, %if.then.35, %if.then
  %86 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %86) #2
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i8** %ptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i8** %ptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %91) #2
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @data_source_access_string(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #0

declare i32 @gs_function_Sd_init(%struct.gs_function_s**, %struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %pdev, %struct.gs_function_s** %pfn, i32 %ncomp, float* %data_low, float* %data_high) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s**, align 8
  %ncomp.addr = alloca i32, align 4
  %data_low.addr = alloca float*, align 8
  %data_high.addr = alloca float*, align 8
  %params = alloca %struct.gs_function_ElIn_params_s, align 8
  %ptr1 = alloca float*, align 8
  %ptr2 = alloca float*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %pfn, %struct.gs_function_s*** %pfn.addr, align 8, !tbaa !1
  store i32 %ncomp, i32* %ncomp.addr, align 4, !tbaa !5
  store float* %data_low, float** %data_low.addr, align 8, !tbaa !1
  store float* %data_high, float** %data_high.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #2
  %1 = bitcast float** %ptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast float** %ptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %7 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !83
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !22
  %call = call i8* %7(%struct.gs_memory_s* %9, i32 2, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0)) #6
  %10 = bitcast i8* %call to float*
  store float* %10, float** %ptr1, align 8, !tbaa !1
  %11 = load float*, float** %ptr1, align 8, !tbaa !1
  %cmp = icmp eq float* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !22
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_byte_array4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 10
  %14 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array4, align 8, !tbaa !83
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !22
  %17 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %mul = mul nsw i32 2, %17
  %call6 = call i8* %14(%struct.gs_memory_s* %16, i32 %mul, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  %18 = bitcast i8* %call6 to float*
  store float* %18, float** %ptr2, align 8, !tbaa !1
  %19 = load float*, float** %ptr2, align 8, !tbaa !1
  %cmp7 = icmp eq float* %19, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !22
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !22
  %25 = load float*, float** %ptr1, align 8, !tbaa !1
  %26 = bitcast float* %25 to i8*
  call void %22(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %m = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 0
  store i32 1, i32* %m, align 4, !tbaa !91
  %27 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 2
  store i32 %27, i32* %n, align 4, !tbaa !92
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 6
  store float 1.000000e+00, float* %N, align 4, !tbaa !93
  %28 = load float*, float** %ptr1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %28, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !85
  %29 = load float*, float** %ptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %29, i64 1
  store float 1.000000e+00, float* %arrayidx13, align 4, !tbaa !85
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %30, %31
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %mul15 = mul nsw i32 %32, 2
  %idxprom = sext i32 %mul15 to i64
  %33 = load float*, float** %ptr2, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %33, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx16, align 4, !tbaa !85
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %mul17 = mul nsw i32 %34, 2
  %add = add nsw i32 %mul17, 1
  %idxprom18 = sext i32 %add to i64
  %35 = load float*, float** %ptr2, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %35, i64 %idxprom18
  store float 1.000000e+00, float* %arrayidx19, align 4, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load float*, float** %ptr1, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  store float* %37, float** %Domain, align 8, !tbaa !73
  %38 = load float*, float** %ptr2, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 3
  store float* %38, float** %Range, align 8, !tbaa !75
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !22
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_byte_array22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 10
  %41 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array22, align 8, !tbaa !83
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !22
  %44 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %call24 = call i8* %41(%struct.gs_memory_s* %43, i32 %44, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #6
  %45 = bitcast i8* %call24 to float*
  store float* %45, float** %ptr1, align 8, !tbaa !1
  %46 = load float*, float** %ptr1, align 8, !tbaa !1
  %cmp25 = icmp eq float* %46, null
  br i1 %cmp25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %for.end
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !22
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %free_object29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %49 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object29, align 8, !tbaa !63
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !22
  %Domain31 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  %52 = load float*, float** %Domain31, align 8, !tbaa !73
  %53 = bitcast float* %52 to i8*
  call void %49(%struct.gs_memory_s* %51, i8* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #6
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !22
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !63
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !22
  %Range36 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 3
  %59 = load float*, float** %Range36, align 8, !tbaa !75
  %60 = bitcast float* %59 to i8*
  call void %56(%struct.gs_memory_s* %58, i8* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %for.end
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !22
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %alloc_byte_array40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 10
  %63 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array40, align 8, !tbaa !83
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !22
  %66 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %call42 = call i8* %63(%struct.gs_memory_s* %65, i32 %66, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #6
  %67 = bitcast i8* %call42 to float*
  store float* %67, float** %ptr2, align 8, !tbaa !1
  %68 = load float*, float** %ptr2, align 8, !tbaa !1
  %cmp43 = icmp eq float* %68, null
  br i1 %cmp43, label %if.then.44, label %if.end.59

if.then.44:                                       ; preds = %if.end.37
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !22
  %procs46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 1
  %free_object47 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs46, i32 0, i32 2
  %71 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object47, align 8, !tbaa !63
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !22
  %Domain49 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  %74 = load float*, float** %Domain49, align 8, !tbaa !73
  %75 = bitcast float* %74 to i8*
  call void %71(%struct.gs_memory_s* %73, i8* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #6
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !22
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %free_object52 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 2
  %78 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object52, align 8, !tbaa !63
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !22
  %Range54 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 3
  %81 = load float*, float** %Range54, align 8, !tbaa !75
  %82 = bitcast float* %81 to i8*
  call void %78(%struct.gs_memory_s* %80, i8* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #6
  %83 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !22
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %84, i32 0, i32 1
  %free_object57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 2
  %85 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object57, align 8, !tbaa !63
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !22
  %88 = load float*, float** %ptr1, align 8, !tbaa !1
  %89 = bitcast float* %88 to i8*
  call void %85(%struct.gs_memory_s* %87, i8* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.37
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.71, %if.end.59
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %91 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %90, %91
  br i1 %cmp61, label %for.body.62, label %for.end.73

for.body.62:                                      ; preds = %for.cond.60
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %92 to i64
  %93 = load float*, float** %data_low.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds float, float* %93, i64 %idxprom63
  %94 = load float, float* %arrayidx64, align 4, !tbaa !85
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %95 to i64
  %96 = load float*, float** %ptr1, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds float, float* %96, i64 %idxprom65
  store float %94, float* %arrayidx66, align 4, !tbaa !85
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %97 to i64
  %98 = load float*, float** %data_high.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds float, float* %98, i64 %idxprom67
  %99 = load float, float* %arrayidx68, align 4, !tbaa !85
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %100 to i64
  %101 = load float*, float** %ptr2, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds float, float* %101, i64 %idxprom69
  store float %99, float* %arrayidx70, align 4, !tbaa !85
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.62
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %102, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !5
  br label %for.cond.60

for.end.73:                                       ; preds = %for.cond.60
  %103 = load float*, float** %ptr1, align 8, !tbaa !1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  store float* %103, float** %C0, align 8, !tbaa !76
  %104 = load float*, float** %ptr2, align 8, !tbaa !1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 5
  store float* %104, float** %C1, align 8, !tbaa !77
  %105 = load %struct.gs_function_s**, %struct.gs_function_s*** %pfn.addr, align 8, !tbaa !1
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !22
  %call75 = call i32 @gs_function_ElIn_init(%struct.gs_function_s** %105, %struct.gs_function_ElIn_params_s* %params, %struct.gs_memory_s* %107) #6
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %108, 0
  br i1 %cmp76, label %if.then.77, label %if.end.98

if.then.77:                                       ; preds = %for.end.73
  %109 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !22
  %procs79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %free_object80 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs79, i32 0, i32 2
  %111 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object80, align 8, !tbaa !63
  %112 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory81 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory81, align 8, !tbaa !22
  %Domain82 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  %114 = load float*, float** %Domain82, align 8, !tbaa !73
  %115 = bitcast float* %114 to i8*
  call void %111(%struct.gs_memory_s* %113, i8* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #6
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !22
  %procs84 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %free_object85 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs84, i32 0, i32 2
  %118 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object85, align 8, !tbaa !63
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory86 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory86, align 8, !tbaa !22
  %Range87 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 3
  %121 = load float*, float** %Range87, align 8, !tbaa !75
  %122 = bitcast float* %121 to i8*
  call void %118(%struct.gs_memory_s* %120, i8* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #6
  %123 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %123, i32 0, i32 3
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !22
  %procs89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 1
  %free_object90 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs89, i32 0, i32 2
  %125 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object90, align 8, !tbaa !63
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 3
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !22
  %C092 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  %128 = load float*, float** %C092, align 8, !tbaa !76
  %129 = bitcast float* %128 to i8*
  call void %125(%struct.gs_memory_s* %127, i8* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #6
  %130 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory93, align 8, !tbaa !22
  %procs94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 1
  %free_object95 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs94, i32 0, i32 2
  %132 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object95, align 8, !tbaa !63
  %133 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !22
  %C197 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 5
  %135 = load float*, float** %C197, align 8, !tbaa !77
  %136 = bitcast float* %135 to i8*
  call void %132(%struct.gs_memory_s* %134, i8* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.77, %for.end.73
  %137 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.98, %if.then.44, %if.then.26, %if.then.8, %if.then
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast float** %ptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast float** %ptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast %struct.gs_function_ElIn_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 56, i8* %142) #2
  %143 = load i32, i32* %retval
  ret i32 %143
}

declare i32 @gs_function_ElIn_init(%struct.gs_function_s**, %struct.gs_function_ElIn_params_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_indexed_color_space(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue, %struct.gs_color_space_s* %pcs, %struct.cos_array_s* %pca, %struct.cos_value_s* %cos_base) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %cos_base.addr = alloca %struct.cos_value_s*, align 8
  %pip = alloca %struct.gs_indexed_params_s*, align 8
  %base_space = alloca %struct.gs_color_space_s*, align 8
  %num_entries = alloca i32, align 4
  %num_components = alloca i32, align 4
  %table_size = alloca i32, align 4
  %string_size = alloca i32, align 4
  %string_used = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  %st = alloca %struct.stream_AXE_state_s, align 8
  %s = alloca %struct.stream_s, align 8
  %es = alloca %struct.stream_s, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %table = alloca i8*, align 8
  %palette = alloca i8*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cmin = alloca %struct.gs_client_color_s, align 8
  %cmax = alloca %struct.gs_client_color_s, align 8
  %pnext = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %v46 = alloca float, align 4
  %i92 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %cos_base, %struct.cos_value_s** %cos_base.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  store %struct.gs_indexed_params_s* %indexed, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %2 = bitcast %struct.gs_color_space_s** %base_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space1, align 8, !tbaa !94
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  %5 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %6, i32 0, i32 0
  %7 = load i32, i32* %hival, align 4, !tbaa !96
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %num_entries, align 4, !tbaa !5
  %8 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %9) #6
  store i32 %call, i32* %num_components, align 4, !tbaa !5
  %10 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %num_entries, align 4, !tbaa !5
  %12 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %table_size, align 4, !tbaa !5
  %13 = bitcast i32* %string_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %table_size, align 4, !tbaa !5
  %mul2 = mul i32 %14, 4
  %add3 = add i32 2, %mul2
  store i32 %add3, i32* %string_size, align 4, !tbaa !5
  %15 = bitcast i32* %string_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %16) #2
  %17 = bitcast %struct.stream_AXE_state_s* %st to i8*
  call void @llvm.lifetime.start(i64 120, i8* %17) #2
  %18 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %18) #2
  %19 = bitcast %struct.stream_s* %es to i8*
  call void @llvm.lifetime.start(i64 352, i8* %19) #2
  %20 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 43
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = bitcast i8** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i8** %palette to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp = icmp sgt i32 %27, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 75
  %29 = load double, double* %CompatibilityLevel, align 8, !tbaa !99
  %cmp4 = fcmp olt double %29, 1.300000e+00
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 99
  %31 = load i32, i32* %ForOPDFRead, align 4, !tbaa !100
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call6 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %32) #6
  switch i32 %call6, label %sw.default [
    i32 11, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.5, %if.then.5, %if.then.5, %if.then.5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  br label %if.end.7

if.end.7:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %34 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !78
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load i32, i32* %string_size, align 4, !tbaa !5
  %call8 = call i8* %34(%struct.gs_memory_s* %35, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0)) #6
  store i8* %call8, i8** %table, align 8, !tbaa !1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_string10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 16
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string10, align 8, !tbaa !78
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %40 = load i32, i32* %table_size, align 4, !tbaa !5
  %call11 = call i8* %38(%struct.gs_memory_s* %39, i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #6
  store i8* %call11, i8** %palette, align 8, !tbaa !1
  %41 = load i8*, i8** %table, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %41, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %42 = load i8*, i8** %palette, align 8, !tbaa !1
  %cmp13 = icmp eq i8* %42, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.7
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 19
  %44 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !70
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %46 = load i8*, i8** %palette, align 8, !tbaa !1
  %47 = load i32, i32* %table_size, align 4, !tbaa !5
  call void %44(%struct.gs_memory_s* %45, i8* %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #6
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %free_string17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 19
  %49 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string17, align 8, !tbaa !70
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %51 = load i8*, i8** %table, align 8, !tbaa !1
  %52 = load i32, i32* %string_size, align 4, !tbaa !5
  call void %49(%struct.gs_memory_s* %50, i8* %51, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %lor.lhs.false
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %53) #6
  %54 = load i8*, i8** %table, align 8, !tbaa !1
  %55 = load i32, i32* %string_size, align 4, !tbaa !5
  call void @swrite_string(%struct.stream_s* %s, i8* %54, i32 %55) #6
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %es, %struct.gs_memory_s* %56) #6
  %57 = bitcast %struct.stream_AXE_state_s* %st to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %57, %struct.stream_template_s* @s_PSSE_template, %struct.gs_memory_s* null) #6
  %58 = bitcast %struct.stream_AXE_state_s* %st to %struct.stream_state_s*
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @s_init_filter(%struct.stream_s* %es, %struct.stream_state_s* %58, i8* %arraydecay, i32 100, %struct.stream_s* %s) #6
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %59 = load i8*, i8** %ptr, align 8, !tbaa !101
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 2
  %60 = load i8*, i8** %limit, align 8, !tbaa !103
  %cmp22 = icmp uge i8* %59, %60
  br i1 %cmp22, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.18
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %61 = load i8*, i8** %ptr25, align 8, !tbaa !101
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %ptr25, align 8, !tbaa !101
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 5
  %w27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_write_s*
  %ptr28 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w27, i32 0, i32 1
  %62 = load i8*, i8** %ptr28, align 8, !tbaa !101
  store i8 40, i8* %62, align 1, !tbaa !104
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %call29 = call i32 @spputc(%struct.stream_s* %s, i8 zeroext 40) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call29, %cond.false ]
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %63, i32 0, i32 7
  %indexed31 = bitcast %union.anon* %params30 to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed31, i32 0, i32 3
  %64 = load i32, i32* %use_proc, align 4, !tbaa !105
  %tobool32 = icmp ne i32 %64, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %cond.end
  %65 = bitcast %struct.gs_client_color_s* %cmin to i8*
  call void @llvm.lifetime.start(i64 264, i8* %65) #2
  %66 = bitcast %struct.gs_client_color_s* %cmax to i8*
  call void @llvm.lifetime.start(i64 264, i8* %66) #2
  %67 = bitcast i8** %pnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i8*, i8** %palette, align 8, !tbaa !1
  store i8* %68, i8** %pnext, align 8, !tbaa !1
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %71 = load i32, i32* %j, align 4, !tbaa !5
  %72 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %71, %72
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %73 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cmin, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  store float 0xC3E0000000000000, float* %arrayidx, align 4, !tbaa !85
  %74 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %74 to i64
  %paint36 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cmax, i32 0, i32 1
  %values37 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [64 x float], [64 x float]* %values37, i32 0, i64 %idxprom35
  store float 0x43E0000000000000, float* %arrayidx38, align 4, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  call void @gs_color_space_restrict_color(%struct.gs_client_color_s* %cmin, %struct.gs_color_space_s* %76) #6
  %77 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  call void @gs_color_space_restrict_color(%struct.gs_client_color_s* %cmax, %struct.gs_color_space_s* %77) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.81, %for.end
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %79 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %78, %79
  br i1 %cmp40, label %for.body.41, label %for.end.83

for.body.41:                                      ; preds = %for.cond.39
  %80 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %80) #2
  %81 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %call42 = call i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s* %81, i32 %82, %struct.gs_client_color_s* %cc) #6
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.78, %for.body.41
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %84 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %83, %84
  br i1 %cmp44, label %for.body.45, label %for.end.80

for.body.45:                                      ; preds = %for.cond.43
  %85 = bitcast float* %v46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %86 to i64
  %paint48 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values49 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %values49, i32 0, i64 %idxprom47
  %87 = load float, float* %arrayidx50, align 4, !tbaa !85
  %88 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %88 to i64
  %paint52 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cmin, i32 0, i32 1
  %values53 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [64 x float], [64 x float]* %values53, i32 0, i64 %idxprom51
  %89 = load float, float* %arrayidx54, align 4, !tbaa !85
  %sub = fsub float %87, %89
  %mul55 = fmul float %sub, 2.550000e+02
  %90 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom56 = sext i32 %90 to i64
  %paint57 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cmax, i32 0, i32 1
  %values58 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [64 x float], [64 x float]* %values58, i32 0, i64 %idxprom56
  %91 = load float, float* %arrayidx59, align 4, !tbaa !85
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom60 = sext i32 %92 to i64
  %paint61 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cmin, i32 0, i32 1
  %values62 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint61, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [64 x float], [64 x float]* %values62, i32 0, i64 %idxprom60
  %93 = load float, float* %arrayidx63, align 4, !tbaa !85
  %sub64 = fsub float %91, %93
  %div = fdiv float %mul55, %sub64
  store float %div, float* %v46, align 4, !tbaa !85
  %94 = load float, float* %v46, align 4, !tbaa !85
  %cmp65 = fcmp ole float %94, 0.000000e+00
  br i1 %cmp65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %for.body.45
  br label %cond.end.74

cond.false.67:                                    ; preds = %for.body.45
  %95 = load float, float* %v46, align 4, !tbaa !85
  %cmp68 = fcmp oge float %95, 2.550000e+02
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.67
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.false.67
  %96 = load float, float* %v46, align 4, !tbaa !85
  %conv = fptoui float %96 to i8
  %conv71 = zext i8 %conv to i32
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.69
  %cond73 = phi i32 [ 255, %cond.true.69 ], [ %conv71, %cond.false.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.66
  %cond75 = phi i32 [ 0, %cond.true.66 ], [ %cond73, %cond.end.72 ]
  %conv76 = trunc i32 %cond75 to i8
  %97 = load i8*, i8** %pnext, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr77, i8** %pnext, align 8, !tbaa !1
  store i8 %conv76, i8* %97, align 1, !tbaa !104
  %98 = bitcast float* %v46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  br label %for.inc.78

for.inc.78:                                       ; preds = %cond.end.74
  %99 = load i32, i32* %j, align 4, !tbaa !5
  %inc79 = add nsw i32 %99, 1
  store i32 %inc79, i32* %j, align 4, !tbaa !5
  br label %for.cond.43

for.end.80:                                       ; preds = %for.cond.43
  %100 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %100) #2
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %inc82 = add nsw i32 %101, 1
  store i32 %inc82, i32* %i, align 4, !tbaa !5
  br label %for.cond.39

for.end.83:                                       ; preds = %for.cond.39
  %102 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i8** %pnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast %struct.gs_client_color_s* %cmax to i8*
  call void @llvm.lifetime.end(i64 264, i8* %105) #2
  %106 = bitcast %struct.gs_client_color_s* %cmin to i8*
  call void @llvm.lifetime.end(i64 264, i8* %106) #2
  br label %if.end.87

if.else:                                          ; preds = %cond.end
  %107 = load i8*, i8** %palette, align 8, !tbaa !1
  %108 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %108, i32 0, i32 2
  %table84 = bitcast %union.anon.6* %lookup to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table84, i32 0, i32 0
  %109 = load i8*, i8** %data, align 8, !tbaa !71
  %110 = load i32, i32* %table_size, align 4, !tbaa !5
  %conv85 = zext i32 %110 to i64
  %call86 = call i8* @memcpy(i8* %107, i8* %109, i64 %conv85) #7
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %for.end.83
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  %call88 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %111) #6
  %cmp89 = icmp eq i32 %call88, 1
  br i1 %cmp89, label %if.then.91, label %if.end.137

if.then.91:                                       ; preds = %if.end.87
  %112 = bitcast i32* %i92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load i32, i32* %table_size, align 4, !tbaa !5
  store i32 %113, i32* %i92, align 4, !tbaa !5
  br label %for.cond.93

for.cond.93:                                      ; preds = %if.end.118, %if.then.91
  %114 = load i32, i32* %i92, align 4, !tbaa !5
  %sub94 = sub nsw i32 %114, 3
  store i32 %sub94, i32* %i92, align 4, !tbaa !5
  %cmp95 = icmp sge i32 %sub94, 0
  br i1 %cmp95, label %for.body.97, label %for.end.119

for.body.97:                                      ; preds = %for.cond.93
  %115 = load i32, i32* %i92, align 4, !tbaa !5
  %idxprom98 = sext i32 %115 to i64
  %116 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %116, i64 %idxprom98
  %117 = load i8, i8* %arrayidx99, align 1, !tbaa !104
  %conv100 = zext i8 %117 to i32
  %118 = load i32, i32* %i92, align 4, !tbaa !5
  %add101 = add nsw i32 %118, 1
  %idxprom102 = sext i32 %add101 to i64
  %119 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %119, i64 %idxprom102
  %120 = load i8, i8* %arrayidx103, align 1, !tbaa !104
  %conv104 = zext i8 %120 to i32
  %cmp105 = icmp ne i32 %conv100, %conv104
  br i1 %cmp105, label %if.then.117, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %for.body.97
  %121 = load i32, i32* %i92, align 4, !tbaa !5
  %idxprom108 = sext i32 %121 to i64
  %122 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %122, i64 %idxprom108
  %123 = load i8, i8* %arrayidx109, align 1, !tbaa !104
  %conv110 = zext i8 %123 to i32
  %124 = load i32, i32* %i92, align 4, !tbaa !5
  %add111 = add nsw i32 %124, 2
  %idxprom112 = sext i32 %add111 to i64
  %125 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %125, i64 %idxprom112
  %126 = load i8, i8* %arrayidx113, align 1, !tbaa !104
  %conv114 = zext i8 %126 to i32
  %cmp115 = icmp ne i32 %conv110, %conv114
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false.107, %for.body.97
  br label %for.end.119

if.end.118:                                       ; preds = %lor.lhs.false.107
  br label %for.cond.93

for.end.119:                                      ; preds = %if.then.117, %for.cond.93
  %127 = load i32, i32* %i92, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %127, 0
  br i1 %cmp120, label %if.then.122, label %if.end.136

if.then.122:                                      ; preds = %for.end.119
  store i32 0, i32* %i92, align 4, !tbaa !5
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.132, %if.then.122
  %128 = load i32, i32* %i92, align 4, !tbaa !5
  %129 = load i32, i32* %num_entries, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %128, %129
  br i1 %cmp124, label %for.body.126, label %for.end.134

for.body.126:                                     ; preds = %for.cond.123
  %130 = load i32, i32* %i92, align 4, !tbaa !5
  %mul127 = mul nsw i32 %130, 3
  %idxprom128 = sext i32 %mul127 to i64
  %131 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %131, i64 %idxprom128
  %132 = load i8, i8* %arrayidx129, align 1, !tbaa !104
  %133 = load i32, i32* %i92, align 4, !tbaa !5
  %idxprom130 = sext i32 %133 to i64
  %134 = load i8*, i8** %palette, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %134, i64 %idxprom130
  store i8 %132, i8* %arrayidx131, align 1, !tbaa !104
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.126
  %135 = load i32, i32* %i92, align 4, !tbaa !5
  %inc133 = add nsw i32 %135, 1
  store i32 %inc133, i32* %i92, align 4, !tbaa !5
  br label %for.cond.123

for.end.134:                                      ; preds = %for.cond.123
  %136 = load i32, i32* %num_entries, align 4, !tbaa !5
  store i32 %136, i32* %table_size, align 4, !tbaa !5
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call135 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %137) #6
  store %struct.gs_color_space_s* %call135, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.134, %for.end.119
  %138 = bitcast i32* %i92 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.87
  %139 = load i8*, i8** %palette, align 8, !tbaa !1
  %140 = load i32, i32* %table_size, align 4, !tbaa !5
  %call138 = call i32 @stream_write(%struct.stream_s* %es, i8* %139, i32 %140) #6
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 1
  %free_string140 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 19
  %142 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string140, align 8, !tbaa !70
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %144 = load i8*, i8** %palette, align 8, !tbaa !1
  %145 = load i32, i32* %table_size, align 4, !tbaa !5
  call void %142(%struct.gs_memory_s* %143, i8* %144, i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #6
  %call141 = call i32 @sclose(%struct.stream_s* %es) #6
  %procs142 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs142, i32 0, i32 3
  %146 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !106
  %call143 = call i32 %146(%struct.stream_s* %s) #6
  %call144 = call i64 @stell(%struct.stream_s* %s) #6
  %conv145 = trunc i64 %call144 to i32
  store i32 %conv145, i32* %string_used, align 4, !tbaa !5
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs146, i32 0, i32 18
  %148 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !110
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %150 = load i8*, i8** %table, align 8, !tbaa !1
  %151 = load i32, i32* %string_size, align 4, !tbaa !5
  %152 = load i32, i32* %string_used, align 4, !tbaa !5
  %call147 = call i8* %148(%struct.gs_memory_s* %149, i8* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0)) #6
  store i8* %call147, i8** %table, align 8, !tbaa !1
  %153 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %153, i32 0, i32 248
  %154 = load i32, i32* %UseOldColor, align 4, !tbaa !111
  %tobool148 = icmp ne i32 %154, 0
  br i1 %tobool148, label %if.then.152, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.end.137
  %155 = load %struct.cos_value_s*, %struct.cos_value_s** %cos_base.addr, align 8, !tbaa !1
  %cmp150 = icmp eq %struct.cos_value_s* %155, null
  br i1 %cmp150, label %if.then.152, label %if.else.177

if.then.152:                                      ; preds = %lor.lhs.false.149, %if.end.137
  %156 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %157 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !1
  %call153 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %156, %struct.cos_value_s* %157, %struct.gs_range_s** null, %struct.gs_color_space_s* %158, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 0) #6
  store i32 %call153, i32* %code, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.then.175, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.then.152
  %159 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %160 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 3), align 8, !tbaa !112
  %call157 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %160) #6
  %call158 = call i32 @cos_array_add(%struct.cos_array_s* %159, %struct.cos_value_s* %call157) #6
  store i32 %call158, i32* %code, align 4, !tbaa !5
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.then.175, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.156
  %161 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %162 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call162 = call i32 @cos_array_add(%struct.cos_array_s* %161, %struct.cos_value_s* %162) #6
  store i32 %call162, i32* %code, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %if.then.175, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.161
  %163 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %164 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %hival166 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %164, i32 0, i32 0
  %165 = load i32, i32* %hival166, align 4, !tbaa !96
  %call167 = call i32 @cos_array_add_int(%struct.cos_array_s* %163, i32 %165) #6
  store i32 %call167, i32* %code, align 4, !tbaa !5
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.175, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %lor.lhs.false.165
  %166 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %167 = load i8*, i8** %table, align 8, !tbaa !1
  %168 = load i32, i32* %string_used, align 4, !tbaa !5
  %call171 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %v, i8* %167, i32 %168) #6
  %call172 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %166, %struct.cos_value_s* %call171) #6
  store i32 %call172, i32* %code, align 4, !tbaa !5
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.165, %lor.lhs.false.161, %lor.lhs.false.156, %if.then.152
  %169 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.176:                                       ; preds = %lor.lhs.false.170
  br label %if.end.185

if.else.177:                                      ; preds = %lor.lhs.false.149
  %170 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %171 = load i8*, i8** getelementptr inbounds (%struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i32 3), align 8, !tbaa !112
  %call178 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %171) #6
  %call179 = call i32 @cos_array_add(%struct.cos_array_s* %170, %struct.cos_value_s* %call178) #6
  store i32 %call179, i32* %code, align 4, !tbaa !5
  %172 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %173 = load %struct.cos_value_s*, %struct.cos_value_s** %cos_base.addr, align 8, !tbaa !1
  %call180 = call i32 @cos_array_add(%struct.cos_array_s* %172, %struct.cos_value_s* %173) #6
  store i32 %call180, i32* %code, align 4, !tbaa !5
  %174 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %175 = load %struct.gs_indexed_params_s*, %struct.gs_indexed_params_s** %pip, align 8, !tbaa !1
  %hival181 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %175, i32 0, i32 0
  %176 = load i32, i32* %hival181, align 4, !tbaa !96
  %call182 = call i32 @cos_array_add_int(%struct.cos_array_s* %174, i32 %176) #6
  store i32 %call182, i32* %code, align 4, !tbaa !5
  %177 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %178 = load i8*, i8** %table, align 8, !tbaa !1
  %179 = load i32, i32* %string_used, align 4, !tbaa !5
  %call183 = call %struct.cos_value_s* @cos_string_value(%struct.cos_value_s* %v, i8* %178, i32 %179) #6
  %call184 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %177, %struct.cos_value_s* %call183) #6
  store i32 %call184, i32* %code, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.177, %if.end.176
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.185, %if.then.175, %if.then.14, %sw.bb, %if.then
  %180 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %181) #2
  %182 = bitcast i8** %palette to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = bitcast i8** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = bitcast %struct.stream_s* %es to i8*
  call void @llvm.lifetime.end(i64 352, i8* %185) #2
  %186 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %186) #2
  %187 = bitcast %struct.stream_AXE_state_s* %st to i8*
  call void @llvm.lifetime.end(i64 120, i8* %187) #2
  %188 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %188) #2
  %189 = bitcast i32* %string_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %string_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast %struct.gs_color_space_s** %base_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast %struct.gs_indexed_params_s** %pip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = load i32, i32* %retval
  ret i32 %196
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #0

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #0

declare void @swrite_string(%struct.stream_s*, i8*, i32) #0

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #0

declare i32 @s_init_filter(%struct.stream_s*, %struct.stream_state_s*, i8*, i32, %struct.stream_s*) #0

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #0

declare void @gs_color_space_restrict_color(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #0

declare i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s*, i32, %struct.gs_client_color_s*) #0

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #0

declare i32 @sclose(%struct.stream_s*) #0

declare i64 @stell(%struct.stream_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue, %struct.gs_range_s** %ppranges, %struct.gs_color_space_s* %pcs_in, %struct.pdf_color_space_names_s* %pcsn, i32 %by_name, i8* %res_name, i32 %name_length, i32 %keepICC) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %ppranges.addr = alloca %struct.gs_range_s**, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pcsn.addr = alloca %struct.pdf_color_space_names_s*, align 8
  %by_name.addr = alloca i32, align 4
  %res_name.addr = alloca i8*, align 8
  %name_length.addr = alloca i32, align 4
  %keepICC.addr = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %csi = alloca i32, align 4
  %pca = alloca %struct.cos_array_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %pciec = alloca %struct.gs_cie_common_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %ranges = alloca %struct.gs_range_s*, align 8
  %serialized_size = alloca i32, align 4
  %serialized = alloca i8*, align 8
  %serialized0 = alloca [100 x i8], align 16
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %is_lab = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s, align 8
  %ppcs = alloca %struct.pdf_color_space_s*, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  %unitary = alloca i32, align 4
  %identityA = alloca i32, align 4
  %expts = alloca %struct.gs_vector3_s, align 4
  %pcie394 = alloca %struct.gs_cie_abc_s*, align 8
  %unitary396 = alloca i32, align 4
  %expts400 = alloca %struct.gs_vector3_s, align 4
  %pmat = alloca %struct.gs_matrix3_s*, align 8
  %one_step = alloca i32, align 4
  %i = alloca i32, align 4
  %rmin492 = alloca double, align 8
  %rmax500 = alloca double, align 8
  %pcma = alloca %struct.cos_array_s*, align 8
  %i603 = alloca i32, align 4
  %rmin621 = alloca double, align 8
  %rmax628 = alloca double, align 8
  %i672 = alloca i32, align 4
  %rmin690 = alloca double, align 8
  %rmax697 = alloca double, align 8
  %psna = alloca %struct.cos_array_s*, align 8
  %i751 = alloca i32, align 4
  %name_string = alloca i8*, align 8
  %name_string_length = alloca i32, align 4
  %v_attriburtes = alloca %struct.cos_value_s, align 8
  %va = alloca %struct.cos_value_s*, align 8
  %colorants792 = alloca %struct.cos_dict_s*, align 8
  %v_colorants = alloca %struct.cos_value_s, align 8
  %v_separation = alloca %struct.cos_value_s, align 8
  %v_colorant_name = alloca %struct.cos_value_s, align 8
  %csa = alloca %struct.gs_device_n_attributes_s*, align 8
  %pres_attributes = alloca %struct.pdf_resource_s*, align 8
  %name_string888 = alloca i8*, align 8
  %name_string_length889 = alloca i32, align 4
  %ppcs931 = alloca %struct.pdf_color_space_s*, align 8
  %l = alloca i32, align 4
  %num_comp = alloca i32, align 4
  %copy_ranges = alloca %struct.gs_range_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.gs_range_s** %ppranges, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.pdf_color_space_names_s* %pcsn, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  store i32 %by_name, i32* %by_name.addr, align 4, !tbaa !5
  store i8* %res_name, i8** %res_name.addr, align 8, !tbaa !1
  store i32 %name_length, i32* %name_length.addr, align 4, !tbaa !5
  store i32 %keepICC, i32* %keepICC.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast %struct.gs_cie_common_s** %pciec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %8 = bitcast i32* %serialized_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %serialized_size, align 4, !tbaa !5
  %9 = bitcast i8** %serialized to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i8* null, i8** %serialized, align 8, !tbaa !1
  %10 = bitcast [100 x i8]* %serialized0 to i8*
  call void @llvm.lifetime.start(i64 100, i8* %10) #2
  %11 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %is_lab, align 4, !tbaa !5
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 75
  %15 = load double, double* %CompatibilityLevel, align 8, !tbaa !99
  %cmp = fcmp olt double %15, 1.300000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %16) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %17, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %18, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %19) #6
  store i32 %call1, i32* %csi, align 4, !tbaa !104
  %20 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp2 = icmp eq i32 %20, 12
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %21 = load i32, i32* %keepICC.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %21, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 6
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !114
  %call5 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %23) #6
  store i32 %call5, i32* %csi, align 4, !tbaa !104
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %24 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %tobool7 = icmp ne %struct.gs_range_s** %24, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %25 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  store %struct.gs_range_s* null, %struct.gs_range_s** %25, align 8, !tbaa !1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %26 = load i32, i32* %csi, align 4, !tbaa !104
  switch i32 %26, label %sw.default.47 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.13
    i32 11, label %sw.bb.15
    i32 12, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end.9
  %27 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %28 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceGray = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %DeviceGray, align 8, !tbaa !115
  %call10 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %27, i8* %29) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.bb.11:                                         ; preds = %if.end.9
  %30 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %31 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceRGB = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %31, i32 0, i32 2
  %32 = load i8*, i8** %DeviceRGB, align 8, !tbaa !116
  %call12 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %30, i8* %32) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.bb.13:                                         ; preds = %if.end.9
  %33 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %34 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceCMYK = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %34, i32 0, i32 0
  %35 = load i8*, i8** %DeviceCMYK, align 8, !tbaa !117
  %call14 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %33, i8* %35) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.bb.15:                                         ; preds = %if.end.9
  %36 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %36, i32 0, i32 7
  %pattern = bitcast %union.anon* %params to %struct.gs_pattern_params_s*
  %has_base_space = getelementptr inbounds %struct.gs_pattern_params_s, %struct.gs_pattern_params_s* %pattern, i32 0, i32 0
  %37 = load i32, i32* %has_base_space, align 4, !tbaa !118
  %tobool16 = icmp ne i32 %37, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %sw.bb.15
  %38 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call18 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog.48

sw.bb.20:                                         ; preds = %if.end.9
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 6
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data21, align 8, !tbaa !114
  %cmp22 = icmp eq %struct.cmm_profile_s* %40, null
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %sw.bb.20
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 75
  %42 = load double, double* %CompatibilityLevel24, align 8, !tbaa !99
  %cmp25 = fcmp olt double %42, 1.300000e+00
  br i1 %cmp25, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %lor.lhs.false.23, %sw.bb.20
  %43 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %cmp27 = icmp ne i8* %43, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.29:                                        ; preds = %if.then.26
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 3
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !94
  %cmp30 = icmp ne %struct.gs_color_space_s* %45, null
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.end.29
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %47 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %48 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space32 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %49, i32 0, i32 3
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space32, align 8, !tbaa !94
  %51 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %52 = load i32, i32* %by_name.addr, align 4, !tbaa !5
  %53 = load i32, i32* %keepICC.addr, align 4, !tbaa !5
  %call33 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %46, %struct.cos_value_s* %47, %struct.gs_range_s** %48, %struct.gs_color_space_s* %50, %struct.pdf_color_space_names_s* %51, i32 %52, i8* null, i32 0, i32 %53) #6
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.else.34:                                       ; preds = %if.end.29
  %54 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %54, i32 0, i32 0
  %55 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !120
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %55, i32 0, i32 4
  %56 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !121
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call35 = call i32 %56(%struct.gs_color_space_s* %57) #6
  switch i32 %call35, label %sw.default [
    i32 1, label %sw.bb.36
    i32 3, label %sw.bb.39
    i32 4, label %sw.bb.42
  ]

sw.bb.36:                                         ; preds = %if.else.34
  %58 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %59 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceGray37 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %59, i32 0, i32 1
  %60 = load i8*, i8** %DeviceGray37, align 8, !tbaa !115
  %call38 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %58, i8* %60) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.bb.39:                                         ; preds = %if.else.34
  %61 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %62 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceRGB40 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %62, i32 0, i32 2
  %63 = load i8*, i8** %DeviceRGB40, align 8, !tbaa !116
  %call41 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %61, i8* %63) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.bb.42:                                         ; preds = %if.else.34
  %64 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %65 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceCMYK43 = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %65, i32 0, i32 0
  %66 = load i8*, i8** %DeviceCMYK43, align 8, !tbaa !117
  %call44 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %64, i8* %66) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.default:                                       ; preds = %if.else.34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.45

if.end.45:                                        ; preds = %sw.epilog
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.23
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %if.end.9
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %if.end.46, %if.end.19
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 248
  %68 = load i32, i32* %UseOldColor, align 4, !tbaa !111
  %tobool49 = icmp ne i32 %68, 0
  br i1 %tobool49, label %if.then.50, label %if.end.101

if.then.50:                                       ; preds = %sw.epilog.48
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params51 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params51, i32 0, i32 17
  %70 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !123
  %cmp52 = icmp eq i32 %70, 5
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.66

land.lhs.true.53:                                 ; preds = %if.then.50
  %71 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp54 = icmp ne i32 %71, 2
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.66

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %72 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp56 = icmp ne i32 %72, 0
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %land.lhs.true.55
  %73 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp58 = icmp ne i32 %73, 11
  br i1 %cmp58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %land.lhs.true.57
  %74 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %74, i32 0, i32 3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %call60 = call i8* @gs_program_name() #6
  %call61 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %75, i8* %call60, i64 %call61) #6
  %76 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !22
  %call63 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %77, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.22, i32 0, i32 0)) #6
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params64 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 73
  %ColorConversionStrategy65 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params64, i32 0, i32 17
  store i32 0, i32* %ColorConversionStrategy65, align 4, !tbaa !123
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %land.lhs.true.57, %land.lhs.true.55, %land.lhs.true.53, %if.then.50
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 73
  %ColorConversionStrategy68 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params67, i32 0, i32 17
  %80 = load i32, i32* %ColorConversionStrategy68, align 4, !tbaa !123
  %cmp69 = icmp eq i32 %80, 4
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.84

land.lhs.true.70:                                 ; preds = %if.end.66
  %81 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp71 = icmp ne i32 %81, 1
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.84

land.lhs.true.72:                                 ; preds = %land.lhs.true.70
  %82 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp73 = icmp ne i32 %82, 0
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.84

land.lhs.true.74:                                 ; preds = %land.lhs.true.72
  %83 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp75 = icmp ne i32 %83, 11
  br i1 %cmp75, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %land.lhs.true.74
  %84 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory77, align 8, !tbaa !22
  %call78 = call i8* @gs_program_name() #6
  %call79 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %85, i8* %call78, i64 %call79) #6
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %86, i32 0, i32 3
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory80, align 8, !tbaa !22
  %call81 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %87, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i32 0, i32 0)) #6
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params82 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %88, i32 0, i32 73
  %ColorConversionStrategy83 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params82, i32 0, i32 17
  store i32 0, i32* %ColorConversionStrategy83, align 4, !tbaa !123
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.76, %land.lhs.true.74, %land.lhs.true.72, %land.lhs.true.70, %if.end.66
  %89 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params85 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %89, i32 0, i32 73
  %ColorConversionStrategy86 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params85, i32 0, i32 17
  %90 = load i32, i32* %ColorConversionStrategy86, align 4, !tbaa !123
  %cmp87 = icmp eq i32 %90, 6
  br i1 %cmp87, label %land.lhs.true.88, label %if.end.100

land.lhs.true.88:                                 ; preds = %if.end.84
  %91 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp89 = icmp ne i32 %91, 0
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.100

land.lhs.true.90:                                 ; preds = %land.lhs.true.88
  %92 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp91 = icmp ne i32 %92, 11
  br i1 %cmp91, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %land.lhs.true.90
  %93 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory93, align 8, !tbaa !22
  %call94 = call i8* @gs_program_name() #6
  %call95 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %94, i8* %call94, i64 %call95) #6
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !22
  %call97 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %96, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.24, i32 0, i32 0)) #6
  %97 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params98 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %97, i32 0, i32 73
  %ColorConversionStrategy99 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params98, i32 0, i32 17
  store i32 0, i32* %ColorConversionStrategy99, align 4, !tbaa !123
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.92, %land.lhs.true.90, %land.lhs.true.88, %if.end.84
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %sw.epilog.48
  %98 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %98, i32 0, i32 2
  %99 = load i64, i64* %id, align 8, !tbaa !124
  %cmp102 = icmp ne i64 %99, 0
  br i1 %cmp102, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.end.101
  %100 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %101 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %id104 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %101, i32 0, i32 2
  %102 = load i64, i64* %id104, align 8, !tbaa !124
  %call105 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %100, i32 0, i64 %102) #6
  store %struct.pdf_resource_s* %call105, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.end.101
  %103 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp107 = icmp eq %struct.pdf_resource_s* %103, null
  br i1 %cmp107, label %if.then.108, label %if.end.156

if.then.108:                                      ; preds = %if.end.106
  %104 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %104) #2
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %105, i32 0, i32 3
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !22
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %106) #6
  call void @swrite_position_only(%struct.stream_s* %s) #6
  %107 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type110 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %107, i32 0, i32 0
  %108 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type110, align 8, !tbaa !120
  %serialize = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %108, i32 0, i32 15
  %109 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !125
  %110 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call111 = call i32 %109(%struct.gs_color_space_s* %110, %struct.stream_s* %s) #6
  store i32 %call111, i32* %code, align 4, !tbaa !5
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %111, 0
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.108
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %if.then.108
  %call115 = call i64 @stell(%struct.stream_s* %s) #6
  %conv = trunc i64 %call115 to i32
  store i32 %conv, i32* %serialized_size, align 4, !tbaa !5
  %call116 = call i32 @sclose(%struct.stream_s* %s) #6
  %112 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %conv117 = zext i32 %112 to i64
  %cmp118 = icmp ule i64 %conv117, 100
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.end.114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %serialized0, i32 0, i32 0
  store i8* %arraydecay, i8** %serialized, align 8, !tbaa !1
  br label %if.end.128

if.else.121:                                      ; preds = %if.end.114
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 43
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %115 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !126
  %116 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory122 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %116, i32 0, i32 43
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory122, align 8, !tbaa !98
  %118 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %call123 = call i8* %115(%struct.gs_memory_s* %117, i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %call123, i8** %serialized, align 8, !tbaa !1
  %119 = load i8*, i8** %serialized, align 8, !tbaa !1
  %cmp124 = icmp eq i8* %119, null
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.else.121
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %if.else.121
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.120
  %120 = load i8*, i8** %serialized, align 8, !tbaa !1
  %121 = load i32, i32* %serialized_size, align 4, !tbaa !5
  call void @swrite_string(%struct.stream_s* %s, i8* %120, i32 %121) #6
  %122 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type129 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %122, i32 0, i32 0
  %123 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type129, align 8, !tbaa !120
  %serialize130 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %123, i32 0, i32 15
  %124 = load i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)** %serialize130, align 8, !tbaa !125
  %125 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call131 = call i32 %124(%struct.gs_color_space_s* %125, %struct.stream_s* %s) #6
  store i32 %call131, i32* %code, align 4, !tbaa !5
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %126, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.128
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.135:                                       ; preds = %if.end.128
  %call136 = call i64 @stell(%struct.stream_s* %s) #6
  %127 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %conv137 = zext i32 %127 to i64
  %cmp138 = icmp ne i64 %call136, %conv137
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.135
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %if.end.135
  %call142 = call i32 @sclose(%struct.stream_s* %s) #6
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %129 = load i8*, i8** %serialized, align 8, !tbaa !1
  %130 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %call143 = call %struct.pdf_resource_s* @pdf_find_cspace_resource(%struct.gx_device_pdf_s* %128, i8* %129, i32 %130) #6
  store %struct.pdf_resource_s* %call143, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %131 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp144 = icmp ne %struct.pdf_resource_s* %131, null
  br i1 %cmp144, label %if.then.146, label %if.end.155

if.then.146:                                      ; preds = %if.end.141
  %132 = load i8*, i8** %serialized, align 8, !tbaa !1
  %arraydecay147 = getelementptr inbounds [100 x i8], [100 x i8]* %serialized0, i32 0, i32 0
  %cmp148 = icmp ne i8* %132, %arraydecay147
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.then.146
  %133 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory151 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %133, i32 0, i32 43
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory151, align 8, !tbaa !98
  %procs152 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs152, i32 0, i32 2
  %135 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory153 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %136, i32 0, i32 43
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory153, align 8, !tbaa !98
  %138 = load i8*, i8** %serialized, align 8, !tbaa !1
  call void %135(%struct.gs_memory_s* %137, i8* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.150, %if.then.146
  store i8* null, i8** %serialized, align 8, !tbaa !1
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.141
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.155, %if.then.140, %if.then.134, %if.then.126, %if.then.113
  %139 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %139) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1033 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.156

if.end.156:                                       ; preds = %cleanup.cont, %if.end.106
  %140 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %tobool157 = icmp ne %struct.pdf_resource_s* %140, null
  br i1 %tobool157, label %if.then.158, label %if.end.169

if.then.158:                                      ; preds = %if.end.156
  %141 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #2
  %142 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %143 = bitcast %struct.pdf_resource_s* %142 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %143, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %144 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %cmp159 = icmp ne %struct.gs_range_s** %144, null
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.167

land.lhs.true.161:                                ; preds = %if.then.158
  %145 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %ranges162 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %145, i32 0, i32 8
  %146 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges162, align 8, !tbaa !127
  %cmp163 = icmp ne %struct.gs_range_s* %146, null
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %land.lhs.true.161
  %147 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %ranges166 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %147, i32 0, i32 8
  %148 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges166, align 8, !tbaa !127
  %149 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %148, %struct.gs_range_s** %149, align 8, !tbaa !1
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %land.lhs.true.161, %if.then.158
  %150 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %150, i32 0, i32 7
  %151 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !129
  %152 = bitcast %struct.cos_object_s* %151 to %struct.cos_array_s*
  store %struct.cos_array_s* %152, %struct.cos_array_s** %pca, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  %153 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %cleanup.dest1012 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest1012, label %cleanup.1033 [
    i32 4, label %ret
  ]

if.end.169:                                       ; preds = %if.end.156
  %154 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call170 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  store %struct.cos_array_s* %call170, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %155 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cmp171 = icmp eq %struct.cos_array_s* %155, null
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.169
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.174:                                       ; preds = %if.end.169
  %156 = load i32, i32* %csi, align 4, !tbaa !104
  switch i32 %156, label %sw.default.929 [
    i32 12, label %sw.bb.175
    i32 8, label %sw.bb.177
    i32 7, label %sw.bb.393
    i32 6, label %sw.bb.596
    i32 5, label %sw.bb.665
    i32 10, label %sw.bb.734
    i32 4, label %sw.bb.736
    i32 9, label %sw.bb.879
    i32 11, label %sw.bb.913
  ]

sw.bb.175:                                        ; preds = %if.end.174
  %157 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %158 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %159 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %160 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call176 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %157, %struct.cos_value_s* %158, %struct.gs_color_space_s* %159, %struct.cos_array_s* %160) #6
  store i32 %call176, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.930

sw.bb.177:                                        ; preds = %if.end.174
  %161 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #2
  %162 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params178 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %162, i32 0, i32 7
  %a = bitcast %union.anon* %params178 to %struct.gs_cie_a_s**
  %163 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %163, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %164 = bitcast i32* %unitary to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #2
  %165 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %165, i32 0, i32 2
  %call179 = call i32 @cie_ranges_are_0_1(%struct.gs_range_s* %RangeA, i32 1) #6
  store i32 %call179, i32* %unitary, align 4, !tbaa !5
  %166 = bitcast i32* %identityA to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #2
  %167 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %167, i32 0, i32 4
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %MatrixA, i32 0, i32 0
  %168 = load float, float* %u, align 4, !tbaa !131
  %cmp180 = fcmp oeq float %168, 1.000000e+00
  br i1 %cmp180, label %land.lhs.true.182, label %land.end

land.lhs.true.182:                                ; preds = %sw.bb.177
  %169 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %MatrixA183 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %169, i32 0, i32 4
  %v184 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %MatrixA183, i32 0, i32 1
  %170 = load float, float* %v184, align 4, !tbaa !141
  %cmp185 = fcmp oeq float %170, 1.000000e+00
  br i1 %cmp185, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.182
  %171 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %MatrixA187 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %171, i32 0, i32 4
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %MatrixA187, i32 0, i32 2
  %172 = load float, float* %w, align 4, !tbaa !142
  %cmp188 = fcmp oeq float %172, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.182, %sw.bb.177
  %173 = phi i1 [ false, %land.lhs.true.182 ], [ false, %sw.bb.177 ], [ %cmp188, %land.rhs ]
  %land.ext = zext i1 %173 to i32
  store i32 %land.ext, i32* %identityA, align 4, !tbaa !5
  %174 = bitcast %struct.gs_vector3_s* %expts to i8*
  call void @llvm.lifetime.start(i64 12, i8* %174) #2
  %175 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %176 = bitcast %struct.gs_cie_a_s* %175 to %struct.gs_cie_common_s*
  store %struct.gs_cie_common_s* %176, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %177 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %177, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 4
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN, i32 0, i32 3
  %178 = load i32, i32* %is_identity, align 4, !tbaa !143
  %tobool190 = icmp ne i32 %178, 0
  br i1 %tobool190, label %if.end.231, label %if.then.191

if.then.191:                                      ; preds = %land.end
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor192 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 248
  %180 = load i32, i32* %UseOldColor192, align 4, !tbaa !111
  %tobool193 = icmp ne i32 %180, 0
  br i1 %tobool193, label %if.else.227, label %land.lhs.true.194

land.lhs.true.194:                                ; preds = %if.then.191
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 99
  %182 = load i32, i32* %ForOPDFRead, align 4, !tbaa !100
  %tobool195 = icmp ne i32 %182, 0
  br i1 %tobool195, label %if.else.227, label %if.then.196

if.then.196:                                      ; preds = %land.lhs.true.194
  %183 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %183, i32 0, i32 4
  %184 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !144
  %cmp197 = icmp eq %struct.gs_color_space_s* %184, null
  br i1 %cmp197, label %if.then.199, label %if.end.206

if.then.199:                                      ; preds = %if.then.196
  %185 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %186 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory200 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %186, i32 0, i32 3
  %187 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory200, align 8, !tbaa !22
  %call201 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %185, i32* %is_lab, %struct.gs_memory_s* %187) #6
  store i32 %call201, i32* %code, align 4, !tbaa !5
  %188 = load i32, i32* %code, align 4, !tbaa !5
  %cmp202 = icmp slt i32 %188, 0
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.then.199
  %189 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %189, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.205:                                       ; preds = %if.then.199
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.196
  %190 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %191 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %192 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent207 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %192, i32 0, i32 4
  %193 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent207, align 8, !tbaa !144
  %194 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call208 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %190, %struct.cos_value_s* %191, %struct.gs_color_space_s* %193, %struct.cos_array_s* %194) #6
  store i32 %call208, i32* %code, align 4, !tbaa !5
  %195 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params209 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %195, i32 0, i32 7
  %a210 = bitcast %union.anon* %params209 to %struct.gs_cie_a_s**
  %196 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a210, align 8, !tbaa !1
  %RangeA211 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %196, i32 0, i32 2
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %RangeA211, i32 0, i32 0
  %197 = load float, float* %rmin, align 4, !tbaa !145
  %conv212 = fpext float %197 to double
  %cmp213 = fcmp olt double %conv212, 0.000000e+00
  br i1 %cmp213, label %if.then.222, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %if.end.206
  %198 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params216 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %198, i32 0, i32 7
  %a217 = bitcast %union.anon* %params216 to %struct.gs_cie_a_s**
  %199 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a217, align 8, !tbaa !1
  %RangeA218 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %199, i32 0, i32 2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %RangeA218, i32 0, i32 1
  %200 = load float, float* %rmax, align 4, !tbaa !146
  %conv219 = fpext float %200 to double
  %cmp220 = fcmp ogt double %conv219, 1.000000e+00
  br i1 %cmp220, label %if.then.222, label %if.end.226

if.then.222:                                      ; preds = %lor.lhs.false.215, %if.end.206
  %201 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params223 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %201, i32 0, i32 7
  %a224 = bitcast %union.anon* %params223 to %struct.gs_cie_a_s**
  %202 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a224, align 8, !tbaa !1
  %RangeA225 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %202, i32 0, i32 2
  store %struct.gs_range_s* %RangeA225, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.222, %lor.lhs.false.215
  br label %if.end.230

if.else.227:                                      ; preds = %land.lhs.true.194, %if.then.191
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %204 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %205 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %206 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %207 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA228 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %207, i32 0, i32 2
  %call229 = call i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %203, %struct.cos_array_s* %204, %struct.gs_color_space_s* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct.gs_cie_common_s* %206, %struct.gs_range_s* %RangeA228, i32 0, %struct.gs_matrix3_s* null, %struct.gs_range_s** %ranges) #6
  store i32 %call229, i32* %code, align 4, !tbaa !5
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.227, %if.end.226
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.231:                                       ; preds = %land.end
  %208 = load i32, i32* %unitary, align 4, !tbaa !5
  %tobool232 = icmp ne i32 %208, 0
  br i1 %tobool232, label %land.lhs.true.233, label %if.else.272

land.lhs.true.233:                                ; preds = %if.end.231
  %209 = load i32, i32* %identityA, align 4, !tbaa !5
  %tobool234 = icmp ne i32 %209, 0
  br i1 %tobool234, label %land.lhs.true.235, label %if.else.272

land.lhs.true.235:                                ; preds = %land.lhs.true.233
  %210 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %210, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %params236 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity237 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params236, i32 0, i32 0
  %211 = load i32, i32* %is_identity237, align 4, !tbaa !147
  %tobool238 = icmp ne i32 %211, 0
  br i1 %tobool238, label %land.lhs.true.239, label %if.else.272

land.lhs.true.239:                                ; preds = %land.lhs.true.235
  %212 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common240 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %212, i32 0, i32 0
  %caches241 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common240, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches241, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %u242 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %call243 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx, float* %u242) #6
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %land.lhs.true.245, label %if.else.272

land.lhs.true.245:                                ; preds = %land.lhs.true.239
  %213 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common246 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %213, i32 0, i32 0
  %caches247 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common246, i32 0, i32 6
  %DecodeLMN248 = getelementptr inbounds %struct.anon, %struct.anon* %caches247, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN248, i32 0, i64 1
  %v250 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 1
  %call251 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx249, float* %v250) #6
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %land.lhs.true.253, label %if.else.272

land.lhs.true.253:                                ; preds = %land.lhs.true.245
  %214 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common254 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %214, i32 0, i32 0
  %caches255 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common254, i32 0, i32 6
  %DecodeLMN256 = getelementptr inbounds %struct.anon, %struct.anon* %caches255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN256, i32 0, i64 2
  %w258 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 2
  %call259 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx257, float* %w258) #6
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %land.lhs.true.261, label %if.else.272

land.lhs.true.261:                                ; preds = %land.lhs.true.253
  %v262 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 1
  %215 = load float, float* %v262, align 4, !tbaa !148
  %u263 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %216 = load float, float* %u263, align 4, !tbaa !149
  %cmp264 = fcmp oeq float %215, %216
  br i1 %cmp264, label %land.lhs.true.266, label %if.else.272

land.lhs.true.266:                                ; preds = %land.lhs.true.261
  %w267 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 2
  %217 = load float, float* %w267, align 4, !tbaa !150
  %u268 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %218 = load float, float* %u268, align 4, !tbaa !149
  %cmp269 = fcmp oeq float %217, %218
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %land.lhs.true.266
  br label %do.body

do.body:                                          ; preds = %if.then.271
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.358

if.else.272:                                      ; preds = %land.lhs.true.266, %land.lhs.true.261, %land.lhs.true.253, %land.lhs.true.245, %land.lhs.true.239, %land.lhs.true.235, %land.lhs.true.233, %if.end.231
  %219 = load i32, i32* %unitary, align 4, !tbaa !5
  %tobool273 = icmp ne i32 %219, 0
  br i1 %tobool273, label %land.lhs.true.274, label %if.else.313

land.lhs.true.274:                                ; preds = %if.else.272
  %220 = load i32, i32* %identityA, align 4, !tbaa !5
  %tobool275 = icmp ne i32 %220, 0
  br i1 %tobool275, label %land.lhs.true.276, label %if.else.313

land.lhs.true.276:                                ; preds = %land.lhs.true.274
  %221 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common277 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %221, i32 0, i32 0
  %caches278 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common277, i32 0, i32 6
  %DecodeLMN279 = getelementptr inbounds %struct.anon, %struct.anon* %caches278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN279, i32 0, i64 0
  %floats281 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx280 to %struct.cie_cache_floats_s*
  %params282 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats281, i32 0, i32 0
  %is_identity283 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params282, i32 0, i32 0
  %222 = load i32, i32* %is_identity283, align 4, !tbaa !151
  %tobool284 = icmp ne i32 %222, 0
  br i1 %tobool284, label %land.lhs.true.285, label %if.else.313

land.lhs.true.285:                                ; preds = %land.lhs.true.276
  %223 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common286 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %223, i32 0, i32 0
  %caches287 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common286, i32 0, i32 6
  %DecodeLMN288 = getelementptr inbounds %struct.anon, %struct.anon* %caches287, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN288, i32 0, i64 1
  %floats290 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx289 to %struct.cie_cache_floats_s*
  %params291 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats290, i32 0, i32 0
  %is_identity292 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params291, i32 0, i32 0
  %224 = load i32, i32* %is_identity292, align 4, !tbaa !151
  %tobool293 = icmp ne i32 %224, 0
  br i1 %tobool293, label %land.lhs.true.294, label %if.else.313

land.lhs.true.294:                                ; preds = %land.lhs.true.285
  %225 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common295 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %225, i32 0, i32 0
  %caches296 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common295, i32 0, i32 6
  %DecodeLMN297 = getelementptr inbounds %struct.anon, %struct.anon* %caches296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN297, i32 0, i64 2
  %floats299 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx298 to %struct.cie_cache_floats_s*
  %params300 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats299, i32 0, i32 0
  %is_identity301 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params300, i32 0, i32 0
  %226 = load i32, i32* %is_identity301, align 4, !tbaa !151
  %tobool302 = icmp ne i32 %226, 0
  br i1 %tobool302, label %land.lhs.true.303, label %if.else.313

land.lhs.true.303:                                ; preds = %land.lhs.true.294
  %227 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches304 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %227, i32 0, i32 5
  %DecodeA305 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches304, i32 0, i32 0
  %u306 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %call307 = call i32 @cie_vector_cache_is_exponential(%struct.gx_cie_vector_cache_s* %DecodeA305, float* %u306) #6
  %tobool308 = icmp ne i32 %call307, 0
  br i1 %tobool308, label %if.then.309, label %if.else.313

if.then.309:                                      ; preds = %land.lhs.true.303
  br label %do.body.310

do.body.310:                                      ; preds = %if.then.309
  br label %do.cond.311

do.cond.311:                                      ; preds = %do.body.310
  br label %do.end.312

do.end.312:                                       ; preds = %do.cond.311
  br label %if.end.357

if.else.313:                                      ; preds = %land.lhs.true.303, %land.lhs.true.294, %land.lhs.true.285, %land.lhs.true.276, %land.lhs.true.274, %if.else.272
  %228 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor314 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %228, i32 0, i32 248
  %229 = load i32, i32* %UseOldColor314, align 4, !tbaa !111
  %tobool315 = icmp ne i32 %229, 0
  br i1 %tobool315, label %if.else.353, label %land.lhs.true.316

land.lhs.true.316:                                ; preds = %if.else.313
  %230 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead317 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %230, i32 0, i32 99
  %231 = load i32, i32* %ForOPDFRead317, align 4, !tbaa !100
  %tobool318 = icmp ne i32 %231, 0
  br i1 %tobool318, label %if.else.353, label %if.then.319

if.then.319:                                      ; preds = %land.lhs.true.316
  %232 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent320 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %232, i32 0, i32 4
  %233 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent320, align 8, !tbaa !144
  %cmp321 = icmp eq %struct.gs_color_space_s* %233, null
  br i1 %cmp321, label %if.then.323, label %if.end.330

if.then.323:                                      ; preds = %if.then.319
  %234 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory324 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %235, i32 0, i32 3
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory324, align 8, !tbaa !22
  %call325 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %234, i32* %is_lab, %struct.gs_memory_s* %236) #6
  store i32 %call325, i32* %code, align 4, !tbaa !5
  %237 = load i32, i32* %code, align 4, !tbaa !5
  %cmp326 = icmp slt i32 %237, 0
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.then.323
  %238 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.329:                                       ; preds = %if.then.323
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.319
  %239 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %240 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %241 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent331 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %241, i32 0, i32 4
  %242 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent331, align 8, !tbaa !144
  %243 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call332 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %239, %struct.cos_value_s* %240, %struct.gs_color_space_s* %242, %struct.cos_array_s* %243) #6
  store i32 %call332, i32* %code, align 4, !tbaa !5
  %244 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params333 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %244, i32 0, i32 7
  %a334 = bitcast %union.anon* %params333 to %struct.gs_cie_a_s**
  %245 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a334, align 8, !tbaa !1
  %RangeA335 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %245, i32 0, i32 2
  %rmin336 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %RangeA335, i32 0, i32 0
  %246 = load float, float* %rmin336, align 4, !tbaa !145
  %conv337 = fpext float %246 to double
  %cmp338 = fcmp olt double %conv337, 0.000000e+00
  br i1 %cmp338, label %if.then.348, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %if.end.330
  %247 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params341 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %247, i32 0, i32 7
  %a342 = bitcast %union.anon* %params341 to %struct.gs_cie_a_s**
  %248 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a342, align 8, !tbaa !1
  %RangeA343 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %248, i32 0, i32 2
  %rmax344 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %RangeA343, i32 0, i32 1
  %249 = load float, float* %rmax344, align 4, !tbaa !146
  %conv345 = fpext float %249 to double
  %cmp346 = fcmp ogt double %conv345, 1.000000e+00
  br i1 %cmp346, label %if.then.348, label %if.end.352

if.then.348:                                      ; preds = %lor.lhs.false.340, %if.end.330
  %250 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params349 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %250, i32 0, i32 7
  %a350 = bitcast %union.anon* %params349 to %struct.gs_cie_a_s**
  %251 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a350, align 8, !tbaa !1
  %RangeA351 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %251, i32 0, i32 2
  store %struct.gs_range_s* %RangeA351, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.348, %lor.lhs.false.340
  br label %if.end.356

if.else.353:                                      ; preds = %land.lhs.true.316, %if.else.313
  %252 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %253 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %254 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %255 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %256 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA354 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %256, i32 0, i32 2
  %call355 = call i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %252, %struct.cos_array_s* %253, %struct.gs_color_space_s* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct.gs_cie_common_s* %255, %struct.gs_range_s* %RangeA354, i32 0, %struct.gs_matrix3_s* null, %struct.gs_range_s** %ranges) #6
  store i32 %call355, i32* %code, align 4, !tbaa !5
  br label %if.end.356

if.end.356:                                       ; preds = %if.else.353, %if.end.352
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.357:                                       ; preds = %do.end.312
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %do.end
  %257 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call359 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #6
  %call360 = call i32 @cos_array_add(%struct.cos_array_s* %257, %struct.cos_value_s* %call359) #6
  store i32 %call360, i32* %code, align 4, !tbaa !5
  %258 = load i32, i32* %code, align 4, !tbaa !5
  %cmp361 = icmp slt i32 %258, 0
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.358
  %259 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.364:                                       ; preds = %if.end.358
  %260 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call365 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %260, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call365, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %261 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp366 = icmp eq %struct.cos_dict_s* %261, null
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.364
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.369:                                       ; preds = %if.end.364
  %u370 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %262 = load float, float* %u370, align 4, !tbaa !149
  %cmp371 = fcmp une float %262, 1.000000e+00
  br i1 %cmp371, label %if.then.373, label %if.end.381

if.then.373:                                      ; preds = %if.end.369
  %263 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %u374 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts, i32 0, i32 0
  %264 = load float, float* %u374, align 4, !tbaa !149
  %conv375 = fpext float %264 to double
  %call376 = call i32 @cos_dict_put_c_key_real(%struct.cos_dict_s* %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), double %conv375) #6
  store i32 %call376, i32* %code, align 4, !tbaa !5
  %265 = load i32, i32* %code, align 4, !tbaa !5
  %cmp377 = icmp slt i32 %265, 0
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %if.then.373
  %266 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %266, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.382

if.end.380:                                       ; preds = %if.then.373
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.end.369
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.382

cleanup.382:                                      ; preds = %if.end.381, %if.then.379, %if.then.368, %if.then.363, %if.end.356, %if.then.328, %if.end.230, %if.then.204
  %267 = bitcast %struct.gs_vector3_s* %expts to i8*
  call void @llvm.lifetime.end(i64 12, i8* %267) #2
  %268 = bitcast i32* %identityA to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #2
  %269 = bitcast i32* %unitary to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  %cleanup.dest.386 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.386, label %cleanup.1033 [
    i32 0, label %cleanup.cont.387
    i32 5, label %sw.epilog.930
  ]

cleanup.cont.387:                                 ; preds = %cleanup.382
  br label %cal

cal:                                              ; preds = %cleanup.cont.595, %cleanup.589, %cleanup.cont.387
  %271 = load i32, i32* %code, align 4, !tbaa !5
  %cmp388 = icmp slt i32 %271, 0
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %cal
  %272 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %272, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.391:                                       ; preds = %cal
  %273 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %274 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %275 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %call392 = call i32 @pdf_finish_cie_space(%struct.cos_array_s* %273, %struct.cos_dict_s* %274, %struct.gs_cie_common_s* %275) #6
  store i32 %call392, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.930

sw.bb.393:                                        ; preds = %if.end.174
  %276 = bitcast %struct.gs_cie_abc_s** %pcie394 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %276) #2
  %277 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params395 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %277, i32 0, i32 7
  %abc = bitcast %union.anon* %params395 to %struct.gs_cie_abc_s**
  %278 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %278, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %279 = bitcast i32* %unitary396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #2
  %280 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %280, i32 0, i32 2
  %ranges397 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arraydecay398 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges397, i32 0, i32 0
  %call399 = call i32 @cie_ranges_are_0_1(%struct.gs_range_s* %arraydecay398, i32 3) #6
  store i32 %call399, i32* %unitary396, align 4, !tbaa !5
  %281 = bitcast %struct.gs_vector3_s* %expts400 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %281) #2
  %282 = bitcast %struct.gs_matrix3_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %282) #2
  store %struct.gs_matrix3_s* null, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %283 = bitcast i32* %one_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #2
  %284 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %call401 = call i32 @cie_cached_abc_is_one_step(%struct.gs_cie_abc_s* %284, %struct.gs_matrix3_s** %pmat) #6
  store i32 %call401, i32* %one_step, align 4, !tbaa !104
  %285 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %286 = bitcast %struct.gs_cie_abc_s* %285 to %struct.gs_cie_common_s*
  store %struct.gs_cie_common_s* %286, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %287 = load i32, i32* %unitary396, align 4, !tbaa !5
  %tobool402 = icmp ne i32 %287, 0
  br i1 %tobool402, label %if.then.403, label %if.end.457

if.then.403:                                      ; preds = %sw.bb.393
  %288 = load i32, i32* %one_step, align 4, !tbaa !104
  switch i32 %288, label %sw.default.455 [
    i32 2, label %sw.bb.404
    i32 1, label %sw.bb.429
  ]

sw.bb.404:                                        ; preds = %if.then.403
  %289 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %caches405 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %289, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches405, i32 0, i32 1
  %caches406 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches406, i32 0, i64 0
  %u408 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 0
  %call409 = call i32 @cie_vector_cache_is_exponential(%struct.gx_cie_vector_cache_s* %arrayidx407, float* %u408) #6
  %tobool410 = icmp ne i32 %call409, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.end.428

land.lhs.true.411:                                ; preds = %sw.bb.404
  %290 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %caches412 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %290, i32 0, i32 5
  %DecodeABC413 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches412, i32 0, i32 1
  %caches414 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC413, i32 0, i32 0
  %arrayidx415 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches414, i32 0, i64 1
  %v416 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 1
  %call417 = call i32 @cie_vector_cache_is_exponential(%struct.gx_cie_vector_cache_s* %arrayidx415, float* %v416) #6
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %land.lhs.true.419, label %if.end.428

land.lhs.true.419:                                ; preds = %land.lhs.true.411
  %291 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %caches420 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %291, i32 0, i32 5
  %DecodeABC421 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches420, i32 0, i32 1
  %caches422 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC421, i32 0, i32 0
  %arrayidx423 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches422, i32 0, i64 2
  %w424 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 2
  %call425 = call i32 @cie_vector_cache_is_exponential(%struct.gx_cie_vector_cache_s* %arrayidx423, float* %w424) #6
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %land.lhs.true.419
  br label %calrgb

if.end.428:                                       ; preds = %land.lhs.true.419, %land.lhs.true.411, %sw.bb.404
  br label %sw.epilog.456

sw.bb.429:                                        ; preds = %if.then.403
  %292 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %common430 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %292, i32 0, i32 0
  %caches431 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common430, i32 0, i32 6
  %DecodeLMN432 = getelementptr inbounds %struct.anon, %struct.anon* %caches431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN432, i32 0, i64 0
  %u434 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 0
  %call435 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx433, float* %u434) #6
  %tobool436 = icmp ne i32 %call435, 0
  br i1 %tobool436, label %land.lhs.true.437, label %if.end.454

land.lhs.true.437:                                ; preds = %sw.bb.429
  %293 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %common438 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %293, i32 0, i32 0
  %caches439 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common438, i32 0, i32 6
  %DecodeLMN440 = getelementptr inbounds %struct.anon, %struct.anon* %caches439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN440, i32 0, i64 1
  %v442 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 1
  %call443 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx441, float* %v442) #6
  %tobool444 = icmp ne i32 %call443, 0
  br i1 %tobool444, label %land.lhs.true.445, label %if.end.454

land.lhs.true.445:                                ; preds = %land.lhs.true.437
  %294 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %common446 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %294, i32 0, i32 0
  %caches447 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common446, i32 0, i32 6
  %DecodeLMN448 = getelementptr inbounds %struct.anon, %struct.anon* %caches447, i32 0, i32 0
  %arrayidx449 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN448, i32 0, i64 2
  %w450 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 2
  %call451 = call i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %arrayidx449, float* %w450) #6
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %land.lhs.true.445
  br label %calrgb

if.end.454:                                       ; preds = %land.lhs.true.445, %land.lhs.true.437, %sw.bb.429
  br label %sw.default.455

sw.default.455:                                   ; preds = %if.then.403, %if.end.454
  br label %sw.epilog.456

sw.epilog.456:                                    ; preds = %sw.default.455, %if.end.428
  br label %if.end.457

if.end.457:                                       ; preds = %sw.epilog.456, %sw.bb.393
  %295 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %call458 = call i32 @cie_is_lab(%struct.gs_cie_abc_s* %295) #6
  %tobool459 = icmp ne i32 %call458, 0
  br i1 %tobool459, label %if.then.460, label %if.else.470

if.then.460:                                      ; preds = %if.end.457
  %296 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call461 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call461, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %297 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp462 = icmp eq %struct.cos_dict_s* %297, null
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.then.460
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.589

if.end.465:                                       ; preds = %if.then.460
  %298 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %299 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %300 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %RangeABC466 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %300, i32 0, i32 2
  %ranges467 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC466, i32 0, i32 0
  %arraydecay468 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges467, i32 0, i32 0
  %call469 = call i32 @pdf_put_lab_color_space(%struct.cos_array_s* %298, %struct.cos_dict_s* %299, %struct.gs_range_s* %arraydecay468) #6
  store i32 %call469, i32* %code, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.589

if.else.470:                                      ; preds = %if.end.457
  %301 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor471 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %301, i32 0, i32 248
  %302 = load i32, i32* %UseOldColor471, align 4, !tbaa !111
  %tobool472 = icmp ne i32 %302, 0
  br i1 %tobool472, label %if.else.524, label %land.lhs.true.473

land.lhs.true.473:                                ; preds = %if.else.470
  %303 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead474 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %303, i32 0, i32 99
  %304 = load i32, i32* %ForOPDFRead474, align 4, !tbaa !100
  %tobool475 = icmp ne i32 %304, 0
  br i1 %tobool475, label %if.else.524, label %if.then.476

if.then.476:                                      ; preds = %land.lhs.true.473
  %305 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %305) #2
  %306 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent477 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %306, i32 0, i32 4
  %307 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent477, align 8, !tbaa !144
  %cmp478 = icmp eq %struct.gs_color_space_s* %307, null
  br i1 %cmp478, label %if.then.480, label %if.end.487

if.then.480:                                      ; preds = %if.then.476
  %308 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %309 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory481 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %309, i32 0, i32 3
  %310 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory481, align 8, !tbaa !22
  %call482 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %308, i32* %is_lab, %struct.gs_memory_s* %310) #6
  store i32 %call482, i32* %code, align 4, !tbaa !5
  %311 = load i32, i32* %code, align 4, !tbaa !5
  %cmp483 = icmp slt i32 %311, 0
  br i1 %cmp483, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %if.then.480
  %312 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %312, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.521

if.end.486:                                       ; preds = %if.then.480
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.then.476
  %313 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %314 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %315 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent488 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %315, i32 0, i32 4
  %316 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent488, align 8, !tbaa !144
  %317 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call489 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %313, %struct.cos_value_s* %314, %struct.gs_color_space_s* %316, %struct.cos_array_s* %317) #6
  store i32 %call489, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.487
  %318 = load i32, i32* %i, align 4, !tbaa !5
  %cmp490 = icmp slt i32 %318, 3
  br i1 %cmp490, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %319 = bitcast double* %rmin492 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319) #2
  %320 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %320 to i64
  %321 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params493 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %321, i32 0, i32 7
  %abc494 = bitcast %union.anon* %params493 to %struct.gs_cie_abc_s**
  %322 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc494, align 8, !tbaa !1
  %RangeABC495 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %322, i32 0, i32 2
  %ranges496 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges496, i32 0, i64 %idxprom
  %rmin498 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx497, i32 0, i32 0
  %323 = load float, float* %rmin498, align 4, !tbaa !152
  %conv499 = fpext float %323 to double
  store double %conv499, double* %rmin492, align 8, !tbaa !153
  %324 = bitcast double* %rmax500 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %324) #2
  %325 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom501 = sext i32 %325 to i64
  %326 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params502 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %326, i32 0, i32 7
  %abc503 = bitcast %union.anon* %params502 to %struct.gs_cie_abc_s**
  %327 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc503, align 8, !tbaa !1
  %RangeABC504 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %327, i32 0, i32 2
  %ranges505 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges505, i32 0, i64 %idxprom501
  %rmax507 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx506, i32 0, i32 1
  %328 = load float, float* %rmax507, align 4, !tbaa !154
  %conv508 = fpext float %328 to double
  store double %conv508, double* %rmax500, align 8, !tbaa !153
  %329 = load double, double* %rmin492, align 8, !tbaa !153
  %cmp509 = fcmp olt double %329, 0.000000e+00
  br i1 %cmp509, label %if.then.514, label %lor.lhs.false.511

lor.lhs.false.511:                                ; preds = %for.body
  %330 = load double, double* %rmax500, align 8, !tbaa !153
  %cmp512 = fcmp ogt double %330, 1.000000e+00
  br i1 %cmp512, label %if.then.514, label %if.end.520

if.then.514:                                      ; preds = %lor.lhs.false.511, %for.body
  %331 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params515 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %331, i32 0, i32 7
  %abc516 = bitcast %union.anon* %params515 to %struct.gs_cie_abc_s**
  %332 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc516, align 8, !tbaa !1
  %RangeABC517 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %332, i32 0, i32 2
  %ranges518 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC517, i32 0, i32 0
  %arraydecay519 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges518, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay519, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.514, %lor.lhs.false.511
  %333 = bitcast double* %rmax500 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #2
  %334 = bitcast double* %rmin492 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.520
  %335 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %335, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.521

cleanup.521:                                      ; preds = %for.end, %if.then.485
  %336 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #2
  %cleanup.dest.522 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.522, label %cleanup.589 [
    i32 0, label %cleanup.cont.523
  ]

cleanup.cont.523:                                 ; preds = %cleanup.521
  br label %if.end.529

if.else.524:                                      ; preds = %land.lhs.true.473, %if.else.470
  %337 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %338 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %339 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %340 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pciec, align 8, !tbaa !1
  %341 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie394, align 8, !tbaa !1
  %RangeABC525 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %341, i32 0, i32 2
  %ranges526 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC525, i32 0, i32 0
  %arraydecay527 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges526, i32 0, i32 0
  %342 = load i32, i32* %one_step, align 4, !tbaa !104
  %343 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %call528 = call i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %337, %struct.cos_array_s* %338, %struct.gs_color_space_s* %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %struct.gs_cie_common_s* %340, %struct.gs_range_s* %arraydecay527, i32 %342, %struct.gs_matrix3_s* %343, %struct.gs_range_s** %ranges) #6
  store i32 %call528, i32* %code, align 4, !tbaa !5
  br label %if.end.529

if.end.529:                                       ; preds = %if.else.524, %cleanup.cont.523
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.589

calrgb:                                           ; preds = %if.then.453, %if.then.427
  %344 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call530 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #6
  %call531 = call i32 @cos_array_add(%struct.cos_array_s* %344, %struct.cos_value_s* %call530) #6
  store i32 %call531, i32* %code, align 4, !tbaa !5
  %345 = load i32, i32* %code, align 4, !tbaa !5
  %cmp532 = icmp slt i32 %345, 0
  br i1 %cmp532, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %calrgb
  %346 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %346, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.589

if.end.535:                                       ; preds = %calrgb
  %347 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call536 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %347, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call536, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %348 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp537 = icmp eq %struct.cos_dict_s* %348, null
  br i1 %cmp537, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %if.end.535
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.589

if.end.540:                                       ; preds = %if.end.535
  %u541 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 0
  %349 = load float, float* %u541, align 4, !tbaa !149
  %cmp542 = fcmp une float %349, 1.000000e+00
  br i1 %cmp542, label %if.then.552, label %lor.lhs.false.544

lor.lhs.false.544:                                ; preds = %if.end.540
  %v545 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 1
  %350 = load float, float* %v545, align 4, !tbaa !148
  %cmp546 = fcmp une float %350, 1.000000e+00
  br i1 %cmp546, label %if.then.552, label %lor.lhs.false.548

lor.lhs.false.548:                                ; preds = %lor.lhs.false.544
  %w549 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %expts400, i32 0, i32 2
  %351 = load float, float* %w549, align 4, !tbaa !150
  %cmp550 = fcmp une float %351, 1.000000e+00
  br i1 %cmp550, label %if.then.552, label %if.end.558

if.then.552:                                      ; preds = %lor.lhs.false.548, %lor.lhs.false.544, %if.end.540
  %352 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %call553 = call i32 @cos_dict_put_c_key_vector3(%struct.cos_dict_s* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), %struct.gs_vector3_s* %expts400) #6
  store i32 %call553, i32* %code, align 4, !tbaa !5
  %353 = load i32, i32* %code, align 4, !tbaa !5
  %cmp554 = icmp slt i32 %353, 0
  br i1 %cmp554, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %if.then.552
  %354 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %354, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.589

if.end.557:                                       ; preds = %if.then.552
  br label %if.end.558

if.end.558:                                       ; preds = %if.end.557, %lor.lhs.false.548
  %355 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %is_identity559 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %355, i32 0, i32 3
  %356 = load i32, i32* %is_identity559, align 4, !tbaa !155
  %tobool560 = icmp ne i32 %356, 0
  br i1 %tobool560, label %if.end.588, label %if.then.561

if.then.561:                                      ; preds = %if.end.558
  %357 = bitcast %struct.cos_array_s** %pcma to i8*
  call void @llvm.lifetime.start(i64 8, i8* %357) #2
  %358 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call562 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %358, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0)) #6
  store %struct.cos_array_s* %call562, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %359 = load %struct.cos_array_s*, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %cmp563 = icmp eq %struct.cos_array_s* %359, null
  br i1 %cmp563, label %if.then.565, label %if.end.566

if.then.565:                                      ; preds = %if.then.561
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.585

if.end.566:                                       ; preds = %if.then.561
  %360 = load %struct.cos_array_s*, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %361 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %361, i32 0, i32 0
  %call567 = call i32 @cos_array_add_vector3(%struct.cos_array_s* %360, %struct.gs_vector3_s* %cu) #6
  store i32 %call567, i32* %code, align 4, !tbaa !5
  %cmp568 = icmp slt i32 %call567, 0
  br i1 %cmp568, label %if.then.583, label %lor.lhs.false.570

lor.lhs.false.570:                                ; preds = %if.end.566
  %362 = load %struct.cos_array_s*, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %363 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %363, i32 0, i32 1
  %call571 = call i32 @cos_array_add_vector3(%struct.cos_array_s* %362, %struct.gs_vector3_s* %cv) #6
  store i32 %call571, i32* %code, align 4, !tbaa !5
  %cmp572 = icmp slt i32 %call571, 0
  br i1 %cmp572, label %if.then.583, label %lor.lhs.false.574

lor.lhs.false.574:                                ; preds = %lor.lhs.false.570
  %364 = load %struct.cos_array_s*, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %365 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %365, i32 0, i32 2
  %call575 = call i32 @cos_array_add_vector3(%struct.cos_array_s* %364, %struct.gs_vector3_s* %cw) #6
  store i32 %call575, i32* %code, align 4, !tbaa !5
  %cmp576 = icmp slt i32 %call575, 0
  br i1 %cmp576, label %if.then.583, label %lor.lhs.false.578

lor.lhs.false.578:                                ; preds = %lor.lhs.false.574
  %366 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %367 = load %struct.cos_array_s*, %struct.cos_array_s** %pcma, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %367, i32 0, i32 0
  %368 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call579 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v, %struct.cos_object_s* %368) #6
  %call580 = call i32 @cos_dict_put(%struct.cos_dict_s* %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 7, %struct.cos_value_s* %call579) #6
  store i32 %call580, i32* %code, align 4, !tbaa !5
  %cmp581 = icmp slt i32 %call580, 0
  br i1 %cmp581, label %if.then.583, label %if.end.584

if.then.583:                                      ; preds = %lor.lhs.false.578, %lor.lhs.false.574, %lor.lhs.false.570, %if.end.566
  %369 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %369, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.585

if.end.584:                                       ; preds = %lor.lhs.false.578
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.585

cleanup.585:                                      ; preds = %if.end.584, %if.then.583, %if.then.565
  %370 = bitcast %struct.cos_array_s** %pcma to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #2
  %cleanup.dest.586 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.586, label %cleanup.589 [
    i32 0, label %cleanup.cont.587
  ]

cleanup.cont.587:                                 ; preds = %cleanup.585
  br label %if.end.588

if.end.588:                                       ; preds = %cleanup.cont.587, %if.end.558
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.589

cleanup.589:                                      ; preds = %if.end.588, %cleanup.585, %if.then.556, %if.then.539, %if.then.534, %if.end.529, %cleanup.521, %if.end.465, %if.then.464
  %371 = bitcast i32* %one_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #2
  %372 = bitcast %struct.gs_matrix3_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #2
  %373 = bitcast %struct.gs_vector3_s* %expts400 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %373) #2
  %374 = bitcast i32* %unitary396 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #2
  %375 = bitcast %struct.gs_cie_abc_s** %pcie394 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #2
  %cleanup.dest.594 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.594, label %cleanup.1033 [
    i32 0, label %cleanup.cont.595
    i32 10, label %cal
    i32 5, label %sw.epilog.930
  ]

cleanup.cont.595:                                 ; preds = %cleanup.589
  br label %cal

sw.bb.596:                                        ; preds = %if.end.174
  %376 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor597 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %376, i32 0, i32 248
  %377 = load i32, i32* %UseOldColor597, align 4, !tbaa !111
  %tobool598 = icmp ne i32 %377, 0
  br i1 %tobool598, label %if.else.655, label %land.lhs.true.599

land.lhs.true.599:                                ; preds = %sw.bb.596
  %378 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead600 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %378, i32 0, i32 99
  %379 = load i32, i32* %ForOPDFRead600, align 4, !tbaa !100
  %tobool601 = icmp ne i32 %379, 0
  br i1 %tobool601, label %if.else.655, label %if.then.602

if.then.602:                                      ; preds = %land.lhs.true.599
  %380 = bitcast i32* %i603 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #2
  %381 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent604 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %381, i32 0, i32 4
  %382 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent604, align 8, !tbaa !144
  %cmp605 = icmp eq %struct.gs_color_space_s* %382, null
  br i1 %cmp605, label %if.then.607, label %if.end.614

if.then.607:                                      ; preds = %if.then.602
  %383 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %384 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory608 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %384, i32 0, i32 3
  %385 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory608, align 8, !tbaa !22
  %call609 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %383, i32* %is_lab, %struct.gs_memory_s* %385) #6
  store i32 %call609, i32* %code, align 4, !tbaa !5
  %386 = load i32, i32* %code, align 4, !tbaa !5
  %cmp610 = icmp slt i32 %386, 0
  br i1 %cmp610, label %if.then.612, label %if.end.613

if.then.612:                                      ; preds = %if.then.607
  %387 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %387, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.652

if.end.613:                                       ; preds = %if.then.607
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.then.602
  %388 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %389 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %390 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent615 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %390, i32 0, i32 4
  %391 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent615, align 8, !tbaa !144
  %392 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call616 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %388, %struct.cos_value_s* %389, %struct.gs_color_space_s* %391, %struct.cos_array_s* %392) #6
  store i32 %call616, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i603, align 4, !tbaa !5
  br label %for.cond.617

for.cond.617:                                     ; preds = %for.inc.649, %if.end.614
  %393 = load i32, i32* %i603, align 4, !tbaa !5
  %cmp618 = icmp slt i32 %393, 3
  br i1 %cmp618, label %for.body.620, label %for.end.651

for.body.620:                                     ; preds = %for.cond.617
  %394 = bitcast double* %rmin621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %394) #2
  %395 = load i32, i32* %i603, align 4, !tbaa !5
  %idxprom622 = sext i32 %395 to i64
  %396 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params623 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %396, i32 0, i32 7
  %def = bitcast %union.anon* %params623 to %struct.gs_cie_def_s**
  %397 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %397, i32 0, i32 6
  %ranges624 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges624, i32 0, i64 %idxprom622
  %rmin626 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx625, i32 0, i32 0
  %398 = load float, float* %rmin626, align 4, !tbaa !152
  %conv627 = fpext float %398 to double
  store double %conv627, double* %rmin621, align 8, !tbaa !153
  %399 = bitcast double* %rmax628 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %399) #2
  %400 = load i32, i32* %i603, align 4, !tbaa !5
  %idxprom629 = sext i32 %400 to i64
  %401 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params630 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %401, i32 0, i32 7
  %def631 = bitcast %union.anon* %params630 to %struct.gs_cie_def_s**
  %402 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def631, align 8, !tbaa !1
  %RangeDEF632 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %402, i32 0, i32 6
  %ranges633 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF632, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges633, i32 0, i64 %idxprom629
  %rmax635 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx634, i32 0, i32 1
  %403 = load float, float* %rmax635, align 4, !tbaa !154
  %conv636 = fpext float %403 to double
  store double %conv636, double* %rmax628, align 8, !tbaa !153
  %404 = load double, double* %rmin621, align 8, !tbaa !153
  %cmp637 = fcmp olt double %404, 0.000000e+00
  br i1 %cmp637, label %if.then.642, label %lor.lhs.false.639

lor.lhs.false.639:                                ; preds = %for.body.620
  %405 = load double, double* %rmax628, align 8, !tbaa !153
  %cmp640 = fcmp ogt double %405, 1.000000e+00
  br i1 %cmp640, label %if.then.642, label %if.end.648

if.then.642:                                      ; preds = %lor.lhs.false.639, %for.body.620
  %406 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params643 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %406, i32 0, i32 7
  %def644 = bitcast %union.anon* %params643 to %struct.gs_cie_def_s**
  %407 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def644, align 8, !tbaa !1
  %RangeDEF645 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %407, i32 0, i32 6
  %ranges646 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF645, i32 0, i32 0
  %arraydecay647 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges646, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay647, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.648

if.end.648:                                       ; preds = %if.then.642, %lor.lhs.false.639
  %408 = bitcast double* %rmax628 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #2
  %409 = bitcast double* %rmin621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #2
  br label %for.inc.649

for.inc.649:                                      ; preds = %if.end.648
  %410 = load i32, i32* %i603, align 4, !tbaa !5
  %inc650 = add nsw i32 %410, 1
  store i32 %inc650, i32* %i603, align 4, !tbaa !5
  br label %for.cond.617

for.end.651:                                      ; preds = %for.cond.617
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.652

cleanup.652:                                      ; preds = %for.end.651, %if.then.612
  %411 = bitcast i32* %i603 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #2
  %cleanup.dest.653 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.653, label %cleanup.1033 [
    i32 0, label %cleanup.cont.654
  ]

cleanup.cont.654:                                 ; preds = %cleanup.652
  br label %if.end.664

if.else.655:                                      ; preds = %land.lhs.true.599, %sw.bb.596
  %412 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %413 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %414 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %415 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params656 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %415, i32 0, i32 7
  %def657 = bitcast %union.anon* %params656 to %struct.gs_cie_def_s**
  %416 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def657, align 8, !tbaa !1
  %417 = bitcast %struct.gs_cie_def_s* %416 to %struct.gs_cie_common_s*
  %418 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params658 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %418, i32 0, i32 7
  %def659 = bitcast %union.anon* %params658 to %struct.gs_cie_def_s**
  %419 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def659, align 8, !tbaa !1
  %RangeDEF660 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %419, i32 0, i32 6
  %ranges661 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF660, i32 0, i32 0
  %arraydecay662 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges661, i32 0, i32 0
  %call663 = call i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %412, %struct.cos_array_s* %413, %struct.gs_color_space_s* %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), %struct.gs_cie_common_s* %417, %struct.gs_range_s* %arraydecay662, i32 0, %struct.gs_matrix3_s* null, %struct.gs_range_s** %ranges) #6
  store i32 %call663, i32* %code, align 4, !tbaa !5
  br label %if.end.664

if.end.664:                                       ; preds = %if.else.655, %cleanup.cont.654
  br label %sw.epilog.930

sw.bb.665:                                        ; preds = %if.end.174
  %420 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %UseOldColor666 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %420, i32 0, i32 248
  %421 = load i32, i32* %UseOldColor666, align 4, !tbaa !111
  %tobool667 = icmp ne i32 %421, 0
  br i1 %tobool667, label %if.else.724, label %land.lhs.true.668

land.lhs.true.668:                                ; preds = %sw.bb.665
  %422 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead669 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %422, i32 0, i32 99
  %423 = load i32, i32* %ForOPDFRead669, align 4, !tbaa !100
  %tobool670 = icmp ne i32 %423, 0
  br i1 %tobool670, label %if.else.724, label %if.then.671

if.then.671:                                      ; preds = %land.lhs.true.668
  %424 = bitcast i32* %i672 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #2
  %425 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent673 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %425, i32 0, i32 4
  %426 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent673, align 8, !tbaa !144
  %cmp674 = icmp eq %struct.gs_color_space_s* %426, null
  br i1 %cmp674, label %if.then.676, label %if.end.683

if.then.676:                                      ; preds = %if.then.671
  %427 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %428 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory677 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %428, i32 0, i32 3
  %429 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory677, align 8, !tbaa !22
  %call678 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %427, i32* %is_lab, %struct.gs_memory_s* %429) #6
  store i32 %call678, i32* %code, align 4, !tbaa !5
  %430 = load i32, i32* %code, align 4, !tbaa !5
  %cmp679 = icmp slt i32 %430, 0
  br i1 %cmp679, label %if.then.681, label %if.end.682

if.then.681:                                      ; preds = %if.then.676
  %431 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %431, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.721

if.end.682:                                       ; preds = %if.then.676
  br label %if.end.683

if.end.683:                                       ; preds = %if.end.682, %if.then.671
  %432 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %433 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %434 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent684 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %434, i32 0, i32 4
  %435 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent684, align 8, !tbaa !144
  %436 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call685 = call i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s* %432, %struct.cos_value_s* %433, %struct.gs_color_space_s* %435, %struct.cos_array_s* %436) #6
  store i32 %call685, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i672, align 4, !tbaa !5
  br label %for.cond.686

for.cond.686:                                     ; preds = %for.inc.718, %if.end.683
  %437 = load i32, i32* %i672, align 4, !tbaa !5
  %cmp687 = icmp slt i32 %437, 4
  br i1 %cmp687, label %for.body.689, label %for.end.720

for.body.689:                                     ; preds = %for.cond.686
  %438 = bitcast double* %rmin690 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %438) #2
  %439 = load i32, i32* %i672, align 4, !tbaa !5
  %idxprom691 = sext i32 %439 to i64
  %440 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params692 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %440, i32 0, i32 7
  %defg = bitcast %union.anon* %params692 to %struct.gs_cie_defg_s**
  %441 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %441, i32 0, i32 6
  %ranges693 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges693, i32 0, i64 %idxprom691
  %rmin695 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx694, i32 0, i32 0
  %442 = load float, float* %rmin695, align 4, !tbaa !152
  %conv696 = fpext float %442 to double
  store double %conv696, double* %rmin690, align 8, !tbaa !153
  %443 = bitcast double* %rmax697 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %443) #2
  %444 = load i32, i32* %i672, align 4, !tbaa !5
  %idxprom698 = sext i32 %444 to i64
  %445 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params699 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %445, i32 0, i32 7
  %defg700 = bitcast %union.anon* %params699 to %struct.gs_cie_defg_s**
  %446 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg700, align 8, !tbaa !1
  %RangeDEFG701 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %446, i32 0, i32 6
  %ranges702 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges702, i32 0, i64 %idxprom698
  %rmax704 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx703, i32 0, i32 1
  %447 = load float, float* %rmax704, align 4, !tbaa !154
  %conv705 = fpext float %447 to double
  store double %conv705, double* %rmax697, align 8, !tbaa !153
  %448 = load double, double* %rmin690, align 8, !tbaa !153
  %cmp706 = fcmp olt double %448, 0.000000e+00
  br i1 %cmp706, label %if.then.711, label %lor.lhs.false.708

lor.lhs.false.708:                                ; preds = %for.body.689
  %449 = load double, double* %rmax697, align 8, !tbaa !153
  %cmp709 = fcmp ogt double %449, 1.000000e+00
  br i1 %cmp709, label %if.then.711, label %if.end.717

if.then.711:                                      ; preds = %lor.lhs.false.708, %for.body.689
  %450 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params712 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %450, i32 0, i32 7
  %defg713 = bitcast %union.anon* %params712 to %struct.gs_cie_defg_s**
  %451 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg713, align 8, !tbaa !1
  %RangeDEFG714 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %451, i32 0, i32 6
  %ranges715 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG714, i32 0, i32 0
  %arraydecay716 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges715, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay716, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.711, %lor.lhs.false.708
  %452 = bitcast double* %rmax697 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %452) #2
  %453 = bitcast double* %rmin690 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %453) #2
  br label %for.inc.718

for.inc.718:                                      ; preds = %if.end.717
  %454 = load i32, i32* %i672, align 4, !tbaa !5
  %inc719 = add nsw i32 %454, 1
  store i32 %inc719, i32* %i672, align 4, !tbaa !5
  br label %for.cond.686

for.end.720:                                      ; preds = %for.cond.686
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.721

cleanup.721:                                      ; preds = %for.end.720, %if.then.681
  %455 = bitcast i32* %i672 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #2
  %cleanup.dest.722 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.722, label %cleanup.1033 [
    i32 0, label %cleanup.cont.723
  ]

cleanup.cont.723:                                 ; preds = %cleanup.721
  br label %if.end.733

if.else.724:                                      ; preds = %land.lhs.true.668, %sw.bb.665
  %456 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %457 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %458 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %459 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params725 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %459, i32 0, i32 7
  %defg726 = bitcast %union.anon* %params725 to %struct.gs_cie_defg_s**
  %460 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg726, align 8, !tbaa !1
  %461 = bitcast %struct.gs_cie_defg_s* %460 to %struct.gs_cie_common_s*
  %462 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params727 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %462, i32 0, i32 7
  %defg728 = bitcast %union.anon* %params727 to %struct.gs_cie_defg_s**
  %463 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg728, align 8, !tbaa !1
  %RangeDEFG729 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %463, i32 0, i32 6
  %ranges730 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG729, i32 0, i32 0
  %arraydecay731 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges730, i32 0, i32 0
  %call732 = call i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s* %456, %struct.cos_array_s* %457, %struct.gs_color_space_s* %458, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct.gs_cie_common_s* %461, %struct.gs_range_s* %arraydecay731, i32 0, %struct.gs_matrix3_s* null, %struct.gs_range_s** %ranges) #6
  store i32 %call732, i32* %code, align 4, !tbaa !5
  br label %if.end.733

if.end.733:                                       ; preds = %if.else.724, %cleanup.cont.723
  br label %sw.epilog.930

sw.bb.734:                                        ; preds = %if.end.174
  %464 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %465 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %466 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %467 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call735 = call i32 @pdf_indexed_color_space(%struct.gx_device_pdf_s* %464, %struct.cos_value_s* %465, %struct.gs_color_space_s* %466, %struct.cos_array_s* %467, %struct.cos_value_s* null) #6
  store i32 %call735, i32* %code, align 4, !tbaa !5
  br label %sw.epilog.930

sw.bb.736:                                        ; preds = %if.end.174
  %468 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PreserveDeviceN = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %468, i32 0, i32 238
  %469 = load i32, i32* %PreserveDeviceN, align 4, !tbaa !156
  %tobool737 = icmp ne i32 %469, 0
  br i1 %tobool737, label %if.end.739, label %if.then.738

if.then.738:                                      ; preds = %sw.bb.736
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.739:                                       ; preds = %sw.bb.736
  %470 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel740 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %470, i32 0, i32 75
  %471 = load double, double* %CompatibilityLevel740, align 8, !tbaa !99
  %cmp741 = fcmp olt double %471, 1.300000e+00
  br i1 %cmp741, label %if.then.743, label %if.end.744

if.then.743:                                      ; preds = %if.end.739
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.744:                                       ; preds = %if.end.739
  %472 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call745 = call %struct.gs_function_s* @gs_cspace_get_devn_function(%struct.gs_color_space_s* %472) #6
  store %struct.gs_function_s* %call745, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %473 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %cmp746 = icmp eq %struct.gs_function_s* %473, null
  br i1 %cmp746, label %if.then.748, label %if.end.749

if.then.748:                                      ; preds = %if.end.744
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.749:                                       ; preds = %if.end.744
  %474 = bitcast %struct.cos_array_s** %psna to i8*
  call void @llvm.lifetime.start(i64 8, i8* %474) #2
  %475 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call750 = call %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s* %475, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  store %struct.cos_array_s* %call750, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %476 = bitcast i32* %i751 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %476) #2
  %477 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %477) #2
  %478 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %478) #2
  %479 = bitcast %struct.cos_value_s* %v_attriburtes to i8*
  call void @llvm.lifetime.start(i64 24, i8* %479) #2
  %480 = bitcast %struct.cos_value_s** %va to i8*
  call void @llvm.lifetime.start(i64 8, i8* %480) #2
  store %struct.cos_value_s* null, %struct.cos_value_s** %va, align 8, !tbaa !1
  %481 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %cmp752 = icmp eq %struct.cos_array_s* %481, null
  br i1 %cmp752, label %if.then.754, label %if.end.755

if.then.754:                                      ; preds = %if.end.749
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.871

if.end.755:                                       ; preds = %if.end.749
  store i32 0, i32* %i751, align 4, !tbaa !5
  br label %for.cond.756

for.cond.756:                                     ; preds = %for.inc.782, %if.end.755
  %482 = load i32, i32* %i751, align 4, !tbaa !5
  %483 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params757 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %483, i32 0, i32 7
  %device_n = bitcast %union.anon* %params757 to %struct.gs_device_n_params_s*
  %num_components758 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n, i32 0, i32 1
  %484 = load i32, i32* %num_components758, align 4, !tbaa !157
  %cmp759 = icmp ult i32 %482, %484
  br i1 %cmp759, label %for.body.761, label %for.end.784

for.body.761:                                     ; preds = %for.cond.756
  %485 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params762 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %485, i32 0, i32 7
  %device_n763 = bitcast %union.anon* %params762 to %struct.gs_device_n_params_s*
  %get_colorname_string = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n763, i32 0, i32 5
  %486 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string, align 8, !tbaa !159
  %487 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory764 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %487, i32 0, i32 3
  %488 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory764, align 8, !tbaa !22
  %489 = load i32, i32* %i751, align 4, !tbaa !5
  %idxprom765 = sext i32 %489 to i64
  %490 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params766 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %490, i32 0, i32 7
  %device_n767 = bitcast %union.anon* %params766 to %struct.gs_device_n_params_s*
  %names = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n767, i32 0, i32 0
  %491 = load i64*, i64** %names, align 8, !tbaa !160
  %arrayidx768 = getelementptr inbounds i64, i64* %491, i64 %idxprom765
  %492 = load i64, i64* %arrayidx768, align 8, !tbaa !161
  %call769 = call i32 %486(%struct.gs_memory_s* %488, i64 %492, i8** %name_string, i32* %name_string_length) #6
  store i32 %call769, i32* %code, align 4, !tbaa !5
  %cmp770 = icmp slt i32 %call769, 0
  br i1 %cmp770, label %if.then.780, label %lor.lhs.false.772

lor.lhs.false.772:                                ; preds = %for.body.761
  %493 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %494 = load i8*, i8** %name_string, align 8, !tbaa !1
  %495 = load i32, i32* %name_string_length, align 4, !tbaa !5
  %call773 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %493, i8* %494, i32 %495, %struct.cos_value_s* %v) #6
  store i32 %call773, i32* %code, align 4, !tbaa !5
  %cmp774 = icmp slt i32 %call773, 0
  br i1 %cmp774, label %if.then.780, label %lor.lhs.false.776

lor.lhs.false.776:                                ; preds = %lor.lhs.false.772
  %496 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %call777 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %496, %struct.cos_value_s* %v) #6
  store i32 %call777, i32* %code, align 4, !tbaa !5
  %cmp778 = icmp slt i32 %call777, 0
  br i1 %cmp778, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %lor.lhs.false.776, %lor.lhs.false.772, %for.body.761
  %497 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %497, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.871

if.end.781:                                       ; preds = %lor.lhs.false.776
  br label %for.inc.782

for.inc.782:                                      ; preds = %if.end.781
  %498 = load i32, i32* %i751, align 4, !tbaa !5
  %inc783 = add nsw i32 %498, 1
  store i32 %inc783, i32* %i751, align 4, !tbaa !5
  br label %for.cond.756

for.end.784:                                      ; preds = %for.cond.756
  %499 = load %struct.cos_array_s*, %struct.cos_array_s** %psna, align 8, !tbaa !1
  %cos_procs785 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %499, i32 0, i32 0
  %500 = bitcast %struct.cos_object_procs_s** %cos_procs785 to %struct.cos_object_s*
  %call786 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v, %struct.cos_object_s* %500) #6
  %501 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params787 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %501, i32 0, i32 7
  %device_n788 = bitcast %union.anon* %params787 to %struct.gs_device_n_params_s*
  %colorants = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n788, i32 0, i32 3
  %502 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants, align 8, !tbaa !162
  %cmp789 = icmp ne %struct.gs_device_n_attributes_s* %502, null
  br i1 %cmp789, label %if.then.791, label %if.end.864

if.then.791:                                      ; preds = %for.end.784
  %503 = bitcast %struct.cos_dict_s** %colorants792 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503) #2
  %504 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call793 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %504, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0)) #6
  store %struct.cos_dict_s* %call793, %struct.cos_dict_s** %colorants792, align 8, !tbaa !1
  %505 = bitcast %struct.cos_value_s* %v_colorants to i8*
  call void @llvm.lifetime.start(i64 24, i8* %505) #2
  %506 = bitcast %struct.cos_value_s* %v_separation to i8*
  call void @llvm.lifetime.start(i64 24, i8* %506) #2
  %507 = bitcast %struct.cos_value_s* %v_colorant_name to i8*
  call void @llvm.lifetime.start(i64 24, i8* %507) #2
  %508 = bitcast %struct.gs_device_n_attributes_s** %csa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %508) #2
  %509 = bitcast %struct.pdf_resource_s** %pres_attributes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %509) #2
  %510 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants792, align 8, !tbaa !1
  %cmp794 = icmp eq %struct.cos_dict_s* %510, null
  br i1 %cmp794, label %if.then.796, label %if.end.797

if.then.796:                                      ; preds = %if.then.791
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.797:                                       ; preds = %if.then.791
  %511 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call798 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %511, i32 5, i64 0, %struct.pdf_resource_s** %pres_attributes, i64 -1) #6
  store i32 %call798, i32* %code, align 4, !tbaa !5
  %512 = load i32, i32* %code, align 4, !tbaa !5
  %cmp799 = icmp slt i32 %512, 0
  br i1 %cmp799, label %if.then.801, label %if.end.802

if.then.801:                                      ; preds = %if.end.797
  %513 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %513, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.802:                                       ; preds = %if.end.797
  %514 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object803 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %514, i32 0, i32 7
  %515 = load %struct.cos_object_s*, %struct.cos_object_s** %object803, align 8, !tbaa !129
  %call804 = call i32 @cos_become(%struct.cos_object_s* %515, %struct.cos_object_procs_s* @cos_dict_procs) #6
  %516 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants792, align 8, !tbaa !1
  %cos_procs805 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %516, i32 0, i32 0
  %517 = bitcast %struct.cos_object_procs_s** %cos_procs805 to %struct.cos_object_s*
  %call806 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %v_colorants, %struct.cos_object_s* %517) #6
  %518 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object807 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %518, i32 0, i32 7
  %519 = load %struct.cos_object_s*, %struct.cos_object_s** %object807, align 8, !tbaa !129
  %520 = bitcast %struct.cos_object_s* %519 to %struct.cos_dict_s*
  %call808 = call i32 @cos_dict_put(%struct.cos_dict_s* %520, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 10, %struct.cos_value_s* %v_colorants) #6
  store i32 %call808, i32* %code, align 4, !tbaa !5
  %521 = load i32, i32* %code, align 4, !tbaa !5
  %cmp809 = icmp slt i32 %521, 0
  br i1 %cmp809, label %if.then.811, label %if.end.812

if.then.811:                                      ; preds = %if.end.802
  %522 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %522, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.812:                                       ; preds = %if.end.802
  %523 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params813 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %523, i32 0, i32 7
  %device_n814 = bitcast %union.anon* %params813 to %struct.gs_device_n_params_s*
  %colorants815 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n814, i32 0, i32 3
  %524 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %colorants815, align 8, !tbaa !162
  store %struct.gs_device_n_attributes_s* %524, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  br label %for.cond.816

for.cond.816:                                     ; preds = %for.inc.846, %if.end.812
  %525 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %cmp817 = icmp ne %struct.gs_device_n_attributes_s* %525, null
  br i1 %cmp817, label %for.body.819, label %for.end.847

for.body.819:                                     ; preds = %for.cond.816
  %526 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params820 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %526, i32 0, i32 7
  %device_n821 = bitcast %union.anon* %params820 to %struct.gs_device_n_params_s*
  %get_colorname_string822 = getelementptr inbounds %struct.gs_device_n_params_s, %struct.gs_device_n_params_s* %device_n821, i32 0, i32 5
  %527 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string822, align 8, !tbaa !159
  %528 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory823 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %528, i32 0, i32 3
  %529 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory823, align 8, !tbaa !22
  %530 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %colorant_name = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %530, i32 0, i32 1
  %531 = load i64, i64* %colorant_name, align 8, !tbaa !163
  %call824 = call i32 %527(%struct.gs_memory_s* %529, i64 %531, i8** %name_string, i32* %name_string_length) #6
  store i32 %call824, i32* %code, align 4, !tbaa !5
  %532 = load i32, i32* %code, align 4, !tbaa !5
  %cmp825 = icmp slt i32 %532, 0
  br i1 %cmp825, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %for.body.819
  %533 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %533, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.828:                                       ; preds = %for.body.819
  %534 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %535 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %cspace = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %535, i32 0, i32 2
  %536 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace, align 8, !tbaa !165
  %537 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %538 = load i32, i32* %keepICC.addr, align 4, !tbaa !5
  %call829 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %534, %struct.cos_value_s* %v_separation, %struct.gs_range_s** null, %struct.gs_color_space_s* %536, %struct.pdf_color_space_names_s* %537, i32 0, i8* null, i32 0, i32 %538) #6
  store i32 %call829, i32* %code, align 4, !tbaa !5
  %539 = load i32, i32* %code, align 4, !tbaa !5
  %cmp830 = icmp slt i32 %539, 0
  br i1 %cmp830, label %if.then.832, label %if.end.833

if.then.832:                                      ; preds = %if.end.828
  %540 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %540, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.833:                                       ; preds = %if.end.828
  %541 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %542 = load i8*, i8** %name_string, align 8, !tbaa !1
  %543 = load i32, i32* %name_string_length, align 4, !tbaa !5
  %call834 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %541, i8* %542, i32 %543, %struct.cos_value_s* %v_colorant_name) #6
  store i32 %call834, i32* %code, align 4, !tbaa !5
  %544 = load i32, i32* %code, align 4, !tbaa !5
  %cmp835 = icmp slt i32 %544, 0
  br i1 %cmp835, label %if.then.837, label %if.end.838

if.then.837:                                      ; preds = %if.end.833
  %545 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %545, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.838:                                       ; preds = %if.end.833
  %546 = load %struct.cos_dict_s*, %struct.cos_dict_s** %colorants792, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %v_colorant_name, i32 0, i32 1
  %chars = bitcast %union.vc_* %contents to %struct.gs_string_s*
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars, i32 0, i32 0
  %547 = load i8*, i8** %data, align 8, !tbaa !166
  %contents839 = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %v_colorant_name, i32 0, i32 1
  %chars840 = bitcast %union.vc_* %contents839 to %struct.gs_string_s*
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %chars840, i32 0, i32 1
  %548 = load i32, i32* %size, align 4, !tbaa !167
  %call841 = call i32 @cos_dict_put(%struct.cos_dict_s* %546, i8* %547, i32 %548, %struct.cos_value_s* %v_separation) #6
  store i32 %call841, i32* %code, align 4, !tbaa !5
  %549 = load i32, i32* %code, align 4, !tbaa !5
  %cmp842 = icmp slt i32 %549, 0
  br i1 %cmp842, label %if.then.844, label %if.end.845

if.then.844:                                      ; preds = %if.end.838
  %550 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %550, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.845:                                       ; preds = %if.end.838
  br label %for.inc.846

for.inc.846:                                      ; preds = %if.end.845
  %551 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_n_attributes_s, %struct.gs_device_n_attributes_s* %551, i32 0, i32 3
  %552 = load %struct.gs_device_n_attributes_s*, %struct.gs_device_n_attributes_s** %next, align 8, !tbaa !168
  store %struct.gs_device_n_attributes_s* %552, %struct.gs_device_n_attributes_s** %csa, align 8, !tbaa !1
  br label %for.cond.816

for.end.847:                                      ; preds = %for.cond.816
  %553 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call848 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %553, %struct.pdf_resource_s** %pres_attributes, i32 5, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 1) #6
  store i32 %call848, i32* %code, align 4, !tbaa !5
  %554 = load i32, i32* %code, align 4, !tbaa !5
  %cmp849 = icmp slt i32 %554, 0
  br i1 %cmp849, label %if.then.851, label %if.end.852

if.then.851:                                      ; preds = %for.end.847
  %555 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %555, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.852:                                       ; preds = %for.end.847
  %556 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %556, i32 0, i32 164
  %557 = load i64, i64* %used_mask, align 8, !tbaa !169
  %558 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %558, i32 0, i32 6
  %559 = load i64, i64* %where_used, align 8, !tbaa !170
  %or = or i64 %559, %557
  store i64 %or, i64* %where_used, align 8, !tbaa !170
  store %struct.cos_value_s* %v_attriburtes, %struct.cos_value_s** %va, align 8, !tbaa !1
  %560 = load %struct.cos_value_s*, %struct.cos_value_s** %va, align 8, !tbaa !1
  %561 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_attributes, align 8, !tbaa !1
  %object853 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %561, i32 0, i32 7
  %562 = load %struct.cos_object_s*, %struct.cos_object_s** %object853, align 8, !tbaa !129
  %cos_procs854 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %562, i32 0, i32 0
  %563 = bitcast %struct.cos_object_procs_s** %cos_procs854 to %struct.cos_object_s*
  %call855 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %560, %struct.cos_object_s* %563) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.856

cleanup.856:                                      ; preds = %if.end.852, %if.then.851, %if.then.844, %if.then.837, %if.then.832, %if.then.827, %if.then.811, %if.then.801, %if.then.796
  %564 = bitcast %struct.pdf_resource_s** %pres_attributes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %564) #2
  %565 = bitcast %struct.gs_device_n_attributes_s** %csa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %565) #2
  %566 = bitcast %struct.cos_value_s* %v_colorant_name to i8*
  call void @llvm.lifetime.end(i64 24, i8* %566) #2
  %567 = bitcast %struct.cos_value_s* %v_separation to i8*
  call void @llvm.lifetime.end(i64 24, i8* %567) #2
  %568 = bitcast %struct.cos_value_s* %v_colorants to i8*
  call void @llvm.lifetime.end(i64 24, i8* %568) #2
  %569 = bitcast %struct.cos_dict_s** %colorants792 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %569) #2
  %cleanup.dest.862 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.862, label %cleanup.871 [
    i32 0, label %cleanup.cont.863
  ]

cleanup.cont.863:                                 ; preds = %cleanup.856
  br label %if.end.864

if.end.864:                                       ; preds = %cleanup.cont.863, %for.end.784
  %570 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %571 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %572 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space865 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %572, i32 0, i32 3
  %573 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space865, align 8, !tbaa !94
  %574 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %575 = load %struct.cos_value_s*, %struct.cos_value_s** %va, align 8, !tbaa !1
  %call866 = call i32 @pdf_separation_color_space(%struct.gx_device_pdf_s* %570, %struct.cos_array_s* %571, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct.cos_value_s* %v, %struct.gs_color_space_s* %573, %struct.gs_function_s* %574, %struct.pdf_color_space_names_s* @pdf_color_space_names, %struct.cos_value_s* %575) #6
  store i32 %call866, i32* %code, align 4, !tbaa !5
  %cmp867 = icmp slt i32 %call866, 0
  br i1 %cmp867, label %if.then.869, label %if.end.870

if.then.869:                                      ; preds = %if.end.864
  %576 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %576, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.871

if.end.870:                                       ; preds = %if.end.864
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.871

cleanup.871:                                      ; preds = %if.end.870, %if.then.869, %cleanup.856, %if.then.780, %if.then.754
  %577 = bitcast %struct.cos_value_s** %va to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #2
  %578 = bitcast %struct.cos_value_s* %v_attriburtes to i8*
  call void @llvm.lifetime.end(i64 24, i8* %578) #2
  %579 = bitcast i32* %name_string_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #2
  %580 = bitcast i8** %name_string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %580) #2
  %581 = bitcast i32* %i751 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %581) #2
  %582 = bitcast %struct.cos_array_s** %psna to i8*
  call void @llvm.lifetime.end(i64 8, i8* %582) #2
  %cleanup.dest.877 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.877, label %cleanup.1033 [
    i32 0, label %cleanup.cont.878
  ]

cleanup.cont.878:                                 ; preds = %cleanup.871
  br label %sw.epilog.930

sw.bb.879:                                        ; preds = %if.end.174
  %583 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PreserveSeparation = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %583, i32 0, i32 237
  %584 = load i32, i32* %PreserveSeparation, align 4, !tbaa !171
  %tobool880 = icmp ne i32 %584, 0
  br i1 %tobool880, label %if.end.882, label %if.then.881

if.then.881:                                      ; preds = %sw.bb.879
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.882:                                       ; preds = %sw.bb.879
  %585 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call883 = call %struct.gs_function_s* @gs_cspace_get_sepr_function(%struct.gs_color_space_s* %585) #6
  store %struct.gs_function_s* %call883, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %586 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %cmp884 = icmp eq %struct.gs_function_s* %586, null
  br i1 %cmp884, label %if.then.886, label %if.end.887

if.then.886:                                      ; preds = %if.end.882
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.887:                                       ; preds = %if.end.882
  %587 = bitcast i8** %name_string888 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %587) #2
  %588 = bitcast i32* %name_string_length889 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %588) #2
  %589 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params890 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %589, i32 0, i32 7
  %separation = bitcast %union.anon* %params890 to %struct.gs_separation_params_s*
  %get_colorname_string891 = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation, i32 0, i32 4
  %590 = load i32 (%struct.gs_memory_s*, i64, i8**, i32*)*, i32 (%struct.gs_memory_s*, i64, i8**, i32*)** %get_colorname_string891, align 8, !tbaa !172
  %591 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory892 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %591, i32 0, i32 3
  %592 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory892, align 8, !tbaa !22
  %593 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params893 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %593, i32 0, i32 7
  %separation894 = bitcast %union.anon* %params893 to %struct.gs_separation_params_s*
  %sep_name = getelementptr inbounds %struct.gs_separation_params_s, %struct.gs_separation_params_s* %separation894, i32 0, i32 0
  %594 = load i64, i64* %sep_name, align 8, !tbaa !174
  %call895 = call i32 %590(%struct.gs_memory_s* %592, i64 %594, i8** %name_string888, i32* %name_string_length889) #6
  store i32 %call895, i32* %code, align 4, !tbaa !5
  %cmp896 = icmp slt i32 %call895, 0
  br i1 %cmp896, label %if.then.907, label %lor.lhs.false.898

lor.lhs.false.898:                                ; preds = %if.end.887
  %595 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %596 = load i8*, i8** %name_string888, align 8, !tbaa !1
  %597 = load i32, i32* %name_string_length889, align 4, !tbaa !5
  %call899 = call i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s* %595, i8* %596, i32 %597, %struct.cos_value_s* %v) #6
  store i32 %call899, i32* %code, align 4, !tbaa !5
  %cmp900 = icmp slt i32 %call899, 0
  br i1 %cmp900, label %if.then.907, label %lor.lhs.false.902

lor.lhs.false.902:                                ; preds = %lor.lhs.false.898
  %598 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %599 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %600 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space903 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %600, i32 0, i32 3
  %601 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space903, align 8, !tbaa !94
  %602 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %call904 = call i32 @pdf_separation_color_space(%struct.gx_device_pdf_s* %598, %struct.cos_array_s* %599, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), %struct.cos_value_s* %v, %struct.gs_color_space_s* %601, %struct.gs_function_s* %602, %struct.pdf_color_space_names_s* @pdf_color_space_names, %struct.cos_value_s* null) #6
  store i32 %call904, i32* %code, align 4, !tbaa !5
  %cmp905 = icmp slt i32 %call904, 0
  br i1 %cmp905, label %if.then.907, label %if.end.908

if.then.907:                                      ; preds = %lor.lhs.false.902, %lor.lhs.false.898, %if.end.887
  %603 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %603, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.909

if.end.908:                                       ; preds = %lor.lhs.false.902
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.909

cleanup.909:                                      ; preds = %if.end.908, %if.then.907
  %604 = bitcast i32* %name_string_length889 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %604) #2
  %605 = bitcast i8** %name_string888 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %605) #2
  %cleanup.dest.911 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.911, label %cleanup.1033 [
    i32 0, label %cleanup.cont.912
  ]

cleanup.cont.912:                                 ; preds = %cleanup.909
  br label %sw.epilog.930

sw.bb.913:                                        ; preds = %if.end.174
  %606 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %607 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %608 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %609 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space914 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %609, i32 0, i32 3
  %610 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space914, align 8, !tbaa !94
  %call915 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %606, %struct.cos_value_s* %607, %struct.gs_range_s** %608, %struct.gs_color_space_s* %610, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 0) #6
  store i32 %call915, i32* %code, align 4, !tbaa !5
  %cmp916 = icmp slt i32 %call915, 0
  br i1 %cmp916, label %if.then.927, label %lor.lhs.false.918

lor.lhs.false.918:                                ; preds = %sw.bb.913
  %611 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %call919 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #6
  %call920 = call i32 @cos_array_add(%struct.cos_array_s* %611, %struct.cos_value_s* %call919) #6
  store i32 %call920, i32* %code, align 4, !tbaa !5
  %cmp921 = icmp slt i32 %call920, 0
  br i1 %cmp921, label %if.then.927, label %lor.lhs.false.923

lor.lhs.false.923:                                ; preds = %lor.lhs.false.918
  %612 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %613 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %call924 = call i32 @cos_array_add(%struct.cos_array_s* %612, %struct.cos_value_s* %613) #6
  store i32 %call924, i32* %code, align 4, !tbaa !5
  %cmp925 = icmp slt i32 %call924, 0
  br i1 %cmp925, label %if.then.927, label %if.end.928

if.then.927:                                      ; preds = %lor.lhs.false.923, %lor.lhs.false.918, %sw.bb.913
  %614 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %614, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.928:                                       ; preds = %lor.lhs.false.923
  br label %sw.epilog.930

sw.default.929:                                   ; preds = %if.end.174
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

sw.epilog.930:                                    ; preds = %if.end.928, %cleanup.cont.912, %cleanup.cont.878, %sw.bb.734, %if.end.733, %if.end.664, %cleanup.589, %if.end.391, %cleanup.382, %sw.bb.175
  %615 = bitcast %struct.pdf_color_space_s** %ppcs931 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %615) #2
  %616 = load i32, i32* %code, align 4, !tbaa !5
  %cmp932 = icmp slt i32 %616, 0
  br i1 %cmp932, label %if.then.939, label %lor.lhs.false.934

lor.lhs.false.934:                                ; preds = %sw.epilog.930
  %617 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %618 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %id935 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %618, i32 0, i32 2
  %619 = load i64, i64* %id935, align 8, !tbaa !124
  %call936 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %617, i32 0, i64 %619, %struct.pdf_resource_s** %pres, i64 -1) #6
  store i32 %call936, i32* %code, align 4, !tbaa !5
  %cmp937 = icmp slt i32 %call936, 0
  br i1 %cmp937, label %if.then.939, label %if.end.941

if.then.939:                                      ; preds = %lor.lhs.false.934, %sw.epilog.930
  %620 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs940 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %620, i32 0, i32 0
  %621 = bitcast %struct.cos_object_procs_s** %cos_procs940 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %621, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  %622 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %622, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1009

if.end.941:                                       ; preds = %lor.lhs.false.934
  %623 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %624 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %623, %struct.pdf_resource_s* %624, i64 0) #6
  %625 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %cmp942 = icmp ne i8* %625, null
  br i1 %cmp942, label %if.then.944, label %if.end.956

if.then.944:                                      ; preds = %if.end.941
  %626 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %626) #2
  %627 = load i32, i32* %name_length.addr, align 4, !tbaa !5
  %conv945 = sext i32 %627 to i64
  %cmp946 = icmp ult i64 %conv945, 23
  br i1 %cmp946, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.944
  %628 = load i32, i32* %name_length.addr, align 4, !tbaa !5
  %conv948 = sext i32 %628 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.944
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv948, %cond.true ], [ 23, %cond.false ]
  %conv949 = trunc i64 %cond to i32
  store i32 %conv949, i32* %l, align 4, !tbaa !5
  %629 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %629, i32 0, i32 5
  %arraydecay950 = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %630 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %631 = load i32, i32* %l, align 4, !tbaa !5
  %conv951 = sext i32 %631 to i64
  %call952 = call i8* @memcpy(i8* %arraydecay950, i8* %630, i64 %conv951) #7
  %632 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom953 = sext i32 %632 to i64
  %633 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rname954 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %633, i32 0, i32 5
  %arrayidx955 = getelementptr inbounds [24 x i8], [24 x i8]* %rname954, i32 0, i64 %idxprom953
  store i8 0, i8* %arrayidx955, align 1, !tbaa !104
  %634 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #2
  br label %if.end.956

if.end.956:                                       ; preds = %cond.end, %if.end.941
  %635 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %636 = bitcast %struct.pdf_resource_s* %635 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %636, %struct.pdf_color_space_s** %ppcs931, align 8, !tbaa !1
  %637 = load i8*, i8** %serialized, align 8, !tbaa !1
  %arraydecay957 = getelementptr inbounds [100 x i8], [100 x i8]* %serialized0, i32 0, i32 0
  %cmp958 = icmp eq i8* %637, %arraydecay957
  br i1 %cmp958, label %if.then.960, label %if.end.973

if.then.960:                                      ; preds = %if.end.956
  %638 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory961 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %638, i32 0, i32 43
  %639 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory961, align 8, !tbaa !98
  %procs962 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %639, i32 0, i32 1
  %alloc_bytes963 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs962, i32 0, i32 7
  %640 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes963, align 8, !tbaa !126
  %641 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory964 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %641, i32 0, i32 43
  %642 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory964, align 8, !tbaa !98
  %643 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %call965 = call i8* %640(%struct.gs_memory_s* %642, i32 %643, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %call965, i8** %serialized, align 8, !tbaa !1
  %644 = load i8*, i8** %serialized, align 8, !tbaa !1
  %cmp966 = icmp eq i8* %644, null
  br i1 %cmp966, label %if.then.968, label %if.end.969

if.then.968:                                      ; preds = %if.then.960
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1009

if.end.969:                                       ; preds = %if.then.960
  %645 = load i8*, i8** %serialized, align 8, !tbaa !1
  %arraydecay970 = getelementptr inbounds [100 x i8], [100 x i8]* %serialized0, i32 0, i32 0
  %646 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %conv971 = zext i32 %646 to i64
  %call972 = call i8* @memcpy(i8* %645, i8* %arraydecay970, i64 %conv971) #7
  br label %if.end.973

if.end.973:                                       ; preds = %if.end.969, %if.end.956
  %647 = load i8*, i8** %serialized, align 8, !tbaa !1
  %648 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs931, align 8, !tbaa !1
  %serialized974 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %648, i32 0, i32 10
  store i8* %647, i8** %serialized974, align 8, !tbaa !175
  %649 = load i32, i32* %serialized_size, align 4, !tbaa !5
  %650 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs931, align 8, !tbaa !1
  %serialized_size975 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %650, i32 0, i32 9
  store i32 %649, i32* %serialized_size975, align 4, !tbaa !176
  %651 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %tobool976 = icmp ne %struct.gs_range_s* %651, null
  br i1 %tobool976, label %if.then.977, label %if.else.998

if.then.977:                                      ; preds = %if.end.973
  %652 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %652) #2
  %653 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call978 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %653) #6
  store i32 %call978, i32* %num_comp, align 4, !tbaa !5
  %654 = bitcast %struct.gs_range_s** %copy_ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %654) #2
  %655 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory979 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %655, i32 0, i32 43
  %656 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory979, align 8, !tbaa !98
  %procs980 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %656, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs980, i32 0, i32 10
  %657 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !83
  %658 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory981 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %658, i32 0, i32 43
  %659 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory981, align 8, !tbaa !98
  %660 = load i32, i32* %num_comp, align 4, !tbaa !5
  %call982 = call i8* %657(%struct.gs_memory_s* %659, i32 %660, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  %661 = bitcast i8* %call982 to %struct.gs_range_s*
  store %struct.gs_range_s* %661, %struct.gs_range_s** %copy_ranges, align 8, !tbaa !1
  %662 = load %struct.gs_range_s*, %struct.gs_range_s** %copy_ranges, align 8, !tbaa !1
  %cmp983 = icmp eq %struct.gs_range_s* %662, null
  br i1 %cmp983, label %if.then.985, label %if.end.987

if.then.985:                                      ; preds = %if.then.977
  %663 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs986 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %663, i32 0, i32 0
  %664 = bitcast %struct.cos_object_procs_s** %cos_procs986 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %664, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.994

if.end.987:                                       ; preds = %if.then.977
  %665 = load %struct.gs_range_s*, %struct.gs_range_s** %copy_ranges, align 8, !tbaa !1
  %666 = bitcast %struct.gs_range_s* %665 to i8*
  %667 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %668 = bitcast %struct.gs_range_s* %667 to i8*
  %669 = load i32, i32* %num_comp, align 4, !tbaa !5
  %conv988 = sext i32 %669 to i64
  %mul = mul i64 %conv988, 8
  %call989 = call i8* @memcpy(i8* %666, i8* %668, i64 %mul) #7
  %670 = load %struct.gs_range_s*, %struct.gs_range_s** %copy_ranges, align 8, !tbaa !1
  %671 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs931, align 8, !tbaa !1
  %ranges990 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %671, i32 0, i32 8
  store %struct.gs_range_s* %670, %struct.gs_range_s** %ranges990, align 8, !tbaa !127
  %672 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  %tobool991 = icmp ne %struct.gs_range_s** %672, null
  br i1 %tobool991, label %if.then.992, label %if.end.993

if.then.992:                                      ; preds = %if.end.987
  %673 = load %struct.gs_range_s*, %struct.gs_range_s** %copy_ranges, align 8, !tbaa !1
  %674 = load %struct.gs_range_s**, %struct.gs_range_s*** %ppranges.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %673, %struct.gs_range_s** %674, align 8, !tbaa !1
  br label %if.end.993

if.end.993:                                       ; preds = %if.then.992, %if.end.987
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.994

cleanup.994:                                      ; preds = %if.end.993, %if.then.985
  %675 = bitcast %struct.gs_range_s** %copy_ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %675) #2
  %676 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %676) #2
  %cleanup.dest.996 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.996, label %cleanup.1009 [
    i32 0, label %cleanup.cont.997
  ]

cleanup.cont.997:                                 ; preds = %cleanup.994
  br label %if.end.1000

if.else.998:                                      ; preds = %if.end.973
  %677 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs931, align 8, !tbaa !1
  %ranges999 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %677, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges999, align 8, !tbaa !127
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.else.998, %cleanup.cont.997
  %678 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object1001 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %678, i32 0, i32 7
  %679 = load %struct.cos_object_s*, %struct.cos_object_s** %object1001, align 8, !tbaa !129
  %id1002 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %679, i32 0, i32 1
  %680 = load i64, i64* %id1002, align 8, !tbaa !177
  %681 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %id1003 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %681, i32 0, i32 1
  store i64 %680, i64* %id1003, align 8, !tbaa !179
  %682 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object1004 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %682, i32 0, i32 7
  %683 = load %struct.cos_object_s*, %struct.cos_object_s** %object1004, align 8, !tbaa !129
  %cos_procs1005 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %683, i32 0, i32 0
  %684 = bitcast %struct.cos_object_procs_s** %cos_procs1005 to %struct.cos_object_s*
  call void @cos_free(%struct.cos_object_s* %684, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)) #6
  %685 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %686 = bitcast %struct.cos_array_s* %685 to %struct.cos_object_s*
  %687 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object1006 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %687, i32 0, i32 7
  store %struct.cos_object_s* %686, %struct.cos_object_s** %object1006, align 8, !tbaa !129
  %688 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs1007 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %688, i32 0, i32 0
  %689 = bitcast %struct.cos_object_procs_s** %cos_procs1007 to %struct.cos_object_s*
  %690 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1008 = call i32 @cos_write_object(%struct.cos_object_s* %689, %struct.gx_device_pdf_s* %690, i32 0) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1009

cleanup.1009:                                     ; preds = %if.end.1000, %cleanup.994, %if.then.968, %if.then.939
  %691 = bitcast %struct.pdf_color_space_s** %ppcs931 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #2
  %cleanup.dest.1010 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1010, label %cleanup.1033 [
    i32 0, label %cleanup.cont.1011
  ]

cleanup.cont.1011:                                ; preds = %cleanup.1009
  br label %ret

ret:                                              ; preds = %cleanup.cont.1011, %if.end.167
  %692 = load i32, i32* %by_name.addr, align 4, !tbaa !5
  %tobool1013 = icmp ne i32 %692, 0
  br i1 %tobool1013, label %if.then.1014, label %if.else.1017

if.then.1014:                                     ; preds = %ret
  %693 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %694 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs1015 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %694, i32 0, i32 0
  %695 = bitcast %struct.cos_object_procs_s** %cos_procs1015 to %struct.cos_object_s*
  %call1016 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %693, %struct.cos_object_s* %695) #6
  br label %if.end.1020

if.else.1017:                                     ; preds = %ret
  %696 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %697 = load %struct.cos_array_s*, %struct.cos_array_s** %pca, align 8, !tbaa !1
  %cos_procs1018 = getelementptr inbounds %struct.cos_array_s, %struct.cos_array_s* %697, i32 0, i32 0
  %698 = bitcast %struct.cos_object_procs_s** %cos_procs1018 to %struct.cos_object_s*
  %call1019 = call %struct.cos_value_s* @cos_object_value(%struct.cos_value_s* %696, %struct.cos_object_s* %698) #6
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.else.1017, %if.then.1014
  %699 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp1021 = icmp ne %struct.pdf_resource_s* %699, null
  br i1 %cmp1021, label %if.then.1023, label %if.end.1032

if.then.1023:                                     ; preds = %if.end.1020
  %700 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask1024 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %700, i32 0, i32 164
  %701 = load i64, i64* %used_mask1024, align 8, !tbaa !169
  %702 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used1025 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %702, i32 0, i32 6
  %703 = load i64, i64* %where_used1025, align 8, !tbaa !170
  %or1026 = or i64 %703, %701
  store i64 %or1026, i64* %where_used1025, align 8, !tbaa !170
  %704 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %705 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %705, i32 0, i32 205
  %706 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !181
  %707 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call1027 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %704, %struct.cos_dict_s* %706, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), %struct.pdf_resource_s* %707) #6
  store i32 %call1027, i32* %code, align 4, !tbaa !5
  %708 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1028 = icmp slt i32 %708, 0
  br i1 %cmp1028, label %if.then.1030, label %if.end.1031

if.then.1030:                                     ; preds = %if.then.1023
  %709 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %709, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

if.end.1031:                                      ; preds = %if.then.1023
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.end.1031, %if.end.1020
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1033

cleanup.1033:                                     ; preds = %if.end.1032, %if.then.1030, %if.end.167, %cleanup.1009, %sw.default.929, %if.then.927, %cleanup.909, %if.then.886, %if.then.881, %cleanup.871, %if.then.748, %if.then.743, %if.then.738, %cleanup.721, %cleanup.652, %cleanup.589, %if.then.390, %cleanup.382, %if.then.173, %cleanup, %sw.bb.42, %sw.bb.39, %sw.bb.36, %if.then.31, %if.then.28, %if.then.17, %sw.bb.13, %sw.bb.11, %sw.bb
  %710 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %710) #2
  %711 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %711) #2
  %712 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %712) #2
  %713 = bitcast [100 x i8]* %serialized0 to i8*
  call void @llvm.lifetime.end(i64 100, i8* %713) #2
  %714 = bitcast i8** %serialized to i8*
  call void @llvm.lifetime.end(i64 8, i8* %714) #2
  %715 = bitcast i32* %serialized_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %715) #2
  %716 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %716) #2
  %717 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %717) #2
  %718 = bitcast %struct.gs_cie_common_s** %pciec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %718) #2
  %719 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %719) #2
  %720 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %720) #2
  %721 = bitcast %struct.cos_array_s** %pca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %721) #2
  %722 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %722) #2
  %723 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %723) #2
  %724 = load i32, i32* %retval
  ret i32 %724
}

declare i32 @cos_array_add(%struct.cos_array_s*, %struct.cos_value_s*) #0

declare %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s*, i8*) #0

declare i32 @cos_array_add_int(%struct.cos_array_s*, i32) #0

declare i32 @cos_array_add_no_copy(%struct.cos_array_s*, %struct.cos_value_s*) #0

declare %struct.cos_value_s* @cos_string_value(%struct.cos_value_s*, i8*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_convert_ICC(%struct.gx_device_pdf_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.cos_value_s* %pvalue, %struct.pdf_color_space_names_s* %pcsn) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %pcsn.addr = alloca %struct.pdf_color_space_names_s*, align 8
  %csi = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %num_des_comps = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.pdf_color_space_names_s* %pcsn, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %0 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %2) #6
  store i32 %call, i32* %csi, align 4, !tbaa !104
  %3 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 6
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !114
  %call1 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %5) #6
  store i32 %call1, i32* %csi, align 4, !tbaa !104
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp2 = icmp eq i32 %6, 10
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 3
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !94
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %9) #6
  store i32 %call4, i32* %csi, align 4, !tbaa !104
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load i32, i32* %csi, align 4, !tbaa !104
  %cmp6 = icmp eq i32 %10, 12
  br i1 %cmp6, label %if.then.7, label %if.end.28

if.then.7:                                        ; preds = %if.end.5
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 6
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data8, align 8, !tbaa !114
  %cmp9 = icmp eq %struct.cmm_profile_s* %12, null
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 75
  %14 = load double, double* %CompatibilityLevel, align 8, !tbaa !99
  %cmp10 = fcmp olt double %14, 1.300000e+00
  br i1 %cmp10, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.7
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 3
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space12, align 8, !tbaa !94
  %cmp13 = icmp ne %struct.gs_color_space_s* %16, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.else:                                          ; preds = %if.then.11
  %17 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_pdf_s* %19 to %struct.gx_device_s*
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %21 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !182
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_pdf_s* %22 to %struct.gx_device_s*
  %call15 = call i32 %21(%struct.gx_device_s* %23, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else
  %26 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call19 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %26) #6
  store i32 %call19, i32* %num_des_comps, align 4, !tbaa !5
  %27 = load i32, i32* %num_des_comps, align 4, !tbaa !5
  switch i32 %27, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.21
    i32 4, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.18
  %28 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %29 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceGray = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %DeviceGray, align 8, !tbaa !115
  %call20 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %28, i8* %30) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %if.end.18
  %31 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %32 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceRGB = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %32, i32 0, i32 2
  %33 = load i8*, i8** %DeviceRGB, align 8, !tbaa !116
  %call22 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %31, i8* %33) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.23:                                         ; preds = %if.end.18
  %34 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %35 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceCMYK = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %DeviceCMYK, align 8, !tbaa !117
  %call24 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %34, i8* %36) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.23, %sw.bb.21, %sw.bb, %if.then.17
  %37 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.28, %cleanup, %if.then.14
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #0

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #0

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s*, i32, i64) #0

declare void @swrite_position_only(%struct.stream_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.pdf_resource_s* @pdf_find_cspace_resource(%struct.gx_device_pdf_s* %pdev, i8* %serialized, i32 %serialized_size) #1 {
entry:
  %retval = alloca %struct.pdf_resource_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %serialized.addr = alloca i8*, align 8
  %serialized_size.addr = alloca i32, align 4
  %pchain = alloca %struct.pdf_resource_s**, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %i = alloca i32, align 4
  %ppcs = alloca %struct.pdf_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %serialized, i8** %serialized.addr, align 8, !tbaa !1
  store i32 %serialized_size, i32* %serialized_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_resource_s*** %pchain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 165
  %arrayidx = getelementptr inbounds [15 x %struct.pdf_resource_list_s], [15 x %struct.pdf_resource_list_s]* %resources, i32 0, i64 0
  %chains = getelementptr inbounds %struct.pdf_resource_list_s, %struct.pdf_resource_list_s* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x %struct.pdf_resource_s*], [16 x %struct.pdf_resource_s*]* %chains, i32 0, i32 0
  store %struct.pdf_resource_s** %arraydecay, %struct.pdf_resource_s*** %pchain, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 16
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %pchain, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.pdf_resource_s*, %struct.pdf_resource_s** %6, i64 %idxprom
  %7 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %arrayidx1, align 8, !tbaa !1
  store %struct.pdf_resource_s* %7, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.pdf_resource_s* %8, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = bitcast %struct.pdf_resource_s* %10 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %11, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %12 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized_size5 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %12, i32 0, i32 9
  %13 = load i32, i32* %serialized_size5, align 4, !tbaa !176
  %14 = load i32, i32* %serialized_size.addr, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %13, %14
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.4
  %15 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized7 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %15, i32 0, i32 10
  %16 = load i8*, i8** %serialized7, align 8, !tbaa !175
  %17 = load i8*, i8** %serialized.addr, align 8, !tbaa !1
  %18 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized_size8 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %18, i32 0, i32 9
  %19 = load i32, i32* %serialized_size8, align 4, !tbaa !176
  %conv = zext i32 %19 to i64
  %call = call i32 @memcmp(i8* %16, i8* %17, i64 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %20 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  store %struct.pdf_resource_s* %20, %struct.pdf_resource_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %21 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.13 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %22, i32 0, i32 0
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %next, align 8, !tbaa !184
  store %struct.pdf_resource_s* %23, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %for.end.12, %cleanup
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.pdf_resource_s*** %pchain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %retval
  ret %struct.pdf_resource_s* %28
}

declare %struct.cos_array_s* @cos_array_alloc(%struct.gx_device_pdf_s*, i8*) #0

declare i32 @pdf_iccbased_color_space(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_color_space_s*, %struct.cos_array_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cie_ranges_are_0_1(%struct.gs_range_s* %prange, i32 %n) #1 {
entry:
  %retval = alloca i32, align 4
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %5 = load float, float* %rmin, align 4, !tbaa !152
  %cmp1 = fcmp une float %5, 0.000000e+00
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i64 %idxprom2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx3, i32 0, i32 1
  %8 = load float, float* %rmax, align 4, !tbaa !154
  %cmp4 = fcmp une float %8, 1.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #0

declare i32 @pdf_convert_cie_space(%struct.gx_device_pdf_s*, %struct.cos_array_s*, %struct.gs_color_space_s*, i8*, %struct.gs_cie_common_s*, %struct.gs_range_s*, i32, %struct.gs_matrix3_s*, %struct.gs_range_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @cie_scalar_cache_is_exponential(%union.gx_cie_scalar_cache_s* %pc, float* %pexpt) #1 {
entry:
  %pc.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %pexpt.addr = alloca float*, align 8
  store %union.gx_cie_scalar_cache_s* %pc, %union.gx_cie_scalar_cache_s** %pc.addr, align 8, !tbaa !1
  store float* %pexpt, float** %pexpt.addr, align 8, !tbaa !1
  %0 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %pc.addr, align 8, !tbaa !1
  %floats = bitcast %union.gx_cie_scalar_cache_s* %0 to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !85
  %conv = fpext float %1 to double
  %2 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %pc.addr, align 8, !tbaa !1
  %floats1 = bitcast %union.gx_cie_scalar_cache_s* %2 to %struct.cie_cache_floats_s*
  %values2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats1, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [512 x float], [512 x float]* %values2, i32 0, i64 170
  %3 = load float, float* %arrayidx3, align 4, !tbaa !85
  %conv4 = fpext float %3 to double
  %4 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %pc.addr, align 8, !tbaa !1
  %floats5 = bitcast %union.gx_cie_scalar_cache_s* %4 to %struct.cie_cache_floats_s*
  %values6 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [512 x float], [512 x float]* %values6, i32 0, i64 341
  %5 = load float, float* %arrayidx7, align 4, !tbaa !85
  %conv8 = fpext float %5 to double
  %6 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %pc.addr, align 8, !tbaa !1
  %floats9 = bitcast %union.gx_cie_scalar_cache_s* %6 to %struct.cie_cache_floats_s*
  %values10 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [512 x float], [512 x float]* %values10, i32 0, i64 511
  %7 = load float, float* %arrayidx11, align 4, !tbaa !85
  %conv12 = fpext float %7 to double
  %8 = load float*, float** %pexpt.addr, align 8, !tbaa !1
  %call = call i32 @cie_values_are_exponential(double %conv, double %conv4, double %conv8, double %conv12, float* %8) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_vector_cache_is_exponential(%struct.gx_cie_vector_cache_s* %pc, float* %pexpt) #1 {
entry:
  %pc.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %pexpt.addr = alloca float*, align 8
  store %struct.gx_cie_vector_cache_s* %pc, %struct.gx_cie_vector_cache_s** %pc.addr, align 8, !tbaa !1
  store float* %pexpt, float** %pexpt.addr, align 8, !tbaa !1
  %0 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc.addr, align 8, !tbaa !1
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %0, i32 0, i32 1
  %values = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values, i32 0, i64 0
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !185
  %conv = fpext float %1 to double
  %2 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc.addr, align 8, !tbaa !1
  %vecs1 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %2, i32 0, i32 1
  %values2 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs1, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values2, i32 0, i64 170
  %u4 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx3, i32 0, i32 0
  %3 = load float, float* %u4, align 4, !tbaa !185
  %conv5 = fpext float %3 to double
  %4 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc.addr, align 8, !tbaa !1
  %vecs6 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %4, i32 0, i32 1
  %values7 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values7, i32 0, i64 341
  %u9 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx8, i32 0, i32 0
  %5 = load float, float* %u9, align 4, !tbaa !185
  %conv10 = fpext float %5 to double
  %6 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc.addr, align 8, !tbaa !1
  %vecs11 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %6, i32 0, i32 1
  %values12 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values12, i32 0, i64 511
  %u14 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx13, i32 0, i32 0
  %7 = load float, float* %u14, align 4, !tbaa !185
  %conv15 = fpext float %7 to double
  %8 = load float*, float** %pexpt.addr, align 8, !tbaa !1
  %call = call i32 @cie_values_are_exponential(double %conv, double %conv5, double %conv10, double %conv15, float* %8) #6
  ret i32 %call
}

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #0

declare i32 @cos_dict_put_c_key_real(%struct.cos_dict_s*, i8*, double) #0

; Function Attrs: nounwind uwtable
define internal i32 @cie_cached_abc_is_one_step(%struct.gs_cie_abc_s* %pcie, %struct.gs_matrix3_s** %ppmat) #1 {
entry:
  %retval = alloca i32, align 4
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %ppmat.addr = alloca %struct.gs_matrix3_s**, align 8
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s** %ppmat, %struct.gs_matrix3_s*** %ppmat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %0, i32 0, i32 0
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %1 = load i32, i32* %is_identity, align 4, !tbaa !151
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common1 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %2, i32 0, i32 0
  %caches2 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common1, i32 0, i32 6
  %DecodeLMN3 = getelementptr inbounds %struct.anon, %struct.anon* %caches2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN3, i32 0, i64 1
  %floats5 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx4 to %struct.cie_cache_floats_s*
  %params6 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats5, i32 0, i32 0
  %is_identity7 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params6, i32 0, i32 0
  %3 = load i32, i32* %is_identity7, align 4, !tbaa !151
  %tobool8 = icmp ne i32 %3, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.29

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common10 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %4, i32 0, i32 0
  %caches11 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common10, i32 0, i32 6
  %DecodeLMN12 = getelementptr inbounds %struct.anon, %struct.anon* %caches11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN12, i32 0, i64 2
  %floats14 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx13 to %struct.cie_cache_floats_s*
  %params15 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats14, i32 0, i32 0
  %is_identity16 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params15, i32 0, i32 0
  %5 = load i32, i32* %is_identity16, align 4, !tbaa !151
  %tobool17 = icmp ne i32 %5, 0
  br i1 %tobool17, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true.9
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 4
  %is_identity18 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC, i32 0, i32 3
  %7 = load i32, i32* %is_identity18, align 4, !tbaa !187
  %tobool19 = icmp ne i32 %7, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %8 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common21 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %8, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common21, i32 0, i32 4
  %9 = load %struct.gs_matrix3_s**, %struct.gs_matrix3_s*** %ppmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_matrix3_s** %9, align 8, !tbaa !1
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common22 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %10, i32 0, i32 0
  %MatrixLMN23 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common22, i32 0, i32 4
  %is_identity24 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN23, i32 0, i32 3
  %11 = load i32, i32* %is_identity24, align 4, !tbaa !192
  %tobool25 = icmp ne i32 %11, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %12 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC27 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %12, i32 0, i32 4
  %13 = load %struct.gs_matrix3_s**, %struct.gs_matrix3_s*** %ppmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixABC27, %struct.gs_matrix3_s** %13, align 8, !tbaa !1
  store i32 2, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.9, %land.lhs.true, %entry
  %14 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches30 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %14, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches30, i32 0, i32 1
  %caches31 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches31, i32 0, i64 0
  %floats33 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx32, i32 0, i32 0
  %params34 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats33, i32 0, i32 0
  %is_identity35 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params34, i32 0, i32 0
  %15 = load i32, i32* %is_identity35, align 4, !tbaa !147
  %tobool36 = icmp ne i32 %15, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.63

land.lhs.true.37:                                 ; preds = %if.end.29
  %16 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches38 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %16, i32 0, i32 5
  %DecodeABC39 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches38, i32 0, i32 1
  %caches40 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches40, i32 0, i64 1
  %floats42 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx41, i32 0, i32 0
  %params43 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats42, i32 0, i32 0
  %is_identity44 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params43, i32 0, i32 0
  %17 = load i32, i32* %is_identity44, align 4, !tbaa !147
  %tobool45 = icmp ne i32 %17, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.63

land.lhs.true.46:                                 ; preds = %land.lhs.true.37
  %18 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches47 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %18, i32 0, i32 5
  %DecodeABC48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches47, i32 0, i32 1
  %caches49 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches49, i32 0, i64 2
  %floats51 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx50, i32 0, i32 0
  %params52 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats51, i32 0, i32 0
  %is_identity53 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params52, i32 0, i32 0
  %19 = load i32, i32* %is_identity53, align 4, !tbaa !147
  %tobool54 = icmp ne i32 %19, 0
  br i1 %tobool54, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %land.lhs.true.46
  %20 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC56 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %20, i32 0, i32 4
  %is_identity57 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC56, i32 0, i32 3
  %21 = load i32, i32* %is_identity57, align 4, !tbaa !187
  %tobool58 = icmp ne i32 %21, 0
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.then.55
  %22 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common60 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %22, i32 0, i32 0
  %MatrixLMN61 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common60, i32 0, i32 4
  %23 = load %struct.gs_matrix3_s**, %struct.gs_matrix3_s*** %ppmat.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixLMN61, %struct.gs_matrix3_s** %23, align 8, !tbaa !1
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.46, %land.lhs.true.37, %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.59, %if.then.26, %if.then.20
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_is_lab(%struct.gs_cie_abc_s* %pcie) #1 {
entry:
  %retval = alloca i32, align 4
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %1, i32 0, i32 4
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %2 = load float, float* %u, align 4, !tbaa !193
  %cmp = fcmp oeq float %2, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC1 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %3, i32 0, i32 4
  %cu2 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC1, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu2, i32 0, i32 1
  %4 = load float, float* %v, align 4, !tbaa !194
  %cmp3 = fcmp oeq float %4, 1.000000e+00
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC5 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %5, i32 0, i32 4
  %cu6 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC5, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu6, i32 0, i32 2
  %6 = load float, float* %w, align 4, !tbaa !195
  %cmp7 = fcmp oeq float %6, 1.000000e+00
  br i1 %cmp7, label %land.lhs.true.8, label %if.then

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %7 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC9 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %7, i32 0, i32 4
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC9, i32 0, i32 1
  %u10 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %8 = load float, float* %u10, align 4, !tbaa !196
  %cmp11 = fcmp oeq float %8, 1.000000e+00
  br i1 %cmp11, label %land.lhs.true.12, label %if.then

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC13 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 4
  %cv14 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC13, i32 0, i32 1
  %v15 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv14, i32 0, i32 1
  %10 = load float, float* %v15, align 4, !tbaa !197
  %cmp16 = fcmp oeq float %10, 0.000000e+00
  br i1 %cmp16, label %land.lhs.true.17, label %if.then

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %11 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC18 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %11, i32 0, i32 4
  %cv19 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC18, i32 0, i32 1
  %w20 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv19, i32 0, i32 2
  %12 = load float, float* %w20, align 4, !tbaa !198
  %cmp21 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.22, label %if.then

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %13 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC23 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %13, i32 0, i32 4
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC23, i32 0, i32 2
  %u24 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 0
  %14 = load float, float* %u24, align 4, !tbaa !199
  %cmp25 = fcmp oeq float %14, 0.000000e+00
  br i1 %cmp25, label %land.lhs.true.26, label %if.then

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %15 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC27 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %15, i32 0, i32 4
  %cw28 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC27, i32 0, i32 2
  %v29 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw28, i32 0, i32 1
  %16 = load float, float* %v29, align 4, !tbaa !200
  %cmp30 = fcmp oeq float %16, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true.31, label %if.then

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %17 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC32 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %17, i32 0, i32 4
  %cw33 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC32, i32 0, i32 2
  %w34 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw33, i32 0, i32 2
  %18 = load float, float* %w34, align 4, !tbaa !201
  %cmp35 = fcmp oeq float %18, -1.000000e+00
  br i1 %cmp35, label %land.lhs.true.36, label %if.then

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %19 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %19, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 4
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN, i32 0, i32 3
  %20 = load i32, i32* %is_identity, align 4, !tbaa !192
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.36
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %21, 511
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %22, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 1
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %call = call i32 @cie_vector_cache_is_lab_abc(%struct.gx_cie_vector_cache3_s* %DecodeABC, i32 %23) #6
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.then.42

land.lhs.true.39:                                 ; preds = %for.body
  %24 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %call40 = call i32 @cie_scalar_cache_is_lab_lmn(%struct.gs_cie_abc_s* %24, i32 %25) #6
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.39, %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %land.lhs.true.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.42, %if.then
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @pdf_put_lab_color_space(%struct.cos_array_s*, %struct.cos_dict_s*, %struct.gs_range_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cos_array_add_vector3(%struct.cos_array_s* %pca, %struct.gs_vector3_s* %pvec) #1 {
entry:
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %code = alloca i32, align 4
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %2 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %2, i32 0, i32 0
  %3 = load float, float* %u, align 4, !tbaa !149
  %conv = fpext float %3 to double
  %call = call i32 @cos_array_add_real(%struct.cos_array_s* %1, double %conv) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 1
  %7 = load float, float* %v, align 4, !tbaa !148
  %conv2 = fpext float %7 to double
  %call3 = call i32 @cos_array_add_real(%struct.cos_array_s* %5, double %conv2) #6
  store i32 %call3, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %8, 0
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %10 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %10, i32 0, i32 2
  %11 = load float, float* %w, align 4, !tbaa !150
  %conv7 = fpext float %11 to double
  %call8 = call i32 @cos_array_add_real(%struct.cos_array_s* %9, double %conv7) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret i32 %12
}

declare i32 @cos_dict_put(%struct.cos_dict_s*, i8*, i32, %struct.cos_value_s*) #0

declare %struct.cos_value_s* @cos_object_value(%struct.cos_value_s*, %struct.cos_object_s*) #0

declare %struct.gs_function_s* @gs_cspace_get_devn_function(%struct.gs_color_space_s*) #0

declare i32 @pdf_string_to_cos_name(%struct.gx_device_pdf_s*, i8*, i32, %struct.cos_value_s*) #0

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #0

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #0

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_separation_color_space(%struct.gx_device_pdf_s* %pdev, %struct.cos_array_s* %pca, i8* %csname, %struct.cos_value_s* %snames, %struct.gs_color_space_s* %alt_space, %struct.gs_function_s* %pfn, %struct.pdf_color_space_names_s* %pcsn, %struct.cos_value_s* %v_attributes) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pca.addr = alloca %struct.cos_array_s*, align 8
  %csname.addr = alloca i8*, align 8
  %snames.addr = alloca %struct.cos_value_s*, align 8
  %alt_space.addr = alloca %struct.gs_color_space_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pcsn.addr = alloca %struct.pdf_color_space_names_s*, align 8
  %v_attributes.addr = alloca %struct.cos_value_s*, align 8
  %v = alloca %struct.cos_value_s, align 8
  %ranges = alloca %struct.gs_range_s*, align 8
  %code = alloca i32, align 4
  %csi = alloca i32, align 4
  %new_pfn = alloca %struct.gs_function_s*, align 8
  %in = alloca [1 x float], align 4
  %out_low = alloca [4 x float], align 16
  %out_high = alloca [4 x float], align 16
  %cleanup.dest.slot = alloca i32
  %new_pfn65 = alloca %struct.gs_function_s*, align 8
  %in66 = alloca [1 x float], align 4
  %out_low67 = alloca [4 x float], align 16
  %out_high68 = alloca [4 x float], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_array_s* %pca, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  store i8* %csname, i8** %csname.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %snames, %struct.cos_value_s** %snames.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %alt_space, %struct.gs_color_space_s** %alt_space.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.pdf_color_space_names_s* %pcsn, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %v_attributes, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %alt_space.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %4) #6
  store i32 %call, i32* %csi, align 4, !tbaa !5
  %5 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %alt_space.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 6
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !114
  %call1 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %7) #6
  store i32 %call1, i32* %csi, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 108
  %10 = load i32, i32* %PDFX, align 4, !tbaa !202
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 109
  %12 = load i32, i32* %PDFA, align 4, !tbaa !203
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.56

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 206
  %14 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !204
  %cmp5 = icmp eq i32 %14, 2
  br i1 %cmp5, label %if.then.6, label %if.end.56

if.then.6:                                        ; preds = %land.lhs.true.4, %land.lhs.true
  %15 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store %struct.gs_function_s* null, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %16 = bitcast [1 x float]* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast [1 x float]* %in to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 4, i32 4, i1 false)
  %18 = bitcast [4 x float]* %out_low to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #2
  %19 = bitcast [4 x float]* %out_high to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #2
  %20 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %20, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %21 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !205
  %22 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1 x float], [1 x float]* %in, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i32 0
  %call8 = call i32 %21(%struct.gs_function_s* %22, float* %arraydecay, float* %arraydecay7) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.6
  %25 = bitcast [4 x float]* %out_low to float*
  %26 = bitcast [4 x float]* %out_low to float*
  call void @pdf_SepRGB_ConvertToCMYK(float* %25, float* %26) #6
  %arrayidx = getelementptr inbounds [1 x float], [1 x float]* %in, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !85
  %27 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %head12 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %27, i32 0, i32 0
  %procs13 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head12, i32 0, i32 1
  %evaluate14 = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs13, i32 0, i32 0
  %28 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate14, align 8, !tbaa !205
  %29 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [1 x float], [1 x float]* %in, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i32 0
  %call17 = call i32 %28(%struct.gs_function_s* %29, float* %arraydecay15, float* %arraydecay16) #6
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %30, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.11
  %32 = bitcast [4 x float]* %out_high to float*
  %33 = bitcast [4 x float]* %out_high to float*
  call void @pdf_SepRGB_ConvertToCMYK(float* %32, float* %33) #6
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [4 x float], [4 x float]* %out_low, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x float], [4 x float]* %out_high, i32 0, i32 0
  %call23 = call i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %34, %struct.gs_function_s** %new_pfn, i32 4, float* %arraydecay21, float* %arraydecay22) #6
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %35, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.20
  %37 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %csname.addr, align 8, !tbaa !1
  %call27 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %38) #6
  %call28 = call i32 @cos_array_add(%struct.cos_array_s* %37, %struct.cos_value_s* %call27) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %39, 0
  br i1 %cmp29, label %if.then.30, label %if.end.51

if.then.30:                                       ; preds = %if.end.26
  %40 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %41 = load %struct.cos_value_s*, %struct.cos_value_s** %snames.addr, align 8, !tbaa !1
  %call31 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %40, %struct.cos_value_s* %41) #6
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %42, 0
  br i1 %cmp32, label %if.then.33, label %if.end.50

if.then.33:                                       ; preds = %if.then.30
  %43 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceCMYK = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %43, i32 0, i32 0
  %44 = load i8*, i8** %DeviceCMYK, align 8, !tbaa !117
  %call34 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %44) #6
  %45 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call35 = call i32 @cos_array_add(%struct.cos_array_s* %45, %struct.cos_value_s* %v) #6
  store i32 %call35, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp sge i32 %46, 0
  br i1 %cmp36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %if.then.33
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call38 = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %47, %struct.gs_function_s* %48, %struct.gs_range_s* null, %struct.cos_value_s* %v) #6
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %49, 0
  br i1 %cmp39, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.then.37
  %50 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call41 = call i32 @cos_array_add(%struct.cos_array_s* %50, %struct.cos_value_s* %v) #6
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %51, 0
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %if.then.40
  %52 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %cmp44 = icmp ne %struct.cos_value_s* %52, null
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.43
  %53 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %54 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %call46 = call i32 @cos_array_add(%struct.cos_array_s* %53, %struct.cos_value_s* %54) #6
  store i32 %call46, i32* %code, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.43, %if.then.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.37
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.33
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.30
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.26
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %56 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn, align 8, !tbaa !1
  %call52 = call i32 @pdf_delete_base_space_function(%struct.gx_device_pdf_s* %55, %struct.gs_function_s* %56) #6
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.25, %if.then.19, %if.then.10
  %58 = bitcast [4 x float]* %out_high to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #2
  %59 = bitcast [4 x float]* %out_low to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #2
  %60 = bitcast [1 x float]* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.gs_function_s** %new_pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  br label %cleanup.149

if.end.56:                                        ; preds = %land.lhs.true.4, %lor.lhs.false, %if.end
  %62 = load i32, i32* %csi, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %62, 2
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.124

land.lhs.true.58:                                 ; preds = %if.end.56
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA59 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 109
  %64 = load i32, i32* %PDFA59, align 4, !tbaa !203
  %cmp60 = icmp ne i32 %64, 0
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.124

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pcm_color_info_index62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 206
  %66 = load i32, i32* %pcm_color_info_index62, align 4, !tbaa !204
  %cmp63 = icmp eq i32 %66, 1
  br i1 %cmp63, label %if.then.64, label %if.end.124

if.then.64:                                       ; preds = %land.lhs.true.61
  %67 = bitcast %struct.gs_function_s** %new_pfn65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  store %struct.gs_function_s* null, %struct.gs_function_s** %new_pfn65, align 8, !tbaa !1
  %68 = bitcast [1 x float]* %in66 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = bitcast [1 x float]* %in66 to i8*
  call void @llvm.memset.p0i8.i64(i8* %69, i8 0, i64 4, i32 4, i1 false)
  %70 = bitcast [4 x float]* %out_low67 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %70) #2
  %71 = bitcast [4 x float]* %out_high68 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %71) #2
  %72 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %head69 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %72, i32 0, i32 0
  %procs70 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head69, i32 0, i32 1
  %evaluate71 = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs70, i32 0, i32 0
  %73 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate71, align 8, !tbaa !205
  %74 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay72 = getelementptr inbounds [1 x float], [1 x float]* %in66, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [4 x float], [4 x float]* %out_low67, i32 0, i32 0
  %call74 = call i32 %73(%struct.gs_function_s* %74, float* %arraydecay72, float* %arraydecay73) #6
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %75, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.64
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.77:                                        ; preds = %if.then.64
  %77 = bitcast [4 x float]* %out_low67 to float*
  %78 = bitcast [4 x float]* %out_low67 to float*
  call void @pdf_SepCMYK_ConvertToRGB(float* %77, float* %78) #6
  %arrayidx78 = getelementptr inbounds [1 x float], [1 x float]* %in66, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx78, align 4, !tbaa !85
  %79 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %head79 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %79, i32 0, i32 0
  %procs80 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head79, i32 0, i32 1
  %evaluate81 = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs80, i32 0, i32 0
  %80 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate81, align 8, !tbaa !205
  %81 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay82 = getelementptr inbounds [1 x float], [1 x float]* %in66, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [4 x float], [4 x float]* %out_high68, i32 0, i32 0
  %call84 = call i32 %80(%struct.gs_function_s* %81, float* %arraydecay82, float* %arraydecay83) #6
  store i32 %call84, i32* %code, align 4, !tbaa !5
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %82, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.77
  %83 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.87:                                        ; preds = %if.end.77
  %84 = bitcast [4 x float]* %out_high68 to float*
  %85 = bitcast [4 x float]* %out_high68 to float*
  call void @pdf_SepCMYK_ConvertToRGB(float* %84, float* %85) #6
  %86 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay88 = getelementptr inbounds [4 x float], [4 x float]* %out_low67, i32 0, i32 0
  %arraydecay89 = getelementptr inbounds [4 x float], [4 x float]* %out_high68, i32 0, i32 0
  %call90 = call i32 @pdf_make_base_space_function(%struct.gx_device_pdf_s* %86, %struct.gs_function_s** %new_pfn65, i32 3, float* %arraydecay88, float* %arraydecay89) #6
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %87, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.93:                                        ; preds = %if.end.87
  %89 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %90 = load i8*, i8** %csname.addr, align 8, !tbaa !1
  %call94 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %90) #6
  %call95 = call i32 @cos_array_add(%struct.cos_array_s* %89, %struct.cos_value_s* %call94) #6
  store i32 %call95, i32* %code, align 4, !tbaa !5
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp sge i32 %91, 0
  br i1 %cmp96, label %if.then.97, label %if.end.118

if.then.97:                                       ; preds = %if.end.93
  %92 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %93 = load %struct.cos_value_s*, %struct.cos_value_s** %snames.addr, align 8, !tbaa !1
  %call98 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %92, %struct.cos_value_s* %93) #6
  store i32 %call98, i32* %code, align 4, !tbaa !5
  %94 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp sge i32 %94, 0
  br i1 %cmp99, label %if.then.100, label %if.end.117

if.then.100:                                      ; preds = %if.then.97
  %95 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %DeviceRGB = getelementptr inbounds %struct.pdf_color_space_names_s, %struct.pdf_color_space_names_s* %95, i32 0, i32 2
  %96 = load i8*, i8** %DeviceRGB, align 8, !tbaa !116
  %call101 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %96) #6
  %97 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call102 = call i32 @cos_array_add(%struct.cos_array_s* %97, %struct.cos_value_s* %v) #6
  store i32 %call102, i32* %code, align 4, !tbaa !5
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %cmp103 = icmp sge i32 %98, 0
  br i1 %cmp103, label %if.then.104, label %if.end.116

if.then.104:                                      ; preds = %if.then.100
  %99 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn65, align 8, !tbaa !1
  %call105 = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %99, %struct.gs_function_s* %100, %struct.gs_range_s* null, %struct.cos_value_s* %v) #6
  store i32 %call105, i32* %code, align 4, !tbaa !5
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %cmp106 = icmp sge i32 %101, 0
  br i1 %cmp106, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.then.104
  %102 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call108 = call i32 @cos_array_add(%struct.cos_array_s* %102, %struct.cos_value_s* %v) #6
  store i32 %call108, i32* %code, align 4, !tbaa !5
  %103 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %103, 0
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.114

land.lhs.true.110:                                ; preds = %if.then.107
  %104 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %cmp111 = icmp ne %struct.cos_value_s* %104, null
  br i1 %cmp111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %land.lhs.true.110
  %105 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %106 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %call113 = call i32 @cos_array_add(%struct.cos_array_s* %105, %struct.cos_value_s* %106) #6
  store i32 %call113, i32* %code, align 4, !tbaa !5
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %land.lhs.true.110, %if.then.107
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.104
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.100
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.97
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.93
  %107 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %108 = load %struct.gs_function_s*, %struct.gs_function_s** %new_pfn65, align 8, !tbaa !1
  %call119 = call i32 @pdf_delete_base_space_function(%struct.gx_device_pdf_s* %107, %struct.gs_function_s* %108) #6
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.118, %if.then.92, %if.then.86, %if.then.76
  %110 = bitcast [4 x float]* %out_high68 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #2
  %111 = bitcast [4 x float]* %out_low67 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #2
  %112 = bitcast [1 x float]* %in66 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast %struct.gs_function_s** %new_pfn65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  br label %cleanup.149

if.end.124:                                       ; preds = %land.lhs.true.61, %land.lhs.true.58, %if.end.56
  %114 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %csname.addr, align 8, !tbaa !1
  %call125 = call %struct.cos_value_s* @cos_c_string_value(%struct.cos_value_s* %v, i8* %115) #6
  %call126 = call i32 @cos_array_add(%struct.cos_array_s* %114, %struct.cos_value_s* %call125) #6
  store i32 %call126, i32* %code, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then.147, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.end.124
  %116 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %117 = load %struct.cos_value_s*, %struct.cos_value_s** %snames.addr, align 8, !tbaa !1
  %call129 = call i32 @cos_array_add_no_copy(%struct.cos_array_s* %116, %struct.cos_value_s* %117) #6
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.147, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.128
  %118 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %119 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %alt_space.addr, align 8, !tbaa !1
  %120 = load %struct.pdf_color_space_names_s*, %struct.pdf_color_space_names_s** %pcsn.addr, align 8, !tbaa !1
  %call132 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %118, %struct.cos_value_s* %v, %struct.gs_range_s** %ranges, %struct.gs_color_space_s* %119, %struct.pdf_color_space_names_s* %120, i32 0, i8* null, i32 0, i32 0) #6
  store i32 %call132, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then.147, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.131
  %121 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call135 = call i32 @cos_array_add(%struct.cos_array_s* %121, %struct.cos_value_s* %v) #6
  store i32 %call135, i32* %code, align 4, !tbaa !5
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.then.147, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.134
  %122 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %123 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %124 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %call138 = call i32 @pdf_function_scaled(%struct.gx_device_pdf_s* %122, %struct.gs_function_s* %123, %struct.gs_range_s* %124, %struct.cos_value_s* %v) #6
  store i32 %call138, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then.147, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.137
  %125 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %call141 = call i32 @cos_array_add(%struct.cos_array_s* %125, %struct.cos_value_s* %v) #6
  store i32 %call141, i32* %code, align 4, !tbaa !5
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.147, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.140
  %126 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %cmp144 = icmp ne %struct.cos_value_s* %126, null
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.143
  %127 = load %struct.cos_array_s*, %struct.cos_array_s** %pca.addr, align 8, !tbaa !1
  %128 = load %struct.cos_value_s*, %struct.cos_value_s** %v_attributes.addr, align 8, !tbaa !1
  %call145 = call i32 @cos_array_add(%struct.cos_array_s* %127, %struct.cos_value_s* %128) #6
  store i32 %call145, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.143
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call145, %cond.true ], [ 0, %cond.false ]
  %cmp146 = icmp slt i32 %cond, 0
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %cond.end, %lor.lhs.false.140, %lor.lhs.false.137, %lor.lhs.false.134, %lor.lhs.false.131, %lor.lhs.false.128, %if.end.124
  %129 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.148:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.148, %if.then.147, %cleanup.120, %cleanup
  %130 = bitcast i32* %csi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast %struct.cos_value_s* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %133) #2
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare %struct.gs_function_s* @gs_cspace_get_sepr_function(%struct.gs_color_space_s*) #0

declare void @cos_free(%struct.cos_object_s*, i8*) #0

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #0

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #0

declare %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s*, %struct.cos_object_s*) #0

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #0

; Function Attrs: nounwind uwtable
define i32 @free_color_space(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %ppcs = alloca %struct.pdf_color_space_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_color_space_s*
  store %struct.pdf_color_space_s* %2, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %3 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %3, i32 0, i32 10
  %4 = load i8*, i8** %serialized, align 8, !tbaa !175
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 43
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !98
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 43
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !98
  %10 = load %struct.pdf_color_space_s*, %struct.pdf_color_space_s** %ppcs, align 8, !tbaa !1
  %serialized2 = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %10, i32 0, i32 10
  %11 = load i8*, i8** %serialized2, align 8, !tbaa !175
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %12, i32 0, i32 7
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !129
  %tobool3 = icmp ne %struct.cos_object_s* %13, null
  br i1 %tobool3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object5 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %14, i32 0, i32 7
  %15 = load %struct.cos_object_s*, %struct.cos_object_s** %object5, align 8, !tbaa !129
  call void @cos_release(%struct.cos_object_s* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0)) #6
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory6 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 43
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory6, align 8, !tbaa !98
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !63
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 43
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory9, align 8, !tbaa !98
  %21 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object10 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %21, i32 0, i32 7
  %22 = load %struct.cos_object_s*, %struct.cos_object_s** %object10, align 8, !tbaa !129
  %23 = bitcast %struct.cos_object_s* %22 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0)) #6
  %24 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object11 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %24, i32 0, i32 7
  store %struct.cos_object_s* null, %struct.cos_object_s** %object11, align 8, !tbaa !129
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.4, %if.end
  %25 = bitcast %struct.pdf_color_space_s** %ppcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 0
}

declare void @cos_release(%struct.cos_object_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_cs_Pattern_colored(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %cs_Patterns = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 166
  %arrayidx = getelementptr inbounds [5 x %struct.pdf_resource_s*], [5 x %struct.pdf_resource_s*]* %cs_Patterns, i32 0, i64 0
  %call = call i32 @pdf_pattern_space(%struct.gx_device_pdf_s* %0, %struct.cos_value_s* %1, %struct.pdf_resource_s** %arrayidx, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_pattern_space(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue, %struct.pdf_resource_s** %ppres, i8* %cs_name) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %cs_name.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store i8* %cs_name, i8** %cs_name.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %1, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_resource_s* %2, null
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %call = call i32 @pdf_begin_resource_body(%struct.gx_device_pdf_s* %4, i32 0, i64 0, %struct.pdf_resource_s** %5) #6
  store i32 %call, i32* %code1, align 4, !tbaa !5
  %6 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 47
  %9 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !210
  %10 = load i8*, i8** %cs_name.addr, align 8, !tbaa !1
  %call3 = call i8* @pprints1(%struct.stream_s* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* %10) #6
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 @pdf_end_resource(%struct.gx_device_pdf_s* %11, i32 0) #6
  %12 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %13 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %12, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %13, i32 0, i32 7
  %14 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !129
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %14, i32 0, i32 8
  store i8 1, i8* %written, align 1, !tbaa !211
  %15 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %16 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %15, align 8, !tbaa !1
  %17 = bitcast %struct.pdf_resource_s* %16 to %struct.pdf_color_space_s*
  %ranges = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %17, i32 0, i32 8
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !127
  %18 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %18, align 8, !tbaa !1
  %20 = bitcast %struct.pdf_resource_s* %19 to %struct.pdf_color_space_s*
  %serialized = getelementptr inbounds %struct.pdf_color_space_s, %struct.pdf_color_space_s* %20, i32 0, i32 10
  store i8* null, i8** %serialized, align 8, !tbaa !175
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %21 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %entry
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 205
  %24 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !181
  %25 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %26 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %25, align 8, !tbaa !1
  %call6 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %22, %struct.cos_dict_s* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), %struct.pdf_resource_s* %26) #6
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %27, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end.9:                                         ; preds = %if.end.5
  %29 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %30 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %30, align 8, !tbaa !1
  %object10 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %31, i32 0, i32 7
  %32 = load %struct.cos_object_s*, %struct.cos_object_s** %object10, align 8, !tbaa !129
  %call11 = call %struct.cos_value_s* @cos_resource_value(%struct.cos_value_s* %29, %struct.cos_object_s* %32) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.9, %if.then.8, %cleanup
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @pdf_cs_Pattern_uncolored(%struct.gx_device_pdf_s* %pdev, %struct.cos_value_s* %pvalue) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  %ncomp = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !212
  store i32 %2, i32* %ncomp, align 4, !tbaa !5
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %5 = load i32, i32* %ncomp, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %cs_Patterns = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 166
  %arrayidx = getelementptr inbounds [5 x %struct.pdf_resource_s*], [5 x %struct.pdf_resource_s*]* %cs_Patterns, i32 0, i64 %idxprom
  %7 = load i32, i32* %ncomp, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8*], [5 x i8*]* @pdf_cs_Pattern_uncolored.pcs_names, i32 0, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %call = call i32 @pdf_pattern_space(%struct.gx_device_pdf_s* %3, %struct.cos_value_s* %4, %struct.pdf_resource_s** %arrayidx, i8* %8) #6
  %9 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pdf_cs_Pattern_uncolored_hl(%struct.gx_device_pdf_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.cos_value_s* %pvalue) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pvalue.addr = alloca %struct.cos_value_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.cos_value_s* %pvalue, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.cos_value_s*, %struct.cos_value_s** %pvalue.addr, align 8, !tbaa !1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %0, %struct.cos_value_s* %1, %struct.gs_range_s** null, %struct.gs_color_space_s* %2, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 1, i8* null, i32 0, i32 0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @pdf_color_space_procsets(%struct.gx_device_pdf_s* %pdev, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  br label %csw

csw:                                              ; preds = %sw.bb.1, %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %2) #6
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %csw, %csw
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 159
  %4 = load i32, i32* %procsets, align 4, !tbaa !213
  %or = or i32 %4, 1
  store i32 %or, i32* %procsets, align 4, !tbaa !213
  br label %sw.epilog

sw.bb.1:                                          ; preds = %csw
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 159
  %6 = load i32, i32* %procsets2, align 4, !tbaa !213
  %or3 = or i32 %6, 4
  store i32 %or3, i32* %procsets2, align 4, !tbaa !213
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 3
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !94
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  br label %csw

sw.default:                                       ; preds = %csw
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %procsets4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 159
  %10 = load i32, i32* %procsets4, align 4, !tbaa !213
  %or5 = or i32 %10, 2
  store i32 %or5, i32* %procsets4, align 4, !tbaa !213
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %11 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @cie_values_are_exponential(double %v0, double %va, double %vb, double %k, float* %pexpt) #1 {
entry:
  %retval = alloca i32, align 4
  %v0.addr = alloca double, align 8
  %va.addr = alloca double, align 8
  %vb.addr = alloca double, align 8
  %k.addr = alloca double, align 8
  %pexpt.addr = alloca float*, align 8
  %p = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %v0, double* %v0.addr, align 8, !tbaa !153
  store double %va, double* %va.addr, align 8, !tbaa !153
  store double %vb, double* %vb.addr, align 8, !tbaa !153
  store double %k, double* %k.addr, align 8, !tbaa !153
  store float* %pexpt, float** %pexpt.addr, align 8, !tbaa !1
  %0 = bitcast double* %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load double, double* %v0.addr, align 8, !tbaa !153
  %call = call double @fabs(double %1) #9
  %cmp = fcmp oge double %call, 1.000000e-03
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %k.addr, align 8, !tbaa !153
  %call1 = call double @fabs(double %2) #9
  %cmp2 = fcmp olt double %call1, 1.000000e-03
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load double, double* %va.addr, align 8, !tbaa !153
  %cmp3 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %4 = load double, double* %va.addr, align 8, !tbaa !153
  %cmp5 = fcmp ogt double %4, 0.000000e+00
  %conv = zext i1 %cmp5 to i32
  %5 = load double, double* %k.addr, align 8, !tbaa !153
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  %conv7 = zext i1 %cmp6 to i32
  %cmp8 = icmp ne i32 %conv, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.4, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false.4
  %6 = load double, double* %va.addr, align 8, !tbaa !153
  %7 = load double, double* %k.addr, align 8, !tbaa !153
  %div = fdiv double %6, %7
  %call12 = call double @log(double %div) #7
  %call13 = call double @log(double 0x3FD54AA552A954AA) #7
  %div14 = fdiv double %call12, %call13
  store double %div14, double* %p, align 8, !tbaa !153
  %8 = load double, double* %vb.addr, align 8, !tbaa !153
  %9 = load double, double* %k.addr, align 8, !tbaa !153
  %10 = load double, double* %p, align 8, !tbaa !153
  %call15 = call double @pow(double 0x3FE55AAD56AB55AB, double %10) #7
  %mul = fmul double %9, %call15
  %sub = fsub double %8, %mul
  %call16 = call double @fabs(double %sub) #9
  %cmp17 = fcmp oge double %call16, 1.000000e-03
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.11
  %11 = load double, double* %p, align 8, !tbaa !153
  %conv21 = fptrunc double %11 to float
  %12 = load float*, float** %pexpt.addr, align 8, !tbaa !1
  store float %conv21, float* %12, align 4, !tbaa !85
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.10, %if.then
  %13 = bitcast double* %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @cie_vector_cache_is_lab_abc(%struct.gx_cie_vector_cache3_s* %pvc, i32 %i) #1 {
entry:
  %pvc.addr = alloca %struct.gx_cie_vector_cache3_s*, align 8
  %i.addr = alloca i32, align 4
  %pc3 = alloca %struct.gx_cie_vector_cache_s*, align 8
  %k = alloca double, align 8
  %l0 = alloca double, align 8
  %l = alloca double, align 8
  %a0 = alloca double, align 8
  %a = alloca double, align 8
  %b0 = alloca double, align 8
  %b = alloca double, align 8
  store %struct.gx_cie_vector_cache3_s* %pvc, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_cie_vector_cache_s** %pc3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i32 0
  store %struct.gx_cie_vector_cache_s* %arraydecay, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %2 = bitcast double* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv = sitofp i32 %3 to double
  %div = fdiv double %conv, 5.110000e+02
  store double %div, double* %k, align 8, !tbaa !153
  %4 = bitcast double* %l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %5, i64 0
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 1
  %params = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params, i32 0, i32 0
  %6 = load float, float* %base, align 4, !tbaa !214
  %conv1 = fpext float %6 to double
  store double %conv1, double* %l0, align 8, !tbaa !153
  %7 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load double, double* %l0, align 8, !tbaa !153
  %9 = load double, double* %k, align 8, !tbaa !153
  %10 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %10, i64 0
  %vecs3 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx2, i32 0, i32 1
  %params4 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs3, i32 0, i32 0
  %limit = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params4, i32 0, i32 2
  %11 = load float, float* %limit, align 4, !tbaa !215
  %conv5 = fpext float %11 to double
  %12 = load double, double* %l0, align 8, !tbaa !153
  %sub = fsub double %conv5, %12
  %mul = fmul double %9, %sub
  %add = fadd double %8, %mul
  store double %add, double* %l, align 8, !tbaa !153
  %13 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %14, i64 1
  %vecs7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx6, i32 0, i32 1
  %params8 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs7, i32 0, i32 0
  %base9 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params8, i32 0, i32 0
  %15 = load float, float* %base9, align 4, !tbaa !214
  %conv10 = fpext float %15 to double
  store double %conv10, double* %a0, align 8, !tbaa !153
  %16 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load double, double* %a0, align 8, !tbaa !153
  %18 = load double, double* %k, align 8, !tbaa !153
  %19 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %19, i64 1
  %vecs12 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx11, i32 0, i32 1
  %params13 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs12, i32 0, i32 0
  %limit14 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params13, i32 0, i32 2
  %20 = load float, float* %limit14, align 4, !tbaa !215
  %conv15 = fpext float %20 to double
  %21 = load double, double* %a0, align 8, !tbaa !153
  %sub16 = fsub double %conv15, %21
  %mul17 = fmul double %18, %sub16
  %add18 = fadd double %17, %mul17
  store double %add18, double* %a, align 8, !tbaa !153
  %22 = bitcast double* %b0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %23, i64 2
  %vecs20 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx19, i32 0, i32 1
  %params21 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs20, i32 0, i32 0
  %base22 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params21, i32 0, i32 0
  %24 = load float, float* %base22, align 4, !tbaa !214
  %conv23 = fpext float %24 to double
  store double %conv23, double* %b0, align 8, !tbaa !153
  %25 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load double, double* %b0, align 8, !tbaa !153
  %27 = load double, double* %k, align 8, !tbaa !153
  %28 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %28, i64 2
  %vecs25 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx24, i32 0, i32 1
  %params26 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs25, i32 0, i32 0
  %limit27 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params26, i32 0, i32 2
  %29 = load float, float* %limit27, align 4, !tbaa !215
  %conv28 = fpext float %29 to double
  %30 = load double, double* %b0, align 8, !tbaa !153
  %sub29 = fsub double %conv28, %30
  %mul30 = fmul double %27, %sub29
  %add31 = fadd double %26, %mul30
  store double %add31, double* %b, align 8, !tbaa !153
  %31 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %32, i64 0
  %vecs33 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx32, i32 0, i32 1
  %values = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs33, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values, i32 0, i64 %idxprom
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx34, i32 0, i32 0
  %33 = load float, float* %u, align 4, !tbaa !185
  %conv35 = fpext float %33 to double
  %34 = load double, double* %l, align 8, !tbaa !153
  %add36 = fadd double %34, 1.600000e+01
  %div37 = fdiv double %add36, 1.160000e+02
  %sub38 = fsub double %conv35, %div37
  %call = call double @fabs(double %sub38) #9
  %cmp = fcmp olt double %call, 1.000000e-03
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %35 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom40 = sext i32 %35 to i64
  %36 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %36, i64 1
  %vecs42 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx41, i32 0, i32 1
  %values43 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values43, i32 0, i64 %idxprom40
  %u45 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx44, i32 0, i32 0
  %37 = load float, float* %u45, align 4, !tbaa !185
  %conv46 = fpext float %37 to double
  %38 = load double, double* %a, align 8, !tbaa !153
  %div47 = fdiv double %38, 5.000000e+02
  %sub48 = fsub double %conv46, %div47
  %call49 = call double @fabs(double %sub48) #9
  %cmp50 = fcmp olt double %call49, 1.000000e-03
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %39 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom52 = sext i32 %39 to i64
  %40 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pc3, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %40, i64 2
  %vecs54 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx53, i32 0, i32 1
  %values55 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs54, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values55, i32 0, i64 %idxprom52
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx56, i32 0, i32 2
  %41 = load float, float* %w, align 4, !tbaa !216
  %conv57 = fpext float %41 to double
  %42 = load double, double* %b, align 8, !tbaa !153
  %div58 = fdiv double %42, -2.000000e+02
  %sub59 = fsub double %conv57, %div58
  %call60 = call double @fabs(double %sub59) #9
  %cmp61 = fcmp olt double %call60, 1.000000e-03
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %43 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp61, %land.rhs ]
  %land.ext = zext i1 %43 to i32
  %44 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast double* %b0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast double* %l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast double* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gx_cie_vector_cache_s** %pc3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_scalar_cache_is_lab_lmn(%struct.gs_cie_abc_s* %pcie, i32 %i) #1 {
entry:
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %i.addr = alloca i32, align 4
  %k = alloca double, align 8
  %g = alloca double, align 8
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast double* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 5.110000e+02
  store double %div, double* %k, align 8, !tbaa !153
  %2 = bitcast double* %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load double, double* %k, align 8, !tbaa !153
  %cmp = fcmp oge double %3, 0x3FCA7B9611A7B961
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load double, double* %k, align 8, !tbaa !153
  %5 = load double, double* %k, align 8, !tbaa !153
  %mul = fmul double %4, %5
  %6 = load double, double* %k, align 8, !tbaa !153
  %mul2 = fmul double %mul, %6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load double, double* %k, align 8, !tbaa !153
  %sub = fsub double %7, 0x3FC1A7B9611A7B96
  %mul3 = fmul double %sub, 0x3FC07004DED20922
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul2, %cond.true ], [ %mul3, %cond.false ]
  store double %cond, double* %g, align 8, !tbaa !153
  %8 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 0
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  %10 = load float, float* %arrayidx4, align 4, !tbaa !85
  %conv5 = fpext float %10 to double
  %11 = load double, double* %g, align 8, !tbaa !153
  %12 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common6 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %12, i32 0, i32 0
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common6, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint, i32 0, i32 0
  %13 = load float, float* %u, align 4, !tbaa !217
  %conv7 = fpext float %13 to double
  %mul8 = fmul double %11, %conv7
  %sub9 = fsub double %conv5, %mul8
  %call = call double @fabs(double %sub9) #9
  %cmp10 = fcmp olt double %call, 1.000000e-03
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.end
  %14 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common13 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %15, i32 0, i32 0
  %caches14 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common13, i32 0, i32 6
  %DecodeLMN15 = getelementptr inbounds %struct.anon, %struct.anon* %caches14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN15, i32 0, i64 1
  %floats17 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx16 to %struct.cie_cache_floats_s*
  %values18 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [512 x float], [512 x float]* %values18, i32 0, i64 %idxprom12
  %16 = load float, float* %arrayidx19, align 4, !tbaa !85
  %conv20 = fpext float %16 to double
  %17 = load double, double* %g, align 8, !tbaa !153
  %18 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common21 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %18, i32 0, i32 0
  %points22 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common21, i32 0, i32 5
  %WhitePoint23 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points22, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint23, i32 0, i32 1
  %19 = load float, float* %v, align 4, !tbaa !218
  %conv24 = fpext float %19 to double
  %mul25 = fmul double %17, %conv24
  %sub26 = fsub double %conv20, %mul25
  %call27 = call double @fabs(double %sub26) #9
  %cmp28 = fcmp olt double %call27, 1.000000e-03
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom30 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common31 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %21, i32 0, i32 0
  %caches32 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common31, i32 0, i32 6
  %DecodeLMN33 = getelementptr inbounds %struct.anon, %struct.anon* %caches32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN33, i32 0, i64 2
  %floats35 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx34 to %struct.cie_cache_floats_s*
  %values36 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [512 x float], [512 x float]* %values36, i32 0, i64 %idxprom30
  %22 = load float, float* %arrayidx37, align 4, !tbaa !85
  %conv38 = fpext float %22 to double
  %23 = load double, double* %g, align 8, !tbaa !153
  %24 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common39 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %24, i32 0, i32 0
  %points40 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common39, i32 0, i32 5
  %WhitePoint41 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points40, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %WhitePoint41, i32 0, i32 2
  %25 = load float, float* %w, align 4, !tbaa !219
  %conv42 = fpext float %25 to double
  %mul43 = fmul double %23, %conv42
  %sub44 = fsub double %conv38, %mul43
  %call45 = call double @fabs(double %sub44) #9
  %cmp46 = fcmp olt double %call45, 1.000000e-03
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end
  %26 = phi i1 [ false, %land.lhs.true ], [ false, %cond.end ], [ %cmp46, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  %27 = bitcast double* %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast double* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret i32 %land.ext
}

declare i32 @cos_array_add_real(%struct.cos_array_s*, double) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @pdf_SepRGB_ConvertToCMYK(float* %in, float* %out) #1 {
entry:
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %CMYK = alloca [4 x float], align 16
  %i = alloca i32, align 4
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast [4 x float]* %CMYK to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !85
  %4 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx1, align 4, !tbaa !85
  %cmp = fcmp ole float %3, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx2, align 4, !tbaa !85
  %8 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 2
  %9 = load float, float* %arrayidx3, align 4, !tbaa !85
  %cmp4 = fcmp ole float %7, %9
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 0
  %11 = load float, float* %arrayidx5, align 4, !tbaa !85
  %conv = fpext float %11 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv6 = fptrunc double %sub to float
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  store float %conv6, float* %arrayidx7, align 4, !tbaa !85
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 1
  %13 = load float, float* %arrayidx8, align 4, !tbaa !85
  %14 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx9, align 4, !tbaa !85
  %cmp10 = fcmp ole float %13, %15
  br i1 %cmp10, label %land.lhs.true.12, label %if.else.23

land.lhs.true.12:                                 ; preds = %if.else
  %16 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %16, i64 1
  %17 = load float, float* %arrayidx13, align 4, !tbaa !85
  %18 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %18, i64 2
  %19 = load float, float* %arrayidx14, align 4, !tbaa !85
  %cmp15 = fcmp ole float %17, %19
  br i1 %cmp15, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %land.lhs.true.12
  %20 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx18, align 4, !tbaa !85
  %conv19 = fpext float %21 to double
  %sub20 = fsub double 1.000000e+00, %conv19
  %conv21 = fptrunc double %sub20 to float
  %arrayidx22 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  store float %conv21, float* %arrayidx22, align 4, !tbaa !85
  br label %if.end

if.else.23:                                       ; preds = %land.lhs.true.12, %if.else
  %22 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx24, align 4, !tbaa !85
  %conv25 = fpext float %23 to double
  %sub26 = fsub double 1.000000e+00, %conv25
  %conv27 = fptrunc double %sub26 to float
  %arrayidx28 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  store float %conv27, float* %arrayidx28, align 4, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.17
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %24 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds float, float* %24, i64 0
  %25 = load float, float* %arrayidx30, align 4, !tbaa !85
  %conv31 = fpext float %25 to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %arrayidx33 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  %26 = load float, float* %arrayidx33, align 4, !tbaa !85
  %conv34 = fpext float %26 to double
  %sub35 = fsub double %sub32, %conv34
  %conv36 = fptrunc double %sub35 to float
  %arrayidx37 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 0
  store float %conv36, float* %arrayidx37, align 4, !tbaa !85
  %27 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds float, float* %27, i64 1
  %28 = load float, float* %arrayidx38, align 4, !tbaa !85
  %conv39 = fpext float %28 to double
  %sub40 = fsub double 1.000000e+00, %conv39
  %arrayidx41 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  %29 = load float, float* %arrayidx41, align 4, !tbaa !85
  %conv42 = fpext float %29 to double
  %sub43 = fsub double %sub40, %conv42
  %conv44 = fptrunc double %sub43 to float
  %arrayidx45 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 1
  store float %conv44, float* %arrayidx45, align 4, !tbaa !85
  %30 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds float, float* %30, i64 2
  %31 = load float, float* %arrayidx46, align 4, !tbaa !85
  %conv47 = fpext float %31 to double
  %sub48 = fsub double 1.000000e+00, %conv47
  %arrayidx49 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 3
  %32 = load float, float* %arrayidx49, align 4, !tbaa !85
  %conv50 = fpext float %32 to double
  %sub51 = fsub double %sub48, %conv50
  %conv52 = fptrunc double %sub51 to float
  %arrayidx53 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 2
  store float %conv52, float* %arrayidx53, align 4, !tbaa !85
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %33, 4
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [4 x float], [4 x float]* %CMYK, i32 0, i64 %idxprom
  %35 = load float, float* %arrayidx56, align 4, !tbaa !85
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %36 to i64
  %37 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %37, i64 %idxprom57
  store float %35, float* %arrayidx58, align 4, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast [4 x float]* %CMYK to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #2
  ret void
}

declare i32 @pdf_function_scaled(%struct.gx_device_pdf_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.cos_value_s*) #0

; Function Attrs: nounwind uwtable
define internal void @pdf_SepCMYK_ConvertToRGB(float* %in, float* %out) #1 {
entry:
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %RGB = alloca [3 x float], align 4
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast [3 x float]* %RGB to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #2
  %1 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !85
  %3 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %3, i64 3
  %4 = load float, float* %arrayidx1, align 4, !tbaa !85
  %add = fadd float %2, %4
  %arrayidx2 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 0
  store float %add, float* %arrayidx2, align 4, !tbaa !85
  %5 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %5, i64 1
  %6 = load float, float* %arrayidx3, align 4, !tbaa !85
  %7 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %7, i64 3
  %8 = load float, float* %arrayidx4, align 4, !tbaa !85
  %add5 = fadd float %6, %8
  %arrayidx6 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 1
  store float %add5, float* %arrayidx6, align 4, !tbaa !85
  %9 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 2
  %10 = load float, float* %arrayidx7, align 4, !tbaa !85
  %11 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %11, i64 3
  %12 = load float, float* %arrayidx8, align 4, !tbaa !85
  %add9 = fadd float %10, %12
  %arrayidx10 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 2
  store float %add9, float* %arrayidx10, align 4, !tbaa !85
  %arrayidx11 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 0
  %13 = load float, float* %arrayidx11, align 4, !tbaa !85
  %cmp = fcmp ogt float %13, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 0
  store float 0.000000e+00, float* %arrayidx12, align 4, !tbaa !85
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx13 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 0
  %15 = load float, float* %arrayidx13, align 4, !tbaa !85
  %sub = fsub float 1.000000e+00, %15
  %16 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %16, i64 0
  store float %sub, float* %arrayidx14, align 4, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx15 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 1
  %17 = load float, float* %arrayidx15, align 4, !tbaa !85
  %cmp16 = fcmp ogt float %17, 1.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end
  %18 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 1
  store float 0.000000e+00, float* %arrayidx18, align 4, !tbaa !85
  br label %if.end.23

if.else.19:                                       ; preds = %if.end
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 1
  %19 = load float, float* %arrayidx20, align 4, !tbaa !85
  %sub21 = fsub float 1.000000e+00, %19
  %20 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds float, float* %20, i64 1
  store float %sub21, float* %arrayidx22, align 4, !tbaa !85
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.19, %if.then.17
  %arrayidx24 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 2
  %21 = load float, float* %arrayidx24, align 4, !tbaa !85
  %cmp25 = fcmp ogt float %21, 1.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.23
  %22 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %22, i64 2
  store float 0.000000e+00, float* %arrayidx27, align 4, !tbaa !85
  br label %if.end.32

if.else.28:                                       ; preds = %if.end.23
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %RGB, i32 0, i64 2
  %23 = load float, float* %arrayidx29, align 4, !tbaa !85
  %sub30 = fsub float 1.000000e+00, %23
  %24 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %24, i64 2
  store float %sub30, float* %arrayidx31, align 4, !tbaa !85
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.26
  %25 = bitcast [3 x float]* %RGB to i8*
  call void @llvm.lifetime.end(i64 12, i8* %25) #2
  ret void
}

declare i32 @pdf_begin_resource_body(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**) #0

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #0

declare i32 @pdf_end_resource(%struct.gx_device_pdf_s*, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !13, i64 116}
!8 = !{!"gs_cie_common_s", !2, i64 0, !2, i64 8, !9, i64 16, !10, i64 40, !11, i64 64, !14, i64 104, !15, i64 128}
!9 = !{!"gs_range3_s", !3, i64 0}
!10 = !{!"gs_cie_common_proc3_s", !3, i64 0}
!11 = !{!"gs_matrix3_s", !12, i64 0, !12, i64 12, !12, i64 24, !6, i64 36}
!12 = !{!"gs_vector3_s", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"float", !3, i64 0}
!14 = !{!"gs_cie_wb_s", !12, i64 0, !12, i64 12}
!15 = !{!"", !3, i64 0}
!16 = !{!8, !13, i64 120}
!17 = !{!8, !13, i64 124}
!18 = !{!19, !2, i64 32}
!19 = !{!"cos_dict_s", !2, i64 0, !20, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !20, i64 56, !2, i64 64, !21, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!20 = !{!"long", !3, i64 0}
!21 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!22 = !{!23, !2, i64 24}
!23 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !24, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !25, i64 96, !28, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !20, i64 928, !20, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !20, i64 968, !20, i64 976, !29, i64 984, !6, i64 1052, !6, i64 1056, !30, i64 1064, !2, i64 1104, !3, i64 1112, !32, i64 1120, !33, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !34, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !46, i64 7512, !46, i64 8144, !20, i64 8776, !20, i64 8784, !3, i64 8792, !3, i64 8796, !39, i64 8800, !6, i64 8816, !2, i64 8824, !20, i64 8832, !20, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !40, i64 8872, !51, i64 8880, !6, i64 9360, !40, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !56, i64 9424, !56, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !20, i64 9472, !6, i64 9480, !6, i64 9484, !55, i64 9488, !55, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !20, i64 9576, !20, i64 9584, !20, i64 9592, !57, i64 9600, !55, i64 9616, !55, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !55, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !58, i64 9784, !59, i64 9816, !59, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !20, i64 9920, !3, i64 9928, !6, i64 9960, !20, i64 9968, !20, i64 9976, !3, i64 9984, !3, i64 9988, !60, i64 9992, !60, i64 14120, !60, i64 18248, !60, i64 22376, !20, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !20, i64 26536, !6, i64 26544, !6, i64 26548, !20, i64 26552, !3, i64 26560, !20, i64 26568, !20, i64 26576, !3, i64 26584, !2, i64 26592, !61, i64 26600, !2, i64 26648, !6, i64 26656, !20, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !20, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !39, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !62, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !36, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !38, i64 30488, !6, i64 30524, !58, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !20, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !36, i64 30612, !40, i64 30640, !2, i64 30648, !52, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!24 = !{!"rc_header_s", !20, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !26, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !27, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !20, i64 704, !6, i64 712}
!26 = !{!"short", !3, i64 0}
!27 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!28 = !{!"gx_device_cached_colors_s", !20, i64 0, !20, i64 8}
!29 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!30 = !{!"gdev_space_params_s", !20, i64 0, !20, i64 8, !31, i64 16, !6, i64 32, !3, i64 36}
!31 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !20, i64 8}
!32 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!34 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !35, i64 24, !6, i64 128, !38, i64 132, !6, i64 168, !39, i64 176, !39, i64 192, !6, i64 208, !6, i64 212, !26, i64 216, !3, i64 220, !41, i64 224, !41, i64 228, !42, i64 232, !20, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !13, i64 296, !43, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !13, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !44, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !45, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !45, i64 1336}
!35 = !{!"gx_line_params_s", !13, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !6, i64 36, !36, i64 40, !37, i64 64}
!36 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!37 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !13, i64 12, !6, i64 16, !13, i64 20, !6, i64 24, !6, i64 28, !13, i64 32}
!38 = !{!"gs_matrix_fixed_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !3, i64 0}
!41 = !{!"gs_transparency_source_s", !13, i64 0}
!42 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!43 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!44 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!45 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !20, i64 16, !3, i64 24}
!46 = !{!"gx_hl_saved_color_s", !20, i64 0, !20, i64 8, !6, i64 16, !47, i64 24, !49, i64 288}
!47 = !{!"gs_client_color_s", !2, i64 0, !48, i64 8}
!48 = !{!"gs_paint_color_s", !3, i64 0}
!49 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !50, i64 336}
!50 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!51 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !20, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !52, i64 64, !52, i64 80, !52, i64 96, !52, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !53, i64 152, !6, i64 232, !6, i64 236, !53, i64 240, !53, i64 320, !54, i64 400, !54, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !55, i64 448, !54, i64 464}
!52 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!53 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !13, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!54 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!55 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!56 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!57 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!58 = !{!"gs_rect_s", !39, i64 0, !39, i64 16}
!59 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !58, i64 8}
!60 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!61 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!62 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !13, i64 40, !13, i64 44, !3, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !6, i64 80, !13, i64 84, !13, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !46, i64 120, !46, i64 752, !35, i64 1384, !2, i64 1488, !6, i64 1496, !20, i64 1504}
!63 = !{!64, !2, i64 24}
!64 = !{!"gs_memory_s", !2, i64 0, !65, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!65 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!66 = !{!67, !2, i64 8}
!67 = !{!"gs_function_Sd_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !68, i64 40, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !6, i64 128}
!68 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!69 = !{!67, !2, i64 24}
!70 = !{!64, !2, i64 160}
!71 = !{!52, !2, i64 0}
!72 = !{!52, !6, i64 8}
!73 = !{!74, !2, i64 8}
!74 = !{!"gs_function_ElIn_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48}
!75 = !{!74, !2, i64 24}
!76 = !{!74, !2, i64 32}
!77 = !{!74, !2, i64 40}
!78 = !{!64, !2, i64 136}
!79 = !{!67, !6, i64 0}
!80 = !{!67, !6, i64 16}
!81 = !{!67, !6, i64 32}
!82 = !{!67, !6, i64 72}
!83 = !{!64, !2, i64 88}
!84 = !{!67, !2, i64 96}
!85 = !{!13, !13, i64 0}
!86 = !{!67, !2, i64 88}
!87 = !{!67, !2, i64 80}
!88 = !{!68, !3, i64 8}
!89 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!90 = !{!68, !2, i64 0}
!91 = !{!74, !6, i64 0}
!92 = !{!74, !6, i64 16}
!93 = !{!74, !13, i64 48}
!94 = !{!95, !2, i64 40}
!95 = !{!"gs_color_space_s", !2, i64 0, !24, i64 8, !20, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!96 = !{!97, !6, i64 0}
!97 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!98 = !{!23, !2, i64 1728}
!99 = !{!23, !40, i64 9368}
!100 = !{!23, !6, i64 9524}
!101 = !{!102, !2, i64 8}
!102 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!103 = !{!102, !2, i64 16}
!104 = !{!3, !3, i64 0}
!105 = !{!97, !6, i64 24}
!106 = !{!107, !2, i64 208}
!107 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !26, i64 152, !3, i64 154, !3, i64 155, !108, i64 160, !20, i64 176, !109, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !26, i64 264, !26, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !52, i64 312, !6, i64 328, !20, i64 336, !20, i64 344}
!108 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!109 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!110 = !{!64, !2, i64 152}
!111 = !{!23, !6, i64 30760}
!112 = !{!113, !2, i64 24}
!113 = !{!"pdf_color_space_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!114 = !{!95, !2, i64 64}
!115 = !{!113, !2, i64 8}
!116 = !{!113, !2, i64 16}
!117 = !{!113, !2, i64 0}
!118 = !{!119, !6, i64 0}
!119 = !{!"gs_pattern_params_s", !6, i64 0}
!120 = !{!95, !2, i64 0}
!121 = !{!122, !2, i64 24}
!122 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!123 = !{!23, !3, i64 9008}
!124 = !{!95, !20, i64 32}
!125 = !{!122, !2, i64 112}
!126 = !{!64, !2, i64 64}
!127 = !{!128, !2, i64 72}
!128 = !{!"pdf_color_space_s", !2, i64 0, !2, i64 8, !20, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !20, i64 56, !2, i64 64, !2, i64 72, !6, i64 80, !2, i64 88}
!129 = !{!130, !2, i64 64}
!130 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !20, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !20, i64 56, !2, i64 64}
!131 = !{!132, !13, i64 6432}
!132 = !{!"gs_cie_a_s", !8, i64 0, !24, i64 6392, !133, i64 6416, !2, i64 6424, !12, i64 6432, !134, i64 6448}
!133 = !{!"gs_range_s", !13, i64 0, !13, i64 4}
!134 = !{!"", !135, i64 0}
!135 = !{!"gx_cie_vector_cache_s", !136, i64 0, !139, i64 2088}
!136 = !{!"cie_cache_floats_s", !137, i64 0, !3, i64 40}
!137 = !{!"cie_cache_params_s", !6, i64 0, !40, i64 8, !40, i64 16, !138, i64 24}
!138 = !{!"cie_linear_params_s", !6, i64 0, !13, i64 4, !13, i64 8}
!139 = !{!"cie_cache_vectors_s", !140, i64 0, !3, i64 36}
!140 = !{!"cie_vector_cache_params_s", !13, i64 0, !13, i64 4, !13, i64 8, !3, i64 12}
!141 = !{!132, !13, i64 6436}
!142 = !{!132, !13, i64 6440}
!143 = !{!132, !6, i64 100}
!144 = !{!95, !2, i64 48}
!145 = !{!132, !13, i64 6416}
!146 = !{!132, !13, i64 6420}
!147 = !{!135, !6, i64 0}
!148 = !{!12, !13, i64 4}
!149 = !{!12, !13, i64 0}
!150 = !{!12, !13, i64 8}
!151 = !{!136, !6, i64 0}
!152 = !{!133, !13, i64 0}
!153 = !{!40, !40, i64 0}
!154 = !{!133, !13, i64 4}
!155 = !{!11, !6, i64 36}
!156 = !{!23, !6, i64 30720}
!157 = !{!158, !6, i64 8}
!158 = !{!"gs_device_n_params_s", !2, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !2, i64 40}
!159 = !{!158, !2, i64 40}
!160 = !{!158, !2, i64 0}
!161 = !{!20, !20, i64 0}
!162 = !{!158, !2, i64 24}
!163 = !{!164, !20, i64 24}
!164 = !{!"gs_device_n_attributes_s", !24, i64 0, !20, i64 24, !2, i64 32, !2, i64 40}
!165 = !{!164, !2, i64 32}
!166 = !{!108, !2, i64 0}
!167 = !{!108, !6, i64 8}
!168 = !{!164, !2, i64 40}
!169 = !{!23, !20, i64 26664}
!170 = !{!130, !20, i64 56}
!171 = !{!23, !6, i64 30716}
!172 = !{!173, !2, i64 24}
!173 = !{!"gs_separation_params_s", !20, i64 0, !2, i64 8, !3, i64 16, !6, i64 20, !2, i64 24}
!174 = !{!173, !20, i64 0}
!175 = !{!128, !2, i64 88}
!176 = !{!128, !6, i64 80}
!177 = !{!178, !20, i64 8}
!178 = !{!"cos_object_s", !2, i64 0, !20, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !20, i64 56, !2, i64 64, !21, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!179 = !{!180, !20, i64 8}
!180 = !{!"cos_array_s", !2, i64 0, !20, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !20, i64 56, !2, i64 64, !21, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!181 = !{!23, !2, i64 30448}
!182 = !{!183, !2, i64 1680}
!183 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !24, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !25, i64 96, !28, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !20, i64 928, !20, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !20, i64 968, !20, i64 976, !29, i64 984, !6, i64 1052, !6, i64 1056, !30, i64 1064, !2, i64 1104, !3, i64 1112, !32, i64 1120, !33, i64 1144}
!184 = !{!130, !2, i64 0}
!185 = !{!186, !13, i64 0}
!186 = !{!"cie_cached_vector3_s", !13, i64 0, !13, i64 4, !13, i64 8}
!187 = !{!188, !6, i64 6500}
!188 = !{!"gs_cie_abc_s", !8, i64 0, !24, i64 6392, !9, i64 6416, !189, i64 6440, !11, i64 6464, !190, i64 6504}
!189 = !{!"gs_cie_abc_proc3_s", !3, i64 0}
!190 = !{!"", !6, i64 0, !191, i64 8}
!191 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!192 = !{!188, !6, i64 100}
!193 = !{!188, !13, i64 6464}
!194 = !{!188, !13, i64 6468}
!195 = !{!188, !13, i64 6472}
!196 = !{!188, !13, i64 6476}
!197 = !{!188, !13, i64 6480}
!198 = !{!188, !13, i64 6484}
!199 = !{!188, !13, i64 6488}
!200 = !{!188, !13, i64 6492}
!201 = !{!188, !13, i64 6496}
!202 = !{!23, !6, i64 9560}
!203 = !{!23, !6, i64 9564}
!204 = !{!23, !3, i64 30456}
!205 = !{!206, !2, i64 8}
!206 = !{!"gs_function_s", !207, i64 0, !209, i64 72}
!207 = !{!"gs_function_head_s", !6, i64 0, !208, i64 8}
!208 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!209 = !{!"gs_function_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!210 = !{!23, !2, i64 5848}
!211 = !{!178, !3, i64 50}
!212 = !{!23, !6, i64 100}
!213 = !{!23, !3, i64 26584}
!214 = !{!135, !13, i64 2088}
!215 = !{!135, !13, i64 2096}
!216 = !{!186, !13, i64 8}
!217 = !{!188, !13, i64 104}
!218 = !{!188, !13, i64 108}
!219 = !{!188, !13, i64 112}
