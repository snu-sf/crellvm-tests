; ModuleID = './gdevpsfx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
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
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
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
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
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
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, i32, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [16 x float] }
%struct.cv_stem_hint_table = type { i32, i32, i32, [96 x %struct.cv_stem_hint] }
%struct.cv_stem_hint = type { i32, i32, i16 }

@default_defaultWidthX = external constant i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"type1_next\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psf_convert_type1_to_type2(%struct.stream_s* %s, %struct.gs_glyph_data_s* %pgd, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %cis = alloca %struct.gs_type1_state_s, align 8
  %hstem_hints = alloca %struct.cv_stem_hint_table, align 4
  %vstem_hints = alloca %struct.cv_stem_hint_table, align 4
  %first = alloca i32, align 4
  %need_moveto = alloca i32, align 4
  %replace_hints = alloca i32, align 4
  %hints_changed = alloca i32, align 4
  %width_on_stack = alloca i32, align 4
  %dotsection_flag = alloca i32, align 4
  %active_hints = alloca [12 x i8], align 1
  %dot_save_hints = alloca [12 x i8], align 1
  %hintmask_size = alloca i32, align 4
  %depth = alloca i32, align 4
  %prev_op = alloca i32, align 4
  %mx0 = alloca i32, align 4
  %my0 = alloca i32, align 4
  %c = alloca i32, align 4
  %csp = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %c88 = alloca i32, align 4
  %csp90 = alloca i32*, align 8
  %i96 = alloca i32, align 4
  %mx = alloca i32, align 4
  %my = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.start(i64 11216, i8* %0) #1
  %1 = bitcast %struct.cv_stem_hint_table* %hstem_hints to i8*
  call void @llvm.lifetime.start(i64 1164, i8* %1) #1
  %2 = bitcast %struct.cv_stem_hint_table* %vstem_hints to i8*
  call void @llvm.lifetime.start(i64 1164, i8* %2) #1
  %3 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  %4 = bitcast i32* %need_moveto to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %need_moveto, align 4, !tbaa !5
  %5 = bitcast i32* %replace_hints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %replace_hints, align 4, !tbaa !5
  %6 = bitcast i32* %hints_changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %hints_changed, align 4, !tbaa !5
  %7 = bitcast i32* %width_on_stack to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %width_on_stack, align 4, !tbaa !5
  %8 = bitcast i32* %dotsection_flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1, i32* %dotsection_flag, align 4, !tbaa !7
  %9 = bitcast [12 x i8]* %active_hints to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = bitcast [12 x i8]* %dot_save_hints to i8*
  call void @llvm.lifetime.start(i64 12, i8* %10) #1
  %11 = bitcast i32* %hintmask_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %prev_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %mx0, align 4, !tbaa !5
  %15 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %my0, align 4, !tbaa !5
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 22
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !8
  %width1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 22
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !20
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 1
  store i32 0, i32* %y2, align 4, !tbaa !21
  %lsb3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb3, i32 0, i32 0
  store i32 0, i32* %x4, align 4, !tbaa !22
  %current = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 1
  store i32 0, i32* %current, align 4, !tbaa !23
  %replaced_count = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 2
  store i32 0, i32* %replaced_count, align 4, !tbaa !25
  %count = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 0
  store i32 0, i32* %count, align 4, !tbaa !26
  %current5 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 1
  store i32 0, i32* %current5, align 4, !tbaa !23
  %replaced_count6 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 2
  store i32 0, i32* %replaced_count6, align 4, !tbaa !25
  %count7 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 0
  store i32 0, i32* %count7, align 4, !tbaa !26
  %16 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %17 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  call void @type1_next_init(%struct.gs_type1_state_s* %cis, %struct.gs_glyph_data_s* %16, %struct.gs_font_type1_s* %17) #5
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %18 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %call = call i32 @type1_next(%struct.gs_type1_state_s* %cis) #5
  store i32 %call, i32* %c, align 4, !tbaa !5
  %19 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %20 = load i32, i32* %os_count, align 4, !tbaa !27
  %sub = sub nsw i32 %20, 1
  %idxprom = sext i32 %sub to i64
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx = getelementptr inbounds [48 x i32], [48 x i32]* %ostack, i32 0, i64 %idxprom
  store i32* %arrayidx, i32** %csp, align 8, !tbaa !1
  %21 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %21, label %sw.default [
    i32 13, label %sw.bb
    i32 1, label %sw.bb.16
    i32 3, label %sw.bb.20
    i32 39, label %sw.bb.25
    i32 33, label %sw.bb.35
    i32 34, label %sw.bb.39
    i32 16, label %sw.bb.43
    i32 32, label %sw.bb.56
    i32 38, label %sw.bb.57
    i32 14, label %sw.bb.57
  ]

sw.default:                                       ; preds = %for.cond
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp eq i32 %22, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %sw.epilog

if.end:                                           ; preds = %sw.default
  %23 = load i32, i32* %c, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %24 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  call void @type1_clear(%struct.gs_type1_state_s* %cis) #5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %for.cond
  %ostack11 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx12 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack11, i32 0, i64 0
  %25 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %ostack13 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx14 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack13, i32 0, i64 1
  %26 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %call15 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %cis, i32 %25, i32 0, i32 %26, i32 0) #5
  br label %clear

sw.bb.16:                                         ; preds = %for.cond
  %27 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %27, i64 -1
  %lsb17 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb17, i32 0, i32 1
  %28 = load i32, i32* %y18, align 4, !tbaa !21
  %call19 = call i32 @type1_stem1(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %hstem_hints, i32* %add.ptr, i32 %28, i8* null) #5
  br label %clear

sw.bb.20:                                         ; preds = %for.cond
  %29 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i32, i32* %29, i64 -1
  %lsb22 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb22, i32 0, i32 0
  %30 = load i32, i32* %x23, align 4, !tbaa !22
  %call24 = call i32 @type1_stem1(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %vstem_hints, i32* %add.ptr21, i32 %30, i8* null) #5
  br label %clear

sw.bb.25:                                         ; preds = %for.cond
  %ostack26 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx27 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack26, i32 0, i64 0
  %31 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %ostack28 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx29 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack28, i32 0, i64 1
  %32 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %ostack30 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx31 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack30, i32 0, i64 2
  %33 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %ostack32 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx33 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack32, i32 0, i64 3
  %34 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %call34 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %cis, i32 %31, i32 %32, i32 %33, i32 %34) #5
  br label %clear

sw.bb.35:                                         ; preds = %for.cond
  %35 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i32, i32* %35, i64 -5
  %lsb37 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb37, i32 0, i32 0
  %36 = load i32, i32* %x38, align 4, !tbaa !22
  call void @type1_stem3(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %vstem_hints, i32* %add.ptr36, i32 %36, i8* null) #5
  br label %clear

sw.bb.39:                                         ; preds = %for.cond
  %37 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds i32, i32* %37, i64 -5
  %lsb41 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb41, i32 0, i32 1
  %38 = load i32, i32* %y42, align 4, !tbaa !21
  call void @type1_stem3(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %hstem_hints, i32* %add.ptr40, i32 %38, i8* null) #5
  br label %clear

clear:                                            ; preds = %sw.bb.39, %sw.bb.35, %sw.bb.25, %sw.bb.20, %sw.bb.16, %sw.bb
  call void @type1_clear(%struct.gs_type1_state_s* %cis) #5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %for.cond
  %39 = load i32*, i32** %csp, align 8, !tbaa !1
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %40, 768
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.43
  store i32 1, i32* %replace_hints, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %sw.bb.43
  %41 = load i32*, i32** %csp, align 8, !tbaa !1
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %42, 3072
  br i1 %cmp47, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.46
  %43 = load i32*, i32** %csp, align 8, !tbaa !1
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %44, 3328
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.46
  %45 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %45, i64 -1
  %46 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %shr = ashr i32 %46, 8
  %os_count51 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %47 = load i32, i32* %os_count51, align 4, !tbaa !27
  %sub52 = sub nsw i32 %47, %shr
  store i32 %sub52, i32* %os_count51, align 4, !tbaa !27
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %lor.lhs.false
  %os_count54 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %48 = load i32, i32* %os_count54, align 4, !tbaa !27
  %sub55 = sub nsw i32 %48, 2
  store i32 %sub55, i32* %os_count54, align 4, !tbaa !27
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.56:                                         ; preds = %for.cond
  store i32 1, i32* %replace_hints, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.57:                                         ; preds = %for.cond, %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.57, %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.56, %if.end.53, %clear, %if.end.10, %if.then.9
  %49 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.697 [
    i32 3, label %for.cond
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc, %for.end
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %count60 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 0
  %53 = load i32, i32* %count60, align 4, !tbaa !26
  %cmp61 = icmp slt i32 %52, %53
  br i1 %cmp61, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond.59
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %conv = trunc i32 %54 to i16
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %55 to i64
  %data = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [96 x %struct.cv_stem_hint], [96 x %struct.cv_stem_hint]* %data, i32 0, i64 %idxprom62
  %index = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx63, i32 0, i32 2
  store i16 %conv, i16* %index, align 2, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.59

for.end.64:                                       ; preds = %for.cond.59
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.76, %for.end.64
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %count66 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 0
  %58 = load i32, i32* %count66, align 4, !tbaa !26
  %cmp67 = icmp slt i32 %57, %58
  br i1 %cmp67, label %for.body.69, label %for.end.78

for.body.69:                                      ; preds = %for.cond.65
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %count70 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 0
  %60 = load i32, i32* %count70, align 4, !tbaa !26
  %add = add nsw i32 %59, %60
  %conv71 = trunc i32 %add to i16
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %61 to i64
  %data73 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [96 x %struct.cv_stem_hint], [96 x %struct.cv_stem_hint]* %data73, i32 0, i64 %idxprom72
  %index75 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx74, i32 0, i32 2
  store i16 %conv71, i16* %index75, align 2, !tbaa !28
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.69
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %inc77 = add nsw i32 %62, 1
  store i32 %inc77, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.end.78:                                       ; preds = %for.cond.65
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = load i32, i32* %replace_hints, align 4, !tbaa !5
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.end.78
  %count80 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 0
  %65 = load i32, i32* %count80, align 4, !tbaa !26
  %count81 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 0
  %66 = load i32, i32* %count81, align 4, !tbaa !26
  %add82 = add nsw i32 %65, %66
  %add83 = add nsw i32 %add82, 7
  %div = sdiv i32 %add83, 8
  store i32 %div, i32* %hintmask_size, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %67 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  %conv84 = zext i32 %67 to i64
  %call85 = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv84) #6
  br label %if.end.86

if.else:                                          ; preds = %for.end.78
  store i32 0, i32* %hintmask_size, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.79
  %68 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %69 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  call void @type1_next_init(%struct.gs_type1_state_s* %cis, %struct.gs_glyph_data_s* %68, %struct.gs_font_type1_s* %69) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %for.cond.87

for.cond.87:                                      ; preds = %cleanup.691, %if.end.86
  %70 = bitcast i32* %c88 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %call89 = call i32 @type1_next(%struct.gs_type1_state_s* %cis) #5
  store i32 %call89, i32* %c88, align 4, !tbaa !5
  %71 = bitcast i32** %csp90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %os_count91 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %72 = load i32, i32* %os_count91, align 4, !tbaa !27
  %sub92 = sub nsw i32 %72, 1
  %idxprom93 = sext i32 %sub92 to i64
  %ostack94 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx95 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack94, i32 0, i64 %idxprom93
  store i32* %arrayidx95, i32** %csp90, align 8, !tbaa !1
  %73 = bitcast i32* %i96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %mx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %my to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %need_moveto, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %76, 0
  br i1 %tobool97, label %land.lhs.true, label %if.end.161

land.lhs.true:                                    ; preds = %for.cond.87
  %77 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %77, 5
  br i1 %cmp98, label %land.lhs.true.100, label %lor.lhs.false.103

land.lhs.true.100:                                ; preds = %land.lhs.true
  %78 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp101 = icmp sle i32 %78, 8
  br i1 %cmp101, label %if.then.109, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.100, %land.lhs.true
  %79 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %79, 30
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.103
  %80 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp107 = icmp eq i32 %80, 31
  br i1 %cmp107, label %if.then.109, label %if.end.161

if.then.109:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.103, %land.lhs.true.100
  store i32 0, i32* %my, align 4, !tbaa !5
  store i32 0, i32* %mx, align 4, !tbaa !5
  store i32 0, i32* %need_moveto, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.then.109
  %81 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp110 = icmp sge i32 %81, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.body
  %82 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %83 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %82, i32 %83) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.113
  br label %do.end

do.end:                                           ; preds = %do.cond
  %84 = load i32, i32* %first, align 4, !tbaa !5
  %tobool114 = icmp ne i32 %84, 0
  br i1 %tobool114, label %if.then.115, label %if.end.143

if.then.115:                                      ; preds = %do.end
  %85 = load i32, i32* %width_on_stack, align 4, !tbaa !5
  %tobool116 = icmp ne i32 %85, 0
  br i1 %tobool116, label %if.then.117, label %if.end.134

if.then.117:                                      ; preds = %if.then.115
  %86 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %87 = load i32*, i32** %csp90, align 8, !tbaa !1
  %88 = load i32, i32* %87, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %86, i32 %88) #5
  %os_count118 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %89 = load i32, i32* %os_count118, align 4, !tbaa !27
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %os_count118, align 4, !tbaa !27
  store i32 0, i32* %i96, align 4, !tbaa !5
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.131, %if.then.117
  %90 = load i32, i32* %i96, align 4, !tbaa !5
  %os_count120 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %91 = load i32, i32* %os_count120, align 4, !tbaa !27
  %cmp121 = icmp slt i32 %90, %91
  br i1 %cmp121, label %for.body.123, label %for.end.133

for.body.123:                                     ; preds = %for.cond.119
  %92 = load i32, i32* %i96, align 4, !tbaa !5
  %add124 = add nsw i32 %92, 1
  %idxprom125 = sext i32 %add124 to i64
  %ostack126 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx127 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack126, i32 0, i64 %idxprom125
  %93 = load i32, i32* %arrayidx127, align 4, !tbaa !5
  %94 = load i32, i32* %i96, align 4, !tbaa !5
  %idxprom128 = sext i32 %94 to i64
  %ostack129 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx130 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack129, i32 0, i64 %idxprom128
  store i32 %93, i32* %arrayidx130, align 4, !tbaa !5
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.123
  %95 = load i32, i32* %i96, align 4, !tbaa !5
  %inc132 = add nsw i32 %95, 1
  store i32 %inc132, i32* %i96, align 4, !tbaa !5
  br label %for.cond.119

for.end.133:                                      ; preds = %for.cond.119
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %if.then.115
  %lsb135 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb135, i32 0, i32 0
  %96 = load i32, i32* %x136, align 4, !tbaa !22
  %97 = load i32, i32* %mx0, align 4, !tbaa !5
  %add137 = add nsw i32 %96, %97
  %98 = load i32, i32* %mx, align 4, !tbaa !5
  %add138 = add nsw i32 %98, %add137
  store i32 %add138, i32* %mx, align 4, !tbaa !5
  %lsb139 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb139, i32 0, i32 1
  %99 = load i32, i32* %y140, align 4, !tbaa !21
  %100 = load i32, i32* %my0, align 4, !tbaa !5
  %add141 = add nsw i32 %99, %100
  %101 = load i32, i32* %my, align 4, !tbaa !5
  %add142 = add nsw i32 %101, %add141
  store i32 %add142, i32* %my, align 4, !tbaa !5
  store i32 0, i32* %first, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.134, %do.end
  br label %do.body.144

do.body.144:                                      ; preds = %if.end.143
  %102 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool145 = icmp ne i32 %102, 0
  br i1 %tobool145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %do.body.144
  %103 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay147 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %104 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  call void @type2_put_hintmask(%struct.stream_s* %103, i8* %arraydecay147, i32 %104) #5
  store i32 0, i32* %hints_changed, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %do.body.144
  br label %do.cond.149

do.cond.149:                                      ; preds = %if.end.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  %105 = load i32, i32* %mx, align 4, !tbaa !5
  %cmp151 = icmp eq i32 %105, 0
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.end.150
  %106 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %107 = load i32, i32* %my, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %106, i32 %107) #5
  store i32 1, i32* %depth, align 4, !tbaa !5
  store i32 4, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.160

if.else.154:                                      ; preds = %do.end.150
  %108 = load i32, i32* %my, align 4, !tbaa !5
  %cmp155 = icmp eq i32 %108, 0
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.else.154
  %109 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %110 = load i32, i32* %mx, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %109, i32 %110) #5
  store i32 1, i32* %depth, align 4, !tbaa !5
  store i32 22, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.159

if.else.158:                                      ; preds = %if.else.154
  %111 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %112 = load i32, i32* %mx, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %111, i32 %112) #5
  %113 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %114 = load i32, i32* %my, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %113, i32 %114) #5
  store i32 2, i32* %depth, align 4, !tbaa !5
  store i32 21, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.158, %if.then.157
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %lor.lhs.false.106, %for.cond.87
  %115 = load i32, i32* %c88, align 4, !tbaa !5
  switch i32 %115, label %sw.default.162 [
    i32 1, label %sw.bb.202
    i32 3, label %sw.bb.221
    i32 33, label %sw.bb.227
    i32 34, label %sw.bb.232
    i32 32, label %sw.bb.237
    i32 9, label %sw.bb.267
    i32 65, label %sw.bb.268
    i32 4, label %sw.bb.273
    i32 22, label %sw.bb.277
    i32 21, label %sw.bb.281
    i32 13, label %sw.bb.351
    i32 38, label %sw.bb.403
    i32 14, label %sw.bb.416
    i32 39, label %sw.bb.435
    i32 16, label %sw.bb.449
    i32 5, label %sw.bb.503
    i32 6, label %sw.bb.511
    i32 7, label %sw.bb.521
    i32 31, label %sw.bb.532
    i32 30, label %sw.bb.546
    i32 8, label %sw.bb.560
  ]

sw.default.162:                                   ; preds = %if.end.161
  %116 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %116, -1
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %sw.default.162
  %117 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %117, i32 14) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.166:                                       ; preds = %sw.default.162
  %118 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp167 = icmp slt i32 %118, 0
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.166
  %119 = load i32, i32* %c88, align 4, !tbaa !5
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.170:                                       ; preds = %if.end.166
  %120 = load i32, i32* %c88, align 4, !tbaa !5
  %cmp171 = icmp sge i32 %120, 32
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.174:                                       ; preds = %if.end.170
  br label %copy

copy:                                             ; preds = %sw.default.690, %if.then.679, %if.then.670, %if.then.659, %if.then.650, %if.end.646, %if.end.629, %if.then.613, %if.end.609, %if.then.558, %if.then.544, %if.then.530, %if.then.519, %sw.default.510, %if.then.506, %sw.bb.459, %if.end.174
  br label %do.body.175

do.body.175:                                      ; preds = %copy
  %121 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp176 = icmp sge i32 %121, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %do.body.175
  %122 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %123 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %122, i32 %123) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %do.body.175
  br label %do.cond.180

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  br label %do.body.182

do.body.182:                                      ; preds = %do.end.181
  %124 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool183 = icmp ne i32 %124, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %do.body.182
  %125 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay185 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %126 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  call void @type2_put_hintmask(%struct.stream_s* %125, i8* %arraydecay185, i32 %126) #5
  store i32 0, i32* %hints_changed, align 4, !tbaa !5
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %do.body.182
  br label %do.cond.187

do.cond.187:                                      ; preds = %if.end.186
  br label %do.end.188

do.end.188:                                       ; preds = %do.cond.187
  br label %put

put:                                              ; preds = %sw.bb.689, %sw.bb.688, %if.end.680, %if.end.660, %if.then.638, %if.then.622, %if.end.559, %if.end.545, %if.end.531, %if.end.520, %sw.bb.509, %sw.bb.508, %do.end.188
  store i32 0, i32* %i96, align 4, !tbaa !5
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.197, %put
  %127 = load i32, i32* %i96, align 4, !tbaa !5
  %os_count190 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %128 = load i32, i32* %os_count190, align 4, !tbaa !27
  %cmp191 = icmp slt i32 %127, %128
  br i1 %cmp191, label %for.body.193, label %for.end.199

for.body.193:                                     ; preds = %for.cond.189
  %129 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %130 = load i32, i32* %i96, align 4, !tbaa !5
  %idxprom194 = sext i32 %130 to i64
  %ostack195 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx196 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack195, i32 0, i64 %idxprom194
  %131 = load i32, i32* %arrayidx196, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %129, i32 %131) #5
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.193
  %132 = load i32, i32* %i96, align 4, !tbaa !5
  %inc198 = add nsw i32 %132, 1
  store i32 %inc198, i32* %i96, align 4, !tbaa !5
  br label %for.cond.189

for.end.199:                                      ; preds = %for.cond.189
  %os_count200 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %133 = load i32, i32* %os_count200, align 4, !tbaa !27
  %134 = load i32, i32* %depth, align 4, !tbaa !5
  %add201 = add nsw i32 %134, %133
  store i32 %add201, i32* %depth, align 4, !tbaa !5
  %135 = load i32, i32* %c88, align 4, !tbaa !5
  store i32 %135, i32* %prev_op, align 4, !tbaa !5
  call void @type1_clear(%struct.gs_type1_state_s* %cis) #5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.202:                                        ; preds = %if.end.161
  %136 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr203 = getelementptr inbounds i32, i32* %136, i64 -1
  %lsb204 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb204, i32 0, i32 1
  %137 = load i32, i32* %y205, align 4, !tbaa !21
  %arraydecay206 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %call207 = call i32 @type1_stem1(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %hstem_hints, i32* %add.ptr203, i32 %137, i8* %arraydecay206) #5
  br label %hint

hint:                                             ; preds = %sw.bb.232, %sw.bb.227, %sw.bb.221, %sw.bb.202
  br label %do.body.208

do.body.208:                                      ; preds = %hint
  %138 = load i32, i32* %replace_hints, align 4, !tbaa !5
  store i32 %138, i32* %hints_changed, align 4, !tbaa !5
  %139 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool209 = icmp ne i32 %139, 0
  br i1 %tobool209, label %if.then.210, label %if.end.218

if.then.210:                                      ; preds = %do.body.208
  br label %do.body.211

do.body.211:                                      ; preds = %if.then.210
  %140 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp212 = icmp sge i32 %140, 0
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %do.body.211
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %142 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %141, i32 %142) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %do.body.211
  br label %do.cond.216

do.cond.216:                                      ; preds = %if.end.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %if.end.218

if.end.218:                                       ; preds = %do.end.217, %do.body.208
  br label %do.cond.219

do.cond.219:                                      ; preds = %if.end.218
  br label %do.end.220

do.end.220:                                       ; preds = %do.cond.219
  call void @type1_clear(%struct.gs_type1_state_s* %cis) #5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.221:                                        ; preds = %if.end.161
  %143 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i32, i32* %143, i64 -1
  %lsb223 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x224 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb223, i32 0, i32 0
  %144 = load i32, i32* %x224, align 4, !tbaa !22
  %arraydecay225 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %call226 = call i32 @type1_stem1(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %vstem_hints, i32* %add.ptr222, i32 %144, i8* %arraydecay225) #5
  br label %hint

sw.bb.227:                                        ; preds = %if.end.161
  %145 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds i32, i32* %145, i64 -5
  %lsb229 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb229, i32 0, i32 0
  %146 = load i32, i32* %x230, align 4, !tbaa !22
  %arraydecay231 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  call void @type1_stem3(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %vstem_hints, i32* %add.ptr228, i32 %146, i8* %arraydecay231) #5
  br label %hint

sw.bb.232:                                        ; preds = %if.end.161
  %147 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i32, i32* %147, i64 -5
  %lsb234 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y235 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb234, i32 0, i32 1
  %148 = load i32, i32* %y235, align 4, !tbaa !21
  %arraydecay236 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  call void @type1_stem3(%struct.gs_type1_state_s* %cis, %struct.cv_stem_hint_table* %hstem_hints, i32* %add.ptr233, i32 %148, i8* %arraydecay236) #5
  br label %hint

sw.bb.237:                                        ; preds = %if.end.161
  %149 = load i32, i32* %dotsection_flag, align 4, !tbaa !7
  %cmp238 = icmp eq i32 %149, -1
  br i1 %cmp238, label %if.then.240, label %if.else.248

if.then.240:                                      ; preds = %sw.bb.237
  %arraydecay241 = getelementptr inbounds [12 x i8], [12 x i8]* %dot_save_hints, i32 0, i32 0
  %arraydecay242 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %150 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  %conv243 = zext i32 %150 to i64
  %call244 = call i8* @memcpy(i8* %arraydecay241, i8* %arraydecay242, i64 %conv243) #6
  %arraydecay245 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %151 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  %conv246 = zext i32 %151 to i64
  %call247 = call i8* @memset(i8* %arraydecay245, i32 0, i64 %conv246) #6
  store i32 0, i32* %dotsection_flag, align 4, !tbaa !7
  br label %if.end.253

if.else.248:                                      ; preds = %sw.bb.237
  %arraydecay249 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %arraydecay250 = getelementptr inbounds [12 x i8], [12 x i8]* %dot_save_hints, i32 0, i32 0
  %152 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  %conv251 = zext i32 %152 to i64
  %call252 = call i8* @memcpy(i8* %arraydecay249, i8* %arraydecay250, i64 %conv251) #6
  store i32 -1, i32* %dotsection_flag, align 4, !tbaa !7
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.248, %if.then.240
  br label %do.body.254

do.body.254:                                      ; preds = %if.end.253
  %153 = load i32, i32* %replace_hints, align 4, !tbaa !5
  store i32 %153, i32* %hints_changed, align 4, !tbaa !5
  %154 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool255 = icmp ne i32 %154, 0
  br i1 %tobool255, label %if.then.256, label %if.end.264

if.then.256:                                      ; preds = %do.body.254
  br label %do.body.257

do.body.257:                                      ; preds = %if.then.256
  %155 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp258 = icmp sge i32 %155, 0
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %do.body.257
  %156 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %157 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %156, i32 %157) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %do.body.257
  br label %do.cond.262

do.cond.262:                                      ; preds = %if.end.261
  br label %do.end.263

do.end.263:                                       ; preds = %do.cond.262
  br label %if.end.264

if.end.264:                                       ; preds = %do.end.263, %do.body.254
  br label %do.cond.265

do.cond.265:                                      ; preds = %if.end.264
  br label %do.end.266

do.end.266:                                       ; preds = %do.cond.265
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.267:                                        ; preds = %if.end.161
  store i32 1, i32* %need_moveto, align 4, !tbaa !5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.268:                                        ; preds = %if.end.161
  %158 = load i32, i32* %first, align 4, !tbaa !5
  %tobool269 = icmp ne i32 %158, 0
  br i1 %tobool269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %sw.bb.268
  %159 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i32, i32* %159, i64 -1
  %160 = load i32, i32* %arrayidx271, align 4, !tbaa !5
  store i32 %160, i32* %mx0, align 4, !tbaa !5
  %161 = load i32*, i32** %csp90, align 8, !tbaa !1
  %162 = load i32, i32* %161, align 4, !tbaa !5
  store i32 %162, i32* %my0, align 4, !tbaa !5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %sw.bb.268
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.273:                                        ; preds = %if.end.161
  store i32 0, i32* %mx, align 4, !tbaa !5
  %163 = load i32*, i32** %csp90, align 8, !tbaa !1
  %164 = load i32, i32* %163, align 4, !tbaa !5
  store i32 %164, i32* %my, align 4, !tbaa !5
  %165 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr274 = getelementptr inbounds i32, i32* %165, i64 -1
  store i32* %add.ptr274, i32** %csp90, align 8, !tbaa !1
  %os_count275 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %166 = load i32, i32* %os_count275, align 4, !tbaa !27
  %sub276 = sub nsw i32 %166, 1
  store i32 %sub276, i32* %os_count275, align 4, !tbaa !27
  br label %move

sw.bb.277:                                        ; preds = %if.end.161
  %167 = load i32*, i32** %csp90, align 8, !tbaa !1
  %168 = load i32, i32* %167, align 4, !tbaa !5
  store i32 %168, i32* %mx, align 4, !tbaa !5
  store i32 0, i32* %my, align 4, !tbaa !5
  %169 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i32, i32* %169, i64 -1
  store i32* %add.ptr278, i32** %csp90, align 8, !tbaa !1
  %os_count279 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %170 = load i32, i32* %os_count279, align 4, !tbaa !27
  %sub280 = sub nsw i32 %170, 1
  store i32 %sub280, i32* %os_count279, align 4, !tbaa !27
  br label %move

sw.bb.281:                                        ; preds = %if.end.161
  %171 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i32, i32* %171, i64 -1
  %172 = load i32, i32* %arrayidx282, align 4, !tbaa !5
  store i32 %172, i32* %mx, align 4, !tbaa !5
  %173 = load i32*, i32** %csp90, align 8, !tbaa !1
  %174 = load i32, i32* %173, align 4, !tbaa !5
  store i32 %174, i32* %my, align 4, !tbaa !5
  %175 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr283 = getelementptr inbounds i32, i32* %175, i64 -2
  store i32* %add.ptr283, i32** %csp90, align 8, !tbaa !1
  %os_count284 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %176 = load i32, i32* %os_count284, align 4, !tbaa !27
  %sub285 = sub nsw i32 %176, 2
  store i32 %sub285, i32* %os_count284, align 4, !tbaa !27
  br label %move

move:                                             ; preds = %sw.bb.281, %sw.bb.277, %sw.bb.273
  store i32 0, i32* %need_moveto, align 4, !tbaa !5
  br label %do.body.286

do.body.286:                                      ; preds = %move
  %177 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp287 = icmp sge i32 %177, 0
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %do.body.286
  %178 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %179 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %178, i32 %179) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %do.body.286
  br label %do.cond.291

do.cond.291:                                      ; preds = %if.end.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  %180 = load i32, i32* %first, align 4, !tbaa !5
  %tobool293 = icmp ne i32 %180, 0
  br i1 %tobool293, label %if.then.294, label %if.end.307

if.then.294:                                      ; preds = %do.end.292
  %os_count295 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %181 = load i32, i32* %os_count295, align 4, !tbaa !27
  %tobool296 = icmp ne i32 %181, 0
  br i1 %tobool296, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.then.294
  %182 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %183 = load i32*, i32** %csp90, align 8, !tbaa !1
  %184 = load i32, i32* %183, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %182, i32 %184) #5
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %if.then.294
  %lsb299 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x300 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb299, i32 0, i32 0
  %185 = load i32, i32* %x300, align 4, !tbaa !22
  %186 = load i32, i32* %mx0, align 4, !tbaa !5
  %add301 = add nsw i32 %185, %186
  %187 = load i32, i32* %mx, align 4, !tbaa !5
  %add302 = add nsw i32 %187, %add301
  store i32 %add302, i32* %mx, align 4, !tbaa !5
  %lsb303 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y304 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb303, i32 0, i32 1
  %188 = load i32, i32* %y304, align 4, !tbaa !21
  %189 = load i32, i32* %my0, align 4, !tbaa !5
  %add305 = add nsw i32 %188, %189
  %190 = load i32, i32* %my, align 4, !tbaa !5
  %add306 = add nsw i32 %190, %add305
  store i32 %add306, i32* %my, align 4, !tbaa !5
  store i32 0, i32* %first, align 4, !tbaa !5
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.298, %do.end.292
  %flex_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 32
  %191 = load i32, i32* %flex_count, align 4, !tbaa !31
  %cmp308 = icmp ne i32 %191, 8
  br i1 %cmp308, label %if.then.310, label %if.end.333

if.then.310:                                      ; preds = %if.end.307
  %call311 = call i32 @type1_next(%struct.gs_type1_state_s* %cis) #5
  %cmp312 = icmp ne i32 %call311, 16
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.then.310
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.315:                                       ; preds = %if.then.310
  %os_count316 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %192 = load i32, i32* %os_count316, align 4, !tbaa !27
  %sub317 = sub nsw i32 %192, 1
  %idxprom318 = sext i32 %sub317 to i64
  %ostack319 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx320 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack319, i32 0, i64 %idxprom318
  store i32* %arrayidx320, i32** %csp90, align 8, !tbaa !1
  %193 = load i32*, i32** %csp90, align 8, !tbaa !1
  %194 = load i32, i32* %193, align 4, !tbaa !5
  %cmp321 = icmp ne i32 %194, 512
  br i1 %cmp321, label %if.then.328, label %lor.lhs.false.323

lor.lhs.false.323:                                ; preds = %if.end.315
  %195 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i32, i32* %195, i64 -1
  %196 = load i32, i32* %arrayidx324, align 4, !tbaa !5
  %conv325 = sext i32 %196 to i64
  %cmp326 = icmp ne i64 %conv325, 0
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %lor.lhs.false.323, %if.end.315
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.329:                                       ; preds = %lor.lhs.false.323
  %flex_count330 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 32
  %197 = load i32, i32* %flex_count330, align 4, !tbaa !31
  %inc331 = add nsw i32 %197, 1
  store i32 %inc331, i32* %flex_count330, align 4, !tbaa !31
  %198 = load i32, i32* %mx, align 4, !tbaa !5
  %199 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i32, i32* %199, i64 -1
  store i32 %198, i32* %arrayidx332, align 4, !tbaa !5
  %200 = load i32, i32* %my, align 4, !tbaa !5
  %201 = load i32*, i32** %csp90, align 8, !tbaa !1
  store i32 %200, i32* %201, align 4, !tbaa !5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

if.end.333:                                       ; preds = %if.end.307
  br label %do.body.334

do.body.334:                                      ; preds = %if.end.333
  %202 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool335 = icmp ne i32 %202, 0
  br i1 %tobool335, label %if.then.336, label %if.end.338

if.then.336:                                      ; preds = %do.body.334
  %203 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay337 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %204 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  call void @type2_put_hintmask(%struct.stream_s* %203, i8* %arraydecay337, i32 %204) #5
  store i32 0, i32* %hints_changed, align 4, !tbaa !5
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.336, %do.body.334
  br label %do.cond.339

do.cond.339:                                      ; preds = %if.end.338
  br label %do.end.340

do.end.340:                                       ; preds = %do.cond.339
  %205 = load i32, i32* %mx, align 4, !tbaa !5
  %cmp341 = icmp eq i32 %205, 0
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %do.end.340
  %206 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %207 = load i32, i32* %my, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %206, i32 %207) #5
  store i32 1, i32* %depth, align 4, !tbaa !5
  store i32 4, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.350

if.else.344:                                      ; preds = %do.end.340
  %208 = load i32, i32* %my, align 4, !tbaa !5
  %cmp345 = icmp eq i32 %208, 0
  br i1 %cmp345, label %if.then.347, label %if.else.348

if.then.347:                                      ; preds = %if.else.344
  %209 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %210 = load i32, i32* %mx, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %209, i32 %210) #5
  store i32 1, i32* %depth, align 4, !tbaa !5
  store i32 22, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.349

if.else.348:                                      ; preds = %if.else.344
  %211 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %212 = load i32, i32* %mx, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %211, i32 %212) #5
  %213 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %214 = load i32, i32* %my, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %213, i32 %214) #5
  store i32 2, i32* %depth, align 4, !tbaa !5
  store i32 21, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.348, %if.then.347
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.343
  call void @type1_clear(%struct.gs_type1_state_s* %cis) #5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.351:                                        ; preds = %if.end.161
  %ostack352 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx353 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack352, i32 0, i64 0
  %215 = load i32, i32* %arrayidx353, align 4, !tbaa !5
  %ostack354 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx355 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack354, i32 0, i64 1
  %216 = load i32, i32* %arrayidx355, align 4, !tbaa !5
  %call356 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %cis, i32 %215, i32 0, i32 %216, i32 0) #5
  %ostack357 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx358 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack357, i32 0, i64 1
  %217 = load i32, i32* %arrayidx358, align 4, !tbaa !5
  %ostack359 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx360 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack359, i32 0, i64 0
  store i32 %217, i32* %arrayidx360, align 4, !tbaa !5
  br label %sbw

sbw:                                              ; preds = %sw.bb.435, %sw.bb.351
  %ostack361 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx362 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack361, i32 0, i64 0
  %218 = load i32, i32* %arrayidx362, align 4, !tbaa !5
  %conv363 = sext i32 %218 to i64
  %219 = load i64, i64* @default_defaultWidthX, align 8, !tbaa !32
  %cmp364 = icmp eq i64 %conv363, %219
  br i1 %cmp364, label %if.then.366, label %if.else.368

if.then.366:                                      ; preds = %sbw
  %os_count367 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  store i32 0, i32* %os_count367, align 4, !tbaa !27
  br label %if.end.375

if.else.368:                                      ; preds = %sbw
  %220 = load i64, i64* @default_defaultWidthX, align 8, !tbaa !32
  %ostack369 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx370 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack369, i32 0, i64 0
  %221 = load i32, i32* %arrayidx370, align 4, !tbaa !5
  %conv371 = sext i32 %221 to i64
  %sub372 = sub nsw i64 %conv371, %220
  %conv373 = trunc i64 %sub372 to i32
  store i32 %conv373, i32* %arrayidx370, align 4, !tbaa !5
  %os_count374 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  store i32 1, i32* %os_count374, align 4, !tbaa !27
  store i32 1, i32* %width_on_stack, align 4, !tbaa !5
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.368, %if.then.366
  %count376 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %hstem_hints, i32 0, i32 0
  %222 = load i32, i32* %count376, align 4, !tbaa !26
  %tobool377 = icmp ne i32 %222, 0
  br i1 %tobool377, label %if.then.378, label %if.end.388

if.then.378:                                      ; preds = %if.end.375
  %os_count379 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %223 = load i32, i32* %os_count379, align 4, !tbaa !27
  %tobool380 = icmp ne i32 %223, 0
  br i1 %tobool380, label %if.then.381, label %if.end.384

if.then.381:                                      ; preds = %if.then.378
  %224 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %ostack382 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx383 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack382, i32 0, i64 0
  %225 = load i32, i32* %arrayidx383, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %224, i32 %225) #5
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.381, %if.then.378
  %226 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %os_count385 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %227 = load i32, i32* %os_count385, align 4, !tbaa !27
  %228 = load i32, i32* %replace_hints, align 4, !tbaa !5
  %tobool386 = icmp ne i32 %228, 0
  %cond = select i1 %tobool386, i32 18, i32 1
  call void @type2_put_stems(%struct.stream_s* %226, i32 %227, %struct.cv_stem_hint_table* %hstem_hints, i32 %cond) #5
  %os_count387 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  store i32 0, i32* %os_count387, align 4, !tbaa !27
  store i32 0, i32* %width_on_stack, align 4, !tbaa !5
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.384, %if.end.375
  %count389 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %vstem_hints, i32 0, i32 0
  %229 = load i32, i32* %count389, align 4, !tbaa !26
  %tobool390 = icmp ne i32 %229, 0
  br i1 %tobool390, label %if.then.391, label %if.end.402

if.then.391:                                      ; preds = %if.end.388
  %os_count392 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %230 = load i32, i32* %os_count392, align 4, !tbaa !27
  %tobool393 = icmp ne i32 %230, 0
  br i1 %tobool393, label %if.then.394, label %if.end.397

if.then.394:                                      ; preds = %if.then.391
  %231 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %ostack395 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx396 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack395, i32 0, i64 0
  %232 = load i32, i32* %arrayidx396, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %231, i32 %232) #5
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.394, %if.then.391
  %233 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %os_count398 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %234 = load i32, i32* %os_count398, align 4, !tbaa !27
  %235 = load i32, i32* %replace_hints, align 4, !tbaa !5
  %tobool399 = icmp ne i32 %235, 0
  %cond400 = select i1 %tobool399, i32 23, i32 3
  call void @type2_put_stems(%struct.stream_s* %233, i32 %234, %struct.cv_stem_hint_table* %vstem_hints, i32 %cond400) #5
  %os_count401 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  store i32 0, i32* %os_count401, align 4, !tbaa !27
  store i32 0, i32* %width_on_stack, align 4, !tbaa !5
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.397, %if.end.388
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.403:                                        ; preds = %if.end.161
  %lsb404 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x405 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb404, i32 0, i32 0
  %236 = load i32, i32* %x405, align 4, !tbaa !22
  %237 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx406 = getelementptr inbounds i32, i32* %237, i64 -4
  %238 = load i32, i32* %arrayidx406, align 4, !tbaa !5
  %sub407 = sub nsw i32 %236, %238
  %239 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i32, i32* %239, i64 -3
  %240 = load i32, i32* %arrayidx408, align 4, !tbaa !5
  %add409 = add nsw i32 %240, %sub407
  store i32 %add409, i32* %arrayidx408, align 4, !tbaa !5
  %241 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr410 = getelementptr inbounds i32, i32* %241, i64 -4
  %242 = bitcast i32* %add.ptr410 to i8*
  %243 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr411 = getelementptr inbounds i32, i32* %243, i64 -3
  %244 = bitcast i32* %add.ptr411 to i8*
  %call412 = call i8* @memmove(i8* %242, i8* %244, i64 16) #6
  %245 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr413 = getelementptr inbounds i32, i32* %245, i64 -1
  store i32* %add.ptr413, i32** %csp90, align 8, !tbaa !1
  %os_count414 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %246 = load i32, i32* %os_count414, align 4, !tbaa !27
  %sub415 = sub nsw i32 %246, 1
  store i32 %sub415, i32* %os_count414, align 4, !tbaa !27
  br label %sw.bb.416

sw.bb.416:                                        ; preds = %if.end.161, %sw.bb.403
  br label %do.body.417

do.body.417:                                      ; preds = %sw.bb.416
  %247 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp418 = icmp sge i32 %247, 0
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %do.body.417
  %248 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %249 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %248, i32 %249) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.420, %do.body.417
  br label %do.cond.422

do.cond.422:                                      ; preds = %if.end.421
  br label %do.end.423

do.end.423:                                       ; preds = %do.cond.422
  store i32 0, i32* %i96, align 4, !tbaa !5
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.432, %do.end.423
  %250 = load i32, i32* %i96, align 4, !tbaa !5
  %os_count425 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %251 = load i32, i32* %os_count425, align 4, !tbaa !27
  %cmp426 = icmp slt i32 %250, %251
  br i1 %cmp426, label %for.body.428, label %for.end.434

for.body.428:                                     ; preds = %for.cond.424
  %252 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %253 = load i32, i32* %i96, align 4, !tbaa !5
  %idxprom429 = sext i32 %253 to i64
  %ostack430 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx431 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack430, i32 0, i64 %idxprom429
  %254 = load i32, i32* %arrayidx431, align 4, !tbaa !5
  call void @type2_put_fixed(%struct.stream_s* %252, i32 %254) #5
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.body.428
  %255 = load i32, i32* %i96, align 4, !tbaa !5
  %inc433 = add nsw i32 %255, 1
  store i32 %inc433, i32* %i96, align 4, !tbaa !5
  br label %for.cond.424

for.end.434:                                      ; preds = %for.cond.424
  %256 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %256, i32 14) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.435:                                        ; preds = %if.end.161
  %ostack436 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx437 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack436, i32 0, i64 0
  %257 = load i32, i32* %arrayidx437, align 4, !tbaa !5
  %ostack438 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx439 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack438, i32 0, i64 1
  %258 = load i32, i32* %arrayidx439, align 4, !tbaa !5
  %ostack440 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx441 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack440, i32 0, i64 2
  %259 = load i32, i32* %arrayidx441, align 4, !tbaa !5
  %ostack442 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx443 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack442, i32 0, i64 3
  %260 = load i32, i32* %arrayidx443, align 4, !tbaa !5
  %call444 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %cis, i32 %257, i32 %258, i32 %259, i32 %260) #5
  %ostack445 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx446 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack445, i32 0, i64 2
  %261 = load i32, i32* %arrayidx446, align 4, !tbaa !5
  %ostack447 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 12
  %arrayidx448 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack447, i32 0, i64 0
  store i32 %261, i32* %arrayidx448, align 4, !tbaa !5
  br label %sbw

sw.bb.449:                                        ; preds = %if.end.161
  br label %do.body.450

do.body.450:                                      ; preds = %sw.bb.449
  %262 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp451 = icmp sge i32 %262, 0
  br i1 %cmp451, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %do.body.450
  %263 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %264 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %263, i32 %264) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %do.body.450
  br label %do.cond.455

do.cond.455:                                      ; preds = %if.end.454
  br label %do.end.456

do.end.456:                                       ; preds = %do.cond.455
  %265 = load i32*, i32** %csp90, align 8, !tbaa !1
  %266 = load i32, i32* %265, align 4, !tbaa !5
  %shr457 = ashr i32 %266, 8
  switch i32 %shr457, label %sw.default.458 [
    i32 0, label %sw.bb.459
    i32 1, label %sw.bb.473
    i32 3, label %sw.bb.477
    i32 12, label %sw.bb.497
    i32 13, label %sw.bb.497
  ]

sw.default.458:                                   ; preds = %do.end.456
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.459:                                        ; preds = %do.end.456
  %267 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds i32, i32* %267, i64 -16
  %268 = load i32, i32* %arrayidx460, align 4, !tbaa !5
  %269 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx461 = getelementptr inbounds i32, i32* %269, i64 -18
  %270 = load i32, i32* %arrayidx461, align 4, !tbaa !5
  %add462 = add nsw i32 %270, %268
  store i32 %add462, i32* %arrayidx461, align 4, !tbaa !5
  %271 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds i32, i32* %271, i64 -15
  %272 = load i32, i32* %arrayidx463, align 4, !tbaa !5
  %273 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds i32, i32* %273, i64 -17
  %274 = load i32, i32* %arrayidx464, align 4, !tbaa !5
  %add465 = add nsw i32 %274, %272
  store i32 %add465, i32* %arrayidx464, align 4, !tbaa !5
  %275 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr466 = getelementptr inbounds i32, i32* %275, i64 -16
  %276 = bitcast i32* %add.ptr466 to i8*
  %277 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr467 = getelementptr inbounds i32, i32* %277, i64 -14
  %278 = bitcast i32* %add.ptr467 to i8*
  %call468 = call i8* @memmove(i8* %276, i8* %278, i64 44) #6
  %os_count469 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %279 = load i32, i32* %os_count469, align 4, !tbaa !27
  %sub470 = sub nsw i32 %279, 6
  store i32 %sub470, i32* %os_count469, align 4, !tbaa !27
  %280 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr471 = getelementptr inbounds i32, i32* %280, i64 -6
  store i32* %add.ptr471, i32** %csp90, align 8, !tbaa !1
  store i32 67, i32* %c88, align 4, !tbaa !5
  %flex_count472 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 32
  store i32 8, i32* %flex_count472, align 4, !tbaa !31
  %ignore_pops = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 33
  store i32 2, i32* %ignore_pops, align 4, !tbaa !33
  br label %copy

sw.bb.473:                                        ; preds = %do.end.456
  %flex_count474 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 32
  store i32 0, i32* %flex_count474, align 4, !tbaa !31
  %os_count475 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %281 = load i32, i32* %os_count475, align 4, !tbaa !27
  %sub476 = sub nsw i32 %281, 2
  store i32 %sub476, i32* %os_count475, align 4, !tbaa !27
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.477:                                        ; preds = %do.end.456
  %arraydecay478 = getelementptr inbounds [12 x i8], [12 x i8]* %active_hints, i32 0, i32 0
  %282 = load i32, i32* %hintmask_size, align 4, !tbaa !5
  %conv479 = zext i32 %282 to i64
  %call480 = call i8* @memset(i8* %arraydecay478, i32 0, i64 %conv479) #6
  br label %do.body.481

do.body.481:                                      ; preds = %sw.bb.477
  %283 = load i32, i32* %replace_hints, align 4, !tbaa !5
  store i32 %283, i32* %hints_changed, align 4, !tbaa !5
  %284 = load i32, i32* %hints_changed, align 4, !tbaa !5
  %tobool482 = icmp ne i32 %284, 0
  br i1 %tobool482, label %if.then.483, label %if.end.491

if.then.483:                                      ; preds = %do.body.481
  br label %do.body.484

do.body.484:                                      ; preds = %if.then.483
  %285 = load i32, i32* %prev_op, align 4, !tbaa !5
  %cmp485 = icmp sge i32 %285, 0
  br i1 %cmp485, label %if.then.487, label %if.end.488

if.then.487:                                      ; preds = %do.body.484
  %286 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %287 = load i32, i32* %prev_op, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %286, i32 %287) #5
  store i32 0, i32* %depth, align 4, !tbaa !5
  store i32 -1, i32* %prev_op, align 4, !tbaa !5
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.487, %do.body.484
  br label %do.cond.489

do.cond.489:                                      ; preds = %if.end.488
  br label %do.end.490

do.end.490:                                       ; preds = %do.cond.489
  br label %if.end.491

if.end.491:                                       ; preds = %do.end.490, %do.body.481
  br label %do.cond.492

do.cond.492:                                      ; preds = %if.end.491
  br label %do.end.493

do.end.493:                                       ; preds = %do.cond.492
  %ignore_pops494 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 33
  store i32 1, i32* %ignore_pops494, align 4, !tbaa !33
  %os_count495 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %288 = load i32, i32* %os_count495, align 4, !tbaa !27
  %sub496 = sub nsw i32 %288, 2
  store i32 %sub496, i32* %os_count495, align 4, !tbaa !27
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.497:                                        ; preds = %do.end.456, %do.end.456
  %289 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds i32, i32* %289, i64 -1
  %290 = load i32, i32* %arrayidx498, align 4, !tbaa !5
  %shr499 = ashr i32 %290, 8
  %add500 = add nsw i32 2, %shr499
  %os_count501 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %291 = load i32, i32* %os_count501, align 4, !tbaa !27
  %sub502 = sub nsw i32 %291, %add500
  store i32 %sub502, i32* %os_count501, align 4, !tbaa !27
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.691

sw.bb.503:                                        ; preds = %if.end.161
  %292 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp504 = icmp sgt i32 %292, 46
  br i1 %cmp504, label %if.then.506, label %if.end.507

if.then.506:                                      ; preds = %sw.bb.503
  br label %copy

if.end.507:                                       ; preds = %sw.bb.503
  %293 = load i32, i32* %prev_op, align 4, !tbaa !5
  switch i32 %293, label %sw.default.510 [
    i32 5, label %sw.bb.508
    i32 8, label %sw.bb.509
  ]

sw.bb.508:                                        ; preds = %if.end.507
  br label %put

sw.bb.509:                                        ; preds = %if.end.507
  store i32 24, i32* %c88, align 4, !tbaa !5
  br label %put

sw.default.510:                                   ; preds = %if.end.507
  br label %copy

sw.bb.511:                                        ; preds = %if.end.161
  %294 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp512 = icmp sgt i32 %294, 47
  br i1 %cmp512, label %if.then.519, label %lor.lhs.false.514

lor.lhs.false.514:                                ; preds = %sw.bb.511
  %295 = load i32, i32* %prev_op, align 4, !tbaa !5
  %296 = load i32, i32* %depth, align 4, !tbaa !5
  %and = and i32 %296, 1
  %tobool515 = icmp ne i32 %and, 0
  %cond516 = select i1 %tobool515, i32 7, i32 6
  %cmp517 = icmp ne i32 %295, %cond516
  br i1 %cmp517, label %if.then.519, label %if.end.520

if.then.519:                                      ; preds = %lor.lhs.false.514, %sw.bb.511
  br label %copy

if.end.520:                                       ; preds = %lor.lhs.false.514
  %297 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %297, i32* %c88, align 4, !tbaa !5
  br label %put

sw.bb.521:                                        ; preds = %if.end.161
  %298 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp522 = icmp sgt i32 %298, 47
  br i1 %cmp522, label %if.then.530, label %lor.lhs.false.524

lor.lhs.false.524:                                ; preds = %sw.bb.521
  %299 = load i32, i32* %prev_op, align 4, !tbaa !5
  %300 = load i32, i32* %depth, align 4, !tbaa !5
  %and525 = and i32 %300, 1
  %tobool526 = icmp ne i32 %and525, 0
  %cond527 = select i1 %tobool526, i32 6, i32 7
  %cmp528 = icmp ne i32 %299, %cond527
  br i1 %cmp528, label %if.then.530, label %if.end.531

if.then.530:                                      ; preds = %lor.lhs.false.524, %sw.bb.521
  br label %copy

if.end.531:                                       ; preds = %lor.lhs.false.524
  %301 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %301, i32* %c88, align 4, !tbaa !5
  br label %put

sw.bb.532:                                        ; preds = %if.end.161
  %302 = load i32, i32* %depth, align 4, !tbaa !5
  %and533 = and i32 %302, 1
  %tobool534 = icmp ne i32 %and533, 0
  br i1 %tobool534, label %if.then.544, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %sw.bb.532
  %303 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp536 = icmp sgt i32 %303, 44
  br i1 %cmp536, label %if.then.544, label %lor.lhs.false.538

lor.lhs.false.538:                                ; preds = %lor.lhs.false.535
  %304 = load i32, i32* %prev_op, align 4, !tbaa !5
  %305 = load i32, i32* %depth, align 4, !tbaa !5
  %and539 = and i32 %305, 4
  %tobool540 = icmp ne i32 %and539, 0
  %cond541 = select i1 %tobool540, i32 30, i32 31
  %cmp542 = icmp ne i32 %304, %cond541
  br i1 %cmp542, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %lor.lhs.false.538, %lor.lhs.false.535, %sw.bb.532
  br label %copy

if.end.545:                                       ; preds = %lor.lhs.false.538
  %306 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %306, i32* %c88, align 4, !tbaa !5
  br label %put

sw.bb.546:                                        ; preds = %if.end.161
  %307 = load i32, i32* %depth, align 4, !tbaa !5
  %and547 = and i32 %307, 1
  %tobool548 = icmp ne i32 %and547, 0
  br i1 %tobool548, label %if.then.558, label %lor.lhs.false.549

lor.lhs.false.549:                                ; preds = %sw.bb.546
  %308 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp550 = icmp sgt i32 %308, 44
  br i1 %cmp550, label %if.then.558, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %lor.lhs.false.549
  %309 = load i32, i32* %prev_op, align 4, !tbaa !5
  %310 = load i32, i32* %depth, align 4, !tbaa !5
  %and553 = and i32 %310, 4
  %tobool554 = icmp ne i32 %and553, 0
  %cond555 = select i1 %tobool554, i32 31, i32 30
  %cmp556 = icmp ne i32 %309, %cond555
  br i1 %cmp556, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %lor.lhs.false.552, %lor.lhs.false.549, %sw.bb.546
  br label %copy

if.end.559:                                       ; preds = %lor.lhs.false.552
  %311 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %311, i32* %c88, align 4, !tbaa !5
  br label %put

sw.bb.560:                                        ; preds = %if.end.161
  %312 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp561 = icmp eq i32 %312, 0
  br i1 %cmp561, label %if.then.563, label %if.end.610

if.then.563:                                      ; preds = %sw.bb.560
  %313 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx564 = getelementptr inbounds i32, i32* %313, i64 -1
  %314 = load i32, i32* %arrayidx564, align 4, !tbaa !5
  %cmp565 = icmp eq i32 %314, 0
  br i1 %cmp565, label %if.then.567, label %if.else.585

if.then.567:                                      ; preds = %if.then.563
  store i32 26, i32* %c88, align 4, !tbaa !5
  %315 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx568 = getelementptr inbounds i32, i32* %315, i64 0
  %316 = load i32, i32* %arrayidx568, align 4, !tbaa !5
  %317 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i32, i32* %317, i64 -1
  store i32 %316, i32* %arrayidx569, align 4, !tbaa !5
  %318 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds i32, i32* %318, i64 -5
  %319 = load i32, i32* %arrayidx570, align 4, !tbaa !5
  %cmp571 = icmp eq i32 %319, 0
  br i1 %cmp571, label %if.then.573, label %if.else.580

if.then.573:                                      ; preds = %if.then.567
  %320 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr574 = getelementptr inbounds i32, i32* %320, i64 -5
  %321 = bitcast i32* %add.ptr574 to i8*
  %322 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr575 = getelementptr inbounds i32, i32* %322, i64 -4
  %323 = bitcast i32* %add.ptr575 to i8*
  %call576 = call i8* @memmove(i8* %321, i8* %323, i64 16) #6
  %324 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr577 = getelementptr inbounds i32, i32* %324, i64 -2
  store i32* %add.ptr577, i32** %csp90, align 8, !tbaa !1
  %os_count578 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %325 = load i32, i32* %os_count578, align 4, !tbaa !27
  %sub579 = sub nsw i32 %325, 2
  store i32 %sub579, i32* %os_count578, align 4, !tbaa !27
  br label %if.end.584

if.else.580:                                      ; preds = %if.then.567
  %326 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr581 = getelementptr inbounds i32, i32* %326, i64 -1
  store i32* %add.ptr581, i32** %csp90, align 8, !tbaa !1
  %os_count582 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %327 = load i32, i32* %os_count582, align 4, !tbaa !27
  %sub583 = sub nsw i32 %327, 1
  store i32 %sub583, i32* %os_count582, align 4, !tbaa !27
  br label %if.end.584

if.end.584:                                       ; preds = %if.else.580, %if.then.573
  br label %if.end.609

if.else.585:                                      ; preds = %if.then.563
  %328 = load i32*, i32** %csp90, align 8, !tbaa !1
  %329 = load i32, i32* %328, align 4, !tbaa !5
  %cmp586 = icmp eq i32 %329, 0
  br i1 %cmp586, label %if.then.588, label %if.end.608

if.then.588:                                      ; preds = %if.else.585
  store i32 27, i32* %c88, align 4, !tbaa !5
  %330 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx589 = getelementptr inbounds i32, i32* %330, i64 -4
  %331 = load i32, i32* %arrayidx589, align 4, !tbaa !5
  %cmp590 = icmp eq i32 %331, 0
  br i1 %cmp590, label %if.then.592, label %if.else.599

if.then.592:                                      ; preds = %if.then.588
  %332 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr593 = getelementptr inbounds i32, i32* %332, i64 -4
  %333 = bitcast i32* %add.ptr593 to i8*
  %334 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr594 = getelementptr inbounds i32, i32* %334, i64 -3
  %335 = bitcast i32* %add.ptr594 to i8*
  %call595 = call i8* @memmove(i8* %333, i8* %335, i64 12) #6
  %336 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr596 = getelementptr inbounds i32, i32* %336, i64 -2
  store i32* %add.ptr596, i32** %csp90, align 8, !tbaa !1
  %os_count597 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %337 = load i32, i32* %os_count597, align 4, !tbaa !27
  %sub598 = sub nsw i32 %337, 2
  store i32 %sub598, i32* %os_count597, align 4, !tbaa !27
  br label %if.end.607

if.else.599:                                      ; preds = %if.then.588
  %338 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i32, i32* %338, i64 -5
  %339 = load i32, i32* %arrayidx600, align 4, !tbaa !5
  %340 = load i32*, i32** %csp90, align 8, !tbaa !1
  store i32 %339, i32* %340, align 4, !tbaa !5
  %341 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx601 = getelementptr inbounds i32, i32* %341, i64 -4
  %342 = load i32, i32* %arrayidx601, align 4, !tbaa !5
  %343 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx602 = getelementptr inbounds i32, i32* %343, i64 -5
  store i32 %342, i32* %arrayidx602, align 4, !tbaa !5
  %344 = load i32*, i32** %csp90, align 8, !tbaa !1
  %345 = load i32, i32* %344, align 4, !tbaa !5
  %346 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds i32, i32* %346, i64 -4
  store i32 %345, i32* %arrayidx603, align 4, !tbaa !5
  %347 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr604 = getelementptr inbounds i32, i32* %347, i64 -1
  store i32* %add.ptr604, i32** %csp90, align 8, !tbaa !1
  %os_count605 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %348 = load i32, i32* %os_count605, align 4, !tbaa !27
  %sub606 = sub nsw i32 %348, 1
  store i32 %sub606, i32* %os_count605, align 4, !tbaa !27
  br label %if.end.607

if.end.607:                                       ; preds = %if.else.599, %if.then.592
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.else.585
  br label %if.end.609

if.end.609:                                       ; preds = %if.end.608, %if.end.584
  br label %copy

if.end.610:                                       ; preds = %sw.bb.560
  %349 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp611 = icmp sgt i32 %349, 42
  br i1 %cmp611, label %if.then.613, label %if.end.614

if.then.613:                                      ; preds = %if.end.610
  br label %copy

if.end.614:                                       ; preds = %if.end.610
  %350 = load i32, i32* %prev_op, align 4, !tbaa !5
  switch i32 %350, label %sw.default.690 [
    i32 27, label %sw.bb.615
    i32 26, label %sw.bb.630
    i32 31, label %sw.bb.647
    i32 30, label %sw.bb.667
    i32 5, label %sw.bb.688
    i32 8, label %sw.bb.689
  ]

sw.bb.615:                                        ; preds = %if.end.614
  %351 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx616 = getelementptr inbounds i32, i32* %351, i64 -4
  %352 = load i32, i32* %arrayidx616, align 4, !tbaa !5
  %cmp617 = icmp eq i32 %352, 0
  br i1 %cmp617, label %land.lhs.true.619, label %if.end.629

land.lhs.true.619:                                ; preds = %sw.bb.615
  %353 = load i32*, i32** %csp90, align 8, !tbaa !1
  %354 = load i32, i32* %353, align 4, !tbaa !5
  %cmp620 = icmp eq i32 %354, 0
  br i1 %cmp620, label %if.then.622, label %if.end.629

if.then.622:                                      ; preds = %land.lhs.true.619
  %355 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr623 = getelementptr inbounds i32, i32* %355, i64 -4
  %356 = bitcast i32* %add.ptr623 to i8*
  %357 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr624 = getelementptr inbounds i32, i32* %357, i64 -3
  %358 = bitcast i32* %add.ptr624 to i8*
  %call625 = call i8* @memmove(i8* %356, i8* %358, i64 12) #6
  %359 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %359, i32* %c88, align 4, !tbaa !5
  %360 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr626 = getelementptr inbounds i32, i32* %360, i64 -2
  store i32* %add.ptr626, i32** %csp90, align 8, !tbaa !1
  %os_count627 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %361 = load i32, i32* %os_count627, align 4, !tbaa !27
  %sub628 = sub nsw i32 %361, 2
  store i32 %sub628, i32* %os_count627, align 4, !tbaa !27
  br label %put

if.end.629:                                       ; preds = %land.lhs.true.619, %sw.bb.615
  br label %copy

sw.bb.630:                                        ; preds = %if.end.614
  %362 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx631 = getelementptr inbounds i32, i32* %362, i64 -5
  %363 = load i32, i32* %arrayidx631, align 4, !tbaa !5
  %cmp632 = icmp eq i32 %363, 0
  br i1 %cmp632, label %land.lhs.true.634, label %if.end.646

land.lhs.true.634:                                ; preds = %sw.bb.630
  %364 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx635 = getelementptr inbounds i32, i32* %364, i64 -1
  %365 = load i32, i32* %arrayidx635, align 4, !tbaa !5
  %cmp636 = icmp eq i32 %365, 0
  br i1 %cmp636, label %if.then.638, label %if.end.646

if.then.638:                                      ; preds = %land.lhs.true.634
  %366 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr639 = getelementptr inbounds i32, i32* %366, i64 -5
  %367 = bitcast i32* %add.ptr639 to i8*
  %368 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr640 = getelementptr inbounds i32, i32* %368, i64 -4
  %369 = bitcast i32* %add.ptr640 to i8*
  %call641 = call i8* @memmove(i8* %367, i8* %369, i64 12) #6
  %370 = load i32*, i32** %csp90, align 8, !tbaa !1
  %371 = load i32, i32* %370, align 4, !tbaa !5
  %372 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx642 = getelementptr inbounds i32, i32* %372, i64 -2
  store i32 %371, i32* %arrayidx642, align 4, !tbaa !5
  %373 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %373, i32* %c88, align 4, !tbaa !5
  %374 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr643 = getelementptr inbounds i32, i32* %374, i64 -2
  store i32* %add.ptr643, i32** %csp90, align 8, !tbaa !1
  %os_count644 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %375 = load i32, i32* %os_count644, align 4, !tbaa !27
  %sub645 = sub nsw i32 %375, 2
  store i32 %sub645, i32* %os_count644, align 4, !tbaa !27
  br label %put

if.end.646:                                       ; preds = %land.lhs.true.634, %sw.bb.630
  br label %copy

sw.bb.647:                                        ; preds = %if.end.614
  %376 = load i32, i32* %depth, align 4, !tbaa !5
  %and648 = and i32 %376, 1
  %tobool649 = icmp ne i32 %and648, 0
  br i1 %tobool649, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %sw.bb.647
  br label %copy

if.end.651:                                       ; preds = %sw.bb.647
  %377 = load i32, i32* %depth, align 4, !tbaa !5
  %and652 = and i32 %377, 4
  %tobool653 = icmp ne i32 %and652, 0
  br i1 %tobool653, label %if.end.655, label %if.then.654

if.then.654:                                      ; preds = %if.end.651
  br label %hrc

if.end.655:                                       ; preds = %if.end.651
  br label %vrc

vrc:                                              ; preds = %if.then.674, %if.end.655
  %378 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx656 = getelementptr inbounds i32, i32* %378, i64 -5
  %379 = load i32, i32* %arrayidx656, align 4, !tbaa !5
  %cmp657 = icmp ne i32 %379, 0
  br i1 %cmp657, label %if.then.659, label %if.end.660

if.then.659:                                      ; preds = %vrc
  br label %copy

if.end.660:                                       ; preds = %vrc
  %380 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr661 = getelementptr inbounds i32, i32* %380, i64 -5
  %381 = bitcast i32* %add.ptr661 to i8*
  %382 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr662 = getelementptr inbounds i32, i32* %382, i64 -4
  %383 = bitcast i32* %add.ptr662 to i8*
  %call663 = call i8* @memmove(i8* %381, i8* %383, i64 20) #6
  %384 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %384, i32* %c88, align 4, !tbaa !5
  %385 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr664 = getelementptr inbounds i32, i32* %385, i64 -1
  store i32* %add.ptr664, i32** %csp90, align 8, !tbaa !1
  %os_count665 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %386 = load i32, i32* %os_count665, align 4, !tbaa !27
  %sub666 = sub nsw i32 %386, 1
  store i32 %sub666, i32* %os_count665, align 4, !tbaa !27
  br label %put

sw.bb.667:                                        ; preds = %if.end.614
  %387 = load i32, i32* %depth, align 4, !tbaa !5
  %and668 = and i32 %387, 1
  %tobool669 = icmp ne i32 %and668, 0
  br i1 %tobool669, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %sw.bb.667
  br label %copy

if.end.671:                                       ; preds = %sw.bb.667
  %388 = load i32, i32* %depth, align 4, !tbaa !5
  %and672 = and i32 %388, 4
  %tobool673 = icmp ne i32 %and672, 0
  br i1 %tobool673, label %if.end.675, label %if.then.674

if.then.674:                                      ; preds = %if.end.671
  br label %vrc

if.end.675:                                       ; preds = %if.end.671
  br label %hrc

hrc:                                              ; preds = %if.end.675, %if.then.654
  %389 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx676 = getelementptr inbounds i32, i32* %389, i64 -4
  %390 = load i32, i32* %arrayidx676, align 4, !tbaa !5
  %cmp677 = icmp ne i32 %390, 0
  br i1 %cmp677, label %if.then.679, label %if.end.680

if.then.679:                                      ; preds = %hrc
  br label %copy

if.end.680:                                       ; preds = %hrc
  %391 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr681 = getelementptr inbounds i32, i32* %391, i64 -4
  %392 = bitcast i32* %add.ptr681 to i8*
  %393 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr682 = getelementptr inbounds i32, i32* %393, i64 -3
  %394 = bitcast i32* %add.ptr682 to i8*
  %call683 = call i8* @memmove(i8* %392, i8* %394, i64 8) #6
  %395 = load i32*, i32** %csp90, align 8, !tbaa !1
  %396 = load i32, i32* %395, align 4, !tbaa !5
  %397 = load i32*, i32** %csp90, align 8, !tbaa !1
  %arrayidx684 = getelementptr inbounds i32, i32* %397, i64 -2
  store i32 %396, i32* %arrayidx684, align 4, !tbaa !5
  %398 = load i32, i32* %prev_op, align 4, !tbaa !5
  store i32 %398, i32* %c88, align 4, !tbaa !5
  %399 = load i32*, i32** %csp90, align 8, !tbaa !1
  %add.ptr685 = getelementptr inbounds i32, i32* %399, i64 -1
  store i32* %add.ptr685, i32** %csp90, align 8, !tbaa !1
  %os_count686 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 13
  %400 = load i32, i32* %os_count686, align 4, !tbaa !27
  %sub687 = sub nsw i32 %400, 1
  store i32 %sub687, i32* %os_count686, align 4, !tbaa !27
  br label %put

sw.bb.688:                                        ; preds = %if.end.614
  store i32 25, i32* %c88, align 4, !tbaa !5
  br label %put

sw.bb.689:                                        ; preds = %if.end.614
  br label %put

sw.default.690:                                   ; preds = %if.end.614
  br label %copy

cleanup.691:                                      ; preds = %sw.bb.497, %do.end.493, %sw.bb.473, %sw.default.458, %for.end.434, %if.end.402, %if.end.350, %if.end.329, %if.then.328, %if.then.314, %if.end.272, %sw.bb.267, %do.end.266, %do.end.220, %for.end.199, %if.then.173, %if.then.169, %if.then.165
  %401 = bitcast i32* %my to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast i32* %mx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast i32* %i96 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32** %csp90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = bitcast i32* %c88 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %cleanup.dest.696 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.696, label %cleanup.697 [
    i32 13, label %for.cond.87
  ]

cleanup.697:                                      ; preds = %cleanup.691, %cleanup
  %406 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i32* %prev_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast i32* %hintmask_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #1
  %411 = bitcast [12 x i8]* %dot_save_hints to i8*
  call void @llvm.lifetime.end(i64 12, i8* %411) #1
  %412 = bitcast [12 x i8]* %active_hints to i8*
  call void @llvm.lifetime.end(i64 12, i8* %412) #1
  %413 = bitcast i32* %dotsection_flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  %414 = bitcast i32* %width_on_stack to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  %415 = bitcast i32* %hints_changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #1
  %416 = bitcast i32* %replace_hints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i32* %need_moveto to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast %struct.cv_stem_hint_table* %vstem_hints to i8*
  call void @llvm.lifetime.end(i64 1164, i8* %419) #1
  %420 = bitcast %struct.cv_stem_hint_table* %hstem_hints to i8*
  call void @llvm.lifetime.end(i64 1164, i8* %420) #1
  %421 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.end(i64 11216, i8* %421) #1
  %422 = load i32, i32* %retval
  ret i32 %422
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @type1_next_init(%struct.gs_type1_state_s* %pcis, %struct.gs_glyph_data_s* %pgd, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call = call i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %0, %struct.gs_imager_state_s* null, %struct.gx_path_s* null, %struct.gs_log2_scale_point_s* null, %struct.gs_log2_scale_point_s* null, i32 0, i32 0, %struct.gs_font_type1_s* %1) #5
  %2 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flex_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %2, i32 0, i32 32
  store i32 8, i32* %flex_count, align 4, !tbaa !31
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 0
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx, i32 0, i32 3
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %6 = bitcast %struct.gs_glyph_data_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 48, i32 8, i1 false), !tbaa.struct !34
  %7 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  call void @skip_iv(%struct.gs_type1_state_s* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @type1_next(%struct.gs_type1_state_s* %pcis) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %ipsp = alloca %struct.ip_state_t*, align 8
  %cip = alloca i8*, align 8
  %cipe = alloca i8*, align 8
  %state = alloca i16, align 2
  %csp = alloca i32*, align 8
  %encrypted = alloca i32, align 4
  %c = alloca i32, align 4
  %code = alloca i32, align 4
  %num_results = alloca i32, align 4
  %c0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c2 = alloca i32, align 4
  %cn = alloca i32, align 4
  %lw = alloca i64, align 8
  %i = alloca i32, align 4
  %c4 = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 15
  %2 = load i32, i32* %ips_count, align 4, !tbaa !35
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %4 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %cipe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %8, i32 0, i32 13
  %9 = load i32, i32* %os_count, align 4, !tbaa !27
  %sub1 = sub nsw i32 %9, 1
  %idxprom2 = sext i32 %sub1 to i64
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 12
  %arrayidx3 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack, i32 0, i64 %idxprom2
  store i32* %arrayidx3, i32** %csp, align 8, !tbaa !1
  %11 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %12, i32 0, i32 1
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !36
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %13, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %14 = load i32, i32* %lenIV, align 4, !tbaa !37
  %cmp = icmp sge i32 %14, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %encrypted, align 4, !tbaa !5
  %15 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %num_results to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %load

load:                                             ; preds = %if.end.188, %if.end.173, %entry
  %19 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %19, i32 0, i32 0
  %20 = load i8*, i8** %ip, align 8, !tbaa !49
  store i8* %20, i8** %cip, align 8, !tbaa !1
  %21 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %21, i32 0, i32 3
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data, i32 0, i32 0
  %data4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %22 = load i8*, i8** %data4, align 8, !tbaa !53
  %23 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data5 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %23, i32 0, i32 3
  %bits6 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data5, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits6, i32 0, i32 1
  %24 = load i32, i32* %size, align 4, !tbaa !54
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %cipe, align 8, !tbaa !1
  %25 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %25, i32 0, i32 2
  %26 = load i16, i16* %dstate, align 2, !tbaa !55
  store i16 %26, i16* %state, align 2, !tbaa !56
  br label %for.cond

for.cond:                                         ; preds = %if.then.247, %if.end.239, %sw.bb.221, %sw.bb.213, %sw.bb.189, %if.end.162, %load
  %27 = load i8*, i8** %cip, align 8, !tbaa !1
  %28 = load i8*, i8** %cipe, align 8, !tbaa !1
  %cmp7 = icmp uge i8* %27, %28
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end:                                           ; preds = %for.cond
  %29 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !7
  %conv9 = zext i8 %30 to i32
  store i32 %conv9, i32* %c0, align 4, !tbaa !5
  %31 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load i32, i32* %c0, align 4, !tbaa !5
  %33 = load i16, i16* %state, align 2, !tbaa !56
  %conv10 = zext i16 %33 to i32
  %shr = ashr i32 %conv10, 8
  %xor = xor i32 %32, %shr
  store i32 %xor, i32* %c, align 4, !tbaa !5
  %34 = load i32, i32* %c0, align 4, !tbaa !5
  %35 = load i16, i16* %state, align 2, !tbaa !56
  %conv11 = zext i16 %35 to i32
  %add = add nsw i32 %34, %conv11
  %mul = mul nsw i32 %add, 52845
  %add12 = add nsw i32 %mul, 22719
  %conv13 = trunc i32 %add12 to i16
  store i16 %conv13, i16* %state, align 2, !tbaa !56
  %conv14 = zext i16 %conv13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %36 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %36, i32* %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %36, %cond.false ]
  %37 = load i32, i32* %c, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %37, 32
  br i1 %cmp15, label %if.then.17, label %if.end.163

if.then.17:                                       ; preds = %cond.end
  %38 = load i32, i32* %c, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %38, 247
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.body
  %39 = load i32*, i32** %csp, align 8, !tbaa !1
  %40 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack22 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %40, i32 0, i32 12
  %arrayidx23 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack22, i32 0, i64 47
  %cmp24 = icmp uge i32* %39, %arrayidx23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.body.21
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.27:                                        ; preds = %do.body.21
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  br label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load i32, i32* %c, align 4, !tbaa !5
  %conv28 = trunc i32 %41 to i8
  %conv29 = zext i8 %conv28 to i32
  %sub30 = sub nsw i32 %conv29, 139
  %shl = shl i32 %sub30, 8
  %42 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr31, i32** %csp, align 8, !tbaa !1
  store i32 %shl, i32* %incdec.ptr31, align 4, !tbaa !5
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.162

if.else:                                          ; preds = %if.then.17
  %43 = load i32, i32* %c, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %43, 255
  br i1 %cmp34, label %if.then.36, label %if.else.101

if.then.36:                                       ; preds = %if.else
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %44 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr38, i8** %cip, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv39 = zext i8 %46 to i32
  store i32 %conv39, i32* %c2, align 4, !tbaa !5
  %47 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  br label %do.body.40

do.body.40:                                       ; preds = %do.body.37
  %48 = load i32*, i32** %csp, align 8, !tbaa !1
  %49 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack41 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %49, i32 0, i32 12
  %arrayidx42 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack41, i32 0, i64 47
  %cmp43 = icmp uge i32* %48, %arrayidx42
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.body.40
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %do.body.40
  br label %do.cond.47

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  %50 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %50, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.54

cond.true.50:                                     ; preds = %do.end.48
  %51 = load i32, i32* %c2, align 4, !tbaa !5
  %52 = load i16, i16* %state, align 2, !tbaa !56
  %conv51 = zext i16 %52 to i32
  %shr52 = ashr i32 %conv51, 8
  %xor53 = xor i32 %51, %shr52
  br label %cond.end.55

cond.false.54:                                    ; preds = %do.end.48
  %53 = load i32, i32* %c2, align 4, !tbaa !5
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.50
  %cond56 = phi i32 [ %xor53, %cond.true.50 ], [ %53, %cond.false.54 ]
  store i32 %cond56, i32* %cn, align 4, !tbaa !5
  %54 = load i32, i32* %c, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %54, 251
  br i1 %cmp57, label %if.then.59, label %if.else.72

if.then.59:                                       ; preds = %cond.end.55
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %55 = load i32, i32* %c, align 4, !tbaa !5
  %sub63 = sub nsw i32 %55, 247
  %conv64 = trunc i32 %sub63 to i8
  %conv65 = zext i8 %conv64 to i32
  %shl66 = shl i32 %conv65, 8
  %add67 = add nsw i32 %shl66, 0
  %add68 = add nsw i32 %add67, 108
  %56 = load i32, i32* %cn, align 4, !tbaa !5
  %add69 = add nsw i32 %add68, %56
  %shl70 = shl i32 %add69, 8
  %57 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %incdec.ptr71, i32** %csp, align 8, !tbaa !1
  store i32 %shl70, i32* %incdec.ptr71, align 4, !tbaa !5
  br label %if.end.86

if.else.72:                                       ; preds = %cond.end.55
  br label %do.body.73

do.body.73:                                       ; preds = %if.else.72
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  %58 = load i32, i32* %c, align 4, !tbaa !5
  %sub76 = sub nsw i32 %58, 251
  %conv77 = trunc i32 %sub76 to i8
  %conv78 = zext i8 %conv77 to i32
  %shl79 = shl i32 %conv78, 8
  %add80 = add nsw i32 %shl79, 0
  %add81 = add nsw i32 %add80, 108
  %sub82 = sub nsw i32 0, %add81
  %59 = load i32, i32* %cn, align 4, !tbaa !5
  %sub83 = sub nsw i32 %sub82, %59
  %shl84 = shl i32 %sub83, 8
  %60 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr85, i32** %csp, align 8, !tbaa !1
  store i32 %shl84, i32* %incdec.ptr85, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.75, %do.end.62
  %61 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool87 = icmp ne i32 %61, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.95

cond.true.88:                                     ; preds = %if.end.86
  %62 = load i32, i32* %c2, align 4, !tbaa !5
  %63 = load i16, i16* %state, align 2, !tbaa !56
  %conv89 = zext i16 %63 to i32
  %add90 = add i32 %62, %conv89
  %mul91 = mul i32 %add90, 52845
  %add92 = add i32 %mul91, 22719
  %conv93 = trunc i32 %add92 to i16
  store i16 %conv93, i16* %state, align 2, !tbaa !56
  %conv94 = zext i16 %conv93 to i32
  br label %cond.end.96

cond.false.95:                                    ; preds = %if.end.86
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.88
  %cond97 = phi i32 [ %conv94, %cond.true.88 ], [ 0, %cond.false.95 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.96, %if.then.45
  %64 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.270 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.99

do.cond.99:                                       ; preds = %cleanup.cont
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.161

if.else.101:                                      ; preds = %if.else
  %66 = load i32, i32* %c, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %66, 255
  br i1 %cmp102, label %if.then.104, label %if.else.159

if.then.104:                                      ; preds = %if.else.101
  %67 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  store i64 0, i64* %lw, align 8, !tbaa !32
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond.106

for.cond.106:                                     ; preds = %cond.end.124, %do.body.105
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp107 = icmp sge i32 %dec, 0
  br i1 %cmp107, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.106
  %71 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool109 = icmp ne i32 %71, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.122

cond.true.110:                                    ; preds = %for.body
  %72 = load i8*, i8** %cip, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !7
  %conv111 = zext i8 %73 to i32
  %74 = load i16, i16* %state, align 2, !tbaa !56
  %conv112 = zext i16 %74 to i32
  %shr113 = ashr i32 %conv112, 8
  %xor114 = xor i32 %conv111, %shr113
  store i32 %xor114, i32* %c4, align 4, !tbaa !5
  %75 = load i8*, i8** %cip, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !7
  %conv115 = zext i8 %76 to i32
  %77 = load i16, i16* %state, align 2, !tbaa !56
  %conv116 = zext i16 %77 to i32
  %add117 = add nsw i32 %conv115, %conv116
  %mul118 = mul nsw i32 %add117, 52845
  %add119 = add nsw i32 %mul118, 22719
  %conv120 = trunc i32 %add119 to i16
  store i16 %conv120, i16* %state, align 2, !tbaa !56
  %conv121 = zext i16 %conv120 to i32
  br label %cond.end.124

cond.false.122:                                   ; preds = %for.body
  %78 = load i8*, i8** %cip, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !7
  %conv123 = zext i8 %79 to i32
  store i32 %conv123, i32* %c4, align 4, !tbaa !5
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.110
  %cond125 = phi i32 [ %conv121, %cond.true.110 ], [ %conv123, %cond.false.122 ]
  %80 = load i64, i64* %lw, align 8, !tbaa !32
  %shl126 = shl i64 %80, 8
  %81 = load i32, i32* %c4, align 4, !tbaa !5
  %conv127 = zext i32 %81 to i64
  %add128 = add nsw i64 %shl126, %conv127
  store i64 %add128, i64* %lw, align 8, !tbaa !32
  %82 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr129 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr129, i8** %cip, align 8, !tbaa !1
  br label %for.cond.106

for.end:                                          ; preds = %for.cond.106
  %83 = load i64, i64* %lw, align 8, !tbaa !32
  %xor130 = xor i64 %83, 2147483648
  %sub131 = sub nsw i64 %xor130, 2147483648
  store i64 %sub131, i64* %lw, align 8, !tbaa !32
  %84 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  br label %do.cond.132

do.cond.132:                                      ; preds = %for.end
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %86 = load i32*, i32** %csp, align 8, !tbaa !1
  %87 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack135 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %87, i32 0, i32 12
  %arrayidx136 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack135, i32 0, i64 47
  %cmp137 = icmp uge i32* %86, %arrayidx136
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.body.134
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.140:                                       ; preds = %do.body.134
  br label %do.cond.141

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  %88 = load i64, i64* %lw, align 8, !tbaa !32
  %conv143 = trunc i64 %88 to i32
  %shl144 = shl i32 %conv143, 8
  %89 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr145, i32** %csp, align 8, !tbaa !1
  store i32 %shl144, i32* %incdec.ptr145, align 4, !tbaa !5
  %90 = load i64, i64* %lw, align 8, !tbaa !32
  %91 = load i32*, i32** %csp, align 8, !tbaa !1
  %92 = load i32, i32* %91, align 4, !tbaa !5
  %shr146 = ashr i32 %92, 8
  %conv147 = sext i32 %shr146 to i64
  %cmp148 = icmp ne i64 %90, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.155

if.then.150:                                      ; preds = %do.end.142
  %93 = load i32, i32* %encrypted, align 4, !tbaa !5
  %94 = load i32*, i32** %csp, align 8, !tbaa !1
  %95 = load i64, i64* %lw, align 8, !tbaa !32
  %call = call i32 @gs_type1_check_float(i16* %state, i32 %93, i8** %cip, i32* %94, i64 %95) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %96, 0
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.150
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

if.end.154:                                       ; preds = %if.then.150
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %do.end.142
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %if.end.155, %if.then.153, %if.then.139
  %98 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %cleanup.dest.157 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.157, label %cleanup.270 [
    i32 0, label %cleanup.cont.158
  ]

cleanup.cont.158:                                 ; preds = %cleanup.156
  br label %if.end.160

if.else.159:                                      ; preds = %if.else.101
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.160:                                       ; preds = %cleanup.cont.158
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %do.end.100
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %do.end.33
  br label %for.cond

if.end.163:                                       ; preds = %cond.end
  %99 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %99, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 17, label %sw.bb
    i32 10, label %sw.bb.164
    i32 11, label %sw.bb.178
    i32 15, label %sw.bb.189
    i32 12, label %sw.bb.192
  ]

sw.default:                                       ; preds = %if.end.163
  br label %sw.epilog.252

sw.bb:                                            ; preds = %if.end.163, %if.end.163, %if.end.163
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

sw.bb.164:                                        ; preds = %if.end.163
  %100 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %101 = load i32*, i32** %csp, align 8, !tbaa !1
  %102 = load i32, i32* %101, align 4, !tbaa !5
  %shr165 = ashr i32 %102, 8
  %103 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont166 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %103, i32 0, i32 1
  %104 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont166, align 8, !tbaa !36
  %data167 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %104, i32 0, i32 29
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data167, i32 0, i32 5
  %105 = load i32, i32* %subroutineNumberBias, align 4, !tbaa !57
  %add168 = add i32 %shr165, %105
  %call169 = call i32 @type1_callsubr(%struct.gs_type1_state_s* %100, i32 %add168) #5
  store i32 %call169, i32* %code, align 4, !tbaa !5
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %106, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %sw.bb.164
  %107 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.173:                                       ; preds = %sw.bb.164
  %108 = load i8*, i8** %cip, align 8, !tbaa !1
  %109 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip174 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %109, i32 0, i32 0
  store i8* %108, i8** %ip174, align 8, !tbaa !49
  %110 = load i16, i16* %state, align 2, !tbaa !56
  %111 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate175 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %111, i32 0, i32 2
  store i16 %110, i16* %dstate175, align 2, !tbaa !55
  %112 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr176 = getelementptr inbounds i32, i32* %112, i32 -1
  store i32* %incdec.ptr176, i32** %csp, align 8, !tbaa !1
  %113 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr177 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %113, i32 1
  store %struct.ip_state_t* %incdec.ptr177, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  br label %load

sw.bb.178:                                        ; preds = %if.end.163
  %114 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count179 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %114, i32 0, i32 15
  %115 = load i32, i32* %ips_count179, align 4, !tbaa !35
  %cmp180 = icmp sgt i32 %115, 1
  br i1 %cmp180, label %if.then.182, label %if.else.187

if.then.182:                                      ; preds = %sw.bb.178
  %116 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data183 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %116, i32 0, i32 3
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %cs_data183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %117 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count184 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %117, i32 0, i32 15
  %118 = load i32, i32* %ips_count184, align 4, !tbaa !35
  %dec185 = add nsw i32 %118, -1
  store i32 %dec185, i32* %ips_count184, align 4, !tbaa !35
  %119 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr186 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %119, i32 -1
  store %struct.ip_state_t* %incdec.ptr186, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  br label %if.end.188

if.else.187:                                      ; preds = %sw.bb.178
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.188:                                       ; preds = %if.then.182
  br label %load

sw.bb.189:                                        ; preds = %if.end.163
  %120 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack190 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %120, i32 0, i32 12
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %ostack190, i32 0, i32 0
  %add.ptr191 = getelementptr inbounds i32, i32* %arraydecay, i64 -1
  store i32* %add.ptr191, i32** %csp, align 8, !tbaa !1
  br label %for.cond

sw.bb.192:                                        ; preds = %if.end.163
  %121 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool193 = icmp ne i32 %121, 0
  br i1 %tobool193, label %cond.true.194, label %cond.false.206

cond.true.194:                                    ; preds = %sw.bb.192
  %122 = load i8*, i8** %cip, align 8, !tbaa !1
  %123 = load i8, i8* %122, align 1, !tbaa !7
  %conv195 = zext i8 %123 to i32
  %124 = load i16, i16* %state, align 2, !tbaa !56
  %conv196 = zext i16 %124 to i32
  %shr197 = ashr i32 %conv196, 8
  %xor198 = xor i32 %conv195, %shr197
  store i32 %xor198, i32* %c, align 4, !tbaa !5
  %125 = load i8*, i8** %cip, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !7
  %conv199 = zext i8 %126 to i32
  %127 = load i16, i16* %state, align 2, !tbaa !56
  %conv200 = zext i16 %127 to i32
  %add201 = add nsw i32 %conv199, %conv200
  %mul202 = mul nsw i32 %add201, 52845
  %add203 = add nsw i32 %mul202, 22719
  %conv204 = trunc i32 %add203 to i16
  store i16 %conv204, i16* %state, align 2, !tbaa !56
  %conv205 = zext i16 %conv204 to i32
  br label %cond.end.208

cond.false.206:                                   ; preds = %sw.bb.192
  %128 = load i8*, i8** %cip, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !7
  %conv207 = zext i8 %129 to i32
  store i32 %conv207, i32* %c, align 4, !tbaa !5
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.206, %cond.true.194
  %cond209 = phi i32 [ %conv205, %cond.true.194 ], [ %conv207, %cond.false.206 ]
  %130 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr210 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr210, i8** %cip, align 8, !tbaa !1
  %131 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %131, label %sw.default.211 [
    i32 12, label %sw.bb.213
    i32 15, label %sw.bb.221
    i32 16, label %sw.bb.225
    i32 17, label %sw.bb.243
  ]

sw.default.211:                                   ; preds = %cond.end.208
  %132 = load i32, i32* %c, align 4, !tbaa !5
  %add212 = add nsw i32 %132, 32
  store i32 %add212, i32* %c, align 4, !tbaa !5
  br label %sw.epilog.251

sw.bb.213:                                        ; preds = %cond.end.208
  %133 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i32, i32* %133, i64 -1
  %134 = load i32, i32* %arrayidx214, align 4, !tbaa !5
  %conv215 = sitofp i32 %134 to double
  %135 = load i32*, i32** %csp, align 8, !tbaa !1
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %conv216 = sitofp i32 %136 to double
  %div = fdiv double %conv215, %conv216
  %mul217 = fmul double %div, 2.560000e+02
  %conv218 = fptosi double %mul217 to i32
  %137 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i32, i32* %137, i64 -1
  store i32 %conv218, i32* %arrayidx219, align 4, !tbaa !5
  %138 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr220 = getelementptr inbounds i32, i32* %138, i32 -1
  store i32* %incdec.ptr220, i32** %csp, align 8, !tbaa !1
  br label %for.cond

sw.bb.221:                                        ; preds = %cond.end.208
  %139 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack222 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %139, i32 0, i32 12
  %arraydecay223 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack222, i32 0, i32 0
  %add.ptr224 = getelementptr inbounds i32, i32* %arraydecay223, i64 -1
  store i32* %add.ptr224, i32** %csp, align 8, !tbaa !1
  br label %for.cond

sw.bb.225:                                        ; preds = %cond.end.208
  %140 = load i32*, i32** %csp, align 8, !tbaa !1
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %shr226 = ashr i32 %141, 8
  switch i32 %shr226, label %sw.default.242 [
    i32 0, label %sw.bb.227
    i32 3, label %sw.bb.228
    i32 14, label %sw.bb.230
    i32 15, label %sw.bb.231
    i32 16, label %sw.bb.232
    i32 17, label %sw.bb.233
    i32 18, label %sw.bb.234
  ]

sw.bb.227:                                        ; preds = %sw.bb.225
  %142 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %142, i32 0, i32 33
  store i32 2, i32* %ignore_pops, align 4, !tbaa !33
  br label %sw.epilog

sw.bb.228:                                        ; preds = %sw.bb.225
  %143 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops229 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %143, i32 0, i32 33
  store i32 1, i32* %ignore_pops229, align 4, !tbaa !33
  br label %sw.epilog

sw.bb.230:                                        ; preds = %sw.bb.225
  store i32 1, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.231:                                        ; preds = %sw.bb.225
  store i32 2, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.232:                                        ; preds = %sw.bb.225
  store i32 3, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.233:                                        ; preds = %sw.bb.225
  store i32 4, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.234:                                        ; preds = %sw.bb.225
  store i32 6, i32* %num_results, align 4, !tbaa !5
  br label %blend

blend:                                            ; preds = %sw.bb.234, %sw.bb.233, %sw.bb.232, %sw.bb.231, %sw.bb.230
  %144 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %145 = load i32*, i32** %csp, align 8, !tbaa !1
  %146 = load i32, i32* %num_results, align 4, !tbaa !5
  %call235 = call i32 @gs_type1_blend(%struct.gs_type1_state_s* %144, i32* %145, i32 %146) #5
  store i32 %call235, i32* %code, align 4, !tbaa !5
  %147 = load i32, i32* %code, align 4, !tbaa !5
  %cmp236 = icmp slt i32 %147, 0
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %blend
  %148 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.239:                                       ; preds = %blend
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %150 = load i32*, i32** %csp, align 8, !tbaa !1
  %idx.ext240 = sext i32 %149 to i64
  %idx.neg = sub i64 0, %idx.ext240
  %add.ptr241 = getelementptr inbounds i32, i32* %150, i64 %idx.neg
  store i32* %add.ptr241, i32** %csp, align 8, !tbaa !1
  br label %for.cond

sw.default.242:                                   ; preds = %sw.bb.225
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.242, %sw.bb.228, %sw.bb.227
  br label %sw.epilog.251

sw.bb.243:                                        ; preds = %cond.end.208
  %151 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops244 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %151, i32 0, i32 33
  %152 = load i32, i32* %ignore_pops244, align 4, !tbaa !33
  %cmp245 = icmp ne i32 %152, 0
  br i1 %cmp245, label %if.then.247, label %if.end.250

if.then.247:                                      ; preds = %sw.bb.243
  %153 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops248 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %153, i32 0, i32 33
  %154 = load i32, i32* %ignore_pops248, align 4, !tbaa !33
  %dec249 = add nsw i32 %154, -1
  store i32 %dec249, i32* %ignore_pops248, align 4, !tbaa !33
  br label %for.cond

if.end.250:                                       ; preds = %sw.bb.243
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

sw.epilog.251:                                    ; preds = %sw.epilog, %sw.default.211
  br label %sw.epilog.252

sw.epilog.252:                                    ; preds = %sw.epilog.251, %sw.default
  br label %for.end.253

for.end.253:                                      ; preds = %sw.epilog.252
  %155 = load i8*, i8** %cip, align 8, !tbaa !1
  %156 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip254 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %156, i32 0, i32 0
  store i8* %155, i8** %ip254, align 8, !tbaa !49
  %157 = load i16, i16* %state, align 2, !tbaa !56
  %158 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate255 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %158, i32 0, i32 2
  store i16 %157, i16* %dstate255, align 2, !tbaa !55
  %159 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %159, i64 1
  %160 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack257 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %160, i32 0, i32 14
  %arrayidx258 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack257, i32 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.ip_state_t* %add.ptr256 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ip_state_t* %arrayidx258 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72
  %conv259 = trunc i64 %sub.ptr.div to i32
  %161 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count260 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %161, i32 0, i32 15
  store i32 %conv259, i32* %ips_count260, align 4, !tbaa !35
  %162 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr261 = getelementptr inbounds i32, i32* %162, i64 1
  %163 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack262 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %163, i32 0, i32 12
  %arrayidx263 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack262, i32 0, i64 0
  %sub.ptr.lhs.cast264 = ptrtoint i32* %add.ptr261 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i32* %arrayidx263 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %sub.ptr.div267 = sdiv exact i64 %sub.ptr.sub266, 4
  %conv268 = trunc i64 %sub.ptr.div267 to i32
  %164 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count269 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %164, i32 0, i32 13
  store i32 %conv268, i32* %os_count269, align 4, !tbaa !27
  %165 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

cleanup.270:                                      ; preds = %for.end.253, %if.end.250, %if.then.238, %if.else.187, %if.then.172, %sw.bb, %if.else.159, %cleanup.156, %cleanup, %if.then.26, %if.then
  %166 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %num_results to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %172) #1
  %173 = bitcast i8** %cipe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @type1_clear(%struct.gs_type1_state_s* %pcis) #2 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 13
  store i32 0, i32* %os_count, align 4, !tbaa !27
  ret void
}

declare i32 @gs_type1_sbw(%struct.gs_type1_state_s*, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @type1_stem1(%struct.gs_type1_state_s* %pcis, %struct.cv_stem_hint_table* %psht, i32* %pv, i32 %lsb, i8* %active_hints) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %psht.addr = alloca %struct.cv_stem_hint_table*, align 8
  %pv.addr = alloca i32*, align 8
  %lsb.addr = alloca i32, align 4
  %active_hints.addr = alloca i8*, align 8
  %v0 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %bot = alloca %struct.cv_stem_hint*, align 8
  %orig_top = alloca %struct.cv_stem_hint*, align 8
  %top = alloca %struct.cv_stem_hint*, align 8
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.cv_stem_hint_table* %psht, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  store i32* %pv, i32** %pv.addr, align 8, !tbaa !1
  store i32 %lsb, i32* %lsb.addr, align 4, !tbaa !5
  store i8* %active_hints, i8** %active_hints.addr, align 8, !tbaa !1
  %0 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %pv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %3 = load i32, i32* %lsb.addr, align 4, !tbaa !5
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %v0, align 4, !tbaa !5
  %4 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %v0, align 4, !tbaa !5
  %6 = load i32*, i32** %pv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx1, align 4, !tbaa !5
  %add2 = add nsw i32 %5, %7
  store i32 %add2, i32* %v1, align 4, !tbaa !5
  %8 = bitcast %struct.cv_stem_hint** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %9, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [96 x %struct.cv_stem_hint], [96 x %struct.cv_stem_hint]* %data, i32 0, i64 0
  store %struct.cv_stem_hint* %arrayidx3, %struct.cv_stem_hint** %bot, align 8, !tbaa !1
  %10 = bitcast %struct.cv_stem_hint** %orig_top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %bot, align 8, !tbaa !1
  %12 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %12, i32 0, i32 0
  %13 = load i32, i32* %count, align 4, !tbaa !26
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %11, i64 %idx.ext
  store %struct.cv_stem_hint* %add.ptr, %struct.cv_stem_hint** %orig_top, align 8, !tbaa !1
  %14 = bitcast %struct.cv_stem_hint** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %orig_top, align 8, !tbaa !1
  store %struct.cv_stem_hint* %15, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %16 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %count4 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %16, i32 0, i32 0
  %17 = load i32, i32* %count4, align 4, !tbaa !26
  %cmp = icmp sge i32 %17, 96
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %19 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %bot, align 8, !tbaa !1
  %cmp5 = icmp ugt %struct.cv_stem_hint* %18, %19
  br i1 %cmp5, label %land.rhs, label %land.end.16

land.rhs:                                         ; preds = %while.cond
  %20 = load i32, i32* %v0, align 4, !tbaa !5
  %21 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %21, i64 -1
  %v07 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx6, i32 0, i32 0
  %22 = load i32, i32* %v07, align 4, !tbaa !58
  %cmp8 = icmp slt i32 %20, %22
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %23 = load i32, i32* %v0, align 4, !tbaa !5
  %24 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %24, i64 -1
  %v010 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx9, i32 0, i32 0
  %25 = load i32, i32* %v010, align 4, !tbaa !58
  %cmp11 = icmp eq i32 %23, %25
  br i1 %cmp11, label %land.rhs.12, label %land.end

land.rhs.12:                                      ; preds = %lor.rhs
  %26 = load i32, i32* %v1, align 4, !tbaa !5
  %27 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %27, i64 -1
  %v114 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx13, i32 0, i32 1
  %28 = load i32, i32* %v114, align 4, !tbaa !59
  %cmp15 = icmp slt i32 %26, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs.12, %lor.rhs
  %29 = phi i1 [ false, %lor.rhs ], [ %cmp15, %land.rhs.12 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %30 = phi i1 [ true, %land.rhs ], [ %29, %land.end ]
  br label %land.end.16

land.end.16:                                      ; preds = %lor.end, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %30, %lor.end ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.16
  %32 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %33 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %33, i64 -1
  %34 = bitcast %struct.cv_stem_hint* %32 to i8*
  %35 = bitcast %struct.cv_stem_hint* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 12, i32 4, i1 false), !tbaa.struct !60
  %36 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %36, i32 -1
  store %struct.cv_stem_hint* %incdec.ptr, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end.16
  %37 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %38 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %bot, align 8, !tbaa !1
  %cmp18 = icmp ugt %struct.cv_stem_hint* %37, %38
  br i1 %cmp18, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %while.end
  %39 = load i32, i32* %v0, align 4, !tbaa !5
  %40 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %40, i64 -1
  %v020 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx19, i32 0, i32 0
  %41 = load i32, i32* %v020, align 4, !tbaa !58
  %cmp21 = icmp eq i32 %39, %41
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.36

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %42 = load i32, i32* %v1, align 4, !tbaa !5
  %43 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %43, i64 -1
  %v124 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx23, i32 0, i32 1
  %44 = load i32, i32* %v124, align 4, !tbaa !59
  %cmp25 = icmp eq i32 %42, %44
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %land.lhs.true.22
  %45 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %46 = bitcast %struct.cv_stem_hint* %45 to i8*
  %47 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %47, i64 1
  %48 = bitcast %struct.cv_stem_hint* %add.ptr27 to i8*
  %49 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %orig_top, align 8, !tbaa !1
  %50 = bitcast %struct.cv_stem_hint* %49 to i8*
  %51 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %52 = bitcast %struct.cv_stem_hint* %51 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memmove(i8* %46, i8* %48, i64 %sub.ptr.sub) #6
  %53 = load i8*, i8** %active_hints.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %53, null
  br i1 %tobool, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.then.26
  %54 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %55, i64 -1
  %index30 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx29, i32 0, i32 2
  %56 = load i16, i16* %index30, align 2, !tbaa !28
  %conv = zext i16 %56 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !5
  %57 = load i32, i32* %index, align 4, !tbaa !5
  %and = and i32 %57, 7
  %shr = ashr i32 128, %and
  %58 = load i32, i32* %index, align 4, !tbaa !5
  %shr31 = lshr i32 %58, 3
  %idxprom = zext i32 %shr31 to i64
  %59 = load i8*, i8** %active_hints.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %59, i64 %idxprom
  %60 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %60 to i32
  %or = or i32 %conv33, %shr
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, i8* %arrayidx32, align 1, !tbaa !7
  %61 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %land.lhs.true.22, %land.lhs.true, %while.end
  %62 = load i32, i32* %v0, align 4, !tbaa !5
  %63 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %v037 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %63, i32 0, i32 0
  store i32 %62, i32* %v037, align 4, !tbaa !58
  %64 = load i32, i32* %v1, align 4, !tbaa !5
  %65 = load %struct.cv_stem_hint*, %struct.cv_stem_hint** %top, align 8, !tbaa !1
  %v138 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %65, i32 0, i32 1
  store i32 %64, i32* %v138, align 4, !tbaa !59
  %66 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %count39 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %66, i32 0, i32 0
  %67 = load i32, i32* %count39, align 4, !tbaa !26
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %count39, align 4, !tbaa !26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.end.35, %if.then
  %68 = bitcast %struct.cv_stem_hint** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.cv_stem_hint** %orig_top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.cv_stem_hint** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @type1_stem3(%struct.gs_type1_state_s* %pcis, %struct.cv_stem_hint_table* %psht, i32* %pv3, i32 %lsb, i8* %active_hints) #0 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %psht.addr = alloca %struct.cv_stem_hint_table*, align 8
  %pv3.addr = alloca i32*, align 8
  %lsb.addr = alloca i32, align 4
  %active_hints.addr = alloca i8*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.cv_stem_hint_table* %psht, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  store i32* %pv3, i32** %pv3.addr, align 8, !tbaa !1
  store i32 %lsb, i32* %lsb.addr, align 4, !tbaa !5
  store i8* %active_hints, i8** %active_hints.addr, align 8, !tbaa !1
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %1 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %2 = load i32*, i32** %pv3.addr, align 8, !tbaa !1
  %3 = load i32, i32* %lsb.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %active_hints.addr, align 8, !tbaa !1
  %call = call i32 @type1_stem1(%struct.gs_type1_state_s* %0, %struct.cv_stem_hint_table* %1, i32* %2, i32 %3, i8* %4) #5
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %6 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %7 = load i32*, i32** %pv3.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 2
  %8 = load i32, i32* %lsb.addr, align 4, !tbaa !5
  %9 = load i8*, i8** %active_hints.addr, align 8, !tbaa !1
  %call1 = call i32 @type1_stem1(%struct.gs_type1_state_s* %5, %struct.cv_stem_hint_table* %6, i32* %add.ptr, i32 %8, i8* %9) #5
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %11 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %12 = load i32*, i32** %pv3.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i32, i32* %12, i64 4
  %13 = load i32, i32* %lsb.addr, align 4, !tbaa !5
  %14 = load i8*, i8** %active_hints.addr, align 8, !tbaa !1
  %call3 = call i32 @type1_stem1(%struct.gs_type1_state_s* %10, %struct.cv_stem_hint_table* %11, i32* %add.ptr2, i32 %13, i8* %14) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @type2_put_op(%struct.stream_s* %s, i32 %op) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %op.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext 12) #5
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %op.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 32
  %conv = trunc i32 %sub to i8
  %call1 = call i32 @spputc(%struct.stream_s* %2, i8 zeroext %conv) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !61
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !63
  %cmp4 = icmp uge i8* %5, %7
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %9 = load i8*, i8** %ptr8, align 8, !tbaa !61
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr8, align 8, !tbaa !61
  %10 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv9 = trunc i32 %10 to i8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %12 = load i8*, i8** %ptr12, align 8, !tbaa !61
  store i8 %conv9, i8* %12, align 1, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv13 = trunc i32 %14 to i8
  %call14 = call i32 @spputc(%struct.stream_s* %13, i8 zeroext %conv13) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call14, %cond.false ]
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @type2_put_fixed(%struct.stream_s* %s, i32 %v) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %v.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !5
  %0 = load i32, i32* %v.addr, align 4, !tbaa !5
  %and = and i32 %0, 255
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i32, i32* %v.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 8
  call void @type2_put_int(%struct.stream_s* %1, i32 %shr) #5
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %v.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, -8388608
  br i1 %cmp, label %land.lhs.true, label %if.else.3

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %v.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %4, 8388608
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %5, i8 zeroext -1) #5
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load i32, i32* %v.addr, align 4, !tbaa !5
  %shl = shl i32 %7, 8
  call void @sputc4(%struct.stream_s* %6, i32 %shl) #5
  br label %if.end

if.else.3:                                        ; preds = %land.lhs.true, %if.else
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load i32, i32* %v.addr, align 4, !tbaa !5
  %shr4 = ashr i32 %9, 8
  call void @type2_put_int(%struct.stream_s* %8, i32 %shr4) #5
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load i32, i32* %v.addr, align 4, !tbaa !5
  %and5 = and i32 %11, 255
  call void @type2_put_fixed(%struct.stream_s* %10, i32 %and5) #5
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %12, i32 42) #5
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @type2_put_hintmask(%struct.stream_s* %s, i8* %mask, i32 %size) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %mask.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ignore = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %mask, i8** %mask.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %1, i32 19) #5
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %mask.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @sputs(%struct.stream_s* %2, i8* %3, i32 %4, i32* %ignore) #5
  %5 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @type2_put_stems(%struct.stream_s* %s, i32 %os_count, %struct.cv_stem_hint_table* %psht, i32 %op) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %os_count.addr = alloca i32, align 4
  %psht.addr = alloca %struct.cv_stem_hint_table*, align 8
  %op.addr = alloca i32, align 4
  %prev = alloca i32, align 4
  %pushed = alloca i32, align 4
  %i = alloca i32, align 4
  %v0 = alloca i32, align 4
  %v1 = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %os_count, i32* %os_count.addr, align 4, !tbaa !5
  store %struct.cv_stem_hint_table* %psht, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %prev, align 4, !tbaa !5
  %1 = bitcast i32* %pushed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %os_count.addr, align 4, !tbaa !5
  store i32 %2, i32* %pushed, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %5, i32 0, i32 0
  %6 = load i32, i32* %count, align 4, !tbaa !26
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %9, i32 0, i32 3
  %arrayidx = getelementptr inbounds [96 x %struct.cv_stem_hint], [96 x %struct.cv_stem_hint]* %data, i32 0, i64 %idxprom
  %v01 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %v01, align 4, !tbaa !58
  store i32 %10, i32* %v0, align 4, !tbaa !5
  %11 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.cv_stem_hint_table*, %struct.cv_stem_hint_table** %psht.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.cv_stem_hint_table, %struct.cv_stem_hint_table* %13, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [96 x %struct.cv_stem_hint], [96 x %struct.cv_stem_hint]* %data3, i32 0, i64 %idxprom2
  %v15 = getelementptr inbounds %struct.cv_stem_hint, %struct.cv_stem_hint* %arrayidx4, i32 0, i32 1
  %14 = load i32, i32* %v15, align 4, !tbaa !59
  store i32 %14, i32* %v1, align 4, !tbaa !5
  %15 = load i32, i32* %pushed, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %15, 46
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %16, i32 %17) #5
  store i32 0, i32* %pushed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i32, i32* %v0, align 4, !tbaa !5
  %20 = load i32, i32* %prev, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %20
  call void @type2_put_fixed(%struct.stream_s* %18, i32 %sub) #5
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load i32, i32* %v1, align 4, !tbaa !5
  %23 = load i32, i32* %v0, align 4, !tbaa !5
  %sub7 = sub nsw i32 %22, %23
  call void @type2_put_fixed(%struct.stream_s* %21, i32 %sub7) #5
  %24 = load i32, i32* %v1, align 4, !tbaa !5
  store i32 %24, i32* %prev, align 4, !tbaa !5
  %25 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %pushed, align 4, !tbaa !5
  %add = add nsw i32 %28, 2
  store i32 %add, i32* %pushed, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = load i32, i32* %op.addr, align 4, !tbaa !5
  call void @type2_put_op(%struct.stream_s* %29, i32 %30) #5
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %pushed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

declare i32 @gs_type1_interp_init(%struct.gs_type1_state_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s*, i32, i32, %struct.gs_font_type1_s*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @skip_iv(%struct.gs_type1_state_s* %pcis) #0 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %skip = alloca i32, align 4
  %ipsp = alloca %struct.ip_state_t*, align 8
  %cip = alloca i8*, align 8
  %state = alloca i16, align 2
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !36
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %2, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %3 = load i32, i32* %lenIV, align 4, !tbaa !37
  store i32 %3, i32* %skip, align 4, !tbaa !5
  %4 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 15
  %6 = load i32, i32* %ips_count, align 4, !tbaa !35
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %7, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %8 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %9, i32 0, i32 3
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %10 = load i8*, i8** %data1, align 8, !tbaa !53
  store i8* %10, i8** %cip, align 8, !tbaa !1
  %11 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 4330, i16* %state, align 2, !tbaa !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %cip, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  %15 = load i16, i16* %state, align 2, !tbaa !56
  %conv2 = zext i16 %15 to i32
  %add = add nsw i32 %conv, %conv2
  %mul = mul nsw i32 %add, 52845
  %add3 = add nsw i32 %mul, 22719
  %conv4 = trunc i32 %add3 to i16
  store i16 %conv4, i16* %state, align 2, !tbaa !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %17 = load i32, i32* %skip, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %cip, align 8, !tbaa !1
  %19 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %19, i32 0, i32 0
  store i8* %18, i8** %ip, align 8, !tbaa !49
  %20 = load i16, i16* %state, align 2, !tbaa !56
  %21 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %21, i32 0, i32 2
  store i16 %20, i16* %dstate, align 2, !tbaa !55
  %22 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #1
  %23 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

declare i32 @gs_type1_check_float(i16*, i32, i8**, i32*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @type1_callsubr(%struct.gs_type1_state_s* %pcis, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %index.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %ipsp1 = alloca %struct.ip_state_t*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !36
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.ip_state_t** %ipsp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %4, i32 0, i32 15
  %5 = load i32, i32* %ips_count, align 4, !tbaa !35
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp1, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %8, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %9 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !64
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %11 = load i32, i32* %index.addr, align 4, !tbaa !5
  %12 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp1, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %12, i32 0, i32 3
  %call = call i32 %9(%struct.gs_font_type1_s* %10, i32 %11, i32 0, %struct.gs_glyph_data_s* %cs_data) #5
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
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 15
  %16 = load i32, i32* %ips_count2, align 4, !tbaa !35
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ips_count2, align 4, !tbaa !35
  %17 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  call void @skip_iv(%struct.gs_type1_state_s* %17) #5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.ip_state_t** %ipsp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #3

declare i32 @gs_type1_blend(%struct.gs_type1_state_s*, i32*, i32) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define internal void @type2_put_int(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, -107
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %1, 107
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %3 = load i8*, i8** %ptr, align 8, !tbaa !61
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %5 = load i8*, i8** %limit, align 8, !tbaa !63
  %cmp4 = icmp uge i8* %3, %5
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %7 = load i8*, i8** %ptr7, align 8, !tbaa !61
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !61
  %8 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, 139
  %conv = trunc i32 %add to i8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %10 = load i8*, i8** %ptr10, align 8, !tbaa !61
  store i8 %conv, i8* %10, align 1, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %12, 139
  %conv12 = trunc i32 %add11 to i8
  %call = call i32 @spputc(%struct.stream_s* %11, i8 zeroext %conv12) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %13, 1131
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.20

land.lhs.true.15:                                 ; preds = %if.else
  %14 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %14, 0
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load i32, i32* %i.addr, align 4, !tbaa !5
  %add19 = add nsw i32 63232, %16
  %sub = sub nsw i32 %add19, 108
  call void @sputc2(%struct.stream_s* %15, i32 %sub) #5
  br label %if.end.39

if.else.20:                                       ; preds = %land.lhs.true.15, %if.else
  %17 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %17, -1131
  br i1 %cmp21, label %land.lhs.true.23, label %if.else.29

land.lhs.true.23:                                 ; preds = %if.else.20
  %18 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %18, 0
  br i1 %cmp24, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %land.lhs.true.23
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %20 = load i32, i32* %i.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 64256, %20
  %sub28 = sub nsw i32 %sub27, 108
  call void @sputc2(%struct.stream_s* %19, i32 %sub28) #5
  br label %if.end.38

if.else.29:                                       ; preds = %land.lhs.true.23, %if.else.20
  %21 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %21, -32768
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %22 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %22, 32767
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call36 = call i32 @spputc(%struct.stream_s* %23, i8 zeroext 28) #5
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i.addr, align 4, !tbaa !5
  call void @sputc2(%struct.stream_s* %24, i32 %25) #5
  br label %if.end

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %27 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %27, 10
  call void @type2_put_int(%struct.stream_s* %26, i32 %shr) #5
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_int(%struct.stream_s* %28, i32 1024) #5
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %29, i32 56) #5
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %31 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and = and i32 %31, 1023
  call void @type2_put_int(%struct.stream_s* %30, i32 %and) #5
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @type2_put_op(%struct.stream_s* %32, i32 42) #5
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %if.then.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.18
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sputc4(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %1, 16
  call void @sputc2(%struct.stream_s* %0, i32 %shr) #5
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  call void @sputc2(%struct.stream_s* %2, i32 %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sputc2(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !61
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !63
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !61
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !61
  %6 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 8
  %conv = trunc i32 %shr to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !61
  store i8 %conv, i8* %8, align 1, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr9 = ashr i32 %10, 8
  %conv10 = trunc i32 %shr9 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv10) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_write_s*
  %ptr13 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w12, i32 0, i32 1
  %12 = load i8*, i8** %ptr13, align 8, !tbaa !61
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w15 = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %limit16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w15, i32 0, i32 2
  %14 = load i8*, i8** %limit16, align 8, !tbaa !63
  %cmp17 = icmp uge i8* %12, %14
  br i1 %cmp17, label %cond.false.28, label %cond.true.19

cond.true.19:                                     ; preds = %cond.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w21 = bitcast %union.stream_cursor_s* %cursor20 to %struct.stream_cursor_write_s*
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w21, i32 0, i32 1
  %16 = load i8*, i8** %ptr22, align 8, !tbaa !61
  %incdec.ptr23 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr23, i8** %ptr22, align 8, !tbaa !61
  %17 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv24 = trunc i32 %17 to i8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %19 = load i8*, i8** %ptr27, align 8, !tbaa !61
  store i8 %conv24, i8* %19, align 1, !tbaa !7
  br label %cond.end.31

cond.false.28:                                    ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv29 = trunc i32 %21 to i8
  %call30 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv29) #5
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.19
  %cond32 = phi i32 [ 0, %cond.true.19 ], [ %call30, %cond.false.28 ]
  ret void
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 11012}
!9 = !{!"gs_type1_state_s", !10, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !6, i64 9880, !6, i64 9884, !2, i64 9888, !14, i64 9896, !15, i64 9944, !16, i64 9948, !18, i64 9972, !19, i64 9980, !3, i64 9988, !6, i64 10180, !3, i64 10184, !6, i64 10976, !6, i64 10980, !6, i64 10984, !6, i64 10988, !6, i64 10992, !6, i64 10996, !19, i64 11000, !19, i64 11008, !6, i64 11016, !6, i64 11020, !19, i64 11024, !19, i64 11032, !6, i64 11040, !19, i64 11044, !6, i64 11052, !6, i64 11056, !19, i64 11060, !6, i64 11068, !6, i64 11072, !19, i64 11076, !3, i64 11084}
!10 = !{!"t1_hinter_s", !11, i64 0, !11, i64 24, !6, i64 48, !12, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !13, i64 9744, !13, i64 9752, !13, i64 9760, !13, i64 9768, !13, i64 9776, !13, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!12 = !{!"long", !3, i64 0}
!13 = !{!"double", !3, i64 0}
!14 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!15 = !{!"float", !3, i64 0}
!16 = !{!"point_scale_s", !17, i64 0, !17, i64 12}
!17 = !{!"pixel_scale_s", !6, i64 0, !6, i64 4, !6, i64 8}
!18 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!19 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!20 = !{!9, !6, i64 11008}
!21 = !{!9, !6, i64 11004}
!22 = !{!9, !6, i64 11000}
!23 = !{!24, !6, i64 4}
!24 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12}
!25 = !{!24, !6, i64 8}
!26 = !{!24, !6, i64 0}
!27 = !{!9, !6, i64 10180}
!28 = !{!29, !30, i64 8}
!29 = !{!"", !6, i64 0, !6, i64 4, !30, i64 8}
!30 = !{!"short", !3, i64 0}
!31 = !{!9, !6, i64 11068}
!32 = !{!12, !12, i64 0}
!33 = !{!9, !6, i64 11072}
!34 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!35 = !{!9, !6, i64 10976}
!36 = !{!9, !2, i64 9856}
!37 = !{!38, !6, i64 512}
!38 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !39, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !40, i64 80, !40, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !15, i64 156, !6, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !45, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !46, i64 448}
!39 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!40 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!41 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!42 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!43 = !{!"gs_rect_s", !44, i64 0, !44, i64 16}
!44 = !{!"gs_point_s", !13, i64 0, !13, i64 8}
!45 = !{!"gs_uid_s", !12, i64 0, !2, i64 8}
!46 = !{!"gs_type1_data_s", !47, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !12, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !15, i64 100, !15, i64 104, !48, i64 108, !15, i64 168, !6, i64 172, !48, i64 176, !48, i64 236, !6, i64 280, !48, i64 284, !6, i64 328, !48, i64 332, !48, i64 340, !48, i64 348, !48, i64 400, !48, i64 452, !3, i64 520, !6, i64 536}
!47 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!48 = !{!"", !6, i64 0, !3, i64 4}
!49 = !{!50, !2, i64 0}
!50 = !{!"", !2, i64 0, !2, i64 8, !30, i64 16, !51, i64 24}
!51 = !{!"gs_glyph_data_s", !52, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!52 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!53 = !{!50, !2, i64 24}
!54 = !{!50, !6, i64 32}
!55 = !{!50, !30, i64 16}
!56 = !{!30, !30, i64 0}
!57 = !{!38, !6, i64 516}
!58 = !{!29, !6, i64 0}
!59 = !{!29, !6, i64 4}
!60 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 2, !56}
!61 = !{!62, !2, i64 8}
!62 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!63 = !{!62, !2, i64 16}
!64 = !{!38, !2, i64 456}
