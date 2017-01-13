; ModuleID = './gdevpdtd.bc'
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
%struct.param_printer_params_s = type { i8*, i8*, i8*, i8*, i32 }
%struct.gs_param_item_s = type { i8*, i8, i16 }
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
%struct.pdf_text_data_s = type { %struct.pdf_outline_fonts_s*, %struct.pdf_bitmap_fonts_s*, %struct.pdf_text_state_s* }
%struct.pdf_outline_fonts_s = type { %struct.pdf_standard_font_s* }
%struct.pdf_standard_font_s = type { %struct.pdf_font_resource_s*, %struct.gs_matrix_s }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_font_descriptor_s = type { %struct.pdf_font_descriptor_common_s, %struct.pdf_base_font_s*, i32, i32, %struct.cid_ }
%struct.pdf_font_descriptor_common_s = type { %struct.pdf_font_descriptor_common_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, %struct.pdf_font_descriptor_values_s }
%struct.pdf_font_descriptor_values_s = type { i32, i32, i32, i32, i32, %struct.gs_int_rect_s, %struct.gs_string_s, i32, i32, i32, i32, i32, i32, i32 }
%struct.cid_ = type { %struct.cos_dict_s*, [3 x i8], %struct.cos_dict_s* }
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_cmap_s = type opaque
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.pdf_bitmap_fonts_s = type opaque
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
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.printer_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.stream_s*, %struct.param_printer_params_s, i32 }
%struct.anon.2 = type { i64, i16*, i32, i64, double*, double*, i8*, %struct.pdf_font_resource_s* }

@.str = private unnamed_addr constant [22 x i8] c"pdf_font_descriptor_t\00", align 1
@pdf_font_descriptor_data = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @pdf_font_descriptor_ptrs, i32 0, i32 0) }, align 8
@st_pdf_font_descriptor = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_font_descriptor_data to i8*) }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"pdf_sub_font_descriptor_t\00", align 1
@pdf_sub_font_descriptor_data = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_sub_font_descriptor_ptrs, i32 0, i32 0) }, align 8
@st_pdf_sub_font_descriptor = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_sub_font_descriptor_data to i8*) }, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"pdf_font_descriptor_alloc(base_font)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Free BaseFont FontName string\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Free base font from FontDescriptor)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"free FontDescriptor object\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"/CIDSet %ld 0 R\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"/CharSet\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/Style\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/Lang(%s)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"/FD\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"pdf_release_FontDescriptor_components\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"pdf_convert_truetype_font_descriptor\00", align 1
@st_pdf_resource = external constant %struct.gs_memory_struct_type_s, align 8
@pdf_font_descriptor_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 1, i16 112 }, %struct.gc_ptr_element_s { i16 0, i16 160 }, %struct.gc_ptr_element_s { i16 0, i16 176 }, %struct.gc_ptr_element_s { i16 0, i16 192 }], align 16
@pdf_sub_font_descriptor_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 1, i16 112 }], align 2
@.str.17 = private unnamed_addr constant [32 x i8] c"<</Type/FontDescriptor/FontName\00", align 1
@param_printer_params_default = external constant %struct.param_printer_params_s, align 8
@write_FontDescriptor_common.required_items = internal constant [6 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8 2, i16 72 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8 2, i16 76 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8 2, i16 80 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8 2, i16 84 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8 2, i16 88 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [7 x i8] c"Ascent\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"CapHeight\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Descent\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"StemV\00", align 1
@write_FontDescriptor_common.optional_items = internal constant [7 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8 2, i16 132 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8 2, i16 136 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8 2, i16 140 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8 2, i16 144 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8 2, i16 148 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8 2, i16 152 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"AvgWidth\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Leading\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"MaxWidth\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"MissingWidth\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"StemH\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_font_descriptor_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_descriptor_s** %ppfd, %struct.gs_font_base_s* %font, i32 %embed) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfd.addr = alloca %struct.pdf_font_descriptor_s**, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %embed.addr = alloca i32, align 4
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %pbfont = alloca %struct.pdf_base_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_descriptor_s** %ppfd, %struct.pdf_font_descriptor_s*** %ppfd.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store i32 %embed, i32* %embed.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %orig_FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 10
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix, i32 0, i32 0
  %6 = load float, float* %xx, align 4, !tbaa !7
  %cmp = fcmp oeq float %6, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %orig_FontMatrix1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 10
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %orig_FontMatrix1, i32 0, i32 1
  %8 = load float, float* %xy, align 4, !tbaa !19
  %cmp2 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %orig_FontMatrix3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %10, i32 0, i32 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix_s* [ %FontMatrix, %cond.true ], [ %orig_FontMatrix3, %cond.false ]
  %call = call i32 @pdf_base_font_alloc(%struct.gx_device_pdf_s* %3, %struct.pdf_base_font_s** %pbfont, %struct.gs_font_base_s* %4, %struct.gs_matrix_s* %cond, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %14, i32 0, i32 6
  %15 = load i64, i64* %id, align 8, !tbaa !20
  %16 = bitcast %struct.pdf_font_descriptor_s** %pfd to %struct.pdf_resource_s**
  %call5 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %13, i32 10, i64 %15, %struct.pdf_resource_s** %16, i64 -1) #6
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %17, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 43
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory8 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 43
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory8, align 8, !tbaa !21
  %23 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %24 = bitcast %struct.pdf_base_font_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)) #6
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %26 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %26, i32 0, i32 0
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 8
  %27 = bitcast %struct.pdf_font_descriptor_values_s* %values to i8*
  %call10 = call i8* @memset(i8* %27, i32 0, i64 sub (i64 200, i64 sext (i32 ptrtoint (%struct.pdf_font_descriptor_values_s* getelementptr inbounds (%struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* null, i32 0, i32 8) to i32) to i64))) #7
  %28 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %29 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %29, i32 0, i32 1
  store %struct.pdf_base_font_s* %28, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %30 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %30, i32 0, i32 11
  %31 = load i32, i32* %FontType, align 4, !tbaa !68
  %32 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %FontType11 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %32, i32 0, i32 2
  store i32 %31, i32* %FontType11, align 4, !tbaa !69
  %33 = load i32, i32* %embed.addr, align 4, !tbaa !5
  %34 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %embed12 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %34, i32 0, i32 3
  store i32 %33, i32* %embed12, align 4, !tbaa !70
  %35 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %36 = load %struct.pdf_font_descriptor_s**, %struct.pdf_font_descriptor_s*** %ppfd.addr, align 8, !tbaa !1
  store %struct.pdf_font_descriptor_s* %35, %struct.pdf_font_descriptor_s** %36, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @pdf_base_font_alloc(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s**, %struct.gs_font_base_s*, %struct.gs_matrix_s*, i32) #0

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_font_descriptor_free(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %pbfont = alloca %struct.pdf_base_font_s*, align 8
  %copied = alloca %struct.gs_font_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_font_descriptor_s*
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %4, i32 0, i32 1
  %5 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  store %struct.pdf_base_font_s* %5, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %copied1 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %7, i32 0, i32 0
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied1, align 8, !tbaa !71
  %9 = bitcast %struct.gs_font_base_s* %8 to %struct.gs_font_s*
  store %struct.gs_font_s* %9, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %call = call i32 @gs_free_copied_font(%struct.gs_font_s* %10) #6
  %11 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_base_font_s* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %12, i32 0, i32 7
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !73
  %tobool2 = icmp ne i32 %13, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %14, i32 0, i32 43
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %16 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !74
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 43
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory3, align 8, !tbaa !21
  %19 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name4 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %19, i32 0, i32 7
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name4, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8, !tbaa !75
  %21 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name5 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %21, i32 0, i32 7
  %size6 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name5, i32 0, i32 1
  %22 = load i32, i32* %size6, align 4, !tbaa !73
  call void %16(%struct.gs_memory_s* %18, i8* %20, i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #6
  %23 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name7 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %23, i32 0, i32 7
  %data8 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name7, i32 0, i32 0
  store i8* null, i8** %data8, align 8, !tbaa !75
  %24 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name9 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %24, i32 0, i32 7
  %size10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name9, i32 0, i32 1
  store i32 0, i32* %size10, align 4, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %25 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %tobool11 = icmp ne %struct.pdf_base_font_s* %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %26 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %26, i32 0, i32 7
  %27 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !76
  %call13 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %27) #6
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %29 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object15 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %29, i32 0, i32 7
  %30 = load %struct.cos_object_s*, %struct.cos_object_s** %object15, align 8, !tbaa !76
  %call16 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %30) #6
  %31 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %32 = bitcast %struct.pdf_base_font_s* %31 to i8*
  call void %28(%struct.gs_memory_s* %call16, i8* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end
  %33 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object18 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %33, i32 0, i32 7
  %34 = load %struct.cos_object_s*, %struct.cos_object_s** %object18, align 8, !tbaa !76
  %tobool19 = icmp ne %struct.cos_object_s* %34, null
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %if.end.17
  %35 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object21 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %35, i32 0, i32 7
  %36 = load %struct.cos_object_s*, %struct.cos_object_s** %object21, align 8, !tbaa !76
  %call22 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %36) #6
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call22, i32 0, i32 1
  %free_object24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object24, align 8, !tbaa !58
  %38 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object25 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %38, i32 0, i32 7
  %39 = load %struct.cos_object_s*, %struct.cos_object_s** %object25, align 8, !tbaa !76
  %call26 = call %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s* %39) #6
  %40 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object27 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %40, i32 0, i32 7
  %41 = load %struct.cos_object_s*, %struct.cos_object_s** %object27, align 8, !tbaa !76
  %42 = bitcast %struct.cos_object_s* %41 to i8*
  call void %37(%struct.gs_memory_s* %call26, i8* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #6
  %43 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %object28 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %43, i32 0, i32 7
  store %struct.cos_object_s* null, %struct.cos_object_s** %object28, align 8, !tbaa !76
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.20, %if.end.17
  %44 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  ret i32 0
}

declare i32 @gs_free_copied_font(%struct.gs_font_s*) #0

declare %struct.gs_memory_s* @cos_object_memory(%struct.cos_object_s*) #0

; Function Attrs: nounwind uwtable
define i64 @pdf_font_descriptor_id(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_font_descriptor_s* %0 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %1) #6
  ret i64 %call
}

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #0

; Function Attrs: nounwind uwtable
define i64 @pdf_set_font_descriptor_usage(%struct.gx_device_pdf_s* %pdev, i32 %parent_id, %struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %parent_id.addr = alloca i32, align 4
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %id = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %parent_id, i32* %parent_id.addr, align 4, !tbaa !5
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_font_descriptor_s* %1 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %2) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %id, align 4, !tbaa !5
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load i32, i32* %id, align 4, !tbaa !5
  %conv1 = sext i32 %4 to i64
  %5 = load i32, i32* %parent_id.addr, align 4, !tbaa !5
  %conv2 = sext i32 %5 to i64
  %call3 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %3, i64 %conv1, i64 %conv2) #6
  %6 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %6, i32 0, i32 1
  %7 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %7, i32 0, i32 9
  %8 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile, align 8, !tbaa !78
  %tobool = icmp ne %struct.cos_dict_s* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font4 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %9, i32 0, i32 1
  %10 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font4, align 8, !tbaa !61
  %FontFile5 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %10, i32 0, i32 9
  %11 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile5, align 8, !tbaa !78
  %id6 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %11, i32 0, i32 1
  %12 = load i64, i64* %id6, align 8, !tbaa !79
  %conv7 = trunc i64 %12 to i32
  store i32 %conv7, i32* %id, align 4, !tbaa !5
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %id, align 4, !tbaa !5
  %conv8 = sext i32 %14 to i64
  %15 = load i32, i32* %parent_id.addr, align 4, !tbaa !5
  %conv9 = sext i32 %15 to i64
  %call10 = call i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s* %13, i64 %conv8, i64 %conv9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = bitcast i32* %id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret i64 0
}

declare i32 @pdf_record_usage_by_parent(%struct.gx_device_pdf_s*, i64, i64) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_font_descriptor_FontType(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 2
  %1 = load i32, i32* %FontType, align 4, !tbaa !69
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %embed = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 3
  %1 = load i32, i32* %embed, align 4, !tbaa !70
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @pdf_font_descriptor_is_subset(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %call = call i32 @pdf_base_font_is_subset(%struct.pdf_base_font_s* %1) #6
  ret i32 %call
}

declare i32 @pdf_base_font_is_subset(%struct.pdf_base_font_s*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_string_s* @pdf_font_descriptor_name(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 0
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 8
  %FontName = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values, i32 0, i32 6
  ret %struct.gs_string_s* %FontName
}

; Function Attrs: nounwind uwtable
define i8* @pdf_fontfile_hash(i8* %pfd) #1 {
entry:
  %retval = alloca i8*, align 8
  %pfd.addr = alloca i8*, align 8
  %fd = alloca %struct.pdf_font_descriptor_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pfd, i8** %pfd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %fd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pfd.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_font_descriptor_s*
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %fd, align 8, !tbaa !1
  %3 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %fd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %4, i32 0, i32 1
  %5 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %tobool = icmp ne %struct.pdf_base_font_s* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %fd, align 8, !tbaa !1
  %base_font1 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %6, i32 0, i32 1
  %7 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font1, align 8, !tbaa !61
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %7, i32 0, i32 9
  %8 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile, align 8, !tbaa !78
  %tobool2 = icmp ne %struct.cos_dict_s* %8, null
  br i1 %tobool2, label %if.then, label %if.else.7

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %fd, align 8, !tbaa !1
  %base_font3 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %9, i32 0, i32 1
  %10 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font3, align 8, !tbaa !61
  %FontFile4 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %10, i32 0, i32 9
  %11 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile4, align 8, !tbaa !78
  store %struct.cos_dict_s* %11, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %12 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %stream_md5_valid = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %12, i32 0, i32 14
  %13 = load i32, i32* %stream_md5_valid, align 4, !tbaa !82
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %stream_hash = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %14, i32 0, i32 15
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %stream_hash, i32 0, i32 0
  store i8* %arraydecay, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.7:                                        ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.7, %if.else, %if.then.6
  %15 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.pdf_font_descriptor_s** %fd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_base_s* @pdf_font_descriptor_font(%struct.pdf_font_descriptor_s* %pfd, i32 %complete) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %complete.addr = alloca i32, align 4
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  store i32 %complete, i32* %complete.addr, align 4, !tbaa !5
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %2 = load i32, i32* %complete.addr, align 4, !tbaa !5
  %call = call %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s* %1, i32 %2) #6
  ret %struct.gs_font_base_s* %call
}

declare %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s*, i32) #0

; Function Attrs: nounwind uwtable
define void @pdf_font_descriptor_drop_complete_font(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  call void @pdf_base_font_drop_complete(%struct.pdf_base_font_s* %1) #6
  ret void
}

declare void @pdf_base_font_drop_complete(%struct.pdf_base_font_s*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_string_s* @pdf_font_descriptor_base_name(%struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %call = call %struct.gs_string_s* @pdf_base_font_name(%struct.pdf_base_font_s* %1) #6
  ret %struct.gs_string_s* %call
}

declare %struct.gs_string_s* @pdf_base_font_name(%struct.pdf_base_font_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_font_used_glyph(%struct.pdf_font_descriptor_s* %pfd, i64 %glyph, %struct.gs_font_base_s* %font) #1 {
entry:
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %glyph.addr = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !83
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %0, i32 0, i32 1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !83
  %3 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_base_font_copy_glyph(%struct.pdf_base_font_s* %1, i64 %2, %struct.gs_font_base_s* %3) #6
  ret i32 %call
}

declare i32 @pdf_base_font_copy_glyph(%struct.pdf_base_font_s*, i64, %struct.gs_font_base_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_compute_font_descriptor(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %bfont = alloca %struct.gs_font_base_s*, align 8
  %glyph = alloca i64, align 8
  %notdef = alloca i64, align 8
  %index = alloca i32, align 4
  %wmode = alloca i32, align 4
  %members = alloca i32, align 4
  %desc = alloca %struct.pdf_font_descriptor_values_s, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %fixed_width = alloca i32, align 4
  %small_descent = alloca i32, align 4
  %small_height = alloca i32, align 4
  %small_present = alloca i32, align 4
  %x_height = alloca i32, align 4
  %cap_height = alloca i32, align 4
  %bbox_colon = alloca %struct.gs_rect_s, align 8
  %bbox_period = alloca %struct.gs_rect_s, align 8
  %bbox_I = alloca %struct.gs_rect_s, align 8
  %is_cid = alloca i32, align 4
  %have_colon = alloca i32, align 4
  %have_period = alloca i32, align 4
  %have_I = alloca i32, align 4
  %code = alloca i32, align 4
  %scale = alloca i32, align 4
  %info = alloca %struct.gs_glyph_info_s, align 8
  %gname = alloca %struct.gs_const_string_s, align 8
  %glyph_known_enc = alloca i64, align 8
  %position = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s2 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp297 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %angle = alloca i32, align 4
  %wdot = alloca double, align 8
  %wcolon = alloca double, align 8
  %wI = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %1, i32 0, i32 1
  %2 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %call = call %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s* %2, i32 0) #6
  store %struct.gs_font_base_s* %call, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %3 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 16
  %8 = load i32, i32* %WMode, align 4, !tbaa !84
  store i32 %8, i32* %wmode, align 4, !tbaa !5
  %9 = bitcast i32* %members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 1, %10
  %or = or i32 %shl, 4
  %or1 = or i32 %or, 8
  store i32 %or1, i32* %members, align 4, !tbaa !5
  %11 = bitcast %struct.pdf_font_descriptor_values_s* %desc to i8*
  call void @llvm.lifetime.start(i64 88, i8* %11) #2
  %12 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #2
  %13 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store %struct.gs_matrix_s* null, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %14 = bitcast i32* %fixed_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %fixed_width, align 4, !tbaa !5
  %15 = bitcast i32* %small_descent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %small_descent, align 4, !tbaa !5
  %16 = bitcast i32* %small_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %small_height, align 4, !tbaa !5
  %17 = bitcast i32* %small_present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %small_present, align 4, !tbaa !5
  %18 = bitcast i32* %x_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  store i32 0, i32* %x_height, align 4, !tbaa !5
  %19 = bitcast i32* %cap_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %cap_height, align 4, !tbaa !5
  %20 = bitcast %struct.gs_rect_s* %bbox_colon to i8*
  call void @llvm.lifetime.start(i64 32, i8* %20) #2
  %21 = bitcast %struct.gs_rect_s* %bbox_period to i8*
  call void @llvm.lifetime.start(i64 32, i8* %21) #2
  %22 = bitcast %struct.gs_rect_s* %bbox_I to i8*
  call void @llvm.lifetime.start(i64 32, i8* %22) #2
  %23 = bitcast i32* %is_cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 11
  %25 = load i32, i32* %FontType, align 4, !tbaa !68
  %cmp = icmp eq i32 %25, 9
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 11
  %27 = load i32, i32* %FontType2, align 4, !tbaa !68
  %cmp3 = icmp eq i32 %27, 11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %28 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  store i32 %lor.ext, i32* %is_cid, align 4, !tbaa !5
  %29 = bitcast i32* %have_colon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  store i32 0, i32* %have_colon, align 4, !tbaa !5
  %30 = bitcast i32* %have_period to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  store i32 0, i32* %have_period, align 4, !tbaa !5
  %31 = bitcast i32* %have_I to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  store i32 0, i32* %have_I, align 4, !tbaa !5
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast %struct.gs_rect_s* %bbox_colon to i8*
  %call4 = call i8* @memset(i8* %33, i32 0, i64 32) #7
  %34 = bitcast %struct.gs_rect_s* %bbox_period to i8*
  %call5 = call i8* @memset(i8* %34, i32 0, i64 32) #7
  %35 = bitcast %struct.gs_rect_s* %bbox_I to i8*
  %call6 = call i8* @memset(i8* %35, i32 0, i64 32) #7
  %36 = bitcast %struct.pdf_font_descriptor_values_s* %desc to i8*
  %call7 = call i8* @memset(i8* %36, i32 0, i64 88) #7
  %37 = load i32, i32* %is_cid, align 4, !tbaa !5
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %38 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %38, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %39 = load double, double* %x, align 8, !tbaa !85
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox8 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %40, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox8, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %41 = load double, double* %x9, align 8, !tbaa !86
  %cmp10 = fcmp une double %39, %41
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox12 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %42, i32 0, i32 23
  %p13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox12, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p13, i32 0, i32 1
  %43 = load double, double* %y, align 8, !tbaa !87
  %44 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox14 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %44, i32 0, i32 23
  %q15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox14, i32 0, i32 1
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q15, i32 0, i32 1
  %45 = load double, double* %y16, align 8, !tbaa !88
  %cmp17 = fcmp une double %43, %45
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  %46 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType18 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %47, i32 0, i32 11
  %48 = load i32, i32* %FontType18, align 4, !tbaa !68
  %cmp19 = icmp eq i32 %48, 42
  br i1 %cmp19, label %lor.end.23, label %lor.rhs.20

lor.rhs.20:                                       ; preds = %if.then
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType21 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %49, i32 0, i32 11
  %50 = load i32, i32* %FontType21, align 4, !tbaa !68
  %cmp22 = icmp eq i32 %50, 11
  br label %lor.end.23

lor.end.23:                                       ; preds = %lor.rhs.20, %if.then
  %51 = phi i1 [ true, %if.then ], [ %cmp22, %lor.rhs.20 ]
  %cond = select i1 %51, i32 1000, i32 1
  store i32 %cond, i32* %scale, align 4, !tbaa !5
  %52 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox25 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %52, i32 0, i32 23
  %p26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox25, i32 0, i32 0
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p26, i32 0, i32 0
  %53 = load double, double* %x27, align 8, !tbaa !85
  %54 = load i32, i32* %scale, align 4, !tbaa !5
  %conv = sitofp i32 %54 to double
  %mul = fmul double %53, %conv
  %conv28 = fptosi double %mul to i32
  %FontBBox29 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p30 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox29, i32 0, i32 0
  %x31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p30, i32 0, i32 0
  store i32 %conv28, i32* %x31, align 4, !tbaa !89
  %55 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox32 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %55, i32 0, i32 23
  %p33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox32, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p33, i32 0, i32 1
  %56 = load double, double* %y34, align 8, !tbaa !87
  %57 = load i32, i32* %scale, align 4, !tbaa !5
  %conv35 = sitofp i32 %57 to double
  %mul36 = fmul double %56, %conv35
  %conv37 = fptosi double %mul36 to i32
  %FontBBox38 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p39 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox38, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p39, i32 0, i32 1
  store i32 %conv37, i32* %y40, align 4, !tbaa !90
  %58 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox41 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %58, i32 0, i32 23
  %q42 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox41, i32 0, i32 1
  %x43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q42, i32 0, i32 0
  %59 = load double, double* %x43, align 8, !tbaa !86
  %60 = load i32, i32* %scale, align 4, !tbaa !5
  %conv44 = sitofp i32 %60 to double
  %mul45 = fmul double %59, %conv44
  %conv46 = fptosi double %mul45 to i32
  %FontBBox47 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q48 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox47, i32 0, i32 1
  %x49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q48, i32 0, i32 0
  store i32 %conv46, i32* %x49, align 4, !tbaa !91
  %61 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontBBox50 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %61, i32 0, i32 23
  %q51 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox50, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q51, i32 0, i32 1
  %62 = load double, double* %y52, align 8, !tbaa !88
  %63 = load i32, i32* %scale, align 4, !tbaa !5
  %conv53 = sitofp i32 %63 to double
  %mul54 = fmul double %62, %conv53
  %conv55 = fptosi double %mul54 to i32
  %FontBBox56 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q57 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox56, i32 0, i32 1
  %y58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q57, i32 0, i32 1
  store i32 %conv55, i32* %y58, align 4, !tbaa !92
  %FontBBox59 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox59, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q60, i32 0, i32 1
  %64 = load i32, i32* %y61, align 4, !tbaa !92
  %Ascent = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  store i32 %64, i32* %Ascent, align 4, !tbaa !93
  %65 = load i32, i32* %members, align 4, !tbaa !5
  %and = and i32 %65, -5
  store i32 %and, i32* %members, align 4, !tbaa !5
  %66 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true, %lor.end
  %FontBBox62 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p63 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox62, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p63, i32 0, i32 1
  store i32 2147483647, i32* %y64, align 4, !tbaa !90
  %FontBBox65 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p66 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox65, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p66, i32 0, i32 0
  store i32 2147483647, i32* %x67, align 4, !tbaa !89
  %FontBBox68 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox68, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q69, i32 0, i32 1
  store i32 -2147483648, i32* %y70, align 4, !tbaa !92
  %FontBBox71 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q72 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox71, i32 0, i32 1
  %x73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q72, i32 0, i32 0
  store i32 -2147483648, i32* %x73, align 4, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end.23
  %67 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType74 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %67, i32 0, i32 11
  %68 = load i32, i32* %FontType74, align 4, !tbaa !68
  switch i32 %68, label %sw.default [
    i32 42, label %sw.bb
    i32 11, label %sw.bb
    i32 54, label %sw.bb.76
    i32 53, label %sw.bb.76
    i32 52, label %sw.bb.76
    i32 51, label %sw.bb.76
    i32 3, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call75 = call i32 @gs_make_scaling(double 1.000000e+03, double 1.000000e+03, %struct.gs_matrix_s* %smat) #6
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %sw.bb.76

sw.bb.76:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %69 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %69, i32 0, i32 9
  %call77 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %FontMatrix, double 1.000000e+03, double 1.000000e+03, %struct.gs_matrix_s* %smat) #6
  store %struct.gs_matrix_s* %smat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.76
  store i64 2147483647, i64* %notdef, align 8, !tbaa !83
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %sw.epilog
  %70 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %70, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %71 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !94
  %72 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %73 = bitcast %struct.gs_font_base_s* %72 to %struct.gs_font_s*
  %74 = load i32, i32* %is_cid, align 4, !tbaa !5
  %tobool78 = icmp ne i32 %74, 0
  %cond79 = select i1 %tobool78, i32 1, i32 0
  %call80 = call i32 %71(%struct.gs_font_s* %73, i32* %index, i32 %cond79, i64* %glyph) #6
  %cmp81 = icmp sge i32 %call80, 0
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %75 = load i32, i32* %index, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %76 = phi i1 [ false, %for.cond ], [ %cmp83, %land.rhs ]
  br i1 %76, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %77 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %77) #2
  %78 = bitcast %struct.gs_const_string_s* %gname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %78) #2
  %79 = bitcast i64* %glyph_known_enc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #2
  %80 = bitcast i64* %position to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #2
  store i64 0, i64* %position, align 8, !tbaa !83
  %81 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %81, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs85, i32 0, i32 7
  %82 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !95
  %83 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %84 = bitcast %struct.gs_font_base_s* %83 to %struct.gs_font_s*
  %85 = load i64, i64* %glyph, align 8, !tbaa !83
  %86 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %87 = load i32, i32* %members, align 4, !tbaa !5
  %call86 = call i32 %82(%struct.gs_font_s* %84, i64 %85, %struct.gs_matrix_s* %86, i32 %87, %struct.gs_glyph_info_s* %info) #6
  store i32 %call86, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %88, -25
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body
  %89 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %for.body
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.90
  %91 = load i32, i32* %members, align 4, !tbaa !5
  %and95 = and i32 %91, 4
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.186

if.then.97:                                       ; preds = %if.end.94
  %bbox = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p98 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p98, i32 0, i32 0
  %92 = load double, double* %x99, align 8, !tbaa !96
  %FontBBox100 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p101 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox100, i32 0, i32 0
  %x102 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p101, i32 0, i32 0
  %93 = load i32, i32* %x102, align 4, !tbaa !89
  %conv103 = sitofp i32 %93 to double
  %cmp104 = fcmp olt double %92, %conv103
  br i1 %cmp104, label %if.then.106, label %if.end.114

if.then.106:                                      ; preds = %if.then.97
  %bbox107 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p108 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox107, i32 0, i32 0
  %x109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p108, i32 0, i32 0
  %94 = load double, double* %x109, align 8, !tbaa !96
  %conv110 = fptosi double %94 to i32
  %FontBBox111 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p112 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox111, i32 0, i32 0
  %x113 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p112, i32 0, i32 0
  store i32 %conv110, i32* %x113, align 4, !tbaa !89
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.106, %if.then.97
  %bbox115 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q116 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox115, i32 0, i32 1
  %x117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q116, i32 0, i32 0
  %95 = load double, double* %x117, align 8, !tbaa !98
  %FontBBox118 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox118, i32 0, i32 1
  %x120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q119, i32 0, i32 0
  %96 = load i32, i32* %x120, align 4, !tbaa !91
  %conv121 = sitofp i32 %96 to double
  %cmp122 = fcmp ogt double %95, %conv121
  br i1 %cmp122, label %if.then.124, label %if.end.132

if.then.124:                                      ; preds = %if.end.114
  %bbox125 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q126 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox125, i32 0, i32 1
  %x127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q126, i32 0, i32 0
  %97 = load double, double* %x127, align 8, !tbaa !98
  %conv128 = fptosi double %97 to i32
  %FontBBox129 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q130 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox129, i32 0, i32 1
  %x131 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q130, i32 0, i32 0
  store i32 %conv128, i32* %x131, align 4, !tbaa !91
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.124, %if.end.114
  %bbox133 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p134 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox133, i32 0, i32 0
  %y135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p134, i32 0, i32 1
  %98 = load double, double* %y135, align 8, !tbaa !99
  %FontBBox136 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p137 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox136, i32 0, i32 0
  %y138 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p137, i32 0, i32 1
  %99 = load i32, i32* %y138, align 4, !tbaa !90
  %conv139 = sitofp i32 %99 to double
  %cmp140 = fcmp olt double %98, %conv139
  br i1 %cmp140, label %if.then.142, label %if.end.150

if.then.142:                                      ; preds = %if.end.132
  %bbox143 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p144 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox143, i32 0, i32 0
  %y145 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p144, i32 0, i32 1
  %100 = load double, double* %y145, align 8, !tbaa !99
  %conv146 = fptosi double %100 to i32
  %FontBBox147 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p148 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox147, i32 0, i32 0
  %y149 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p148, i32 0, i32 1
  store i32 %conv146, i32* %y149, align 4, !tbaa !90
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.142, %if.end.132
  %bbox151 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q152 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox151, i32 0, i32 1
  %y153 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q152, i32 0, i32 1
  %101 = load double, double* %y153, align 8, !tbaa !100
  %FontBBox154 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q155 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox154, i32 0, i32 1
  %y156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q155, i32 0, i32 1
  %102 = load i32, i32* %y156, align 4, !tbaa !92
  %conv157 = sitofp i32 %102 to double
  %cmp158 = fcmp ogt double %101, %conv157
  br i1 %cmp158, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %if.end.150
  %bbox161 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q162 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox161, i32 0, i32 1
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q162, i32 0, i32 1
  %103 = load double, double* %y163, align 8, !tbaa !100
  %conv164 = fptosi double %103 to i32
  %FontBBox165 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q166 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox165, i32 0, i32 1
  %y167 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q166, i32 0, i32 1
  store i32 %conv164, i32* %y167, align 4, !tbaa !92
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.160, %if.end.150
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 4
  %104 = load i32, i32* %num_pieces, align 4, !tbaa !101
  %tobool169 = icmp ne i32 %104, 0
  br i1 %tobool169, label %if.end.185, label %if.then.170

if.then.170:                                      ; preds = %if.end.168
  %Ascent171 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  %105 = load i32, i32* %Ascent171, align 4, !tbaa !93
  %bbox172 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q173 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox172, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q173, i32 0, i32 1
  %106 = load double, double* %y174, align 8, !tbaa !100
  %conv175 = fptosi double %106 to i32
  %cmp176 = icmp sgt i32 %105, %conv175
  br i1 %cmp176, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.170
  %Ascent178 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  %107 = load i32, i32* %Ascent178, align 4, !tbaa !93
  br label %cond.end

cond.false:                                       ; preds = %if.then.170
  %bbox179 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q180 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox179, i32 0, i32 1
  %y181 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q180, i32 0, i32 1
  %108 = load double, double* %y181, align 8, !tbaa !100
  %conv182 = fptosi double %108 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond183 = phi i32 [ %107, %cond.true ], [ %conv182, %cond.false ]
  %Ascent184 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  store i32 %cond183, i32* %Ascent184, align 4, !tbaa !93
  br label %if.end.185

if.end.185:                                       ; preds = %cond.end, %if.end.168
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.94
  %109 = load i64, i64* %notdef, align 8, !tbaa !83
  %cmp187 = icmp eq i64 %109, 2147483647
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.195

land.lhs.true.189:                                ; preds = %if.end.186
  %110 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %111 = load i64, i64* %glyph, align 8, !tbaa !83
  %call190 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %110, i64 %111) #6
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %land.lhs.true.189
  %112 = load i64, i64* %glyph, align 8, !tbaa !83
  store i64 %112, i64* %notdef, align 8, !tbaa !83
  %113 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom = sext i32 %113 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %114 = load double, double* %x193, align 8, !tbaa !102
  %conv194 = fptosi double %114 to i32
  %MissingWidth = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 11
  store i32 %conv194, i32* %MissingWidth, align 4, !tbaa !103
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.192, %land.lhs.true.189, %if.end.186
  %115 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom196 = sext i32 %115 to i64
  %width197 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width197, i32 0, i64 %idxprom196
  %y199 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx198, i32 0, i32 1
  %116 = load double, double* %y199, align 8, !tbaa !104
  %cmp200 = fcmp une double %116, 0.000000e+00
  br i1 %cmp200, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %if.end.195
  store i32 -2147483648, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.223

if.else.203:                                      ; preds = %if.end.195
  %117 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %cmp204 = icmp eq i32 %117, 0
  br i1 %cmp204, label %if.then.206, label %if.else.212

if.then.206:                                      ; preds = %if.else.203
  %118 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom207 = sext i32 %118 to i64
  %width208 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width208, i32 0, i64 %idxprom207
  %x210 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx209, i32 0, i32 0
  %119 = load double, double* %x210, align 8, !tbaa !102
  %conv211 = fptosi double %119 to i32
  store i32 %conv211, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.222

if.else.212:                                      ; preds = %if.else.203
  %120 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom213 = sext i32 %120 to i64
  %width214 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width214, i32 0, i64 %idxprom213
  %x216 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx215, i32 0, i32 0
  %121 = load double, double* %x216, align 8, !tbaa !102
  %122 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %conv217 = sitofp i32 %122 to double
  %cmp218 = fcmp une double %121, %conv217
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.else.212
  store i32 -2147483648, i32* %fixed_width, align 4, !tbaa !5
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.else.212
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.206
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.202
  %Flags = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %123 = load i32, i32* %Flags, align 4, !tbaa !105
  %and224 = and i32 %123, 4
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.227:                                       ; preds = %if.end.223
  %124 = load i32, i32* %is_cid, align 4, !tbaa !5
  %tobool228 = icmp ne i32 %124, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.227
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.230:                                       ; preds = %if.end.227
  %125 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %procs231 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %125, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs231, i32 0, i32 9
  %126 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !106
  %127 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %128 = bitcast %struct.gs_font_base_s* %127 to %struct.gs_font_s*
  %129 = load i64, i64* %glyph, align 8, !tbaa !83
  %call232 = call i32 %126(%struct.gs_font_s* %128, i64 %129, %struct.gs_const_string_s* %gname) #6
  store i32 %call232, i32* %code, align 4, !tbaa !5
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp233 = icmp slt i32 %130, 0
  br i1 %cmp233, label %if.then.235, label %if.end.238

if.then.235:                                      ; preds = %if.end.230
  %Flags236 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %131 = load i32, i32* %Flags236, align 4, !tbaa !105
  %or237 = or i32 %131, 4
  store i32 %or237, i32* %Flags236, align 4, !tbaa !105
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.238:                                       ; preds = %if.end.230
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %132 = load i8*, i8** %data, align 8, !tbaa !107
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 1
  %133 = load i32, i32* %size, align 4, !tbaa !108
  %call239 = call i64 @gs_c_name_glyph(i8* %132, i32 %133) #6
  store i64 %call239, i64* %glyph_known_enc, align 8, !tbaa !83
  %134 = load i64, i64* %glyph_known_enc, align 8, !tbaa !83
  %cmp240 = icmp eq i64 %134, 2147483647
  br i1 %cmp240, label %if.then.242, label %if.end.245

if.then.242:                                      ; preds = %if.end.238
  %Flags243 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %135 = load i32, i32* %Flags243, align 4, !tbaa !105
  %or244 = or i32 %135, 4
  store i32 %or244, i32* %Flags243, align 4, !tbaa !105
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.245:                                       ; preds = %if.end.238
  br i1 false, label %land.lhs.true.246, label %cond.false.304

land.lhs.true.246:                                ; preds = %if.end.245
  %call247 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #8
  %size248 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 1
  %136 = load i32, i32* %size248, align 4, !tbaa !108
  %conv249 = zext i32 %136 to i64
  %cmp250 = icmp ult i64 %call247, %conv249
  br i1 %cmp250, label %cond.true.252, label %cond.false.304

cond.true.252:                                    ; preds = %land.lhs.true.246
  %137 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #2
  %138 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.253, label %cond.false.298

land.lhs.true.253:                                ; preds = %cond.true.252
  %call254 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #8
  store i64 %call254, i64* %__s1_len, align 8, !tbaa !83
  %139 = load i64, i64* %__s1_len, align 8, !tbaa !83
  %cmp255 = icmp ult i64 %139, 4
  br i1 %cmp255, label %cond.true.257, label %cond.false.298

cond.true.257:                                    ; preds = %land.lhs.true.253
  %140 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #2
  %data259 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %141 = load i8*, i8** %data259, align 8, !tbaa !107
  store i8* %141, i8** %__s2, align 8, !tbaa !1
  %142 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  %143 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !109
  %conv261 = zext i8 %143 to i32
  %144 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %144, i64 0
  %145 = load i8, i8* %arrayidx262, align 1, !tbaa !109
  %conv263 = zext i8 %145 to i32
  %sub = sub nsw i32 %conv261, %conv263
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %146 = load i64, i64* %__s1_len, align 8, !tbaa !83
  %cmp264 = icmp ugt i64 %146, 0
  br i1 %cmp264, label %land.lhs.true.266, label %if.end.296

land.lhs.true.266:                                ; preds = %cond.true.257
  %147 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp267 = icmp eq i32 %147, 0
  br i1 %cmp267, label %if.then.269, label %if.end.296

if.then.269:                                      ; preds = %land.lhs.true.266
  %148 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i64 1), align 1, !tbaa !109
  %conv270 = zext i8 %148 to i32
  %149 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load i8, i8* %arrayidx271, align 1, !tbaa !109
  %conv272 = zext i8 %150 to i32
  %sub273 = sub nsw i32 %conv270, %conv272
  store i32 %sub273, i32* %__result, align 4, !tbaa !5
  %151 = load i64, i64* %__s1_len, align 8, !tbaa !83
  %cmp274 = icmp ugt i64 %151, 1
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.295

land.lhs.true.276:                                ; preds = %if.then.269
  %152 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp277 = icmp eq i32 %152, 0
  br i1 %cmp277, label %if.then.279, label %if.end.295

if.then.279:                                      ; preds = %land.lhs.true.276
  %153 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i64 2), align 1, !tbaa !109
  %conv280 = zext i8 %153 to i32
  %154 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %154, i64 2
  %155 = load i8, i8* %arrayidx281, align 1, !tbaa !109
  %conv282 = zext i8 %155 to i32
  %sub283 = sub nsw i32 %conv280, %conv282
  store i32 %sub283, i32* %__result, align 4, !tbaa !5
  %156 = load i64, i64* %__s1_len, align 8, !tbaa !83
  %cmp284 = icmp ugt i64 %156, 2
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.294

land.lhs.true.286:                                ; preds = %if.then.279
  %157 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp287 = icmp eq i32 %157, 0
  br i1 %cmp287, label %if.then.289, label %if.end.294

if.then.289:                                      ; preds = %land.lhs.true.286
  %158 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i64 3), align 1, !tbaa !109
  %conv290 = zext i8 %158 to i32
  %159 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %159, i64 3
  %160 = load i8, i8* %arrayidx291, align 1, !tbaa !109
  %conv292 = zext i8 %160 to i32
  %sub293 = sub nsw i32 %conv290, %conv292
  store i32 %sub293, i32* %__result, align 4, !tbaa !5
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.289, %land.lhs.true.286, %if.then.279
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %land.lhs.true.276, %if.then.269
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %land.lhs.true.266, %cond.true.257
  %161 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %161, i32* %tmp297, !tbaa !5
  %162 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = load i32, i32* %tmp297, !tbaa !5
  br label %cond.end.301

cond.false.298:                                   ; preds = %land.lhs.true.253, %cond.true.252
  %data299 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %165 = load i8*, i8** %data299, align 8, !tbaa !107
  %call300 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %165) #7
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.298, %if.end.296
  %cond302 = phi i32 [ %164, %if.end.296 ], [ %call300, %cond.false.298 ]
  store i32 %cond302, i32* %tmp, !tbaa !5
  %166 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = load i32, i32* %tmp, !tbaa !5
  %tobool303 = icmp ne i32 %168, 0
  br i1 %tobool303, label %if.then.310, label %if.end.318

cond.false.304:                                   ; preds = %land.lhs.true.246, %if.end.245
  %data305 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %169 = load i8*, i8** %data305, align 8, !tbaa !107
  %size306 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 1
  %170 = load i32, i32* %size306, align 4, !tbaa !108
  %conv307 = zext i32 %170 to i64
  %call308 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %169, i64 %conv307) #8
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.then.310, label %if.end.318

if.then.310:                                      ; preds = %cond.false.304, %cond.end.301
  %171 = load i64, i64* %glyph_known_enc, align 8, !tbaa !83
  %call311 = call i64 @gs_c_decode(i64 %171, i32 0) #6
  store i64 %call311, i64* %position, align 8, !tbaa !83
  %172 = load i64, i64* %position, align 8, !tbaa !83
  %cmp312 = icmp eq i64 %172, -1
  br i1 %cmp312, label %if.then.314, label %if.end.317

if.then.314:                                      ; preds = %if.then.310
  %Flags315 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %173 = load i32, i32* %Flags315, align 4, !tbaa !105
  %or316 = or i32 %173, 4
  store i32 %or316, i32* %Flags315, align 4, !tbaa !105
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.317:                                       ; preds = %if.then.310
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %cond.false.304, %cond.end.301
  %size319 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 1
  %174 = load i32, i32* %size319, align 4, !tbaa !108
  switch i32 %174, label %sw.default.334 [
    i32 5, label %sw.bb.320
    i32 6, label %sw.bb.327
    i32 1, label %sw.epilog.335
  ]

sw.bb.320:                                        ; preds = %if.end.318
  %data321 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %175 = load i8*, i8** %data321, align 8, !tbaa !107
  %call322 = call i32 @memcmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 5) #8
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.end.326, label %if.then.324

if.then.324:                                      ; preds = %sw.bb.320
  %bbox325 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %176 = bitcast %struct.gs_rect_s* %bbox_colon to i8*
  %177 = bitcast %struct.gs_rect_s* %bbox325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 32, i32 8, i1 false), !tbaa.struct !110
  store i32 1, i32* %have_colon, align 4, !tbaa !5
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.324, %sw.bb.320
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.327:                                        ; preds = %if.end.318
  %data328 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %178 = load i8*, i8** %data328, align 8, !tbaa !107
  %call329 = call i32 @memcmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 6) #8
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.end.333, label %if.then.331

if.then.331:                                      ; preds = %sw.bb.327
  %bbox332 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %179 = bitcast %struct.gs_rect_s* %bbox_period to i8*
  %180 = bitcast %struct.gs_rect_s* %bbox332 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 32, i32 8, i1 false), !tbaa.struct !110
  store i32 1, i32* %have_period, align 4, !tbaa !5
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %sw.bb.327
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.334:                                   ; preds = %if.end.318
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.335:                                    ; preds = %if.end.318
  %data336 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %181 = load i8*, i8** %data336, align 8, !tbaa !107
  %arrayidx337 = getelementptr inbounds i8, i8* %181, i64 0
  %182 = load i8, i8* %arrayidx337, align 1, !tbaa !109
  %conv338 = zext i8 %182 to i32
  %cmp339 = icmp sge i32 %conv338, 65
  br i1 %cmp339, label %land.lhs.true.341, label %if.else.370

land.lhs.true.341:                                ; preds = %sw.epilog.335
  %data342 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %183 = load i8*, i8** %data342, align 8, !tbaa !107
  %arrayidx343 = getelementptr inbounds i8, i8* %183, i64 0
  %184 = load i8, i8* %arrayidx343, align 1, !tbaa !109
  %conv344 = zext i8 %184 to i32
  %cmp345 = icmp sle i32 %conv344, 90
  br i1 %cmp345, label %if.then.347, label %if.else.370

if.then.347:                                      ; preds = %land.lhs.true.341
  %185 = load i32, i32* %cap_height, align 4, !tbaa !5
  %bbox348 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q349 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox348, i32 0, i32 1
  %y350 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q349, i32 0, i32 1
  %186 = load double, double* %y350, align 8, !tbaa !100
  %conv351 = fptosi double %186 to i32
  %cmp352 = icmp sgt i32 %185, %conv351
  br i1 %cmp352, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %if.then.347
  %187 = load i32, i32* %cap_height, align 4, !tbaa !5
  br label %cond.end.360

cond.false.355:                                   ; preds = %if.then.347
  %bbox356 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q357 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox356, i32 0, i32 1
  %y358 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q357, i32 0, i32 1
  %188 = load double, double* %y358, align 8, !tbaa !100
  %conv359 = fptosi double %188 to i32
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.355, %cond.true.354
  %cond361 = phi i32 [ %187, %cond.true.354 ], [ %conv359, %cond.false.355 ]
  store i32 %cond361, i32* %cap_height, align 4, !tbaa !5
  %data362 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %189 = load i8*, i8** %data362, align 8, !tbaa !107
  %arrayidx363 = getelementptr inbounds i8, i8* %189, i64 0
  %190 = load i8, i8* %arrayidx363, align 1, !tbaa !109
  %conv364 = zext i8 %190 to i32
  %cmp365 = icmp eq i32 %conv364, 73
  br i1 %cmp365, label %if.then.367, label %if.end.369

if.then.367:                                      ; preds = %cond.end.360
  %bbox368 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %191 = bitcast %struct.gs_rect_s* %bbox_I to i8*
  %192 = bitcast %struct.gs_rect_s* %bbox368 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* %192, i64 32, i32 8, i1 false), !tbaa.struct !110
  store i32 1, i32* %have_I, align 4, !tbaa !5
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.367, %cond.end.360
  br label %if.end.426

if.else.370:                                      ; preds = %land.lhs.true.341, %sw.epilog.335
  %data371 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %193 = load i8*, i8** %data371, align 8, !tbaa !107
  %arrayidx372 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx372, align 1, !tbaa !109
  %conv373 = zext i8 %194 to i32
  %cmp374 = icmp sge i32 %conv373, 97
  br i1 %cmp374, label %land.lhs.true.376, label %if.end.425

land.lhs.true.376:                                ; preds = %if.else.370
  %data377 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %195 = load i8*, i8** %data377, align 8, !tbaa !107
  %arrayidx378 = getelementptr inbounds i8, i8* %195, i64 0
  %196 = load i8, i8* %arrayidx378, align 1, !tbaa !109
  %conv379 = zext i8 %196 to i32
  %cmp380 = icmp sle i32 %conv379, 122
  br i1 %cmp380, label %if.then.382, label %if.end.425

if.then.382:                                      ; preds = %land.lhs.true.376
  %197 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #2
  %bbox384 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %p385 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox384, i32 0, i32 0
  %y386 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p385, i32 0, i32 1
  %198 = load double, double* %y386, align 8, !tbaa !99
  %conv387 = fptosi double %198 to i32
  store i32 %conv387, i32* %y0, align 4, !tbaa !5
  %199 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #2
  %bbox389 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 3
  %q390 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox389, i32 0, i32 1
  %y391 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q390, i32 0, i32 1
  %200 = load double, double* %y391, align 8, !tbaa !100
  %conv392 = fptosi double %200 to i32
  store i32 %conv392, i32* %y1, align 4, !tbaa !5
  store i32 1, i32* %small_present, align 4, !tbaa !5
  %data393 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gname, i32 0, i32 0
  %201 = load i8*, i8** %data393, align 8, !tbaa !107
  %arrayidx394 = getelementptr inbounds i8, i8* %201, i64 0
  %202 = load i8, i8* %arrayidx394, align 1, !tbaa !109
  %conv395 = zext i8 %202 to i32
  switch i32 %conv395, label %sw.default.417 [
    i32 98, label %sw.bb.396
    i32 100, label %sw.bb.396
    i32 102, label %sw.bb.396
    i32 104, label %sw.bb.396
    i32 107, label %sw.bb.396
    i32 108, label %sw.bb.396
    i32 116, label %sw.bb.396
    i32 105, label %sw.epilog.424
    i32 106, label %sw.bb.403
    i32 103, label %sw.bb.410
    i32 112, label %sw.bb.410
    i32 113, label %sw.bb.410
    i32 121, label %sw.bb.410
  ]

sw.bb.396:                                        ; preds = %if.then.382, %if.then.382, %if.then.382, %if.then.382, %if.then.382, %if.then.382, %if.then.382
  %203 = load i32, i32* %small_height, align 4, !tbaa !5
  %204 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp397 = icmp sgt i32 %203, %204
  br i1 %cmp397, label %cond.true.399, label %cond.false.400

cond.true.399:                                    ; preds = %sw.bb.396
  %205 = load i32, i32* %small_height, align 4, !tbaa !5
  br label %cond.end.401

cond.false.400:                                   ; preds = %sw.bb.396
  %206 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.400, %cond.true.399
  %cond402 = phi i32 [ %205, %cond.true.399 ], [ %206, %cond.false.400 ]
  store i32 %cond402, i32* %small_height, align 4, !tbaa !5
  br label %sw.epilog.424

sw.bb.403:                                        ; preds = %if.then.382
  %207 = load i32, i32* %small_descent, align 4, !tbaa !5
  %208 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp404 = icmp slt i32 %207, %208
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %sw.bb.403
  %209 = load i32, i32* %small_descent, align 4, !tbaa !5
  br label %cond.end.408

cond.false.407:                                   ; preds = %sw.bb.403
  %210 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.407, %cond.true.406
  %cond409 = phi i32 [ %209, %cond.true.406 ], [ %210, %cond.false.407 ]
  store i32 %cond409, i32* %small_descent, align 4, !tbaa !5
  br label %sw.epilog.424

sw.bb.410:                                        ; preds = %if.then.382, %if.then.382, %if.then.382, %if.then.382
  %211 = load i32, i32* %small_descent, align 4, !tbaa !5
  %212 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp411 = icmp slt i32 %211, %212
  br i1 %cmp411, label %cond.true.413, label %cond.false.414

cond.true.413:                                    ; preds = %sw.bb.410
  %213 = load i32, i32* %small_descent, align 4, !tbaa !5
  br label %cond.end.415

cond.false.414:                                   ; preds = %sw.bb.410
  %214 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.414, %cond.true.413
  %cond416 = phi i32 [ %213, %cond.true.413 ], [ %214, %cond.false.414 ]
  store i32 %cond416, i32* %small_descent, align 4, !tbaa !5
  br label %sw.default.417

sw.default.417:                                   ; preds = %if.then.382, %cond.end.415
  %215 = load i32, i32* %x_height, align 4, !tbaa !5
  %216 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp418 = icmp sgt i32 %215, %216
  br i1 %cmp418, label %cond.true.420, label %cond.false.421

cond.true.420:                                    ; preds = %sw.default.417
  %217 = load i32, i32* %x_height, align 4, !tbaa !5
  br label %cond.end.422

cond.false.421:                                   ; preds = %sw.default.417
  %218 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.421, %cond.true.420
  %cond423 = phi i32 [ %217, %cond.true.420 ], [ %218, %cond.false.421 ]
  store i32 %cond423, i32* %x_height, align 4, !tbaa !5
  br label %sw.epilog.424

sw.epilog.424:                                    ; preds = %cond.end.422, %if.then.382, %cond.end.408, %cond.end.401
  %219 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #2
  %220 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  br label %if.end.425

if.end.425:                                       ; preds = %sw.epilog.424, %land.lhs.true.376, %if.else.370
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %if.end.369
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.426, %sw.default.334, %if.end.333, %if.end.326, %if.then.314, %if.then.242, %if.then.235, %if.then.229, %if.then.226, %if.then.93, %if.then.89
  %221 = bitcast i64* %position to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #2
  %222 = bitcast i64* %glyph_known_enc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast %struct.gs_const_string_s* %gname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %223) #2
  %224 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %224) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.627 [
    i32 0, label %cleanup.cont
    i32 4, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %land.end
  %Flags430 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %225 = load i32, i32* %Flags430, align 4, !tbaa !105
  %and431 = and i32 %225, 4
  %tobool432 = icmp ne i32 %and431, 0
  br i1 %tobool432, label %if.end.548, label %if.then.433

if.then.433:                                      ; preds = %for.end
  %Flags434 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %226 = load i32, i32* %Flags434, align 4, !tbaa !105
  %or435 = or i32 %226, 32
  store i32 %or435, i32* %Flags434, align 4, !tbaa !105
  %227 = load i32, i32* %x_height, align 4, !tbaa !5
  %XHeight = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 13
  store i32 %227, i32* %XHeight, align 4, !tbaa !112
  %228 = load i32, i32* %small_present, align 4, !tbaa !5
  %tobool436 = icmp ne i32 %228, 0
  br i1 %tobool436, label %if.end.447, label %land.lhs.true.437

land.lhs.true.437:                                ; preds = %if.then.433
  %229 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %229, i32 0, i32 109
  %230 = load i32, i32* %PDFA, align 4, !tbaa !113
  %tobool438 = icmp ne i32 %230, 0
  %lnot = xor i1 %tobool438, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp439 = icmp ne i32 %lnot.ext, 0
  br i1 %cmp439, label %if.then.444, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.437
  %231 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType441 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %231, i32 0, i32 11
  %232 = load i32, i32* %FontType441, align 4, !tbaa !68
  %cmp442 = icmp ne i32 %232, 42
  br i1 %cmp442, label %if.then.444, label %if.end.447

if.then.444:                                      ; preds = %lor.lhs.false, %land.lhs.true.437
  %Flags445 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %233 = load i32, i32* %Flags445, align 4, !tbaa !105
  %or446 = or i32 %233, 65536
  store i32 %or446, i32* %Flags445, align 4, !tbaa !105
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.444, %lor.lhs.false, %if.then.433
  %234 = load i32, i32* %cap_height, align 4, !tbaa !5
  %CapHeight = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 1
  store i32 %234, i32* %CapHeight, align 4, !tbaa !114
  %235 = load i32, i32* %have_colon, align 4, !tbaa !5
  %tobool448 = icmp ne i32 %235, 0
  br i1 %tobool448, label %land.lhs.true.449, label %if.end.503

land.lhs.true.449:                                ; preds = %if.end.447
  %236 = load i32, i32* %have_period, align 4, !tbaa !5
  %tobool450 = icmp ne i32 %236, 0
  br i1 %tobool450, label %if.then.451, label %if.end.503

if.then.451:                                      ; preds = %land.lhs.true.449
  %237 = bitcast i32* %angle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #2
  %q453 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_colon, i32 0, i32 1
  %y454 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q453, i32 0, i32 1
  %238 = load double, double* %y454, align 8, !tbaa !115
  %p455 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_colon, i32 0, i32 0
  %y456 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p455, i32 0, i32 1
  %239 = load double, double* %y456, align 8, !tbaa !116
  %sub457 = fsub double %238, %239
  %q458 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 1
  %y459 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q458, i32 0, i32 1
  %240 = load double, double* %y459, align 8, !tbaa !115
  %p460 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 0
  %y461 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p460, i32 0, i32 1
  %241 = load double, double* %y461, align 8, !tbaa !116
  %sub462 = fsub double %240, %241
  %sub463 = fsub double %sub457, %sub462
  %q464 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_colon, i32 0, i32 1
  %x465 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q464, i32 0, i32 0
  %242 = load double, double* %x465, align 8, !tbaa !117
  %p466 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_colon, i32 0, i32 0
  %x467 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p466, i32 0, i32 0
  %243 = load double, double* %x467, align 8, !tbaa !118
  %sub468 = fsub double %242, %243
  %q469 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 1
  %x470 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q469, i32 0, i32 0
  %244 = load double, double* %x470, align 8, !tbaa !117
  %p471 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 0
  %x472 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p471, i32 0, i32 0
  %245 = load double, double* %x472, align 8, !tbaa !118
  %sub473 = fsub double %244, %245
  %sub474 = fsub double %sub468, %sub473
  %call475 = call double @atan2(double %sub463, double %sub474) #7
  %mul476 = fmul double %call475, 0x404CA5DC1A63C1F8
  %conv477 = fptosi double %mul476 to i32
  %sub478 = sub nsw i32 %conv477, 90
  store i32 %sub478, i32* %angle, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.451
  %246 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp479 = icmp sgt i32 %246, 90
  br i1 %cmp479, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %247 = load i32, i32* %angle, align 4, !tbaa !5
  %sub481 = sub nsw i32 %247, 180
  store i32 %sub481, i32* %angle, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.482

while.cond.482:                                   ; preds = %while.body.485, %while.end
  %248 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp483 = icmp slt i32 %248, -90
  br i1 %cmp483, label %while.body.485, label %while.end.486

while.body.485:                                   ; preds = %while.cond.482
  %249 = load i32, i32* %angle, align 4, !tbaa !5
  %add = add nsw i32 %249, 180
  store i32 %add, i32* %angle, align 4, !tbaa !5
  br label %while.cond.482

while.end.486:                                    ; preds = %while.cond.482
  %250 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp487 = icmp slt i32 %250, -30
  br i1 %cmp487, label %if.then.489, label %if.else.490

if.then.489:                                      ; preds = %while.end.486
  store i32 -30, i32* %angle, align 4, !tbaa !5
  br label %if.end.495

if.else.490:                                      ; preds = %while.end.486
  %251 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp491 = icmp sgt i32 %251, 30
  br i1 %cmp491, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %if.else.490
  store i32 30, i32* %angle, align 4, !tbaa !5
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.493, %if.else.490
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %if.then.489
  %252 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp496 = icmp sle i32 %252, 2
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.502

land.lhs.true.498:                                ; preds = %if.end.495
  %253 = load i32, i32* %angle, align 4, !tbaa !5
  %cmp499 = icmp sge i32 %253, -2
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %land.lhs.true.498
  store i32 0, i32* %angle, align 4, !tbaa !5
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.501, %land.lhs.true.498, %if.end.495
  %254 = load i32, i32* %angle, align 4, !tbaa !5
  %ItalicAngle = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 3
  store i32 %254, i32* %ItalicAngle, align 4, !tbaa !119
  %255 = bitcast i32* %angle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %land.lhs.true.449, %if.end.447
  %ItalicAngle504 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 3
  %256 = load i32, i32* %ItalicAngle504, align 4, !tbaa !119
  %tobool505 = icmp ne i32 %256, 0
  br i1 %tobool505, label %if.then.506, label %if.end.509

if.then.506:                                      ; preds = %if.end.503
  %Flags507 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %257 = load i32, i32* %Flags507, align 4, !tbaa !105
  %or508 = or i32 %257, 64
  store i32 %or508, i32* %Flags507, align 4, !tbaa !105
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.506, %if.end.503
  %258 = load i32, i32* %have_I, align 4, !tbaa !5
  %tobool510 = icmp ne i32 %258, 0
  br i1 %tobool510, label %if.then.511, label %if.end.547

if.then.511:                                      ; preds = %if.end.509
  %259 = bitcast double* %wdot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #2
  %q513 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 1
  %x514 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q513, i32 0, i32 0
  %260 = load double, double* %x514, align 8, !tbaa !117
  %p515 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 0
  %x516 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p515, i32 0, i32 0
  %261 = load double, double* %x516, align 8, !tbaa !118
  %sub517 = fsub double %260, %261
  store double %sub517, double* %wdot, align 8, !tbaa !111
  %262 = bitcast double* %wcolon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #2
  %q519 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_I, i32 0, i32 1
  %x520 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q519, i32 0, i32 0
  %263 = load double, double* %x520, align 8, !tbaa !117
  %p521 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_I, i32 0, i32 0
  %x522 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p521, i32 0, i32 0
  %264 = load double, double* %x522, align 8, !tbaa !118
  %sub523 = fsub double %263, %264
  store double %sub523, double* %wcolon, align 8, !tbaa !111
  %265 = bitcast double* %wI to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #2
  %q525 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 1
  %x526 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q525, i32 0, i32 0
  %266 = load double, double* %x526, align 8, !tbaa !117
  %p527 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 0
  %x528 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p527, i32 0, i32 0
  %267 = load double, double* %x528, align 8, !tbaa !118
  %sub529 = fsub double %266, %267
  store double %sub529, double* %wI, align 8, !tbaa !111
  %268 = load double, double* %wdot, align 8, !tbaa !111
  %conv530 = fptosi double %268 to i32
  %StemV = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 4
  store i32 %conv530, i32* %StemV, align 4, !tbaa !120
  %269 = load double, double* %wI, align 8, !tbaa !111
  %270 = load double, double* %wcolon, align 8, !tbaa !111
  %mul531 = fmul double %270, 2.500000e+00
  %cmp532 = fcmp ogt double %269, %mul531
  br i1 %cmp532, label %if.then.543, label %lor.lhs.false.534

lor.lhs.false.534:                                ; preds = %if.then.511
  %271 = load double, double* %wI, align 8, !tbaa !111
  %q535 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 1
  %y536 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q535, i32 0, i32 1
  %272 = load double, double* %y536, align 8, !tbaa !115
  %p537 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_period, i32 0, i32 0
  %y538 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p537, i32 0, i32 1
  %273 = load double, double* %y538, align 8, !tbaa !116
  %sub539 = fsub double %272, %273
  %mul540 = fmul double %sub539, 2.500000e-01
  %cmp541 = fcmp ogt double %271, %mul540
  br i1 %cmp541, label %if.then.543, label %if.end.546

if.then.543:                                      ; preds = %lor.lhs.false.534, %if.then.511
  %Flags544 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %274 = load i32, i32* %Flags544, align 4, !tbaa !105
  %or545 = or i32 %274, 2
  store i32 %or545, i32* %Flags544, align 4, !tbaa !105
  br label %if.end.546

if.end.546:                                       ; preds = %if.then.543, %lor.lhs.false.534
  %275 = bitcast double* %wI to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast double* %wcolon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  %277 = bitcast double* %wdot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.end.509
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %for.end
  %Ascent549 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  %278 = load i32, i32* %Ascent549, align 4, !tbaa !93
  %cmp550 = icmp eq i32 %278, 0
  br i1 %cmp550, label %if.then.552, label %if.end.557

if.then.552:                                      ; preds = %if.end.548
  %FontBBox553 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q554 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox553, i32 0, i32 1
  %y555 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q554, i32 0, i32 1
  %279 = load i32, i32* %y555, align 4, !tbaa !92
  %Ascent556 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  store i32 %279, i32* %Ascent556, align 4, !tbaa !93
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.552, %if.end.548
  %FontBBox558 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %p559 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox558, i32 0, i32 0
  %y560 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p559, i32 0, i32 1
  %280 = load i32, i32* %y560, align 4, !tbaa !90
  %Descent = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 2
  store i32 %280, i32* %Descent, align 4, !tbaa !121
  %Flags561 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %281 = load i32, i32* %Flags561, align 4, !tbaa !105
  %and562 = and i32 %281, 65540
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %if.end.589, label %land.lhs.true.564

land.lhs.true.564:                                ; preds = %if.end.557
  %282 = load i32, i32* %small_descent, align 4, !tbaa !5
  %Descent565 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 2
  %283 = load i32, i32* %Descent565, align 4, !tbaa !121
  %div = sdiv i32 %283, 3
  %cmp566 = icmp sgt i32 %282, %div
  br i1 %cmp566, label %land.lhs.true.575, label %lor.lhs.false.568

lor.lhs.false.568:                                ; preds = %land.lhs.true.564
  %XHeight569 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 13
  %284 = load i32, i32* %XHeight569, align 4, !tbaa !112
  %conv570 = sitofp i32 %284 to double
  %285 = load i32, i32* %small_height, align 4, !tbaa !5
  %conv571 = sitofp i32 %285 to double
  %mul572 = fmul double %conv571, 9.000000e-01
  %cmp573 = fcmp ogt double %conv570, %mul572
  br i1 %cmp573, label %land.lhs.true.575, label %if.end.589

land.lhs.true.575:                                ; preds = %lor.lhs.false.568, %land.lhs.true.564
  %286 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA576 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %286, i32 0, i32 109
  %287 = load i32, i32* %PDFA576, align 4, !tbaa !113
  %tobool577 = icmp ne i32 %287, 0
  %lnot578 = xor i1 %tobool577, true
  %lnot.ext579 = zext i1 %lnot578 to i32
  %cmp580 = icmp ne i32 %lnot.ext579, 0
  br i1 %cmp580, label %if.then.586, label %lor.lhs.false.582

lor.lhs.false.582:                                ; preds = %land.lhs.true.575
  %288 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType583 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %288, i32 0, i32 11
  %289 = load i32, i32* %FontType583, align 4, !tbaa !68
  %cmp584 = icmp ne i32 %289, 42
  br i1 %cmp584, label %if.then.586, label %if.end.589

if.then.586:                                      ; preds = %lor.lhs.false.582, %land.lhs.true.575
  %Flags587 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %290 = load i32, i32* %Flags587, align 4, !tbaa !105
  %or588 = or i32 %290, 131072
  store i32 %or588, i32* %Flags587, align 4, !tbaa !105
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.586, %lor.lhs.false.582, %lor.lhs.false.568, %if.end.557
  %291 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %cmp590 = icmp sgt i32 %291, 0
  br i1 %cmp590, label %land.lhs.true.592, label %if.end.607

land.lhs.true.592:                                ; preds = %if.end.589
  %292 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA593 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %292, i32 0, i32 109
  %293 = load i32, i32* %PDFA593, align 4, !tbaa !113
  %tobool594 = icmp ne i32 %293, 0
  %lnot595 = xor i1 %tobool594, true
  %lnot.ext596 = zext i1 %lnot595 to i32
  %cmp597 = icmp ne i32 %lnot.ext596, 0
  br i1 %cmp597, label %if.then.603, label %lor.lhs.false.599

lor.lhs.false.599:                                ; preds = %land.lhs.true.592
  %294 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont, align 8, !tbaa !1
  %FontType600 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %294, i32 0, i32 11
  %295 = load i32, i32* %FontType600, align 4, !tbaa !68
  %cmp601 = icmp ne i32 %295, 42
  br i1 %cmp601, label %if.then.603, label %if.end.607

if.then.603:                                      ; preds = %lor.lhs.false.599, %land.lhs.true.592
  %Flags604 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 7
  %296 = load i32, i32* %Flags604, align 4, !tbaa !105
  %or605 = or i32 %296, 1
  store i32 %or605, i32* %Flags604, align 4, !tbaa !105
  %297 = load i32, i32* %fixed_width, align 4, !tbaa !5
  %MissingWidth606 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 11
  store i32 %297, i32* %MissingWidth606, align 4, !tbaa !103
  %MaxWidth = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 10
  store i32 %297, i32* %MaxWidth, align 4, !tbaa !122
  %AvgWidth = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 8
  store i32 %297, i32* %AvgWidth, align 4, !tbaa !123
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.603, %lor.lhs.false.599, %if.end.589
  %CapHeight608 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 1
  %298 = load i32, i32* %CapHeight608, align 4, !tbaa !114
  %cmp609 = icmp eq i32 %298, 0
  br i1 %cmp609, label %if.then.611, label %if.end.614

if.then.611:                                      ; preds = %if.end.607
  %Ascent612 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 0
  %299 = load i32, i32* %Ascent612, align 4, !tbaa !93
  %CapHeight613 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 1
  store i32 %299, i32* %CapHeight613, align 4, !tbaa !114
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.611, %if.end.607
  %StemV615 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 4
  %300 = load i32, i32* %StemV615, align 4, !tbaa !120
  %cmp616 = icmp eq i32 %300, 0
  br i1 %cmp616, label %if.then.618, label %if.end.626

if.then.618:                                      ; preds = %if.end.614
  %FontBBox619 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 5
  %q620 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %FontBBox619, i32 0, i32 1
  %x621 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q620, i32 0, i32 0
  %301 = load i32, i32* %x621, align 4, !tbaa !91
  %conv622 = sitofp i32 %301 to double
  %mul623 = fmul double %conv622, 1.500000e-01
  %conv624 = fptosi double %mul623 to i32
  %StemV625 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %desc, i32 0, i32 4
  store i32 %conv624, i32* %StemV625, align 4, !tbaa !120
  br label %if.end.626

if.end.626:                                       ; preds = %if.then.618, %if.end.614
  %302 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %302, i32 0, i32 0
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 8
  %303 = bitcast %struct.pdf_font_descriptor_values_s* %values to i8*
  %304 = bitcast %struct.pdf_font_descriptor_values_s* %desc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %303, i8* %304, i64 88, i32 8, i1 false), !tbaa.struct !124
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.627

cleanup.627:                                      ; preds = %if.end.626, %cleanup
  %305 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %have_I to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %have_period to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %have_colon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %is_cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast %struct.gs_rect_s* %bbox_I to i8*
  call void @llvm.lifetime.end(i64 32, i8* %310) #2
  %311 = bitcast %struct.gs_rect_s* %bbox_period to i8*
  call void @llvm.lifetime.end(i64 32, i8* %311) #2
  %312 = bitcast %struct.gs_rect_s* %bbox_colon to i8*
  call void @llvm.lifetime.end(i64 32, i8* %312) #2
  %313 = bitcast i32* %cap_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #2
  %314 = bitcast i32* %x_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i32* %small_present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %small_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast i32* %small_descent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %fixed_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #2
  %320 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %320) #2
  %321 = bitcast %struct.pdf_font_descriptor_values_s* %desc to i8*
  call void @llvm.lifetime.end(i64 88, i8* %321) #2
  %322 = bitcast i32* %members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #2
  %323 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #2
  %324 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #2
  %325 = bitcast i64* %notdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #2
  %326 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #2
  %327 = bitcast %struct.gs_font_base_s** %bfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #2
  %328 = load i32, i32* %retval
  ret i32 %328
}

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #0

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #0

declare i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s*, i64) #0

declare i64 @gs_c_name_glyph(i8*, i32) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i64 @gs_c_decode(i64, i32) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_finish_FontDescriptor(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %code = alloca i32, align 4
  %pcd = alloca %struct.cos_dict_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_font_descriptor_s*
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %5 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %5, i32 0, i32 0
  %object = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 7
  %6 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !125
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %6, i32 0, i32 1
  %7 = load i64, i64* %id, align 8, !tbaa !126
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common1 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %8, i32 0, i32 0
  %object2 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common1, i32 0, i32 7
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %object2, align 8, !tbaa !125
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 8
  %10 = load i8, i8* %written, align 1, !tbaa !128
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %call = call i32 @pdf_compute_font_descriptor(%struct.gx_device_pdf_s* %11, %struct.pdf_font_descriptor_s* %12) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.12

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %13 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %embed = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %13, i32 0, i32 3
  %14 = load i32, i32* %embed, align 4, !tbaa !70
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %land.lhs.true.4
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %16, i32 0, i32 1
  %17 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %18 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %18, i32 0, i32 2
  %19 = load i32, i32* %FontType, align 4, !tbaa !69
  %20 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common6 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %20, i32 0, i32 0
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common6, i32 0, i32 8
  %FontBBox = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values, i32 0, i32 5
  %21 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common7 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %21, i32 0, i32 0
  %rid = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common7, i32 0, i32 2
  %22 = load i64, i64* %rid, align 8, !tbaa !129
  %call8 = call i32 @pdf_write_embedded_font(%struct.gx_device_pdf_s* %15, %struct.pdf_base_font_s* %17, i32 %19, %struct.gs_int_rect_s* %FontBBox, i64 %22, %struct.cos_dict_s** %pcd) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true.4
  %23 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font11 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %23, i32 0, i32 1
  %24 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font11, align 8, !tbaa !61
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  call void @pdf_set_FontFile_object(%struct.pdf_base_font_s* %24, %struct.cos_dict_s* %25) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %lor.lhs.false, %land.lhs.true, %if.end
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then
  %27 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @pdf_write_embedded_font(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s*, i32, %struct.gs_int_rect_s*, i64, %struct.cos_dict_s**) #0

declare void @pdf_set_FontFile_object(%struct.pdf_base_font_s*, %struct.cos_dict_s*) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_write_FontDescriptor(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %ftype = alloca i32, align 4
  %cidset_id = alloca i64, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fd = alloca %struct.pdf_font_descriptor_common_s, align 8
  %pco = alloca %struct.cos_object_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_font_descriptor_s*
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %3 = bitcast i32* %ftype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %4, i32 0, i32 2
  %5 = load i32, i32* %FontType, align 4, !tbaa !69
  store i32 %5, i32* %ftype, align 4, !tbaa !109
  %6 = bitcast i64* %cidset_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i64 0, i64* %cidset_id, align 8, !tbaa !83
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %8 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %9, i32 0, i32 0
  %object = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 7
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !125
  %written = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %10, i32 0, i32 8
  %11 = load i8, i8* %written, align 1, !tbaa !128
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end:                                           ; preds = %entry
  %12 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common1 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %12, i32 0, i32 0
  %object2 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common1, i32 0, i32 7
  %13 = load %struct.cos_object_s*, %struct.cos_object_s** %object2, align 8, !tbaa !125
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %13, i32 0, i32 1
  %14 = load i64, i64* %id, align 8, !tbaa !126
  %cmp = icmp eq i64 %14, -1
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.4:                                         ; preds = %if.end
  %15 = load i32, i32* %ftype, align 4, !tbaa !109
  switch i32 %15, label %sw.default [
    i32 9, label %sw.bb
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.4, %if.end.4
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %17, i32 0, i32 1
  %18 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %19 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common5 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %19, i32 0, i32 0
  %rid = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common5, i32 0, i32 2
  %20 = load i64, i64* %rid, align 8, !tbaa !129
  %call = call i32 @pdf_do_subset_font(%struct.gx_device_pdf_s* %16, %struct.pdf_base_font_s* %18, i64 %20) #6
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %sw.bb
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 109
  %22 = load i32, i32* %PDFA, align 4, !tbaa !113
  %cmp8 = icmp slt i32 %22, 2
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.then.7
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font10 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %24, i32 0, i32 1
  %25 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font10, align 8, !tbaa !61
  %call11 = call i32 @pdf_write_CIDSet(%struct.gx_device_pdf_s* %23, %struct.pdf_base_font_s* %25, i64* %cidset_id) #6
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %26, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %if.end.4, %if.end.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %28 = bitcast %struct.pdf_font_descriptor_common_s* %fd to i8*
  call void @llvm.lifetime.start(i64 160, i8* %28) #2
  %29 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common17 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %29, i32 0, i32 0
  %30 = bitcast %struct.pdf_font_descriptor_common_s* %fd to i8*
  %31 = bitcast %struct.pdf_font_descriptor_common_s* %common17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 160, i32 8, i1 false), !tbaa.struct !130
  %32 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %embed = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %32, i32 0, i32 3
  %33 = load i32, i32* %embed, align 4, !tbaa !70
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %sw.epilog
  %34 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %FontType19 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %34, i32 0, i32 2
  %35 = load i32, i32* %FontType19, align 4, !tbaa !69
  %cmp20 = icmp eq i32 %35, 42
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %fd, i32 0, i32 8
  %Flags = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values, i32 0, i32 7
  %36 = load i32, i32* %Flags, align 4, !tbaa !131
  %and = and i32 %36, -33
  %or = or i32 %and, 4
  %values22 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %fd, i32 0, i32 8
  %Flags23 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values22, i32 0, i32 7
  store i32 %or, i32* %Flags23, align 4, !tbaa !131
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true, %sw.epilog
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %38 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %embed25 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %38, i32 0, i32 3
  %39 = load i32, i32* %embed25, align 4, !tbaa !70
  %call26 = call i32 @write_FontDescriptor_common(%struct.gx_device_pdf_s* %37, %struct.pdf_font_descriptor_common_s* %fd, i32 %39) #6
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %40 = bitcast %struct.pdf_font_descriptor_common_s* %fd to i8*
  call void @llvm.lifetime.end(i64 160, i8* %40) #2
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %41, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.29:                                        ; preds = %if.end.24
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 47
  %44 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !132
  store %struct.stream_s* %44, %struct.stream_s** %s, align 8, !tbaa !1
  %45 = load i64, i64* %cidset_id, align 8, !tbaa !83
  %cmp30 = icmp ne i64 %45, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.29
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %47 = load i64, i64* %cidset_id, align 8, !tbaa !83
  %call32 = call i8* @pprintld1(%struct.stream_s* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i64 %47) #6
  br label %if.end.49

if.else:                                          ; preds = %if.end.29
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font33 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %49, i32 0, i32 1
  %50 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font33, align 8, !tbaa !61
  %51 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common34 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %51, i32 0, i32 0
  %rid35 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common34, i32 0, i32 2
  %52 = load i64, i64* %rid35, align 8, !tbaa !129
  %call36 = call i32 @pdf_do_subset_font(%struct.gx_device_pdf_s* %48, %struct.pdf_base_font_s* %50, i64 %52) #6
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.48

land.lhs.true.38:                                 ; preds = %if.else
  %53 = load i32, i32* %ftype, align 4, !tbaa !109
  %cmp39 = icmp eq i32 %53, 1
  br i1 %cmp39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.38
  %54 = load i32, i32* %ftype, align 4, !tbaa !109
  %cmp40 = icmp eq i32 %54, 2
  br i1 %cmp40, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true.38
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call42 = call i32 @stream_puts(%struct.stream_s* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #6
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %57 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font43 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %57, i32 0, i32 1
  %58 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font43, align 8, !tbaa !61
  %call44 = call i32 @pdf_write_CharSet(%struct.gx_device_pdf_s* %56, %struct.pdf_base_font_s* %58) #6
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %59, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.41
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.47:                                        ; preds = %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.31
  %61 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %embed50 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %61, i32 0, i32 3
  %62 = load i32, i32* %embed50, align 4, !tbaa !70
  %tobool51 = icmp ne i32 %62, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.61

land.lhs.true.52:                                 ; preds = %if.end.49
  %63 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font53 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %63, i32 0, i32 1
  %64 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font53, align 8, !tbaa !61
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %64, i32 0, i32 9
  %65 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile, align 8, !tbaa !78
  %tobool54 = icmp ne %struct.cos_dict_s* %65, null
  br i1 %tobool54, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %land.lhs.true.52
  %66 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %67 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font56 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %67, i32 0, i32 1
  %68 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font56, align 8, !tbaa !61
  %call57 = call i32 @pdf_write_FontFile_entry(%struct.gx_device_pdf_s* %66, %struct.pdf_base_font_s* %68) #6
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %69, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.55
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.60:                                        ; preds = %if.then.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.52, %if.end.49
  %71 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %71, i32 0, i32 4
  %Style = getelementptr inbounds %struct.cid_, %struct.cid_* %cid, i32 0, i32 0
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Style, align 8, !tbaa !133
  %tobool62 = icmp ne %struct.cos_dict_s* %72, null
  br i1 %tobool62, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.end.61
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call64 = call i32 @stream_puts(%struct.stream_s* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #6
  %74 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid65 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %74, i32 0, i32 4
  %Style66 = getelementptr inbounds %struct.cid_, %struct.cid_* %cid65, i32 0, i32 0
  %75 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Style66, align 8, !tbaa !133
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %75, i32 0, i32 0
  %76 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %78 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid67 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %78, i32 0, i32 4
  %Style68 = getelementptr inbounds %struct.cid_, %struct.cid_* %cid67, i32 0, i32 0
  %79 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Style68, align 8, !tbaa !133
  %id69 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %79, i32 0, i32 1
  %80 = load i64, i64* %id69, align 8, !tbaa !79
  %call70 = call i32 @cos_write(%struct.cos_object_s* %76, %struct.gx_device_pdf_s* %77, i64 %80) #6
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.61
  %81 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid72 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %81, i32 0, i32 4
  %Lang = getelementptr inbounds %struct.cid_, %struct.cid_* %cid72, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %Lang, i32 0, i64 0
  %82 = load i8, i8* %arrayidx, align 1, !tbaa !109
  %tobool73 = icmp ne i8 %82, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.71
  %83 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %84 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid75 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %84, i32 0, i32 4
  %Lang76 = getelementptr inbounds %struct.cid_, %struct.cid_* %cid75, i32 0, i32 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %Lang76, i32 0, i32 0
  %call77 = call i8* @pprints1(%struct.stream_s* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay) #6
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.71
  %85 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid79 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %85, i32 0, i32 4
  %FD = getelementptr inbounds %struct.cid_, %struct.cid_* %cid79, i32 0, i32 2
  %86 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FD, align 8, !tbaa !134
  %tobool80 = icmp ne %struct.cos_dict_s* %86, null
  br i1 %tobool80, label %if.then.81, label %if.end.90

if.then.81:                                       ; preds = %if.end.78
  %87 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call82 = call i32 @stream_puts(%struct.stream_s* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #6
  %88 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid83 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %88, i32 0, i32 4
  %FD84 = getelementptr inbounds %struct.cid_, %struct.cid_* %cid83, i32 0, i32 2
  %89 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FD84, align 8, !tbaa !134
  %cos_procs85 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %89, i32 0, i32 0
  %90 = bitcast %struct.cos_object_procs_s** %cos_procs85 to %struct.cos_object_s*
  %91 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %92 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %cid86 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %92, i32 0, i32 4
  %FD87 = getelementptr inbounds %struct.cid_, %struct.cid_* %cid86, i32 0, i32 2
  %93 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FD87, align 8, !tbaa !134
  %id88 = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %93, i32 0, i32 1
  %94 = load i64, i64* %id88, align 8, !tbaa !79
  %call89 = call i32 @cos_write(%struct.cos_object_s* %90, %struct.gx_device_pdf_s* %91, i64 %94) #6
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.81, %if.end.78
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call91 = call i32 @stream_puts(%struct.stream_s* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #6
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call92 = call i32 @pdf_end_separate(%struct.gx_device_pdf_s* %96, i32 10) #6
  %97 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %common93 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %97, i32 0, i32 0
  %object94 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common93, i32 0, i32 7
  %98 = load %struct.cos_object_s*, %struct.cos_object_s** %object94, align 8, !tbaa !125
  %written95 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %98, i32 0, i32 8
  store i8 1, i8* %written95, align 1, !tbaa !128
  %99 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %100 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font96 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %100, i32 0, i32 1
  %101 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font96, align 8, !tbaa !61
  %call97 = call %struct.cos_dict_s* @pdf_get_FontFile_object(%struct.pdf_base_font_s* %101) #6
  %102 = bitcast %struct.cos_dict_s* %call97 to %struct.cos_object_s*
  store %struct.cos_object_s* %102, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %103 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cmp98 = icmp ne %struct.cos_object_s* %103, null
  br i1 %cmp98, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.end.90
  %104 = load %struct.cos_object_s*, %struct.cos_object_s** %pco, align 8, !tbaa !1
  %cos_procs100 = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %104, i32 0, i32 0
  %105 = bitcast %struct.cos_object_procs_s** %cos_procs100 to %struct.cos_object_s*
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call101 = call i32 @cos_write_object(%struct.cos_object_s* %105, %struct.gx_device_pdf_s* %106, i32 33) #6
  store i32 %call101, i32* %code, align 4, !tbaa !5
  %107 = load i32, i32* %code, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %107, 0
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  %108 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %108, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %if.then.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.105, %if.then.103
  %109 = bitcast %struct.cos_object_s** %pco to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.106 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %cleanup.cont, %cleanup, %if.then.59, %if.then.46, %if.then.28, %if.then.13, %if.then.3, %if.then
  %110 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i64* %cidset_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i32* %ftype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %retval
  ret i32 %115
}

declare i32 @pdf_do_subset_font(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s*, i64) #0

declare i32 @pdf_write_CIDSet(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s*, i64*) #0

; Function Attrs: nounwind uwtable
define internal i32 @write_FontDescriptor_common(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_descriptor_common_s* %pfd, i32 %embed) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfd.addr = alloca %struct.pdf_font_descriptor_common_s*, align 8
  %embed.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %params = alloca %struct.param_printer_params_s, align 8
  %rlist = alloca %struct.printer_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %base14_name = alloca i8*, align 8
  %Flags = alloca i32, align 4
  %defaults = alloca %struct.pdf_font_descriptor_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_descriptor_common_s* %pfd, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  store i32 %embed, i32* %embed.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.param_printer_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #2
  %3 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.start(i64 80, i8* %3) #2
  %4 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.printer_param_list_s* %rlist to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %5, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %6 = bitcast i8** %base14_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i8* null, i8** %base14_name, align 8, !tbaa !1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %call = call i64 @pdf_font_descriptor_common_id(%struct.pdf_font_descriptor_common_s* %8) #6
  %call1 = call i64 @pdf_open_separate(%struct.gx_device_pdf_s* %7, i64 %call, i32 10) #6
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 47
  %10 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !132
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #6
  %12 = load i32, i32* %embed.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.else.17, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %13, i32 0, i32 8
  %FontName = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !135
  %15 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values3 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %15, i32 0, i32 8
  %FontName4 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values3, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName4, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !136
  %call5 = call i8* @pdf_find_base14_name(i8* %14, i32 %16) #6
  store i8* %call5, i8** %base14_name, align 8, !tbaa !1
  %17 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %tobool6 = icmp ne i8* %17, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %20 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %call8 = call i64 @strlen(i8* %20) #8
  %conv = trunc i64 %call8 to i32
  %call9 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %18, i8* %19, i32 %conv) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %22 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values10 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %22, i32 0, i32 8
  %FontName11 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values10, i32 0, i32 6
  %data12 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName11, i32 0, i32 0
  %23 = load i8*, i8** %data12, align 8, !tbaa !135
  %24 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values13 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %24, i32 0, i32 8
  %FontName14 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values13, i32 0, i32 6
  %size15 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName14, i32 0, i32 1
  %25 = load i32, i32* %size15, align 4, !tbaa !136
  %call16 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %21, i8* %23, i32 %25) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.25

if.else.17:                                       ; preds = %entry
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %27 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values18 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %27, i32 0, i32 8
  %FontName19 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values18, i32 0, i32 6
  %data20 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName19, i32 0, i32 0
  %28 = load i8*, i8** %data20, align 8, !tbaa !135
  %29 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values21 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %29, i32 0, i32 8
  %FontName22 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values21, i32 0, i32 6
  %size23 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %FontName22, i32 0, i32 1
  %30 = load i32, i32* %size23, align 4, !tbaa !136
  %call24 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %26, i8* %28, i32 %30) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.17, %if.end
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %32 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values26 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %32, i32 0, i32 8
  %FontBBox = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values26, i32 0, i32 5
  %call27 = call i32 @pdf_write_font_bbox(%struct.gx_device_pdf_s* %31, %struct.gs_int_rect_s* %FontBBox) #6
  %33 = bitcast %struct.param_printer_params_s* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast (%struct.param_printer_params_s* @param_printer_params_default to i8*), i64 40, i32 8, i1 false), !tbaa.struct !137
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call28 = call i32 @s_init_param_printer(%struct.printer_param_list_s* %rlist, %struct.param_printer_params_s* %params, %struct.stream_s* %34) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %35, 0
  br i1 %cmp, label %if.then.30, label %if.end.53

if.then.30:                                       ; preds = %if.end.25
  %36 = bitcast i32* %Flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %values31 = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %37, i32 0, i32 8
  %Flags32 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %values31, i32 0, i32 7
  %38 = load i32, i32* %Flags32, align 4, !tbaa !131
  store i32 %38, i32* %Flags, align 4, !tbaa !5
  %39 = bitcast %struct.pdf_font_descriptor_s* %defaults to i8*
  call void @llvm.lifetime.start(i64 200, i8* %39) #2
  %40 = load i8*, i8** %base14_name, align 8, !tbaa !1
  %tobool33 = icmp ne i8* %40, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  %41 = load i32, i32* %Flags, align 4, !tbaa !5
  %or = or i32 %41, 32
  store i32 %or, i32* %Flags, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.30
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call36 = call i32 @param_write_int(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32* %Flags) #6
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %43, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.35
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %46 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %47 = bitcast %struct.pdf_font_descriptor_common_s* %46 to i8*
  %call41 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %45, i8* %47, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([6 x %struct.gs_param_item_s], [6 x %struct.gs_param_item_s]* @write_FontDescriptor_common.required_items, i32 0, i32 0)) #6
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %48, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.40
  %50 = bitcast %struct.pdf_font_descriptor_s* %defaults to i8*
  %call46 = call i8* @memset(i8* %50, i32 0, i64 200) #7
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %52 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfd.addr, align 8, !tbaa !1
  %53 = bitcast %struct.pdf_font_descriptor_common_s* %52 to i8*
  %54 = bitcast %struct.pdf_font_descriptor_s* %defaults to i8*
  %call47 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %51, i8* %53, i8* %54, %struct.gs_param_item_s* getelementptr inbounds ([7 x %struct.gs_param_item_s], [7 x %struct.gs_param_item_s]* @write_FontDescriptor_common.optional_items, i32 0, i32 0)) #6
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %55, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.45
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.45
  call void @s_release_param_printer(%struct.printer_param_list_s* %rlist) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.50, %if.then.44, %if.then.39
  %57 = bitcast %struct.pdf_font_descriptor_s* %defaults to i8*
  call void @llvm.lifetime.end(i64 200, i8* %57) #2
  %58 = bitcast i32* %Flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.end.53:                                        ; preds = %cleanup.cont, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.53, %cleanup
  %59 = bitcast i8** %base14_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.end(i64 80, i8* %61) #2
  %62 = bitcast %struct.param_printer_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 40, i8* %62) #2
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #0

declare i32 @stream_puts(%struct.stream_s*, i8*) #0

declare i32 @pdf_write_CharSet(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s*) #0

declare i32 @pdf_write_FontFile_entry(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s*) #0

declare i32 @cos_write(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64) #0

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #0

declare i32 @pdf_end_separate(%struct.gx_device_pdf_s*, i32) #0

declare %struct.cos_dict_s* @pdf_get_FontFile_object(%struct.pdf_base_font_s*) #0

declare i32 @cos_write_object(%struct.cos_object_s*, %struct.gx_device_pdf_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_release_FontDescriptor_components(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_resource_s* %1 to %struct.pdf_font_descriptor_s*
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 43
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !58
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 43
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !21
  %8 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %8, i32 0, i32 1
  %9 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  %10 = bitcast %struct.pdf_base_font_s* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)) #6
  %11 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font2 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %11, i32 0, i32 1
  store %struct.pdf_base_font_s* null, %struct.pdf_base_font_s** %base_font2, align 8, !tbaa !61
  %12 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_mark_font_descriptor_used(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_descriptor_s* %pfd) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.pdf_font_descriptor_s* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %1, i32 0, i32 0
  %object = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 7
  %2 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !125
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %2, i32 0, i32 1
  %3 = load i64, i64* %id, align 8, !tbaa !126
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %common2 = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %5, i32 0, i32 0
  %6 = bitcast %struct.pdf_font_descriptor_common_s* %common2 to %struct.pdf_resource_s*
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %4, %struct.pdf_resource_s* %6, i64 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #0

; Function Attrs: nounwind uwtable
define i32 @pdf_convert_truetype_font_descriptor(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %pbfont = alloca %struct.pdf_base_font_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %ch = alloca i64, align 8
  %FirstChar = alloca i32, align 4
  %LastChar = alloca i32, align 4
  %Encoding = alloca %struct.pdf_encoding_element_s*, align 8
  %length_CIDSet = alloca i32, align 4
  %length_CIDToGIDMap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %glyph59 = alloca i64, align 8
  %glyph84 = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 11
  %2 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !138
  store %struct.pdf_font_descriptor_s* %2, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %4, i32 0, i32 1
  %5 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !61
  store %struct.pdf_base_font_s* %5, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %7, i32 0, i32 0
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !71
  %9 = bitcast %struct.gs_font_base_s* %8 to %struct.gs_font_s*
  store %struct.gs_font_s* %9, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %10 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %FirstChar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %FirstChar1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 0
  %13 = load i32, i32* %FirstChar1, align 4, !tbaa !140
  store i32 %13, i32* %FirstChar, align 4, !tbaa !5
  %14 = bitcast i32* %LastChar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %15, i32 0, i32 20
  %simple3 = bitcast %union.anon.1* %u2 to %struct.anon.3*
  %LastChar4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple3, i32 0, i32 1
  %16 = load i32, i32* %LastChar4, align 4, !tbaa !142
  store i32 %16, i32* %LastChar, align 4, !tbaa !5
  %17 = bitcast %struct.pdf_encoding_element_s** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 20
  %simple6 = bitcast %union.anon.1* %u5 to %struct.anon.3*
  %Encoding7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple6, i32 0, i32 4
  %19 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding7, align 8, !tbaa !143
  store %struct.pdf_encoding_element_s* %19, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %20 = bitcast i32* %length_CIDSet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %21, i32 0, i32 4
  %22 = load i32, i32* %num_glyphs, align 4, !tbaa !144
  %23 = load i32, i32* %LastChar, align 4, !tbaa !5
  %cmp = icmp sgt i32 %22, %23
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %24 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs8 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %24, i32 0, i32 4
  %25 = load i32, i32* %num_glyphs8, align 4, !tbaa !144
  %add = add nsw i32 %25, 7
  %div = sdiv i32 %add, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, i32* %LastChar, align 4, !tbaa !5
  %add9 = add nsw i32 %26, 1
  %add10 = add nsw i32 %add9, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add10, %cond.false ]
  store i32 %cond, i32* %length_CIDSet, align 4, !tbaa !5
  %27 = bitcast i32* %length_CIDToGIDMap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs11 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %28, i32 0, i32 4
  %29 = load i32, i32* %num_glyphs11, align 4, !tbaa !144
  %30 = load i32, i32* %LastChar, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %29, %30
  br i1 %cmp12, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.end
  %31 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs14 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %31, i32 0, i32 4
  %32 = load i32, i32* %num_glyphs14, align 4, !tbaa !144
  %add15 = add nsw i32 %32, 1
  %conv = sext i32 %add15 to i64
  %mul = mul i64 %conv, 2
  br label %cond.end.20

cond.false.16:                                    ; preds = %cond.end
  %33 = load i32, i32* %LastChar, align 4, !tbaa !5
  %add17 = add nsw i32 %33, 1
  %conv18 = sext i32 %add17 to i64
  %mul19 = mul i64 %conv18, 2
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.13
  %cond21 = phi i64 [ %mul, %cond.true.13 ], [ %mul19, %cond.false.16 ]
  %conv22 = trunc i64 %cond21 to i32
  store i32 %conv22, i32* %length_CIDToGIDMap, align 4, !tbaa !5
  %34 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %34, i32 0, i32 2
  store i32 11, i32* %FontType, align 4, !tbaa !69
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u23 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %35, i32 0, i32 20
  %simple24 = bitcast %union.anon.1* %u23 to %struct.anon.3*
  %Encoding25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple24, i32 0, i32 4
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %Encoding25, align 8, !tbaa !143
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 43
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !145
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 43
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory26, align 8, !tbaa !21
  %41 = load i32, i32* %length_CIDSet, align 4, !tbaa !5
  %call = call i8* %38(%struct.gs_memory_s* %40, i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0)) #6
  %42 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %42, i32 0, i32 5
  store i8* %call, i8** %CIDSet, align 8, !tbaa !146
  %43 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet27 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %43, i32 0, i32 5
  %44 = load i8*, i8** %CIDSet27, align 8, !tbaa !146
  %cmp28 = icmp eq i8* %44, null
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.20
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.20
  %45 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet30 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %45, i32 0, i32 5
  %46 = load i8*, i8** %CIDSet30, align 8, !tbaa !146
  %47 = load i32, i32* %length_CIDSet, align 4, !tbaa !5
  %conv31 = sext i32 %47 to i64
  %call32 = call i8* @memset(i8* %46, i32 0, i64 %conv31) #7
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory33 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 43
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory33, align 8, !tbaa !21
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_bytes35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 7
  %50 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes35, align 8, !tbaa !145
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 43
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory36, align 8, !tbaa !21
  %53 = load i32, i32* %length_CIDToGIDMap, align 4, !tbaa !5
  %call37 = call i8* %50(%struct.gs_memory_s* %52, i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0)) #6
  %54 = bitcast i8* %call37 to i16*
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u38 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u38 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 1
  store i16* %54, i16** %CIDToGIDMap, align 8, !tbaa !147
  %56 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u39 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %56, i32 0, i32 20
  %cidfont40 = bitcast %union.anon.1* %u39 to %struct.anon.2*
  %CIDToGIDMap41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont40, i32 0, i32 1
  %57 = load i16*, i16** %CIDToGIDMap41, align 8, !tbaa !147
  %cmp42 = icmp eq i16* %57, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end
  %58 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u46 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %58, i32 0, i32 20
  %cidfont47 = bitcast %union.anon.1* %u46 to %struct.anon.2*
  %CIDToGIDMap48 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont47, i32 0, i32 1
  %59 = load i16*, i16** %CIDToGIDMap48, align 8, !tbaa !147
  %60 = bitcast i16* %59 to i8*
  %61 = load i32, i32* %length_CIDToGIDMap, align 4, !tbaa !5
  %conv49 = sext i32 %61 to i64
  %call50 = call i8* @memset(i8* %60, i32 0, i64 %conv49) #7
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 109
  %63 = load i32, i32* %PDFA, align 4, !tbaa !113
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.45
  %64 = load i32, i32* %FirstChar, align 4, !tbaa !5
  %conv52 = sext i32 %64 to i64
  store i64 %conv52, i64* %ch, align 8, !tbaa !83
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.51
  %65 = load i64, i64* %ch, align 8, !tbaa !83
  %66 = load i32, i32* %LastChar, align 4, !tbaa !5
  %conv53 = sext i32 %66 to i64
  %cmp54 = icmp ule i64 %65, %conv53
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i64, i64* %ch, align 8, !tbaa !83
  %68 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %68, i64 %67
  %glyph = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx, i32 0, i32 0
  %69 = load i64, i64* %glyph, align 8, !tbaa !149
  %cmp56 = icmp ne i64 %69, 2147483647
  br i1 %cmp56, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %for.body
  %70 = bitcast i64* %glyph59 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #2
  %71 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %71, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs60, i32 0, i32 4
  %72 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !151
  %73 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %74 = load i64, i64* %ch, align 8, !tbaa !83
  %call61 = call i64 %72(%struct.gs_font_s* %73, i64 %74, i32 1) #6
  store i64 %call61, i64* %glyph59, align 8, !tbaa !83
  %75 = load i64, i64* %ch, align 8, !tbaa !83
  %rem = urem i64 %75, 8
  %sh_prom = trunc i64 %rem to i32
  %shr = ashr i32 128, %sh_prom
  %76 = load i64, i64* %ch, align 8, !tbaa !83
  %div62 = udiv i64 %76, 8
  %77 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet63 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %77, i32 0, i32 5
  %78 = load i8*, i8** %CIDSet63, align 8, !tbaa !146
  %arrayidx64 = getelementptr inbounds i8, i8* %78, i64 %div62
  %79 = load i8, i8* %arrayidx64, align 1, !tbaa !109
  %conv65 = zext i8 %79 to i32
  %or = or i32 %conv65, %shr
  %conv66 = trunc i32 %or to i8
  store i8 %conv66, i8* %arrayidx64, align 1, !tbaa !109
  %80 = load i64, i64* %glyph59, align 8, !tbaa !83
  %sub = sub i64 %80, 3221225472
  %conv67 = trunc i64 %sub to i16
  %81 = load i64, i64* %ch, align 8, !tbaa !83
  %82 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u68 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %82, i32 0, i32 20
  %cidfont69 = bitcast %union.anon.1* %u68 to %struct.anon.2*
  %CIDToGIDMap70 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont69, i32 0, i32 1
  %83 = load i16*, i16** %CIDToGIDMap70, align 8, !tbaa !147
  %arrayidx71 = getelementptr inbounds i16, i16* %83, i64 %81
  store i16 %conv67, i16* %arrayidx71, align 2, !tbaa !153
  %84 = bitcast i64* %glyph59 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.58, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %85 = load i64, i64* %ch, align 8, !tbaa !83
  %inc = add i64 %85, 1
  store i64 %inc, i64* %ch, align 8, !tbaa !83
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %86 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet73 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %86, i32 0, i32 5
  %87 = load i8*, i8** %CIDSet73, align 8, !tbaa !146
  %arrayidx74 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx74, align 1, !tbaa !109
  %conv75 = zext i8 %88 to i32
  %or76 = or i32 %conv75, 128
  %conv77 = trunc i32 %or76 to i8
  store i8 %conv77, i8* %arrayidx74, align 1, !tbaa !109
  br label %if.end.106

if.else:                                          ; preds = %if.end.45
  store i64 0, i64* %ch, align 8, !tbaa !83
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.103, %if.else
  %89 = load i64, i64* %ch, align 8, !tbaa !83
  %90 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs79 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %90, i32 0, i32 4
  %91 = load i32, i32* %num_glyphs79, align 4, !tbaa !144
  %conv80 = sext i32 %91 to i64
  %cmp81 = icmp ule i64 %89, %conv80
  br i1 %cmp81, label %for.body.83, label %for.end.105

for.body.83:                                      ; preds = %for.cond.78
  %92 = bitcast i64* %glyph84 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %93, i32 0, i32 20
  %encode_char86 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs85, i32 0, i32 4
  %94 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char86, align 8, !tbaa !151
  %95 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %96 = load i64, i64* %ch, align 8, !tbaa !83
  %call87 = call i64 %94(%struct.gs_font_s* %95, i64 %96, i32 1) #6
  store i64 %call87, i64* %glyph84, align 8, !tbaa !83
  %97 = load i64, i64* %ch, align 8, !tbaa !83
  %rem88 = urem i64 %97, 8
  %sh_prom89 = trunc i64 %rem88 to i32
  %shr90 = ashr i32 128, %sh_prom89
  %98 = load i64, i64* %ch, align 8, !tbaa !83
  %div91 = udiv i64 %98, 8
  %99 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet92 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %99, i32 0, i32 5
  %100 = load i8*, i8** %CIDSet92, align 8, !tbaa !146
  %arrayidx93 = getelementptr inbounds i8, i8* %100, i64 %div91
  %101 = load i8, i8* %arrayidx93, align 1, !tbaa !109
  %conv94 = zext i8 %101 to i32
  %or95 = or i32 %conv94, %shr90
  %conv96 = trunc i32 %or95 to i8
  store i8 %conv96, i8* %arrayidx93, align 1, !tbaa !109
  %102 = load i64, i64* %glyph84, align 8, !tbaa !83
  %sub97 = sub i64 %102, 3221225472
  %conv98 = trunc i64 %sub97 to i16
  %103 = load i64, i64* %ch, align 8, !tbaa !83
  %104 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u99 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %104, i32 0, i32 20
  %cidfont100 = bitcast %union.anon.1* %u99 to %struct.anon.2*
  %CIDToGIDMap101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont100, i32 0, i32 1
  %105 = load i16*, i16** %CIDToGIDMap101, align 8, !tbaa !147
  %arrayidx102 = getelementptr inbounds i16, i16* %105, i64 %103
  store i16 %conv98, i16* %arrayidx102, align 2, !tbaa !153
  %106 = bitcast i64* %glyph84 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.83
  %107 = load i64, i64* %ch, align 8, !tbaa !83
  %inc104 = add i64 %107, 1
  store i64 %inc104, i64* %ch, align 8, !tbaa !83
  br label %for.cond.78

for.end.105:                                      ; preds = %for.cond.78
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %for.end
  %108 = load i32, i32* %length_CIDSet, align 4, !tbaa !5
  %109 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSetLength = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %109, i32 0, i32 6
  store i32 %108, i32* %CIDSetLength, align 4, !tbaa !154
  %110 = load i32, i32* %length_CIDToGIDMap, align 4, !tbaa !5
  %conv107 = sext i32 %110 to i64
  %div108 = udiv i64 %conv107, 2
  %conv109 = trunc i64 %div108 to i32
  %111 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u110 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %111, i32 0, i32 20
  %cidfont111 = bitcast %union.anon.1* %u110 to %struct.anon.2*
  %CIDToGIDMapLength = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont111, i32 0, i32 2
  store i32 %conv109, i32* %CIDToGIDMapLength, align 4, !tbaa !155
  %112 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u112 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %112, i32 0, i32 20
  %cidfont113 = bitcast %union.anon.1* %u112 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont113, i32 0, i32 4
  store double* null, double** %Widths2, align 8, !tbaa !156
  %113 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u114 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %113, i32 0, i32 20
  %cidfont115 = bitcast %union.anon.1* %u114 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont115, i32 0, i32 6
  store i8* null, i8** %used2, align 8, !tbaa !157
  %114 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u116 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %114, i32 0, i32 20
  %cidfont117 = bitcast %union.anon.1* %u116 to %struct.anon.2*
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont117, i32 0, i32 5
  store double* null, double** %v, align 8, !tbaa !158
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then.44, %if.then
  %115 = bitcast i32* %length_CIDToGIDMap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %length_CIDSet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast %struct.pdf_encoding_element_s** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %LastChar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %FirstChar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %121 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define i32 @mark_font_descriptor_symbolic(%struct.pdf_font_resource_s* %pdfont) #1 {
entry:
  %retval = alloca i32, align 4
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %desc = alloca %struct.pdf_font_descriptor_values_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_descriptor_values_s** %desc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_font_resource_s* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 11
  %3 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !138
  %tobool1 = icmp ne %struct.pdf_font_descriptor_s* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor2 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %4, i32 0, i32 11
  %5 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor2, align 8, !tbaa !138
  %common = getelementptr inbounds %struct.pdf_font_descriptor_s, %struct.pdf_font_descriptor_s* %5, i32 0, i32 0
  %values = getelementptr inbounds %struct.pdf_font_descriptor_common_s, %struct.pdf_font_descriptor_common_s* %common, i32 0, i32 8
  store %struct.pdf_font_descriptor_values_s* %values, %struct.pdf_font_descriptor_values_s** %desc, align 8, !tbaa !1
  %6 = load %struct.pdf_font_descriptor_values_s*, %struct.pdf_font_descriptor_values_s** %desc, align 8, !tbaa !1
  %Flags = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %6, i32 0, i32 7
  %7 = load i32, i32* %Flags, align 4, !tbaa !105
  %and = and i32 %7, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.8, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.pdf_font_descriptor_values_s*, %struct.pdf_font_descriptor_values_s** %desc, align 8, !tbaa !1
  %Flags5 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %8, i32 0, i32 7
  %9 = load i32, i32* %Flags5, align 4, !tbaa !105
  %or = or i32 %9, 4
  store i32 %or, i32* %Flags5, align 4, !tbaa !105
  %10 = load %struct.pdf_font_descriptor_values_s*, %struct.pdf_font_descriptor_values_s** %desc, align 8, !tbaa !1
  %Flags6 = getelementptr inbounds %struct.pdf_font_descriptor_values_s, %struct.pdf_font_descriptor_values_s* %10, i32 0, i32 7
  %11 = load i32, i32* %Flags6, align 4, !tbaa !105
  %and7 = and i32 %11, -33
  store i32 %and7, i32* %Flags6, align 4, !tbaa !105
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %12 = bitcast %struct.pdf_font_descriptor_values_s** %desc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i64 @pdf_open_separate(%struct.gx_device_pdf_s*, i64, i32) #0

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @pdf_font_descriptor_common_id(%struct.pdf_font_descriptor_common_s* %pfdc) #5 {
entry:
  %pfdc.addr = alloca %struct.pdf_font_descriptor_common_s*, align 8
  store %struct.pdf_font_descriptor_common_s* %pfdc, %struct.pdf_font_descriptor_common_s** %pfdc.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_descriptor_common_s*, %struct.pdf_font_descriptor_common_s** %pfdc.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_font_descriptor_common_s* %0 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %1) #6
  ret i64 %call
}

declare i8* @pdf_find_base14_name(i8*, i32) #0

declare i32 @pdf_put_name(%struct.gx_device_pdf_s*, i8*, i32) #0

declare i32 @pdf_write_font_bbox(%struct.gx_device_pdf_s*, %struct.gs_int_rect_s*) #0

declare i32 @s_init_param_printer(%struct.printer_param_list_s*, %struct.param_printer_params_s*, %struct.stream_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #0

declare void @s_release_param_printer(%struct.printer_param_list_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !12, i64 104}
!8 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !15, i64 376, !18, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!9 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!15 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!19 = !{!8, !12, i64 108}
!20 = !{!8, !10, i64 56}
!21 = !{!22, !2, i64 1728}
!22 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !23, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !24, i64 96, !27, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !28, i64 984, !6, i64 1052, !6, i64 1056, !29, i64 1064, !2, i64 1104, !3, i64 1112, !31, i64 1120, !32, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !33, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !42, i64 7512, !42, i64 8144, !10, i64 8776, !10, i64 8784, !3, i64 8792, !3, i64 8796, !16, i64 8800, !6, i64 8816, !2, i64 8824, !10, i64 8832, !10, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !17, i64 8872, !47, i64 8880, !6, i64 9360, !17, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !52, i64 9424, !52, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !10, i64 9472, !6, i64 9480, !6, i64 9484, !51, i64 9488, !51, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !10, i64 9576, !10, i64 9584, !10, i64 9592, !53, i64 9600, !51, i64 9616, !51, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !51, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !15, i64 9784, !54, i64 9816, !54, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !10, i64 9920, !3, i64 9928, !6, i64 9960, !10, i64 9968, !10, i64 9976, !3, i64 9984, !3, i64 9988, !55, i64 9992, !55, i64 14120, !55, i64 18248, !55, i64 22376, !10, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !10, i64 26536, !6, i64 26544, !6, i64 26548, !10, i64 26552, !3, i64 26560, !10, i64 26568, !10, i64 26576, !3, i64 26584, !2, i64 26592, !56, i64 26600, !2, i64 26648, !6, i64 26656, !10, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !10, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !16, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !57, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !11, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !36, i64 30488, !6, i64 30524, !15, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !10, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !11, i64 30612, !17, i64 30640, !2, i64 30648, !48, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!23 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!24 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !25, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !26, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!25 = !{!"short", !3, i64 0}
!26 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!27 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!28 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!29 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !30, i64 16, !6, i64 32, !3, i64 36}
!30 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!31 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!33 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !34, i64 24, !6, i64 128, !36, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !25, i64 216, !3, i64 220, !37, i64 224, !37, i64 228, !38, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !39, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !40, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !41, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !41, i64 1336}
!34 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !11, i64 40, !35, i64 64}
!35 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!36 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!37 = !{!"gs_transparency_source_s", !12, i64 0}
!38 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!39 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!40 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!41 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!42 = !{!"gx_hl_saved_color_s", !10, i64 0, !10, i64 8, !6, i64 16, !43, i64 24, !45, i64 288}
!43 = !{!"gs_client_color_s", !2, i64 0, !44, i64 8}
!44 = !{!"gs_paint_color_s", !3, i64 0}
!45 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !46, i64 336}
!46 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!47 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !48, i64 64, !48, i64 80, !48, i64 96, !48, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !49, i64 152, !6, i64 232, !6, i64 236, !49, i64 240, !49, i64 320, !50, i64 400, !50, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !51, i64 448, !50, i64 464}
!48 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!49 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !12, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!50 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!53 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!54 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !15, i64 8}
!55 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!56 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!57 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !12, i64 40, !12, i64 44, !3, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !12, i64 84, !12, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !42, i64 120, !42, i64 752, !34, i64 1384, !2, i64 1488, !6, i64 1496, !10, i64 1504}
!58 = !{!59, !2, i64 24}
!59 = !{!"gs_memory_s", !2, i64 0, !60, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!60 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!61 = !{!62, !2, i64 160}
!62 = !{!"pdf_font_descriptor_s", !63, i64 0, !2, i64 160, !3, i64 168, !6, i64 172, !67, i64 176}
!63 = !{!"pdf_font_descriptor_common_s", !2, i64 0, !2, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !10, i64 56, !2, i64 64, !64, i64 72}
!64 = !{!"pdf_font_descriptor_values_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !65, i64 20, !66, i64 40, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80}
!65 = !{!"gs_int_rect_s", !46, i64 0, !46, i64 8}
!66 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!67 = !{!"cid_", !2, i64 0, !3, i64 8, !2, i64 16}
!68 = !{!8, !3, i64 128}
!69 = !{!62, !3, i64 168}
!70 = !{!62, !6, i64 172}
!71 = !{!72, !2, i64 0}
!72 = !{!"pdf_base_font_s", !2, i64 0, !2, i64 8, !3, i64 16, !6, i64 20, !6, i64 24, !2, i64 32, !6, i64 40, !66, i64 48, !6, i64 64, !2, i64 72}
!73 = !{!72, !6, i64 56}
!74 = !{!59, !2, i64 160}
!75 = !{!72, !2, i64 48}
!76 = !{!77, !2, i64 64}
!77 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !10, i64 56, !2, i64 64}
!78 = !{!72, !2, i64 72}
!79 = !{!80, !10, i64 8}
!80 = !{!"cos_dict_s", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !10, i64 56, !2, i64 64, !81, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!81 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!82 = !{!80, !6, i64 180}
!83 = !{!10, !10, i64 0}
!84 = !{!8, !6, i64 148}
!85 = !{!8, !17, i64 376}
!86 = !{!8, !17, i64 392}
!87 = !{!8, !17, i64 384}
!88 = !{!8, !17, i64 400}
!89 = !{!64, !6, i64 20}
!90 = !{!64, !6, i64 24}
!91 = !{!64, !6, i64 28}
!92 = !{!64, !6, i64 32}
!93 = !{!64, !6, i64 0}
!94 = !{!8, !2, i64 216}
!95 = !{!8, !2, i64 224}
!96 = !{!97, !17, i64 56}
!97 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !16, i64 40, !15, i64 56, !6, i64 88, !2, i64 96}
!98 = !{!97, !17, i64 72}
!99 = !{!97, !17, i64 64}
!100 = !{!97, !17, i64 80}
!101 = !{!97, !6, i64 88}
!102 = !{!16, !17, i64 0}
!103 = !{!64, !6, i64 72}
!104 = !{!16, !17, i64 8}
!105 = !{!64, !6, i64 56}
!106 = !{!8, !2, i64 240}
!107 = !{!48, !2, i64 0}
!108 = !{!48, !6, i64 8}
!109 = !{!3, !3, i64 0}
!110 = !{i64 0, i64 8, !111, i64 8, i64 8, !111, i64 16, i64 8, !111, i64 24, i64 8, !111}
!111 = !{!17, !17, i64 0}
!112 = !{!64, !6, i64 80}
!113 = !{!22, !6, i64 9564}
!114 = !{!64, !6, i64 4}
!115 = !{!15, !17, i64 24}
!116 = !{!15, !17, i64 8}
!117 = !{!15, !17, i64 16}
!118 = !{!15, !17, i64 0}
!119 = !{!64, !6, i64 12}
!120 = !{!64, !6, i64 16}
!121 = !{!64, !6, i64 8}
!122 = !{!64, !6, i64 68}
!123 = !{!64, !6, i64 60}
!124 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 40, i64 8, !1, i64 48, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5, i64 68, i64 4, !5, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5}
!125 = !{!62, !2, i64 64}
!126 = !{!127, !10, i64 8}
!127 = !{!"cos_object_s", !2, i64 0, !10, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !10, i64 56, !2, i64 64, !81, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!128 = !{!127, !3, i64 50}
!129 = !{!62, !10, i64 16}
!130 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !83, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 24, !109, i64 56, i64 8, !83, i64 64, i64 8, !1, i64 72, i64 4, !5, i64 76, i64 4, !5, i64 80, i64 4, !5, i64 84, i64 4, !5, i64 88, i64 4, !5, i64 92, i64 4, !5, i64 96, i64 4, !5, i64 100, i64 4, !5, i64 104, i64 4, !5, i64 112, i64 8, !1, i64 120, i64 4, !5, i64 128, i64 4, !5, i64 132, i64 4, !5, i64 136, i64 4, !5, i64 140, i64 4, !5, i64 144, i64 4, !5, i64 148, i64 4, !5, i64 152, i64 4, !5}
!131 = !{!63, !6, i64 128}
!132 = !{!22, !2, i64 5848}
!133 = !{!62, !2, i64 176}
!134 = !{!62, !2, i64 192}
!135 = !{!63, !2, i64 112}
!136 = !{!63, !6, i64 120}
!137 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !5}
!138 = !{!139, !2, i64 104}
!139 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !10, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !66, i64 88, !2, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!140 = !{!141, !6, i64 0}
!141 = !{!"", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 12, !2, i64 16, !2, i64 24, !6, i64 32, !3, i64 40}
!142 = !{!141, !6, i64 4}
!143 = !{!141, !2, i64 16}
!144 = !{!72, !6, i64 24}
!145 = !{!59, !2, i64 64}
!146 = !{!72, !2, i64 32}
!147 = !{!148, !2, i64 8}
!148 = !{!"", !10, i64 0, !2, i64 8, !6, i64 16, !10, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!149 = !{!150, !10, i64 0}
!150 = !{!"pdf_encoding_element_s", !10, i64 0, !48, i64 8, !6, i64 24}
!151 = !{!152, !2, i64 200}
!152 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !9, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !12, i64 156, !6, i64 160, !13, i64 168, !14, i64 272, !14, i64 324}
!153 = !{!25, !25, i64 0}
!154 = !{!72, !6, i64 40}
!155 = !{!148, !6, i64 16}
!156 = !{!148, !2, i64 32}
!157 = !{!148, !2, i64 48}
!158 = !{!148, !2, i64 40}
