; ModuleID = './zfont1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
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
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fapi_server_s = type opaque
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.2, %struct.anon.3, i32, %struct.anon.4, i32, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, [16 x i8], i32 }
%struct.gs_type1_state_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [14 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [10 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [1 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [12 x float] }
%struct.anon.9 = type { i32, [16 x float] }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.charstring_font_refs_s = type { %struct.ref_s*, %struct.ref_s, %struct.ref_s*, %struct.ref_s*, %struct.ref_s* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OtherSubrs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"subroutineNumberBias\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BlueFuzz\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"BlueScale\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"BlueShift\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ExpansionFactor\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"FamilyBlues\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"FamilyOtherBlues\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ForceBold\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"LanguageGroup\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"OtherBlues\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"RndStemUp\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"StemSnapH\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"StemSnapV\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"WeightVector\00", align 1
@z1_data_procs = external constant %struct.gs_type1_data_procs_s, align 8
@st_gs_font_type1 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"2.buildfont1\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"2.buildfont4\00", align 1
@zfont1_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont1 }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont4 }, %struct.op_def zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [16 x i8] c"%Type1BuildChar\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"%Type1BuildGlyph\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Metrics\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Metrics2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"CDevProc\00", align 1

; Function Attrs: nounwind uwtable
define i32 @charstring_font_get_refs(%struct.ref_s* %op, %struct.charstring_font_refs_s* %pfr) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pfr.addr = alloca %struct.charstring_font_refs_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.charstring_font_refs_s* %pfr, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %3) #5
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %5 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %5, i32 0, i32 0
  %call2 = call i32 @dict_find_string(%struct.ref_s* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %Private) #5
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private5 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %6, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %Private5, align 8, !tbaa !6
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %8 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx8, align 1, !tbaa !5
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -10, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %10 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %10, i32 0, i32 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_subrs, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  store %struct.ref_s* null, %struct.ref_s** %refs, align 8, !tbaa !1
  %11 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs14 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %11, i32 0, i32 1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_subrs14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 1024, i16* %type_attrs16, align 2, !tbaa !12
  %12 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs17 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %12, i32 0, i32 1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %no_subrs17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !13
  %13 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private19 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %13, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %Private19, align 8, !tbaa !6
  %15 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %OtherSubrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %15, i32 0, i32 2
  %call20 = call i32 @dict_find_string(%struct.ref_s* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %OtherSubrs) #5
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.13
  %16 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %OtherSubrs24 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %16, i32 0, i32 2
  %17 = load %struct.ref_s*, %struct.ref_s** %OtherSubrs24, align 8, !tbaa !14
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %18 = load i16, i16* %type_attrs26, align 2, !tbaa !12
  %conv27 = zext i16 %18 to i32
  %and = and i32 %conv27, 15360
  %cmp28 = icmp eq i32 %and, 1024
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.23
  store i32 -20, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.23
  br label %if.end.34

if.else:                                          ; preds = %if.end.13
  %19 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs32 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %19, i32 0, i32 1
  %20 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %OtherSubrs33 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %20, i32 0, i32 2
  store %struct.ref_s* %no_subrs32, %struct.ref_s** %OtherSubrs33, align 8, !tbaa !14
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.31
  %21 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private35 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %21, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %Private35, align 8, !tbaa !6
  %23 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Subrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %23, i32 0, i32 3
  %call36 = call i32 @dict_find_string(%struct.ref_s* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %Subrs) #5
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.49

if.then.39:                                       ; preds = %if.end.34
  %24 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Subrs40 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %24, i32 0, i32 3
  %25 = load %struct.ref_s*, %struct.ref_s** %Subrs40, align 8, !tbaa !15
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  %26 = load i16, i16* %type_attrs42, align 2, !tbaa !12
  %conv43 = zext i16 %26 to i32
  %and44 = and i32 %conv43, 15360
  %cmp45 = icmp eq i32 %and44, 1024
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.39
  store i32 -20, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.39
  br label %if.end.52

if.else.49:                                       ; preds = %if.end.34
  %27 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs50 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %27, i32 0, i32 1
  %28 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Subrs51 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %28, i32 0, i32 3
  store %struct.ref_s* %no_subrs50, %struct.ref_s** %Subrs51, align 8, !tbaa !15
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.end.48
  %29 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %no_subrs53 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %29, i32 0, i32 1
  %30 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %GlobalSubrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %30, i32 0, i32 4
  store %struct.ref_s* %no_subrs53, %struct.ref_s** %GlobalSubrs, align 8, !tbaa !16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.47, %if.then.30, %if.then.12, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @check_type_failed(%struct.ref_s*) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #1

; Function Attrs: nounwind uwtable
define i32 @charstring_font_params(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.charstring_font_refs_s* %pfr, %struct.gs_type1_data_s* %pdata1) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pfr.addr = alloca %struct.charstring_font_refs_s*, align 8
  %pdata1.addr = alloca %struct.gs_type1_data_s*, align 8
  %pprivate = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %max_zone_height = alloca float, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.charstring_font_refs_s* %pfr, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  store %struct.gs_type1_data_s* %pdata1, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pprivate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %1, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !6
  store %struct.ref_s* %2, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i32 0, i32 4
  %6 = load i32, i32* %lenIV, align 4, !tbaa !17
  %7 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %lenIV1 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %7, i32 0, i32 4
  %call = call i32 @dict_int_param(%struct.ref_s* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 255, i32 %6, i32* %lenIV1) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %10 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %10, i32 0, i32 5
  %11 = load i32, i32* %subroutineNumberBias, align 4, !tbaa !24
  %12 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %subroutineNumberBias2 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %12, i32 0, i32 5
  %call3 = call i32 @dict_uint_param(%struct.ref_s* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1, i32 %11, i32* %subroutineNumberBias2) #5
  store i32 %call3, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %15 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueFuzz = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %15, i32 0, i32 10
  %call7 = call i32 @dict_int_param(%struct.ref_s* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 1999, i32 1, i32* %BlueFuzz) #5
  store i32 %call7, i32* %code, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %16 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %17 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %18 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueScale = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %18, i32 0, i32 11
  %call11 = call i32 @dict_float_param(%struct.ref_s* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), double 3.962500e-02, float* %BlueScale) #5
  store i32 %call11, i32* %code, align 4, !tbaa !23
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %19 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %20 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %21 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueShift = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %21, i32 0, i32 12
  %call15 = call i32 @dict_float_param(%struct.ref_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), double 7.000000e+00, float* %BlueShift) #5
  store i32 %call15, i32* %code, align 4, !tbaa !23
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %22 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %25 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueValues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %25, i32 0, i32 13
  %values = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues, i32 0, i32 1
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %values, i32 0, i64 0
  %call19 = call i32 @dict_float_array_param(%struct.gs_memory_s* %23, %struct.ref_s* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 14, float* %arrayidx, float* null) #5
  %26 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueValues20 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %26, i32 0, i32 13
  %count = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues20, i32 0, i32 0
  store i32 %call19, i32* %count, align 4, !tbaa !25
  store i32 %call19, i32* %code, align 4, !tbaa !23
  %cmp21 = icmp slt i32 %call19, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %27 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  %28 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %29 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %ExpansionFactor = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %29, i32 0, i32 14
  %call24 = call i32 @dict_float_param(%struct.ref_s* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), double 6.000000e-02, float* %ExpansionFactor) #5
  store i32 %call24, i32* %code, align 4, !tbaa !23
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %30 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %33 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %33, i32 0, i32 16
  %values28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [14 x float], [14 x float]* %values28, i32 0, i64 0
  %call30 = call i32 @dict_float_array_param(%struct.gs_memory_s* %31, %struct.ref_s* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 14, float* %arrayidx29, float* null) #5
  %34 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyBlues31 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %34, i32 0, i32 16
  %count32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues31, i32 0, i32 0
  store i32 %call30, i32* %count32, align 4, !tbaa !26
  store i32 %call30, i32* %code, align 4, !tbaa !23
  %cmp33 = icmp slt i32 %call30, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.27
  %35 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.27
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %38 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyOtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %38, i32 0, i32 17
  %values36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* %values36, i32 0, i64 0
  %call38 = call i32 @dict_float_array_param(%struct.gs_memory_s* %36, %struct.ref_s* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 10, float* %arrayidx37, float* null) #5
  %39 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyOtherBlues39 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %39, i32 0, i32 17
  %count40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues39, i32 0, i32 0
  store i32 %call38, i32* %count40, align 4, !tbaa !27
  store i32 %call38, i32* %code, align 4, !tbaa !23
  %cmp41 = icmp slt i32 %call38, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.35
  %40 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.35
  %41 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %42 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %ForceBold = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %42, i32 0, i32 15
  %call44 = call i32 @dict_bool_param(%struct.ref_s* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* %ForceBold) #5
  store i32 %call44, i32* %code, align 4, !tbaa !23
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  %43 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.43
  %44 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %45 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %LanguageGroup = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %45, i32 0, i32 18
  %call48 = call i32 @dict_int_param(%struct.ref_s* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32* %LanguageGroup) #5
  store i32 %call48, i32* %code, align 4, !tbaa !23
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %46 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.47
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %49 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %OtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %49, i32 0, i32 19
  %values52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [10 x float], [10 x float]* %values52, i32 0, i64 0
  %call54 = call i32 @dict_float_array_param(%struct.gs_memory_s* %47, %struct.ref_s* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 10, float* %arrayidx53, float* null) #5
  %50 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %OtherBlues55 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %50, i32 0, i32 19
  %count56 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues55, i32 0, i32 0
  store i32 %call54, i32* %count56, align 4, !tbaa !28
  store i32 %call54, i32* %code, align 4, !tbaa !23
  %cmp57 = icmp slt i32 %call54, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.51
  %51 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.51
  %52 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %53 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %RndStemUp = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %53, i32 0, i32 20
  %call60 = call i32 @dict_bool_param(%struct.ref_s* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 1, i32* %RndStemUp) #5
  store i32 %call60, i32* %code, align 4, !tbaa !23
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %54 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.59
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %56 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %57 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StdHW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %57, i32 0, i32 21
  %values64 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x float], [1 x float]* %values64, i32 0, i64 0
  %call66 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %55, %struct.ref_s* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1, float* %arrayidx65, float* null, i32 0, i32 -15) #5
  %58 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StdHW67 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %58, i32 0, i32 21
  %count68 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StdHW67, i32 0, i32 0
  store i32 %call66, i32* %count68, align 4, !tbaa !29
  store i32 %call66, i32* %code, align 4, !tbaa !23
  %cmp69 = icmp slt i32 %call66, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.63
  %59 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.63
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %61 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %62 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StdVW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %62, i32 0, i32 22
  %values72 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StdVW, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x float], [1 x float]* %values72, i32 0, i64 0
  %call74 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %60, %struct.ref_s* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 1, float* %arrayidx73, float* null, i32 0, i32 -15) #5
  %63 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StdVW75 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %63, i32 0, i32 22
  %count76 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StdVW75, i32 0, i32 0
  store i32 %call74, i32* %count76, align 4, !tbaa !30
  store i32 %call74, i32* %code, align 4, !tbaa !23
  %cmp77 = icmp slt i32 %call74, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.71
  %64 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.71
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %66 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %67 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StemSnapH = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %67, i32 0, i32 23
  %values80 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %values80, i32 0, i64 0
  %call82 = call i32 @dict_float_array_param(%struct.gs_memory_s* %65, %struct.ref_s* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 12, float* %arrayidx81, float* null) #5
  %68 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StemSnapH83 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %68, i32 0, i32 23
  %count84 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %StemSnapH83, i32 0, i32 0
  store i32 %call82, i32* %count84, align 4, !tbaa !31
  store i32 %call82, i32* %code, align 4, !tbaa !23
  %cmp85 = icmp slt i32 %call82, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.79
  %69 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.79
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %71 = load %struct.ref_s*, %struct.ref_s** %pprivate, align 8, !tbaa !1
  %72 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StemSnapV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %72, i32 0, i32 24
  %values88 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [12 x float], [12 x float]* %values88, i32 0, i64 0
  %call90 = call i32 @dict_float_array_param(%struct.gs_memory_s* %70, %struct.ref_s* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 12, float* %arrayidx89, float* null) #5
  %73 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %StemSnapV91 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %73, i32 0, i32 24
  %count92 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %StemSnapV91, i32 0, i32 0
  store i32 %call90, i32* %count92, align 4, !tbaa !32
  store i32 %call90, i32* %code, align 4, !tbaa !23
  %cmp93 = icmp slt i32 %call90, 0
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.87
  %74 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %if.end.87
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %76 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %77 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %77, i32 0, i32 25
  %values96 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %values96, i32 0, i32 0
  %call97 = call i32 @dict_float_array_param(%struct.gs_memory_s* %75, %struct.ref_s* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 16, float* %arraydecay, float* null) #5
  %78 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %WeightVector98 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %78, i32 0, i32 25
  %count99 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %WeightVector98, i32 0, i32 0
  store i32 %call97, i32* %count99, align 4, !tbaa !33
  store i32 %call97, i32* %code, align 4, !tbaa !23
  %cmp100 = icmp slt i32 %call97, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.95
  %79 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.95
  %80 = bitcast float* %max_zone_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  store float 1.000000e+00, float* %max_zone_height, align 4, !tbaa !34
  %81 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueValues103 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %81, i32 0, i32 13
  %count104 = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues103, i32 0, i32 0
  %82 = load i32, i32* %count104, align 4, !tbaa !25
  %83 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueValues105 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %83, i32 0, i32 13
  %values106 = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues105, i32 0, i32 1
  %arraydecay107 = getelementptr inbounds [14 x float], [14 x float]* %values106, i32 0, i32 0
  call void @find_zone_height(float* %max_zone_height, i32 %82, float* %arraydecay107) #5
  %84 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %OtherBlues108 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %84, i32 0, i32 19
  %count109 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues108, i32 0, i32 0
  %85 = load i32, i32* %count109, align 4, !tbaa !28
  %86 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %OtherBlues110 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %86, i32 0, i32 19
  %values111 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %OtherBlues110, i32 0, i32 1
  %arraydecay112 = getelementptr inbounds [10 x float], [10 x float]* %values111, i32 0, i32 0
  call void @find_zone_height(float* %max_zone_height, i32 %85, float* %arraydecay112) #5
  %87 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyBlues113 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %87, i32 0, i32 16
  %count114 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues113, i32 0, i32 0
  %88 = load i32, i32* %count114, align 4, !tbaa !26
  %89 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyBlues115 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %89, i32 0, i32 16
  %values116 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %FamilyBlues115, i32 0, i32 1
  %arraydecay117 = getelementptr inbounds [14 x float], [14 x float]* %values116, i32 0, i32 0
  call void @find_zone_height(float* %max_zone_height, i32 %88, float* %arraydecay117) #5
  %90 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyOtherBlues118 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %90, i32 0, i32 17
  %count119 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues118, i32 0, i32 0
  %91 = load i32, i32* %count119, align 4, !tbaa !27
  %92 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %FamilyOtherBlues120 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %92, i32 0, i32 17
  %values121 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %FamilyOtherBlues120, i32 0, i32 1
  %arraydecay122 = getelementptr inbounds [10 x float], [10 x float]* %values121, i32 0, i32 0
  call void @find_zone_height(float* %max_zone_height, i32 %91, float* %arraydecay122) #5
  %93 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueScale123 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %93, i32 0, i32 11
  %94 = load float, float* %BlueScale123, align 4, !tbaa !35
  %95 = load float, float* %max_zone_height, align 4, !tbaa !34
  %mul = fmul float %94, %95
  %conv = fpext float %mul to double
  %cmp124 = fcmp ogt double %conv, 1.000000e+00
  br i1 %cmp124, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.end.102
  %96 = load float, float* %max_zone_height, align 4, !tbaa !34
  %conv127 = fpext float %96 to double
  %div = fdiv double 1.000000e+00, %conv127
  %conv128 = fptrunc double %div to float
  %97 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %BlueScale129 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %97, i32 0, i32 11
  store float %conv128, float* %BlueScale129, align 4, !tbaa !35
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %if.end.102
  %98 = bitcast float* %max_zone_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %LanguageGroup131 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %99, i32 0, i32 18
  %100 = load i32, i32* %LanguageGroup131, align 4, !tbaa !36
  %cmp132 = icmp sgt i32 %100, 1
  br i1 %cmp132, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.130
  %101 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %LanguageGroup134 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %101, i32 0, i32 18
  %102 = load i32, i32* %LanguageGroup134, align 4, !tbaa !36
  %cmp135 = icmp slt i32 %102, 0
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %lor.lhs.false, %if.end.130
  %103 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %LanguageGroup138 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %103, i32 0, i32 18
  store i32 0, i32* %LanguageGroup138, align 4, !tbaa !36
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %lor.lhs.false
  %104 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %hash_subrs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %104, i32 0, i32 26
  %105 = bitcast [16 x i8]* %hash_subrs to i8*
  %call140 = call i8* @memset(i8* %105, i32 0, i64 16) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.139, %if.then.101, %if.then.94, %if.then.86, %if.then.78, %if.then.70, %if.then.62, %if.then.58, %if.then.50, %if.then.46, %if.then.42, %if.then.34, %if.then.26, %if.then.22, %if.then.17, %if.then.13, %if.then.9, %if.then.5, %if.then
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast %struct.ref_s** %pprivate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #1

declare i32 @dict_uint_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #1

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #1

declare i32 @dict_float_array_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #1

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #1

declare i32 @dict_float_array_check_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_zone_height(float* %pmax_height, i32 %count, float* %values) #0 {
entry:
  %pmax_height.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %zone_height = alloca float, align 4
  store float* %pmax_height, float** %pmax_height.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !23
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %zone_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !23
  %3 = load i32, i32* %count.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !23
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4, !tbaa !34
  %7 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom1 = sext i32 %7 to i64
  %8 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 %idxprom1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !34
  %sub = fsub float %6, %9
  store float %sub, float* %zone_height, align 4, !tbaa !34
  %10 = load float*, float** %pmax_height.addr, align 8, !tbaa !1
  %11 = load float, float* %10, align 4, !tbaa !34
  %cmp3 = fcmp ogt float %sub, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load float, float* %zone_height, align 4, !tbaa !34
  %13 = load float*, float** %pmax_height.addr, align 8, !tbaa !1
  store float %12, float* %13, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %add4 = add nsw i32 %14, 2
  store i32 %add4, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast float* %zone_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @charstring_font_init(%struct.gs_font_type1_s* %pfont, %struct.charstring_font_refs_s* %pfr, %struct.gs_type1_data_s* %pdata1) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %pfr.addr = alloca %struct.charstring_font_refs_s*, align 8
  %pdata1.addr = alloca %struct.gs_type1_data_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store %struct.charstring_font_refs_s* %pfr, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  store %struct.gs_type1_data_s* %pdata1, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !37
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 29
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_type1_data_s* %data to i8*
  %7 = bitcast %struct.gs_type1_data_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 544, i32 8, i1 false), !tbaa.struct !47
  %8 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %8, i32 0, i32 29
  %parent = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 3
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %parent, align 8, !tbaa !49
  %9 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 6
  %type1 = bitcast %union._fs* %u to %struct._f1*
  %OtherSubrs = getelementptr inbounds %struct._f1, %struct._f1* %type1, i32 0, i32 0
  %10 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %OtherSubrs2 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %10, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %OtherSubrs2, align 8, !tbaa !14
  %12 = bitcast %struct.ref_s* %OtherSubrs to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !50
  %14 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %14, i32 0, i32 6
  %type14 = bitcast %union._fs* %u3 to %struct._f1*
  %Subrs = getelementptr inbounds %struct._f1, %struct._f1* %type14, i32 0, i32 1
  %15 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Subrs5 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %15, i32 0, i32 3
  %16 = load %struct.ref_s*, %struct.ref_s** %Subrs5, align 8, !tbaa !15
  %17 = bitcast %struct.ref_s* %Subrs to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false), !tbaa.struct !50
  %19 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %19, i32 0, i32 6
  %type17 = bitcast %union._fs* %u6 to %struct._f1*
  %GlobalSubrs = getelementptr inbounds %struct._f1, %struct._f1* %type17, i32 0, i32 2
  %20 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %GlobalSubrs8 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %20, i32 0, i32 4
  %21 = load %struct.ref_s*, %struct.ref_s** %GlobalSubrs8, align 8, !tbaa !16
  %22 = bitcast %struct.ref_s* %GlobalSubrs to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false), !tbaa.struct !50
  %24 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %24, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data9, i32 0, i32 0
  %25 = bitcast %struct.gs_type1_data_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.gs_type1_data_procs_s* @z1_data_procs to i8*), i64 40, i32 8, i1 false), !tbaa.struct !52
  %26 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %27 = bitcast %struct.font_data_s* %26 to i8*
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %28, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data10, i32 0, i32 2
  store i8* %27, i8** %proc_data, align 8, !tbaa !53
  %29 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %29, i32 0, i32 20
  %same_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs11, i32 0, i32 3
  store i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)* @z1_same_font, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)** %same_font, align 8, !tbaa !54
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %30, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs12, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @z1_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !55
  %31 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %31, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs13, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @z1_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !56
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %32, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs14, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @zchar1_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !57
  %33 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @z1_same_font(%struct.gs_font_s* %font, %struct.gs_font_s* %ofont, i32 %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %ofont.addr = alloca %struct.gs_font_s*, align 8
  %mask.addr = alloca i32, align 4
  %same = alloca i32, align 4
  %check = alloca i32, align 4
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %pofont1 = alloca %struct.gs_font_type1_s*, align 8
  %podata = alloca %struct.font_data_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %ofont, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !23
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !58
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType1, align 4, !tbaa !58
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 7
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !60
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gs_font_s* %5, %6
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %base3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 7
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %base3, align 8, !tbaa !60
  store %struct.gs_font_s* %8, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.7, %while.end
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %base5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 7
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %base5, align 8, !tbaa !60
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gs_font_s* %10, %11
  br i1 %cmp6, label %while.body.7, label %while.end.9

while.body.7:                                     ; preds = %while.cond.4
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %base8 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 7
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %base8, align 8, !tbaa !60
  store %struct.gs_font_s* %13, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  br label %while.cond.4

while.end.9:                                      ; preds = %while.cond.4
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gs_font_s* %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end.9
  %16 = load i32, i32* %mask.addr, align 4, !tbaa !23
  store i32 %16, i32* %retval
  br label %return

if.end.12:                                        ; preds = %while.end.9
  %17 = bitcast i32* %same to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %20 = load i32, i32* %mask.addr, align 4, !tbaa !23
  %call = call i32 @gs_base_same_font(%struct.gs_font_s* %18, %struct.gs_font_s* %19, i32 %20) #5
  store i32 %call, i32* %same, align 4, !tbaa !23
  %21 = bitcast i32* %check to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %mask.addr, align 4, !tbaa !23
  %23 = load i32, i32* %same, align 4, !tbaa !23
  %neg = xor i32 %23, -1
  %and = and i32 %22, %neg
  store i32 %and, i32* %check, align 4, !tbaa !23
  %24 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_s* %25 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %26, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %27 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %28, i32 0, i32 8
  %29 = load i8*, i8** %client_data, align 8, !tbaa !37
  %30 = bitcast i8* %29 to %struct.font_data_s*
  store %struct.font_data_s* %30, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %31 = bitcast %struct.gs_font_type1_s** %pofont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %ofont.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gs_font_s* %32 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %33, %struct.gs_font_type1_s** %pofont1, align 8, !tbaa !1
  %34 = bitcast %struct.font_data_s** %podata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pofont1, align 8, !tbaa !1
  %client_data13 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %35, i32 0, i32 8
  %36 = load i8*, i8** %client_data13, align 8, !tbaa !37
  %37 = bitcast i8* %36 to %struct.font_data_s*
  store %struct.font_data_s* %37, %struct.font_data_s** %podata, align 8, !tbaa !1
  %38 = load i32, i32* %check, align 4, !tbaa !23
  %and14 = and i32 %38, 3
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.12
  %39 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pofont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %39, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %40 = bitcast %struct.gs_type1_data_procs_s* %procs to i8*
  %call15 = call i32 @memcmp(i8* %40, i8* bitcast (%struct.gs_type1_data_procs_s* @z1_data_procs to i8*), i64 40) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.25, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 2
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !61
  %43 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %43, i32 0, i32 4
  %44 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %CharStrings18 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %44, i32 0, i32 4
  %call19 = call i32 @obj_eq(%struct.gs_memory_s* %42, %struct.ref_s* %CharStrings, %struct.ref_s* %CharStrings18) #5
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %45 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %46 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %call22 = call i32 @same_font_dict(%struct.font_data_s* %45, %struct.font_data_s* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  %47 = load i32, i32* %same, align 4, !tbaa !23
  %or = or i32 %47, 1
  store i32 %or, i32* %same, align 4, !tbaa !23
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true, %if.end.12
  %48 = load i32, i32* %check, align 4, !tbaa !23
  %and26 = and i32 %48, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.47

land.lhs.true.28:                                 ; preds = %if.end.25
  %49 = load i32, i32* %same, align 4, !tbaa !23
  %and29 = and i32 %49, 1
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.47

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %50 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pofont1, align 8, !tbaa !1
  %data32 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %50, i32 0, i32 29
  %procs33 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data32, i32 0, i32 0
  %51 = bitcast %struct.gs_type1_data_procs_s* %procs33 to i8*
  %call34 = call i32 @memcmp(i8* %51, i8* bitcast (%struct.gs_type1_data_procs_s* @z1_data_procs to i8*), i64 40) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.47, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %52 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %53 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %call37 = call i32 @same_font_dict(%struct.font_data_s* %52, %struct.font_data_s* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %54 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %55 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %call40 = call i32 @same_font_dict(%struct.font_data_s* %54, %struct.font_data_s* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #5
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %56 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %57 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %call43 = call i32 @same_font_dict(%struct.font_data_s* %56, %struct.font_data_s* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.42
  %58 = load i32, i32* %same, align 4, !tbaa !23
  %or46 = or i32 %58, 2
  store i32 %or46, i32* %same, align 4, !tbaa !23
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.42, %land.lhs.true.39, %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.28, %if.end.25
  %59 = load i32, i32* %check, align 4, !tbaa !23
  %and48 = and i32 %59, 4
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.60

land.lhs.true.50:                                 ; preds = %if.end.47
  %60 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pofont1, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %60, i32 0, i32 20
  %same_font = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs51, i32 0, i32 3
  %61 = load i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)** %same_font, align 8, !tbaa !54
  %cmp52 = icmp eq i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)* %61, @z1_same_font
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %62 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %62, i32 0, i32 2
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !61
  %64 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %64, i32 0, i32 3
  %65 = load %struct.font_data_s*, %struct.font_data_s** %podata, align 8, !tbaa !1
  %Encoding55 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %65, i32 0, i32 3
  %call56 = call i32 @obj_eq(%struct.gs_memory_s* %63, %struct.ref_s* %Encoding, %struct.ref_s* %Encoding55) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %land.lhs.true.53
  %66 = load i32, i32* %same, align 4, !tbaa !23
  %or59 = or i32 %66, 4
  store i32 %or59, i32* %same, align 4, !tbaa !23
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %land.lhs.true.53, %land.lhs.true.50, %if.end.47
  %67 = load i32, i32* %same, align 4, !tbaa !23
  %68 = load i32, i32* %mask.addr, align 4, !tbaa !23
  %and61 = and i32 %67, %68
  store i32 %and61, i32* %retval
  %69 = bitcast %struct.font_data_s** %podata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast %struct.gs_font_type1_s** %pofont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i32* %check to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %same to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  br label %return

return:                                           ; preds = %if.end.60, %if.then.11, %if.then
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare i32 @z1_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @z1_enumerate_glyph(%struct.gs_font_s* %pfont, i32* %pindex, i32 %ignored, i64* %pglyph) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %ignored.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %pcsdict = alloca %struct.ref_s*, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %ignored, i32* %ignored.addr, align 4, !tbaa !5
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pcsdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 8
  %5 = load i8*, i8** %client_data, align 8, !tbaa !37
  %6 = bitcast i8* %5 to %struct.font_data_s*
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %6, i32 0, i32 4
  store %struct.ref_s* %CharStrings, %struct.ref_s** %pcsdict, align 8, !tbaa !1
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !61
  %9 = load %struct.ref_s*, %struct.ref_s** %pcsdict, align 8, !tbaa !1
  %10 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %11 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 @zchar_enumerate_glyph(%struct.gs_memory_s* %8, %struct.ref_s* %9, i32* %10, i64* %11) #5
  %12 = bitcast %struct.ref_s** %pcsdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret i32 %call
}

declare i32 @zchar1_glyph_outline(%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*) #1

; Function Attrs: nounwind uwtable
define i32 @build_charstring_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.build_proc_refs_s* %pbuild, i32 %ftype, %struct.charstring_font_refs_s* %pfr, %struct.gs_type1_data_s* %pdata1, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %ftype.addr = alloca i32, align 4
  %pfr.addr = alloca %struct.charstring_font_refs_s*, align 8
  %pdata1.addr = alloca %struct.gs_type1_data_s*, align 8
  %options.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !5
  store %struct.charstring_font_refs_s* %pfr, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  store %struct.gs_type1_data_s* %pdata1, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !62
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %5 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %6 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %call = call i32 @charstring_font_params(%struct.gs_memory_s* %3, %struct.ref_s* %4, %struct.charstring_font_refs_s* %5, %struct.gs_type1_data_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %7 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_font_type1_s** %pfont to %struct.gs_font_base_s**
  %13 = load i32, i32* %ftype.addr, align 4, !tbaa !5
  %14 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %15 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call1 = call i32 @build_gs_primitive_font(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.gs_font_base_s** %12, i32 %13, %struct.gs_memory_struct_type_s* @st_gs_font_type1, %struct.build_proc_refs_s* %14, i32 %15) #5
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %16 = load i32, i32* %code, align 4, !tbaa !23
  %cmp2 = icmp ne i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %19 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %20 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %call5 = call i32 @charstring_font_init(%struct.gs_font_type1_s* %18, %struct.charstring_font_refs_s* %19, %struct.gs_type1_data_s* %20) #5
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_type1_s* %22 to %struct.gs_font_s*
  %call6 = call i32 @define_gs_font(%struct.gs_context_state_s* %21, %struct.gs_font_s* %23) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %24 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @build_gs_primitive_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32) #1

declare i32 @define_gs_font(%struct.gs_context_state_s*, %struct.gs_font_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !71
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !62
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i32 @build_proc_name_refs(%struct.gs_memory_s* %7, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %8 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @buildfont1or4(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.build_proc_refs_s* %build, i32 1, i32 16) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %13) #2
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont4(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !71
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @build_gs_font_procs(%struct.ref_s* %5, %struct.build_proc_refs_s* %build) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %6 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @buildfont1or4(%struct.gs_context_state_s* %8, %struct.ref_s* %9, %struct.build_proc_refs_s* %build, i32 4, i32 0) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %11) #2
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @zchar_enumerate_glyph(%struct.gs_memory_s*, %struct.ref_s*, i32*, i64*) #1

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @buildfont1or4(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.build_proc_refs_s* %pbuild, i32 %ftype, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pbuild.addr = alloca %struct.build_proc_refs_s*, align 8
  %ftype.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %refs = alloca %struct.charstring_font_refs_s, align 8
  %code = alloca i32, align 4
  %data1 = alloca %struct.gs_type1_data_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.build_proc_refs_s* %pbuild, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !5
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @charstring_font_get_refs(%struct.ref_s* %2, %struct.charstring_font_refs_s* %refs) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %3 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.start(i64 544, i8* %3) #2
  %4 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 1
  store i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)* @gs_type1_interpret, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !72
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 5
  store i32 0, i32* %subroutineNumberBias, align 4, !tbaa !24
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 4
  store i32 4, i32* %lenIV, align 4, !tbaa !17
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = load %struct.build_proc_refs_s*, %struct.build_proc_refs_s** %pbuild.addr, align 8, !tbaa !1
  %9 = load i32, i32* %ftype.addr, align 4, !tbaa !5
  %10 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call1 = call i32 @build_charstring_font(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.build_proc_refs_s* %8, i32 %9, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1, i32 %10) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.end(i64 544, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gs_type1_interpret(%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*) #1

declare i32 @build_gs_font_procs(%struct.ref_s*, %struct.build_proc_refs_s*) #1

declare i32 @gs_base_same_font(%struct.gs_font_s*, %struct.gs_font_s*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @same_font_dict(%struct.font_data_s* %pdata, %struct.font_data_s* %podata, i8* %key) #0 {
entry:
  %pdata.addr = alloca %struct.font_data_s*, align 8
  %podata.addr = alloca %struct.font_data_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %present = alloca i32, align 4
  %povalue = alloca %struct.ref_s*, align 8
  %opresent = alloca i32, align 4
  %pdict = alloca %struct.dict_s*, align 8
  store %struct.font_data_s* %pdata, %struct.font_data_s** %pdata.addr, align 8, !tbaa !1
  store %struct.font_data_s* %podata, %struct.font_data_s** %podata.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %present to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.font_data_s*, %struct.font_data_s** %pdata.addr, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %dict, i8* %3, %struct.ref_s** %pvalue) #5
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %present, align 4, !tbaa !23
  %4 = bitcast %struct.ref_s** %povalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %opresent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.font_data_s*, %struct.font_data_s** %podata.addr, align 8, !tbaa !1
  %dict1 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %dict1, i8* %7, %struct.ref_s** %povalue) #5
  %cmp3 = icmp sgt i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, i32* %opresent, align 4, !tbaa !23
  %8 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.font_data_s*, %struct.font_data_s** %podata.addr, align 8, !tbaa !1
  %dict5 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict5, i32 0, i32 1
  %pdict6 = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict6, align 8, !tbaa !1
  store %struct.dict_s* %10, %struct.dict_s** %pdict, align 8, !tbaa !1
  %11 = load i32, i32* %present, align 4, !tbaa !23
  %12 = load i32, i32* %opresent, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %present, align 4, !tbaa !23
  %cmp9 = icmp sle i32 %13, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %14 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 4
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %memory, i32 0, i32 1
  %pstruct = bitcast %union.v* %value11 to %struct.obj_header_s**
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %16 = bitcast %struct.obj_header_s* %15 to %struct.gs_memory_s*
  %17 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %povalue, align 8, !tbaa !1
  %call12 = call i32 @obj_eq(%struct.gs_memory_s* %16, %struct.ref_s* %17, %struct.ref_s* %18) #5
  %tobool = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %19 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %20 = phi i1 [ false, %entry ], [ %19, %lor.end ]
  %land.ext = zext i1 %20 to i32
  %21 = bitcast %struct.dict_s** %pdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast i32* %opresent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.ref_s** %povalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast i32* %present to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 0}
!7 = !{!"charstring_font_refs_s", !2, i64 0, !8, i64 8, !2, i64 24, !2, i64 32, !2, i64 40}
!8 = !{!"ref_s", !9, i64 0, !3, i64 8}
!9 = !{!"tas_s", !10, i64 0, !10, i64 2, !11, i64 4}
!10 = !{!"short", !3, i64 0}
!11 = !{!"int", !3, i64 0}
!12 = !{!8, !10, i64 0}
!13 = !{!8, !11, i64 4}
!14 = !{!7, !2, i64 24}
!15 = !{!7, !2, i64 32}
!16 = !{!7, !2, i64 40}
!17 = !{!18, !11, i64 64}
!18 = !{!"gs_type1_data_s", !19, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !20, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !21, i64 100, !21, i64 104, !22, i64 108, !21, i64 168, !11, i64 172, !22, i64 176, !22, i64 236, !11, i64 280, !22, i64 284, !11, i64 328, !22, i64 332, !22, i64 340, !22, i64 348, !22, i64 400, !22, i64 452, !3, i64 520, !11, i64 536}
!19 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!20 = !{!"long", !3, i64 0}
!21 = !{!"float", !3, i64 0}
!22 = !{!"", !11, i64 0, !3, i64 4}
!23 = !{!11, !11, i64 0}
!24 = !{!18, !11, i64 68}
!25 = !{!18, !11, i64 108}
!26 = !{!18, !11, i64 176}
!27 = !{!18, !11, i64 236}
!28 = !{!18, !11, i64 284}
!29 = !{!18, !11, i64 332}
!30 = !{!18, !11, i64 340}
!31 = !{!18, !11, i64 348}
!32 = !{!18, !11, i64 400}
!33 = !{!18, !11, i64 452}
!34 = !{!21, !21, i64 0}
!35 = !{!18, !21, i64 100}
!36 = !{!18, !11, i64 280}
!37 = !{!38, !2, i64 72}
!38 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !11, i64 32, !39, i64 40, !20, i64 56, !2, i64 64, !2, i64 72, !40, i64 80, !40, i64 104, !3, i64 128, !11, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !11, i64 148, !11, i64 152, !21, i64 156, !11, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !46, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !18, i64 448}
!39 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!40 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!41 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!42 = !{!"gs_font_name_s", !3, i64 0, !11, i64 48}
!43 = !{!"gs_rect_s", !44, i64 0, !44, i64 16}
!44 = !{!"gs_point_s", !45, i64 0, !45, i64 8}
!45 = !{!"double", !3, i64 0}
!46 = !{!"gs_uid_s", !20, i64 0, !2, i64 8}
!47 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 4, !23, i64 68, i64 4, !23, i64 72, i64 4, !23, i64 80, i64 8, !48, i64 88, i64 4, !23, i64 92, i64 4, !23, i64 96, i64 4, !23, i64 100, i64 4, !34, i64 104, i64 4, !34, i64 108, i64 4, !23, i64 112, i64 56, !5, i64 168, i64 4, !34, i64 172, i64 4, !23, i64 176, i64 4, !23, i64 180, i64 56, !5, i64 236, i64 4, !23, i64 240, i64 40, !5, i64 280, i64 4, !23, i64 284, i64 4, !23, i64 288, i64 40, !5, i64 328, i64 4, !23, i64 332, i64 4, !23, i64 336, i64 4, !5, i64 340, i64 4, !23, i64 344, i64 4, !5, i64 348, i64 4, !23, i64 352, i64 48, !5, i64 400, i64 4, !23, i64 404, i64 48, !5, i64 452, i64 4, !23, i64 456, i64 64, !5, i64 520, i64 16, !5, i64 536, i64 4, !23}
!48 = !{!20, !20, i64 0}
!49 = !{!38, !2, i64 504}
!50 = !{i64 0, i64 2, !51, i64 2, i64 2, !51, i64 4, i64 4, !23, i64 8, i64 8, !48, i64 8, i64 2, !51, i64 8, i64 4, !34, i64 8, i64 8, !48, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !48}
!51 = !{!10, !10, i64 0}
!52 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1}
!53 = !{!38, !2, i64 496}
!54 = !{!38, !2, i64 192}
!55 = !{!38, !2, i64 224}
!56 = !{!38, !2, i64 216}
!57 = !{!38, !2, i64 232}
!58 = !{!59, !3, i64 128}
!59 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !11, i64 32, !39, i64 40, !20, i64 56, !2, i64 64, !2, i64 72, !40, i64 80, !40, i64 104, !3, i64 128, !11, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !11, i64 148, !11, i64 152, !21, i64 156, !11, i64 160, !41, i64 168, !42, i64 272, !42, i64 324}
!60 = !{!59, !2, i64 64}
!61 = !{!59, !2, i64 16}
!62 = !{!63, !2, i64 8}
!63 = !{!"gs_context_state_s", !2, i64 0, !64, i64 8, !11, i64 80, !8, i64 88, !8, i64 104, !20, i64 120, !20, i64 128, !20, i64 136, !11, i64 144, !11, i64 148, !8, i64 152, !8, i64 168, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !66, i64 264, !66, i64 304, !2, i64 344, !11, i64 352, !2, i64 360, !67, i64 368, !69, i64 520, !70, i64 624, !2, i64 720}
!64 = !{!"gs_dual_memory_s", !2, i64 0, !65, i64 8, !11, i64 48, !2, i64 56, !11, i64 64, !11, i64 68}
!65 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!66 = !{!"op_array_table_s", !8, i64 0, !2, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!67 = !{!"dict_stack_s", !68, i64 0, !11, i64 96, !11, i64 100, !11, i64 104, !2, i64 112, !11, i64 120, !2, i64 128, !8, i64 136}
!68 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !11, i64 40, !11, i64 44, !8, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !2, i64 80, !2, i64 88}
!69 = !{!"exec_stack_s", !68, i64 0, !2, i64 96}
!70 = !{!"op_stack_s", !68, i64 0}
!71 = !{!63, !2, i64 624}
!72 = !{!18, !2, i64 40}
