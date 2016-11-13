; ModuleID = './gdevpdts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.pdf_text_state_s = type { %struct.pdf_text_state_values_s, %struct.gs_point_s, %struct.pdf_text_buffer_s, i32, %struct.pdf_text_state_values_s, double, i32, i32, %struct.gs_point_s, %struct.gs_point_s, double }
%struct.pdf_text_buffer_s = type { [51 x %struct.pdf_text_move_s], [200 x i8], i32, i32 }
%struct.pdf_text_move_s = type { i32, float }
%struct.pdf_text_state_values_s = type { float, %struct.pdf_font_resource_s*, double, %struct.gs_matrix_s, i32, float }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
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
%struct.pdf_bitmap_fonts_s = type { %struct.pdf_font_resource_s*, i32, i64, i32 }
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.gx_path_s = type opaque
%struct.cos_array_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type { i32, i32, i32, [1 x %struct.pdf_char_glyph_pair_s] }
%struct.pdf_char_glyph_pair_s = type { i64, i64 }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_cmap_s = type opaque
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.anon = type { %struct.pdf_font_resource_s*, [27 x i8], %struct.gs_const_string_s, i32, i32, i32 }

@st_pdf_text_state = internal constant %struct.gs_memory_struct_type_s { i32 808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_text_state_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [21 x i8] c"pdf_text_state_alloc\00", align 1
@ts_default = internal constant %struct.pdf_text_state_s { %struct.pdf_text_state_values_s { float 0.000000e+00, %struct.pdf_font_resource_s* null, double 0.000000e+00, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, float 0.000000e+00 }, %struct.gs_point_s zeroinitializer, %struct.pdf_text_buffer_s zeroinitializer, i32 0, %struct.pdf_text_state_values_s { float 0.000000e+00, %struct.pdf_font_resource_s* null, double 0.000000e+00, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, float 0.000000e+00 }, double 0.000000e+00, i32 0, i32 0, %struct.gs_point_s zeroinitializer, %struct.gs_point_s zeroinitializer, double 0.000000e+00 }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%g Tc\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/%s \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%g Tf\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%g Tr\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%g Tw\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"pdf_text_state_t\00", align 1
@pdf_text_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @pdf_text_state_enum_ptrs, i32 0, i32 0) }, align 8
@pdf_text_state_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 704 }], align 2
@.str.7 = private unnamed_addr constant [6 x i8] c"/Font\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"T*\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"]TJ\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Tj\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%g TL\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%g %g Td\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%g %g %g %g %g %g Tm\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pdf_text_state_s* @pdf_text_state_alloc(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.pdf_text_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_pdf_text_state, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #6
  %4 = bitcast i8* %call to %struct.pdf_text_state_s*
  store %struct.pdf_text_state_s* %4, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_text_state_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.pdf_text_state_s* null, %struct.pdf_text_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %7 = bitcast %struct.pdf_text_state_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.pdf_text_state_s* @ts_default to i8*), i64 808, i32 8, i1 false), !tbaa.struct !8
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  store %struct.pdf_text_state_s* %8, %struct.pdf_text_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %retval
  ret %struct.pdf_text_state_s* %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @pdf_set_text_state_default(%struct.pdf_text_state_s* %pts) #0 {
entry:
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_text_state_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.pdf_text_state_s* @ts_default to i8*), i64 808, i32 8, i1 false), !tbaa.struct !8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_text_state_copy(%struct.pdf_text_state_s* %pts_to, %struct.pdf_text_state_s* %pts_from) #0 {
entry:
  %pts_to.addr = alloca %struct.pdf_text_state_s*, align 8
  %pts_from.addr = alloca %struct.pdf_text_state_s*, align 8
  store %struct.pdf_text_state_s* %pts_to, %struct.pdf_text_state_s** %pts_to.addr, align 8, !tbaa !1
  store %struct.pdf_text_state_s* %pts_from, %struct.pdf_text_state_s** %pts_from.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts_to.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts_from.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_text_state_s* %0 to i8*
  %3 = bitcast %struct.pdf_text_state_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 808, i32 8, i1 false), !tbaa.struct !8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_reset_text_page(%struct.pdf_text_data_s* %ptd) #0 {
entry:
  %ptd.addr = alloca %struct.pdf_text_data_s*, align 8
  store %struct.pdf_text_data_s* %ptd, %struct.pdf_text_data_s** %ptd.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %ptd.addr, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %0, i32 0, i32 2
  %1 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  call void @pdf_set_text_state_default(%struct.pdf_text_state_s* %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_reset_text_state(%struct.pdf_text_data_s* %ptd) #0 {
entry:
  %ptd.addr = alloca %struct.pdf_text_data_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  store %struct.pdf_text_data_s* %ptd, %struct.pdf_text_data_s** %ptd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %ptd.addr, align 8, !tbaa !1
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %1, i32 0, i32 2
  %2 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %2, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %3, i32 0, i32 4
  %4 = bitcast %struct.pdf_text_state_values_s* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.pdf_text_state_values_s* getelementptr inbounds (%struct.pdf_text_state_s, %struct.pdf_text_state_s* @ts_default, i32 0, i32 4) to i8*), i64 56, i32 8, i1 false), !tbaa.struct !18
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %leading = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 5
  store double 0.000000e+00, double* %leading, align 8, !tbaa !19
  %6 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_from_stream_to_text(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %4, i32 0, i32 4
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out, i32 0, i32 3
  call void @gs_make_identity(%struct.gs_matrix_s* %matrix) #6
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 8
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !64
  %6 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %6, i32 0, i32 8
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start1, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !65
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %continue_line = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 7
  store i32 0, i32* %continue_line, align 4, !tbaa !66
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %8, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  store i32 0, i32* %count_chars, align 4, !tbaa !67
  %9 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer2 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %9, i32 0, i32 2
  %count_moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer2, i32 0, i32 2
  store i32 0, i32* %count_moves, align 4, !tbaa !68
  %10 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 0
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_get_stoted_text_size(%struct.pdf_text_state_s* %state) #0 {
entry:
  %state.addr = alloca %struct.pdf_text_state_s*, align 8
  store %struct.pdf_text_state_s* %state, %struct.pdf_text_state_s** %state.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %state.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %0, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %1 = load i32, i32* %count_chars, align 4, !tbaa !67
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @sync_text_state(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdfont25 = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !69
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %8, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %9 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end:                                           ; preds = %entry
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %continue_line = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %10, i32 0, i32 7
  %11 = load i32, i32* %continue_line, align 4, !tbaa !66
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @flush_text_buffer(%struct.gx_device_pdf_s* %12) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.2:                                         ; preds = %if.end
  %13 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %13, i32 0, i32 4
  %character_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out, i32 0, i32 0
  %14 = load float, float* %character_spacing, align 4, !tbaa !70
  %15 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %15, i32 0, i32 0
  %character_spacing3 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 0
  %16 = load float, float* %character_spacing3, align 4, !tbaa !71
  %cmp4 = fcmp une float %14, %16
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end.2
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in6 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %18, i32 0, i32 0
  %character_spacing7 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in6, i32 0, i32 0
  %19 = load float, float* %character_spacing7, align 4, !tbaa !71
  %conv = fpext float %19 to double
  %call8 = call i8* @pprintg1(%struct.stream_s* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double %conv) #6
  %20 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in9 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %20, i32 0, i32 0
  %character_spacing10 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in9, i32 0, i32 0
  %21 = load float, float* %character_spacing10, align 4, !tbaa !71
  %22 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out11 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %22, i32 0, i32 4
  %character_spacing12 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out11, i32 0, i32 0
  store float %21, float* %character_spacing12, align 4, !tbaa !70
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.5, %if.end.2
  %23 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out14 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %23, i32 0, i32 4
  %pdfont = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out14, i32 0, i32 1
  %24 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !72
  %25 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in15 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %25, i32 0, i32 0
  %pdfont16 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in15, i32 0, i32 1
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont16, align 8, !tbaa !73
  %cmp17 = icmp ne %struct.pdf_font_resource_s* %24, %26
  br i1 %cmp17, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %27 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out19 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %27, i32 0, i32 4
  %size = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out19, i32 0, i32 2
  %28 = load double, double* %size, align 8, !tbaa !74
  %29 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in20 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %29, i32 0, i32 0
  %size21 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in20, i32 0, i32 2
  %30 = load double, double* %size21, align 8, !tbaa !75
  %cmp22 = fcmp une double %28, %30
  br i1 %cmp22, label %if.then.24, label %if.end.50

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.13
  %31 = bitcast %struct.pdf_font_resource_s** %pdfont25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in26 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %32, i32 0, i32 0
  %pdfont27 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in26, i32 0, i32 1
  %33 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont27, align 8, !tbaa !73
  store %struct.pdf_font_resource_s* %33, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %35 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %call28 = call i32 @pdf_assign_font_object_id(%struct.gx_device_pdf_s* %34, %struct.pdf_font_resource_s* %35) #6
  store i32 %call28, i32* %code, align 4, !tbaa !13
  %36 = load i32, i32* %code, align 4, !tbaa !13
  %cmp29 = icmp slt i32 %36, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.24
  %37 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.24
  %38 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %39, i32 0, i32 5
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %call33 = call i8* @pprints1(%struct.stream_s* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay) #6
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in34 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %41, i32 0, i32 0
  %size35 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in34, i32 0, i32 2
  %42 = load double, double* %size35, align 8, !tbaa !75
  %call36 = call i8* @pprintg1(%struct.stream_s* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), double %42) #6
  %43 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %44 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out37 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %44, i32 0, i32 4
  %pdfont38 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out37, i32 0, i32 1
  store %struct.pdf_font_resource_s* %43, %struct.pdf_font_resource_s** %pdfont38, align 8, !tbaa !72
  %45 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in39 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %45, i32 0, i32 0
  %size40 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in39, i32 0, i32 2
  %46 = load double, double* %size40, align 8, !tbaa !75
  %47 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out41 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %47, i32 0, i32 4
  %size42 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out41, i32 0, i32 2
  store double %46, double* %size42, align 8, !tbaa !74
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 8
  %49 = load i32, i32* %FontType, align 4, !tbaa !76
  %cmp43 = icmp eq i32 %49, 0
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %WMode = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 5
  %51 = load i32, i32* %WMode, align 4, !tbaa !79
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ 0, %cond.false ]
  %52 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %wmode = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %52, i32 0, i32 3
  store i32 %cond, i32* %wmode, align 4, !tbaa !81
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %54 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont25, align 8, !tbaa !1
  %call45 = call i32 @pdf_used_charproc_resources(%struct.gx_device_pdf_s* %53, %struct.pdf_font_resource_s* %54) #6
  store i32 %call45, i32* %code, align 4, !tbaa !13
  %55 = load i32, i32* %code, align 4, !tbaa !13
  %cmp46 = icmp slt i32 %55, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end
  %56 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48, %if.then.31
  %57 = bitcast %struct.pdf_font_resource_s** %pdfont25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.121 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %58 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in51 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %58, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in51, i32 0, i32 3
  %59 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out52 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %59, i32 0, i32 4
  %matrix53 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out52, i32 0, i32 3
  %call54 = call i32 @gs_matrix_compare(%struct.gs_matrix_s* %matrix, %struct.gs_matrix_s* %matrix53) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.74, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.50
  %60 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %60, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %61 = load double, double* %x, align 8, !tbaa !82
  %62 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %62, i32 0, i32 9
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos, i32 0, i32 0
  %63 = load double, double* %x57, align 8, !tbaa !83
  %cmp58 = fcmp une double %61, %63
  br i1 %cmp58, label %land.lhs.true, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.56
  %64 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start61 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %64, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start61, i32 0, i32 1
  %65 = load double, double* %y, align 8, !tbaa !84
  %66 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos62 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %66, i32 0, i32 9
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos62, i32 0, i32 1
  %67 = load double, double* %y63, align 8, !tbaa !85
  %cmp64 = fcmp une double %65, %67
  br i1 %cmp64, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %lor.lhs.false.60, %lor.lhs.false.56
  %68 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer66 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %68, i32 0, i32 2
  %count_chars67 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer66, i32 0, i32 3
  %69 = load i32, i32* %count_chars67, align 4, !tbaa !67
  %cmp68 = icmp ne i32 %69, 0
  br i1 %cmp68, label %if.then.74, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true
  %70 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer71 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %70, i32 0, i32 2
  %count_moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer71, i32 0, i32 2
  %71 = load i32, i32* %count_moves, align 4, !tbaa !68
  %cmp72 = icmp ne i32 %71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %lor.lhs.false.70, %land.lhs.true, %if.end.50
  %72 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call75 = call i32 @pdf_set_text_matrix(%struct.gx_device_pdf_s* %72) #6
  store i32 %call75, i32* %code, align 4, !tbaa !13
  %73 = load i32, i32* %code, align 4, !tbaa !13
  %cmp76 = icmp slt i32 %73, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.74
  %74 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.79:                                        ; preds = %if.then.74
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %lor.lhs.false.70, %lor.lhs.false.60
  %75 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out81 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %75, i32 0, i32 4
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out81, i32 0, i32 4
  %76 = load i32, i32* %render_mode, align 4, !tbaa !86
  %77 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in82 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %77, i32 0, i32 0
  %render_mode83 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in82, i32 0, i32 4
  %78 = load i32, i32* %render_mode83, align 4, !tbaa !87
  %cmp84 = icmp ne i32 %76, %78
  br i1 %cmp84, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %if.end.80
  %79 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %80 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in87 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %80, i32 0, i32 0
  %render_mode88 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in87, i32 0, i32 4
  %81 = load i32, i32* %render_mode88, align 4, !tbaa !87
  %conv89 = sitofp i32 %81 to double
  %call90 = call i8* @pprintg1(%struct.stream_s* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %conv89) #6
  %82 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in91 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %82, i32 0, i32 0
  %render_mode92 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in91, i32 0, i32 4
  %83 = load i32, i32* %render_mode92, align 4, !tbaa !87
  %84 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out93 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %84, i32 0, i32 4
  %render_mode94 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out93, i32 0, i32 4
  store i32 %83, i32* %render_mode94, align 4, !tbaa !86
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.86, %if.end.80
  %85 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out96 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %85, i32 0, i32 4
  %word_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out96, i32 0, i32 5
  %86 = load float, float* %word_spacing, align 4, !tbaa !88
  %87 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in97 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %87, i32 0, i32 0
  %word_spacing98 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in97, i32 0, i32 5
  %88 = load float, float* %word_spacing98, align 4, !tbaa !89
  %cmp99 = fcmp une float %86, %88
  br i1 %cmp99, label %if.then.101, label %if.end.119

if.then.101:                                      ; preds = %if.end.95
  %89 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer102 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %89, i32 0, i32 2
  %chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer102, i32 0, i32 1
  %arraydecay103 = getelementptr inbounds [200 x i8], [200 x i8]* %chars, i32 0, i32 0
  %90 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer104 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %90, i32 0, i32 2
  %count_chars105 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer104, i32 0, i32 3
  %91 = load i32, i32* %count_chars105, align 4, !tbaa !67
  %conv106 = sext i32 %91 to i64
  %call107 = call i8* @memchr(i8* %arraydecay103, i32 32, i64 %conv106) #7
  %tobool108 = icmp ne i8* %call107, null
  br i1 %tobool108, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %if.then.101
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %93 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in110 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %93, i32 0, i32 0
  %word_spacing111 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in110, i32 0, i32 5
  %94 = load float, float* %word_spacing111, align 4, !tbaa !89
  %conv112 = fpext float %94 to double
  %call113 = call i8* @pprintg1(%struct.stream_s* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), double %conv112) #6
  %95 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in114 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %95, i32 0, i32 0
  %word_spacing115 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in114, i32 0, i32 5
  %96 = load float, float* %word_spacing115, align 4, !tbaa !89
  %97 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out116 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %97, i32 0, i32 4
  %word_spacing117 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out116, i32 0, i32 5
  store float %96, float* %word_spacing117, align 4, !tbaa !88
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.109, %if.then.101
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.95
  %98 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call120 = call i32 @flush_text_buffer(%struct.gx_device_pdf_s* %98) #6
  store i32 %call120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %if.end.119, %if.then.78, %cleanup, %if.then.1, %if.then
  %99 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define internal i32 @flush_text_buffer(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %cur = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !69
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %8 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %10, i32 0, i32 0
  %pdfont1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 1
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !73
  store %struct.pdf_font_resource_s* %11, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call = call i32 @pdf_assign_font_object_id(%struct.gx_device_pdf_s* %13, %struct.pdf_font_resource_s* %14) #6
  store i32 %call, i32* %code, align 4, !tbaa !13
  %15 = load i32, i32* %code, align 4, !tbaa !13
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 205
  %19 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !90
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %21 = bitcast %struct.pdf_font_resource_s* %20 to %struct.pdf_resource_s*
  %call4 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %17, %struct.cos_dict_s* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct.pdf_resource_s* %21) #6
  store i32 %call4, i32* %code, align 4, !tbaa !13
  %22 = load i32, i32* %code, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %22, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %23 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %entry
  %26 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer10 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %26, i32 0, i32 2
  %count_moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer10, i32 0, i32 2
  %27 = load i32, i32* %count_moves, align 4, !tbaa !68
  %cmp11 = icmp sgt i32 %27, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %cur, align 4, !tbaa !13
  %30 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %use_leading = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %30, i32 0, i32 6
  %31 = load i32, i32* %use_leading, align 4, !tbaa !91
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.12
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i32 @stream_puts(%struct.stream_s* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.12
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call16 = call i32 @stream_puts(%struct.stream_s* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #6
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %34 = load i32, i32* %i, align 4, !tbaa !13
  %35 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer17 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %35, i32 0, i32 2
  %count_moves18 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer17, i32 0, i32 2
  %36 = load i32, i32* %count_moves18, align 4, !tbaa !68
  %cmp19 = icmp slt i32 %34, %36
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer20 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %39, i32 0, i32 2
  %moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer20, i32 0, i32 0
  %arrayidx = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves, i32 0, i64 %idxprom
  %index = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx, i32 0, i32 0
  %40 = load i32, i32* %index, align 4, !tbaa !92
  store i32 %40, i32* %next, align 4, !tbaa !13
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer21 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %42, i32 0, i32 2
  %chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer21, i32 0, i32 1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %chars, i32 0, i32 0
  %43 = load i32, i32* %cur, align 4, !tbaa !13
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %44 = load i32, i32* %next, align 4, !tbaa !13
  %45 = load i32, i32* %cur, align 4, !tbaa !13
  %sub = sub nsw i32 %44, %45
  %call22 = call i32 @pdf_put_string(%struct.gx_device_pdf_s* %41, i8* %add.ptr, i32 %sub) #6
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom23 = sext i32 %47 to i64
  %48 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer24 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %48, i32 0, i32 2
  %moves25 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves25, i32 0, i64 %idxprom23
  %amount = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx26, i32 0, i32 1
  %49 = load float, float* %amount, align 4, !tbaa !94
  %conv = fpext float %49 to double
  %call27 = call i8* @pprintg1(%struct.stream_s* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), double %conv) #6
  %50 = load i32, i32* %next, align 4, !tbaa !13
  store i32 %50, i32* %cur, align 4, !tbaa !13
  %51 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer28 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %53, i32 0, i32 2
  %count_chars29 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer28, i32 0, i32 3
  %54 = load i32, i32* %count_chars29, align 4, !tbaa !67
  %55 = load i32, i32* %cur, align 4, !tbaa !13
  %cmp30 = icmp sgt i32 %54, %55
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.end
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %57 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer33 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %57, i32 0, i32 2
  %chars34 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer33, i32 0, i32 1
  %arraydecay35 = getelementptr inbounds [200 x i8], [200 x i8]* %chars34, i32 0, i32 0
  %58 = load i32, i32* %cur, align 4, !tbaa !13
  %idx.ext36 = sext i32 %58 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext36
  %59 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer38 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %59, i32 0, i32 2
  %count_chars39 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer38, i32 0, i32 3
  %60 = load i32, i32* %count_chars39, align 4, !tbaa !67
  %61 = load i32, i32* %cur, align 4, !tbaa !13
  %sub40 = sub nsw i32 %60, %61
  %call41 = call i32 @pdf_put_string(%struct.gx_device_pdf_s* %56, i8* %add.ptr37, i32 %sub40) #6
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %for.end
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call43 = call i32 @stream_puts(%struct.stream_s* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #6
  %63 = bitcast i32* %cur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %if.end.53

if.else:                                          ; preds = %if.end.9
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %66 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer44 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %66, i32 0, i32 2
  %chars45 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer44, i32 0, i32 1
  %arraydecay46 = getelementptr inbounds [200 x i8], [200 x i8]* %chars45, i32 0, i32 0
  %67 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer47 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %67, i32 0, i32 2
  %count_chars48 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer47, i32 0, i32 3
  %68 = load i32, i32* %count_chars48, align 4, !tbaa !67
  %call49 = call i32 @pdf_put_string(%struct.gx_device_pdf_s* %65, i8* %arraydecay46, i32 %68) #6
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %70 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %use_leading50 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %70, i32 0, i32 6
  %71 = load i32, i32* %use_leading50, align 4, !tbaa !91
  %tobool51 = icmp ne i32 %71, 0
  %cond = select i1 %tobool51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)
  %call52 = call i32 @stream_puts(%struct.stream_s* %69, i8* %cond) #6
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.end.42
  %72 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer54 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %72, i32 0, i32 2
  %count_chars55 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer54, i32 0, i32 3
  store i32 0, i32* %count_chars55, align 4, !tbaa !67
  %73 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer56 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %73, i32 0, i32 2
  %count_moves57 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer56, i32 0, i32 2
  store i32 0, i32* %count_moves57, align 4, !tbaa !68
  %74 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %use_leading58 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %74, i32 0, i32 6
  store i32 0, i32* %use_leading58, align 4, !tbaa !91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.53, %cleanup
  %75 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #2

declare i32 @pdf_assign_font_object_id(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare i32 @pdf_used_charproc_resources(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #2

declare i32 @gs_matrix_compare(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_set_text_matrix(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %dist = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dist_y = alloca float, align 4
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 47
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !69
  store %struct.stream_s* %6, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %use_leading = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 6
  store i32 0, i32* %use_leading, align 4, !tbaa !91
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %8, i32 0, i32 4
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out, i32 0, i32 3
  %9 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %9, i32 0, i32 0
  %matrix1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %call = call i32 @matrix_is_compatible(%struct.gs_matrix_s* %matrix, %struct.gs_matrix_s* %matrix1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.35

if.then:                                          ; preds = %entry
  %10 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %12, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !82
  %14 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %14, i32 0, i32 8
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start, i32 0, i32 0
  %15 = load double, double* %x2, align 8, !tbaa !65
  %sub = fsub double %13, %15
  %16 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start3 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %16, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start3, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !84
  %18 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start4 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %18, i32 0, i32 8
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start4, i32 0, i32 1
  %19 = load double, double* %y5, align 8, !tbaa !64
  %sub6 = fsub double %17, %19
  %20 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in7 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %20, i32 0, i32 0
  %matrix8 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in7, i32 0, i32 3
  %call9 = call i32 @set_text_distance(%struct.gs_point_s* %dist, double %sub, double %sub6, %struct.gs_matrix_s* %matrix8) #6
  store i32 %call9, i32* %code, align 4, !tbaa !13
  %21 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %23 = load double, double* %x11, align 8, !tbaa !95
  %cmp12 = fcmp oeq double %23, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %24 = load double, double* %y13, align 8, !tbaa !96
  %cmp14 = fcmp olt double %24, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %25 = bitcast float* %dist_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %26 = load double, double* %y16, align 8, !tbaa !96
  %sub17 = fsub double -0.000000e+00, %26
  %conv = fptrunc double %sub17 to float
  store float %conv, float* %dist_y, align 4, !tbaa !9
  %27 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %leading = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %27, i32 0, i32 5
  %28 = load double, double* %leading, align 8, !tbaa !19
  %29 = load float, float* %dist_y, align 4, !tbaa !9
  %conv18 = fpext float %29 to double
  %sub19 = fsub double %28, %conv18
  %call20 = call double @fabs(double %sub19) #8
  %cmp21 = fcmp ogt double %call20, 5.000000e-04
  br i1 %cmp21, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.then.15
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %31 = load float, float* %dist_y, align 4, !tbaa !9
  %conv24 = fpext float %31 to double
  %call25 = call i8* @pprintg1(%struct.stream_s* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), double %conv24) #6
  %32 = load float, float* %dist_y, align 4, !tbaa !9
  %conv26 = fpext float %32 to double
  %33 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %leading27 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %33, i32 0, i32 5
  store double %conv26, double* %leading27, align 8, !tbaa !19
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %if.then.15
  %34 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %use_leading29 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %34, i32 0, i32 6
  store i32 1, i32* %use_leading29, align 4, !tbaa !91
  %35 = bitcast float* %dist_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %if.end
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %37 = load double, double* %x30, align 8, !tbaa !95
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %38 = load double, double* %y31, align 8, !tbaa !96
  %call32 = call i8* @pprintg2(%struct.stream_s* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), double %37, double %38) #6
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.10
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.else.35:                                       ; preds = %entry
  %41 = bitcast double* %sx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %43 = load float, float* %arrayidx, align 4, !tbaa !9
  %conv36 = fpext float %43 to double
  %div = fdiv double 7.200000e+01, %conv36
  store double %div, double* %sx, align 8, !tbaa !11
  %44 = bitcast double* %sy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 22
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution37, i32 0, i64 1
  %46 = load float, float* %arrayidx38, align 4, !tbaa !9
  %conv39 = fpext float %46 to double
  %div40 = fdiv double 7.200000e+01, %conv39
  store double %div40, double* %sy, align 8, !tbaa !11
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %48 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in41 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %48, i32 0, i32 0
  %matrix42 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in41, i32 0, i32 3
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix42, i32 0, i32 0
  %49 = load float, float* %xx, align 4, !tbaa !97
  %conv43 = fpext float %49 to double
  %50 = load double, double* %sx, align 8, !tbaa !11
  %mul = fmul double %conv43, %50
  %51 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in44 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %51, i32 0, i32 0
  %matrix45 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in44, i32 0, i32 3
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix45, i32 0, i32 1
  %52 = load float, float* %xy, align 4, !tbaa !98
  %conv46 = fpext float %52 to double
  %53 = load double, double* %sy, align 8, !tbaa !11
  %mul47 = fmul double %conv46, %53
  %54 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in48 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %54, i32 0, i32 0
  %matrix49 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in48, i32 0, i32 3
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix49, i32 0, i32 2
  %55 = load float, float* %yx, align 4, !tbaa !99
  %conv50 = fpext float %55 to double
  %56 = load double, double* %sx, align 8, !tbaa !11
  %mul51 = fmul double %conv50, %56
  %57 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in52 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %57, i32 0, i32 0
  %matrix53 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in52, i32 0, i32 3
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix53, i32 0, i32 3
  %58 = load float, float* %yy, align 4, !tbaa !100
  %conv54 = fpext float %58 to double
  %59 = load double, double* %sy, align 8, !tbaa !11
  %mul55 = fmul double %conv54, %59
  %60 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start56 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %60, i32 0, i32 1
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start56, i32 0, i32 0
  %61 = load double, double* %x57, align 8, !tbaa !82
  %62 = load double, double* %sx, align 8, !tbaa !11
  %mul58 = fmul double %61, %62
  %63 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start59 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %63, i32 0, i32 1
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start59, i32 0, i32 1
  %64 = load double, double* %y60, align 8, !tbaa !84
  %65 = load double, double* %sy, align 8, !tbaa !11
  %mul61 = fmul double %64, %65
  %call62 = call i8* @pprintg6(%struct.stream_s* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), double %mul, double %mul47, double %mul51, double %mul55, double %mul58, double %mul61) #6
  %66 = bitcast double* %sy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast double* %sx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.35, %cleanup.cont
  %68 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start64 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %68, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start64, i32 0, i32 0
  %69 = load double, double* %x65, align 8, !tbaa !82
  %70 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start66 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %70, i32 0, i32 8
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start66, i32 0, i32 0
  store double %69, double* %x67, align 8, !tbaa !65
  %71 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start68 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %71, i32 0, i32 1
  %y69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start68, i32 0, i32 1
  %72 = load double, double* %y69, align 8, !tbaa !84
  %73 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %line_start70 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %73, i32 0, i32 8
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %line_start70, i32 0, i32 1
  store double %72, double* %y71, align 8, !tbaa !64
  %74 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out72 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %74, i32 0, i32 4
  %matrix73 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out72, i32 0, i32 3
  %75 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in74 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %75, i32 0, i32 0
  %matrix75 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in74, i32 0, i32 3
  %76 = bitcast %struct.gs_matrix_s* %matrix73 to i8*
  %77 = bitcast %struct.gs_matrix_s* %matrix75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 24, i32 4, i1 false), !tbaa.struct !101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.end.63, %cleanup
  %78 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_from_string_to_text(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @sync_text_state(%struct.gx_device_pdf_s* %0) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @pdf_close_text_contents(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %4, i32 0, i32 4
  %pdfont = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out, i32 0, i32 1
  store %struct.pdf_font_resource_s* null, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !72
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 0
  %pdfont1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 1
  store %struct.pdf_font_resource_s* null, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !73
  %6 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out2 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %6, i32 0, i32 4
  %size = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %out2, i32 0, i32 2
  store double 0.000000e+00, double* %size, align 8, !tbaa !74
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in3 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 0
  %size4 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in3, i32 0, i32 2
  store double 0.000000e+00, double* %size4, align 8, !tbaa !75
  %8 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_render_mode_uses_stroke(%struct.gx_device_pdf_s* %pdev, %struct.pdf_text_state_values_s* %ptsv) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ptsv.addr = alloca %struct.pdf_text_state_values_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_text_state_values_s* %ptsv, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %0, i32 0, i32 4
  %1 = load i32, i32* %render_mode, align 4, !tbaa !102
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %2, i32 0, i32 4
  %3 = load i32, i32* %render_mode1, align 4, !tbaa !102
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode4 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %4, i32 0, i32 4
  %5 = load i32, i32* %render_mode4, align 4, !tbaa !102
  %cmp5 = icmp eq i32 %5, 5
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.3
  %6 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode6 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %6, i32 0, i32 4
  %7 = load i32, i32* %render_mode6, align 4, !tbaa !102
  %cmp7 = icmp eq i32 %7, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define void @pdf_get_text_state_values(%struct.gx_device_pdf_s* %pdev, %struct.pdf_text_state_values_s* %ptsv) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ptsv.addr = alloca %struct.pdf_text_state_values_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_text_state_values_s* %ptsv, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %3, i32 0, i32 0
  %4 = bitcast %struct.pdf_text_state_values_s* %0 to i8*
  %5 = bitcast %struct.pdf_text_state_values_s* %in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf_set_text_wmode(%struct.gx_device_pdf_s* %pdev, i32 %wmode) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %wmode.addr = alloca i32, align 4
  %pts = alloca %struct.pdf_text_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !13
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load i32, i32* %wmode.addr, align 4, !tbaa !13
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %wmode1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 3
  store i32 %4, i32* %wmode1, align 4, !tbaa !81
  %6 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s* %pdev, %struct.pdf_text_state_values_s* %ptsv) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ptsv.addr = alloca %struct.pdf_text_state_values_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_text_state_values_s* %ptsv, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %4, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %5 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 0
  %character_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 0
  %8 = load float, float* %character_spacing, align 4, !tbaa !71
  %9 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %character_spacing1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %9, i32 0, i32 0
  %10 = load float, float* %character_spacing1, align 4, !tbaa !103
  %cmp2 = fcmp oeq float %8, %10
  br i1 %cmp2, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in3 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %11, i32 0, i32 0
  %pdfont = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in3, i32 0, i32 1
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !73
  %13 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %pdfont4 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %13, i32 0, i32 1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.pdf_font_resource_s* %12, %14
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.27

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %15 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in7 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %15, i32 0, i32 0
  %size = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in7, i32 0, i32 2
  %16 = load double, double* %size, align 8, !tbaa !75
  %17 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %17, i32 0, i32 2
  %18 = load double, double* %size8, align 8, !tbaa !105
  %cmp9 = fcmp oeq double %16, %18
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.27

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %19 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in11 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %19, i32 0, i32 0
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in11, i32 0, i32 4
  %20 = load i32, i32* %render_mode, align 4, !tbaa !87
  %21 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode12 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %21, i32 0, i32 4
  %22 = load i32, i32* %render_mode12, align 4, !tbaa !102
  %cmp13 = icmp eq i32 %20, %22
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.27

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %23 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in15 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %23, i32 0, i32 0
  %word_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in15, i32 0, i32 5
  %24 = load float, float* %word_spacing, align 4, !tbaa !89
  %25 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %word_spacing16 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %25, i32 0, i32 5
  %26 = load float, float* %word_spacing16, align 4, !tbaa !106
  %cmp17 = fcmp oeq float %24, %26
  br i1 %cmp17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %land.lhs.true.14
  %27 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in19 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %27, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in19, i32 0, i32 3
  %28 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %matrix20 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %28, i32 0, i32 3
  %call = call i32 @gs_matrix_compare(%struct.gs_matrix_s* %matrix, %struct.gs_matrix_s* %matrix20) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.18
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %30 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %matrix22 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %30, i32 0, i32 3
  %call23 = call i32 @add_text_delta_move(%struct.gx_device_pdf_s* %29, %struct.gs_matrix_s* %matrix22) #6
  store i32 %call23, i32* %code, align 4, !tbaa !13
  %31 = load i32, i32* %code, align 4, !tbaa !13
  %cmp24 = icmp sge i32 %31, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %if.then
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call28 = call i32 @sync_text_state(%struct.gx_device_pdf_s* %32) #6
  store i32 %call28, i32* %code, align 4, !tbaa !13
  %33 = load i32, i32* %code, align 4, !tbaa !13
  %cmp29 = icmp slt i32 %33, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %34 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then.25, %if.then.21
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %entry
  %36 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in33 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %36, i32 0, i32 0
  %37 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %38 = bitcast %struct.pdf_text_state_values_s* %in33 to i8*
  %39 = bitcast %struct.pdf_text_state_values_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 56, i32 8, i1 false), !tbaa.struct !18
  %40 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %continue_line = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %40, i32 0, i32 7
  store i32 0, i32* %continue_line, align 4, !tbaa !66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.32, %cleanup
  %41 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @add_text_delta_move(%struct.gx_device_pdf_s* %pdev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dist = alloca %struct.gs_point_s, align 8
  %dw = alloca double, align 8
  %dnotw = alloca double, align 8
  %tdw = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code31 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %call = call i32 @matrix_is_compatible(%struct.gs_matrix_s* %4, %struct.gs_matrix_s* %matrix) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %6 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 4
  %8 = load float, float* %tx, align 4, !tbaa !107
  %9 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %9, i32 0, i32 0
  %matrix2 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in1, i32 0, i32 3
  %tx3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix2, i32 0, i32 4
  %10 = load float, float* %tx3, align 4, !tbaa !108
  %sub = fsub float %8, %10
  %conv = fpext float %sub to double
  store double %conv, double* %dx, align 8, !tbaa !11
  %11 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 5
  %13 = load float, float* %ty, align 4, !tbaa !109
  %14 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in4 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %14, i32 0, i32 0
  %matrix5 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in4, i32 0, i32 3
  %ty6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix5, i32 0, i32 5
  %15 = load float, float* %ty6, align 4, !tbaa !110
  %sub7 = fsub float %13, %15
  %conv8 = fpext float %sub7 to double
  store double %conv8, double* %dy, align 8, !tbaa !11
  %16 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast double* %dw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast double* %dnotw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast double* %tdw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load double, double* %dx, align 8, !tbaa !11
  %22 = load double, double* %dy, align 8, !tbaa !11
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call9 = call i32 @set_text_distance(%struct.gs_point_s* %dist, double %21, double %22, %struct.gs_matrix_s* %23) #6
  store i32 %call9, i32* %code, align 4, !tbaa !13
  %24 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end:                                           ; preds = %if.then
  %26 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %wmode = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %26, i32 0, i32 3
  %27 = load i32, i32* %wmode, align 4, !tbaa !81
  %tobool12 = icmp ne i32 %27, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %28 = load double, double* %y, align 8, !tbaa !96
  store double %28, double* %dw, align 8, !tbaa !11
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %29 = load double, double* %x, align 8, !tbaa !95
  store double %29, double* %dnotw, align 8, !tbaa !11
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %30 = load double, double* %x14, align 8, !tbaa !95
  store double %30, double* %dw, align 8, !tbaa !11
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %31 = load double, double* %y15, align 8, !tbaa !96
  store double %31, double* %dnotw, align 8, !tbaa !11
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  %32 = load double, double* %dnotw, align 8, !tbaa !11
  %cmp17 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp17, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end.16
  %33 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %33, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %34 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp19 = icmp sgt i32 %34, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.37

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %35 = load double, double* %dw, align 8, !tbaa !11
  %mul = fmul double %35, -1.000000e+03
  %36 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in22 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %36, i32 0, i32 0
  %size = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in22, i32 0, i32 2
  %37 = load double, double* %size, align 8, !tbaa !75
  %div = fdiv double %mul, %37
  store double %div, double* %tdw, align 8, !tbaa !11
  %38 = load double, double* %tdw, align 8, !tbaa !11
  %cmp23 = fcmp oge double %38, -1.630000e+04
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.21
  %39 = load double, double* %tdw, align 8, !tbaa !11
  %40 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in25 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %40, i32 0, i32 0
  %size26 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in25, i32 0, i32 2
  %41 = load double, double* %size26, align 8, !tbaa !75
  %mul27 = fmul double %39, %41
  %cmp28 = fcmp olt double %mul27, 1.630000e+04
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.21
  %42 = phi i1 [ false, %land.lhs.true.21 ], [ %cmp28, %land.rhs ]
  br i1 %42, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %land.end
  %43 = bitcast i32* %code31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %45 = load double, double* %tdw, align 8, !tbaa !11
  %call32 = call i32 @append_text_move(%struct.pdf_text_state_s* %44, double %45) #6
  store i32 %call32, i32* %code31, align 4, !tbaa !13
  %46 = load i32, i32* %code31, align 4, !tbaa !13
  %cmp33 = icmp sge i32 %46, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.30
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.35, %if.end.36
  %47 = bitcast i32* %code31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont, %land.end, %land.lhs.true, %if.end.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %cleanup, %if.then.11
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast double* %tdw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast double* %dnotw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast double* %dw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  %53 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.45, label %cleanup.50 [
    i32 0, label %cleanup.cont.46
    i32 2, label %finish
  ]

cleanup.cont.46:                                  ; preds = %cleanup.38
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont.46, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

finish:                                           ; preds = %cleanup.38
  %55 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in48 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %55, i32 0, i32 0
  %matrix49 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in48, i32 0, i32 3
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gs_matrix_s* %matrix49 to i8*
  %58 = bitcast %struct.gs_matrix_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 24, i32 4, i1 false), !tbaa.struct !101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %finish, %if.end.47, %cleanup.38
  %59 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @pdf_text_distance_transform(double %wx, double %wy, %struct.pdf_text_state_s* %pts, %struct.gs_point_s* %ppt) #0 {
entry:
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store double %wx, double* %wx.addr, align 8, !tbaa !11
  store double %wy, double* %wy.addr, align 8, !tbaa !11
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load double, double* %wx.addr, align 8, !tbaa !11
  %1 = load double, double* %wy.addr, align 8, !tbaa !11
  %2 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %2, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform(double %0, double %1, %struct.gs_matrix_s* %matrix, %struct.gs_point_s* %3) #6
  ret i32 %call
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf_text_position(%struct.gx_device_pdf_s* %pdev, %struct.gs_point_s* %ppt) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %4, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 4
  %5 = load float, float* %tx, align 4, !tbaa !108
  %conv = fpext float %5 to double
  %6 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !95
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 0
  %matrix2 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in1, i32 0, i32 3
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix2, i32 0, i32 5
  %8 = load float, float* %ty, align 4, !tbaa !110
  %conv3 = fpext float %8 to double
  %9 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 1
  store double %conv3, double* %y, align 8, !tbaa !96
  %10 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_bitmap_char_update_bbox(%struct.gx_device_pdf_s* %pdev, i32 %x_offset, i32 %y_offset, double %x, double %y) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %x_offset.addr = alloca i32, align 4
  %y_offset.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %x_offset, i32* %x_offset.addr, align 4, !tbaa !13
  store i32 %y_offset, i32* %y_offset.addr, align 4, !tbaa !13
  store double %x, double* %x.addr, align 8, !tbaa !11
  store double %y, double* %y.addr, align 8, !tbaa !11
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %5, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 4
  %6 = load float, float* %tx, align 4, !tbaa !108
  %7 = load i32, i32* %x_offset.addr, align 4, !tbaa !13
  %conv = sitofp i32 %7 to float
  %add = fadd float %6, %conv
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %9 = load float, float* %arrayidx, align 4, !tbaa !9
  %div = fdiv float %9, 7.200000e+01
  %div1 = fdiv float %add, %div
  %conv2 = fpext float %div1 to double
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv2, double* %x3, align 8, !tbaa !111
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in4 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %10, i32 0, i32 0
  %matrix5 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in4, i32 0, i32 3
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix5, i32 0, i32 5
  %11 = load float, float* %ty, align 4, !tbaa !110
  %12 = load i32, i32* %y_offset.addr, align 4, !tbaa !13
  %conv6 = sitofp i32 %12 to float
  %add7 = fadd float %11, %conv6
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 1
  %14 = load float, float* %arrayidx9, align 4, !tbaa !9
  %div10 = fdiv float %14, 7.200000e+01
  %div11 = fdiv float %add7, %div10
  %conv12 = fpext float %div11 to double
  %p13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p13, i32 0, i32 1
  store double %conv12, double* %y14, align 8, !tbaa !112
  %p15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p15, i32 0, i32 0
  %15 = load double, double* %x16, align 8, !tbaa !111
  %16 = load double, double* %x.addr, align 8, !tbaa !11
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %17, i32 0, i32 22
  %arrayidx18 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution17, i32 0, i64 0
  %18 = load float, float* %arrayidx18, align 4, !tbaa !9
  %div19 = fdiv float %18, 7.200000e+01
  %conv20 = fpext float %div19 to double
  %div21 = fdiv double %16, %conv20
  %add22 = fadd double %15, %div21
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %add22, double* %x23, align 8, !tbaa !113
  %p24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p24, i32 0, i32 1
  %19 = load double, double* %y25, align 8, !tbaa !112
  %20 = load double, double* %y.addr, align 8, !tbaa !11
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 22
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution26, i32 0, i64 0
  %22 = load float, float* %arrayidx27, align 4, !tbaa !9
  %div28 = fdiv float %22, 7.200000e+01
  %conv29 = fpext float %div28 to double
  %div30 = fdiv double %20, %conv29
  %add31 = fadd double %19, %div30
  %q32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q32, i32 0, i32 1
  store double %add31, double* %y33, align 8, !tbaa !114
  %p34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p34, i32 0, i32 0
  %23 = load double, double* %x35, align 8, !tbaa !111
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 129
  %p36 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p36, i32 0, i32 0
  %25 = load double, double* %x37, align 8, !tbaa !115
  %cmp = fcmp olt double %23, %25
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %p39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p39, i32 0, i32 0
  %26 = load double, double* %x40, align 8, !tbaa !111
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 129
  %p42 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox41, i32 0, i32 0
  %x43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p42, i32 0, i32 0
  store double %26, double* %x43, align 8, !tbaa !115
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p44 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p44, i32 0, i32 1
  %28 = load double, double* %y45, align 8, !tbaa !112
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 129
  %p47 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox46, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p47, i32 0, i32 1
  %30 = load double, double* %y48, align 8, !tbaa !116
  %cmp49 = fcmp olt double %28, %30
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end
  %p52 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p52, i32 0, i32 1
  %31 = load double, double* %y53, align 8, !tbaa !112
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox54 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %32, i32 0, i32 129
  %p55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox54, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p55, i32 0, i32 1
  store double %31, double* %y56, align 8, !tbaa !116
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %if.end
  %q58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q58, i32 0, i32 0
  %33 = load double, double* %x59, align 8, !tbaa !113
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox60 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 129
  %q61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox60, i32 0, i32 1
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q61, i32 0, i32 0
  %35 = load double, double* %x62, align 8, !tbaa !117
  %cmp63 = fcmp ogt double %33, %35
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.57
  %q66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q66, i32 0, i32 0
  %36 = load double, double* %x67, align 8, !tbaa !113
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 129
  %q69 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox68, i32 0, i32 1
  %x70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q69, i32 0, i32 0
  store double %36, double* %x70, align 8, !tbaa !117
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.end.57
  %q72 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q72, i32 0, i32 1
  %38 = load double, double* %y73, align 8, !tbaa !114
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 129
  %q75 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox74, i32 0, i32 1
  %y76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q75, i32 0, i32 1
  %40 = load double, double* %y76, align 8, !tbaa !118
  %cmp77 = fcmp ogt double %38, %40
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.end.71
  %q80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q80, i32 0, i32 1
  %41 = load double, double* %y81, align 8, !tbaa !114
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %BBox82 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 129
  %q83 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox82, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q83, i32 0, i32 1
  store double %41, double* %y84, align 8, !tbaa !118
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.end.71
  %43 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pdf_append_chars(%struct.gx_device_pdf_s* %pdev, i8* %str, i32 %size, double %wx, double %wy, i32 %nobreak) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %nobreak.addr = alloca i32, align 4
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %p = alloca i8*, align 8
  %left = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code25 = alloca i32, align 4
  %copy = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !13
  store double %wx, double* %wx.addr, align 8, !tbaa !11
  store double %wy, double* %wy.addr, align 8, !tbaa !11
  store i32 %nobreak, i32* %nobreak.addr, align 4, !tbaa !13
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !13
  store i32 %7, i32* %left, align 4, !tbaa !13
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %8, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %9 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %10, i32 0, i32 2
  %count_moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer1, i32 0, i32 2
  %11 = load i32, i32* %count_moves, align 4, !tbaa !68
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %12, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 4
  %13 = load float, float* %tx, align 4, !tbaa !108
  %conv = fpext float %13 to double
  %14 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %14, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !82
  %15 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %15, i32 0, i32 9
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos, i32 0, i32 0
  store double %conv, double* %x3, align 8, !tbaa !83
  %16 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in4 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %16, i32 0, i32 0
  %matrix5 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in4, i32 0, i32 3
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix5, i32 0, i32 5
  %17 = load float, float* %ty, align 4, !tbaa !110
  %conv6 = fpext float %17 to double
  %18 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %start7 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %18, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start7, i32 0, i32 1
  store double %conv6, double* %y, align 8, !tbaa !84
  %19 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos8 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %19, i32 0, i32 9
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos8, i32 0, i32 1
  store double %conv6, double* %y9, align 8, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.end
  %20 = load i32, i32* %left, align 4, !tbaa !13
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer10 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %21, i32 0, i32 2
  %count_chars11 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer10, i32 0, i32 3
  %22 = load i32, i32* %count_chars11, align 4, !tbaa !67
  %cmp12 = icmp eq i32 %22, 200
  br i1 %cmp12, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %23 = load i32, i32* %nobreak.addr, align 4, !tbaa !13
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %24 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer16 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %24, i32 0, i32 2
  %count_chars17 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer16, i32 0, i32 3
  %25 = load i32, i32* %count_chars17, align 4, !tbaa !67
  %26 = load i32, i32* %left, align 4, !tbaa !13
  %add = add i32 %25, %26
  %cmp18 = icmp ugt i32 %add, 200
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15, %while.body
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @sync_text_state(%struct.gx_device_pdf_s* %28) #6
  store i32 %call, i32* %code, align 4, !tbaa !13
  %29 = load i32, i32* %code, align 4, !tbaa !13
  %cmp21 = icmp slt i32 %29, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  %30 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.20
  %31 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %continue_line = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %31, i32 0, i32 7
  store i32 1, i32* %continue_line, align 4, !tbaa !66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.72 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true.15, %lor.lhs.false
  %33 = bitcast i32* %code25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call26 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %34, i32 3) #6
  store i32 %call26, i32* %code25, align 4, !tbaa !13
  %35 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %code25, align 4, !tbaa !13
  %cmp27 = icmp slt i32 %36, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  %37 = load i32, i32* %code25, align 4, !tbaa !13
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.30:                                        ; preds = %if.else
  %38 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer31 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %38, i32 0, i32 2
  %count_chars32 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer31, i32 0, i32 3
  %39 = load i32, i32* %count_chars32, align 4, !tbaa !67
  %sub = sub nsw i32 200, %39
  %40 = load i32, i32* %left, align 4, !tbaa !13
  %cmp33 = icmp ult i32 %sub, %40
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %41 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer35 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %41, i32 0, i32 2
  %count_chars36 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer35, i32 0, i32 3
  %42 = load i32, i32* %count_chars36, align 4, !tbaa !67
  %sub37 = sub nsw i32 200, %42
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %43 = load i32, i32* %left, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub37, %cond.true ], [ %43, %cond.false ]
  store i32 %cond, i32* %copy, align 4, !tbaa !13
  %44 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer38 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %44, i32 0, i32 2
  %chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer38, i32 0, i32 1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %chars, i32 0, i32 0
  %45 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer39 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %45, i32 0, i32 2
  %count_chars40 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer39, i32 0, i32 3
  %46 = load i32, i32* %count_chars40, align 4, !tbaa !67
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i32, i32* %copy, align 4, !tbaa !13
  %conv41 = zext i32 %48 to i64
  %call42 = call i8* @memcpy(i8* %add.ptr, i8* %47, i64 %conv41) #9
  %49 = load i32, i32* %copy, align 4, !tbaa !13
  %50 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer43 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %50, i32 0, i32 2
  %count_chars44 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer43, i32 0, i32 3
  %51 = load i32, i32* %count_chars44, align 4, !tbaa !67
  %add45 = add i32 %51, %49
  store i32 %add45, i32* %count_chars44, align 4, !tbaa !67
  %52 = load i32, i32* %copy, align 4, !tbaa !13
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext46 = zext i32 %52 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %53, i64 %idx.ext46
  store i8* %add.ptr47, i8** %p, align 8, !tbaa !1
  %54 = load i32, i32* %copy, align 4, !tbaa !13
  %55 = load i32, i32* %left, align 4, !tbaa !13
  %sub48 = sub i32 %55, %54
  store i32 %sub48, i32* %left, align 4, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %cond.end, %if.then.29
  %56 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %code25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %cleanup.dest.51 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.51, label %cleanup.72 [
    i32 0, label %cleanup.cont.52
  ]

cleanup.cont.52:                                  ; preds = %cleanup.49
  br label %if.end.53

if.end.53:                                        ; preds = %cleanup.cont.52, %cleanup.cont
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %58 = load double, double* %wx.addr, align 8, !tbaa !11
  %59 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in54 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %59, i32 0, i32 0
  %matrix55 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in54, i32 0, i32 3
  %tx56 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix55, i32 0, i32 4
  %60 = load float, float* %tx56, align 4, !tbaa !108
  %conv57 = fpext float %60 to double
  %add58 = fadd double %conv57, %58
  %conv59 = fptrunc double %add58 to float
  store float %conv59, float* %tx56, align 4, !tbaa !108
  %61 = load double, double* %wy.addr, align 8, !tbaa !11
  %62 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %in60 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %62, i32 0, i32 0
  %matrix61 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in60, i32 0, i32 3
  %ty62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix61, i32 0, i32 5
  %63 = load float, float* %ty62, align 4, !tbaa !110
  %conv63 = fpext float %63 to double
  %add64 = fadd double %conv63, %61
  %conv65 = fptrunc double %add64 to float
  store float %conv65, float* %ty62, align 4, !tbaa !110
  %64 = load double, double* %wx.addr, align 8, !tbaa !11
  %65 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos66 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %65, i32 0, i32 9
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos66, i32 0, i32 0
  %66 = load double, double* %x67, align 8, !tbaa !83
  %add68 = fadd double %66, %64
  store double %add68, double* %x67, align 8, !tbaa !83
  %67 = load double, double* %wy.addr, align 8, !tbaa !11
  %68 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %out_pos69 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %68, i32 0, i32 9
  %y70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %out_pos69, i32 0, i32 1
  %69 = load double, double* %y70, align 8, !tbaa !85
  %add71 = fadd double %69, %67
  store double %add71, double* %y70, align 8, !tbaa !85
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %while.end, %cleanup.49, %cleanup
  %70 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @pdf_compare_text_state_for_charpath(%struct.pdf_text_state_s* %pts, %struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_font_s* %font, %struct.gs_text_params_s* %text) #0 {
entry:
  %retval = alloca i32, align 4
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %code = alloca i32, align 4
  %size = alloca float, align 4
  %smat = alloca %struct.gs_matrix_s, align 4
  %tmat = alloca %struct.gs_matrix_s, align 4
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.gs_matrix_s* %tmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %5, i32 0, i32 2
  %6 = load i32, i32* %size1, align 4, !tbaa !119
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %8 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp ne i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType, align 4, !tbaa !121
  %cmp2 = icmp eq i32 %10, 3
  br i1 %cmp2, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType3, align 4, !tbaa !121
  %cmp4 = icmp eq i32 %12, 53
  br i1 %cmp4, label %if.then.14, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType6, align 4, !tbaa !121
  %cmp7 = icmp eq i32 %14, 51
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 11
  %16 = load i32, i32* %FontType9, align 4, !tbaa !121
  %cmp10 = icmp eq i32 %16, 52
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 11
  %18 = load i32, i32* %FontType12, align 4, !tbaa !121
  %cmp13 = icmp eq i32 %18, 54
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false.11
  %19 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %19, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %20 = load i8*, i8** %bytes, align 8, !tbaa !1
  %21 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer16 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %21, i32 0, i32 2
  %chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer16, i32 0, i32 1
  %22 = bitcast [200 x i8]* %chars to i8*
  %23 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %size17 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %23, i32 0, i32 2
  %24 = load i32, i32* %size17, align 4, !tbaa !119
  %conv = zext i32 %24 to i64
  %call = call i32 @memcmp(i8* %20, i8* %22, i64 %conv) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call20 = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %25, %struct.gs_font_s* %26, %struct.pdf_font_resource_s** %pdfont, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call20, i32* %code, align 4, !tbaa !13
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %cmp21 = icmp slt i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  %28 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %tobool25 = icmp ne %struct.pdf_font_resource_s* %28, null
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.30

lor.lhs.false.26:                                 ; preds = %if.end.24
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %30 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %30, i32 0, i32 0
  %pdfont27 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 1
  %31 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont27, align 8, !tbaa !73
  %cmp28 = icmp ne %struct.pdf_font_resource_s* %29, %31
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.26, %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false.26
  %32 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %32, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %33 = load double, double* %x, align 8, !tbaa !82
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 7
  %x32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %35 = load double, double* %x32, align 8, !tbaa !126
  %sub = fsub double %33, %35
  %call33 = call double @fabs(double %sub) #8
  %cmp34 = fcmp ogt double %call33, 1.000000e-02
  br i1 %cmp34, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.31
  %36 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %start37 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %36, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start37, i32 0, i32 1
  %37 = load double, double* %y, align 8, !tbaa !84
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 7
  %y39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point38, i32 0, i32 1
  %39 = load double, double* %y39, align 8, !tbaa !127
  %sub40 = fsub double %37, %39
  %call41 = call double @fabs(double %sub40) #8
  %cmp42 = fcmp ogt double %call41, 1.000000e-02
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.36, %if.end.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %lor.lhs.false.36
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %41 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 9
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call46 = call float @pdf_calculate_text_size(%struct.gs_imager_state_s* %40, %struct.pdf_font_resource_s* %41, %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %tmat, %struct.gs_font_s* %43, %struct.gx_device_pdf_s* %44) #6
  store float %call46, float* %size, align 4, !tbaa !9
  %45 = load float, float* %size, align 4, !tbaa !9
  %conv47 = fpext float %45 to double
  %46 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in48 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %46, i32 0, i32 0
  %size49 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in48, i32 0, i32 2
  %47 = load double, double* %size49, align 8, !tbaa !75
  %cmp50 = fcmp une double %conv47, %47
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.45
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.44, %if.then.30, %if.then.23, %if.then.18, %if.then.14, %if.then
  %48 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gs_matrix_s* %tmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %49) #1
  %50 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %50) #1
  %51 = bitcast float* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**, i8**, double**, i32*, i32*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare float @pdf_calculate_text_size(%struct.gs_imager_state_s*, %struct.pdf_font_resource_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_font_s*, %struct.gx_device_pdf_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf_get_text_render_mode(%struct.pdf_text_state_s* %pts) #0 {
entry:
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %0, i32 0, i32 0
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 4
  %1 = load i32, i32* %render_mode, align 4, !tbaa !87
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @pdf_set_text_render_mode(%struct.pdf_text_state_s* %pts, i32 %mode) #0 {
entry:
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !13
  %0 = load i32, i32* %mode.addr, align 4, !tbaa !13
  %1 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %1, i32 0, i32 0
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 4
  store i32 %0, i32* %render_mode, align 4, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_modify_text_render_mode(%struct.pdf_text_state_s* %pts, i32 %render_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  %render_mode.addr = alloca i32, align 4
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  store i32 %render_mode, i32* %render_mode.addr, align 4, !tbaa !13
  %0 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %0, i32 0, i32 0
  %render_mode1 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 4
  %1 = load i32, i32* %render_mode1, align 4, !tbaa !87
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.18
    i32 5, label %sw.bb.24
    i32 6, label %sw.bb.28
    i32 7, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in2 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %3, i32 0, i32 0
  %render_mode3 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in2, i32 0, i32 4
  store i32 2, i32* %render_mode3, align 4, !tbaa !87
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %4 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.4
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %sw.bb.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %5 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.8
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %6 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp13 = icmp eq i32 %6, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %sw.bb.12
  %7 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in15 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %7, i32 0, i32 0
  %render_mode16 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in15, i32 0, i32 4
  store i32 1, i32* %render_mode16, align 4, !tbaa !87
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb.12
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %8 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp19 = icmp eq i32 %8, 1
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %sw.bb.18
  %9 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in21 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %9, i32 0, i32 0
  %render_mode22 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in21, i32 0, i32 4
  store i32 6, i32* %render_mode22, align 4, !tbaa !87
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.18
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %10 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp25 = icmp eq i32 %10, 1
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.24
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.24
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %11 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp29 = icmp eq i32 %11, 1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.28
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %sw.bb.28
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %12 = load i32, i32* %render_mode.addr, align 4, !tbaa !13
  %cmp33 = icmp eq i32 %12, 1
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %sw.bb.32
  %13 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %in35 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %13, i32 0, i32 0
  %render_mode36 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in35, i32 0, i32 4
  store i32 5, i32* %render_mode36, align 4, !tbaa !87
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %sw.bb.32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.37, %if.end.31, %if.end.27, %if.end.23, %if.end.17, %if.end.11, %if.end.7, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.34, %if.then.30, %if.then.26, %if.then.20, %if.then.14, %if.then.10, %if.then.6, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @pdf_set_PaintType0_params(%struct.gx_device_pdf_s* %pdev, %struct.gs_imager_state_s* %pis, float %size, double %scaled_width, %struct.pdf_text_state_values_s* %ptsv) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %size.addr = alloca float, align 4
  %scaled_width.addr = alloca double, align 8
  %ptsv.addr = alloca %struct.pdf_text_state_values_s*, align 8
  %pts = alloca %struct.pdf_text_state_s*, align 8
  %saved_width = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store float %size, float* %size.addr, align 4, !tbaa !9
  store double %scaled_width, double* %scaled_width.addr, align 8, !tbaa !11
  store %struct.pdf_text_state_values_s* %ptsv, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 160
  %2 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !25
  %text_state = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %2, i32 0, i32 2
  %3 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state, align 8, !tbaa !16
  store %struct.pdf_text_state_s* %3, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %4 = bitcast double* %saved_width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %6 = load float, float* %half_width, align 4, !tbaa !128
  %conv = fpext float %6 to double
  store double %conv, double* %saved_width, align 8, !tbaa !11
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %8, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 3
  %9 = load i32, i32* %count_chars, align 4, !tbaa !67
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %10 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %PaintType0Width = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %10, i32 0, i32 10
  %11 = load double, double* %PaintType0Width, align 8, !tbaa !129
  %12 = load double, double* %scaled_width.addr, align 8, !tbaa !11
  %cmp2 = fcmp une double %11, %12
  br i1 %cmp2, label %if.then.4, label %if.end.32

if.then.4:                                        ; preds = %if.then
  %13 = load double, double* %scaled_width.addr, align 8, !tbaa !11
  %div = fdiv double %13, 2.000000e+00
  %conv5 = fptrunc double %div to float
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 3
  %half_width7 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params6, i32 0, i32 0
  store float %conv5, float* %half_width7, align 4, !tbaa !128
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %call = call i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s* %15, %struct.pdf_text_state_values_s* %16) #6
  store i32 %call, i32* %code, align 4, !tbaa !13
  %17 = load i32, i32* %code, align 4, !tbaa !13
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.4
  %18 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.4
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 160
  %20 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text11, align 8, !tbaa !25
  %text_state12 = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %20, i32 0, i32 2
  %21 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %text_state12, align 8, !tbaa !16
  %in = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %21, i32 0, i32 0
  %render_mode = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %in, i32 0, i32 4
  %22 = load i32, i32* %render_mode, align 4, !tbaa !87
  %23 = load %struct.pdf_text_state_values_s*, %struct.pdf_text_state_values_s** %ptsv.addr, align 8, !tbaa !1
  %render_mode13 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %23, i32 0, i32 4
  %24 = load i32, i32* %render_mode13, align 4, !tbaa !102
  %cmp14 = icmp eq i32 %22, %24
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call17 = call i32 @pdf_prepare_stroke(%struct.gx_device_pdf_s* %25, %struct.gs_imager_state_s* %26) #6
  store i32 %call17, i32* %code, align 4, !tbaa !13
  %27 = load i32, i32* %code, align 4, !tbaa !13
  %cmp18 = icmp sge i32 %27, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.16
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_pdf_s* %28 to %struct.gx_device_vector_s*
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call21 = call i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s* %29, %struct.gs_imager_state_s* %30, %struct.gx_stroke_params_s* null, %struct.gx_device_color_s* null, double 1.000000e+00) #6
  store i32 %call21, i32* %code, align 4, !tbaa !13
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %31 = load i32, i32* %code, align 4, !tbaa !13
  %cmp24 = icmp slt i32 %31, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %32 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %33 = load double, double* %saved_width, align 8, !tbaa !11
  %conv28 = fptrunc double %33 to float
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 3
  %half_width30 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params29, i32 0, i32 0
  store float %conv28, float* %half_width30, align 4, !tbaa !128
  %35 = load double, double* %scaled_width.addr, align 8, !tbaa !11
  %36 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts, align 8, !tbaa !1
  %PaintType0Width31 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %36, i32 0, i32 10
  store double %35, double* %PaintType0Width31, align 8, !tbaa !129
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.27, %if.then
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.26, %if.then.10
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast double* %saved_width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.pdf_text_state_s** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @pdf_prepare_stroke(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*) #2

declare i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, double) #2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

declare i32 @pdf_put_string(%struct.gx_device_pdf_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @matrix_is_compatible(%struct.gs_matrix_s* %pmat1, %struct.gs_matrix_s* %pmat2) #0 {
entry:
  %pmat1.addr = alloca %struct.gs_matrix_s*, align 8
  %pmat2.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %pmat1, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat2, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 0
  %1 = load float, float* %xx, align 4, !tbaa !130
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %xx1 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  %3 = load float, float* %xx1, align 4, !tbaa !130
  %cmp = fcmp oeq float %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 1
  %5 = load float, float* %xy, align 4, !tbaa !131
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %xy2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  %7 = load float, float* %xy2, align 4, !tbaa !131
  %cmp3 = fcmp oeq float %5, %7
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !132
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %yx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 2
  %11 = load float, float* %yx5, align 4, !tbaa !132
  %cmp6 = fcmp oeq float %9, %11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat2.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 3
  %13 = load float, float* %yy, align 4, !tbaa !133
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat1.addr, align 8, !tbaa !1
  %yy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 3
  %15 = load float, float* %yy7, align 4, !tbaa !133
  %cmp8 = fcmp oeq float %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @set_text_distance(%struct.gs_point_s* %pdist, double %dx, double %dy, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pdist.addr = alloca %struct.gs_point_s*, align 8
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %code = alloca i32, align 4
  %rounded = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_point_s* %pdist, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  store double %dx, double* %dx.addr, align 8, !tbaa !11
  store double %dy, double* %dy.addr, align 8, !tbaa !11
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %dx.addr, align 8, !tbaa !11
  %2 = load double, double* %dy.addr, align 8, !tbaa !11
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform_inverse(double %1, double %2, %struct.gs_matrix_s* %3, %struct.gs_point_s* %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !13
  %5 = bitcast double* %rounded to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp eq i32 %6, -23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %7, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !96
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !95
  br label %if.end.3

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  %12 = load double, double* %x4, align 8, !tbaa !95
  %13 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 0
  %14 = load double, double* %x5, align 8, !tbaa !95
  %add = fadd double %14, 5.000000e-01
  %call6 = call double @floor(double %add) #8
  store double %call6, double* %rounded, align 8, !tbaa !11
  %sub = fsub double %12, %call6
  %call7 = call double @fabs(double %sub) #8
  %cmp8 = fcmp olt double %call7, 5.000000e-04
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.3
  %15 = load double, double* %rounded, align 8, !tbaa !11
  %16 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %16, i32 0, i32 0
  store double %15, double* %x10, align 8, !tbaa !95
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.3
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 1
  %18 = load double, double* %y12, align 8, !tbaa !96
  %19 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %19, i32 0, i32 1
  %20 = load double, double* %y13, align 8, !tbaa !96
  %add14 = fadd double %20, 5.000000e-01
  %call15 = call double @floor(double %add14) #8
  store double %call15, double* %rounded, align 8, !tbaa !11
  %sub16 = fsub double %18, %call15
  %call17 = call double @fabs(double %sub16) #8
  %cmp18 = fcmp olt double %call17, 5.000000e-04
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.11
  %21 = load double, double* %rounded, align 8, !tbaa !11
  %22 = load %struct.gs_point_s*, %struct.gs_point_s** %pdist.addr, align 8, !tbaa !1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i32 0, i32 1
  store double %21, double* %y20, align 8, !tbaa !96
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.2
  %23 = bitcast double* %rounded to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #2

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #2

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @append_text_move(%struct.pdf_text_state_s* %pts, double %dw) #0 {
entry:
  %retval = alloca i32, align 4
  %pts.addr = alloca %struct.pdf_text_state_s*, align 8
  %dw.addr = alloca double, align 8
  %count = alloca i32, align 4
  %pos = alloca i32, align 4
  %rounded = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_text_state_s* %pts, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  store double %dw, double* %dw.addr, align 8, !tbaa !11
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %1, i32 0, i32 2
  %count_moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer, i32 0, i32 2
  %2 = load i32, i32* %count_moves, align 4, !tbaa !68
  store i32 %2, i32* %count, align 4, !tbaa !13
  %3 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer1 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %4, i32 0, i32 2
  %count_chars = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer1, i32 0, i32 3
  %5 = load i32, i32* %count_chars, align 4, !tbaa !67
  store i32 %5, i32* %pos, align 4, !tbaa !13
  %6 = bitcast double* %rounded to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %count, align 4, !tbaa !13
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %count, align 4, !tbaa !13
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %9 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer2 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %9, i32 0, i32 2
  %moves = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves, i32 0, i64 %idxprom
  %index = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %index, align 4, !tbaa !92
  %11 = load i32, i32* %pos, align 4, !tbaa !13
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %count, align 4, !tbaa !13
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %count, align 4, !tbaa !13
  %idxprom4 = sext i32 %dec to i64
  %13 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer5 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %13, i32 0, i32 2
  %moves6 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves6, i32 0, i64 %idxprom4
  %amount = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx7, i32 0, i32 1
  %14 = load float, float* %amount, align 4, !tbaa !94
  %conv = fpext float %14 to double
  %15 = load double, double* %dw.addr, align 8, !tbaa !11
  %add = fadd double %15, %conv
  store double %add, double* %dw.addr, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load double, double* %dw.addr, align 8, !tbaa !11
  %add8 = fadd double %16, 5.000000e-01
  %call = call double @floor(double %add8) #8
  store double %call, double* %rounded, align 8, !tbaa !11
  %17 = load double, double* %dw.addr, align 8, !tbaa !11
  %18 = load double, double* %rounded, align 8, !tbaa !11
  %sub9 = fsub double %17, %18
  %call10 = call double @fabs(double %sub9) #8
  %cmp11 = fcmp olt double %call10, 1.000000e-03
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %19 = load double, double* %rounded, align 8, !tbaa !11
  store double %19, double* %dw.addr, align 8, !tbaa !11
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %20 = load double, double* %dw.addr, align 8, !tbaa !11
  %cmp15 = fcmp olt double %20, -1.630000e+04
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %21 = load double, double* %dw.addr, align 8, !tbaa !11
  %cmp19 = fcmp une double %21, 0.000000e+00
  br i1 %cmp19, label %if.then.21, label %if.end.37

if.then.21:                                       ; preds = %if.end.18
  %22 = load i32, i32* %count, align 4, !tbaa !13
  %cmp22 = icmp eq i32 %22, 50
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.21
  %23 = load i32, i32* %pos, align 4, !tbaa !13
  %24 = load i32, i32* %count, align 4, !tbaa !13
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer27 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %25, i32 0, i32 2
  %moves28 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves28, i32 0, i64 %idxprom26
  %index30 = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx29, i32 0, i32 0
  store i32 %23, i32* %index30, align 4, !tbaa !92
  %26 = load double, double* %dw.addr, align 8, !tbaa !11
  %conv31 = fptrunc double %26 to float
  %27 = load i32, i32* %count, align 4, !tbaa !13
  %idxprom32 = sext i32 %27 to i64
  %28 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer33 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %28, i32 0, i32 2
  %moves34 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer33, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [51 x %struct.pdf_text_move_s], [51 x %struct.pdf_text_move_s]* %moves34, i32 0, i64 %idxprom32
  %amount36 = getelementptr inbounds %struct.pdf_text_move_s, %struct.pdf_text_move_s* %arrayidx35, i32 0, i32 1
  store float %conv31, float* %amount36, align 4, !tbaa !94
  %29 = load i32, i32* %count, align 4, !tbaa !13
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %count, align 4, !tbaa !13
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.25, %if.end.18
  %30 = load i32, i32* %count, align 4, !tbaa !13
  %31 = load %struct.pdf_text_state_s*, %struct.pdf_text_state_s** %pts.addr, align 8, !tbaa !1
  %buffer38 = getelementptr inbounds %struct.pdf_text_state_s, %struct.pdf_text_state_s* %31, i32 0, i32 2
  %count_moves39 = getelementptr inbounds %struct.pdf_text_buffer_s, %struct.pdf_text_buffer_s* %buffer38, i32 0, i32 2
  store i32 %30, i32* %count_moves39, align 4, !tbaa !68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.24, %if.then.17
  %32 = bitcast double* %rounded to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind readnone }
attributes #9 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{i64 0, i64 4, !9, i64 8, i64 8, !1, i64 16, i64 8, !11, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 4, !9, i64 44, i64 4, !9, i64 48, i64 4, !13, i64 52, i64 4, !9, i64 56, i64 8, !11, i64 64, i64 8, !11, i64 72, i64 408, !15, i64 480, i64 200, !15, i64 680, i64 4, !13, i64 684, i64 4, !13, i64 688, i64 4, !13, i64 696, i64 4, !9, i64 704, i64 8, !1, i64 712, i64 8, !11, i64 720, i64 4, !9, i64 724, i64 4, !9, i64 728, i64 4, !9, i64 732, i64 4, !9, i64 736, i64 4, !9, i64 740, i64 4, !9, i64 744, i64 4, !13, i64 748, i64 4, !9, i64 752, i64 8, !11, i64 760, i64 4, !13, i64 764, i64 4, !13, i64 768, i64 8, !11, i64 776, i64 8, !11, i64 784, i64 8, !11, i64 792, i64 8, !11, i64 800, i64 8, !11}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !3, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !3, i64 0}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !2, i64 16}
!17 = !{!"pdf_text_data_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{i64 0, i64 4, !9, i64 8, i64 8, !1, i64 16, i64 8, !11, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 4, !9, i64 44, i64 4, !9, i64 48, i64 4, !13, i64 52, i64 4, !9}
!19 = !{!20, !12, i64 752}
!20 = !{!"pdf_text_state_s", !21, i64 0, !23, i64 56, !24, i64 72, !14, i64 688, !21, i64 696, !12, i64 752, !14, i64 760, !14, i64 764, !23, i64 768, !23, i64 784, !12, i64 800}
!21 = !{!"pdf_text_state_values_s", !10, i64 0, !2, i64 8, !12, i64 16, !22, i64 24, !14, i64 48, !10, i64 52}
!22 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!23 = !{!"gs_point_s", !12, i64 0, !12, i64 8}
!24 = !{!"pdf_text_buffer_s", !3, i64 0, !3, i64 408, !14, i64 608, !14, i64 612}
!25 = !{!26, !2, i64 26592}
!26 = !{!"gx_device_pdf_s", !14, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !14, i64 40, !2, i64 48, !27, i64 56, !14, i64 80, !14, i64 84, !14, i64 88, !29, i64 96, !32, i64 816, !14, i64 832, !14, i64 836, !14, i64 840, !14, i64 844, !14, i64 848, !14, i64 852, !3, i64 856, !3, i64 864, !14, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !28, i64 928, !28, i64 936, !14, i64 944, !14, i64 948, !14, i64 952, !14, i64 956, !14, i64 960, !28, i64 968, !28, i64 976, !33, i64 984, !14, i64 1052, !14, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !14, i64 5864, !14, i64 5868, !38, i64 5872, !2, i64 7488, !14, i64 7496, !14, i64 7500, !14, i64 7504, !47, i64 7512, !47, i64 8144, !28, i64 8776, !28, i64 8784, !3, i64 8792, !3, i64 8796, !23, i64 8800, !14, i64 8816, !2, i64 8824, !28, i64 8832, !28, i64 8840, !3, i64 8848, !14, i64 8852, !14, i64 8856, !14, i64 8860, !14, i64 8864, !12, i64 8872, !52, i64 8880, !14, i64 9360, !12, i64 9368, !14, i64 9376, !14, i64 9380, !14, i64 9384, !14, i64 9388, !14, i64 9392, !14, i64 9396, !14, i64 9400, !14, i64 9404, !14, i64 9408, !14, i64 9412, !14, i64 9416, !14, i64 9420, !57, i64 9424, !57, i64 9440, !14, i64 9456, !14, i64 9460, !14, i64 9464, !28, i64 9472, !14, i64 9480, !14, i64 9484, !56, i64 9488, !56, i64 9504, !14, i64 9520, !14, i64 9524, !14, i64 9528, !14, i64 9532, !14, i64 9536, !14, i64 9540, !14, i64 9544, !14, i64 9548, !14, i64 9552, !14, i64 9556, !14, i64 9560, !14, i64 9564, !14, i64 9568, !28, i64 9576, !28, i64 9584, !28, i64 9592, !58, i64 9600, !56, i64 9616, !56, i64 9632, !14, i64 9648, !14, i64 9652, !14, i64 9656, !56, i64 9664, !14, i64 9680, !14, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !14, i64 9768, !14, i64 9772, !14, i64 9776, !59, i64 9784, !60, i64 9816, !60, i64 9856, !14, i64 9896, !14, i64 9900, !14, i64 9904, !14, i64 9908, !14, i64 9912, !28, i64 9920, !3, i64 9928, !14, i64 9960, !28, i64 9968, !28, i64 9976, !3, i64 9984, !3, i64 9988, !61, i64 9992, !61, i64 14120, !61, i64 18248, !61, i64 22376, !28, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !28, i64 26536, !14, i64 26544, !14, i64 26548, !28, i64 26552, !3, i64 26560, !28, i64 26568, !28, i64 26576, !3, i64 26584, !2, i64 26592, !62, i64 26600, !2, i64 26648, !14, i64 26656, !28, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !28, i64 28664, !2, i64 28672, !14, i64 28680, !14, i64 28684, !14, i64 28688, !14, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !23, i64 28792, !2, i64 28808, !2, i64 28816, !14, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !14, i64 28856, !14, i64 28860, !14, i64 28864, !63, i64 28872, !14, i64 30384, !14, i64 30388, !14, i64 30392, !2, i64 30400, !14, i64 30408, !14, i64 30412, !14, i64 30416, !22, i64 30420, !2, i64 30448, !3, i64 30456, !14, i64 30460, !14, i64 30464, !2, i64 30472, !2, i64 30480, !41, i64 30488, !14, i64 30524, !59, i64 30528, !14, i64 30560, !14, i64 30564, !14, i64 30568, !2, i64 30576, !14, i64 30584, !14, i64 30588, !28, i64 30592, !14, i64 30600, !14, i64 30604, !14, i64 30608, !22, i64 30612, !12, i64 30640, !2, i64 30648, !53, i64 30656, !14, i64 30672, !2, i64 30680, !14, i64 30688, !14, i64 30692, !14, i64 30696, !14, i64 30700, !14, i64 30704, !14, i64 30708, !14, i64 30712, !14, i64 30716, !14, i64 30720, !14, i64 30724, !14, i64 30728, !14, i64 30732, !14, i64 30736, !14, i64 30740, !14, i64 30744, !14, i64 30748, !14, i64 30752, !14, i64 30756, !14, i64 30760, !14, i64 30764, !14, i64 30768, !14, i64 30772, !2, i64 30776, !14, i64 30784, !14, i64 30788}
!27 = !{!"rc_header_s", !28, i64 0, !2, i64 8, !2, i64 16}
!28 = !{!"long", !3, i64 0}
!29 = !{!"gx_device_color_info_s", !14, i64 0, !14, i64 4, !3, i64 8, !30, i64 12, !3, i64 14, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !28, i64 704, !14, i64 712}
!30 = !{!"short", !3, i64 0}
!31 = !{!"gx_device_anti_alias_info_s", !14, i64 0, !14, i64 4}
!32 = !{!"gx_device_cached_colors_s", !28, i64 0, !28, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !14, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !28, i64 0, !28, i64 8, !35, i64 16, !14, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !14, i64 0, !14, i64 4, !28, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!"gs_imager_state_s", !14, i64 0, !2, i64 8, !2, i64 16, !39, i64 24, !14, i64 128, !41, i64 132, !14, i64 168, !23, i64 176, !23, i64 192, !14, i64 208, !14, i64 212, !30, i64 216, !3, i64 220, !42, i64 224, !42, i64 228, !43, i64 232, !28, i64 240, !14, i64 248, !14, i64 252, !14, i64 256, !2, i64 264, !14, i64 272, !14, i64 276, !14, i64 280, !14, i64 284, !14, i64 288, !14, i64 292, !10, i64 296, !44, i64 300, !14, i64 308, !14, i64 312, !14, i64 316, !10, i64 320, !14, i64 324, !14, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !14, i64 408, !2, i64 416, !2, i64 424, !45, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !46, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !46, i64 1336}
!39 = !{!"gx_line_params_s", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !14, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !14, i64 36, !22, i64 40, !40, i64 64}
!40 = !{!"gx_dash_params_s", !2, i64 0, !14, i64 8, !10, i64 12, !14, i64 16, !10, i64 20, !14, i64 24, !14, i64 28, !10, i64 32}
!41 = !{!"gs_matrix_fixed_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!42 = !{!"gs_transparency_source_s", !10, i64 0}
!43 = !{!"gs_xstate_trans_flags", !14, i64 0, !14, i64 4}
!44 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 4}
!45 = !{!"gx_transfer_s", !14, i64 0, !2, i64 8, !14, i64 16, !2, i64 24, !14, i64 32, !2, i64 40, !14, i64 48, !2, i64 56}
!46 = !{!"gs_devicen_color_map_s", !14, i64 0, !3, i64 4, !14, i64 8, !14, i64 12, !28, i64 16, !3, i64 24}
!47 = !{!"gx_hl_saved_color_s", !28, i64 0, !28, i64 8, !14, i64 16, !48, i64 24, !50, i64 288}
!48 = !{!"gs_client_color_s", !2, i64 0, !49, i64 8}
!49 = !{!"gs_paint_color_s", !3, i64 0}
!50 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !51, i64 336}
!51 = !{!"gs_int_point_s", !14, i64 0, !14, i64 4}
!52 = !{!"psdf_distiller_params_s", !14, i64 0, !3, i64 4, !3, i64 8, !14, i64 12, !3, i64 16, !14, i64 20, !14, i64 24, !28, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !53, i64 64, !53, i64 80, !53, i64 96, !53, i64 112, !3, i64 128, !14, i64 132, !14, i64 136, !3, i64 140, !3, i64 144, !54, i64 152, !14, i64 232, !14, i64 236, !54, i64 240, !54, i64 320, !55, i64 400, !55, i64 416, !3, i64 432, !14, i64 436, !14, i64 440, !14, i64 444, !56, i64 448, !55, i64 464}
!53 = !{!"gs_const_string_s", !2, i64 0, !14, i64 8}
!54 = !{!"psdf_image_params_s", !2, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !2, i64 24, !14, i64 32, !10, i64 36, !3, i64 40, !14, i64 44, !2, i64 48, !14, i64 56, !2, i64 64, !2, i64 72}
!55 = !{!"gs_param_string_array_s", !2, i64 0, !14, i64 8, !14, i64 12}
!56 = !{!"gs_param_string_s", !2, i64 0, !14, i64 8, !14, i64 12}
!57 = !{!"gs_param_float_array_s", !2, i64 0, !14, i64 8, !14, i64 12}
!58 = !{!"gs_param_int_array_s", !2, i64 0, !14, i64 8, !14, i64 12}
!59 = !{!"gs_rect_s", !23, i64 0, !23, i64 16}
!60 = !{!"pdf_page_dsc_info_s", !14, i64 0, !14, i64 4, !59, i64 8}
!61 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!62 = !{!"pdf_text_rotation_s", !3, i64 0, !14, i64 40}
!63 = !{!"pdf_viewer_state_s", !14, i64 0, !3, i64 8, !10, i64 40, !10, i64 44, !3, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !14, i64 80, !10, i64 84, !10, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !14, i64 108, !14, i64 112, !47, i64 120, !47, i64 752, !39, i64 1384, !2, i64 1488, !14, i64 1496, !28, i64 1504}
!64 = !{!20, !12, i64 776}
!65 = !{!20, !12, i64 768}
!66 = !{!20, !14, i64 764}
!67 = !{!20, !14, i64 684}
!68 = !{!20, !14, i64 680}
!69 = !{!26, !2, i64 5848}
!70 = !{!20, !10, i64 696}
!71 = !{!20, !10, i64 0}
!72 = !{!20, !2, i64 704}
!73 = !{!20, !2, i64 8}
!74 = !{!20, !12, i64 712}
!75 = !{!20, !12, i64 16}
!76 = !{!77, !3, i64 72}
!77 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !28, i64 16, !14, i64 24, !14, i64 28, !3, i64 32, !28, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !78, i64 88, !2, i64 104, !2, i64 112, !14, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!78 = !{!"gs_string_s", !2, i64 0, !14, i64 8}
!79 = !{!80, !14, i64 64}
!80 = !{!"", !2, i64 0, !3, i64 8, !53, i64 40, !14, i64 56, !14, i64 60, !14, i64 64}
!81 = !{!20, !14, i64 688}
!82 = !{!20, !12, i64 56}
!83 = !{!20, !12, i64 784}
!84 = !{!20, !12, i64 64}
!85 = !{!20, !12, i64 792}
!86 = !{!20, !14, i64 744}
!87 = !{!20, !14, i64 48}
!88 = !{!20, !10, i64 748}
!89 = !{!20, !10, i64 52}
!90 = !{!26, !2, i64 30448}
!91 = !{!20, !14, i64 760}
!92 = !{!93, !14, i64 0}
!93 = !{!"pdf_text_move_s", !14, i64 0, !10, i64 4}
!94 = !{!93, !10, i64 4}
!95 = !{!23, !12, i64 0}
!96 = !{!23, !12, i64 8}
!97 = !{!20, !10, i64 24}
!98 = !{!20, !10, i64 28}
!99 = !{!20, !10, i64 32}
!100 = !{!20, !10, i64 36}
!101 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9}
!102 = !{!21, !14, i64 48}
!103 = !{!21, !10, i64 0}
!104 = !{!21, !2, i64 8}
!105 = !{!21, !12, i64 16}
!106 = !{!21, !10, i64 52}
!107 = !{!22, !10, i64 16}
!108 = !{!20, !10, i64 40}
!109 = !{!22, !10, i64 20}
!110 = !{!20, !10, i64 44}
!111 = !{!59, !12, i64 0}
!112 = !{!59, !12, i64 8}
!113 = !{!59, !12, i64 16}
!114 = !{!59, !12, i64 24}
!115 = !{!26, !12, i64 9784}
!116 = !{!26, !12, i64 9792}
!117 = !{!26, !12, i64 9800}
!118 = !{!26, !12, i64 9808}
!119 = !{!120, !14, i64 16}
!120 = !{!"gs_text_params_s", !14, i64 0, !3, i64 8, !14, i64 16, !23, i64 24, !23, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !14, i64 80}
!121 = !{!122, !3, i64 128}
!122 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !14, i64 32, !123, i64 40, !28, i64 56, !2, i64 64, !2, i64 72, !22, i64 80, !22, i64 104, !3, i64 128, !14, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !14, i64 148, !14, i64 152, !10, i64 156, !14, i64 160, !124, i64 168, !125, i64 272, !125, i64 324}
!123 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!124 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!125 = !{!"gs_font_name_s", !3, i64 0, !14, i64 48}
!126 = !{!38, !12, i64 176}
!127 = !{!38, !12, i64 184}
!128 = !{!38, !10, i64 24}
!129 = !{!20, !12, i64 800}
!130 = !{!22, !10, i64 0}
!131 = !{!22, !10, i64 4}
!132 = !{!22, !10, i64 8}
!133 = !{!22, !10, i64 12}
