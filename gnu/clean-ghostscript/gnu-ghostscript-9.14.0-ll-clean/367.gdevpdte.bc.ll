; ModuleID = './gdevpdte.bc'
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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.pdf_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, %struct.gs_text_enum_s*, %struct.gs_fixed_point_s, i32, i32, [10 x double], %struct.pdf_char_glyph_pairs_s*, i64 }
%struct.pdf_char_glyph_pairs_s = type { i32, i32, i32, [1 x %struct.pdf_char_glyph_pair_s] }
%struct.pdf_char_glyph_pair_s = type { i64, i64 }
%struct.pdf_text_process_state_s = type { %struct.pdf_text_state_values_s, %struct.gs_font_s* }
%struct.pdf_text_state_values_s = type { float, %struct.pdf_font_resource_s*, double, %struct.gs_matrix_s, i32, float }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
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
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
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
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.pdf_resource_enum_data_t = type { %struct.gx_device_pdf_s*, i32 }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }
%struct.pdf_glyph_widths_s = type { %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s, i32, i32, %struct.gs_rect_s }
%struct.pdf_glyph_width_s = type { double, %struct.gs_point_s, %struct.gs_point_s }
%struct.anon = type { %struct.pdf_font_resource_s*, [27 x i8], %struct.gs_const_string_s, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"uni\00", align 1
@pdf_add_ToUnicode.hexdigits = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@st_gs_state = external constant %struct.gs_memory_struct_type_s, align 8
@process_resources1.rn = internal global [32 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/ExtGState\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/Pattern\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"/Shading\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"/Font\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"/CMap\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"/FontDescriptor\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"/Group\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"/Mask\00", align 1
@pdf_process_string.glyphs_bbox = private unnamed_addr constant %struct.gs_rect_s { %struct.gs_point_s { double 1.000000e+04, double 1.000000e+04 }, %struct.gs_point_s zeroinitializer }, align 8
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@.str.12 = private unnamed_addr constant [101 x i8] c"Requested glyph not present in source font,\0A not permitted in PDF/A, reverting to normal PDF output\0A\00", align 1
@.str.13 = private unnamed_addr constant [112 x i8] c"Requested glyph not present in source font,\0A not permitted in PDF/A, glyph will not be present in output file\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"Requested glyph not present in source font,\0A not permitted in PDF/A, aborting conversion\0A\00", align 1
@.str.15 = private unnamed_addr constant [138 x i8] c"Requested glyph not present in source font,\0A not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\0Areverting to normal PDF output\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pdf_process_string_aux(%struct.pdf_text_enum_s* %penum, %struct.gs_string_s* %pstr, i64* %gdata, %struct.gs_matrix_s* %pfmat, %struct.pdf_text_process_state_s* %ppts) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.pdf_text_enum_s*, align 8
  %pstr.addr = alloca %struct.gs_string_s*, align 8
  %gdata.addr = alloca i64*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppts.addr = alloca %struct.pdf_text_process_state_s*, align 8
  %font = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_text_enum_s* %penum, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %pstr, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  store i64* %gdata, i64** %gdata.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.pdf_text_process_state_s* %ppts, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %1, i32 0, i32 12
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !5
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %3, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %4, i32 0, i32 11
  %5 = load i32, i32* %FontType, align 4, !tbaa !17
  switch i32 %5, label %sw.default [
    i32 42, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 53, label %sw.bb
    i32 52, label %sw.bb
    i32 54, label %sw.bb
    i32 51, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %6 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %7 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %9 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %10 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %call = call i32 @pdf_process_string(%struct.pdf_text_enum_s* %6, %struct.gs_string_s* %7, %struct.gs_matrix_s* %8, %struct.pdf_text_process_state_s* %9, i64* %10) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %11 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @pdf_process_string(%struct.pdf_text_enum_s* %penum, %struct.gs_string_s* %pstr, %struct.gs_matrix_s* %pfmat, %struct.pdf_text_process_state_s* %ppts, i64* %gdata) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.pdf_text_enum_s*, align 8
  %pstr.addr = alloca %struct.gs_string_s*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppts.addr = alloca %struct.pdf_text_process_state_s*, align 8
  %gdata.addr = alloca i64*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %font = alloca %struct.gs_font_base_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %text = alloca %struct.gs_text_params_s*, align 8
  %code = alloca i32, align 4
  %mask = alloca i32, align 4
  %width_pt = alloca %struct.gs_point_s, align 8
  %accepted = alloca i32, align 4
  %text_bbox = alloca %struct.gs_rect_s, align 8
  %glyphs_bbox = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  %clip_bbox = alloca %struct.gs_fixed_rect_s, align 4
  %rect = alloca %struct.gs_rect_s, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %origin105 = alloca %struct.gs_fixed_point_s, align 4
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %p2 = alloca %struct.gs_point_s, align 8
  %p3 = alloca %struct.gs_point_s, align 8
  %index0 = alloca i32, align 4
  %xy_index = alloca i32, align 4
  %text457 = alloca %struct.gs_text_params_s, align 8
  %xy_index_step = alloca i32, align 4
  %gdata_i = alloca i64, align 8
  %gdata_p = alloca i64*, align 8
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %m567 = alloca %struct.gs_matrix_s, align 4
  %origin568 = alloca %struct.gs_fixed_point_s, align 4
  %p0569 = alloca %struct.gs_point_s, align 8
  %p1570 = alloca %struct.gs_point_s, align 8
  %p2571 = alloca %struct.gs_point_s, align 8
  %p3572 = alloca %struct.gs_point_s, align 8
  %p889 = alloca %struct.gs_point_s, align 8
  store %struct.pdf_text_enum_s* %penum, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %pstr, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.pdf_text_process_state_s* %ppts, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  store i64* %gdata, i64** %gdata.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !26
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %5, i32 0, i32 12
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !5
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %7, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %8 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.gs_text_params_s** %text to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %10, i32 0, i32 0
  store %struct.gs_text_params_s* %text1, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %code, align 4, !tbaa !27
  %12 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_point_s* %width_pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %accepted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_rect_s* %text_bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast %struct.gs_rect_s* %text_bbox to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 8, i1 false)
  %17 = bitcast %struct.gs_rect_s* %glyphs_bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %17) #1
  %18 = bitcast %struct.gs_rect_s* %glyphs_bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.gs_rect_s* @pdf_process_string.glyphs_bbox to i8*), i64 32, i32 8, i1 false)
  %19 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %20 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %call = call i32 @pdf_obtain_font_resource(%struct.pdf_text_enum_s* %19, %struct.gs_string_s* %20, %struct.pdf_font_resource_s** %pdfont) #6
  store i32 %call, i32* %code, align 4, !tbaa !27
  %21 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end:                                           ; preds = %entry
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_matrix_s* %23, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %25 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %25, i32 0, i32 0
  %26 = load i32, i32* %operation, align 4, !tbaa !28
  %and = and i32 %26, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.4
  %27 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %27, i32 0, i32 5
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !29
  %29 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %29, i32 0, i32 30
  %call6 = call i32 @gx_path_current_point(%struct.gx_path_s* %28, %struct.gs_fixed_point_s* %origin) #6
  store i32 %call6, i32* %code, align 4, !tbaa !27
  %30 = load i32, i32* %code, align 4, !tbaa !27
  %cmp7 = icmp slt i32 %30, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %31 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.4
  %32 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %32, i32 0, i32 2
  %33 = load i32, i32* %size, align 4, !tbaa !30
  %cmp11 = icmp eq i32 %33, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.13:                                        ; preds = %if.end.10
  %34 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %34, i32 0, i32 3
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %text_rendering_mode = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 18
  %36 = load i32, i32* %text_rendering_mode, align 4, !tbaa !32
  %cmp14 = icmp ne i32 %36, 3
  br i1 %cmp14, label %land.lhs.true, label %if.else.376

land.lhs.true:                                    ; preds = %if.end.13
  %37 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation15 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %37, i32 0, i32 0
  %38 = load i32, i32* %operation15, align 4, !tbaa !28
  %and16 = and i32 %38, 512
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.else.376, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %39 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %41 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_string_s* %41 to %struct.gs_const_string_s*
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call19 = call i32 @process_text_estimate_bbox(%struct.pdf_text_enum_s* %39, %struct.gs_font_base_s* %40, %struct.gs_const_string_s* %42, %struct.gs_matrix_s* %43, %struct.gs_rect_s* %text_bbox, %struct.gs_point_s* %width_pt) #6
  store i32 %call19, i32* %code, align 4, !tbaa !27
  %44 = load i32, i32* %code, align 4, !tbaa !27
  %cmp20 = icmp eq i32 %44, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  %45 = bitcast %struct.gs_fixed_rect_s* %clip_bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %46) #1
  %47 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %47, i32 0, i32 7
  %48 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !42
  %call22 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %48, %struct.gs_fixed_rect_s* %clip_bbox) #6
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %49 = load i32, i32* %x, align 4, !tbaa !43
  %conv = sitofp i32 %49 to double
  %mul = fmul double %conv, 3.906250e-03
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 0
  store double %mul, double* %x24, align 8, !tbaa !45
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 1
  %50 = load i32, i32* %y, align 4, !tbaa !46
  %conv26 = sitofp i32 %50 to double
  %mul27 = fmul double %conv26, 3.906250e-03
  %p28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p28, i32 0, i32 1
  store double %mul27, double* %y29, align 8, !tbaa !47
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_bbox, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %51 = load i32, i32* %x30, align 4, !tbaa !48
  %conv31 = sitofp i32 %51 to double
  %mul32 = fmul double %conv31, 3.906250e-03
  %q33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q33, i32 0, i32 0
  store double %mul32, double* %x34, align 8, !tbaa !49
  %q35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_bbox, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q35, i32 0, i32 1
  %52 = load i32, i32* %y36, align 4, !tbaa !50
  %conv37 = sitofp i32 %52 to double
  %mul38 = fmul double %conv37, 3.906250e-03
  %q39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q39, i32 0, i32 1
  store double %mul38, double* %y40, align 8, !tbaa !51
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  %53 = load double, double* %x42, align 8, !tbaa !45
  %p43 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p43, i32 0, i32 0
  %54 = load double, double* %x44, align 8, !tbaa !45
  %cmp45 = fcmp ogt double %53, %54
  br i1 %cmp45, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %do.body
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 0
  %55 = load double, double* %x49, align 8, !tbaa !45
  %p50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p50, i32 0, i32 0
  store double %55, double* %x51, align 8, !tbaa !45
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %do.body
  %q53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q53, i32 0, i32 0
  %56 = load double, double* %x54, align 8, !tbaa !49
  %q55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q55, i32 0, i32 0
  %57 = load double, double* %x56, align 8, !tbaa !49
  %cmp57 = fcmp olt double %56, %57
  br i1 %cmp57, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.end.52
  %q60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q60, i32 0, i32 0
  %58 = load double, double* %x61, align 8, !tbaa !49
  %q62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q62, i32 0, i32 0
  store double %58, double* %x63, align 8, !tbaa !49
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.end.52
  %p65 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p65, i32 0, i32 1
  %59 = load double, double* %y66, align 8, !tbaa !47
  %p67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p67, i32 0, i32 1
  %60 = load double, double* %y68, align 8, !tbaa !47
  %cmp69 = fcmp ogt double %59, %60
  br i1 %cmp69, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %if.end.64
  %p72 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p72, i32 0, i32 1
  %61 = load double, double* %y73, align 8, !tbaa !47
  %p74 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p74, i32 0, i32 1
  store double %61, double* %y75, align 8, !tbaa !47
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %if.end.64
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 1
  %62 = load double, double* %y78, align 8, !tbaa !51
  %q79 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q79, i32 0, i32 1
  %63 = load double, double* %y80, align 8, !tbaa !51
  %cmp81 = fcmp olt double %62, %63
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %if.end.76
  %q84 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q84, i32 0, i32 1
  %64 = load double, double* %y85, align 8, !tbaa !51
  %q86 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q86, i32 0, i32 1
  store double %64, double* %y87, align 8, !tbaa !51
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %if.end.76
  br label %do.cond

do.cond:                                          ; preds = %if.end.88
  br label %do.end

do.end:                                           ; preds = %do.cond
  %p89 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p89, i32 0, i32 0
  %65 = load double, double* %x90, align 8, !tbaa !45
  %q91 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q91, i32 0, i32 0
  %66 = load double, double* %x92, align 8, !tbaa !49
  %cmp93 = fcmp ogt double %65, %66
  br i1 %cmp93, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %p95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p95, i32 0, i32 1
  %67 = load double, double* %y96, align 8, !tbaa !47
  %q97 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q97, i32 0, i32 1
  %68 = load double, double* %y98, align 8, !tbaa !51
  %cmp99 = fcmp ogt double %67, %68
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %lor.lhs.false, %do.end
  %69 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %size102 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %69, i32 0, i32 1
  %70 = load i32, i32* %size102, align 4, !tbaa !52
  %71 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %71, i32 0, i32 17
  %72 = load i32, i32* %index, align 4, !tbaa !54
  %add = add i32 %72, %70
  store i32 %add, i32* %index, align 4, !tbaa !54
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.101, %if.end.103
  %73 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %73) #1
  %74 = bitcast %struct.gs_fixed_rect_s* %clip_bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.908 [
    i32 0, label %cleanup.cont
    i32 4, label %finish
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.375

if.else:                                          ; preds = %if.then.18
  %75 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %75) #1
  %76 = bitcast %struct.gs_fixed_point_s* %origin105 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %77) #1
  %78 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %78) #1
  %79 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %79) #1
  %80 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %80) #1
  %81 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %path106 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %81, i32 0, i32 5
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %path106, align 8, !tbaa !29
  %call107 = call i32 @gx_path_current_point(%struct.gx_path_s* %82, %struct.gs_fixed_point_s* %origin105) #6
  store i32 %call107, i32* %code, align 4, !tbaa !27
  %83 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis108 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %83, i32 0, i32 3
  %84 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis108, align 8, !tbaa !31
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %84, i32 0, i32 5
  %85 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %86 = bitcast %struct.gs_matrix_s* %m to i8*
  %87 = bitcast %struct.gs_matrix_s* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 24, i32 4, i1 false), !tbaa.struct !55
  %x109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin105, i32 0, i32 0
  %88 = load i32, i32* %x109, align 4, !tbaa !57
  %conv110 = sitofp i32 %88 to double
  %mul111 = fmul double %conv110, 3.906250e-03
  %conv112 = fptrunc double %mul111 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv112, float* %tx, align 4, !tbaa !58
  %y113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin105, i32 0, i32 1
  %89 = load i32, i32* %y113, align 4, !tbaa !59
  %conv114 = sitofp i32 %89 to double
  %mul115 = fmul double %conv114, 3.906250e-03
  %conv116 = fptrunc double %mul115 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv116, float* %ty, align 4, !tbaa !60
  %90 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call117 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %90, %struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #6
  %91 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %91, i32 0, i32 23
  %p118 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p118, i32 0, i32 0
  %92 = load double, double* %x119, align 8, !tbaa !61
  %93 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox120 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %93, i32 0, i32 23
  %q121 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox120, i32 0, i32 1
  %x122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q121, i32 0, i32 0
  %94 = load double, double* %x122, align 8, !tbaa !62
  %cmp123 = fcmp une double %92, %94
  br i1 %cmp123, label %if.then.125, label %if.else.136

if.then.125:                                      ; preds = %if.else
  %95 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox126 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %95, i32 0, i32 23
  %p127 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox126, i32 0, i32 0
  %x128 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p127, i32 0, i32 0
  %96 = load double, double* %x128, align 8, !tbaa !61
  %p129 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x130 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p129, i32 0, i32 0
  store double %96, double* %x130, align 8, !tbaa !45
  %97 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox131 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %97, i32 0, i32 23
  %q132 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox131, i32 0, i32 1
  %x133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q132, i32 0, i32 0
  %98 = load double, double* %x133, align 8, !tbaa !62
  %q134 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q134, i32 0, i32 0
  store double %98, double* %x135, align 8, !tbaa !49
  br label %if.end.141

if.else.136:                                      ; preds = %if.else
  %p137 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p137, i32 0, i32 0
  store double 0.000000e+00, double* %x138, align 8, !tbaa !45
  %q139 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q139, i32 0, i32 0
  store double 1.000000e+03, double* %x140, align 8, !tbaa !49
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.136, %if.then.125
  %99 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox142 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %99, i32 0, i32 23
  %p143 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox142, i32 0, i32 0
  %y144 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p143, i32 0, i32 1
  %100 = load double, double* %y144, align 8, !tbaa !63
  %101 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox145 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %101, i32 0, i32 23
  %q146 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox145, i32 0, i32 1
  %y147 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q146, i32 0, i32 1
  %102 = load double, double* %y147, align 8, !tbaa !64
  %cmp148 = fcmp une double %100, %102
  br i1 %cmp148, label %if.then.150, label %if.else.161

if.then.150:                                      ; preds = %if.end.141
  %103 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox151 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %103, i32 0, i32 23
  %p152 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox151, i32 0, i32 0
  %y153 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p152, i32 0, i32 1
  %104 = load double, double* %y153, align 8, !tbaa !63
  %p154 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p154, i32 0, i32 1
  store double %104, double* %y155, align 8, !tbaa !47
  %105 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %FontBBox156 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %105, i32 0, i32 23
  %q157 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox156, i32 0, i32 1
  %y158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q157, i32 0, i32 1
  %106 = load double, double* %y158, align 8, !tbaa !64
  %q159 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q159, i32 0, i32 1
  store double %106, double* %y160, align 8, !tbaa !51
  br label %if.end.166

if.else.161:                                      ; preds = %if.end.141
  %p162 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p162, i32 0, i32 1
  store double 0.000000e+00, double* %y163, align 8, !tbaa !47
  %q164 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y165 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q164, i32 0, i32 1
  store double 1.000000e+03, double* %y165, align 8, !tbaa !51
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.161, %if.then.150
  %p167 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p167, i32 0, i32 0
  %107 = load double, double* %x168, align 8, !tbaa !45
  %p169 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y170 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p169, i32 0, i32 1
  %108 = load double, double* %y170, align 8, !tbaa !47
  %call171 = call i32 @gs_point_transform(double %107, double %108, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p0) #6
  %p172 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x173 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p172, i32 0, i32 0
  %109 = load double, double* %x173, align 8, !tbaa !45
  %q174 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q174, i32 0, i32 1
  %110 = load double, double* %y175, align 8, !tbaa !51
  %call176 = call i32 @gs_point_transform(double %109, double %110, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p1) #6
  %q177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q177, i32 0, i32 0
  %111 = load double, double* %x178, align 8, !tbaa !49
  %p179 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y180 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p179, i32 0, i32 1
  %112 = load double, double* %y180, align 8, !tbaa !47
  %call181 = call i32 @gs_point_transform(double %111, double %112, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p2) #6
  %q182 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x183 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q182, i32 0, i32 0
  %113 = load double, double* %x183, align 8, !tbaa !49
  %q184 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y185 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q184, i32 0, i32 1
  %114 = load double, double* %y185, align 8, !tbaa !51
  %call186 = call i32 @gs_point_transform(double %113, double %114, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p3) #6
  %x187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %115 = load double, double* %x187, align 8, !tbaa !65
  %x188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %116 = load double, double* %x188, align 8, !tbaa !65
  %cmp189 = fcmp olt double %115, %116
  br i1 %cmp189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.166
  %x191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %117 = load double, double* %x191, align 8, !tbaa !65
  br label %cond.end

cond.false:                                       ; preds = %if.end.166
  %x192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %118 = load double, double* %x192, align 8, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %117, %cond.true ], [ %118, %cond.false ]
  %x193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %119 = load double, double* %x193, align 8, !tbaa !65
  %x194 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %120 = load double, double* %x194, align 8, !tbaa !65
  %cmp195 = fcmp olt double %119, %120
  br i1 %cmp195, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %cond.end
  %x198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %121 = load double, double* %x198, align 8, !tbaa !65
  br label %cond.end.201

cond.false.199:                                   ; preds = %cond.end
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %122 = load double, double* %x200, align 8, !tbaa !65
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.197
  %cond202 = phi double [ %121, %cond.true.197 ], [ %122, %cond.false.199 ]
  %cmp203 = fcmp olt double %cond, %cond202
  br i1 %cmp203, label %cond.true.205, label %cond.false.216

cond.true.205:                                    ; preds = %cond.end.201
  %x206 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %123 = load double, double* %x206, align 8, !tbaa !65
  %x207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %124 = load double, double* %x207, align 8, !tbaa !65
  %cmp208 = fcmp olt double %123, %124
  br i1 %cmp208, label %cond.true.210, label %cond.false.212

cond.true.210:                                    ; preds = %cond.true.205
  %x211 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %125 = load double, double* %x211, align 8, !tbaa !65
  br label %cond.end.214

cond.false.212:                                   ; preds = %cond.true.205
  %x213 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %126 = load double, double* %x213, align 8, !tbaa !65
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.210
  %cond215 = phi double [ %125, %cond.true.210 ], [ %126, %cond.false.212 ]
  br label %cond.end.227

cond.false.216:                                   ; preds = %cond.end.201
  %x217 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %127 = load double, double* %x217, align 8, !tbaa !65
  %x218 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %128 = load double, double* %x218, align 8, !tbaa !65
  %cmp219 = fcmp olt double %127, %128
  br i1 %cmp219, label %cond.true.221, label %cond.false.223

cond.true.221:                                    ; preds = %cond.false.216
  %x222 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %129 = load double, double* %x222, align 8, !tbaa !65
  br label %cond.end.225

cond.false.223:                                   ; preds = %cond.false.216
  %x224 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %130 = load double, double* %x224, align 8, !tbaa !65
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.221
  %cond226 = phi double [ %129, %cond.true.221 ], [ %130, %cond.false.223 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.end.214
  %cond228 = phi double [ %cond215, %cond.end.214 ], [ %cond226, %cond.end.225 ]
  %p229 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x230 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p229, i32 0, i32 0
  store double %cond228, double* %x230, align 8, !tbaa !45
  %y231 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %131 = load double, double* %y231, align 8, !tbaa !66
  %y232 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %132 = load double, double* %y232, align 8, !tbaa !66
  %cmp233 = fcmp olt double %131, %132
  br i1 %cmp233, label %cond.true.235, label %cond.false.237

cond.true.235:                                    ; preds = %cond.end.227
  %y236 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %133 = load double, double* %y236, align 8, !tbaa !66
  br label %cond.end.239

cond.false.237:                                   ; preds = %cond.end.227
  %y238 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %134 = load double, double* %y238, align 8, !tbaa !66
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.237, %cond.true.235
  %cond240 = phi double [ %133, %cond.true.235 ], [ %134, %cond.false.237 ]
  %y241 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %135 = load double, double* %y241, align 8, !tbaa !66
  %y242 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %136 = load double, double* %y242, align 8, !tbaa !66
  %cmp243 = fcmp olt double %135, %136
  br i1 %cmp243, label %cond.true.245, label %cond.false.247

cond.true.245:                                    ; preds = %cond.end.239
  %y246 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %137 = load double, double* %y246, align 8, !tbaa !66
  br label %cond.end.249

cond.false.247:                                   ; preds = %cond.end.239
  %y248 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %138 = load double, double* %y248, align 8, !tbaa !66
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.247, %cond.true.245
  %cond250 = phi double [ %137, %cond.true.245 ], [ %138, %cond.false.247 ]
  %cmp251 = fcmp olt double %cond240, %cond250
  br i1 %cmp251, label %cond.true.253, label %cond.false.264

cond.true.253:                                    ; preds = %cond.end.249
  %y254 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %139 = load double, double* %y254, align 8, !tbaa !66
  %y255 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %140 = load double, double* %y255, align 8, !tbaa !66
  %cmp256 = fcmp olt double %139, %140
  br i1 %cmp256, label %cond.true.258, label %cond.false.260

cond.true.258:                                    ; preds = %cond.true.253
  %y259 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %141 = load double, double* %y259, align 8, !tbaa !66
  br label %cond.end.262

cond.false.260:                                   ; preds = %cond.true.253
  %y261 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %142 = load double, double* %y261, align 8, !tbaa !66
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.260, %cond.true.258
  %cond263 = phi double [ %141, %cond.true.258 ], [ %142, %cond.false.260 ]
  br label %cond.end.275

cond.false.264:                                   ; preds = %cond.end.249
  %y265 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %143 = load double, double* %y265, align 8, !tbaa !66
  %y266 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %144 = load double, double* %y266, align 8, !tbaa !66
  %cmp267 = fcmp olt double %143, %144
  br i1 %cmp267, label %cond.true.269, label %cond.false.271

cond.true.269:                                    ; preds = %cond.false.264
  %y270 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %145 = load double, double* %y270, align 8, !tbaa !66
  br label %cond.end.273

cond.false.271:                                   ; preds = %cond.false.264
  %y272 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %146 = load double, double* %y272, align 8, !tbaa !66
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.271, %cond.true.269
  %cond274 = phi double [ %145, %cond.true.269 ], [ %146, %cond.false.271 ]
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.end.273, %cond.end.262
  %cond276 = phi double [ %cond263, %cond.end.262 ], [ %cond274, %cond.end.273 ]
  %p277 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p277, i32 0, i32 1
  store double %cond276, double* %y278, align 8, !tbaa !47
  %x279 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %147 = load double, double* %x279, align 8, !tbaa !65
  %x280 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %148 = load double, double* %x280, align 8, !tbaa !65
  %cmp281 = fcmp ogt double %147, %148
  br i1 %cmp281, label %cond.true.283, label %cond.false.285

cond.true.283:                                    ; preds = %cond.end.275
  %x284 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %149 = load double, double* %x284, align 8, !tbaa !65
  br label %cond.end.287

cond.false.285:                                   ; preds = %cond.end.275
  %x286 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %150 = load double, double* %x286, align 8, !tbaa !65
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.285, %cond.true.283
  %cond288 = phi double [ %149, %cond.true.283 ], [ %150, %cond.false.285 ]
  %x289 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %151 = load double, double* %x289, align 8, !tbaa !65
  %x290 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %152 = load double, double* %x290, align 8, !tbaa !65
  %cmp291 = fcmp ogt double %151, %152
  br i1 %cmp291, label %cond.true.293, label %cond.false.295

cond.true.293:                                    ; preds = %cond.end.287
  %x294 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %153 = load double, double* %x294, align 8, !tbaa !65
  br label %cond.end.297

cond.false.295:                                   ; preds = %cond.end.287
  %x296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %154 = load double, double* %x296, align 8, !tbaa !65
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.295, %cond.true.293
  %cond298 = phi double [ %153, %cond.true.293 ], [ %154, %cond.false.295 ]
  %cmp299 = fcmp ogt double %cond288, %cond298
  br i1 %cmp299, label %cond.true.301, label %cond.false.312

cond.true.301:                                    ; preds = %cond.end.297
  %x302 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %155 = load double, double* %x302, align 8, !tbaa !65
  %x303 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %156 = load double, double* %x303, align 8, !tbaa !65
  %cmp304 = fcmp ogt double %155, %156
  br i1 %cmp304, label %cond.true.306, label %cond.false.308

cond.true.306:                                    ; preds = %cond.true.301
  %x307 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %157 = load double, double* %x307, align 8, !tbaa !65
  br label %cond.end.310

cond.false.308:                                   ; preds = %cond.true.301
  %x309 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %158 = load double, double* %x309, align 8, !tbaa !65
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.308, %cond.true.306
  %cond311 = phi double [ %157, %cond.true.306 ], [ %158, %cond.false.308 ]
  br label %cond.end.323

cond.false.312:                                   ; preds = %cond.end.297
  %x313 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %159 = load double, double* %x313, align 8, !tbaa !65
  %x314 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %160 = load double, double* %x314, align 8, !tbaa !65
  %cmp315 = fcmp ogt double %159, %160
  br i1 %cmp315, label %cond.true.317, label %cond.false.319

cond.true.317:                                    ; preds = %cond.false.312
  %x318 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %161 = load double, double* %x318, align 8, !tbaa !65
  br label %cond.end.321

cond.false.319:                                   ; preds = %cond.false.312
  %x320 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %162 = load double, double* %x320, align 8, !tbaa !65
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.319, %cond.true.317
  %cond322 = phi double [ %161, %cond.true.317 ], [ %162, %cond.false.319 ]
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.end.321, %cond.end.310
  %cond324 = phi double [ %cond311, %cond.end.310 ], [ %cond322, %cond.end.321 ]
  %q325 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x326 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q325, i32 0, i32 0
  store double %cond324, double* %x326, align 8, !tbaa !49
  %y327 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %163 = load double, double* %y327, align 8, !tbaa !66
  %y328 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %164 = load double, double* %y328, align 8, !tbaa !66
  %cmp329 = fcmp ogt double %163, %164
  br i1 %cmp329, label %cond.true.331, label %cond.false.333

cond.true.331:                                    ; preds = %cond.end.323
  %y332 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %165 = load double, double* %y332, align 8, !tbaa !66
  br label %cond.end.335

cond.false.333:                                   ; preds = %cond.end.323
  %y334 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %166 = load double, double* %y334, align 8, !tbaa !66
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.333, %cond.true.331
  %cond336 = phi double [ %165, %cond.true.331 ], [ %166, %cond.false.333 ]
  %y337 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %167 = load double, double* %y337, align 8, !tbaa !66
  %y338 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %168 = load double, double* %y338, align 8, !tbaa !66
  %cmp339 = fcmp ogt double %167, %168
  br i1 %cmp339, label %cond.true.341, label %cond.false.343

cond.true.341:                                    ; preds = %cond.end.335
  %y342 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %169 = load double, double* %y342, align 8, !tbaa !66
  br label %cond.end.345

cond.false.343:                                   ; preds = %cond.end.335
  %y344 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %170 = load double, double* %y344, align 8, !tbaa !66
  br label %cond.end.345

cond.end.345:                                     ; preds = %cond.false.343, %cond.true.341
  %cond346 = phi double [ %169, %cond.true.341 ], [ %170, %cond.false.343 ]
  %cmp347 = fcmp ogt double %cond336, %cond346
  br i1 %cmp347, label %cond.true.349, label %cond.false.360

cond.true.349:                                    ; preds = %cond.end.345
  %y350 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %171 = load double, double* %y350, align 8, !tbaa !66
  %y351 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %172 = load double, double* %y351, align 8, !tbaa !66
  %cmp352 = fcmp ogt double %171, %172
  br i1 %cmp352, label %cond.true.354, label %cond.false.356

cond.true.354:                                    ; preds = %cond.true.349
  %y355 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %173 = load double, double* %y355, align 8, !tbaa !66
  br label %cond.end.358

cond.false.356:                                   ; preds = %cond.true.349
  %y357 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %174 = load double, double* %y357, align 8, !tbaa !66
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.356, %cond.true.354
  %cond359 = phi double [ %173, %cond.true.354 ], [ %174, %cond.false.356 ]
  br label %cond.end.371

cond.false.360:                                   ; preds = %cond.end.345
  %y361 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %175 = load double, double* %y361, align 8, !tbaa !66
  %y362 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %176 = load double, double* %y362, align 8, !tbaa !66
  %cmp363 = fcmp ogt double %175, %176
  br i1 %cmp363, label %cond.true.365, label %cond.false.367

cond.true.365:                                    ; preds = %cond.false.360
  %y366 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %177 = load double, double* %y366, align 8, !tbaa !66
  br label %cond.end.369

cond.false.367:                                   ; preds = %cond.false.360
  %y368 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %178 = load double, double* %y368, align 8, !tbaa !66
  br label %cond.end.369

cond.end.369:                                     ; preds = %cond.false.367, %cond.true.365
  %cond370 = phi double [ %177, %cond.true.365 ], [ %178, %cond.false.367 ]
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.end.369, %cond.end.358
  %cond372 = phi double [ %cond359, %cond.end.358 ], [ %cond370, %cond.end.369 ]
  %q373 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y374 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q373, i32 0, i32 1
  store double %cond372, double* %y374, align 8, !tbaa !51
  %179 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %179) #1
  %180 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %180) #1
  %181 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %181) #1
  %182 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %182) #1
  %183 = bitcast %struct.gs_fixed_point_s* %origin105 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %184) #1
  br label %if.end.375

if.end.375:                                       ; preds = %cond.end.371, %cleanup.cont
  br label %if.end.377

if.else.376:                                      ; preds = %land.lhs.true, %if.end.13
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.376, %if.end.375
  %185 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %186 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %187 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %188 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call378 = call i32 @pdf_update_text_state(%struct.pdf_text_process_state_s* %185, %struct.pdf_text_enum_s* %186, %struct.pdf_font_resource_s* %187, %struct.gs_matrix_s* %188) #6
  store i32 %call378, i32* %code, align 4, !tbaa !27
  %189 = load i32, i32* %code, align 4, !tbaa !27
  %cmp379 = icmp sgt i32 %189, 0
  br i1 %cmp379, label %if.then.381, label %if.end.395

if.then.381:                                      ; preds = %if.end.377
  %190 = load i32, i32* %code, align 4, !tbaa !27
  %and382 = and i32 %190, 128
  %tobool383 = icmp ne i32 %and382, 0
  br i1 %tobool383, label %if.then.384, label %if.end.394

if.then.384:                                      ; preds = %if.then.381
  %191 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %191, i32 0, i32 0
  %192 = load i8*, i8** %data, align 8, !tbaa !67
  %193 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text385 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %193, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text385, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %194 = load i64, i64* %s_char, align 8, !tbaa !68
  %conv386 = trunc i64 %194 to i32
  %195 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %size387 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %195, i32 0, i32 1
  %196 = load i32, i32* %size387, align 4, !tbaa !52
  %conv388 = zext i32 %196 to i64
  %call389 = call i8* @memchr(i8* %192, i32 %conv386, i64 %conv388) #7
  %tobool390 = icmp ne i8* %call389, null
  br i1 %tobool390, label %if.end.393, label %if.then.391

if.then.391:                                      ; preds = %if.then.384
  %197 = load i32, i32* %code, align 4, !tbaa !27
  %and392 = and i32 %197, -129
  store i32 %and392, i32* %code, align 4, !tbaa !27
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.391, %if.then.384
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %if.then.381
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.end.377
  %198 = load i32, i32* %code, align 4, !tbaa !27
  %cmp396 = icmp slt i32 %198, 0
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.end.395
  %199 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %199, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.399:                                       ; preds = %if.end.395
  %200 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %200, i32* %mask, align 4, !tbaa !27
  %201 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation400 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %201, i32 0, i32 0
  %202 = load i32, i32* %operation400, align 4, !tbaa !28
  %and401 = and i32 %202, 256
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.end.399
  %203 = load i32, i32* %mask, align 4, !tbaa !27
  %or = or i32 %203, 256
  store i32 %or, i32* %mask, align 4, !tbaa !27
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %if.end.399
  %204 = load i32, i32* %mask, align 4, !tbaa !27
  %cmp405 = icmp eq i32 %204, 0
  br i1 %cmp405, label %if.then.407, label %if.end.452

if.then.407:                                      ; preds = %if.end.404
  %205 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation408 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %205, i32 0, i32 0
  %206 = load i32, i32* %operation408, align 4, !tbaa !28
  %and409 = and i32 %206, 132096
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.end.412, label %if.then.411

if.then.411:                                      ; preds = %if.then.407
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.412:                                       ; preds = %if.then.407
  %207 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %208 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %209 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %210 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %211 = bitcast %struct.gs_string_s* %210 to %struct.gs_const_string_s*
  %212 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %call413 = call i32 @process_text_return_width(%struct.pdf_text_enum_s* %207, %struct.gs_font_base_s* %208, %struct.pdf_text_process_state_s* %209, %struct.gs_const_string_s* %211, i64* %212, %struct.gs_point_s* %width_pt, i32* %accepted, %struct.gs_rect_s* %glyphs_bbox) #6
  store i32 %call413, i32* %code, align 4, !tbaa !27
  %213 = load i32, i32* %code, align 4, !tbaa !27
  %cmp414 = icmp slt i32 %213, 0
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.end.412
  %214 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %214, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.417:                                       ; preds = %if.end.412
  %215 = load i32, i32* %code, align 4, !tbaa !27
  %cmp418 = icmp eq i32 %215, 0
  br i1 %cmp418, label %if.then.420, label %if.else.450

if.then.420:                                      ; preds = %if.end.417
  %216 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation421 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %216, i32 0, i32 0
  %217 = load i32, i32* %operation421, align 4, !tbaa !28
  %and422 = and i32 %217, 1024
  %tobool423 = icmp ne i32 %and422, 0
  br i1 %tobool423, label %if.then.429, label %lor.lhs.false.424

lor.lhs.false.424:                                ; preds = %if.then.420
  %218 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis425 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %218, i32 0, i32 3
  %219 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis425, align 8, !tbaa !31
  %text_rendering_mode426 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %219, i32 0, i32 18
  %220 = load i32, i32* %text_rendering_mode426, align 4, !tbaa !32
  %cmp427 = icmp eq i32 %220, 3
  br i1 %cmp427, label %if.then.429, label %if.else.441

if.then.429:                                      ; preds = %lor.lhs.false.424, %if.then.420
  %221 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %222 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data430 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %222, i32 0, i32 0
  %223 = load i8*, i8** %data430, align 8, !tbaa !67
  %224 = load i32, i32* %accepted, align 4, !tbaa !27
  %x431 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width_pt, i32 0, i32 0
  %225 = load double, double* %x431, align 8, !tbaa !65
  %y432 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width_pt, i32 0, i32 1
  %226 = load double, double* %y432, align 8, !tbaa !66
  %call433 = call i32 @pdf_append_chars(%struct.gx_device_pdf_s* %221, i8* %223, i32 %224, double %225, double %226, i32 0) #6
  store i32 %call433, i32* %code, align 4, !tbaa !27
  %227 = load i32, i32* %code, align 4, !tbaa !27
  %cmp434 = icmp slt i32 %227, 0
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %if.then.429
  %228 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %228, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.437:                                       ; preds = %if.then.429
  %229 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %230 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data438 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %230, i32 0, i32 0
  %231 = load i8*, i8** %data438, align 8, !tbaa !67
  %232 = load i32, i32* %accepted, align 4, !tbaa !27
  call void @adjust_first_last_char(%struct.pdf_font_resource_s* %229, i8* %231, i32 %232) #6
  %233 = load i32, i32* %accepted, align 4, !tbaa !27
  %234 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index439 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %234, i32 0, i32 17
  %235 = load i32, i32* %index439, align 4, !tbaa !54
  %add440 = add i32 %235, %233
  store i32 %add440, i32* %index439, align 4, !tbaa !54
  br label %if.end.449

if.else.441:                                      ; preds = %lor.lhs.false.424
  %236 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation442 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %236, i32 0, i32 0
  %237 = load i32, i32* %operation442, align 4, !tbaa !28
  %and443 = and i32 %237, 512
  %tobool444 = icmp ne i32 %and443, 0
  br i1 %tobool444, label %if.then.445, label %if.end.448

if.then.445:                                      ; preds = %if.else.441
  %238 = load i32, i32* %accepted, align 4, !tbaa !27
  %239 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index446 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %239, i32 0, i32 17
  %240 = load i32, i32* %index446, align 4, !tbaa !54
  %add447 = add i32 %240, %238
  store i32 %add447, i32* %index446, align 4, !tbaa !54
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.445, %if.else.441
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.end.437
  br label %if.end.451

if.else.450:                                      ; preds = %if.end.417
  store i32 131072, i32* %mask, align 4, !tbaa !27
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.450, %if.end.449
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.end.404
  %241 = load i32, i32* %mask, align 4, !tbaa !27
  %tobool453 = icmp ne i32 %241, 0
  br i1 %tobool453, label %if.then.454, label %if.end.554

if.then.454:                                      ; preds = %if.end.452
  %242 = bitcast i32* %index0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index455 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %243, i32 0, i32 17
  %244 = load i32, i32* %index455, align 4, !tbaa !54
  store i32 %244, i32* %index0, align 4, !tbaa !27
  %245 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  %246 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index456 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %246, i32 0, i32 18
  %247 = load i32, i32* %xy_index456, align 4, !tbaa !69
  store i32 %247, i32* %xy_index, align 4, !tbaa !27
  %248 = bitcast %struct.gs_text_params_s* %text457 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %248) #1
  %249 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text458 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %249, i32 0, i32 0
  %250 = bitcast %struct.gs_text_params_s* %text457 to i8*
  %251 = bitcast %struct.gs_text_params_s* %text458 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %250, i8* %251, i64 88, i32 8, i1 false), !tbaa.struct !70
  %252 = bitcast i32* %xy_index_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  %253 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text459 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %253, i32 0, i32 0
  %operation460 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text459, i32 0, i32 0
  %254 = load i32, i32* %operation460, align 4, !tbaa !72
  %and461 = and i32 %254, 256
  %tobool462 = icmp ne i32 %and461, 0
  br i1 %tobool462, label %cond.false.464, label %cond.true.463

cond.true.463:                                    ; preds = %if.then.454
  br label %cond.end.470

cond.false.464:                                   ; preds = %if.then.454
  %255 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text465 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %255, i32 0, i32 0
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text465, i32 0, i32 6
  %256 = load float*, float** %x_widths, align 8, !tbaa !73
  %257 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text466 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %257, i32 0, i32 0
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text466, i32 0, i32 7
  %258 = load float*, float** %y_widths, align 8, !tbaa !74
  %cmp467 = icmp eq float* %256, %258
  %cond469 = select i1 %cmp467, i32 2, i32 1
  br label %cond.end.470

cond.end.470:                                     ; preds = %cond.false.464, %cond.true.463
  %cond471 = phi i32 [ 0, %cond.true.463 ], [ %cond469, %cond.false.464 ]
  store i32 %cond471, i32* %xy_index_step, align 4, !tbaa !27
  %259 = bitcast i64* %gdata_i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  %260 = bitcast i64** %gdata_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #1
  %261 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  store i64* %261, i64** %gdata_p, align 8, !tbaa !1
  %262 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text472 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %262, i32 0, i32 0
  %operation473 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text472, i32 0, i32 0
  %263 = load i32, i32* %operation473, align 4, !tbaa !72
  %and474 = and i32 %263, 32
  %tobool475 = icmp ne i32 %and474, 0
  br i1 %tobool475, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %cond.end.470
  %264 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %265 = load i64, i64* %264, align 8, !tbaa !68
  store i64 %265, i64* %gdata_i, align 8, !tbaa !68
  store i64* %gdata_i, i64** %gdata_p, align 8, !tbaa !1
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %cond.end.470
  %266 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text478 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %266, i32 0, i32 0
  %operation479 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text478, i32 0, i32 0
  %267 = load i32, i32* %operation479, align 4, !tbaa !72
  %and480 = and i32 %267, 256
  %tobool481 = icmp ne i32 %and480, 0
  br i1 %tobool481, label %if.then.482, label %if.end.503

if.then.482:                                      ; preds = %if.end.477
  %268 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text483 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %268, i32 0, i32 0
  %x_widths484 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text483, i32 0, i32 6
  %269 = load float*, float** %x_widths484, align 8, !tbaa !73
  %cmp485 = icmp ne float* %269, null
  br i1 %cmp485, label %if.then.487, label %if.end.491

if.then.487:                                      ; preds = %if.then.482
  %270 = load i32, i32* %xy_index, align 4, !tbaa !27
  %271 = load i32, i32* %xy_index_step, align 4, !tbaa !27
  %mul488 = mul nsw i32 %270, %271
  %272 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text489 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %272, i32 0, i32 0
  %x_widths490 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text489, i32 0, i32 6
  %273 = load float*, float** %x_widths490, align 8, !tbaa !73
  %idx.ext = sext i32 %mul488 to i64
  %add.ptr = getelementptr inbounds float, float* %273, i64 %idx.ext
  store float* %add.ptr, float** %x_widths490, align 8, !tbaa !73
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.487, %if.then.482
  %274 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text492 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %274, i32 0, i32 0
  %y_widths493 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text492, i32 0, i32 7
  %275 = load float*, float** %y_widths493, align 8, !tbaa !74
  %cmp494 = icmp ne float* %275, null
  br i1 %cmp494, label %if.then.496, label %if.end.502

if.then.496:                                      ; preds = %if.end.491
  %276 = load i32, i32* %xy_index, align 4, !tbaa !27
  %277 = load i32, i32* %xy_index_step, align 4, !tbaa !27
  %mul497 = mul nsw i32 %276, %277
  %278 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text498 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %278, i32 0, i32 0
  %y_widths499 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text498, i32 0, i32 7
  %279 = load float*, float** %y_widths499, align 8, !tbaa !74
  %idx.ext500 = sext i32 %mul497 to i64
  %add.ptr501 = getelementptr inbounds float, float* %279, i64 %idx.ext500
  store float* %add.ptr501, float** %y_widths499, align 8, !tbaa !74
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.496, %if.end.491
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.end.477
  %280 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index504 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %280, i32 0, i32 18
  store i32 0, i32* %xy_index504, align 4, !tbaa !69
  %281 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %282 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %283 = bitcast %struct.gs_font_base_s* %282 to %struct.gs_font_s*
  %284 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %285 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %286 = bitcast %struct.gs_string_s* %285 to %struct.gs_const_string_s*
  %287 = load i64*, i64** %gdata_p, align 8, !tbaa !1
  %call505 = call i32 @process_text_modify_width(%struct.pdf_text_enum_s* %281, %struct.gs_font_s* %283, %struct.pdf_text_process_state_s* %284, %struct.gs_const_string_s* %286, %struct.gs_point_s* %width_pt, i64* %287, i32 0, i32 1) #6
  store i32 %call505, i32* %code, align 4, !tbaa !27
  %288 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text506 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %288, i32 0, i32 0
  %operation507 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text506, i32 0, i32 0
  %289 = load i32, i32* %operation507, align 4, !tbaa !72
  %and508 = and i32 %289, 256
  %tobool509 = icmp ne i32 %and508, 0
  br i1 %tobool509, label %if.then.510, label %if.end.534

if.then.510:                                      ; preds = %if.end.503
  %290 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text511 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %290, i32 0, i32 0
  %x_widths512 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text511, i32 0, i32 6
  %291 = load float*, float** %x_widths512, align 8, !tbaa !73
  %cmp513 = icmp ne float* %291, null
  br i1 %cmp513, label %if.then.515, label %if.end.521

if.then.515:                                      ; preds = %if.then.510
  %292 = load i32, i32* %xy_index, align 4, !tbaa !27
  %293 = load i32, i32* %xy_index_step, align 4, !tbaa !27
  %mul516 = mul nsw i32 %292, %293
  %294 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text517 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %294, i32 0, i32 0
  %x_widths518 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text517, i32 0, i32 6
  %295 = load float*, float** %x_widths518, align 8, !tbaa !73
  %idx.ext519 = sext i32 %mul516 to i64
  %idx.neg = sub i64 0, %idx.ext519
  %add.ptr520 = getelementptr inbounds float, float* %295, i64 %idx.neg
  store float* %add.ptr520, float** %x_widths518, align 8, !tbaa !73
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.515, %if.then.510
  %296 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text522 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %296, i32 0, i32 0
  %y_widths523 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text522, i32 0, i32 7
  %297 = load float*, float** %y_widths523, align 8, !tbaa !74
  %cmp524 = icmp ne float* %297, null
  br i1 %cmp524, label %if.then.526, label %if.end.533

if.then.526:                                      ; preds = %if.end.521
  %298 = load i32, i32* %xy_index, align 4, !tbaa !27
  %299 = load i32, i32* %xy_index_step, align 4, !tbaa !27
  %mul527 = mul nsw i32 %298, %299
  %300 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text528 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %300, i32 0, i32 0
  %y_widths529 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text528, i32 0, i32 7
  %301 = load float*, float** %y_widths529, align 8, !tbaa !74
  %idx.ext530 = sext i32 %mul527 to i64
  %idx.neg531 = sub i64 0, %idx.ext530
  %add.ptr532 = getelementptr inbounds float, float* %301, i64 %idx.neg531
  store float* %add.ptr532, float** %y_widths529, align 8, !tbaa !74
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.526, %if.end.521
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %if.end.503
  %302 = load i32, i32* %xy_index, align 4, !tbaa !27
  %303 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %xy_index535 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %303, i32 0, i32 18
  %304 = load i32, i32* %xy_index535, align 4, !tbaa !69
  %add536 = add i32 %304, %302
  store i32 %add536, i32* %xy_index535, align 4, !tbaa !69
  %305 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %306 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data537 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %306, i32 0, i32 0
  %307 = load i8*, i8** %data537, align 8, !tbaa !67
  %308 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index538 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %308, i32 0, i32 17
  %309 = load i32, i32* %index538, align 4, !tbaa !54
  call void @adjust_first_last_char(%struct.pdf_font_resource_s* %305, i8* %307, i32 %309) #6
  %310 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %text539 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %310, i32 0, i32 0
  %311 = bitcast %struct.gs_text_params_s* %text539 to i8*
  %312 = bitcast %struct.gs_text_params_s* %text457 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %311, i8* %312, i64 88, i32 8, i1 false), !tbaa.struct !70
  %313 = load i32, i32* %index0, align 4, !tbaa !27
  %314 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %index540 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %314, i32 0, i32 17
  %315 = load i32, i32* %index540, align 4, !tbaa !54
  %add541 = add i32 %315, %313
  store i32 %add541, i32* %index540, align 4, !tbaa !54
  %316 = load i32, i32* %code, align 4, !tbaa !27
  %cmp542 = icmp slt i32 %316, 0
  br i1 %cmp542, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %if.end.534
  %317 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %317, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.546

if.end.545:                                       ; preds = %if.end.534
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.546

cleanup.546:                                      ; preds = %if.end.545, %if.then.544
  %318 = bitcast i64** %gdata_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast i64* %gdata_i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i32* %xy_index_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast %struct.gs_text_params_s* %text457 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %321) #1
  %322 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %index0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %cleanup.dest.552 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.552, label %cleanup.908 [
    i32 0, label %cleanup.cont.553
  ]

cleanup.cont.553:                                 ; preds = %cleanup.546
  br label %if.end.554

if.end.554:                                       ; preds = %cleanup.cont.553, %if.end.452
  br label %finish

finish:                                           ; preds = %if.end.554, %cleanup
  %324 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %324, i32 0, i32 100
  %325 = load i32, i32* %Eps2Write, align 4, !tbaa !75
  %tobool555 = icmp ne i32 %325, 0
  br i1 %tobool555, label %if.then.556, label %if.end.879

if.then.556:                                      ; preds = %finish
  %326 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %326) #1
  %327 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %327) #1
  %328 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #1
  %329 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  %330 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %p557 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %x558 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p557, i32 0, i32 0
  %332 = load double, double* %x558, align 8, !tbaa !45
  %cmp559 = fcmp une double %332, 1.000000e+04
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.824

land.lhs.true.561:                                ; preds = %if.then.556
  %q562 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %x563 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q562, i32 0, i32 0
  %333 = load double, double* %x563, align 8, !tbaa !49
  %cmp564 = fcmp une double %333, 0.000000e+00
  br i1 %cmp564, label %if.then.566, label %if.end.824

if.then.566:                                      ; preds = %land.lhs.true.561
  %334 = bitcast %struct.gs_matrix_s* %m567 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %334) #1
  %335 = bitcast %struct.gs_fixed_point_s* %origin568 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %335) #1
  %336 = bitcast %struct.gs_point_s* %p0569 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %336) #1
  %337 = bitcast %struct.gs_point_s* %p1570 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %337) #1
  %338 = bitcast %struct.gs_point_s* %p2571 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %338) #1
  %339 = bitcast %struct.gs_point_s* %p3572 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %339) #1
  %340 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %path573 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %340, i32 0, i32 5
  %341 = load %struct.gx_path_s*, %struct.gx_path_s** %path573, align 8, !tbaa !29
  %call574 = call i32 @gx_path_current_point(%struct.gx_path_s* %341, %struct.gs_fixed_point_s* %origin568) #6
  store i32 %call574, i32* %code, align 4, !tbaa !27
  %342 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis575 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %342, i32 0, i32 3
  %343 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis575, align 8, !tbaa !31
  %ctm576 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %343, i32 0, i32 5
  %344 = bitcast %struct.gs_matrix_fixed_s* %ctm576 to %struct.gs_matrix_s*
  %345 = bitcast %struct.gs_matrix_s* %m567 to i8*
  %346 = bitcast %struct.gs_matrix_s* %344 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %345, i8* %346, i64 24, i32 4, i1 false), !tbaa.struct !55
  %x577 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin568, i32 0, i32 0
  %347 = load i32, i32* %x577, align 4, !tbaa !57
  %conv578 = sitofp i32 %347 to double
  %mul579 = fmul double %conv578, 3.906250e-03
  %conv580 = fptrunc double %mul579 to float
  %tx581 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m567, i32 0, i32 4
  store float %conv580, float* %tx581, align 4, !tbaa !58
  %y582 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin568, i32 0, i32 1
  %348 = load i32, i32* %y582, align 4, !tbaa !59
  %conv583 = sitofp i32 %348 to double
  %mul584 = fmul double %conv583, 3.906250e-03
  %conv585 = fptrunc double %mul584 to float
  %ty586 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m567, i32 0, i32 5
  store float %conv585, float* %ty586, align 4, !tbaa !60
  %349 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call587 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %349, %struct.gs_matrix_s* %m567, %struct.gs_matrix_s* %m567) #6
  %p588 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %x589 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p588, i32 0, i32 0
  %350 = load double, double* %x589, align 8, !tbaa !45
  %p590 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %y591 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p590, i32 0, i32 1
  %351 = load double, double* %y591, align 8, !tbaa !47
  %call592 = call i32 @gs_point_transform(double %350, double %351, %struct.gs_matrix_s* %m567, %struct.gs_point_s* %p0569) #6
  %p593 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %x594 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p593, i32 0, i32 0
  %352 = load double, double* %x594, align 8, !tbaa !45
  %q595 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %y596 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q595, i32 0, i32 1
  %353 = load double, double* %y596, align 8, !tbaa !51
  %call597 = call i32 @gs_point_transform(double %352, double %353, %struct.gs_matrix_s* %m567, %struct.gs_point_s* %p1570) #6
  %q598 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %x599 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q598, i32 0, i32 0
  %354 = load double, double* %x599, align 8, !tbaa !49
  %p600 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %y601 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p600, i32 0, i32 1
  %355 = load double, double* %y601, align 8, !tbaa !47
  %call602 = call i32 @gs_point_transform(double %354, double %355, %struct.gs_matrix_s* %m567, %struct.gs_point_s* %p2571) #6
  %q603 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %x604 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q603, i32 0, i32 0
  %356 = load double, double* %x604, align 8, !tbaa !49
  %q605 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %y606 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q605, i32 0, i32 1
  %357 = load double, double* %y606, align 8, !tbaa !51
  %call607 = call i32 @gs_point_transform(double %356, double %357, %struct.gs_matrix_s* %m567, %struct.gs_point_s* %p3572) #6
  %x608 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %358 = load double, double* %x608, align 8, !tbaa !65
  %x609 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %359 = load double, double* %x609, align 8, !tbaa !65
  %cmp610 = fcmp olt double %358, %359
  br i1 %cmp610, label %cond.true.612, label %cond.false.614

cond.true.612:                                    ; preds = %if.then.566
  %x613 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %360 = load double, double* %x613, align 8, !tbaa !65
  br label %cond.end.616

cond.false.614:                                   ; preds = %if.then.566
  %x615 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %361 = load double, double* %x615, align 8, !tbaa !65
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.false.614, %cond.true.612
  %cond617 = phi double [ %360, %cond.true.612 ], [ %361, %cond.false.614 ]
  %x618 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %362 = load double, double* %x618, align 8, !tbaa !65
  %x619 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %363 = load double, double* %x619, align 8, !tbaa !65
  %cmp620 = fcmp olt double %362, %363
  br i1 %cmp620, label %cond.true.622, label %cond.false.624

cond.true.622:                                    ; preds = %cond.end.616
  %x623 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %364 = load double, double* %x623, align 8, !tbaa !65
  br label %cond.end.626

cond.false.624:                                   ; preds = %cond.end.616
  %x625 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %365 = load double, double* %x625, align 8, !tbaa !65
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.false.624, %cond.true.622
  %cond627 = phi double [ %364, %cond.true.622 ], [ %365, %cond.false.624 ]
  %cmp628 = fcmp olt double %cond617, %cond627
  br i1 %cmp628, label %cond.true.630, label %cond.false.641

cond.true.630:                                    ; preds = %cond.end.626
  %x631 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %366 = load double, double* %x631, align 8, !tbaa !65
  %x632 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %367 = load double, double* %x632, align 8, !tbaa !65
  %cmp633 = fcmp olt double %366, %367
  br i1 %cmp633, label %cond.true.635, label %cond.false.637

cond.true.635:                                    ; preds = %cond.true.630
  %x636 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %368 = load double, double* %x636, align 8, !tbaa !65
  br label %cond.end.639

cond.false.637:                                   ; preds = %cond.true.630
  %x638 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %369 = load double, double* %x638, align 8, !tbaa !65
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.637, %cond.true.635
  %cond640 = phi double [ %368, %cond.true.635 ], [ %369, %cond.false.637 ]
  br label %cond.end.652

cond.false.641:                                   ; preds = %cond.end.626
  %x642 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %370 = load double, double* %x642, align 8, !tbaa !65
  %x643 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %371 = load double, double* %x643, align 8, !tbaa !65
  %cmp644 = fcmp olt double %370, %371
  br i1 %cmp644, label %cond.true.646, label %cond.false.648

cond.true.646:                                    ; preds = %cond.false.641
  %x647 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %372 = load double, double* %x647, align 8, !tbaa !65
  br label %cond.end.650

cond.false.648:                                   ; preds = %cond.false.641
  %x649 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %373 = load double, double* %x649, align 8, !tbaa !65
  br label %cond.end.650

cond.end.650:                                     ; preds = %cond.false.648, %cond.true.646
  %cond651 = phi double [ %372, %cond.true.646 ], [ %373, %cond.false.648 ]
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.end.650, %cond.end.639
  %cond653 = phi double [ %cond640, %cond.end.639 ], [ %cond651, %cond.end.650 ]
  %p654 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %x655 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p654, i32 0, i32 0
  store double %cond653, double* %x655, align 8, !tbaa !45
  %y656 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %374 = load double, double* %y656, align 8, !tbaa !66
  %y657 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %375 = load double, double* %y657, align 8, !tbaa !66
  %cmp658 = fcmp olt double %374, %375
  br i1 %cmp658, label %cond.true.660, label %cond.false.662

cond.true.660:                                    ; preds = %cond.end.652
  %y661 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %376 = load double, double* %y661, align 8, !tbaa !66
  br label %cond.end.664

cond.false.662:                                   ; preds = %cond.end.652
  %y663 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %377 = load double, double* %y663, align 8, !tbaa !66
  br label %cond.end.664

cond.end.664:                                     ; preds = %cond.false.662, %cond.true.660
  %cond665 = phi double [ %376, %cond.true.660 ], [ %377, %cond.false.662 ]
  %y666 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %378 = load double, double* %y666, align 8, !tbaa !66
  %y667 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %379 = load double, double* %y667, align 8, !tbaa !66
  %cmp668 = fcmp olt double %378, %379
  br i1 %cmp668, label %cond.true.670, label %cond.false.672

cond.true.670:                                    ; preds = %cond.end.664
  %y671 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %380 = load double, double* %y671, align 8, !tbaa !66
  br label %cond.end.674

cond.false.672:                                   ; preds = %cond.end.664
  %y673 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %381 = load double, double* %y673, align 8, !tbaa !66
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.672, %cond.true.670
  %cond675 = phi double [ %380, %cond.true.670 ], [ %381, %cond.false.672 ]
  %cmp676 = fcmp olt double %cond665, %cond675
  br i1 %cmp676, label %cond.true.678, label %cond.false.689

cond.true.678:                                    ; preds = %cond.end.674
  %y679 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %382 = load double, double* %y679, align 8, !tbaa !66
  %y680 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %383 = load double, double* %y680, align 8, !tbaa !66
  %cmp681 = fcmp olt double %382, %383
  br i1 %cmp681, label %cond.true.683, label %cond.false.685

cond.true.683:                                    ; preds = %cond.true.678
  %y684 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %384 = load double, double* %y684, align 8, !tbaa !66
  br label %cond.end.687

cond.false.685:                                   ; preds = %cond.true.678
  %y686 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %385 = load double, double* %y686, align 8, !tbaa !66
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.685, %cond.true.683
  %cond688 = phi double [ %384, %cond.true.683 ], [ %385, %cond.false.685 ]
  br label %cond.end.700

cond.false.689:                                   ; preds = %cond.end.674
  %y690 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %386 = load double, double* %y690, align 8, !tbaa !66
  %y691 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %387 = load double, double* %y691, align 8, !tbaa !66
  %cmp692 = fcmp olt double %386, %387
  br i1 %cmp692, label %cond.true.694, label %cond.false.696

cond.true.694:                                    ; preds = %cond.false.689
  %y695 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %388 = load double, double* %y695, align 8, !tbaa !66
  br label %cond.end.698

cond.false.696:                                   ; preds = %cond.false.689
  %y697 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %389 = load double, double* %y697, align 8, !tbaa !66
  br label %cond.end.698

cond.end.698:                                     ; preds = %cond.false.696, %cond.true.694
  %cond699 = phi double [ %388, %cond.true.694 ], [ %389, %cond.false.696 ]
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.end.698, %cond.end.687
  %cond701 = phi double [ %cond688, %cond.end.687 ], [ %cond699, %cond.end.698 ]
  %p702 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %y703 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p702, i32 0, i32 1
  store double %cond701, double* %y703, align 8, !tbaa !47
  %x704 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %390 = load double, double* %x704, align 8, !tbaa !65
  %x705 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %391 = load double, double* %x705, align 8, !tbaa !65
  %cmp706 = fcmp ogt double %390, %391
  br i1 %cmp706, label %cond.true.708, label %cond.false.710

cond.true.708:                                    ; preds = %cond.end.700
  %x709 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %392 = load double, double* %x709, align 8, !tbaa !65
  br label %cond.end.712

cond.false.710:                                   ; preds = %cond.end.700
  %x711 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %393 = load double, double* %x711, align 8, !tbaa !65
  br label %cond.end.712

cond.end.712:                                     ; preds = %cond.false.710, %cond.true.708
  %cond713 = phi double [ %392, %cond.true.708 ], [ %393, %cond.false.710 ]
  %x714 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %394 = load double, double* %x714, align 8, !tbaa !65
  %x715 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %395 = load double, double* %x715, align 8, !tbaa !65
  %cmp716 = fcmp ogt double %394, %395
  br i1 %cmp716, label %cond.true.718, label %cond.false.720

cond.true.718:                                    ; preds = %cond.end.712
  %x719 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %396 = load double, double* %x719, align 8, !tbaa !65
  br label %cond.end.722

cond.false.720:                                   ; preds = %cond.end.712
  %x721 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %397 = load double, double* %x721, align 8, !tbaa !65
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.720, %cond.true.718
  %cond723 = phi double [ %396, %cond.true.718 ], [ %397, %cond.false.720 ]
  %cmp724 = fcmp ogt double %cond713, %cond723
  br i1 %cmp724, label %cond.true.726, label %cond.false.737

cond.true.726:                                    ; preds = %cond.end.722
  %x727 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %398 = load double, double* %x727, align 8, !tbaa !65
  %x728 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %399 = load double, double* %x728, align 8, !tbaa !65
  %cmp729 = fcmp ogt double %398, %399
  br i1 %cmp729, label %cond.true.731, label %cond.false.733

cond.true.731:                                    ; preds = %cond.true.726
  %x732 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 0
  %400 = load double, double* %x732, align 8, !tbaa !65
  br label %cond.end.735

cond.false.733:                                   ; preds = %cond.true.726
  %x734 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %401 = load double, double* %x734, align 8, !tbaa !65
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.733, %cond.true.731
  %cond736 = phi double [ %400, %cond.true.731 ], [ %401, %cond.false.733 ]
  br label %cond.end.748

cond.false.737:                                   ; preds = %cond.end.722
  %x738 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %402 = load double, double* %x738, align 8, !tbaa !65
  %x739 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %403 = load double, double* %x739, align 8, !tbaa !65
  %cmp740 = fcmp ogt double %402, %403
  br i1 %cmp740, label %cond.true.742, label %cond.false.744

cond.true.742:                                    ; preds = %cond.false.737
  %x743 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 0
  %404 = load double, double* %x743, align 8, !tbaa !65
  br label %cond.end.746

cond.false.744:                                   ; preds = %cond.false.737
  %x745 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 0
  %405 = load double, double* %x745, align 8, !tbaa !65
  br label %cond.end.746

cond.end.746:                                     ; preds = %cond.false.744, %cond.true.742
  %cond747 = phi double [ %404, %cond.true.742 ], [ %405, %cond.false.744 ]
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.end.746, %cond.end.735
  %cond749 = phi double [ %cond736, %cond.end.735 ], [ %cond747, %cond.end.746 ]
  %q750 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %x751 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q750, i32 0, i32 0
  store double %cond749, double* %x751, align 8, !tbaa !49
  %y752 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %406 = load double, double* %y752, align 8, !tbaa !66
  %y753 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %407 = load double, double* %y753, align 8, !tbaa !66
  %cmp754 = fcmp ogt double %406, %407
  br i1 %cmp754, label %cond.true.756, label %cond.false.758

cond.true.756:                                    ; preds = %cond.end.748
  %y757 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %408 = load double, double* %y757, align 8, !tbaa !66
  br label %cond.end.760

cond.false.758:                                   ; preds = %cond.end.748
  %y759 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %409 = load double, double* %y759, align 8, !tbaa !66
  br label %cond.end.760

cond.end.760:                                     ; preds = %cond.false.758, %cond.true.756
  %cond761 = phi double [ %408, %cond.true.756 ], [ %409, %cond.false.758 ]
  %y762 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %410 = load double, double* %y762, align 8, !tbaa !66
  %y763 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %411 = load double, double* %y763, align 8, !tbaa !66
  %cmp764 = fcmp ogt double %410, %411
  br i1 %cmp764, label %cond.true.766, label %cond.false.768

cond.true.766:                                    ; preds = %cond.end.760
  %y767 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %412 = load double, double* %y767, align 8, !tbaa !66
  br label %cond.end.770

cond.false.768:                                   ; preds = %cond.end.760
  %y769 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %413 = load double, double* %y769, align 8, !tbaa !66
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.false.768, %cond.true.766
  %cond771 = phi double [ %412, %cond.true.766 ], [ %413, %cond.false.768 ]
  %cmp772 = fcmp ogt double %cond761, %cond771
  br i1 %cmp772, label %cond.true.774, label %cond.false.785

cond.true.774:                                    ; preds = %cond.end.770
  %y775 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %414 = load double, double* %y775, align 8, !tbaa !66
  %y776 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %415 = load double, double* %y776, align 8, !tbaa !66
  %cmp777 = fcmp ogt double %414, %415
  br i1 %cmp777, label %cond.true.779, label %cond.false.781

cond.true.779:                                    ; preds = %cond.true.774
  %y780 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0569, i32 0, i32 1
  %416 = load double, double* %y780, align 8, !tbaa !66
  br label %cond.end.783

cond.false.781:                                   ; preds = %cond.true.774
  %y782 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %417 = load double, double* %y782, align 8, !tbaa !66
  br label %cond.end.783

cond.end.783:                                     ; preds = %cond.false.781, %cond.true.779
  %cond784 = phi double [ %416, %cond.true.779 ], [ %417, %cond.false.781 ]
  br label %cond.end.796

cond.false.785:                                   ; preds = %cond.end.770
  %y786 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %418 = load double, double* %y786, align 8, !tbaa !66
  %y787 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %419 = load double, double* %y787, align 8, !tbaa !66
  %cmp788 = fcmp ogt double %418, %419
  br i1 %cmp788, label %cond.true.790, label %cond.false.792

cond.true.790:                                    ; preds = %cond.false.785
  %y791 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1570, i32 0, i32 1
  %420 = load double, double* %y791, align 8, !tbaa !66
  br label %cond.end.794

cond.false.792:                                   ; preds = %cond.false.785
  %y793 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2571, i32 0, i32 1
  %421 = load double, double* %y793, align 8, !tbaa !66
  br label %cond.end.794

cond.end.794:                                     ; preds = %cond.false.792, %cond.true.790
  %cond795 = phi double [ %420, %cond.true.790 ], [ %421, %cond.false.792 ]
  br label %cond.end.796

cond.end.796:                                     ; preds = %cond.end.794, %cond.end.783
  %cond797 = phi double [ %cond784, %cond.end.783 ], [ %cond795, %cond.end.794 ]
  %q798 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %y799 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q798, i32 0, i32 1
  store double %cond797, double* %y799, align 8, !tbaa !51
  %p800 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %y801 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p800, i32 0, i32 1
  %422 = load double, double* %y801, align 8, !tbaa !47
  %p802 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y803 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p802, i32 0, i32 1
  %423 = load double, double* %y803, align 8, !tbaa !47
  %cmp804 = fcmp ogt double %422, %423
  br i1 %cmp804, label %if.then.806, label %if.end.811

if.then.806:                                      ; preds = %cond.end.796
  %p807 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 0
  %y808 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p807, i32 0, i32 1
  %424 = load double, double* %y808, align 8, !tbaa !47
  %p809 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y810 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p809, i32 0, i32 1
  store double %424, double* %y810, align 8, !tbaa !47
  br label %if.end.811

if.end.811:                                       ; preds = %if.then.806, %cond.end.796
  %q812 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %y813 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q812, i32 0, i32 1
  %425 = load double, double* %y813, align 8, !tbaa !51
  %q814 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y815 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q814, i32 0, i32 1
  %426 = load double, double* %y815, align 8, !tbaa !51
  %cmp816 = fcmp olt double %425, %426
  br i1 %cmp816, label %if.then.818, label %if.end.823

if.then.818:                                      ; preds = %if.end.811
  %q819 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %glyphs_bbox, i32 0, i32 1
  %y820 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q819, i32 0, i32 1
  %427 = load double, double* %y820, align 8, !tbaa !51
  %q821 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y822 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q821, i32 0, i32 1
  store double %427, double* %y822, align 8, !tbaa !51
  br label %if.end.823

if.end.823:                                       ; preds = %if.then.818, %if.end.811
  %428 = bitcast %struct.gs_point_s* %p3572 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %428) #1
  %429 = bitcast %struct.gs_point_s* %p2571 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %429) #1
  %430 = bitcast %struct.gs_point_s* %p1570 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %430) #1
  %431 = bitcast %struct.gs_point_s* %p0569 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %431) #1
  %432 = bitcast %struct.gs_fixed_point_s* %origin568 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast %struct.gs_matrix_s* %m567 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %433) #1
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %land.lhs.true.561, %if.then.556
  %434 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin825 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %434, i32 0, i32 30
  %x826 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin825, i32 0, i32 0
  %435 = load i32, i32* %x826, align 4, !tbaa !101
  %conv827 = sitofp i32 %435 to double
  %mul828 = fmul double %conv827, 3.906250e-03
  %p829 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x830 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p829, i32 0, i32 0
  store double %mul828, double* %x830, align 8, !tbaa !45
  %p831 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x832 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p831, i32 0, i32 0
  %436 = load double, double* %x832, align 8, !tbaa !45
  %x833 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width_pt, i32 0, i32 0
  %437 = load double, double* %x833, align 8, !tbaa !65
  %add834 = fadd double %436, %437
  %q835 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x836 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q835, i32 0, i32 0
  store double %add834, double* %x836, align 8, !tbaa !49
  %p837 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x838 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p837, i32 0, i32 0
  %438 = load double, double* %x838, align 8, !tbaa !45
  %mul839 = fmul double %438, 2.560000e+02
  %conv840 = fptosi double %mul839 to i32
  store i32 %conv840, i32* %x0, align 4, !tbaa !27
  %p841 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y842 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p841, i32 0, i32 1
  %439 = load double, double* %y842, align 8, !tbaa !47
  %mul843 = fmul double %439, 2.560000e+02
  %conv844 = fptosi double %mul843 to i32
  store i32 %conv844, i32* %y0, align 4, !tbaa !27
  %q845 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x846 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q845, i32 0, i32 0
  %440 = load double, double* %x846, align 8, !tbaa !49
  %mul847 = fmul double %440, 2.560000e+02
  %conv848 = fptosi double %mul847 to i32
  %441 = load i32, i32* %x0, align 4, !tbaa !27
  %sub = sub nsw i32 %conv848, %441
  store i32 %sub, i32* %bx2, align 4, !tbaa !27
  %q849 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y850 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q849, i32 0, i32 1
  %442 = load double, double* %y850, align 8, !tbaa !51
  %mul851 = fmul double %442, 2.560000e+02
  %conv852 = fptosi double %mul851 to i32
  %443 = load i32, i32* %y0, align 4, !tbaa !27
  %sub853 = sub nsw i32 %conv852, %443
  store i32 %sub853, i32* %by2, align 4, !tbaa !27
  %444 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %444, i32 0, i32 128
  %445 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !102
  %inc = add nsw i32 %445, 1
  store i32 %inc, i32* %AccumulatingBBox, align 4, !tbaa !102
  %446 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pcpath854 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %446, i32 0, i32 7
  %447 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath854, align 8, !tbaa !42
  %448 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %449 = bitcast %struct.gx_device_pdf_s* %448 to %struct.gx_device_s*
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %447, %struct.gx_device_s* %449) #6
  %450 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %451 = bitcast %struct.gx_device_pdf_s* %450 to %struct.gx_device_s*
  %call855 = call i64 @gx_device_black(%struct.gx_device_s* %451) #6
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %call855, i64* %pure, align 8, !tbaa !68
  %452 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* %452, %struct.gx_device_color_type_s** %type, align 8, !tbaa !103
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !107
  %453 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %454 = bitcast %struct.gx_device_pdf_s* %453 to %struct.gx_device_s*
  %455 = load i32, i32* %x0, align 4, !tbaa !27
  %456 = load i32, i32* %y0, align 4, !tbaa !27
  %p856 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x857 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p856, i32 0, i32 0
  %457 = load double, double* %x857, align 8, !tbaa !45
  %mul858 = fmul double %457, 2.560000e+02
  %conv859 = fptosi double %mul858 to i32
  %458 = load i32, i32* %x0, align 4, !tbaa !27
  %sub860 = sub nsw i32 %conv859, %458
  %q861 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y862 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q861, i32 0, i32 1
  %459 = load double, double* %y862, align 8, !tbaa !51
  %mul863 = fmul double %459, 2.560000e+02
  %conv864 = fptosi double %mul863 to i32
  %460 = load i32, i32* %y0, align 4, !tbaa !27
  %sub865 = sub nsw i32 %conv864, %460
  %461 = load i32, i32* %bx2, align 4, !tbaa !27
  %462 = load i32, i32* %by2, align 4, !tbaa !27
  %call866 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %454, i32 %455, i32 %456, i32 %sub860, i32 %sub865, i32 %461, i32 %462, %struct.gx_device_color_s* %devc, i32 252) #6
  %463 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %464 = load i32, i32* %x0, align 4, !tbaa !27
  %465 = load i32, i32* %y0, align 4, !tbaa !27
  %q867 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x868 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q867, i32 0, i32 0
  %466 = load double, double* %x868, align 8, !tbaa !49
  %mul869 = fmul double %466, 2.560000e+02
  %conv870 = fptosi double %mul869 to i32
  %467 = load i32, i32* %x0, align 4, !tbaa !27
  %sub871 = sub nsw i32 %conv870, %467
  %p872 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y873 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p872, i32 0, i32 1
  %468 = load double, double* %y873, align 8, !tbaa !47
  %mul874 = fmul double %468, 2.560000e+02
  %conv875 = fptosi double %mul874 to i32
  %469 = load i32, i32* %y0, align 4, !tbaa !27
  %sub876 = sub nsw i32 %conv875, %469
  %470 = load i32, i32* %bx2, align 4, !tbaa !27
  %471 = load i32, i32* %by2, align 4, !tbaa !27
  %call877 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %463, i32 %464, i32 %465, i32 %sub871, i32 %sub876, i32 %470, i32 %471, %struct.gx_device_color_s* %devc, i32 252) #6
  %472 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox878 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %472, i32 0, i32 128
  %473 = load i32, i32* %AccumulatingBBox878, align 4, !tbaa !102
  %dec = add nsw i32 %473, -1
  store i32 %dec, i32* %AccumulatingBBox878, align 4, !tbaa !102
  %474 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %476 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %478) #1
  %479 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %479) #1
  br label %if.end.879

if.end.879:                                       ; preds = %if.end.824, %finish
  %480 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation880 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %480, i32 0, i32 0
  %481 = load i32, i32* %operation880, align 4, !tbaa !28
  %and881 = and i32 %481, 131072
  %tobool882 = icmp ne i32 %and881, 0
  br i1 %tobool882, label %if.end.884, label %if.then.883

if.then.883:                                      ; preds = %if.end.879
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

if.end.884:                                       ; preds = %if.end.879
  %482 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text, align 8, !tbaa !1
  %operation885 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %482, i32 0, i32 0
  %483 = load i32, i32* %operation885, align 4, !tbaa !28
  %and886 = and i32 %483, 512
  %tobool887 = icmp ne i32 %and886, 0
  br i1 %tobool887, label %if.then.888, label %if.else.903

if.then.888:                                      ; preds = %if.end.884
  %484 = bitcast %struct.gs_point_s* %p889 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %484) #1
  %x890 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width_pt, i32 0, i32 0
  %485 = load double, double* %x890, align 8, !tbaa !65
  %y891 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width_pt, i32 0, i32 1
  %486 = load double, double* %y891, align 8, !tbaa !66
  %487 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis892 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %487, i32 0, i32 3
  %488 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis892, align 8, !tbaa !31
  %ctm893 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %488, i32 0, i32 5
  %489 = bitcast %struct.gs_matrix_fixed_s* %ctm893 to %struct.gs_matrix_s*
  %call894 = call i32 @gs_distance_transform_inverse(double %485, double %486, %struct.gs_matrix_s* %489, %struct.gs_point_s* %p889) #6
  %x895 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p889, i32 0, i32 0
  %490 = load double, double* %x895, align 8, !tbaa !65
  %491 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %491, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %x896 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  %492 = load double, double* %x896, align 8, !tbaa !108
  %add897 = fadd double %492, %490
  store double %add897, double* %x896, align 8, !tbaa !108
  %y898 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p889, i32 0, i32 1
  %493 = load double, double* %y898, align 8, !tbaa !66
  %494 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %returned899 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %494, i32 0, i32 28
  %total_width900 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned899, i32 0, i32 2
  %y901 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width900, i32 0, i32 1
  %495 = load double, double* %y901, align 8, !tbaa !109
  %add902 = fadd double %495, %493
  store double %add902, double* %y901, align 8, !tbaa !109
  %496 = bitcast %struct.gs_point_s* %p889 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %496) #1
  br label %if.end.906

if.else.903:                                      ; preds = %if.end.884
  %497 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %returned904 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %497, i32 0, i32 28
  %total_width905 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned904, i32 0, i32 2
  %498 = bitcast %struct.gs_point_s* %total_width905 to i8*
  %499 = bitcast %struct.gs_point_s* %width_pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %498, i8* %499, i64 16, i32 8, i1 false), !tbaa.struct !110
  br label %if.end.906

if.end.906:                                       ; preds = %if.else.903, %if.then.888
  %500 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %call907 = call i32 @pdf_shift_text_currentpoint(%struct.pdf_text_enum_s* %500, %struct.gs_point_s* %width_pt) #6
  store i32 %call907, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.908

cleanup.908:                                      ; preds = %if.end.906, %if.then.883, %cleanup.546, %if.then.436, %if.then.416, %if.then.411, %if.then.398, %cleanup, %if.then.12, %if.then.8, %if.then
  %501 = bitcast %struct.gs_rect_s* %glyphs_bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %501) #1
  %502 = bitcast %struct.gs_rect_s* %text_bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %502) #1
  %503 = bitcast i32* %accepted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
  %504 = bitcast %struct.gs_point_s* %width_pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %504) #1
  %505 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #1
  %506 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %507 = bitcast %struct.gs_text_params_s** %text to i8*
  call void @llvm.lifetime.end(i64 8, i8* %507) #1
  %508 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %508) #1
  %509 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %509) #1
  %510 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %510) #1
  %511 = load i32, i32* %retval
  ret i32 %511
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, %struct.pdf_font_resource_s* %pdfont, i64 %glyph, i64 %ch, %struct.gs_const_string_s* %gnstr) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %gnstr.addr = alloca %struct.gs_const_string_s*, align 8
  %code = alloca i32, align 4
  %unicode = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %d0 = alloca i8*, align 8
  %d1 = alloca i8*, align 8
  %d2 = alloca i8*, align 8
  %d3 = alloca i8*, align 8
  %num_codes = alloca i32, align 4
  %key_size = alloca i32, align 4
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !68
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !68
  store %struct.gs_const_string_s* %gnstr, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %unicode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !68
  %cmp = icmp eq i64 %2, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 20
  %decode_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 5
  %4 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %decode_glyph, align 8, !tbaa !111
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !68
  %7 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %conv = trunc i64 %7 to i32
  %call = call i64 %4(%struct.gs_font_s* %5, i64 %6, i32 %conv) #6
  store i64 %call, i64* %unicode, align 8, !tbaa !68
  %8 = load i64, i64* %unicode, align 8, !tbaa !68
  %cmp1 = icmp eq i64 %8, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gs_const_string_s* %9, null
  br i1 %cmp3, label %land.lhs.true.5, label %if.end.53

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !113
  %cmp6 = icmp eq i32 %11, 7
  br i1 %cmp6, label %if.then.8, label %if.end.53

if.then.8:                                        ; preds = %land.lhs.true.5
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !114
  %call9 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 3) #7
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.52, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  %14 = bitcast i8** %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %16 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %data11, align 8, !tbaa !114
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !115
  %conv12 = zext i8 %18 to i32
  %call13 = call i8* @strchr(i8* %15, i32 %conv12) #8
  store i8* %call13, i8** %d0, align 8, !tbaa !1
  %19 = bitcast i8** %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %21 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %data14, align 8, !tbaa !114
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = load i8, i8* %arrayidx15, align 1, !tbaa !115
  %conv16 = zext i8 %23 to i32
  %call17 = call i8* @strchr(i8* %20, i32 %conv16) #8
  store i8* %call17, i8** %d1, align 8, !tbaa !1
  %24 = bitcast i8** %d2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %26 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %data18, align 8, !tbaa !114
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 5
  %28 = load i8, i8* %arrayidx19, align 1, !tbaa !115
  %conv20 = zext i8 %28 to i32
  %call21 = call i8* @strchr(i8* %25, i32 %conv20) #8
  store i8* %call21, i8** %d2, align 8, !tbaa !1
  %29 = bitcast i8** %d3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %31 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gnstr.addr, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %data22, align 8, !tbaa !114
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 6
  %33 = load i8, i8* %arrayidx23, align 1, !tbaa !115
  %conv24 = zext i8 %33 to i32
  %call25 = call i8* @strchr(i8* %30, i32 %conv24) #8
  store i8* %call25, i8** %d3, align 8, !tbaa !1
  %34 = load i8*, i8** %d0, align 8, !tbaa !1
  %cmp26 = icmp ne i8* %34, null
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.51

land.lhs.true.28:                                 ; preds = %if.then.10
  %35 = load i8*, i8** %d1, align 8, !tbaa !1
  %cmp29 = icmp ne i8* %35, null
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.51

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %36 = load i8*, i8** %d2, align 8, !tbaa !1
  %cmp32 = icmp ne i8* %36, null
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.51

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %37 = load i8*, i8** %d3, align 8, !tbaa !1
  %cmp35 = icmp ne i8* %37, null
  br i1 %cmp35, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %land.lhs.true.34
  %38 = load i8*, i8** %d0, align 8, !tbaa !1
  %39 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 12
  %40 = load i8*, i8** %d1, align 8, !tbaa !1
  %41 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast38 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %41 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %shl41 = shl i64 %sub.ptr.sub40, 8
  %add = add nsw i64 %shl, %shl41
  %42 = load i8*, i8** %d2, align 8, !tbaa !1
  %43 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast42 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %43 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %shl45 = shl i64 %sub.ptr.sub44, 4
  %add46 = add nsw i64 %add, %shl45
  %44 = load i8*, i8** %d3, align 8, !tbaa !1
  %45 = load i8*, i8** @pdf_add_ToUnicode.hexdigits, align 8, !tbaa !1
  %sub.ptr.lhs.cast47 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %45 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %add50 = add nsw i64 %add46, %sub.ptr.sub49
  store i64 %add50, i64* %unicode, align 8, !tbaa !68
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.37, %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true.28, %if.then.10
  %46 = bitcast i8** %d3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i8** %d2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true.5, %land.lhs.true, %if.end
  %50 = load i64, i64* %unicode, align 8, !tbaa !68
  %cmp54 = icmp ne i64 %50, -1
  br i1 %cmp54, label %if.then.56, label %if.end.89

if.then.56:                                       ; preds = %if.end.53
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 17
  %52 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !116
  %cmp57 = icmp eq %struct.gs_cmap_s* %52, null
  br i1 %cmp57, label %if.then.59, label %if.end.80

if.then.59:                                       ; preds = %if.then.56
  %53 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 256, i32* %num_codes, align 4, !tbaa !27
  %54 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 1, i32* %key_size, align 4, !tbaa !27
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %55, i32 0, i32 11
  %56 = load i32, i32* %FontType, align 4, !tbaa !118
  %cmp60 = icmp eq i32 %56, 9
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.then.59
  %57 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gs_font_s* %58 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %59, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %60 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %60, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %61 = load i32, i32* %CIDCount, align 4, !tbaa !119
  store i32 %61, i32* %num_codes, align 4, !tbaa !27
  store i32 2, i32* %key_size, align 4, !tbaa !27
  %62 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  br label %if.end.71

if.else:                                          ; preds = %if.then.59
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType63 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %63, i32 0, i32 11
  %64 = load i32, i32* %FontType63, align 4, !tbaa !118
  %cmp64 = icmp eq i32 %64, 11
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType66 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %65, i32 0, i32 11
  %66 = load i32, i32* %FontType66, align 4, !tbaa !118
  %cmp67 = icmp eq i32 %66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false, %if.else
  store i32 2, i32* %key_size, align 4, !tbaa !27
  store i32 65536, i32* %num_codes, align 4, !tbaa !27
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %lor.lhs.false
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.62
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 43
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !124
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %rid = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 2
  %70 = load i64, i64* %rid, align 8, !tbaa !125
  %conv72 = trunc i64 %70 to i32
  %71 = load i32, i32* %num_codes, align 4, !tbaa !27
  %72 = load i32, i32* %key_size, align 4, !tbaa !27
  %73 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode73 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %73, i32 0, i32 17
  %call74 = call i32 @gs_cmap_ToUnicode_alloc(%struct.gs_memory_s* %68, i32 %conv72, i32 %71, i32 %72, %struct.gs_cmap_s** %cmap_ToUnicode73) #6
  store i32 %call74, i32* %code, align 4, !tbaa !27
  %74 = load i32, i32* %code, align 4, !tbaa !27
  %cmp75 = icmp slt i32 %74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.71
  %75 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.then.77
  %76 = bitcast i32* %key_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %num_codes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont, %if.then.56
  %78 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode81 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %78, i32 0, i32 17
  %79 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode81, align 8, !tbaa !116
  %cmp82 = icmp ne %struct.gs_cmap_s* %79, null
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.end.80
  %80 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode85 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %80, i32 0, i32 17
  %81 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode85, align 8, !tbaa !116
  %82 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %conv86 = trunc i64 %82 to i32
  %83 = load i64, i64* %unicode, align 8, !tbaa !68
  %conv87 = trunc i64 %83 to i32
  call void @gs_cmap_ToUnicode_add_pair(%struct.gs_cmap_s* %81, i32 %conv86, i32 %conv87) #6
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.end.80
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %cleanup, %if.then
  %84 = bitcast i64* %unicode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i32 @gs_cmap_ToUnicode_alloc(%struct.gs_memory_s*, i32, i32, i32, %struct.gs_cmap_s**) #4

declare void @gs_cmap_ToUnicode_add_pair(%struct.gs_cmap_s*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @pdf_used_charproc_resources(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %data = alloca %struct.pdf_resource_enum_data_t, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %0, i32 0, i32 6
  %1 = load i64, i64* %where_used, align 8, !tbaa !126
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 164
  %3 = load i64, i64* %used_mask, align 8, !tbaa !127
  %and = and i64 %1, %3
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 164
  %5 = load i64, i64* %used_mask1, align 8, !tbaa !127
  %6 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %where_used2 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %6, i32 0, i32 6
  %7 = load i64, i64* %where_used2, align 8, !tbaa !126
  %or = or i64 %7, %5
  store i64 %or, i64* %where_used2, align 8, !tbaa !126
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 75
  %9 = load double, double* %CompatibilityLevel, align 8, !tbaa !128
  %cmp = fcmp oge double %9, 1.200000e+00
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 8
  %11 = load i32, i32* %FontType, align 4, !tbaa !129
  %cmp5 = icmp eq i32 %11, 3
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 8
  %13 = load i32, i32* %FontType6, align 4, !tbaa !129
  %cmp7 = icmp eq i32 %13, 53
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 8
  %15 = load i32, i32* %FontType9, align 4, !tbaa !129
  %cmp10 = icmp eq i32 %15, 51
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %16, i32 0, i32 8
  %17 = load i32, i32* %FontType12, align 4, !tbaa !129
  %cmp13 = icmp eq i32 %17, 52
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType15 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 8
  %19 = load i32, i32* %FontType15, align 4, !tbaa !129
  %cmp16 = icmp eq i32 %19, 54
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false, %if.end.4
  %20 = bitcast %struct.pdf_resource_enum_data_t* %data to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pdev18 = getelementptr inbounds %struct.pdf_resource_enum_data_t, %struct.pdf_resource_enum_data_t* %data, i32 0, i32 0
  store %struct.gx_device_pdf_s* %21, %struct.gx_device_pdf_s** %pdev18, align 8, !tbaa !130
  %22 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %22, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %Resources = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 5
  %23 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources, align 8, !tbaa !132
  %24 = bitcast %struct.pdf_resource_enum_data_t* %data to i8*
  %call = call i32 @cos_dict_forall(%struct.cos_dict_s* %23, i8* %24, i32 (i8*, i8*, i32, %struct.cos_value_s*)* @process_resources1) #6
  store i32 %call, i32* %retval
  %25 = bitcast %struct.pdf_resource_enum_data_t* %data to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.3, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @cos_dict_forall(%struct.cos_dict_s*, i8*, i32 (i8*, i8*, i32, %struct.cos_value_s*)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @process_resources1(i8* %client_data, i8* %key_data, i32 %key_size, %struct.cos_value_s* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %v.addr = alloca %struct.cos_value_s*, align 8
  %data = alloca %struct.pdf_resource_enum_data_t*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !27
  store %struct.cos_value_s* %v, %struct.cos_value_s** %v.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_enum_data_t** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_resource_enum_data_t*
  store %struct.pdf_resource_enum_data_t* %2, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* @process_resources1.rn, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [32 x i8*], [32 x i8*]* @process_resources1.rn, i32 0, i64 %idxprom2
  %8 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [32 x i8*], [32 x i8*]* @process_resources1.rn, i32 0, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %10) #7
  %conv = trunc i64 %call to i32
  %11 = load i8*, i8** %key_data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %key_size.addr, align 4, !tbaa !27
  %call6 = call i32 @bytes_compare(i8* %8, i32 %conv, i8* %11, i32 %12) #6
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !27
  %cmp7 = icmp sge i32 %14, 32
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4, !tbaa !27
  %16 = load %struct.pdf_resource_enum_data_t*, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %rtype = getelementptr inbounds %struct.pdf_resource_enum_data_t, %struct.pdf_resource_enum_data_t* %16, i32 0, i32 1
  store i32 %15, i32* %rtype, align 4, !tbaa !134
  %17 = load %struct.cos_value_s*, %struct.cos_value_s** %v.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %17, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %18 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %19 = bitcast %struct.cos_object_s* %18 to %struct.cos_dict_s*
  %20 = load %struct.pdf_resource_enum_data_t*, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %21 = bitcast %struct.pdf_resource_enum_data_t* %20 to i8*
  %call11 = call i32 @cos_dict_forall(%struct.cos_dict_s* %19, i8* %21, i32 (i8*, i8*, i32, %struct.cos_value_s*)* @process_resources2) #6
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.pdf_resource_enum_data_t** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @adjust_first_last_char(%struct.pdf_font_resource_s* %pdfont, i8* %str, i32 %size) #0 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %chr = alloca i32, align 4
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !27
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !27
  %2 = load i32, i32* %size.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %chr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !115
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %chr, align 4, !tbaa !27
  %7 = load i32, i32* %chr, align 4, !tbaa !27
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 0
  %9 = load i32, i32* %FirstChar, align 4, !tbaa !135
  %cmp1 = icmp slt i32 %7, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %chr, align 4, !tbaa !27
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 20
  %simple4 = bitcast %union.anon.1* %u3 to %struct.anon.3*
  %FirstChar5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple4, i32 0, i32 0
  store i32 %10, i32* %FirstChar5, align 4, !tbaa !135
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i32, i32* %chr, align 4, !tbaa !27
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %13, i32 0, i32 20
  %simple7 = bitcast %union.anon.1* %u6 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple7, i32 0, i32 1
  %14 = load i32, i32* %LastChar, align 4, !tbaa !137
  %cmp8 = icmp sgt i32 %12, %14
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %chr, align 4, !tbaa !27
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u11 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %16, i32 0, i32 20
  %simple12 = bitcast %union.anon.1* %u11 to %struct.anon.3*
  %LastChar13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple12, i32 0, i32 1
  store i32 %15, i32* %LastChar13, align 4, !tbaa !137
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %17 = bitcast i32* %chr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %18 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_shift_text_currentpoint(%struct.pdf_text_enum_s* %penum, %struct.gs_point_s* %wpt) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.pdf_text_enum_s*, align 8
  %wpt.addr = alloca %struct.gs_point_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_text_enum_s* %penum, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %wpt, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !26
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !138
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %4 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !140
  %5 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %5, i32 0, i32 1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !26
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !138
  %8 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %8, i32 0, i32 3
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %10 = bitcast %struct.gs_imager_state_s* %9 to i8*
  %call = call %struct.gs_memory_struct_type_s* %4(%struct.gs_memory_s* %7, i8* %10) #6
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call, @st_gs_state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis3 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %11, i32 0, i32 3
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis3, align 8, !tbaa !31
  %13 = bitcast %struct.gs_imager_state_s* %12 to %struct.gs_state_s*
  store %struct.gs_state_s* %13, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %14 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %pis4 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %14, i32 0, i32 3
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis4, align 8, !tbaa !31
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call5 = call %struct.gx_path_s* @gx_current_path(%struct.gs_state_s* %16) #6
  %17 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %17, i32 0, i32 30
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !101
  %conv = sitofp i32 %18 to double
  %mul = fmul double %conv, 3.906250e-03
  %19 = load %struct.gs_point_s*, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %19, i32 0, i32 0
  %20 = load double, double* %x6, align 8, !tbaa !65
  %add = fadd double %mul, %20
  %21 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum.addr, align 8, !tbaa !1
  %origin7 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %21, i32 0, i32 30
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin7, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !143
  %conv8 = sitofp i32 %22 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %wpt.addr, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %23, i32 0, i32 1
  %24 = load double, double* %y10, align 8, !tbaa !66
  %add11 = fadd double %mul9, %24
  %call12 = call i32 @gs_moveto_aux(%struct.gs_imager_state_s* %15, %struct.gx_path_s* %call5, double %add, double %add11) #6
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gs_moveto_aux(%struct.gs_imager_state_s*, %struct.gx_path_s*, double, double) #4

declare %struct.gx_path_s* @gx_current_path(%struct.gs_state_s*) #4

; Function Attrs: nounwind uwtable
define i32 @process_text_modify_width(%struct.pdf_text_enum_s* %pte, %struct.gs_font_s* %font, %struct.pdf_text_process_state_s* %ppts, %struct.gs_const_string_s* %pstr, %struct.gs_point_s* %pdpt, i64* %gdata, i32 %composite, i32 %decoded_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.pdf_text_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %ppts.addr = alloca %struct.pdf_text_process_state_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  %gdata.addr = alloca i64*, align 8
  %composite.addr = alloca i32, align 4
  %decoded_bytes.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %space_char = alloca i32, align 4
  %start = alloca %struct.gs_point_s, align 8
  %total = alloca %struct.gs_point_s, align 8
  %pdfont3 = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cw = alloca %struct.pdf_glyph_widths_s, align 8
  %did = alloca %struct.gs_point_s, align 8
  %wanted = alloca %struct.gs_point_s, align 8
  %tpt = alloca %struct.gs_point_s, align 8
  %v = alloca %struct.gs_point_s, align 8
  %chr = alloca i64, align 8
  %glyph = alloca i64, align 8
  %index37 = alloca i32, align 4
  %pte1 = alloca %struct.gs_text_enum_s, align 8
  %FontType39 = alloca i32, align 4
  %use_cached_v = alloca i32, align 4
  %composite_type3_text = alloca [1 x i8], align 1
  %subfont = alloca %struct.gs_font_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %pdsubf = alloca %struct.pdf_font_resource_s*, align 8
  %gdata_i = alloca i64*, align 8
  %rfont = alloca %struct.gs_font_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %wmode = alloca i32, align 4
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %subpix_origin = alloca %struct.gs_fixed_point_s, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %glyph_origin_shift = alloca %struct.gs_point_s, align 8
  %scale0 = alloca double, align 8
  %subfont326 = alloca %struct.gs_font_s*, align 8
  %dpt = alloca %struct.gs_point_s, align 8
  store %struct.pdf_text_enum_s* %pte, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_text_process_state_s* %ppts, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  store i64* %gdata, i64** %gdata.addr, align 8, !tbaa !1
  store i32 %composite, i32* %composite.addr, align 4, !tbaa !27
  store i32 %decoded_bytes, i32* %decoded_bytes.addr, align 4, !tbaa !27
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !26
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %5, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %6 = load i32, i32* %operation, align 4, !tbaa !72
  %and = and i32 %6, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %7, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %8 = load i64, i64* %s_char, align 8, !tbaa !68
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ -1, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %space_char, align 4, !tbaa !27
  %9 = bitcast %struct.gs_point_s* %start to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.pdf_font_resource_s** %pdfont3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.pdf_font_resource_s* null, %struct.pdf_font_resource_s** %pdfont3, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType, align 4, !tbaa !118
  %cmp = icmp eq i32 %14, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType3 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 11
  %16 = load i32, i32* %FontType3, align 4, !tbaa !118
  %cmp4 = icmp eq i32 %16, 53
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 11
  %18 = load i32, i32* %FontType7, align 4, !tbaa !118
  %cmp8 = icmp eq i32 %18, 51
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType11, align 4, !tbaa !118
  %cmp12 = icmp eq i32 %20, 52
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType15 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType15, align 4, !tbaa !118
  %cmp16 = icmp eq i32 %22, 54
  br i1 %cmp16, label %if.then, label %if.end.21

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %cond.end
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %23, %struct.gs_font_s* %24, %struct.pdf_font_resource_s** %pdfont3, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !27
  %25 = load i32, i32* %code, align 4, !tbaa !27
  %cmp18 = icmp slt i32 %25, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %26 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.638

if.end:                                           ; preds = %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %lor.lhs.false.14
  %27 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8, !tbaa !114
  %29 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text22 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %29, i32 0, i32 0
  %data23 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text22, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data23 to i8**
  store i8* %28, i8** %bytes, align 8, !tbaa !1
  %30 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %30, i32 0, i32 1
  %31 = load i32, i32* %size, align 4, !tbaa !113
  %32 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text24 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %32, i32 0, i32 0
  %size25 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text24, i32 0, i32 2
  store i32 %31, i32* %size25, align 4, !tbaa !144
  %33 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %33, i32 0, i32 17
  store i32 0, i32* %index, align 4, !tbaa !54
  %34 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text26 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %34, i32 0, i32 0
  %operation27 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text26, i32 0, i32 0
  %35 = load i32, i32* %operation27, align 4, !tbaa !72
  %and28 = and i32 %35, -64
  store i32 %and28, i32* %operation27, align 4, !tbaa !72
  %36 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text29 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %36, i32 0, i32 0
  %operation30 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text29, i32 0, i32 0
  %37 = load i32, i32* %operation30, align 4, !tbaa !72
  %or = or i32 %37, 1
  store i32 %or, i32* %operation30, align 4, !tbaa !72
  %38 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %38, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 4
  %39 = load float, float* %tx, align 4, !tbaa !145
  %conv31 = fpext float %39 to double
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  store double %conv31, double* %x, align 8, !tbaa !65
  %40 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values32 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %40, i32 0, i32 0
  %matrix33 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values32, i32 0, i32 3
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix33, i32 0, i32 5
  %41 = load float, float* %ty, align 4, !tbaa !148
  %conv34 = fpext float %41 to double
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 1
  store double %conv34, double* %y, align 8, !tbaa !66
  %y35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  store double 0.000000e+00, double* %y35, align 8, !tbaa !66
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  store double 0.000000e+00, double* %x36, align 8, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.637, %if.end.21
  %42 = bitcast %struct.pdf_glyph_widths_s* %cw to i8*
  call void @llvm.lifetime.start(i64 120, i8* %42) #1
  %43 = bitcast %struct.gs_point_s* %did to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.start(i64 16, i8* %44) #1
  %45 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #1
  %47 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 8, i1 false)
  %48 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = bitcast i32* %index37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index38 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %51, i32 0, i32 17
  %52 = load i32, i32* %index38, align 4, !tbaa !54
  store i32 %52, i32* %index37, align 4, !tbaa !27
  %53 = bitcast %struct.gs_text_enum_s* %pte1 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %53) #1
  %54 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %55 = bitcast %struct.pdf_text_enum_s* %54 to %struct.gs_text_enum_s*
  %56 = bitcast %struct.gs_text_enum_s* %pte1 to i8*
  %57 = bitcast %struct.gs_text_enum_s* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 448, i32 8, i1 false), !tbaa.struct !149
  %58 = bitcast i32* %FontType39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %use_cached_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 1, i32* %use_cached_v, align 4, !tbaa !27
  %60 = bitcast [1 x i8]* %composite_type3_text to i8*
  call void @llvm.lifetime.start(i64 1, i8* %60) #1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %pte1, i32 0, i32 4
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !150
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %62 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !152
  %call40 = call i32 %62(%struct.gs_text_enum_s* %pte1, i64* %chr, i64* %glyph) #6
  store i32 %call40, i32* %code, align 4, !tbaa !27
  %63 = load i32, i32* %code, align 4, !tbaa !27
  %cmp41 = icmp eq i32 %63, 2
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.cond
  %64 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %65 = bitcast %struct.pdf_text_enum_s* %64 to %struct.gs_text_enum_s*
  call void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %65, %struct.gs_text_enum_s* %pte1, i32 1) #6
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.44:                                        ; preds = %for.cond
  %66 = load i32, i32* %code, align 4, !tbaa !27
  %cmp45 = icmp slt i32 %66, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %67 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.48:                                        ; preds = %if.end.44
  %68 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %tobool49 = icmp ne i32 %68, 0
  br i1 %tobool49, label %if.then.50, label %if.else.84

if.then.50:                                       ; preds = %if.end.48
  %69 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %pte1, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %70 = load i32, i32* %depth, align 4, !tbaa !153
  %idxprom = sext i32 %70 to i64
  %fstack51 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %pte1, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack51, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font52 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %71 = load %struct.gs_font_s*, %struct.gs_font_s** %font52, align 8, !tbaa !154
  store %struct.gs_font_s* %71, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %72 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType53 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %72, i32 0, i32 11
  %73 = load i32, i32* %FontType53, align 4, !tbaa !118
  %cmp54 = icmp eq i32 %73, 3
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.then.50
  %74 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType57 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %75, i32 0, i32 11
  %76 = load i32, i32* %FontType57, align 4, !tbaa !118
  store i32 %76, i32* %FontType39, align 4, !tbaa !27
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %call58 = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %77, %struct.gs_font_s* %78, %struct.pdf_font_resource_s** %pdfont, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call58, i32* %code, align 4, !tbaa !27
  %79 = load i32, i32* %code, align 4, !tbaa !27
  %cmp59 = icmp slt i32 %79, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  %80 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.then.56
  %81 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %82 = load i64, i64* %glyph, align 8, !tbaa !68
  %call63 = call i64 @pdf_find_glyph(%struct.pdf_font_resource_s* %81, i64 %82) #6
  store i64 %call63, i64* %chr, align 8, !tbaa !68
  %83 = load i64, i64* %chr, align 8, !tbaa !68
  %conv64 = trunc i64 %83 to i8
  %arrayidx65 = getelementptr inbounds [1 x i8], [1 x i8]* %composite_type3_text, i32 0, i64 0
  store i8 %conv64, i8* %arrayidx65, align 1, !tbaa !115
  %84 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev66 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %84, i32 0, i32 1
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev66, align 8, !tbaa !26
  %86 = bitcast %struct.gx_device_s* %85 to %struct.gx_device_pdf_s*
  %87 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values67 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %87, i32 0, i32 0
  %pdfont68 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values67, i32 0, i32 1
  %88 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont68, align 8, !tbaa !156
  %89 = load i64, i64* %chr, align 8, !tbaa !68
  %conv69 = trunc i64 %89 to i32
  %90 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %91 = bitcast %struct.gs_font_s* %90 to %struct.gs_font_base_s*
  %call70 = call i32 @pdf_char_widths(%struct.gx_device_pdf_s* %86, %struct.pdf_font_resource_s* %88, i32 %conv69, %struct.gs_font_base_s* %91, %struct.pdf_glyph_widths_s* %cw) #6
  store i32 %call70, i32* %code, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.61
  %92 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.else:                                          ; preds = %if.then.50
  %93 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values71 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %94, i32 0, i32 0
  %pdfont72 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values71, i32 0, i32 1
  %95 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont72, align 8, !tbaa !156
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %95, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 0
  %96 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !157
  store %struct.pdf_font_resource_s* %96, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %97 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType73 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %97, i32 0, i32 8
  %98 = load i32, i32* %FontType73, align 4, !tbaa !129
  store i32 %98, i32* %FontType39, align 4, !tbaa !27
  %99 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %100 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %100, i32 0, i32 16
  %101 = load i32, i32* %WMode, align 4, !tbaa !159
  %102 = load i64, i64* %glyph, align 8, !tbaa !68
  %103 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %104 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %104, i32 0, i32 32
  %105 = load i32, i32* %cdevproc_callout, align 4, !tbaa !160
  %tobool74 = icmp ne i32 %105, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %if.else
  %106 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_result = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %106, i32 0, i32 33
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result, i32 0, i32 0
  br label %cond.end.77

cond.false.76:                                    ; preds = %if.else
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi double* [ %arraydecay, %cond.true.75 ], [ null, %cond.false.76 ]
  %call79 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %99, i32 %101, i64 %102, %struct.gs_font_s* %103, %struct.pdf_glyph_widths_s* %cw, double* %cond78) #6
  store i32 %call79, i32* %code, align 4, !tbaa !27
  %107 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.77, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %if.end.80, %cleanup
  %108 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %cleanup.dest.82 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.82, label %cleanup.624 [
    i32 0, label %cleanup.cont.83
  ]

cleanup.cont.83:                                  ; preds = %cleanup.81
  br label %if.end.174

if.else.84:                                       ; preds = %if.end.48
  %109 = bitcast i64** %gdata_i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %cmp85 = icmp ne i64* %110, null
  br i1 %cmp85, label %cond.true.87, label %cond.false.89

cond.true.87:                                     ; preds = %if.else.84
  %111 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %112 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index88 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %112, i32 0, i32 17
  %113 = load i32, i32* %index88, align 4, !tbaa !54
  %idx.ext = zext i32 %113 to i64
  %add.ptr = getelementptr inbounds i64, i64* %111, i64 %idx.ext
  br label %cond.end.90

cond.false.89:                                    ; preds = %if.else.84
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.87
  %cond91 = phi i64* [ %add.ptr, %cond.true.87 ], [ null, %cond.false.89 ]
  store i64* %cond91, i64** %gdata_i, align 8, !tbaa !1
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %115 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %116 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values92 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %116, i32 0, i32 0
  %pdfont93 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values92, i32 0, i32 1
  %117 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont93, align 8, !tbaa !156
  %118 = load i64, i64* %chr, align 8, !tbaa !68
  %119 = load i64*, i64** %gdata_i, align 8, !tbaa !1
  %call94 = call i32 @pdf_encode_string_element(%struct.gx_device_pdf_s* %114, %struct.gs_font_s* %115, %struct.pdf_font_resource_s* %117, i64 %118, i64* %119) #6
  store i32 %call94, i32* %code, align 4, !tbaa !27
  %120 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType95 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %120, i32 0, i32 11
  %121 = load i32, i32* %FontType95, align 4, !tbaa !118
  store i32 %121, i32* %FontType39, align 4, !tbaa !27
  %122 = load i32, i32* %code, align 4, !tbaa !27
  %cmp96 = icmp sge i32 %122, 0
  br i1 %cmp96, label %if.then.98, label %if.end.170

if.then.98:                                       ; preds = %cond.end.90
  %123 = load i64, i64* %chr, align 8, !tbaa !68
  %cmp99 = icmp eq i64 %123, -1
  br i1 %cmp99, label %land.lhs.true, label %if.else.108

land.lhs.true:                                    ; preds = %if.then.98
  %124 = load i64, i64* %glyph, align 8, !tbaa !68
  %cmp101 = icmp ne i64 %124, 2147483647
  br i1 %cmp101, label %if.then.103, label %if.else.108

if.then.103:                                      ; preds = %land.lhs.true
  %125 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values104 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %125, i32 0, i32 0
  %pdfont105 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values104, i32 0, i32 1
  %126 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont105, align 8, !tbaa !156
  %127 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode106 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %127, i32 0, i32 16
  %128 = load i32, i32* %WMode106, align 4, !tbaa !159
  %129 = load i64, i64* %glyph, align 8, !tbaa !68
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call107 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %126, i32 %128, i64 %129, %struct.gs_font_s* %130, %struct.pdf_glyph_widths_s* %cw, double* null) #6
  store i32 %call107, i32* %code, align 4, !tbaa !27
  store i32 0, i32* %use_cached_v, align 4, !tbaa !27
  br label %if.end.169

if.else.108:                                      ; preds = %land.lhs.true, %if.then.98
  %131 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev109 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %131, i32 0, i32 1
  %132 = load %struct.gx_device_s*, %struct.gx_device_s** %dev109, align 8, !tbaa !26
  %133 = bitcast %struct.gx_device_s* %132 to %struct.gx_device_pdf_s*
  %134 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values110 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %134, i32 0, i32 0
  %pdfont111 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values110, i32 0, i32 1
  %135 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont111, align 8, !tbaa !156
  %136 = load i64, i64* %chr, align 8, !tbaa !68
  %conv112 = trunc i64 %136 to i32
  %137 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %138 = bitcast %struct.gs_font_s* %137 to %struct.gs_font_base_s*
  %call113 = call i32 @pdf_char_widths(%struct.gx_device_pdf_s* %133, %struct.pdf_font_resource_s* %135, i32 %conv112, %struct.gs_font_base_s* %138, %struct.pdf_glyph_widths_s* %cw) #6
  store i32 %call113, i32* %code, align 4, !tbaa !27
  %139 = load i32, i32* %code, align 4, !tbaa !27
  %cmp114 = icmp eq i32 %139, 0
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.168

land.lhs.true.116:                                ; preds = %if.else.108
  %140 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType117 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %140, i32 0, i32 11
  %141 = load i32, i32* %FontType117, align 4, !tbaa !118
  %cmp118 = icmp eq i32 %141, 53
  br i1 %cmp118, label %if.then.120, label %if.end.168

if.then.120:                                      ; preds = %land.lhs.true.116
  %142 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack121 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %143, i32 0, i32 19
  %depth122 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack121, i32 0, i32 0
  %144 = load i32, i32* %depth122, align 4, !tbaa !161
  %cmp123 = icmp slt i32 %144, 0
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.then.120
  %145 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %145, i32 0, i32 12
  %146 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !5
  br label %cond.end.131

cond.false.126:                                   ; preds = %if.then.120
  %147 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack127 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %147, i32 0, i32 19
  %items128 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items128, i32 0, i64 0
  %font130 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx129, i32 0, i32 0
  %148 = load %struct.gs_font_s*, %struct.gs_font_s** %font130, align 8, !tbaa !154
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.126, %cond.true.125
  %cond132 = phi %struct.gs_font_s* [ %146, %cond.true.125 ], [ %148, %cond.false.126 ]
  store %struct.gs_font_s* %cond132, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %149 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  %150 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack133 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %150, i32 0, i32 19
  %depth134 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack133, i32 0, i32 0
  %151 = load i32, i32* %depth134, align 4, !tbaa !161
  %cmp135 = icmp slt i32 %151, 0
  br i1 %cmp135, label %cond.true.137, label %cond.false.139

cond.true.137:                                    ; preds = %cond.end.131
  %152 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font138 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %152, i32 0, i32 12
  %153 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font138, align 8, !tbaa !5
  br label %cond.end.147

cond.false.139:                                   ; preds = %cond.end.131
  %154 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack140 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %154, i32 0, i32 19
  %depth141 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack140, i32 0, i32 0
  %155 = load i32, i32* %depth141, align 4, !tbaa !161
  %idxprom142 = sext i32 %155 to i64
  %156 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack143 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %156, i32 0, i32 19
  %items144 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack143, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items144, i32 0, i64 %idxprom142
  %font146 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx145, i32 0, i32 0
  %157 = load %struct.gs_font_s*, %struct.gs_font_s** %font146, align 8, !tbaa !154
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.139, %cond.true.137
  %cond148 = phi %struct.gs_font_s* [ %153, %cond.true.137 ], [ %157, %cond.false.139 ]
  store %struct.gs_font_s* %cond148, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %158 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %159 = load %struct.gs_font_s*, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %WMode149 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %159, i32 0, i32 16
  %160 = load i32, i32* %WMode149, align 4, !tbaa !159
  store i32 %160, i32* %wmode, align 4, !tbaa !27
  %161 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  %162 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memset.p0i8.i64(i8* %162, i8 0, i64 8, i32 4, i1 false)
  %163 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  %164 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.memset.p0i8.i64(i8* %164, i8 0, i64 8, i32 4, i1 false)
  %165 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  %166 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %167 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %167, i32 0, i32 3
  %168 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %168, i32 0, i32 5
  %169 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call150 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %166, %struct.gs_matrix_s* %169, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, %struct.cached_fm_pair_s** %pair) #6
  store i32 %call150, i32* %code, align 4, !tbaa !27
  %170 = load i32, i32* %code, align 4, !tbaa !27
  %cmp151 = icmp slt i32 %170, 0
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %cond.end.147
  %171 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.154:                                       ; preds = %cond.end.147
  %172 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %173 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %174 = load i64, i64* %chr, align 8, !tbaa !68
  %175 = load i32, i32* %wmode, align 4, !tbaa !27
  %call155 = call %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s* %172, %struct.cached_fm_pair_s* %173, i64 %174, i32 %175, i32 1, %struct.gs_fixed_point_s* %subpix_origin) #6
  %cmp156 = icmp eq %struct.cached_char_s* %call155, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.154
  store i32 -21, i32* %code, align 4, !tbaa !27
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.154
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %if.end.159, %if.then.153
  %176 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.171 [
    i32 0, label %cleanup.cont.167
  ]

cleanup.cont.167:                                 ; preds = %cleanup.160
  br label %if.end.168

if.end.168:                                       ; preds = %cleanup.cont.167, %land.lhs.true.116, %if.else.108
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.103
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %cond.end.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.171

cleanup.171:                                      ; preds = %if.end.170, %cleanup.160
  %182 = bitcast i64** %gdata_i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %cleanup.dest.172 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.172, label %cleanup.624 [
    i32 0, label %cleanup.cont.173
  ]

cleanup.cont.173:                                 ; preds = %cleanup.171
  br label %if.end.174

if.end.174:                                       ; preds = %cleanup.cont.173, %cleanup.cont.83
  %183 = load i32, i32* %code, align 4, !tbaa !27
  %cmp175 = icmp slt i32 %183, 0
  br i1 %cmp175, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %if.end.174
  %184 = load i32, i32* %index37, align 4, !tbaa !27
  %cmp178 = icmp sgt i32 %184, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.177
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.181:                                       ; preds = %if.then.177
  %185 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.182:                                       ; preds = %if.end.174
  %186 = load i32, i32* %FontType39, align 4, !tbaa !27
  %cmp183 = icmp eq i32 %186, 11
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.end.182
  %187 = load i32, i32* %FontType39, align 4, !tbaa !27
  %cmp186 = icmp eq i32 %187, 42
  br i1 %cmp186, label %if.then.188, label %if.end.260

if.then.188:                                      ; preds = %lor.lhs.false.185, %if.end.182
  %Width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %w = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width, i32 0, i32 0
  %188 = load double, double* %w, align 8, !tbaa !162
  %add = fadd double %188, 5.000000e-01
  %call189 = call double @floor(double %add) #9
  %Width190 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %w191 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width190, i32 0, i32 0
  store double %call189, double* %w191, align 8, !tbaa !162
  %Width192 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width192, i32 0, i32 1
  %x193 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %189 = load double, double* %x193, align 8, !tbaa !165
  %add194 = fadd double %189, 5.000000e-01
  %call195 = call double @floor(double %add194) #9
  %Width196 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy197 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width196, i32 0, i32 1
  %x198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy197, i32 0, i32 0
  store double %call195, double* %x198, align 8, !tbaa !165
  %Width199 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy200 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width199, i32 0, i32 1
  %y201 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy200, i32 0, i32 1
  %190 = load double, double* %y201, align 8, !tbaa !166
  %add202 = fadd double %190, 5.000000e-01
  %call203 = call double @floor(double %add202) #9
  %Width204 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy205 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width204, i32 0, i32 1
  %y206 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy205, i32 0, i32 1
  store double %call203, double* %y206, align 8, !tbaa !166
  %Width207 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v208 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width207, i32 0, i32 2
  %x209 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v208, i32 0, i32 0
  %191 = load double, double* %x209, align 8, !tbaa !167
  %add210 = fadd double %191, 5.000000e-01
  %call211 = call double @floor(double %add210) #9
  %Width212 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v213 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width212, i32 0, i32 2
  %x214 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v213, i32 0, i32 0
  store double %call211, double* %x214, align 8, !tbaa !167
  %Width215 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v216 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width215, i32 0, i32 2
  %y217 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v216, i32 0, i32 1
  %192 = load double, double* %y217, align 8, !tbaa !168
  %add218 = fadd double %192, 5.000000e-01
  %call219 = call double @floor(double %add218) #9
  %Width220 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v221 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width220, i32 0, i32 2
  %y222 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v221, i32 0, i32 1
  store double %call219, double* %y222, align 8, !tbaa !168
  %real_width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %w223 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width, i32 0, i32 0
  %193 = load double, double* %w223, align 8, !tbaa !169
  %add224 = fadd double %193, 5.000000e-01
  %call225 = call double @floor(double %add224) #9
  %real_width226 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %w227 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width226, i32 0, i32 0
  store double %call225, double* %w227, align 8, !tbaa !169
  %real_width228 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy229 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width228, i32 0, i32 1
  %x230 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy229, i32 0, i32 0
  %194 = load double, double* %x230, align 8, !tbaa !170
  %add231 = fadd double %194, 5.000000e-01
  %call232 = call double @floor(double %add231) #9
  %real_width233 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy234 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width233, i32 0, i32 1
  %x235 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy234, i32 0, i32 0
  store double %call232, double* %x235, align 8, !tbaa !170
  %real_width236 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy237 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width236, i32 0, i32 1
  %y238 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy237, i32 0, i32 1
  %195 = load double, double* %y238, align 8, !tbaa !171
  %add239 = fadd double %195, 5.000000e-01
  %call240 = call double @floor(double %add239) #9
  %real_width241 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy242 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width241, i32 0, i32 1
  %y243 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy242, i32 0, i32 1
  store double %call240, double* %y243, align 8, !tbaa !171
  %real_width244 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v245 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width244, i32 0, i32 2
  %x246 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v245, i32 0, i32 0
  %196 = load double, double* %x246, align 8, !tbaa !172
  %add247 = fadd double %196, 5.000000e-01
  %call248 = call double @floor(double %add247) #9
  %real_width249 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v250 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width249, i32 0, i32 2
  %x251 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v250, i32 0, i32 0
  store double %call248, double* %x251, align 8, !tbaa !172
  %real_width252 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v253 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width252, i32 0, i32 2
  %y254 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v253, i32 0, i32 1
  %197 = load double, double* %y254, align 8, !tbaa !173
  %add255 = fadd double %197, 5.000000e-01
  %call256 = call double @floor(double %add255) #9
  %real_width257 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v258 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width257, i32 0, i32 2
  %y259 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v258, i32 0, i32 1
  store double %call256, double* %y259, align 8, !tbaa !173
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.188, %lor.lhs.false.185
  %198 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %199 = bitcast %struct.pdf_text_enum_s* %198 to %struct.gs_text_enum_s*
  call void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %199, %struct.gs_text_enum_s* %pte1, i32 1) #6
  %200 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %tobool261 = icmp ne i32 %200, 0
  br i1 %tobool261, label %if.then.264, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.end.260
  %201 = load i32, i32* %use_cached_v, align 4, !tbaa !27
  %tobool263 = icmp ne i32 %201, 0
  br i1 %tobool263, label %if.else.283, label %if.then.264

if.then.264:                                      ; preds = %lor.lhs.false.262, %if.end.260
  %replaced_v = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 2
  %202 = load i32, i32* %replaced_v, align 4, !tbaa !174
  %tobool265 = icmp ne i32 %202, 0
  br i1 %tobool265, label %if.then.266, label %if.end.282

if.then.266:                                      ; preds = %if.then.264
  %real_width267 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v268 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width267, i32 0, i32 2
  %x269 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v268, i32 0, i32 0
  %203 = load double, double* %x269, align 8, !tbaa !172
  %Width270 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v271 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width270, i32 0, i32 2
  %x272 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v271, i32 0, i32 0
  %204 = load double, double* %x272, align 8, !tbaa !167
  %sub = fsub double %203, %204
  %x273 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %sub, double* %x273, align 8, !tbaa !65
  %real_width274 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %v275 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width274, i32 0, i32 2
  %y276 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v275, i32 0, i32 1
  %205 = load double, double* %y276, align 8, !tbaa !173
  %Width277 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %v278 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width277, i32 0, i32 2
  %y279 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v278, i32 0, i32 1
  %206 = load double, double* %y279, align 8, !tbaa !168
  %sub280 = fsub double %205, %206
  %y281 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  store double %sub280, double* %y281, align 8, !tbaa !66
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.266, %if.then.264
  br label %if.end.289

if.else.283:                                      ; preds = %lor.lhs.false.262
  %207 = load i64, i64* %chr, align 8, !tbaa !68
  %208 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values284 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %208, i32 0, i32 0
  %pdfont285 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values284, i32 0, i32 1
  %209 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont285, align 8, !tbaa !156
  %u286 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %209, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u286 to %struct.anon.3*
  %v287 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 5
  %210 = load %struct.gs_point_s*, %struct.gs_point_s** %v287, align 8, !tbaa !175
  %arrayidx288 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %210, i64 %207
  %211 = bitcast %struct.gs_point_s* %v to i8*
  %212 = bitcast %struct.gs_point_s* %arrayidx288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 16, i32 8, i1 false), !tbaa.struct !110
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.283, %if.end.282
  %213 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode290 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %213, i32 0, i32 16
  %214 = load i32, i32* %WMode290, align 4, !tbaa !159
  %tobool291 = icmp ne i32 %214, 0
  br i1 %tobool291, label %land.lhs.true.292, label %if.else.301

land.lhs.true.292:                                ; preds = %if.end.289
  %ignore_wmode = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 3
  %215 = load i32, i32* %ignore_wmode, align 4, !tbaa !176
  %tobool293 = icmp ne i32 %215, 0
  br i1 %tobool293, label %if.else.301, label %if.then.294

if.then.294:                                      ; preds = %land.lhs.true.292
  %x295 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %216 = load double, double* %x295, align 8, !tbaa !65
  %sub296 = fsub double -0.000000e+00, %216
  %x297 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double %sub296, double* %x297, align 8, !tbaa !65
  %y298 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  %217 = load double, double* %y298, align 8, !tbaa !66
  %sub299 = fsub double -0.000000e+00, %217
  %y300 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  store double %sub299, double* %y300, align 8, !tbaa !66
  br label %if.end.302

if.else.301:                                      ; preds = %land.lhs.true.292, %if.end.289
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.301, %if.then.294
  %x303 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %218 = load double, double* %x303, align 8, !tbaa !65
  %cmp304 = fcmp une double %218, 0.000000e+00
  br i1 %cmp304, label %if.then.310, label %lor.lhs.false.306

lor.lhs.false.306:                                ; preds = %if.end.302
  %y307 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  %219 = load double, double* %y307, align 8, !tbaa !66
  %cmp308 = fcmp une double %219, 0.000000e+00
  br i1 %cmp308, label %if.then.310, label %if.end.384

if.then.310:                                      ; preds = %lor.lhs.false.306, %if.end.302
  %220 = bitcast %struct.gs_point_s* %glyph_origin_shift to i8*
  call void @llvm.lifetime.start(i64 16, i8* %220) #1
  %221 = bitcast double* %scale0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  %222 = load i32, i32* %FontType39, align 4, !tbaa !27
  %cmp311 = icmp eq i32 %222, 42
  br i1 %cmp311, label %if.then.316, label %lor.lhs.false.313

lor.lhs.false.313:                                ; preds = %if.then.310
  %223 = load i32, i32* %FontType39, align 4, !tbaa !27
  %cmp314 = icmp eq i32 %223, 11
  br i1 %cmp314, label %if.then.316, label %if.else.317

if.then.316:                                      ; preds = %lor.lhs.false.313, %if.then.310
  store double 0x3F50624DE0000000, double* %scale0, align 8, !tbaa !71
  br label %if.end.318

if.else.317:                                      ; preds = %lor.lhs.false.313
  store double 1.000000e+00, double* %scale0, align 8, !tbaa !71
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.317, %if.then.316
  %x319 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %224 = load double, double* %x319, align 8, !tbaa !65
  %225 = load double, double* %scale0, align 8, !tbaa !71
  %mul = fmul double %224, %225
  %x320 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  store double %mul, double* %x320, align 8, !tbaa !65
  %y321 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 1
  %226 = load double, double* %y321, align 8, !tbaa !66
  %227 = load double, double* %scale0, align 8, !tbaa !71
  %mul322 = fmul double %226, %227
  %y323 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  store double %mul322, double* %y323, align 8, !tbaa !66
  %228 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %tobool324 = icmp ne i32 %228, 0
  br i1 %tobool324, label %if.then.325, label %if.end.337

if.then.325:                                      ; preds = %if.end.318
  %229 = bitcast %struct.gs_font_s** %subfont326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  %230 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack327 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %230, i32 0, i32 19
  %depth328 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack327, i32 0, i32 0
  %231 = load i32, i32* %depth328, align 4, !tbaa !161
  %idxprom329 = sext i32 %231 to i64
  %232 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack330 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %232, i32 0, i32 19
  %items331 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack330, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items331, i32 0, i64 %idxprom329
  %font333 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx332, i32 0, i32 0
  %233 = load %struct.gs_font_s*, %struct.gs_font_s** %font333, align 8, !tbaa !154
  store %struct.gs_font_s* %233, %struct.gs_font_s** %subfont326, align 8, !tbaa !1
  %x334 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  %234 = load double, double* %x334, align 8, !tbaa !65
  %y335 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  %235 = load double, double* %y335, align 8, !tbaa !66
  %236 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont326, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %236, i32 0, i32 9
  %call336 = call i32 @gs_distance_transform(double %234, double %235, %struct.gs_matrix_s* %FontMatrix, %struct.gs_point_s* %glyph_origin_shift) #6
  %237 = bitcast %struct.gs_font_s** %subfont326 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.325, %if.end.318
  %x338 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  %238 = load double, double* %x338, align 8, !tbaa !65
  %y339 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  %239 = load double, double* %y339, align 8, !tbaa !66
  %240 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontMatrix340 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %240, i32 0, i32 9
  %call341 = call i32 @gs_distance_transform(double %238, double %239, %struct.gs_matrix_s* %FontMatrix340, %struct.gs_point_s* %glyph_origin_shift) #6
  %x342 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  %241 = load double, double* %x342, align 8, !tbaa !65
  %y343 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  %242 = load double, double* %y343, align 8, !tbaa !66
  %243 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis344 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %243, i32 0, i32 3
  %244 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis344, align 8, !tbaa !31
  %ctm345 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %244, i32 0, i32 5
  %245 = bitcast %struct.gs_matrix_fixed_s* %ctm345 to %struct.gs_matrix_s*
  %call346 = call i32 @gs_distance_transform(double %241, double %242, %struct.gs_matrix_s* %245, %struct.gs_point_s* %glyph_origin_shift) #6
  %x347 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  %246 = load double, double* %x347, align 8, !tbaa !65
  %cmp348 = fcmp une double %246, 0.000000e+00
  br i1 %cmp348, label %if.then.354, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %if.end.337
  %y351 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  %247 = load double, double* %y351, align 8, !tbaa !66
  %cmp352 = fcmp une double %247, 0.000000e+00
  br i1 %cmp352, label %if.then.354, label %if.end.379

if.then.354:                                      ; preds = %lor.lhs.false.350, %if.end.337
  %x355 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %248 = load double, double* %x355, align 8, !tbaa !65
  %x356 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %249 = load double, double* %x356, align 8, !tbaa !65
  %add357 = fadd double %248, %249
  %x358 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 0
  %250 = load double, double* %x358, align 8, !tbaa !65
  %add359 = fadd double %add357, %250
  %conv360 = fptrunc double %add359 to float
  %251 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values361 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %251, i32 0, i32 0
  %matrix362 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values361, i32 0, i32 3
  %tx363 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix362, i32 0, i32 4
  store float %conv360, float* %tx363, align 4, !tbaa !145
  %y364 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 1
  %252 = load double, double* %y364, align 8, !tbaa !66
  %y365 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %253 = load double, double* %y365, align 8, !tbaa !66
  %add366 = fadd double %252, %253
  %y367 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %glyph_origin_shift, i32 0, i32 1
  %254 = load double, double* %y367, align 8, !tbaa !66
  %add368 = fadd double %add366, %254
  %conv369 = fptrunc double %add368 to float
  %255 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values370 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %255, i32 0, i32 0
  %matrix371 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values370, i32 0, i32 3
  %ty372 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix371, i32 0, i32 5
  store float %conv369, float* %ty372, align 4, !tbaa !148
  %256 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %257 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values373 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %257, i32 0, i32 0
  %call374 = call i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s* %256, %struct.pdf_text_state_values_s* %values373) #6
  store i32 %call374, i32* %code, align 4, !tbaa !27
  %258 = load i32, i32* %code, align 4, !tbaa !27
  %cmp375 = icmp slt i32 %258, 0
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.then.354
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.378:                                       ; preds = %if.then.354
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %lor.lhs.false.350
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.379, %if.then.377
  %259 = bitcast double* %scale0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast %struct.gs_point_s* %glyph_origin_shift to i8*
  call void @llvm.lifetime.end(i64 16, i8* %260) #1
  %cleanup.dest.382 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.382, label %cleanup.624 [
    i32 0, label %cleanup.cont.383
  ]

cleanup.cont.383:                                 ; preds = %cleanup.380
  br label %if.end.384

if.end.384:                                       ; preds = %cleanup.cont.383, %lor.lhs.false.306
  %261 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont3, align 8, !tbaa !1
  call void @pdf_char_widths_to_uts(%struct.pdf_font_resource_s* %261, %struct.pdf_glyph_widths_s* %cw) #6
  %262 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text385 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %262, i32 0, i32 0
  %operation386 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text385, i32 0, i32 0
  %263 = load i32, i32* %operation386, align 4, !tbaa !72
  %and387 = and i32 %263, 263168
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %if.then.389, label %if.else.502

if.then.389:                                      ; preds = %if.end.384
  %Width390 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy391 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width390, i32 0, i32 1
  %x392 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy391, i32 0, i32 0
  %264 = load double, double* %x392, align 8, !tbaa !165
  %265 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values393 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %265, i32 0, i32 0
  %size394 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values393, i32 0, i32 2
  %266 = load double, double* %size394, align 8, !tbaa !177
  %mul395 = fmul double %264, %266
  %Width396 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy397 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width396, i32 0, i32 1
  %y398 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy397, i32 0, i32 1
  %267 = load double, double* %y398, align 8, !tbaa !166
  %268 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values399 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %268, i32 0, i32 0
  %size400 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values399, i32 0, i32 2
  %269 = load double, double* %size400, align 8, !tbaa !177
  %mul401 = fmul double %267, %269
  %270 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values402 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %270, i32 0, i32 0
  %matrix403 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values402, i32 0, i32 3
  %call404 = call i32 @gs_distance_transform(double %mul395, double %mul401, %struct.gs_matrix_s* %matrix403, %struct.gs_point_s* %did) #6
  %271 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode405 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %271, i32 0, i32 16
  %272 = load i32, i32* %WMode405, align 4, !tbaa !159
  %tobool406 = icmp ne i32 %272, 0
  br i1 %tobool406, label %land.lhs.true.407, label %cond.false.411

land.lhs.true.407:                                ; preds = %if.then.389
  %ignore_wmode408 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 3
  %273 = load i32, i32* %ignore_wmode408, align 4, !tbaa !176
  %tobool409 = icmp ne i32 %273, 0
  br i1 %tobool409, label %cond.false.411, label %cond.true.410

cond.true.410:                                    ; preds = %land.lhs.true.407
  br label %cond.end.413

cond.false.411:                                   ; preds = %land.lhs.true.407, %if.then.389
  %274 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values412 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %274, i32 0, i32 0
  %character_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values412, i32 0, i32 0
  %275 = load float, float* %character_spacing, align 4, !tbaa !178
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.411, %cond.true.410
  %cond414 = phi float [ 0.000000e+00, %cond.true.410 ], [ %275, %cond.false.411 ]
  %conv415 = fpext float %cond414 to double
  %276 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode416 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %276, i32 0, i32 16
  %277 = load i32, i32* %WMode416, align 4, !tbaa !159
  %tobool417 = icmp ne i32 %277, 0
  br i1 %tobool417, label %land.lhs.true.418, label %cond.false.424

land.lhs.true.418:                                ; preds = %cond.end.413
  %ignore_wmode419 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 3
  %278 = load i32, i32* %ignore_wmode419, align 4, !tbaa !176
  %tobool420 = icmp ne i32 %278, 0
  br i1 %tobool420, label %cond.false.424, label %cond.true.421

cond.true.421:                                    ; preds = %land.lhs.true.418
  %279 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values422 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %279, i32 0, i32 0
  %character_spacing423 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values422, i32 0, i32 0
  %280 = load float, float* %character_spacing423, align 4, !tbaa !178
  br label %cond.end.425

cond.false.424:                                   ; preds = %land.lhs.true.418, %cond.end.413
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.424, %cond.true.421
  %cond426 = phi float [ %280, %cond.true.421 ], [ 0.000000e+00, %cond.false.424 ]
  %conv427 = fpext float %cond426 to double
  %281 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values428 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %281, i32 0, i32 0
  %matrix429 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values428, i32 0, i32 3
  %call430 = call i32 @gs_distance_transform(double %conv415, double %conv427, %struct.gs_matrix_s* %matrix429, %struct.gs_point_s* %tpt) #6
  %x431 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %282 = load double, double* %x431, align 8, !tbaa !65
  %x432 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  %283 = load double, double* %x432, align 8, !tbaa !65
  %add433 = fadd double %283, %282
  store double %add433, double* %x432, align 8, !tbaa !65
  %y434 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %284 = load double, double* %y434, align 8, !tbaa !66
  %y435 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  %285 = load double, double* %y435, align 8, !tbaa !66
  %add436 = fadd double %285, %284
  store double %add436, double* %y435, align 8, !tbaa !66
  %286 = load i64, i64* %chr, align 8, !tbaa !68
  %287 = load i32, i32* %space_char, align 4, !tbaa !27
  %conv437 = sext i32 %287 to i64
  %cmp438 = icmp eq i64 %286, %conv437
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.478

land.lhs.true.440:                                ; preds = %cond.end.425
  %288 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %single_byte_space = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %288, i32 0, i32 21
  %289 = load i32, i32* %single_byte_space, align 4, !tbaa !179
  %tobool441 = icmp ne i32 %289, 0
  br i1 %tobool441, label %lor.lhs.false.442, label %if.then.445

lor.lhs.false.442:                                ; preds = %land.lhs.true.440
  %290 = load i32, i32* %decoded_bytes.addr, align 4, !tbaa !27
  %cmp443 = icmp eq i32 %290, 1
  br i1 %cmp443, label %if.then.445, label %if.end.478

if.then.445:                                      ; preds = %lor.lhs.false.442, %land.lhs.true.440
  %291 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode446 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %291, i32 0, i32 16
  %292 = load i32, i32* %WMode446, align 4, !tbaa !159
  %tobool447 = icmp ne i32 %292, 0
  br i1 %tobool447, label %land.lhs.true.448, label %cond.false.452

land.lhs.true.448:                                ; preds = %if.then.445
  %ignore_wmode449 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 3
  %293 = load i32, i32* %ignore_wmode449, align 4, !tbaa !176
  %tobool450 = icmp ne i32 %293, 0
  br i1 %tobool450, label %cond.false.452, label %cond.true.451

cond.true.451:                                    ; preds = %land.lhs.true.448
  br label %cond.end.454

cond.false.452:                                   ; preds = %land.lhs.true.448, %if.then.445
  %294 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values453 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %294, i32 0, i32 0
  %word_spacing = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values453, i32 0, i32 5
  %295 = load float, float* %word_spacing, align 4, !tbaa !180
  br label %cond.end.454

cond.end.454:                                     ; preds = %cond.false.452, %cond.true.451
  %cond455 = phi float [ 0.000000e+00, %cond.true.451 ], [ %295, %cond.false.452 ]
  %conv456 = fpext float %cond455 to double
  %296 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode457 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %296, i32 0, i32 16
  %297 = load i32, i32* %WMode457, align 4, !tbaa !159
  %tobool458 = icmp ne i32 %297, 0
  br i1 %tobool458, label %land.lhs.true.459, label %cond.false.465

land.lhs.true.459:                                ; preds = %cond.end.454
  %ignore_wmode460 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 3
  %298 = load i32, i32* %ignore_wmode460, align 4, !tbaa !176
  %tobool461 = icmp ne i32 %298, 0
  br i1 %tobool461, label %cond.false.465, label %cond.true.462

cond.true.462:                                    ; preds = %land.lhs.true.459
  %299 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values463 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %299, i32 0, i32 0
  %word_spacing464 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values463, i32 0, i32 5
  %300 = load float, float* %word_spacing464, align 4, !tbaa !180
  br label %cond.end.466

cond.false.465:                                   ; preds = %land.lhs.true.459, %cond.end.454
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.465, %cond.true.462
  %cond467 = phi float [ %300, %cond.true.462 ], [ 0.000000e+00, %cond.false.465 ]
  %conv468 = fpext float %cond467 to double
  %301 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values469 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %301, i32 0, i32 0
  %matrix470 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values469, i32 0, i32 3
  %call471 = call i32 @gs_distance_transform(double %conv456, double %conv468, %struct.gs_matrix_s* %matrix470, %struct.gs_point_s* %tpt) #6
  %x472 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %302 = load double, double* %x472, align 8, !tbaa !65
  %x473 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  %303 = load double, double* %x473, align 8, !tbaa !65
  %add474 = fadd double %303, %302
  store double %add474, double* %x473, align 8, !tbaa !65
  %y475 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %304 = load double, double* %y475, align 8, !tbaa !66
  %y476 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  %305 = load double, double* %y476, align 8, !tbaa !66
  %add477 = fadd double %305, %304
  store double %add477, double* %y476, align 8, !tbaa !66
  br label %if.end.478

if.end.478:                                       ; preds = %cond.end.466, %lor.lhs.false.442, %cond.end.425
  %306 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %tobool479 = icmp ne i32 %306, 0
  br i1 %tobool479, label %land.lhs.true.480, label %if.else.488

land.lhs.true.480:                                ; preds = %if.end.478
  %307 = load i32, i32* %FontType39, align 4, !tbaa !27
  %cmp481 = icmp eq i32 %307, 3
  br i1 %cmp481, label %if.then.483, label %if.else.488

if.then.483:                                      ; preds = %land.lhs.true.480
  %308 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %arraydecay484 = getelementptr inbounds [1 x i8], [1 x i8]* %composite_type3_text, i32 0, i32 0
  %x485 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  %309 = load double, double* %x485, align 8, !tbaa !65
  %y486 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  %310 = load double, double* %y486, align 8, !tbaa !66
  %311 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %call487 = call i32 @pdf_append_chars(%struct.gx_device_pdf_s* %308, i8* %arraydecay484, i32 1, double %309, double %310, i32 %311) #6
  store i32 %call487, i32* %code, align 4, !tbaa !27
  br label %if.end.497

if.else.488:                                      ; preds = %land.lhs.true.480, %if.end.478
  %312 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %313 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data489 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %313, i32 0, i32 0
  %314 = load i8*, i8** %data489, align 8, !tbaa !114
  %315 = load i32, i32* %index37, align 4, !tbaa !27
  %idx.ext490 = sext i32 %315 to i64
  %add.ptr491 = getelementptr inbounds i8, i8* %314, i64 %idx.ext490
  %316 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index492 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %316, i32 0, i32 17
  %317 = load i32, i32* %index492, align 4, !tbaa !54
  %318 = load i32, i32* %index37, align 4, !tbaa !27
  %sub493 = sub i32 %317, %318
  %x494 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  %319 = load double, double* %x494, align 8, !tbaa !65
  %y495 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  %320 = load double, double* %y495, align 8, !tbaa !66
  %321 = load i32, i32* %composite.addr, align 4, !tbaa !27
  %call496 = call i32 @pdf_append_chars(%struct.gx_device_pdf_s* %312, i8* %add.ptr491, i32 %sub493, double %319, double %320, i32 %321) #6
  store i32 %call496, i32* %code, align 4, !tbaa !27
  br label %if.end.497

if.end.497:                                       ; preds = %if.else.488, %if.then.483
  %322 = load i32, i32* %code, align 4, !tbaa !27
  %cmp498 = icmp slt i32 %322, 0
  br i1 %cmp498, label %if.then.500, label %if.end.501

if.then.500:                                      ; preds = %if.end.497
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.501:                                       ; preds = %if.end.497
  br label %if.end.505

if.else.502:                                      ; preds = %if.end.384
  %y503 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  store double 0.000000e+00, double* %y503, align 8, !tbaa !66
  %x504 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  store double 0.000000e+00, double* %x504, align 8, !tbaa !65
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.502, %if.end.501
  %323 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text506 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %323, i32 0, i32 0
  %operation507 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text506, i32 0, i32 0
  %324 = load i32, i32* %operation507, align 4, !tbaa !72
  %and508 = and i32 %324, 256
  %tobool509 = icmp ne i32 %and508, 0
  br i1 %tobool509, label %if.then.510, label %if.else.525

if.then.510:                                      ; preds = %if.end.505
  %325 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %325) #1
  %326 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text511 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %326, i32 0, i32 0
  %327 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %327, i32 0, i32 18
  %328 = load i32, i32* %xy_index, align 4, !tbaa !69
  %inc = add i32 %328, 1
  store i32 %inc, i32* %xy_index, align 4, !tbaa !69
  %call512 = call i32 @gs_text_replaced_width(%struct.gs_text_params_s* %text511, i32 %328, %struct.gs_point_s* %dpt) #6
  store i32 %call512, i32* %code, align 4, !tbaa !27
  %329 = load i32, i32* %code, align 4, !tbaa !27
  %cmp513 = icmp slt i32 %329, 0
  br i1 %cmp513, label %if.then.515, label %if.end.516

if.then.515:                                      ; preds = %if.then.510
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.522

if.end.516:                                       ; preds = %if.then.510
  %x517 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %330 = load double, double* %x517, align 8, !tbaa !65
  %y518 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %331 = load double, double* %y518, align 8, !tbaa !66
  %332 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis519 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %332, i32 0, i32 3
  %333 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis519, align 8, !tbaa !31
  %ctm520 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %333, i32 0, i32 5
  %334 = bitcast %struct.gs_matrix_fixed_s* %ctm520 to %struct.gs_matrix_s*
  %call521 = call i32 @gs_distance_transform(double %330, double %331, %struct.gs_matrix_s* %334, %struct.gs_point_s* %wanted) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.522

cleanup.522:                                      ; preds = %if.end.516, %if.then.515
  %335 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %335) #1
  %cleanup.dest.523 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.523, label %cleanup.624 [
    i32 0, label %cleanup.cont.524
  ]

cleanup.cont.524:                                 ; preds = %cleanup.522
  br label %if.end.586

if.else.525:                                      ; preds = %if.end.505
  %real_width526 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy527 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width526, i32 0, i32 1
  %x528 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy527, i32 0, i32 0
  %336 = load double, double* %x528, align 8, !tbaa !170
  %337 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values529 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %337, i32 0, i32 0
  %size530 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values529, i32 0, i32 2
  %338 = load double, double* %size530, align 8, !tbaa !177
  %mul531 = fmul double %336, %338
  %real_width532 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy533 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width532, i32 0, i32 1
  %y534 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy533, i32 0, i32 1
  %339 = load double, double* %y534, align 8, !tbaa !171
  %340 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values535 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %340, i32 0, i32 0
  %size536 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values535, i32 0, i32 2
  %341 = load double, double* %size536, align 8, !tbaa !177
  %mul537 = fmul double %339, %341
  %342 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values538 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %342, i32 0, i32 0
  %matrix539 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values538, i32 0, i32 3
  %call540 = call i32 @gs_distance_transform(double %mul531, double %mul537, %struct.gs_matrix_s* %matrix539, %struct.gs_point_s* %wanted) #6
  %343 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text541 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %343, i32 0, i32 0
  %operation542 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text541, i32 0, i32 0
  %344 = load i32, i32* %operation542, align 4, !tbaa !72
  %and543 = and i32 %344, 64
  %tobool544 = icmp ne i32 %and543, 0
  br i1 %tobool544, label %if.then.545, label %if.end.560

if.then.545:                                      ; preds = %if.else.525
  %345 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text546 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %345, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text546, i32 0, i32 3
  %x547 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %346 = load double, double* %x547, align 8, !tbaa !181
  %347 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text548 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %347, i32 0, i32 0
  %delta_all549 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text548, i32 0, i32 3
  %y550 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all549, i32 0, i32 1
  %348 = load double, double* %y550, align 8, !tbaa !182
  %349 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis551 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %349, i32 0, i32 3
  %350 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis551, align 8, !tbaa !31
  %ctm552 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %350, i32 0, i32 5
  %351 = bitcast %struct.gs_matrix_fixed_s* %ctm552 to %struct.gs_matrix_s*
  %call553 = call i32 @gs_distance_transform(double %346, double %348, %struct.gs_matrix_s* %351, %struct.gs_point_s* %tpt) #6
  %x554 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %352 = load double, double* %x554, align 8, !tbaa !65
  %x555 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %353 = load double, double* %x555, align 8, !tbaa !65
  %add556 = fadd double %353, %352
  store double %add556, double* %x555, align 8, !tbaa !65
  %y557 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %354 = load double, double* %y557, align 8, !tbaa !66
  %y558 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %355 = load double, double* %y558, align 8, !tbaa !66
  %add559 = fadd double %355, %354
  store double %add559, double* %y558, align 8, !tbaa !66
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.545, %if.else.525
  %356 = load i64, i64* %chr, align 8, !tbaa !68
  %357 = load i32, i32* %space_char, align 4, !tbaa !27
  %conv561 = sext i32 %357 to i64
  %cmp562 = icmp eq i64 %356, %conv561
  br i1 %cmp562, label %land.lhs.true.564, label %if.end.585

land.lhs.true.564:                                ; preds = %if.end.560
  %358 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %single_byte_space565 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %358, i32 0, i32 21
  %359 = load i32, i32* %single_byte_space565, align 4, !tbaa !179
  %tobool566 = icmp ne i32 %359, 0
  br i1 %tobool566, label %lor.lhs.false.567, label %if.then.570

lor.lhs.false.567:                                ; preds = %land.lhs.true.564
  %360 = load i32, i32* %decoded_bytes.addr, align 4, !tbaa !27
  %cmp568 = icmp eq i32 %360, 1
  br i1 %cmp568, label %if.then.570, label %if.end.585

if.then.570:                                      ; preds = %lor.lhs.false.567, %land.lhs.true.564
  %361 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text571 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %361, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text571, i32 0, i32 4
  %x572 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %362 = load double, double* %x572, align 8, !tbaa !183
  %363 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text573 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %363, i32 0, i32 0
  %delta_space574 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text573, i32 0, i32 4
  %y575 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space574, i32 0, i32 1
  %364 = load double, double* %y575, align 8, !tbaa !184
  %365 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis576 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %365, i32 0, i32 3
  %366 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis576, align 8, !tbaa !31
  %ctm577 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %366, i32 0, i32 5
  %367 = bitcast %struct.gs_matrix_fixed_s* %ctm577 to %struct.gs_matrix_s*
  %call578 = call i32 @gs_distance_transform(double %362, double %364, %struct.gs_matrix_s* %367, %struct.gs_point_s* %tpt) #6
  %x579 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %368 = load double, double* %x579, align 8, !tbaa !65
  %x580 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %369 = load double, double* %x580, align 8, !tbaa !65
  %add581 = fadd double %369, %368
  store double %add581, double* %x580, align 8, !tbaa !65
  %y582 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %370 = load double, double* %y582, align 8, !tbaa !66
  %y583 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %371 = load double, double* %y583, align 8, !tbaa !66
  %add584 = fadd double %371, %370
  store double %add584, double* %y583, align 8, !tbaa !66
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.570, %lor.lhs.false.567, %if.end.560
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %cleanup.cont.524
  %x587 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %372 = load double, double* %x587, align 8, !tbaa !65
  %x588 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %373 = load double, double* %x588, align 8, !tbaa !65
  %add589 = fadd double %373, %372
  store double %add589, double* %x588, align 8, !tbaa !65
  %y590 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %374 = load double, double* %y590, align 8, !tbaa !66
  %y591 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %375 = load double, double* %y591, align 8, !tbaa !66
  %add592 = fadd double %375, %374
  store double %add592, double* %y591, align 8, !tbaa !66
  %x593 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %376 = load double, double* %x593, align 8, !tbaa !65
  %x594 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 0
  %377 = load double, double* %x594, align 8, !tbaa !65
  %cmp595 = fcmp une double %376, %377
  br i1 %cmp595, label %if.then.602, label %lor.lhs.false.597

lor.lhs.false.597:                                ; preds = %if.end.586
  %y598 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %378 = load double, double* %y598, align 8, !tbaa !66
  %y599 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %did, i32 0, i32 1
  %379 = load double, double* %y599, align 8, !tbaa !66
  %cmp600 = fcmp une double %378, %379
  br i1 %cmp600, label %if.then.602, label %if.end.623

if.then.602:                                      ; preds = %lor.lhs.false.597, %if.end.586
  %x603 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 0
  %380 = load double, double* %x603, align 8, !tbaa !65
  %x604 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %381 = load double, double* %x604, align 8, !tbaa !65
  %add605 = fadd double %380, %381
  %conv606 = fptrunc double %add605 to float
  %382 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values607 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %382, i32 0, i32 0
  %matrix608 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values607, i32 0, i32 3
  %tx609 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix608, i32 0, i32 4
  store float %conv606, float* %tx609, align 4, !tbaa !145
  %y610 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start, i32 0, i32 1
  %383 = load double, double* %y610, align 8, !tbaa !66
  %y611 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %384 = load double, double* %y611, align 8, !tbaa !66
  %add612 = fadd double %383, %384
  %conv613 = fptrunc double %add612 to float
  %385 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values614 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %385, i32 0, i32 0
  %matrix615 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values614, i32 0, i32 3
  %ty616 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix615, i32 0, i32 5
  store float %conv613, float* %ty616, align 4, !tbaa !148
  %386 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %387 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values617 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %387, i32 0, i32 0
  %call618 = call i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s* %386, %struct.pdf_text_state_values_s* %values617) #6
  store i32 %call618, i32* %code, align 4, !tbaa !27
  %388 = load i32, i32* %code, align 4, !tbaa !27
  %cmp619 = icmp slt i32 %388, 0
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.then.602
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.624

if.end.622:                                       ; preds = %if.then.602
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %lor.lhs.false.597
  %389 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %389, i32 0, i32 214
  store i32 0, i32* %charproc_just_accumulated, align 4, !tbaa !185
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.624

cleanup.624:                                      ; preds = %if.end.623, %if.then.621, %cleanup.522, %if.then.500, %cleanup.380, %if.end.181, %if.then.180, %cleanup.171, %cleanup.81, %if.then.47, %if.then.43
  %390 = bitcast [1 x i8]* %composite_type3_text to i8*
  call void @llvm.lifetime.end(i64 1, i8* %390) #1
  %391 = bitcast i32* %use_cached_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32* %FontType39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast %struct.gs_text_enum_s* %pte1 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %393) #1
  %394 = bitcast i32* %index37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %396 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %396) #1
  %397 = bitcast %struct.gs_point_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %397) #1
  %398 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %398) #1
  %399 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.end(i64 16, i8* %399) #1
  %400 = bitcast %struct.gs_point_s* %did to i8*
  call void @llvm.lifetime.end(i64 16, i8* %400) #1
  %401 = bitcast %struct.pdf_glyph_widths_s* %cw to i8*
  call void @llvm.lifetime.end(i64 120, i8* %401) #1
  %cleanup.dest.636 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.636, label %cleanup.638 [
    i32 0, label %cleanup.cont.637
    i32 2, label %for.end
  ]

cleanup.cont.637:                                 ; preds = %cleanup.624
  br label %for.cond

for.end:                                          ; preds = %cleanup.624
  %402 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %403 = bitcast %struct.gs_point_s* %402 to i8*
  %404 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %403, i8* %404, i64 16, i32 8, i1 false), !tbaa.struct !110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.638

cleanup.638:                                      ; preds = %for.end, %cleanup.624, %if.then.20
  %405 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %406 = bitcast %struct.pdf_font_resource_s** %pdfont3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %407 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.lifetime.end(i64 16, i8* %407) #1
  %408 = bitcast %struct.gs_point_s* %start to i8*
  call void @llvm.lifetime.end(i64 16, i8* %408) #1
  %409 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = load i32, i32* %retval
  ret i32 %411
}

declare i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**, i8**, double**, i32*, i32*) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s*, %struct.gs_text_enum_s*, i32) #4

declare i64 @pdf_find_glyph(%struct.pdf_font_resource_s*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdf_char_widths(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i32 %ch, %struct.gs_font_base_s* %font, %struct.pdf_glyph_widths_s* %pwidths) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch.addr = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %pwidths.addr = alloca %struct.pdf_glyph_widths_s*, align 8
  %widths = alloca %struct.pdf_glyph_widths_s, align 8
  %code = alloca i32, align 4
  %glyph_usage = alloca i8*, align 8
  %real_widths = alloca double*, align 8
  %char_cache_size = alloca i32, align 4
  %width_cache_size = alloca i32, align 4
  %pdfont1 = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  %glyph = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !27
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_glyph_widths_s* %pwidths, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_base_s* %8 to %struct.gs_font_s*
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %7, %struct.gs_font_s* %9, %struct.pdf_font_resource_s** %pdfont1, i8** %glyph_usage, double** %real_widths, i32* %char_cache_size, i32* %width_cache_size) #6
  store i32 %call, i32* %code, align 4, !tbaa !27
  %10 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end:                                           ; preds = %entry
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.pdf_font_resource_s* %12, %13
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.3:                                         ; preds = %if.end
  %14 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %15 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %cmp5 = icmp sgt i32 %15, 255
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.7:                                         ; preds = %lor.lhs.false
  %16 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %17 = load i32, i32* %width_cache_size, align 4, !tbaa !27
  %cmp8 = icmp sge i32 %16, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.10:                                        ; preds = %if.end.7
  %18 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.pdf_glyph_widths_s* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store %struct.pdf_glyph_widths_s* %widths, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType, align 4, !tbaa !17
  %cmp14 = icmp ne i32 %20, 3
  br i1 %cmp14, label %land.lhs.true, label %if.else.114

land.lhs.true:                                    ; preds = %if.end.13
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType15 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType15, align 4, !tbaa !17
  %cmp16 = icmp ne i32 %22, 53
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.114

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType18 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 11
  %24 = load i32, i32* %FontType18, align 4, !tbaa !17
  %cmp19 = icmp ne i32 %24, 51
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.114

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType21 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %25, i32 0, i32 11
  %26 = load i32, i32* %FontType21, align 4, !tbaa !17
  %cmp22 = icmp ne i32 %26, 52
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.114

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType24 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %27, i32 0, i32 11
  %28 = load i32, i32* %FontType24, align 4, !tbaa !17
  %cmp25 = icmp ne i32 %28, 54
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.114

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %29 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom = sext i32 %29 to i64
  %30 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx, align 8, !tbaa !71
  %cmp27 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp27, label %if.then.28, label %if.else.114

if.then.28:                                       ; preds = %land.lhs.true.26
  %32 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %34, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %35 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !186
  %arrayidx30 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %35, i64 %idxprom29
  %glyph31 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx30, i32 0, i32 0
  %36 = load i64, i64* %glyph31, align 8, !tbaa !187
  store i64 %36, i64* %glyph, align 8, !tbaa !68
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %38 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %38, i32 0, i32 16
  %39 = load i32, i32* %WMode, align 4, !tbaa !189
  %40 = load i64, i64* %glyph, align 8, !tbaa !68
  %41 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gs_font_base_s* %41 to %struct.gs_font_s*
  %43 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %call32 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %37, i32 %39, i64 %40, %struct.gs_font_s* %42, %struct.pdf_glyph_widths_s* %43, double* null) #6
  store i32 %call32, i32* %code, align 4, !tbaa !27
  %44 = load i32, i32* %code, align 4, !tbaa !27
  %cmp33 = icmp slt i32 %44, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.28
  %45 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.28
  %46 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %46, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !190
  %47 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox36 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %47, i32 0, i32 4
  %q37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox36, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q37, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !191
  %48 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox38 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %48, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox38, i32 0, i32 0
  %y39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y39, align 8, !tbaa !192
  %49 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox40 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %49, i32 0, i32 4
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox40, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  store double 0.000000e+00, double* %x42, align 8, !tbaa !193
  %50 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %WMode43 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %50, i32 0, i32 16
  %51 = load i32, i32* %WMode43, align 4, !tbaa !189
  %cmp44 = icmp ne i32 %51, 0
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.50

land.lhs.true.45:                                 ; preds = %if.end.35
  %52 = load i32, i32* %code, align 4, !tbaa !27
  %cmp46 = icmp sgt i32 %52, 0
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.50

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %53 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %53, i32 0, i32 2
  %54 = load i32, i32* %replaced_v, align 4, !tbaa !174
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.47
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %56 = load i64, i64* %glyph, align 8, !tbaa !68
  %57 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_base_s* %57 to %struct.gs_font_s*
  %59 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %call49 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %55, i32 0, i64 %56, %struct.gs_font_s* %58, %struct.pdf_glyph_widths_s* %59, double* null) #6
  store i32 %call49, i32* %code, align 4, !tbaa !27
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %land.lhs.true.47, %land.lhs.true.45, %if.end.35
  %60 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v51 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %60, i32 0, i32 2
  %61 = load i32, i32* %replaced_v51, align 4, !tbaa !174
  %tobool52 = icmp ne i32 %61, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.50
  %62 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %62, i32 0, i32 1
  %v = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width, i32 0, i32 2
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  %63 = load double, double* %x54, align 8, !tbaa !172
  %64 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %64, i32 0, i32 0
  %v55 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width, i32 0, i32 2
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v55, i32 0, i32 0
  %65 = load double, double* %x56, align 8, !tbaa !167
  %sub = fsub double %63, %65
  %66 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom57 = sext i32 %66 to i64
  %67 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u58 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %67, i32 0, i32 20
  %simple59 = bitcast %union.anon.1* %u58 to %struct.anon.3*
  %v60 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple59, i32 0, i32 5
  %68 = load %struct.gs_point_s*, %struct.gs_point_s** %v60, align 8, !tbaa !175
  %arrayidx61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %68, i64 %idxprom57
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx61, i32 0, i32 0
  store double %sub, double* %x62, align 8, !tbaa !65
  %69 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width63 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %69, i32 0, i32 1
  %v64 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width63, i32 0, i32 2
  %y65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v64, i32 0, i32 1
  %70 = load double, double* %y65, align 8, !tbaa !173
  %71 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width66 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %71, i32 0, i32 0
  %v67 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width66, i32 0, i32 2
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v67, i32 0, i32 1
  %72 = load double, double* %y68, align 8, !tbaa !168
  %sub69 = fsub double %70, %72
  %73 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom70 = sext i32 %73 to i64
  %74 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u71 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %74, i32 0, i32 20
  %simple72 = bitcast %union.anon.1* %u71 to %struct.anon.3*
  %v73 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple72, i32 0, i32 5
  %75 = load %struct.gs_point_s*, %struct.gs_point_s** %v73, align 8, !tbaa !175
  %arrayidx74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %75, i64 %idxprom70
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx74, i32 0, i32 1
  store double %sub69, double* %y75, align 8, !tbaa !66
  br label %if.end.88

if.else:                                          ; preds = %if.end.50
  %76 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom76 = sext i32 %76 to i64
  %77 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u77 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %77, i32 0, i32 20
  %simple78 = bitcast %union.anon.1* %u77 to %struct.anon.3*
  %v79 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple78, i32 0, i32 5
  %78 = load %struct.gs_point_s*, %struct.gs_point_s** %v79, align 8, !tbaa !175
  %arrayidx80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %78, i64 %idxprom76
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx80, i32 0, i32 1
  store double 0.000000e+00, double* %y81, align 8, !tbaa !66
  %79 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom82 = sext i32 %79 to i64
  %80 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u83 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %80, i32 0, i32 20
  %simple84 = bitcast %union.anon.1* %u83 to %struct.anon.3*
  %v85 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple84, i32 0, i32 5
  %81 = load %struct.gs_point_s*, %struct.gs_point_s** %v85, align 8, !tbaa !175
  %arrayidx86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %81, i64 %idxprom82
  %x87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx86, i32 0, i32 0
  store double 0.000000e+00, double* %x87, align 8, !tbaa !65
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.53
  %82 = load i32, i32* %code, align 4, !tbaa !27
  %cmp89 = icmp eq i32 %82, 0
  br i1 %cmp89, label %if.then.90, label %if.else.98

if.then.90:                                       ; preds = %if.end.88
  %83 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width91 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %83, i32 0, i32 0
  %w = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width91, i32 0, i32 0
  %84 = load double, double* %w, align 8, !tbaa !162
  %85 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom92 = sext i32 %85 to i64
  %86 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %86, i32 0, i32 14
  %87 = load double*, double** %Widths, align 8, !tbaa !194
  %arrayidx93 = getelementptr inbounds double, double* %87, i64 %idxprom92
  store double %84, double* %arrayidx93, align 8, !tbaa !71
  %88 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width94 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %88, i32 0, i32 1
  %w95 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width94, i32 0, i32 0
  %89 = load double, double* %w95, align 8, !tbaa !169
  %90 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom96 = sext i32 %90 to i64
  %91 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds double, double* %91, i64 %idxprom96
  store double %89, double* %arrayidx97, align 8, !tbaa !71
  br label %if.end.113

if.else.98:                                       ; preds = %if.end.88
  %92 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %WMode99 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %92, i32 0, i32 16
  %93 = load i32, i32* %WMode99, align 4, !tbaa !189
  %cmp100 = icmp eq i32 %93, 0
  br i1 %cmp100, label %land.lhs.true.103, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.else.98
  %94 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %ignore_wmode = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %94, i32 0, i32 3
  %95 = load i32, i32* %ignore_wmode, align 4, !tbaa !176
  %tobool102 = icmp ne i32 %95, 0
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.112

land.lhs.true.103:                                ; preds = %lor.lhs.false.101, %if.else.98
  %96 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v104 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %96, i32 0, i32 2
  %97 = load i32, i32* %replaced_v104, align 4, !tbaa !174
  %tobool105 = icmp ne i32 %97, 0
  br i1 %tobool105, label %if.end.112, label %if.then.106

if.then.106:                                      ; preds = %land.lhs.true.103
  %98 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width107 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %98, i32 0, i32 1
  %w108 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width107, i32 0, i32 0
  %99 = load double, double* %w108, align 8, !tbaa !169
  %100 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom109 = sext i32 %100 to i64
  %101 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths110 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %101, i32 0, i32 14
  %102 = load double*, double** %Widths110, align 8, !tbaa !194
  %arrayidx111 = getelementptr inbounds double, double* %102, i64 %idxprom109
  store double %99, double* %arrayidx111, align 8, !tbaa !71
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.106, %land.lhs.true.103, %lor.lhs.false.101
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.113, %if.then.34
  %103 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.295 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.294

if.else.114:                                      ; preds = %land.lhs.true.26, %land.lhs.true.23, %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true, %if.end.13
  %104 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType115 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %104, i32 0, i32 11
  %105 = load i32, i32* %FontType115, align 4, !tbaa !17
  %cmp116 = icmp eq i32 %105, 3
  br i1 %cmp116, label %if.then.129, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.else.114
  %106 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType118 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %106, i32 0, i32 11
  %107 = load i32, i32* %FontType118, align 4, !tbaa !17
  %cmp119 = icmp eq i32 %107, 53
  br i1 %cmp119, label %if.then.129, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.117
  %108 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType121 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %108, i32 0, i32 11
  %109 = load i32, i32* %FontType121, align 4, !tbaa !17
  %cmp122 = icmp eq i32 %109, 51
  br i1 %cmp122, label %if.then.129, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.120
  %110 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType124 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %110, i32 0, i32 11
  %111 = load i32, i32* %FontType124, align 4, !tbaa !17
  %cmp125 = icmp eq i32 %111, 52
  br i1 %cmp125, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.123
  %112 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType127 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %112, i32 0, i32 11
  %113 = load i32, i32* %FontType127, align 4, !tbaa !17
  %cmp128 = icmp eq i32 %113, 54
  br i1 %cmp128, label %if.then.129, label %if.end.151

if.then.129:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.123, %lor.lhs.false.120, %lor.lhs.false.117, %if.else.114
  %114 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %shr = ashr i32 %114, 3
  %idxprom130 = sext i32 %shr to i64
  %115 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %115, i32 0, i32 15
  %116 = load i8*, i8** %used, align 8, !tbaa !195
  %arrayidx131 = getelementptr inbounds i8, i8* %116, i64 %idxprom130
  %117 = load i8, i8* %arrayidx131, align 1, !tbaa !115
  %conv = zext i8 %117 to i32
  %118 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %and = and i32 %118, 7
  %shr132 = ashr i32 128, %and
  %and133 = and i32 %conv, %shr132
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.then.129
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.136:                                       ; preds = %if.then.129
  %119 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %119, i32 0, i32 214
  %120 = load i32, i32* %charproc_just_accumulated, align 4, !tbaa !185
  %tobool137 = icmp ne i32 %120, 0
  br i1 %tobool137, label %if.end.150, label %land.lhs.true.138

land.lhs.true.138:                                ; preds = %if.end.136
  %121 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %shr139 = ashr i32 %121, 3
  %idxprom140 = sext i32 %shr139 to i64
  %122 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u141 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %122, i32 0, i32 20
  %simple142 = bitcast %union.anon.1* %u141 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple142, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 6
  %123 = load i8*, i8** %cached, align 8, !tbaa !196
  %arrayidx143 = getelementptr inbounds i8, i8* %123, i64 %idxprom140
  %124 = load i8, i8* %arrayidx143, align 1, !tbaa !115
  %conv144 = zext i8 %124 to i32
  %125 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %and145 = and i32 %125, 7
  %shr146 = ashr i32 128, %and145
  %and147 = and i32 %conv144, %shr146
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.138
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.150:                                       ; preds = %land.lhs.true.138, %if.end.136
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %lor.lhs.false.126
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_just_accumulated152 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 214
  %127 = load i32, i32* %charproc_just_accumulated152, align 4, !tbaa !185
  %tobool153 = icmp ne i32 %127, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.182

land.lhs.true.154:                                ; preds = %if.end.151
  %128 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType155 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %128, i32 0, i32 11
  %129 = load i32, i32* %FontType155, align 4, !tbaa !17
  %cmp156 = icmp eq i32 %129, 3
  br i1 %cmp156, label %if.then.158, label %if.end.182

if.then.158:                                      ; preds = %land.lhs.true.154
  %130 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_BBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %130, i32 0, i32 213
  %p159 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %charproc_BBox, i32 0, i32 0
  %x160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p159, i32 0, i32 0
  %131 = load double, double* %x160, align 8, !tbaa !197
  %132 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox161 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %132, i32 0, i32 4
  %p162 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox161, i32 0, i32 0
  %x163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p162, i32 0, i32 0
  store double %131, double* %x163, align 8, !tbaa !193
  %133 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_BBox164 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %133, i32 0, i32 213
  %p165 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %charproc_BBox164, i32 0, i32 0
  %y166 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p165, i32 0, i32 1
  %134 = load double, double* %y166, align 8, !tbaa !198
  %135 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox167 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %135, i32 0, i32 4
  %p168 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox167, i32 0, i32 0
  %y169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p168, i32 0, i32 1
  store double %134, double* %y169, align 8, !tbaa !192
  %136 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_BBox170 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %136, i32 0, i32 213
  %q171 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %charproc_BBox170, i32 0, i32 1
  %x172 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q171, i32 0, i32 0
  %137 = load double, double* %x172, align 8, !tbaa !199
  %138 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox173 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %138, i32 0, i32 4
  %q174 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox173, i32 0, i32 1
  %x175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q174, i32 0, i32 0
  store double %137, double* %x175, align 8, !tbaa !191
  %139 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %charproc_BBox176 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %139, i32 0, i32 213
  %q177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %charproc_BBox176, i32 0, i32 1
  %y178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q177, i32 0, i32 1
  %140 = load double, double* %y178, align 8, !tbaa !200
  %141 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %BBox179 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %141, i32 0, i32 4
  %q180 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox179, i32 0, i32 1
  %y181 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q180, i32 0, i32 1
  store double %140, double* %y181, align 8, !tbaa !190
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.158, %land.lhs.true.154, %if.end.151
  %142 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom183 = sext i32 %142 to i64
  %143 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths184 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %143, i32 0, i32 14
  %144 = load double*, double** %Widths184, align 8, !tbaa !194
  %arrayidx185 = getelementptr inbounds double, double* %144, i64 %idxprom183
  %145 = load double, double* %arrayidx185, align 8, !tbaa !71
  %146 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width186 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %146, i32 0, i32 0
  %w187 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width186, i32 0, i32 0
  store double %145, double* %w187, align 8, !tbaa !162
  %147 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width188 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %147, i32 0, i32 0
  %v189 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width188, i32 0, i32 2
  %148 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom190 = sext i32 %148 to i64
  %149 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u191 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %149, i32 0, i32 20
  %simple192 = bitcast %union.anon.1* %u191 to %struct.anon.3*
  %v193 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple192, i32 0, i32 5
  %150 = load %struct.gs_point_s*, %struct.gs_point_s** %v193, align 8, !tbaa !175
  %arrayidx194 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %150, i64 %idxprom190
  %151 = bitcast %struct.gs_point_s* %v189 to i8*
  %152 = bitcast %struct.gs_point_s* %arrayidx194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 16, i32 8, i1 false), !tbaa.struct !110
  %153 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width195 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %153, i32 0, i32 1
  %v196 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width195, i32 0, i32 2
  %y197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v196, i32 0, i32 1
  store double 0.000000e+00, double* %y197, align 8, !tbaa !173
  %154 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width198 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %154, i32 0, i32 1
  %v199 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width198, i32 0, i32 2
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v199, i32 0, i32 0
  store double 0.000000e+00, double* %x200, align 8, !tbaa !172
  %155 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %ignore_wmode201 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %155, i32 0, i32 3
  store i32 0, i32* %ignore_wmode201, align 4, !tbaa !176
  %156 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType202 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %156, i32 0, i32 11
  %157 = load i32, i32* %FontType202, align 4, !tbaa !17
  %cmp203 = icmp eq i32 %157, 3
  br i1 %cmp203, label %if.then.221, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %if.end.182
  %158 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType206 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %158, i32 0, i32 11
  %159 = load i32, i32* %FontType206, align 4, !tbaa !17
  %cmp207 = icmp eq i32 %159, 53
  br i1 %cmp207, label %if.then.221, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %lor.lhs.false.205
  %160 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType210 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %160, i32 0, i32 11
  %161 = load i32, i32* %FontType210, align 4, !tbaa !17
  %cmp211 = icmp eq i32 %161, 51
  br i1 %cmp211, label %if.then.221, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %lor.lhs.false.209
  %162 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType214 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %162, i32 0, i32 11
  %163 = load i32, i32* %FontType214, align 4, !tbaa !17
  %cmp215 = icmp eq i32 %163, 52
  br i1 %cmp215, label %if.then.221, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.213
  %164 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType218 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %164, i32 0, i32 11
  %165 = load i32, i32* %FontType218, align 4, !tbaa !17
  %cmp219 = icmp eq i32 %165, 54
  br i1 %cmp219, label %if.then.221, label %if.else.247

if.then.221:                                      ; preds = %lor.lhs.false.217, %lor.lhs.false.213, %lor.lhs.false.209, %lor.lhs.false.205, %if.end.182
  %166 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %mul = mul nsw i32 %166, 2
  %idxprom222 = sext i32 %mul to i64
  %167 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds double, double* %167, i64 %idxprom222
  %168 = load double, double* %arrayidx223, align 8, !tbaa !71
  %169 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width224 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %169, i32 0, i32 1
  %w225 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width224, i32 0, i32 0
  store double %168, double* %w225, align 8, !tbaa !169
  %170 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width226 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %170, i32 0, i32 0
  %w227 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width226, i32 0, i32 0
  %171 = load double, double* %w227, align 8, !tbaa !162
  %172 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width228 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %172, i32 0, i32 0
  %xy = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width228, i32 0, i32 1
  %x229 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  store double %171, double* %x229, align 8, !tbaa !165
  %173 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width230 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %173, i32 0, i32 0
  %xy231 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width230, i32 0, i32 1
  %y232 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy231, i32 0, i32 1
  store double 0.000000e+00, double* %y232, align 8, !tbaa !166
  %174 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %mul233 = mul nsw i32 %174, 2
  %add = add nsw i32 %mul233, 0
  %idxprom234 = sext i32 %add to i64
  %175 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds double, double* %175, i64 %idxprom234
  %176 = load double, double* %arrayidx235, align 8, !tbaa !71
  %177 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width236 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %177, i32 0, i32 1
  %xy237 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width236, i32 0, i32 1
  %x238 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy237, i32 0, i32 0
  store double %176, double* %x238, align 8, !tbaa !170
  %178 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %mul239 = mul nsw i32 %178, 2
  %add240 = add nsw i32 %mul239, 1
  %idxprom241 = sext i32 %add240 to i64
  %179 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds double, double* %179, i64 %idxprom241
  %180 = load double, double* %arrayidx242, align 8, !tbaa !71
  %181 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width243 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %181, i32 0, i32 1
  %xy244 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width243, i32 0, i32 1
  %y245 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy244, i32 0, i32 1
  store double %180, double* %y245, align 8, !tbaa !171
  %182 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %replaced_v246 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %182, i32 0, i32 2
  store i32 0, i32* %replaced_v246, align 4, !tbaa !174
  br label %if.end.293

if.else.247:                                      ; preds = %lor.lhs.false.217
  %183 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %WMode248 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %183, i32 0, i32 16
  %184 = load i32, i32* %WMode248, align 4, !tbaa !189
  %tobool249 = icmp ne i32 %184, 0
  br i1 %tobool249, label %if.then.250, label %if.else.271

if.then.250:                                      ; preds = %if.else.247
  %185 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom251 = sext i32 %185 to i64
  %186 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds double, double* %186, i64 %idxprom251
  %187 = load double, double* %arrayidx252, align 8, !tbaa !71
  %188 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width253 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %188, i32 0, i32 1
  %w254 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width253, i32 0, i32 0
  store double %187, double* %w254, align 8, !tbaa !169
  %189 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width255 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %189, i32 0, i32 0
  %xy256 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width255, i32 0, i32 1
  %x257 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy256, i32 0, i32 0
  store double 0.000000e+00, double* %x257, align 8, !tbaa !165
  %190 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width258 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %190, i32 0, i32 0
  %w259 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width258, i32 0, i32 0
  %191 = load double, double* %w259, align 8, !tbaa !162
  %192 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width260 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %192, i32 0, i32 0
  %xy261 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width260, i32 0, i32 1
  %y262 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy261, i32 0, i32 1
  store double %191, double* %y262, align 8, !tbaa !166
  %193 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width263 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %193, i32 0, i32 1
  %xy264 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width263, i32 0, i32 1
  %x265 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy264, i32 0, i32 0
  store double 0.000000e+00, double* %x265, align 8, !tbaa !170
  %194 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width266 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %194, i32 0, i32 1
  %w267 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width266, i32 0, i32 0
  %195 = load double, double* %w267, align 8, !tbaa !169
  %196 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width268 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %196, i32 0, i32 1
  %xy269 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width268, i32 0, i32 1
  %y270 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy269, i32 0, i32 1
  store double %195, double* %y270, align 8, !tbaa !171
  br label %if.end.292

if.else.271:                                      ; preds = %if.else.247
  %197 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom272 = sext i32 %197 to i64
  %198 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds double, double* %198, i64 %idxprom272
  %199 = load double, double* %arrayidx273, align 8, !tbaa !71
  %200 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width274 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %200, i32 0, i32 1
  %w275 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width274, i32 0, i32 0
  store double %199, double* %w275, align 8, !tbaa !169
  %201 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width276 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %201, i32 0, i32 0
  %w277 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width276, i32 0, i32 0
  %202 = load double, double* %w277, align 8, !tbaa !162
  %203 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width278 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %203, i32 0, i32 0
  %xy279 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width278, i32 0, i32 1
  %x280 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy279, i32 0, i32 0
  store double %202, double* %x280, align 8, !tbaa !165
  %204 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width281 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %204, i32 0, i32 0
  %xy282 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width281, i32 0, i32 1
  %y283 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy282, i32 0, i32 1
  store double 0.000000e+00, double* %y283, align 8, !tbaa !166
  %205 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width284 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %205, i32 0, i32 1
  %w285 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width284, i32 0, i32 0
  %206 = load double, double* %w285, align 8, !tbaa !169
  %207 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width286 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %207, i32 0, i32 1
  %xy287 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width286, i32 0, i32 1
  %x288 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy287, i32 0, i32 0
  store double %206, double* %x288, align 8, !tbaa !170
  %208 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width289 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %208, i32 0, i32 1
  %xy290 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width289, i32 0, i32 1
  %y291 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy290, i32 0, i32 1
  store double 0.000000e+00, double* %y291, align 8, !tbaa !171
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.271, %if.then.250
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.221
  store i32 0, i32* %code, align 4, !tbaa !27
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %cleanup.cont
  %209 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %if.end.294, %if.then.149, %if.then.135, %cleanup, %if.then.9, %if.then.6, %if.then.2, %if.then
  %210 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast %struct.pdf_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.end(i64 120, i8* %216) #1
  %217 = load i32, i32* %retval
  ret i32 %217
}

declare i32 @pdf_glyph_widths(%struct.pdf_font_resource_s*, i32, i64, %struct.gs_font_s*, %struct.pdf_glyph_widths_s*, double*) #4

; Function Attrs: nounwind uwtable
define internal i32 @pdf_encode_string_element(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, %struct.pdf_font_resource_s* %pdfont, i64 %ch, i64* %gdata) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %ch.addr = alloca i64, align 8
  %gdata.addr = alloca i64*, align 8
  %cfont = alloca %struct.gs_font_base_s*, align 8
  %ccfont = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %copied_glyph = alloca i64, align 8
  %gnstr = alloca %struct.gs_const_string_s, align 8
  %pet = alloca %struct.pdf_encoding_element_s*, align 8
  %glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !68
  store i64* %gdata, i64** %gdata.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_base_s** %cfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_font_base_s** %ccfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %copied_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %7, i32 0) #6
  store %struct.gs_font_base_s* %call, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %8, i32 1) #6
  store %struct.gs_font_base_s* %call1, %struct.gs_font_base_s** %ccfont, align 8, !tbaa !1
  %9 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %11 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !186
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %11, i64 %9
  store %struct.pdf_encoding_element_s* %arrayidx, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %12 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %cmp = icmp eq i64* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %14 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !201
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %16 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %call2 = call i64 %14(%struct.gs_font_s* %15, i64 %16, i32 0) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %18 = load i64, i64* %17, align 8, !tbaa !68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, i64* %glyph, align 8, !tbaa !68
  %19 = load i64, i64* %glyph, align 8, !tbaa !68
  %cmp3 = icmp eq i64 %19, 2147483647
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %20 = load i64, i64* %glyph, align 8, !tbaa !68
  %21 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph4 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %21, i32 0, i32 0
  %22 = load i64, i64* %glyph4, align 8, !tbaa !187
  %cmp5 = icmp eq i64 %20, %22
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %23 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph6 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %23, i32 0, i32 0
  %24 = load i64, i64* %glyph6, align 8, !tbaa !187
  %cmp7 = icmp ne i64 %24, 2147483647
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs10, i32 0, i32 9
  %26 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !202
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %28 = load i64, i64* %glyph, align 8, !tbaa !68
  %call11 = call i32 %26(%struct.gs_font_s* %27, i64 %28, %struct.gs_const_string_s* %gnstr) #6
  store i32 %call11, i32* %code, align 4, !tbaa !27
  %29 = load i32, i32* %code, align 4, !tbaa !27
  %cmp12 = icmp slt i32 %29, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %30 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %31, i32 0, i32 11
  %32 = load i32, i32* %FontType, align 4, !tbaa !118
  %cmp15 = icmp ne i32 %32, 3
  br i1 %cmp15, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.end.14
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType16 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 11
  %34 = load i32, i32* %FontType16, align 4, !tbaa !118
  %cmp17 = icmp ne i32 %34, 53
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.103

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %35, i32 0, i32 11
  %36 = load i32, i32* %FontType19, align 4, !tbaa !118
  %cmp20 = icmp ne i32 %36, 51
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.103

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 11
  %38 = load i32, i32* %FontType22, align 4, !tbaa !118
  %cmp23 = icmp ne i32 %38, 52
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.103

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType25 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 11
  %40 = load i32, i32* %FontType25, align 4, !tbaa !118
  %cmp26 = icmp ne i32 %40, 54
  br i1 %cmp26, label %if.then.27, label %if.end.103

if.then.27:                                       ; preds = %land.lhs.true.24
  %41 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %41, i32 0, i32 12
  %42 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !203
  %cmp28 = icmp ne %struct.pdf_base_font_s* %42, null
  br i1 %cmp28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %if.then.27
  %43 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %43, i32 0, i32 12
  %44 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font30, align 8, !tbaa !203
  %45 = load i64, i64* %glyph, align 8, !tbaa !68
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_font_s* %46 to %struct.gs_font_base_s*
  %call31 = call i32 @pdf_base_font_copy_glyph(%struct.pdf_base_font_s* %44, i64 %45, %struct.gs_font_base_s* %47) #6
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.then.27
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 11
  %49 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !204
  %50 = load i64, i64* %glyph, align 8, !tbaa !68
  %51 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gs_font_s* %51 to %struct.gs_font_base_s*
  %call33 = call i32 @pdf_font_used_glyph(%struct.pdf_font_descriptor_s* %49, i64 %50, %struct.gs_font_base_s* %52) #6
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.29
  %cond35 = phi i32 [ %call31, %cond.true.29 ], [ %call33, %cond.false.32 ]
  store i32 %cond35, i32* %code, align 4, !tbaa !27
  %53 = load i32, i32* %code, align 4, !tbaa !27
  %cmp36 = icmp slt i32 %53, 0
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.40

land.lhs.true.37:                                 ; preds = %cond.end.34
  %54 = load i32, i32* %code, align 4, !tbaa !27
  %cmp38 = icmp ne i32 %54, -21
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.37
  %55 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %land.lhs.true.37, %cond.end.34
  %56 = load i32, i32* %code, align 4, !tbaa !27
  %cmp41 = icmp eq i32 %56, -21
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.40
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 109
  %58 = load i32, i32* %PDFA, align 4, !tbaa !205
  %cmp43 = icmp ne i32 %58, 0
  br i1 %cmp43, label %if.then.45, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.42
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 108
  %60 = load i32, i32* %PDFX, align 4, !tbaa !206
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.45, label %if.end.70

if.then.45:                                       ; preds = %lor.lhs.false.44, %if.then.42
  %61 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFACompatibilityPolicy = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %61, i32 0, i32 239
  %62 = load i32, i32* %PDFACompatibilityPolicy, align 4, !tbaa !207
  switch i32 %62, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.then.45
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !208
  %call46 = call i8* @gs_program_name() #6
  %call47 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %64, i8* %call46, i64 %call47) #6
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !208
  %call49 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %66, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.12, i32 0, i32 0)) #6
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX, align 4, !tbaa !209
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA50 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 109
  store i32 0, i32* %PDFA50, align 4, !tbaa !205
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.then.45
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory52 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 3
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !208
  %call53 = call i8* @gs_program_name() #6
  %call54 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %70, i8* %call53, i64 %call54) #6
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !208
  %call56 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %72, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i32 0, i32 0)) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.57:                                         ; preds = %if.then.45
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !208
  %call59 = call i8* @gs_program_name() #6
  %call60 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %74, i8* %call59, i64 %call60) #6
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !208
  %call62 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %76, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then.45
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %77, i32 0, i32 3
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !208
  %call64 = call i8* @gs_program_name() #6
  %call65 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %78, i8* %call64, i64 %call65) #6
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 3
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !208
  %call67 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %80, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.15, i32 0, i32 0)) #6
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %AbortPDFAX68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 110
  store i32 1, i32* %AbortPDFAX68, align 4, !tbaa !209
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA69 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 109
  store i32 0, i32* %PDFA69, align 4, !tbaa !205
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end.70

if.end.70:                                        ; preds = %sw.epilog, %lor.lhs.false.44
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 0
  %83 = load i8*, i8** %data, align 8, !tbaa !114
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gnstr, i32 0, i32 1
  %84 = load i32, i32* %size, align 4, !tbaa !113
  %call71 = call i32 @bytes_compare(i8* %83, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 7) #6
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.70
  %85 = load i64, i64* %glyph, align 8, !tbaa !68
  %86 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph74 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %86, i32 0, i32 0
  store i64 %85, i64* %glyph74, align 8, !tbaa !187
  %87 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %87, i32 0, i32 1
  %88 = bitcast %struct.gs_const_string_s* %str to i8*
  %89 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false), !tbaa.struct !210
  %90 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %is_difference = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %90, i32 0, i32 2
  store i32 1, i32* %is_difference, align 4, !tbaa !211
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.70
  br label %if.end.89

if.else:                                          ; preds = %if.end.40
  %91 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font76 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %91, i32 0, i32 12
  %92 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font76, align 8, !tbaa !203
  %cmp77 = icmp eq %struct.pdf_base_font_s* %92, null
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.88

land.lhs.true.78:                                 ; preds = %if.else
  %93 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %ccfont, align 8, !tbaa !1
  %cmp79 = icmp ne %struct.gs_font_base_s* %93, null
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.88

land.lhs.true.80:                                 ; preds = %land.lhs.true.78
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %95 = load i64, i64* %glyph, align 8, !tbaa !68
  %96 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %ccfont, align 8, !tbaa !1
  %97 = bitcast %struct.gs_font_base_s* %96 to %struct.gs_font_s*
  %call81 = call i32 @gs_copy_glyph_options(%struct.gs_font_s* %94, i64 %95, %struct.gs_font_s* %97, i32 2) #6
  %cmp82 = icmp ne i32 %call81, 1
  br i1 %cmp82, label %if.then.86, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.80
  %98 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %ccfont, align 8, !tbaa !1
  %99 = bitcast %struct.gs_font_base_s* %98 to %struct.gs_font_s*
  %100 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %101 = load i64, i64* %glyph, align 8, !tbaa !68
  %call84 = call i32 @gs_copied_font_add_encoding(%struct.gs_font_s* %99, i64 %100, i64 %101) #6
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %lor.lhs.false.83, %land.lhs.true.80
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %ccfont, align 8, !tbaa !1
  %102 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor87 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %102, i32 0, i32 11
  %103 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor87, align 8, !tbaa !204
  call void @pdf_font_descriptor_drop_complete_font(%struct.pdf_font_descriptor_s* %103) #6
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %lor.lhs.false.83, %land.lhs.true.78, %if.else
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.75
  %104 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %104, i32 0, i32 20
  %encode_char91 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs90, i32 0, i32 4
  %105 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char91, align 8, !tbaa !212
  %106 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %107 = bitcast %struct.gs_font_base_s* %106 to %struct.gs_font_s*
  %108 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %call92 = call i64 %105(%struct.gs_font_s* %107, i64 %108, i32 0) #6
  store i64 %call92, i64* %copied_glyph, align 8, !tbaa !68
  %109 = load i64, i64* %glyph, align 8, !tbaa !68
  %110 = load i64, i64* %copied_glyph, align 8, !tbaa !68
  %cmp93 = icmp ne i64 %109, %110
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.99

land.lhs.true.94:                                 ; preds = %if.end.89
  %111 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %112 = bitcast %struct.gs_font_base_s* %111 to %struct.gs_font_s*
  %113 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %114 = load i64, i64* %glyph, align 8, !tbaa !68
  %call95 = call i32 @gs_copied_font_add_encoding(%struct.gs_font_s* %112, i64 %113, i64 %114) #6
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %land.lhs.true.94
  %115 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %is_difference98 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %115, i32 0, i32 2
  store i32 1, i32* %is_difference98, align 4, !tbaa !211
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %land.lhs.true.94, %if.end.89
  %116 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %and = and i64 %116, 7
  %sh_prom = trunc i64 %and to i32
  %shr = ashr i32 128, %sh_prom
  %117 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %shr100 = lshr i64 %117, 3
  %118 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %118, i32 0, i32 15
  %119 = load i8*, i8** %used, align 8, !tbaa !195
  %arrayidx101 = getelementptr inbounds i8, i8* %119, i64 %shr100
  %120 = load i8, i8* %arrayidx101, align 1, !tbaa !115
  %conv = zext i8 %120 to i32
  %or = or i32 %conv, %shr
  %conv102 = trunc i32 %or to i8
  store i8 %conv102, i8* %arrayidx101, align 1, !tbaa !115
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.99, %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true, %if.end.14
  %121 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %122 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %123 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %124 = load i64, i64* %glyph, align 8, !tbaa !68
  %125 = load i64, i64* %ch.addr, align 8, !tbaa !68
  %call104 = call i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s* %121, %struct.gs_font_s* %122, %struct.pdf_font_resource_s* %123, i64 %124, i64 %125, %struct.gs_const_string_s* %gnstr) #6
  store i32 %call104, i32* %code, align 4, !tbaa !27
  %126 = load i32, i32* %code, align 4, !tbaa !27
  %cmp105 = icmp slt i32 %126, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  %127 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %if.end.103
  %128 = load i64, i64* %glyph, align 8, !tbaa !68
  %129 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %glyph109 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %129, i32 0, i32 0
  store i64 %128, i64* %glyph109, align 8, !tbaa !187
  %130 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %pet, align 8, !tbaa !1
  %str110 = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %130, i32 0, i32 1
  %131 = bitcast %struct.gs_const_string_s* %str110 to i8*
  %132 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 16, i32 8, i1 false), !tbaa.struct !210
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.108, %if.then.107, %sw.bb.57, %sw.bb.51, %if.then.39, %if.then.13, %if.then.8, %if.then
  %133 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast %struct.pdf_encoding_element_s** %pet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast %struct.gs_const_string_s* %gnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %135) #1
  %136 = bitcast i64* %copied_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast %struct.gs_font_base_s** %ccfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast %struct.gs_font_base_s** %cfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = load i32, i32* %retval
  ret i32 %140
}

declare i32 @gx_lookup_fm_pair(%struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_log2_scale_point_s*, i32, %struct.cached_fm_pair_s**) #4

declare %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s*, %struct.cached_fm_pair_s*, i64, i32, i32, %struct.gs_fixed_point_s*) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

declare i32 @pdf_set_text_state_values(%struct.gx_device_pdf_s*, %struct.pdf_text_state_values_s*) #4

; Function Attrs: nounwind uwtable
define internal void @pdf_char_widths_to_uts(%struct.pdf_font_resource_s* %pdfont, %struct.pdf_glyph_widths_s* %pwidths) #0 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %pwidths.addr = alloca %struct.pdf_glyph_widths_s*, align 8
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.pdf_glyph_widths_s* %pwidths, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.pdf_font_resource_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %1, i32 0, i32 8
  %2 = load i32, i32* %FontType, align 4, !tbaa !129
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %3, i32 0, i32 8
  %4 = load i32, i32* %FontType1, align 4, !tbaa !129
  %cmp2 = icmp eq i32 %4, 53
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 8
  %6 = load i32, i32* %FontType4, align 4, !tbaa !129
  %cmp5 = icmp eq i32 %6, 51
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType7 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 8
  %8 = load i32, i32* %FontType7, align 4, !tbaa !129
  %cmp8 = icmp eq i32 %8, 52
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType10 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %9, i32 0, i32 8
  %10 = load i32, i32* %FontType10, align 4, !tbaa !129
  %cmp11 = icmp eq i32 %10, 54
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %11 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %FontMatrix = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 1
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 0
  %14 = load float, float* %xx, align 4, !tbaa !213
  %conv = fpext float %14 to double
  %15 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %15, i32 0, i32 0
  %xy = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 0
  %16 = load double, double* %x, align 8, !tbaa !165
  %mul = fmul double %16, %conv
  store double %mul, double* %x, align 8, !tbaa !165
  %17 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width12 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %17, i32 0, i32 0
  %xy13 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width12, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy13, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !166
  %18 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %18, i32 0, i32 1
  %xy14 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy14, i32 0, i32 0
  %19 = load double, double* %x15, align 8, !tbaa !170
  %20 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width16 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %20, i32 0, i32 1
  %xy17 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width16, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy17, i32 0, i32 1
  %21 = load double, double* %y18, align 8, !tbaa !171
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %23 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width19 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %23, i32 0, i32 1
  %xy20 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width19, i32 0, i32 1
  %call = call i32 @gs_distance_transform(double %19, double %21, %struct.gs_matrix_s* %22, %struct.gs_point_s* %xy20) #6
  %24 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.9, %entry
  %25 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width21 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %25, i32 0, i32 0
  %xy22 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width21, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy22, i32 0, i32 0
  %26 = load double, double* %x23, align 8, !tbaa !165
  %div = fdiv double %26, 1.000000e+03
  store double %div, double* %x23, align 8, !tbaa !165
  %27 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %Width24 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %27, i32 0, i32 0
  %xy25 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width24, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy25, i32 0, i32 1
  %28 = load double, double* %y26, align 8, !tbaa !166
  %div27 = fdiv double %28, 1.000000e+03
  store double %div27, double* %y26, align 8, !tbaa !166
  %29 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width28 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %29, i32 0, i32 1
  %xy29 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width28, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy29, i32 0, i32 0
  %30 = load double, double* %x30, align 8, !tbaa !170
  %div31 = fdiv double %30, 1.000000e+03
  store double %div31, double* %x30, align 8, !tbaa !170
  %31 = load %struct.pdf_glyph_widths_s*, %struct.pdf_glyph_widths_s** %pwidths.addr, align 8, !tbaa !1
  %real_width32 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %31, i32 0, i32 1
  %xy33 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width32, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy33, i32 0, i32 1
  %32 = load double, double* %y34, align 8, !tbaa !171
  %div35 = fdiv double %32, 1.000000e+03
  store double %div35, double* %y34, align 8, !tbaa !171
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @pdf_append_chars(%struct.gx_device_pdf_s*, i8*, i32, double, double, i32) #4

declare i32 @gs_text_replaced_width(%struct.gs_text_params_s*, i32, %struct.gs_point_s*) #4

; Function Attrs: nounwind uwtable
define i32 @pdf_encode_glyph(%struct.gs_font_base_s* %bfont, i64 %glyph0, i8* %buf, i32 %buf_size, i32* %char_code_length) #0 {
entry:
  %retval = alloca i32, align 4
  %bfont.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph0.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %char_code_length.addr = alloca i32*, align 8
  %c = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %glyph1 = alloca i64, align 8
  store %struct.gs_font_base_s* %bfont, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  store i64 %glyph0, i64* %glyph0.addr, align 8, !tbaa !68
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_size, i32* %buf_size.addr, align 4, !tbaa !27
  store i32* %char_code_length, i32** %char_code_length.addr, align 8, !tbaa !1
  %0 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %char_code_length.addr, align 8, !tbaa !1
  store i32 1, i32* %1, align 4, !tbaa !27
  %2 = load i32*, i32** %char_code_length.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !27
  %4 = load i32, i32* %buf_size.addr, align 4, !tbaa !27
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5

if.end:                                           ; preds = %entry
  store i64 0, i64* %c, align 8, !tbaa !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %c, align 8, !tbaa !68
  %cmp1 = icmp ult i64 %5, 255
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %8 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !212
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_base_s* %9 to %struct.gs_font_s*
  %11 = load i64, i64* %c, align 8, !tbaa !68
  %call = call i64 %8(%struct.gs_font_s* %10, i64 %11, i32 0) #6
  store i64 %call, i64* %glyph1, align 8, !tbaa !68
  %12 = load i64, i64* %glyph1, align 8, !tbaa !68
  %13 = load i64, i64* %glyph0.addr, align 8, !tbaa !68
  %cmp2 = icmp eq i64 %12, %13
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %14 = load i64, i64* %c, align 8, !tbaa !68
  %conv = trunc i64 %14 to i8
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3
  %16 = bitcast i64* %glyph1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i64, i64* %c, align 8, !tbaa !68
  %inc = add i64 %17, 1
  store i64 %inc, i64* %c, align 8, !tbaa !68
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5

cleanup.5:                                        ; preds = %for.end, %cleanup, %if.then
  %18 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @process_plain_text(%struct.gs_text_enum_s* %pte, i8* %vbuf, i32 %bsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %vbuf.addr = alloca i8*, align 8
  %bsize.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %count = alloca i32, align 4
  %operation = alloca i32, align 4
  %penum = alloca %struct.pdf_text_enum_s*, align 8
  %code = alloca i32, align 4
  %str = alloca %struct.gs_string_s, align 8
  %text_state = alloca %struct.pdf_text_process_state_s, align 8
  %gdata = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  %cdata = alloca i64*, align 8
  %i = alloca i32, align 4
  %chr = alloca i64, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %size46 = alloca i32, align 4
  %i47 = alloca i32, align 4
  %glyph = alloca i64, align 8
  %char_code_length = alloca i32, align 4
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %vbuf, i8** %vbuf.addr, align 8, !tbaa !1
  store i32 %bsize, i32* %bsize.addr, align 4, !tbaa !27
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  store i8* %1, i8** %buf, align 8, !tbaa !1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 0
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %5 = load i32, i32* %operation1, align 4, !tbaa !214
  store i32 %5, i32* %operation, align 4, !tbaa !27
  %6 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_text_enum_s* %7 to %struct.pdf_text_enum_s*
  store %struct.pdf_text_enum_s* %8, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #1
  %12 = bitcast i64** %gdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* null, i64** %gdata, align 8, !tbaa !1
  %13 = load i32, i32* %operation, align 4, !tbaa !27
  %and = and i32 %13, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %14, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text2, i32 0, i32 2
  %15 = load i32, i32* %size, align 4, !tbaa !215
  %16 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %16, i32 0, i32 17
  %17 = load i32, i32* %index, align 4, !tbaa !216
  %sub = sub i32 %15, %17
  store i32 %sub, i32* %count, align 4, !tbaa !27
  %18 = load i32, i32* %bsize.addr, align 4, !tbaa !27
  %19 = load i32, i32* %count, align 4, !tbaa !27
  %cmp = icmp ult i32 %18, %19
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end:                                           ; preds = %if.then
  %20 = load i8*, i8** %buf, align 8, !tbaa !1
  %21 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %21, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text4, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %22 = load i8*, i8** %bytes, align 8, !tbaa !1
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 17
  %24 = load i32, i32* %index5, align 4, !tbaa !216
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %25 = load i32, i32* %count, align 4, !tbaa !27
  %conv = zext i32 %25 to i64
  %call = call i8* @memcpy(i8* %20, i8* %add.ptr, i64 %conv) #8
  br label %if.end.115

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %operation, align 4, !tbaa !27
  %and6 = and i32 %26, 20
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.42

if.then.8:                                        ; preds = %if.else
  %27 = bitcast i64** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %operation, align 4, !tbaa !27
  %and9 = and i32 %29, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.then.8
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text12 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 0
  %data13 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text12, i32 0, i32 1
  %chars = bitcast %union.sd_* %data13 to i64**
  %31 = load i64*, i64** %chars, align 8, !tbaa !1
  store i64* %31, i64** %cdata, align 8, !tbaa !1
  %32 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text14 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %32, i32 0, i32 0
  %size15 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text14, i32 0, i32 2
  %33 = load i32, i32* %size15, align 4, !tbaa !215
  %34 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %34, i32 0, i32 17
  %35 = load i32, i32* %index16, align 4, !tbaa !216
  %sub17 = sub i32 %33, %35
  store i32 %sub17, i32* %count, align 4, !tbaa !27
  br label %if.end.21

if.else.18:                                       ; preds = %if.then.8
  %36 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text19 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %36, i32 0, i32 0
  %data20 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text19, i32 0, i32 1
  %d_char = bitcast %union.sd_* %data20 to i64*
  store i64* %d_char, i64** %cdata, align 8, !tbaa !1
  store i32 1, i32* %count, align 4, !tbaa !27
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.11
  %37 = load i32, i32* %bsize.addr, align 4, !tbaa !27
  %conv22 = zext i32 %37 to i64
  %38 = load i32, i32* %count, align 4, !tbaa !27
  %conv23 = zext i32 %38 to i64
  %mul = mul i64 %conv23, 8
  %cmp24 = icmp ult i64 %conv22, %mul
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.27:                                        ; preds = %if.end.21
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %39 = load i32, i32* %i, align 4, !tbaa !27
  %40 = load i32, i32* %count, align 4, !tbaa !27
  %cmp28 = icmp ult i32 %39, %40
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index30 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %42, i32 0, i32 17
  %43 = load i32, i32* %index30, align 4, !tbaa !216
  %44 = load i32, i32* %i, align 4, !tbaa !27
  %add = add i32 %43, %44
  %idxprom = zext i32 %add to i64
  %45 = load i64*, i64** %cdata, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %45, i64 %idxprom
  %46 = load i64, i64* %arrayidx, align 8, !tbaa !68
  store i64 %46, i64* %chr, align 8, !tbaa !68
  %47 = load i64, i64* %chr, align 8, !tbaa !68
  %and31 = and i64 %47, -256
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %for.body
  %48 = load i64, i64* %chr, align 8, !tbaa !68
  %conv35 = trunc i64 %48 to i8
  %49 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom36 = sext i32 %49 to i64
  %50 = load i8*, i8** %buf, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1, !tbaa !115
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33
  %51 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %52 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %for.end, %cleanup, %if.then.26
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i64** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest.40 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.40, label %cleanup.134 [
    i32 0, label %cleanup.cont.41
  ]

cleanup.cont.41:                                  ; preds = %cleanup.38
  br label %if.end.114

if.else.42:                                       ; preds = %if.else
  %55 = load i32, i32* %operation, align 4, !tbaa !27
  %and43 = and i32 %55, 40
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.112

if.then.45:                                       ; preds = %if.else.42
  %56 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %57, i32 0, i32 12
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !217
  store %struct.gs_font_s* %58, %struct.gs_font_s** %font, align 8, !tbaa !1
  %59 = bitcast i32* %size46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %i47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %operation, align 4, !tbaa !27
  %and48 = and i32 %61, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.57

if.then.50:                                       ; preds = %if.then.45
  %62 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text51 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %62, i32 0, i32 0
  %data52 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text51, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data52 to i64**
  %63 = load i64*, i64** %glyphs, align 8, !tbaa !1
  store i64* %63, i64** %gdata, align 8, !tbaa !1
  %64 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text53 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %64, i32 0, i32 0
  %size54 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text53, i32 0, i32 2
  %65 = load i32, i32* %size54, align 4, !tbaa !215
  %66 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index55 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %66, i32 0, i32 17
  %67 = load i32, i32* %index55, align 4, !tbaa !216
  %sub56 = sub i32 %65, %67
  store i32 %sub56, i32* %size46, align 4, !tbaa !27
  br label %if.end.60

if.else.57:                                       ; preds = %if.then.45
  %68 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text58 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %68, i32 0, i32 0
  %data59 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text58, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data59 to i64*
  store i64* %d_glyph, i64** %gdata, align 8, !tbaa !1
  store i32 1, i32* %size46, align 4, !tbaa !27
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.50
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %call61 = call i32 @pdf_is_simple_font(%struct.gs_font_s* %69) #6
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.60
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.64:                                        ; preds = %if.end.60
  store i32 0, i32* %count, align 4, !tbaa !27
  store i32 0, i32* %i47, align 4, !tbaa !27
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.90, %if.end.64
  %70 = load i32, i32* %i47, align 4, !tbaa !27
  %71 = load i32, i32* %size46, align 4, !tbaa !27
  %cmp66 = icmp ult i32 %70, %71
  br i1 %cmp66, label %for.body.68, label %for.end.92

for.body.68:                                      ; preds = %for.cond.65
  %72 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index69 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %73, i32 0, i32 17
  %74 = load i32, i32* %index69, align 4, !tbaa !216
  %75 = load i32, i32* %i47, align 4, !tbaa !27
  %add70 = add i32 %74, %75
  %idxprom71 = zext i32 %add70 to i64
  %76 = load i64*, i64** %gdata, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i64, i64* %76, i64 %idxprom71
  %77 = load i64, i64* %arrayidx72, align 8, !tbaa !68
  store i64 %77, i64* %glyph, align 8, !tbaa !68
  %78 = bitcast i32* %char_code_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %80 = bitcast %struct.gs_font_s* %79 to %struct.gs_font_base_s*
  %81 = load i64, i64* %glyph, align 8, !tbaa !68
  %82 = load i8*, i8** %buf, align 8, !tbaa !1
  %83 = load i32, i32* %count, align 4, !tbaa !27
  %idx.ext73 = zext i32 %83 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %82, i64 %idx.ext73
  %84 = load i32, i32* %size46, align 4, !tbaa !27
  %85 = load i32, i32* %count, align 4, !tbaa !27
  %sub75 = sub i32 %84, %85
  %call76 = call i32 @pdf_encode_glyph(%struct.gs_font_base_s* %80, i64 %81, i8* %add.ptr74, i32 %sub75, i32* %char_code_length) #6
  store i32 %call76, i32* %code, align 4, !tbaa !27
  %86 = load i32, i32* %code, align 4, !tbaa !27
  %cmp77 = icmp slt i32 %86, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.68
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.80:                                        ; preds = %for.body.68
  %87 = load i32, i32* %char_code_length, align 4, !tbaa !27
  %88 = load i32, i32* %count, align 4, !tbaa !27
  %add81 = add i32 %88, %87
  store i32 %add81, i32* %count, align 4, !tbaa !27
  %89 = load i32, i32* %operation, align 4, !tbaa !27
  %and82 = and i32 %89, 65536
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.85:                                        ; preds = %if.end.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.85, %if.then.84, %if.then.79
  %90 = bitcast i32* %char_code_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %unreachable [
    i32 0, label %cleanup.cont.89
    i32 5, label %for.end.92
  ]

cleanup.cont.89:                                  ; preds = %cleanup.86
  br label %for.inc.90

for.inc.90:                                       ; preds = %cleanup.cont.89
  %92 = load i32, i32* %i47, align 4, !tbaa !27
  %inc91 = add nsw i32 %92, 1
  store i32 %inc91, i32* %i47, align 4, !tbaa !27
  br label %for.cond.65

for.end.92:                                       ; preds = %cleanup.86, %for.cond.65
  %93 = load i32, i32* %i47, align 4, !tbaa !27
  %94 = load i32, i32* %size46, align 4, !tbaa !27
  %cmp93 = icmp ult i32 %93, %94
  br i1 %cmp93, label %if.then.95, label %if.end.106

if.then.95:                                       ; preds = %for.end.92
  %95 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load i8*, i8** %buf, align 8, !tbaa !1
  %data96 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  store i8* %96, i8** %data96, align 8, !tbaa !67
  %97 = load i32, i32* %size46, align 4, !tbaa !27
  %size97 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 %97, i32* %size97, align 4, !tbaa !52
  %98 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %99 = load i64*, i64** %gdata, align 8, !tbaa !1
  %call98 = call i32 @pdf_obtain_font_resource_unencoded(%struct.pdf_text_enum_s* %98, %struct.gs_string_s* %str, %struct.pdf_font_resource_s** %pdfont, i64* %99) #6
  store i32 %call98, i32* %code, align 4, !tbaa !27
  %100 = load i32, i32* %code, align 4, !tbaa !27
  %cmp99 = icmp slt i32 %100, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.95
  %101 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.103

if.end.102:                                       ; preds = %if.then.95
  %102 = load i32, i32* %size46, align 4, !tbaa !27
  store i32 %102, i32* %count, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.103

cleanup.103:                                      ; preds = %if.end.102, %if.then.101
  %103 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest.104 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.104, label %cleanup.107 [
    i32 0, label %cleanup.cont.105
  ]

cleanup.cont.105:                                 ; preds = %cleanup.103
  br label %if.end.106

if.end.106:                                       ; preds = %cleanup.cont.105, %for.end.92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %if.end.106, %cleanup.103, %if.then.63
  %104 = bitcast i32* %i47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %size46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %cleanup.dest.110 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.110, label %cleanup.134 [
    i32 0, label %cleanup.cont.111
  ]

cleanup.cont.111:                                 ; preds = %cleanup.107
  br label %if.end.113

if.else.112:                                      ; preds = %if.else.42
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.113:                                       ; preds = %cleanup.cont.111
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %cleanup.cont.41
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end
  %107 = load i8*, i8** %buf, align 8, !tbaa !1
  %data116 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  store i8* %107, i8** %data116, align 8, !tbaa !67
  %108 = load i32, i32* %count, align 4, !tbaa !27
  %cmp117 = icmp ugt i32 %108, 1
  br i1 %cmp117, label %land.lhs.true, label %if.else.130

land.lhs.true:                                    ; preds = %if.end.115
  %109 = load i32, i32* %operation, align 4, !tbaa !27
  %and119 = and i32 %109, 65536
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.121, label %if.else.130

if.then.121:                                      ; preds = %land.lhs.true
  %size122 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 1, i32* %size122, align 4, !tbaa !52
  %110 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %111 = load i64*, i64** %gdata, align 8, !tbaa !1
  %call123 = call i32 @pdf_process_string_aux(%struct.pdf_text_enum_s* %110, %struct.gs_string_s* %str, i64* %111, %struct.gs_matrix_s* null, %struct.pdf_text_process_state_s* %text_state) #6
  store i32 %call123, i32* %code, align 4, !tbaa !27
  %112 = load i32, i32* %code, align 4, !tbaa !27
  %cmp124 = icmp sge i32 %112, 0
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.then.121
  %113 = load i8*, i8** %buf, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %113, i64 0
  %114 = load i8, i8* %arrayidx127, align 1, !tbaa !115
  %conv128 = zext i8 %114 to i64
  %115 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %115, i32 0, i32 28
  %current_char = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 0
  store i64 %conv128, i64* %current_char, align 8, !tbaa !218
  store i32 2, i32* %code, align 4, !tbaa !27
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.then.121
  br label %if.end.133

if.else.130:                                      ; preds = %land.lhs.true, %if.end.115
  %116 = load i32, i32* %count, align 4, !tbaa !27
  %size131 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 %116, i32* %size131, align 4, !tbaa !52
  %117 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %118 = load i64*, i64** %gdata, align 8, !tbaa !1
  %call132 = call i32 @pdf_process_string_aux(%struct.pdf_text_enum_s* %117, %struct.gs_string_s* %str, i64* %118, %struct.gs_matrix_s* null, %struct.pdf_text_process_state_s* %text_state) #6
  store i32 %call132, i32* %code, align 4, !tbaa !27
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.end.129
  %119 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %if.else.112, %cleanup.107, %cleanup.38, %if.then.3
  %120 = bitcast i64** %gdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.end(i64 64, i8* %121) #1
  %122 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %122) #1
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128

unreachable:                                      ; preds = %cleanup.86
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @pdf_is_simple_font(%struct.gs_font_s*) #4

declare i32 @pdf_obtain_font_resource_unencoded(%struct.pdf_text_enum_s*, %struct.gs_string_s*, %struct.pdf_font_resource_s**, i64*) #4

declare i32 @bytes_compare(i8*, i32, i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @process_resources2(i8* %client_data, i8* %key_data, i32 %key_size, %struct.cos_value_s* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %key_data.addr = alloca i8*, align 8
  %key_size.addr = alloca i32, align 4
  %v.addr = alloca %struct.cos_value_s*, align 8
  %data = alloca %struct.pdf_resource_enum_data_t*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store i8* %key_data, i8** %key_data.addr, align 8, !tbaa !1
  store i32 %key_size, i32* %key_size.addr, align 4, !tbaa !27
  store %struct.cos_value_s* %v, %struct.cos_value_s** %v.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_enum_data_t** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_resource_enum_data_t*
  store %struct.pdf_resource_enum_data_t* %2, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_resource_enum_data_t*, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.pdf_resource_enum_data_t, %struct.pdf_resource_enum_data_t* %4, i32 0, i32 0
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !130
  %6 = load %struct.pdf_resource_enum_data_t*, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %rtype = getelementptr inbounds %struct.pdf_resource_enum_data_t, %struct.pdf_resource_enum_data_t* %6, i32 0, i32 1
  %7 = load i32, i32* %rtype, align 4, !tbaa !134
  %8 = load %struct.cos_value_s*, %struct.cos_value_s** %v.addr, align 8, !tbaa !1
  %contents = getelementptr inbounds %struct.cos_value_s, %struct.cos_value_s* %8, i32 0, i32 1
  %object = bitcast %union.vc_* %contents to %struct.cos_object_s**
  %9 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %9, i32 0, i32 1
  %10 = load i64, i64* %id, align 8, !tbaa !219
  %call = call %struct.pdf_resource_s* @pdf_find_resource_by_resource_id(%struct.gx_device_pdf_s* %5, i32 %7, i64 %10) #6
  store %struct.pdf_resource_s* %call, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %11 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_resource_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.pdf_resource_enum_data_t*, %struct.pdf_resource_enum_data_t** %data, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.pdf_resource_enum_data_t, %struct.pdf_resource_enum_data_t* %12, i32 0, i32 0
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !130
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 164
  %14 = load i64, i64* %used_mask, align 8, !tbaa !127
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %15, i32 0, i32 6
  %16 = load i64, i64* %where_used, align 8, !tbaa !222
  %or = or i64 %16, %14
  store i64 %or, i64* %where_used, align 8, !tbaa !222
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.pdf_resource_enum_data_t** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare %struct.pdf_resource_s* @pdf_find_resource_by_resource_id(%struct.gx_device_pdf_s*, i32, i64) #4

declare i32 @pdf_obtain_font_resource(%struct.pdf_text_enum_s*, %struct.gs_string_s*, %struct.pdf_font_resource_s**) #4

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #4

; Function Attrs: nounwind uwtable
define internal i32 @process_text_estimate_bbox(%struct.pdf_text_enum_s* %pte, %struct.gs_font_base_s* %font, %struct.gs_const_string_s* %pstr, %struct.gs_matrix_s* %pfmat, %struct.gs_rect_s* %text_bbox, %struct.gs_point_s* %pdpt) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.pdf_text_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %text_bbox.addr = alloca %struct.gs_rect_s*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  %i = alloca i32, align 4
  %space_char = alloca i32, align 4
  %WMode = alloca i32, align 4
  %code = alloca i32, align 4
  %total = alloca %struct.gs_point_s, align 8
  %origin = alloca %struct.gs_fixed_point_s, align 4
  %m = alloca %struct.gs_matrix_s, align 4
  %xy_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  %bbox = alloca %struct.gs_rect_s, align 8
  %wanted = alloca %struct.gs_point_s, align 8
  %tpt = alloca %struct.gs_point_s, align 8
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %p2 = alloca %struct.gs_point_s, align 8
  %p3 = alloca %struct.gs_point_s, align 8
  %glyph = alloca i64, align 8
  %info = alloca %struct.gs_glyph_info_s, align 8
  %code30 = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.pdf_text_enum_s* %pte, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %text_bbox, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %2, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %3 = load i32, i32* %operation, align 4, !tbaa !72
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %4, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %5 = load i64, i64* %s_char, align 8, !tbaa !68
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ -1, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %space_char, align 4, !tbaa !27
  %6 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %WMode2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 16
  %8 = load i32, i32* %WMode2, align 4, !tbaa !189
  store i32 %8, i32* %WMode, align 4, !tbaa !27
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !27
  %10 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.gs_fixed_point_s* %origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index3 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %15, i32 0, i32 18
  %16 = load i32, i32* %xy_index3, align 4, !tbaa !69
  store i32 %16, i32* %xy_index, align 4, !tbaa !27
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %17, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %18 = load double, double* %x, align 8, !tbaa !61
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox4 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox4, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %20 = load double, double* %x5, align 8, !tbaa !62
  %cmp = fcmp oeq double %18, %20
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox7 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 23
  %p8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox7, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p8, i32 0, i32 1
  %22 = load double, double* %y, align 8, !tbaa !63
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox9 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 23
  %q10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox9, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q10, i32 0, i32 1
  %24 = load double, double* %y11, align 8, !tbaa !64
  %cmp12 = fcmp oeq double %22, %24
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end:                                           ; preds = %lor.lhs.false
  %25 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %25, i32 0, i32 5
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !29
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %26, %struct.gs_fixed_point_s* %origin) #6
  store i32 %call, i32* %code, align 4, !tbaa !27
  %27 = load i32, i32* %code, align 4, !tbaa !27
  %cmp14 = icmp slt i32 %27, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end.17:                                        ; preds = %if.end
  %29 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %29, i32 0, i32 3
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 5
  %31 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %32 = bitcast %struct.gs_matrix_s* %m to i8*
  %33 = bitcast %struct.gs_matrix_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 4, i1 false), !tbaa.struct !55
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %34 = load i32, i32* %x18, align 4, !tbaa !57
  %conv19 = sitofp i32 %34 to double
  %mul = fmul double %conv19, 3.906250e-03
  %conv20 = fptrunc double %mul to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv20, float* %tx, align 4, !tbaa !58
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 1
  %35 = load i32, i32* %y21, align 4, !tbaa !59
  %conv22 = sitofp i32 %35 to double
  %mul23 = fmul double %conv22, 3.906250e-03
  %conv24 = fptrunc double %mul23 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv24, float* %ty, align 4, !tbaa !60
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call25 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %36, %struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #6
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %37 = load i32, i32* %i, align 4, !tbaa !27
  %38 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %38, i32 0, i32 1
  %39 = load i32, i32* %size, align 4, !tbaa !113
  %cmp26 = icmp ult i32 %37, %39
  br i1 %cmp26, label %for.body, label %for.end.440

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %40 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8, !tbaa !114
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 %idxprom
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !115
  store i8 %43, i8* %c, align 1, !tbaa !115
  %44 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %44) #1
  %45 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #1
  %47 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %47) #1
  %48 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %48) #1
  %49 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %49) #1
  %50 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %52, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %53 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !212
  %54 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gs_font_base_s* %54 to %struct.gs_font_s*
  %56 = load i8, i8* %c, align 1, !tbaa !115
  %conv28 = zext i8 %56 to i64
  %call29 = call i64 %53(%struct.gs_font_s* %55, i64 %conv28, i32 0) #6
  store i64 %call29, i64* %glyph, align 8, !tbaa !68
  %57 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 104, i8* %57) #1
  %58 = bitcast i32* %code30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i64, i64* %glyph, align 8, !tbaa !68
  %cmp31 = icmp eq i64 %59, 2147483647
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.34:                                        ; preds = %for.body
  %60 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %60, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs35, i32 0, i32 7
  %61 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !224
  %62 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gs_font_base_s* %62 to %struct.gs_font_s*
  %64 = load i64, i64* %glyph, align 8, !tbaa !68
  %65 = load i32, i32* %WMode, align 4, !tbaa !27
  %shl = shl i32 1, %65
  %call36 = call i32 %61(%struct.gs_font_s* %63, i64 %64, %struct.gs_matrix_s* null, i32 %shl, %struct.gs_glyph_info_s* %info) #6
  store i32 %call36, i32* %code30, align 4, !tbaa !27
  %66 = load i32, i32* %code30, align 4, !tbaa !27
  %cmp37 = icmp slt i32 %66, 0
  br i1 %cmp37, label %if.then.39, label %if.end.72

if.then.39:                                       ; preds = %if.end.34
  %67 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %67, i32 0, i32 11
  %68 = load i32, i32* %FontType, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %68, 1
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.then.39
  %69 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType43 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %69, i32 0, i32 11
  %70 = load i32, i32* %FontType43, align 4, !tbaa !17
  %cmp44 = icmp eq i32 %70, 2
  br i1 %cmp44, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %lor.lhs.false.42, %if.then.39
  %71 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %index, align 4, !tbaa !27
  br label %for.cond.47

for.cond.47:                                      ; preds = %if.then.46
  %72 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %72, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs48, i32 0, i32 6
  %73 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !225
  %74 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gs_font_base_s* %74 to %struct.gs_font_s*
  %call49 = call i32 %73(%struct.gs_font_s* %75, i32* %index, i32 0, i64* %glyph) #6
  %cmp50 = icmp sge i32 %call49, 0
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.47
  %76 = load i32, i32* %index, align 4, !tbaa !27
  %cmp52 = icmp ne i32 %76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.47
  %77 = phi i1 [ false, %for.cond.47 ], [ %cmp52, %land.rhs ]
  br i1 %77, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %land.end
  %78 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %79 = load i64, i64* %glyph, align 8, !tbaa !68
  %call55 = call i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s* %78, i64 %79) #6
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %for.body.54
  %80 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %80, i32 0, i32 20
  %glyph_info59 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs58, i32 0, i32 7
  %81 = load i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info59, align 8, !tbaa !224
  %82 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gs_font_base_s* %82 to %struct.gs_font_s*
  %84 = load i64, i64* %glyph, align 8, !tbaa !68
  %85 = load i32, i32* %WMode, align 4, !tbaa !27
  %shl60 = shl i32 1, %85
  %call61 = call i32 %81(%struct.gs_font_s* %83, i64 %84, %struct.gs_matrix_s* null, i32 %shl60, %struct.gs_glyph_info_s* %info) #6
  store i32 %call61, i32* %code30, align 4, !tbaa !27
  %86 = load i32, i32* %code30, align 4, !tbaa !27
  %cmp62 = icmp slt i32 %86, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.57
  %87 = load i32, i32* %code30, align 4, !tbaa !27
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.then.57
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %for.body.54
  br label %for.end

for.end:                                          ; preds = %if.end.66, %land.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.64
  %88 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.426 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.67

if.end.67:                                        ; preds = %cleanup.cont, %lor.lhs.false.42
  %89 = load i32, i32* %code30, align 4, !tbaa !27
  %cmp68 = icmp slt i32 %89, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %90 = load i32, i32* %code30, align 4, !tbaa !27
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.71:                                        ; preds = %if.end.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.34
  %91 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox73 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %91, i32 0, i32 23
  %p74 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox73, i32 0, i32 0
  %x75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p74, i32 0, i32 0
  %92 = load double, double* %x75, align 8, !tbaa !61
  %93 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox76 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %93, i32 0, i32 23
  %p77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox76, i32 0, i32 0
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p77, i32 0, i32 1
  %94 = load double, double* %y78, align 8, !tbaa !63
  %call79 = call i32 @gs_point_transform(double %92, double %94, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p0) #6
  %95 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox80 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %95, i32 0, i32 23
  %p81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox80, i32 0, i32 0
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p81, i32 0, i32 0
  %96 = load double, double* %x82, align 8, !tbaa !61
  %97 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox83 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %97, i32 0, i32 23
  %q84 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox83, i32 0, i32 1
  %y85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q84, i32 0, i32 1
  %98 = load double, double* %y85, align 8, !tbaa !64
  %call86 = call i32 @gs_point_transform(double %96, double %98, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p1) #6
  %99 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox87 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %99, i32 0, i32 23
  %q88 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox87, i32 0, i32 1
  %x89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q88, i32 0, i32 0
  %100 = load double, double* %x89, align 8, !tbaa !62
  %101 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox90 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %101, i32 0, i32 23
  %p91 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox90, i32 0, i32 0
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p91, i32 0, i32 1
  %102 = load double, double* %y92, align 8, !tbaa !63
  %call93 = call i32 @gs_point_transform(double %100, double %102, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p2) #6
  %103 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox94 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %103, i32 0, i32 23
  %q95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox94, i32 0, i32 1
  %x96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q95, i32 0, i32 0
  %104 = load double, double* %x96, align 8, !tbaa !62
  %105 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox97 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %105, i32 0, i32 23
  %q98 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox97, i32 0, i32 1
  %y99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q98, i32 0, i32 1
  %106 = load double, double* %y99, align 8, !tbaa !64
  %call100 = call i32 @gs_point_transform(double %104, double %106, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p3) #6
  %x101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %107 = load double, double* %x101, align 8, !tbaa !65
  %x102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %108 = load double, double* %x102, align 8, !tbaa !65
  %cmp103 = fcmp olt double %107, %108
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %if.end.72
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %109 = load double, double* %x106, align 8, !tbaa !65
  br label %cond.end.109

cond.false.107:                                   ; preds = %if.end.72
  %x108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %110 = load double, double* %x108, align 8, !tbaa !65
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi double [ %109, %cond.true.105 ], [ %110, %cond.false.107 ]
  %x111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %111 = load double, double* %x111, align 8, !tbaa !65
  %x112 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %112 = load double, double* %x112, align 8, !tbaa !65
  %cmp113 = fcmp olt double %111, %112
  br i1 %cmp113, label %cond.true.115, label %cond.false.117

cond.true.115:                                    ; preds = %cond.end.109
  %x116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %113 = load double, double* %x116, align 8, !tbaa !65
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.end.109
  %x118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %114 = load double, double* %x118, align 8, !tbaa !65
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.115
  %cond120 = phi double [ %113, %cond.true.115 ], [ %114, %cond.false.117 ]
  %cmp121 = fcmp olt double %cond110, %cond120
  br i1 %cmp121, label %cond.true.123, label %cond.false.134

cond.true.123:                                    ; preds = %cond.end.119
  %x124 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %115 = load double, double* %x124, align 8, !tbaa !65
  %x125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %116 = load double, double* %x125, align 8, !tbaa !65
  %cmp126 = fcmp olt double %115, %116
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.true.123
  %x129 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %117 = load double, double* %x129, align 8, !tbaa !65
  br label %cond.end.132

cond.false.130:                                   ; preds = %cond.true.123
  %x131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %118 = load double, double* %x131, align 8, !tbaa !65
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.128
  %cond133 = phi double [ %117, %cond.true.128 ], [ %118, %cond.false.130 ]
  br label %cond.end.145

cond.false.134:                                   ; preds = %cond.end.119
  %x135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %119 = load double, double* %x135, align 8, !tbaa !65
  %x136 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %120 = load double, double* %x136, align 8, !tbaa !65
  %cmp137 = fcmp olt double %119, %120
  br i1 %cmp137, label %cond.true.139, label %cond.false.141

cond.true.139:                                    ; preds = %cond.false.134
  %x140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %121 = load double, double* %x140, align 8, !tbaa !65
  br label %cond.end.143

cond.false.141:                                   ; preds = %cond.false.134
  %x142 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %122 = load double, double* %x142, align 8, !tbaa !65
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.141, %cond.true.139
  %cond144 = phi double [ %121, %cond.true.139 ], [ %122, %cond.false.141 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end.143, %cond.end.132
  %cond146 = phi double [ %cond133, %cond.end.132 ], [ %cond144, %cond.end.143 ]
  %x147 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %123 = load double, double* %x147, align 8, !tbaa !65
  %add = fadd double %cond146, %123
  %p148 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p148, i32 0, i32 0
  store double %add, double* %x149, align 8, !tbaa !45
  %y150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %124 = load double, double* %y150, align 8, !tbaa !66
  %y151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %125 = load double, double* %y151, align 8, !tbaa !66
  %cmp152 = fcmp olt double %124, %125
  br i1 %cmp152, label %cond.true.154, label %cond.false.156

cond.true.154:                                    ; preds = %cond.end.145
  %y155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %126 = load double, double* %y155, align 8, !tbaa !66
  br label %cond.end.158

cond.false.156:                                   ; preds = %cond.end.145
  %y157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %127 = load double, double* %y157, align 8, !tbaa !66
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.true.154
  %cond159 = phi double [ %126, %cond.true.154 ], [ %127, %cond.false.156 ]
  %y160 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %128 = load double, double* %y160, align 8, !tbaa !66
  %y161 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %129 = load double, double* %y161, align 8, !tbaa !66
  %cmp162 = fcmp olt double %128, %129
  br i1 %cmp162, label %cond.true.164, label %cond.false.166

cond.true.164:                                    ; preds = %cond.end.158
  %y165 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %130 = load double, double* %y165, align 8, !tbaa !66
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.end.158
  %y167 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %131 = load double, double* %y167, align 8, !tbaa !66
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.164
  %cond169 = phi double [ %130, %cond.true.164 ], [ %131, %cond.false.166 ]
  %cmp170 = fcmp olt double %cond159, %cond169
  br i1 %cmp170, label %cond.true.172, label %cond.false.183

cond.true.172:                                    ; preds = %cond.end.168
  %y173 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %132 = load double, double* %y173, align 8, !tbaa !66
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %133 = load double, double* %y174, align 8, !tbaa !66
  %cmp175 = fcmp olt double %132, %133
  br i1 %cmp175, label %cond.true.177, label %cond.false.179

cond.true.177:                                    ; preds = %cond.true.172
  %y178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %134 = load double, double* %y178, align 8, !tbaa !66
  br label %cond.end.181

cond.false.179:                                   ; preds = %cond.true.172
  %y180 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %135 = load double, double* %y180, align 8, !tbaa !66
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.177
  %cond182 = phi double [ %134, %cond.true.177 ], [ %135, %cond.false.179 ]
  br label %cond.end.194

cond.false.183:                                   ; preds = %cond.end.168
  %y184 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %136 = load double, double* %y184, align 8, !tbaa !66
  %y185 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %137 = load double, double* %y185, align 8, !tbaa !66
  %cmp186 = fcmp olt double %136, %137
  br i1 %cmp186, label %cond.true.188, label %cond.false.190

cond.true.188:                                    ; preds = %cond.false.183
  %y189 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %138 = load double, double* %y189, align 8, !tbaa !66
  br label %cond.end.192

cond.false.190:                                   ; preds = %cond.false.183
  %y191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %139 = load double, double* %y191, align 8, !tbaa !66
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.190, %cond.true.188
  %cond193 = phi double [ %138, %cond.true.188 ], [ %139, %cond.false.190 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.end.181
  %cond195 = phi double [ %cond182, %cond.end.181 ], [ %cond193, %cond.end.192 ]
  %y196 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %140 = load double, double* %y196, align 8, !tbaa !66
  %add197 = fadd double %cond195, %140
  %p198 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y199 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p198, i32 0, i32 1
  store double %add197, double* %y199, align 8, !tbaa !47
  %x200 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %141 = load double, double* %x200, align 8, !tbaa !65
  %x201 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %142 = load double, double* %x201, align 8, !tbaa !65
  %cmp202 = fcmp ogt double %141, %142
  br i1 %cmp202, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %cond.end.194
  %x205 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %143 = load double, double* %x205, align 8, !tbaa !65
  br label %cond.end.208

cond.false.206:                                   ; preds = %cond.end.194
  %x207 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %144 = load double, double* %x207, align 8, !tbaa !65
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.206, %cond.true.204
  %cond209 = phi double [ %143, %cond.true.204 ], [ %144, %cond.false.206 ]
  %x210 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %145 = load double, double* %x210, align 8, !tbaa !65
  %x211 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %146 = load double, double* %x211, align 8, !tbaa !65
  %cmp212 = fcmp ogt double %145, %146
  br i1 %cmp212, label %cond.true.214, label %cond.false.216

cond.true.214:                                    ; preds = %cond.end.208
  %x215 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %147 = load double, double* %x215, align 8, !tbaa !65
  br label %cond.end.218

cond.false.216:                                   ; preds = %cond.end.208
  %x217 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %148 = load double, double* %x217, align 8, !tbaa !65
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.214
  %cond219 = phi double [ %147, %cond.true.214 ], [ %148, %cond.false.216 ]
  %cmp220 = fcmp ogt double %cond209, %cond219
  br i1 %cmp220, label %cond.true.222, label %cond.false.233

cond.true.222:                                    ; preds = %cond.end.218
  %x223 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %149 = load double, double* %x223, align 8, !tbaa !65
  %x224 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %150 = load double, double* %x224, align 8, !tbaa !65
  %cmp225 = fcmp ogt double %149, %150
  br i1 %cmp225, label %cond.true.227, label %cond.false.229

cond.true.227:                                    ; preds = %cond.true.222
  %x228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %151 = load double, double* %x228, align 8, !tbaa !65
  br label %cond.end.231

cond.false.229:                                   ; preds = %cond.true.222
  %x230 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %152 = load double, double* %x230, align 8, !tbaa !65
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.229, %cond.true.227
  %cond232 = phi double [ %151, %cond.true.227 ], [ %152, %cond.false.229 ]
  br label %cond.end.244

cond.false.233:                                   ; preds = %cond.end.218
  %x234 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %153 = load double, double* %x234, align 8, !tbaa !65
  %x235 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %154 = load double, double* %x235, align 8, !tbaa !65
  %cmp236 = fcmp ogt double %153, %154
  br i1 %cmp236, label %cond.true.238, label %cond.false.240

cond.true.238:                                    ; preds = %cond.false.233
  %x239 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %155 = load double, double* %x239, align 8, !tbaa !65
  br label %cond.end.242

cond.false.240:                                   ; preds = %cond.false.233
  %x241 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %156 = load double, double* %x241, align 8, !tbaa !65
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.240, %cond.true.238
  %cond243 = phi double [ %155, %cond.true.238 ], [ %156, %cond.false.240 ]
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.end.242, %cond.end.231
  %cond245 = phi double [ %cond232, %cond.end.231 ], [ %cond243, %cond.end.242 ]
  %x246 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %157 = load double, double* %x246, align 8, !tbaa !65
  %add247 = fadd double %cond245, %157
  %q248 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x249 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q248, i32 0, i32 0
  store double %add247, double* %x249, align 8, !tbaa !49
  %y250 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %158 = load double, double* %y250, align 8, !tbaa !66
  %y251 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %159 = load double, double* %y251, align 8, !tbaa !66
  %cmp252 = fcmp ogt double %158, %159
  br i1 %cmp252, label %cond.true.254, label %cond.false.256

cond.true.254:                                    ; preds = %cond.end.244
  %y255 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %160 = load double, double* %y255, align 8, !tbaa !66
  br label %cond.end.258

cond.false.256:                                   ; preds = %cond.end.244
  %y257 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %161 = load double, double* %y257, align 8, !tbaa !66
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.256, %cond.true.254
  %cond259 = phi double [ %160, %cond.true.254 ], [ %161, %cond.false.256 ]
  %y260 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %162 = load double, double* %y260, align 8, !tbaa !66
  %y261 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %163 = load double, double* %y261, align 8, !tbaa !66
  %cmp262 = fcmp ogt double %162, %163
  br i1 %cmp262, label %cond.true.264, label %cond.false.266

cond.true.264:                                    ; preds = %cond.end.258
  %y265 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %164 = load double, double* %y265, align 8, !tbaa !66
  br label %cond.end.268

cond.false.266:                                   ; preds = %cond.end.258
  %y267 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %165 = load double, double* %y267, align 8, !tbaa !66
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.266, %cond.true.264
  %cond269 = phi double [ %164, %cond.true.264 ], [ %165, %cond.false.266 ]
  %cmp270 = fcmp ogt double %cond259, %cond269
  br i1 %cmp270, label %cond.true.272, label %cond.false.283

cond.true.272:                                    ; preds = %cond.end.268
  %y273 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %166 = load double, double* %y273, align 8, !tbaa !66
  %y274 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %167 = load double, double* %y274, align 8, !tbaa !66
  %cmp275 = fcmp ogt double %166, %167
  br i1 %cmp275, label %cond.true.277, label %cond.false.279

cond.true.277:                                    ; preds = %cond.true.272
  %y278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %168 = load double, double* %y278, align 8, !tbaa !66
  br label %cond.end.281

cond.false.279:                                   ; preds = %cond.true.272
  %y280 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %169 = load double, double* %y280, align 8, !tbaa !66
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.279, %cond.true.277
  %cond282 = phi double [ %168, %cond.true.277 ], [ %169, %cond.false.279 ]
  br label %cond.end.294

cond.false.283:                                   ; preds = %cond.end.268
  %y284 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %170 = load double, double* %y284, align 8, !tbaa !66
  %y285 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %171 = load double, double* %y285, align 8, !tbaa !66
  %cmp286 = fcmp ogt double %170, %171
  br i1 %cmp286, label %cond.true.288, label %cond.false.290

cond.true.288:                                    ; preds = %cond.false.283
  %y289 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %172 = load double, double* %y289, align 8, !tbaa !66
  br label %cond.end.292

cond.false.290:                                   ; preds = %cond.false.283
  %y291 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %173 = load double, double* %y291, align 8, !tbaa !66
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.290, %cond.true.288
  %cond293 = phi double [ %172, %cond.true.288 ], [ %173, %cond.false.290 ]
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.end.292, %cond.end.281
  %cond295 = phi double [ %cond282, %cond.end.281 ], [ %cond293, %cond.end.292 ]
  %y296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %174 = load double, double* %y296, align 8, !tbaa !66
  %add297 = fadd double %cond295, %174
  %q298 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y299 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q298, i32 0, i32 1
  store double %add297, double* %y299, align 8, !tbaa !51
  %175 = load i32, i32* %i, align 4, !tbaa !27
  %cmp300 = icmp eq i32 %175, 0
  br i1 %cmp300, label %if.then.302, label %if.else

if.then.302:                                      ; preds = %cond.end.294
  %176 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %177 = bitcast %struct.gs_rect_s* %176 to i8*
  %178 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 32, i32 8, i1 false), !tbaa.struct !226
  br label %if.end.351

if.else:                                          ; preds = %cond.end.294
  br label %do.body

do.body:                                          ; preds = %if.else
  %p303 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x304 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p303, i32 0, i32 0
  %179 = load double, double* %x304, align 8, !tbaa !45
  %180 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p305 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %180, i32 0, i32 0
  %x306 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p305, i32 0, i32 0
  %181 = load double, double* %x306, align 8, !tbaa !45
  %cmp307 = fcmp olt double %179, %181
  br i1 %cmp307, label %if.then.309, label %if.end.314

if.then.309:                                      ; preds = %do.body
  %p310 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x311 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p310, i32 0, i32 0
  %182 = load double, double* %x311, align 8, !tbaa !45
  %183 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p312 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %183, i32 0, i32 0
  %x313 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p312, i32 0, i32 0
  store double %182, double* %x313, align 8, !tbaa !45
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.309, %do.body
  %q315 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x316 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q315, i32 0, i32 0
  %184 = load double, double* %x316, align 8, !tbaa !49
  %185 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q317 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %185, i32 0, i32 1
  %x318 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q317, i32 0, i32 0
  %186 = load double, double* %x318, align 8, !tbaa !49
  %cmp319 = fcmp ogt double %184, %186
  br i1 %cmp319, label %if.then.321, label %if.end.326

if.then.321:                                      ; preds = %if.end.314
  %q322 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x323 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q322, i32 0, i32 0
  %187 = load double, double* %x323, align 8, !tbaa !49
  %188 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q324 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %188, i32 0, i32 1
  %x325 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q324, i32 0, i32 0
  store double %187, double* %x325, align 8, !tbaa !49
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.321, %if.end.314
  %p327 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y328 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p327, i32 0, i32 1
  %189 = load double, double* %y328, align 8, !tbaa !47
  %190 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p329 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %190, i32 0, i32 0
  %y330 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p329, i32 0, i32 1
  %191 = load double, double* %y330, align 8, !tbaa !47
  %cmp331 = fcmp olt double %189, %191
  br i1 %cmp331, label %if.then.333, label %if.end.338

if.then.333:                                      ; preds = %if.end.326
  %p334 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y335 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p334, i32 0, i32 1
  %192 = load double, double* %y335, align 8, !tbaa !47
  %193 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p336 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %193, i32 0, i32 0
  %y337 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p336, i32 0, i32 1
  store double %192, double* %y337, align 8, !tbaa !47
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.333, %if.end.326
  %q339 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y340 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q339, i32 0, i32 1
  %194 = load double, double* %y340, align 8, !tbaa !51
  %195 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q341 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %195, i32 0, i32 1
  %y342 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q341, i32 0, i32 1
  %196 = load double, double* %y342, align 8, !tbaa !51
  %cmp343 = fcmp ogt double %194, %196
  br i1 %cmp343, label %if.then.345, label %if.end.350

if.then.345:                                      ; preds = %if.end.338
  %q346 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y347 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q346, i32 0, i32 1
  %197 = load double, double* %y347, align 8, !tbaa !51
  %198 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q348 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %198, i32 0, i32 1
  %y349 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q348, i32 0, i32 1
  store double %197, double* %y349, align 8, !tbaa !51
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.345, %if.end.338
  br label %do.cond

do.cond:                                          ; preds = %if.end.350
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.351

if.end.351:                                       ; preds = %do.end, %if.then.302
  %199 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text352 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %199, i32 0, i32 0
  %operation353 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text352, i32 0, i32 0
  %200 = load i32, i32* %operation353, align 4, !tbaa !72
  %and354 = and i32 %200, 256
  %tobool355 = icmp ne i32 %and354, 0
  br i1 %tobool355, label %if.then.356, label %if.else.364

if.then.356:                                      ; preds = %if.end.351
  %201 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text357 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %201, i32 0, i32 0
  %202 = load i32, i32* %xy_index, align 4, !tbaa !27
  %inc = add nsw i32 %202, 1
  store i32 %inc, i32* %xy_index, align 4, !tbaa !27
  %call358 = call i32 @gs_text_replaced_width(%struct.gs_text_params_s* %text357, i32 %202, %struct.gs_point_s* %tpt) #6
  %x359 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %203 = load double, double* %x359, align 8, !tbaa !65
  %y360 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %204 = load double, double* %y360, align 8, !tbaa !66
  %205 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis361 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %205, i32 0, i32 3
  %206 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis361, align 8, !tbaa !31
  %ctm362 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %206, i32 0, i32 5
  %207 = bitcast %struct.gs_matrix_fixed_s* %ctm362 to %struct.gs_matrix_s*
  %call363 = call i32 @gs_distance_transform(double %203, double %204, %struct.gs_matrix_s* %207, %struct.gs_point_s* %wanted) #6
  br label %if.end.419

if.else.364:                                      ; preds = %if.end.351
  %208 = load i32, i32* %WMode, align 4, !tbaa !27
  %idxprom365 = sext i32 %208 to i64
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom365
  %x367 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx366, i32 0, i32 0
  %209 = load double, double* %x367, align 8, !tbaa !65
  %210 = load i32, i32* %WMode, align 4, !tbaa !27
  %idxprom368 = sext i32 %210 to i64
  %width369 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %info, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width369, i32 0, i64 %idxprom368
  %y371 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx370, i32 0, i32 1
  %211 = load double, double* %y371, align 8, !tbaa !66
  %call372 = call i32 @gs_distance_transform(double %209, double %211, %struct.gs_matrix_s* %m, %struct.gs_point_s* %wanted) #6
  %212 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text373 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %212, i32 0, i32 0
  %operation374 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text373, i32 0, i32 0
  %213 = load i32, i32* %operation374, align 4, !tbaa !72
  %and375 = and i32 %213, 64
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %if.then.377, label %if.end.392

if.then.377:                                      ; preds = %if.else.364
  %214 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text378 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %214, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text378, i32 0, i32 3
  %x379 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %215 = load double, double* %x379, align 8, !tbaa !181
  %216 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text380 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %216, i32 0, i32 0
  %delta_all381 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text380, i32 0, i32 3
  %y382 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all381, i32 0, i32 1
  %217 = load double, double* %y382, align 8, !tbaa !182
  %218 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis383 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %218, i32 0, i32 3
  %219 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis383, align 8, !tbaa !31
  %ctm384 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %219, i32 0, i32 5
  %220 = bitcast %struct.gs_matrix_fixed_s* %ctm384 to %struct.gs_matrix_s*
  %call385 = call i32 @gs_distance_transform(double %215, double %217, %struct.gs_matrix_s* %220, %struct.gs_point_s* %tpt) #6
  %x386 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %221 = load double, double* %x386, align 8, !tbaa !65
  %x387 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %222 = load double, double* %x387, align 8, !tbaa !65
  %add388 = fadd double %222, %221
  store double %add388, double* %x387, align 8, !tbaa !65
  %y389 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %223 = load double, double* %y389, align 8, !tbaa !66
  %y390 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %224 = load double, double* %y390, align 8, !tbaa !66
  %add391 = fadd double %224, %223
  store double %add391, double* %y390, align 8, !tbaa !66
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.377, %if.else.364
  %225 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom393 = sext i32 %225 to i64
  %226 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data394 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %226, i32 0, i32 0
  %227 = load i8*, i8** %data394, align 8, !tbaa !114
  %arrayidx395 = getelementptr inbounds i8, i8* %227, i64 %idxprom393
  %228 = load i8, i8* %arrayidx395, align 1, !tbaa !115
  %conv396 = zext i8 %228 to i32
  %229 = load i32, i32* %space_char, align 4, !tbaa !27
  %cmp397 = icmp eq i32 %conv396, %229
  br i1 %cmp397, label %land.lhs.true, label %if.end.418

land.lhs.true:                                    ; preds = %if.end.392
  %230 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text399 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %230, i32 0, i32 0
  %operation400 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text399, i32 0, i32 0
  %231 = load i32, i32* %operation400, align 4, !tbaa !72
  %and401 = and i32 %231, 128
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.then.403, label %if.end.418

if.then.403:                                      ; preds = %land.lhs.true
  %232 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text404 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %232, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text404, i32 0, i32 4
  %x405 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %233 = load double, double* %x405, align 8, !tbaa !183
  %234 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text406 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %234, i32 0, i32 0
  %delta_space407 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text406, i32 0, i32 4
  %y408 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space407, i32 0, i32 1
  %235 = load double, double* %y408, align 8, !tbaa !184
  %236 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis409 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %236, i32 0, i32 3
  %237 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis409, align 8, !tbaa !31
  %ctm410 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %237, i32 0, i32 5
  %238 = bitcast %struct.gs_matrix_fixed_s* %ctm410 to %struct.gs_matrix_s*
  %call411 = call i32 @gs_distance_transform(double %233, double %235, %struct.gs_matrix_s* %238, %struct.gs_point_s* %tpt) #6
  %x412 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %239 = load double, double* %x412, align 8, !tbaa !65
  %x413 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %240 = load double, double* %x413, align 8, !tbaa !65
  %add414 = fadd double %240, %239
  store double %add414, double* %x413, align 8, !tbaa !65
  %y415 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %241 = load double, double* %y415, align 8, !tbaa !66
  %y416 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %242 = load double, double* %y416, align 8, !tbaa !66
  %add417 = fadd double %242, %241
  store double %add417, double* %y416, align 8, !tbaa !66
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.403, %land.lhs.true, %if.end.392
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %if.then.356
  %x420 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 0
  %243 = load double, double* %x420, align 8, !tbaa !65
  %x421 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 0
  %244 = load double, double* %x421, align 8, !tbaa !65
  %add422 = fadd double %244, %243
  store double %add422, double* %x421, align 8, !tbaa !65
  %y423 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wanted, i32 0, i32 1
  %245 = load double, double* %y423, align 8, !tbaa !66
  %y424 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total, i32 0, i32 1
  %246 = load double, double* %y424, align 8, !tbaa !66
  %add425 = fadd double %246, %245
  store double %add425, double* %y424, align 8, !tbaa !66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.426

cleanup.426:                                      ; preds = %if.end.419, %if.then.70, %cleanup, %if.then.33
  %247 = bitcast i32* %code30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast %struct.gs_glyph_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 104, i8* %248) #1
  %249 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %250) #1
  %251 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %251) #1
  %252 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %252) #1
  %253 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %253) #1
  %254 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %254) #1
  %255 = bitcast %struct.gs_point_s* %wanted to i8*
  call void @llvm.lifetime.end(i64 16, i8* %255) #1
  %256 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %256) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %cleanup.dest.437 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.437, label %cleanup.441 [
    i32 0, label %cleanup.cont.438
  ]

cleanup.cont.438:                                 ; preds = %cleanup.426
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.438
  %257 = load i32, i32* %i, align 4, !tbaa !27
  %inc439 = add nsw i32 %257, 1
  store i32 %inc439, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end.440:                                      ; preds = %for.cond
  %258 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %259 = bitcast %struct.gs_point_s* %258 to i8*
  %260 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 16, i32 8, i1 false), !tbaa.struct !110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.441

cleanup.441:                                      ; preds = %for.end.440, %cleanup.426, %if.then.16, %if.then
  %261 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %262) #1
  %263 = bitcast %struct.gs_fixed_point_s* %origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast %struct.gs_point_s* %total to i8*
  call void @llvm.lifetime.end(i64 16, i8* %264) #1
  %265 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %WMode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = load i32, i32* %retval
  ret i32 %269
}

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #4

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #4

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

declare i32 @pdf_update_text_state(%struct.pdf_text_process_state_s*, %struct.pdf_text_enum_s*, %struct.pdf_font_resource_s*, %struct.gs_matrix_s*) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @process_text_return_width(%struct.pdf_text_enum_s* %pte, %struct.gs_font_base_s* %font, %struct.pdf_text_process_state_s* %ppts, %struct.gs_const_string_s* %pstr, i64* %gdata, %struct.gs_point_s* %pdpt, i32* %accepted, %struct.gs_rect_s* %bbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.pdf_text_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %ppts.addr = alloca %struct.pdf_text_process_state_s*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %gdata.addr = alloca i64*, align 8
  %pdpt.addr = alloca %struct.gs_point_s*, align 8
  %accepted.addr = alloca i32*, align 8
  %bbox.addr = alloca %struct.gs_rect_s*, align 8
  %i = alloca i32, align 4
  %w = alloca %struct.gs_point_s, align 8
  %dpt = alloca %struct.gs_point_s, align 8
  %num_spaces = alloca i32, align 4
  %space_char = alloca i32, align 4
  %widths_differ = alloca i32, align 4
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cw = alloca %struct.pdf_glyph_widths_s, align 8
  %ch = alloca i64, align 8
  %gdata_i = alloca i64*, align 8
  %rfont = alloca %struct.gs_font_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %wmode = alloca i32, align 4
  %log2_scale = alloca %struct.gs_log2_scale_point_s, align 4
  %subpix_origin = alloca %struct.gs_fixed_point_s, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %num_chars = alloca i32, align 4
  %tpt = alloca %struct.gs_point_s, align 8
  %tpt279 = alloca %struct.gs_point_s, align 8
  store %struct.pdf_text_enum_s* %pte, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store %struct.pdf_text_process_state_s* %ppts, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store i64* %gdata, i64** %gdata.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pdpt, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  store i32* %accepted, i32** %accepted.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %bbox, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_point_s* %w to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %num_spaces to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %num_spaces, align 4, !tbaa !27
  %4 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %5, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %6 = load i32, i32* %operation, align 4, !tbaa !72
  %and = and i32 %6, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %7, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %8 = load i64, i64* %s_char, align 8, !tbaa !68
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ -1, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %space_char, align 4, !tbaa !27
  %9 = bitcast i32* %widths_differ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %widths_differ, align 4, !tbaa !27
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %12, i32 0, i32 1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !26
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %14, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %15 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_base_s* %17 to %struct.gs_font_s*
  %call = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %16, %struct.gs_font_s* %18, %struct.pdf_font_resource_s** %pdfont, i8** null, double** null, i32* null, i32* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !27
  %19 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %20 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !27
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !66
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !27
  %22 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %22, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !113
  %cmp3 = icmp ult i32 %21, %23
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast %struct.pdf_glyph_widths_s* %cw to i8*
  call void @llvm.lifetime.start(i64 120, i8* %24) #1
  %25 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8, !tbaa !114
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !115
  %conv5 = zext i8 %29 to i64
  store i64 %conv5, i64* %ch, align 8, !tbaa !68
  %Width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy, i32 0, i32 1
  store double 0.000000e+00, double* %y6, align 8, !tbaa !166
  %Width7 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy8 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width7, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy8, i32 0, i32 0
  store double 0.000000e+00, double* %x9, align 8, !tbaa !165
  %real_width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy10 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy10, i32 0, i32 1
  store double 0.000000e+00, double* %y11, align 8, !tbaa !171
  %real_width12 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy13 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width12, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy13, i32 0, i32 0
  store double 0.000000e+00, double* %x14, align 8, !tbaa !170
  %BBox = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store double 0.000000e+00, double* %y15, align 8, !tbaa !190
  %BBox16 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox16, i32 0, i32 1
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q17, i32 0, i32 0
  store double 0.000000e+00, double* %x18, align 8, !tbaa !191
  %BBox19 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox19, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y20, align 8, !tbaa !192
  %BBox21 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox21, i32 0, i32 0
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p22, i32 0, i32 0
  store double 0.000000e+00, double* %x23, align 8, !tbaa !193
  %30 = bitcast i64** %gdata_i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %cmp24 = icmp ne i64* %31, null
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.body
  %32 = load i64*, i64** %gdata.addr, align 8, !tbaa !1
  %33 = load i32, i32* %i, align 4, !tbaa !27
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i64, i64* %32, i64 %idx.ext
  br label %cond.end.28

cond.false.27:                                    ; preds = %for.body
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i64* [ %add.ptr, %cond.true.26 ], [ null, %cond.false.27 ]
  store i64* %cond29, i64** %gdata_i, align 8, !tbaa !1
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %35 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_font_base_s* %35 to %struct.gs_font_s*
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %38 = load i64, i64* %ch, align 8, !tbaa !68
  %39 = load i64*, i64** %gdata_i, align 8, !tbaa !1
  %call30 = call i32 @pdf_encode_string_element(%struct.gx_device_pdf_s* %34, %struct.gs_font_s* %36, %struct.pdf_font_resource_s* %37, i64 %38, i64* %39) #6
  store i32 %call30, i32* %code, align 4, !tbaa !27
  %40 = load i32, i32* %code, align 4, !tbaa !27
  %cmp31 = icmp slt i32 %40, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end.28
  %41 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %cond.end.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33
  %42 = bitcast i64** %gdata_i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.236 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %43 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %43, i32 0, i32 11
  %44 = load i32, i32* %FontType, align 4, !tbaa !17
  %cmp35 = icmp eq i32 %44, 3
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.cont
  %45 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %45, i32 0, i32 11
  %46 = load i32, i32* %FontType37, align 4, !tbaa !17
  %cmp38 = icmp eq i32 %46, 53
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %47 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType41 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %47, i32 0, i32 11
  %48 = load i32, i32* %FontType41, align 4, !tbaa !17
  %cmp42 = icmp eq i32 %48, 52
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType45 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %49, i32 0, i32 11
  %50 = load i32, i32* %FontType45, align 4, !tbaa !17
  %cmp46 = icmp eq i32 %50, 51
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %51 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType49 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %51, i32 0, i32 11
  %52 = load i32, i32* %FontType49, align 4, !tbaa !17
  %cmp50 = icmp eq i32 %52, 54
  br i1 %cmp50, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.48, %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false, %cleanup.cont
  %53 = load i32, i32* %i, align 4, !tbaa !27
  %cmp52 = icmp sgt i32 %53, 0
  br i1 %cmp52, label %land.lhs.true.56, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 214
  %55 = load i32, i32* %charproc_just_accumulated, align 4, !tbaa !185
  %tobool55 = icmp ne i32 %55, 0
  br i1 %tobool55, label %if.else, label %land.lhs.true.56

land.lhs.true.56:                                 ; preds = %lor.lhs.false.54, %land.lhs.true
  %56 = load i64, i64* %ch, align 8, !tbaa !68
  %shr = lshr i64 %56, 3
  %57 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %57, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 6
  %58 = load i8*, i8** %cached, align 8, !tbaa !196
  %arrayidx57 = getelementptr inbounds i8, i8* %58, i64 %shr
  %59 = load i8, i8* %arrayidx57, align 1, !tbaa !115
  %conv58 = zext i8 %59 to i32
  %60 = load i64, i64* %ch, align 8, !tbaa !68
  %and59 = and i64 %60, 7
  %sh_prom = trunc i64 %and59 to i32
  %shr60 = ashr i32 128, %sh_prom
  %and61 = and i32 %conv58, %shr60
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.else, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.56
  store i32 -21, i32* %code, align 4, !tbaa !27
  br label %if.end.123

if.else:                                          ; preds = %land.lhs.true.56, %lor.lhs.false.54, %lor.lhs.false.48
  %61 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType64 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %61, i32 0, i32 11
  %62 = load i32, i32* %FontType64, align 4, !tbaa !17
  %cmp65 = icmp eq i32 %62, 53
  br i1 %cmp65, label %if.then.67, label %if.else.116

if.then.67:                                       ; preds = %if.else
  %63 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %64, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %65 = load i32, i32* %depth, align 4, !tbaa !161
  %cmp68 = icmp slt i32 %65, 0
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.then.67
  %66 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %66, i32 0, i32 12
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !5
  br label %cond.end.75

cond.false.71:                                    ; preds = %if.then.67
  %68 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack72 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %68, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack72, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 0
  %font74 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx73, i32 0, i32 0
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font74, align 8, !tbaa !154
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.71, %cond.true.70
  %cond76 = phi %struct.gs_font_s* [ %67, %cond.true.70 ], [ %69, %cond.false.71 ]
  store %struct.gs_font_s* %cond76, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %70 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack77 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %71, i32 0, i32 19
  %depth78 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack77, i32 0, i32 0
  %72 = load i32, i32* %depth78, align 4, !tbaa !161
  %cmp79 = icmp slt i32 %72, 0
  br i1 %cmp79, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.end.75
  %73 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font82 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %73, i32 0, i32 12
  %74 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font82, align 8, !tbaa !5
  br label %cond.end.91

cond.false.83:                                    ; preds = %cond.end.75
  %75 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack84 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %75, i32 0, i32 19
  %depth85 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack84, i32 0, i32 0
  %76 = load i32, i32* %depth85, align 4, !tbaa !161
  %idxprom86 = sext i32 %76 to i64
  %77 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack87 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %77, i32 0, i32 19
  %items88 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack87, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items88, i32 0, i64 %idxprom86
  %font90 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx89, i32 0, i32 0
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %font90, align 8, !tbaa !154
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.83, %cond.true.81
  %cond92 = phi %struct.gs_font_s* [ %74, %cond.true.81 ], [ %78, %cond.false.83 ]
  store %struct.gs_font_s* %cond92, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %79 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load %struct.gs_font_s*, %struct.gs_font_s** %rfont, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %80, i32 0, i32 16
  %81 = load i32, i32* %WMode, align 4, !tbaa !159
  store i32 %81, i32* %wmode, align 4, !tbaa !27
  %82 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 8, i32 4, i1 false)
  %84 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.memset.p0i8.i64(i8* %85, i8 0, i64 8, i32 4, i1 false)
  %86 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %88 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %88, i32 0, i32 3
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 5
  %90 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call93 = call i32 @gx_lookup_fm_pair(%struct.gs_font_s* %87, %struct.gs_matrix_s* %90, %struct.gs_log2_scale_point_s* %log2_scale, i32 0, %struct.cached_fm_pair_s** %pair) #6
  store i32 %call93, i32* %code, align 4, !tbaa !27
  %91 = load i32, i32* %code, align 4, !tbaa !27
  %cmp94 = icmp slt i32 %91, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %cond.end.91
  %92 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.97:                                        ; preds = %cond.end.91
  %93 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %94 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %95 = load i64, i64* %ch, align 8, !tbaa !68
  %96 = load i32, i32* %wmode, align 4, !tbaa !27
  %call98 = call %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_font_s* %93, %struct.cached_fm_pair_s* %94, i64 %95, i32 %96, i32 1, %struct.gs_fixed_point_s* %subpix_origin) #6
  %cmp99 = icmp eq %struct.cached_char_s* %call98, null
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %if.end.97
  store i32 -21, i32* %code, align 4, !tbaa !27
  br label %if.end.107

if.else.102:                                      ; preds = %if.end.97
  %97 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev103 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %97, i32 0, i32 1
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev103, align 8, !tbaa !26
  %99 = bitcast %struct.gx_device_s* %98 to %struct.gx_device_pdf_s*
  %100 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %100, i32 0, i32 0
  %pdfont104 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values, i32 0, i32 1
  %101 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont104, align 8, !tbaa !156
  %102 = load i64, i64* %ch, align 8, !tbaa !68
  %conv105 = trunc i64 %102 to i32
  %103 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %call106 = call i32 @pdf_char_widths(%struct.gx_device_pdf_s* %99, %struct.pdf_font_resource_s* %101, i32 %conv105, %struct.gs_font_base_s* %103, %struct.pdf_glyph_widths_s* %cw) #6
  store i32 %call106, i32* %code, align 4, !tbaa !27
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.102, %if.then.101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %if.end.107, %if.then.96
  %104 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast %struct.gs_fixed_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.gs_log2_scale_point_s* %log2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast %struct.gs_font_s** %rfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %cleanup.dest.114 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.114, label %cleanup.236 [
    i32 0, label %cleanup.cont.115
  ]

cleanup.cont.115:                                 ; preds = %cleanup.108
  br label %if.end.122

if.else.116:                                      ; preds = %if.else
  %110 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev117 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %110, i32 0, i32 1
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev117, align 8, !tbaa !26
  %112 = bitcast %struct.gx_device_s* %111 to %struct.gx_device_pdf_s*
  %113 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values118 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %113, i32 0, i32 0
  %pdfont119 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values118, i32 0, i32 1
  %114 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont119, align 8, !tbaa !156
  %115 = load i64, i64* %ch, align 8, !tbaa !68
  %conv120 = trunc i64 %115 to i32
  %116 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %call121 = call i32 @pdf_char_widths(%struct.gx_device_pdf_s* %112, %struct.pdf_font_resource_s* %114, i32 %conv120, %struct.gs_font_base_s* %116, %struct.pdf_glyph_widths_s* %cw) #6
  store i32 %call121, i32* %code, align 4, !tbaa !27
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.116, %cleanup.cont.115
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.63
  %117 = load i32, i32* %code, align 4, !tbaa !27
  %cmp124 = icmp slt i32 %117, 0
  br i1 %cmp124, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.end.123
  %118 = load i32, i32* %i, align 4, !tbaa !27
  %tobool127 = icmp ne i32 %118, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.126
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.236

if.end.129:                                       ; preds = %if.then.126
  %119 = load i32*, i32** %accepted.addr, align 8, !tbaa !1
  store i32 0, i32* %119, align 4, !tbaa !27
  %120 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.236

if.end.130:                                       ; preds = %if.end.123
  %121 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  call void @pdf_char_widths_to_uts(%struct.pdf_font_resource_s* %121, %struct.pdf_glyph_widths_s* %cw) #6
  %real_width131 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy132 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width131, i32 0, i32 1
  %x133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy132, i32 0, i32 0
  %122 = load double, double* %x133, align 8, !tbaa !170
  %x134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  %123 = load double, double* %x134, align 8, !tbaa !65
  %add = fadd double %123, %122
  store double %add, double* %x134, align 8, !tbaa !65
  %real_width135 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy136 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width135, i32 0, i32 1
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy136, i32 0, i32 1
  %124 = load double, double* %y137, align 8, !tbaa !171
  %y138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  %125 = load double, double* %y138, align 8, !tbaa !66
  %add139 = fadd double %125, %124
  store double %add139, double* %y138, align 8, !tbaa !66
  %real_width140 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy141 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width140, i32 0, i32 1
  %x142 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy141, i32 0, i32 0
  %126 = load double, double* %x142, align 8, !tbaa !170
  %Width143 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy144 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width143, i32 0, i32 1
  %x145 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy144, i32 0, i32 0
  %127 = load double, double* %x145, align 8, !tbaa !165
  %cmp146 = fcmp une double %126, %127
  br i1 %cmp146, label %if.then.157, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.end.130
  %real_width149 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 1
  %xy150 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width149, i32 0, i32 1
  %y151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy150, i32 0, i32 1
  %128 = load double, double* %y151, align 8, !tbaa !171
  %Width152 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 0
  %xy153 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width152, i32 0, i32 1
  %y154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %xy153, i32 0, i32 1
  %129 = load double, double* %y154, align 8, !tbaa !166
  %cmp155 = fcmp une double %128, %129
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %lor.lhs.false.148, %if.end.130
  store i32 1, i32* %widths_differ, align 4, !tbaa !27
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %lor.lhs.false.148
  %130 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom159 = sext i32 %130 to i64
  %131 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data160 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %131, i32 0, i32 0
  %132 = load i8*, i8** %data160, align 8, !tbaa !114
  %arrayidx161 = getelementptr inbounds i8, i8* %132, i64 %idxprom159
  %133 = load i8, i8* %arrayidx161, align 1, !tbaa !115
  %conv162 = zext i8 %133 to i32
  %134 = load i32, i32* %space_char, align 4, !tbaa !27
  %cmp163 = icmp eq i32 %conv162, %134
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.158
  %135 = load i32, i32* %num_spaces, align 4, !tbaa !27
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %num_spaces, align 4, !tbaa !27
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.158
  %BBox167 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p168 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox167, i32 0, i32 0
  %x169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p168, i32 0, i32 0
  %136 = load double, double* %x169, align 8, !tbaa !193
  %cmp170 = fcmp une double %136, 0.000000e+00
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.235

land.lhs.true.172:                                ; preds = %if.end.166
  %BBox173 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q174 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox173, i32 0, i32 1
  %x175 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q174, i32 0, i32 0
  %137 = load double, double* %x175, align 8, !tbaa !191
  %cmp176 = fcmp une double %137, 0.000000e+00
  br i1 %cmp176, label %if.then.178, label %if.end.235

if.then.178:                                      ; preds = %land.lhs.true.172
  %BBox179 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p180 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox179, i32 0, i32 0
  %x181 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p180, i32 0, i32 0
  %138 = load double, double* %x181, align 8, !tbaa !193
  %139 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p182 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %139, i32 0, i32 0
  %x183 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p182, i32 0, i32 0
  %140 = load double, double* %x183, align 8, !tbaa !45
  %cmp184 = fcmp olt double %138, %140
  br i1 %cmp184, label %if.then.186, label %if.end.192

if.then.186:                                      ; preds = %if.then.178
  %BBox187 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p188 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox187, i32 0, i32 0
  %x189 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p188, i32 0, i32 0
  %141 = load double, double* %x189, align 8, !tbaa !193
  %142 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p190 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %142, i32 0, i32 0
  %x191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p190, i32 0, i32 0
  store double %141, double* %x191, align 8, !tbaa !45
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.186, %if.then.178
  %BBox193 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p194 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox193, i32 0, i32 0
  %y195 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p194, i32 0, i32 1
  %143 = load double, double* %y195, align 8, !tbaa !192
  %144 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p196 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %144, i32 0, i32 0
  %y197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p196, i32 0, i32 1
  %145 = load double, double* %y197, align 8, !tbaa !47
  %cmp198 = fcmp olt double %143, %145
  br i1 %cmp198, label %if.then.200, label %if.end.206

if.then.200:                                      ; preds = %if.end.192
  %BBox201 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %p202 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox201, i32 0, i32 0
  %y203 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p202, i32 0, i32 1
  %146 = load double, double* %y203, align 8, !tbaa !192
  %147 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %p204 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %147, i32 0, i32 0
  %y205 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p204, i32 0, i32 1
  store double %146, double* %y205, align 8, !tbaa !47
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.200, %if.end.192
  %BBox207 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q208 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox207, i32 0, i32 1
  %x209 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q208, i32 0, i32 0
  %148 = load double, double* %x209, align 8, !tbaa !191
  %149 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q210 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %149, i32 0, i32 1
  %x211 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q210, i32 0, i32 0
  %150 = load double, double* %x211, align 8, !tbaa !49
  %cmp212 = fcmp ogt double %148, %150
  br i1 %cmp212, label %if.then.214, label %if.end.220

if.then.214:                                      ; preds = %if.end.206
  %BBox215 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q216 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox215, i32 0, i32 1
  %x217 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q216, i32 0, i32 0
  %151 = load double, double* %x217, align 8, !tbaa !191
  %152 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q218 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %152, i32 0, i32 1
  %x219 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q218, i32 0, i32 0
  store double %151, double* %x219, align 8, !tbaa !49
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.214, %if.end.206
  %BBox221 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q222 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox221, i32 0, i32 1
  %x223 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q222, i32 0, i32 0
  %153 = load double, double* %x223, align 8, !tbaa !191
  %154 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q224 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %154, i32 0, i32 1
  %y225 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q224, i32 0, i32 1
  %155 = load double, double* %y225, align 8, !tbaa !51
  %cmp226 = fcmp ogt double %153, %155
  br i1 %cmp226, label %if.then.228, label %if.end.234

if.then.228:                                      ; preds = %if.end.220
  %BBox229 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %cw, i32 0, i32 4
  %q230 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox229, i32 0, i32 1
  %y231 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q230, i32 0, i32 1
  %156 = load double, double* %y231, align 8, !tbaa !190
  %157 = load %struct.gs_rect_s*, %struct.gs_rect_s** %bbox.addr, align 8, !tbaa !1
  %q232 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %157, i32 0, i32 1
  %y233 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q232, i32 0, i32 1
  store double %156, double* %y233, align 8, !tbaa !51
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.228, %if.end.220
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %land.lhs.true.172, %if.end.166
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.236

cleanup.236:                                      ; preds = %if.end.235, %if.end.129, %if.then.128, %cleanup.108, %cleanup
  %158 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast %struct.pdf_glyph_widths_s* %cw to i8*
  call void @llvm.lifetime.end(i64 120, i8* %159) #1
  %cleanup.dest.238 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.238, label %cleanup.299 [
    i32 0, label %cleanup.cont.239
    i32 2, label %for.end
  ]

cleanup.cont.239:                                 ; preds = %cleanup.236
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.239
  %160 = load i32, i32* %i, align 4, !tbaa !27
  %inc240 = add nsw i32 %160, 1
  store i32 %inc240, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup.236, %for.cond
  %161 = load i32, i32* %i, align 4, !tbaa !27
  %162 = load i32*, i32** %accepted.addr, align 8, !tbaa !1
  store i32 %161, i32* %162, align 4, !tbaa !27
  %x241 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 0
  %163 = load double, double* %x241, align 8, !tbaa !65
  %164 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values242 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %164, i32 0, i32 0
  %size243 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values242, i32 0, i32 2
  %165 = load double, double* %size243, align 8, !tbaa !177
  %mul = fmul double %163, %165
  %y244 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %w, i32 0, i32 1
  %166 = load double, double* %y244, align 8, !tbaa !66
  %167 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values245 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %167, i32 0, i32 0
  %size246 = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values245, i32 0, i32 2
  %168 = load double, double* %size246, align 8, !tbaa !177
  %mul247 = fmul double %166, %168
  %169 = load %struct.pdf_text_process_state_s*, %struct.pdf_text_process_state_s** %ppts.addr, align 8, !tbaa !1
  %values248 = getelementptr inbounds %struct.pdf_text_process_state_s, %struct.pdf_text_process_state_s* %169, i32 0, i32 0
  %matrix = getelementptr inbounds %struct.pdf_text_state_values_s, %struct.pdf_text_state_values_s* %values248, i32 0, i32 3
  %call249 = call i32 @gs_distance_transform(double %mul, double %mul247, %struct.gs_matrix_s* %matrix, %struct.gs_point_s* %dpt) #6
  %170 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text250 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %170, i32 0, i32 0
  %operation251 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text250, i32 0, i32 0
  %171 = load i32, i32* %operation251, align 4, !tbaa !72
  %and252 = and i32 %171, 64
  %tobool253 = icmp ne i32 %and252, 0
  br i1 %tobool253, label %if.then.254, label %if.end.273

if.then.254:                                      ; preds = %for.end
  %172 = bitcast i32* %num_chars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i32*, i32** %accepted.addr, align 8, !tbaa !1
  %174 = load i32, i32* %173, align 4, !tbaa !27
  store i32 %174, i32* %num_chars, align 4, !tbaa !27
  %175 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %175) #1
  %176 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text255 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %176, i32 0, i32 0
  %delta_all = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text255, i32 0, i32 3
  %x256 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all, i32 0, i32 0
  %177 = load double, double* %x256, align 8, !tbaa !181
  %178 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text257 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %178, i32 0, i32 0
  %delta_all258 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text257, i32 0, i32 3
  %y259 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_all258, i32 0, i32 1
  %179 = load double, double* %y259, align 8, !tbaa !182
  %180 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis260 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %180, i32 0, i32 3
  %181 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis260, align 8, !tbaa !31
  %ctm261 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %181, i32 0, i32 5
  %182 = bitcast %struct.gs_matrix_fixed_s* %ctm261 to %struct.gs_matrix_s*
  %call262 = call i32 @gs_distance_transform(double %177, double %179, %struct.gs_matrix_s* %182, %struct.gs_point_s* %tpt) #6
  %x263 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 0
  %183 = load double, double* %x263, align 8, !tbaa !65
  %184 = load i32, i32* %num_chars, align 4, !tbaa !27
  %conv264 = sitofp i32 %184 to double
  %mul265 = fmul double %183, %conv264
  %x266 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %185 = load double, double* %x266, align 8, !tbaa !65
  %add267 = fadd double %185, %mul265
  store double %add267, double* %x266, align 8, !tbaa !65
  %y268 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt, i32 0, i32 1
  %186 = load double, double* %y268, align 8, !tbaa !66
  %187 = load i32, i32* %num_chars, align 4, !tbaa !27
  %conv269 = sitofp i32 %187 to double
  %mul270 = fmul double %186, %conv269
  %y271 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %188 = load double, double* %y271, align 8, !tbaa !66
  %add272 = fadd double %188, %mul270
  store double %add272, double* %y271, align 8, !tbaa !66
  %189 = bitcast %struct.gs_point_s* %tpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %189) #1
  %190 = bitcast i32* %num_chars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.254, %for.end
  %191 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text274 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %191, i32 0, i32 0
  %operation275 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text274, i32 0, i32 0
  %192 = load i32, i32* %operation275, align 4, !tbaa !72
  %and276 = and i32 %192, 128
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.then.278, label %if.end.298

if.then.278:                                      ; preds = %if.end.273
  %193 = bitcast %struct.gs_point_s* %tpt279 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %193) #1
  %194 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text280 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %194, i32 0, i32 0
  %delta_space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text280, i32 0, i32 4
  %x281 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space, i32 0, i32 0
  %195 = load double, double* %x281, align 8, !tbaa !183
  %196 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text282 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %196, i32 0, i32 0
  %delta_space283 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text282, i32 0, i32 4
  %y284 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta_space283, i32 0, i32 1
  %197 = load double, double* %y284, align 8, !tbaa !184
  %198 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis285 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %198, i32 0, i32 3
  %199 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis285, align 8, !tbaa !31
  %ctm286 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %199, i32 0, i32 5
  %200 = bitcast %struct.gs_matrix_fixed_s* %ctm286 to %struct.gs_matrix_s*
  %call287 = call i32 @gs_distance_transform(double %195, double %197, %struct.gs_matrix_s* %200, %struct.gs_point_s* %tpt279) #6
  %x288 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt279, i32 0, i32 0
  %201 = load double, double* %x288, align 8, !tbaa !65
  %202 = load i32, i32* %num_spaces, align 4, !tbaa !27
  %conv289 = sitofp i32 %202 to double
  %mul290 = fmul double %201, %conv289
  %x291 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %203 = load double, double* %x291, align 8, !tbaa !65
  %add292 = fadd double %203, %mul290
  store double %add292, double* %x291, align 8, !tbaa !65
  %y293 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tpt279, i32 0, i32 1
  %204 = load double, double* %y293, align 8, !tbaa !66
  %205 = load i32, i32* %num_spaces, align 4, !tbaa !27
  %conv294 = sitofp i32 %205 to double
  %mul295 = fmul double %204, %conv294
  %y296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %206 = load double, double* %y296, align 8, !tbaa !66
  %add297 = fadd double %206, %mul295
  store double %add297, double* %y296, align 8, !tbaa !66
  %207 = bitcast %struct.gs_point_s* %tpt279 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %207) #1
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.278, %if.end.273
  %208 = load %struct.gs_point_s*, %struct.gs_point_s** %pdpt.addr, align 8, !tbaa !1
  %209 = bitcast %struct.gs_point_s* %208 to i8*
  %210 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %210, i64 16, i32 8, i1 false), !tbaa.struct !110
  %211 = load i32, i32* %widths_differ, align 4, !tbaa !27
  store i32 %211, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

cleanup.299:                                      ; preds = %if.end.298, %cleanup.236, %if.then
  %212 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %widths_differ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %space_char to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %num_spaces to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %218) #1
  %219 = bitcast %struct.gs_point_s* %w to i8*
  call void @llvm.lifetime.end(i64 16, i8* %219) #1
  %220 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = load i32, i32* %retval
  ret i32 %221
}

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #4

declare i64 @gx_device_black(%struct.gx_device_s*) #4

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #4

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #4

declare i32 @gs_font_glyph_is_notdef(%struct.gs_font_base_s*, i64) #4

declare %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s*, i32) #4

declare i32 @pdf_base_font_copy_glyph(%struct.pdf_base_font_s*, i64, %struct.gs_font_base_s*) #4

declare i32 @pdf_font_used_glyph(%struct.pdf_font_descriptor_s*, i64, %struct.gs_font_base_s*) #4

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #4

declare i8* @gs_program_name() #4

declare i64 @gs_revision_number() #4

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #4

declare i32 @gs_copy_glyph_options(%struct.gs_font_s*, i64, %struct.gs_font_s*, i32) #4

declare i32 @gs_copied_font_add_encoding(%struct.gs_font_s*, i64, i64) #4

declare void @pdf_font_descriptor_drop_complete_font(%struct.pdf_font_descriptor_s*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 192}
!6 = !{!"pdf_text_enum_s", !7, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !11, i64 160, !2, i64 184, !2, i64 192, !12, i64 200, !8, i64 208, !13, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !14, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !9, i64 360, !12, i64 376, !8, i64 384, !13, i64 388, !9, i64 400, !15, i64 416, !2, i64 448, !16, i64 456, !8, i64 464, !8, i64 468, !3, i64 472, !2, i64 552, !12, i64 560}
!7 = !{!"gs_text_params_s", !8, i64 0, !3, i64 8, !8, i64 16, !9, i64 24, !9, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !8, i64 80}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_point_s", !10, i64 0, !10, i64 8}
!10 = !{!"double", !3, i64 0}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_font_stack_s", !8, i64 0, !3, i64 8}
!15 = !{!"gs_text_returned_s", !12, i64 0, !12, i64 8, !9, i64 16}
!16 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!17 = !{!18, !3, i64 128}
!18 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !19, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !20, i64 80, !20, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !21, i64 156, !8, i64 160, !22, i64 168, !23, i64 272, !23, i64 324, !24, i64 376, !25, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!19 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!20 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!23 = !{!"gs_font_name_s", !3, i64 0, !8, i64 48}
!24 = !{!"gs_rect_s", !9, i64 0, !9, i64 16}
!25 = !{!"gs_uid_s", !12, i64 0, !2, i64 8}
!26 = !{!6, !2, i64 88}
!27 = !{!8, !8, i64 0}
!28 = !{!7, !8, i64 0}
!29 = !{!6, !2, i64 120}
!30 = !{!7, !8, i64 16}
!31 = !{!6, !2, i64 104}
!32 = !{!33, !8, i64 252}
!33 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !34, i64 24, !8, i64 128, !36, i64 132, !8, i64 168, !9, i64 176, !9, i64 192, !8, i64 208, !8, i64 212, !37, i64 216, !3, i64 220, !38, i64 224, !38, i64 228, !39, i64 232, !12, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !21, i64 296, !16, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !21, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !40, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !41, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !41, i64 1336}
!34 = !{!"gx_line_params_s", !21, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !8, i64 36, !20, i64 40, !35, i64 64}
!35 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !21, i64 12, !8, i64 16, !21, i64 20, !8, i64 24, !8, i64 28, !21, i64 32}
!36 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!37 = !{!"short", !3, i64 0}
!38 = !{!"gs_transparency_source_s", !21, i64 0}
!39 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!40 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!41 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !12, i64 16, !3, i64 24}
!42 = !{!6, !2, i64 136}
!43 = !{!44, !8, i64 0}
!44 = !{!"gs_fixed_rect_s", !16, i64 0, !16, i64 8}
!45 = !{!24, !10, i64 0}
!46 = !{!44, !8, i64 4}
!47 = !{!24, !10, i64 8}
!48 = !{!44, !8, i64 8}
!49 = !{!24, !10, i64 16}
!50 = !{!44, !8, i64 12}
!51 = !{!24, !10, i64 24}
!52 = !{!53, !8, i64 8}
!53 = !{!"gs_string_s", !2, i64 0, !8, i64 8}
!54 = !{!6, !8, i64 232}
!55 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 12, i64 4, !56, i64 16, i64 4, !56, i64 20, i64 4, !56}
!56 = !{!21, !21, i64 0}
!57 = !{!16, !8, i64 0}
!58 = !{!20, !21, i64 16}
!59 = !{!16, !8, i64 4}
!60 = !{!20, !21, i64 20}
!61 = !{!18, !10, i64 376}
!62 = !{!18, !10, i64 392}
!63 = !{!18, !10, i64 384}
!64 = !{!18, !10, i64 400}
!65 = !{!9, !10, i64 0}
!66 = !{!9, !10, i64 8}
!67 = !{!53, !2, i64 0}
!68 = !{!12, !12, i64 0}
!69 = !{!6, !8, i64 236}
!70 = !{i64 0, i64 4, !27, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 4, !27, i64 24, i64 8, !71, i64 32, i64 8, !71, i64 40, i64 8, !71, i64 48, i64 8, !71, i64 56, i64 8, !68, i64 56, i64 8, !68, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !27}
!71 = !{!10, !10, i64 0}
!72 = !{!6, !8, i64 0}
!73 = !{!6, !2, i64 64}
!74 = !{!6, !2, i64 72}
!75 = !{!76, !8, i64 9528}
!76 = !{!"gx_device_pdf_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !77, i64 96, !79, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !80, i64 984, !8, i64 1052, !8, i64 1056, !81, i64 1064, !2, i64 1104, !3, i64 1112, !83, i64 1120, !84, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !8, i64 5864, !8, i64 5868, !33, i64 5872, !2, i64 7488, !8, i64 7496, !8, i64 7500, !8, i64 7504, !85, i64 7512, !85, i64 8144, !12, i64 8776, !12, i64 8784, !3, i64 8792, !3, i64 8796, !9, i64 8800, !8, i64 8816, !2, i64 8824, !12, i64 8832, !12, i64 8840, !3, i64 8848, !8, i64 8852, !8, i64 8856, !8, i64 8860, !8, i64 8864, !10, i64 8872, !90, i64 8880, !8, i64 9360, !10, i64 9368, !8, i64 9376, !8, i64 9380, !8, i64 9384, !8, i64 9388, !8, i64 9392, !8, i64 9396, !8, i64 9400, !8, i64 9404, !8, i64 9408, !8, i64 9412, !8, i64 9416, !8, i64 9420, !95, i64 9424, !95, i64 9440, !8, i64 9456, !8, i64 9460, !8, i64 9464, !12, i64 9472, !8, i64 9480, !8, i64 9484, !94, i64 9488, !94, i64 9504, !8, i64 9520, !8, i64 9524, !8, i64 9528, !8, i64 9532, !8, i64 9536, !8, i64 9540, !8, i64 9544, !8, i64 9548, !8, i64 9552, !8, i64 9556, !8, i64 9560, !8, i64 9564, !8, i64 9568, !12, i64 9576, !12, i64 9584, !12, i64 9592, !96, i64 9600, !94, i64 9616, !94, i64 9632, !8, i64 9648, !8, i64 9652, !8, i64 9656, !94, i64 9664, !8, i64 9680, !8, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !8, i64 9768, !8, i64 9772, !8, i64 9776, !24, i64 9784, !97, i64 9816, !97, i64 9856, !8, i64 9896, !8, i64 9900, !8, i64 9904, !8, i64 9908, !8, i64 9912, !12, i64 9920, !3, i64 9928, !8, i64 9960, !12, i64 9968, !12, i64 9976, !3, i64 9984, !3, i64 9988, !98, i64 9992, !98, i64 14120, !98, i64 18248, !98, i64 22376, !12, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !12, i64 26536, !8, i64 26544, !8, i64 26548, !12, i64 26552, !3, i64 26560, !12, i64 26568, !12, i64 26576, !3, i64 26584, !2, i64 26592, !99, i64 26600, !2, i64 26648, !8, i64 26656, !12, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !12, i64 28664, !2, i64 28672, !8, i64 28680, !8, i64 28684, !8, i64 28688, !8, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !9, i64 28792, !2, i64 28808, !2, i64 28816, !8, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !8, i64 28856, !8, i64 28860, !8, i64 28864, !100, i64 28872, !8, i64 30384, !8, i64 30388, !8, i64 30392, !2, i64 30400, !8, i64 30408, !8, i64 30412, !8, i64 30416, !20, i64 30420, !2, i64 30448, !3, i64 30456, !8, i64 30460, !8, i64 30464, !2, i64 30472, !2, i64 30480, !36, i64 30488, !8, i64 30524, !24, i64 30528, !8, i64 30560, !8, i64 30564, !8, i64 30568, !2, i64 30576, !8, i64 30584, !8, i64 30588, !12, i64 30592, !8, i64 30600, !8, i64 30604, !8, i64 30608, !20, i64 30612, !10, i64 30640, !2, i64 30648, !91, i64 30656, !8, i64 30672, !2, i64 30680, !8, i64 30688, !8, i64 30692, !8, i64 30696, !8, i64 30700, !8, i64 30704, !8, i64 30708, !8, i64 30712, !8, i64 30716, !8, i64 30720, !8, i64 30724, !8, i64 30728, !8, i64 30732, !8, i64 30736, !8, i64 30740, !8, i64 30744, !8, i64 30748, !8, i64 30752, !8, i64 30756, !8, i64 30760, !8, i64 30764, !8, i64 30768, !8, i64 30772, !2, i64 30776, !8, i64 30784, !8, i64 30788}
!77 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !37, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !78, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !8, i64 712}
!78 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!79 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!80 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!81 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !82, i64 16, !8, i64 32, !3, i64 36}
!82 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !12, i64 8}
!83 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!84 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!85 = !{!"gx_hl_saved_color_s", !12, i64 0, !12, i64 8, !8, i64 16, !86, i64 24, !88, i64 288}
!86 = !{!"gs_client_color_s", !2, i64 0, !87, i64 8}
!87 = !{!"gs_paint_color_s", !3, i64 0}
!88 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !89, i64 336}
!89 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!90 = !{!"psdf_distiller_params_s", !8, i64 0, !3, i64 4, !3, i64 8, !8, i64 12, !3, i64 16, !8, i64 20, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !91, i64 64, !91, i64 80, !91, i64 96, !91, i64 112, !3, i64 128, !8, i64 132, !8, i64 136, !3, i64 140, !3, i64 144, !92, i64 152, !8, i64 232, !8, i64 236, !92, i64 240, !92, i64 320, !93, i64 400, !93, i64 416, !3, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !94, i64 448, !93, i64 464}
!91 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!92 = !{!"psdf_image_params_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !2, i64 24, !8, i64 32, !21, i64 36, !3, i64 40, !8, i64 44, !2, i64 48, !8, i64 56, !2, i64 64, !2, i64 72}
!93 = !{!"gs_param_string_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!94 = !{!"gs_param_string_s", !2, i64 0, !8, i64 8, !8, i64 12}
!95 = !{!"gs_param_float_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!96 = !{!"gs_param_int_array_s", !2, i64 0, !8, i64 8, !8, i64 12}
!97 = !{!"pdf_page_dsc_info_s", !8, i64 0, !8, i64 4, !24, i64 8}
!98 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!99 = !{!"pdf_text_rotation_s", !3, i64 0, !8, i64 40}
!100 = !{!"pdf_viewer_state_s", !8, i64 0, !3, i64 8, !21, i64 40, !21, i64 44, !3, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !8, i64 80, !21, i64 84, !21, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !85, i64 120, !85, i64 752, !34, i64 1384, !2, i64 1488, !8, i64 1496, !12, i64 1504}
!101 = !{!6, !8, i64 456}
!102 = !{!76, !8, i64 9776}
!103 = !{!104, !2, i64 0}
!104 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !89, i64 352, !8, i64 360, !86, i64 368, !105, i64 632}
!105 = !{!"_mask", !106, i64 0, !12, i64 8, !2, i64 16}
!106 = !{!"mp_", !8, i64 0, !8, i64 4}
!107 = !{!104, !8, i64 360}
!108 = !{!6, !10, i64 432}
!109 = !{!6, !10, i64 440}
!110 = !{i64 0, i64 8, !71, i64 8, i64 8, !71}
!111 = !{!112, !2, i64 208}
!112 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !19, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !20, i64 80, !20, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !21, i64 156, !8, i64 160, !22, i64 168, !23, i64 272, !23, i64 324}
!113 = !{!91, !8, i64 8}
!114 = !{!91, !2, i64 0}
!115 = !{!3, !3, i64 0}
!116 = !{!117, !2, i64 152}
!117 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !12, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !12, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !53, i64 88, !2, i64 104, !2, i64 112, !8, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!118 = !{!112, !3, i64 128}
!119 = !{!120, !8, i64 488}
!120 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !19, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !20, i64 80, !20, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !21, i64 156, !8, i64 160, !22, i64 168, !23, i64 272, !23, i64 324, !24, i64 376, !25, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !121, i64 448}
!121 = !{!"gs_font_cid0_data_s", !122, i64 0, !12, i64 56, !2, i64 64, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!122 = !{!"gs_font_cid_data_s", !123, i64 0, !8, i64 40, !8, i64 44, !8, i64 48}
!123 = !{!"gs_cid_system_info_s", !91, i64 0, !91, i64 16, !8, i64 32}
!124 = !{!76, !2, i64 1728}
!125 = !{!117, !12, i64 16}
!126 = !{!117, !12, i64 56}
!127 = !{!76, !12, i64 26664}
!128 = !{!76, !10, i64 9368}
!129 = !{!117, !3, i64 72}
!130 = !{!131, !2, i64 0}
!131 = !{!"", !2, i64 0, !3, i64 8}
!132 = !{!133, !2, i64 72}
!133 = !{!"", !24, i64 0, !20, i64 32, !2, i64 56, !8, i64 64, !8, i64 68, !2, i64 72, !2, i64 80}
!134 = !{!131, !3, i64 8}
!135 = !{!136, !8, i64 0}
!136 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 12, !2, i64 16, !2, i64 24, !8, i64 32, !3, i64 40}
!137 = !{!136, !8, i64 4}
!138 = !{!139, !2, i64 24}
!139 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !77, i64 96, !79, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !80, i64 984, !8, i64 1052, !8, i64 1056, !81, i64 1064, !2, i64 1104, !3, i64 1112, !83, i64 1120, !84, i64 1144}
!140 = !{!141, !2, i64 128}
!141 = !{!"gs_memory_s", !2, i64 0, !142, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!142 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!143 = !{!6, !8, i64 460}
!144 = !{!6, !8, i64 16}
!145 = !{!146, !21, i64 40}
!146 = !{!"pdf_text_process_state_s", !147, i64 0, !2, i64 56}
!147 = !{!"pdf_text_state_values_s", !21, i64 0, !2, i64 8, !10, i64 16, !20, i64 24, !8, i64 48, !21, i64 52}
!148 = !{!146, !21, i64 44}
!149 = !{i64 0, i64 4, !27, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 4, !27, i64 24, i64 8, !71, i64 32, i64 8, !71, i64 40, i64 8, !71, i64 48, i64 8, !71, i64 56, i64 8, !68, i64 56, i64 8, !68, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !27, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !68, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !68, i64 208, i64 4, !27, i64 212, i64 4, !27, i64 216, i64 4, !27, i64 224, i64 8, !1, i64 232, i64 4, !27, i64 236, i64 4, !27, i64 240, i64 4, !27, i64 248, i64 96, !115, i64 344, i64 4, !27, i64 348, i64 4, !27, i64 352, i64 4, !27, i64 360, i64 8, !71, i64 368, i64 8, !71, i64 376, i64 8, !68, i64 384, i64 4, !27, i64 388, i64 4, !27, i64 392, i64 4, !27, i64 400, i64 8, !71, i64 408, i64 8, !71, i64 416, i64 8, !68, i64 424, i64 8, !68, i64 432, i64 8, !71, i64 440, i64 8, !71}
!150 = !{!151, !2, i64 112}
!151 = !{!"gs_text_enum_s", !7, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !11, i64 160, !2, i64 184, !2, i64 192, !12, i64 200, !8, i64 208, !13, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !14, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !9, i64 360, !12, i64 376, !8, i64 384, !13, i64 388, !9, i64 400, !15, i64 416}
!152 = !{!112, !2, i64 256}
!153 = !{!151, !8, i64 240}
!154 = !{!155, !2, i64 0}
!155 = !{!"gx_font_stack_item_s", !2, i64 0, !8, i64 8}
!156 = !{!146, !2, i64 8}
!157 = !{!158, !2, i64 0}
!158 = !{!"", !2, i64 0, !3, i64 8, !91, i64 40, !8, i64 56, !8, i64 60, !8, i64 64}
!159 = !{!112, !8, i64 148}
!160 = !{!6, !8, i64 468}
!161 = !{!6, !8, i64 240}
!162 = !{!163, !10, i64 0}
!163 = !{!"pdf_glyph_widths_s", !164, i64 0, !164, i64 40, !8, i64 80, !8, i64 84, !24, i64 88}
!164 = !{!"pdf_glyph_width_s", !10, i64 0, !9, i64 8, !9, i64 24}
!165 = !{!163, !10, i64 8}
!166 = !{!163, !10, i64 16}
!167 = !{!163, !10, i64 24}
!168 = !{!163, !10, i64 32}
!169 = !{!163, !10, i64 40}
!170 = !{!163, !10, i64 48}
!171 = !{!163, !10, i64 56}
!172 = !{!163, !10, i64 64}
!173 = !{!163, !10, i64 72}
!174 = !{!163, !8, i64 80}
!175 = !{!136, !2, i64 24}
!176 = !{!163, !8, i64 84}
!177 = !{!146, !10, i64 16}
!178 = !{!146, !21, i64 0}
!179 = !{!6, !8, i64 348}
!180 = !{!146, !21, i64 52}
!181 = !{!6, !10, i64 24}
!182 = !{!6, !10, i64 32}
!183 = !{!6, !10, i64 40}
!184 = !{!6, !10, i64 48}
!185 = !{!76, !8, i64 30560}
!186 = !{!136, !2, i64 16}
!187 = !{!188, !12, i64 0}
!188 = !{!"pdf_encoding_element_s", !12, i64 0, !91, i64 8, !8, i64 24}
!189 = !{!18, !8, i64 148}
!190 = !{!163, !10, i64 112}
!191 = !{!163, !10, i64 104}
!192 = !{!163, !10, i64 96}
!193 = !{!163, !10, i64 88}
!194 = !{!117, !2, i64 128}
!195 = !{!117, !2, i64 136}
!196 = !{!133, !2, i64 80}
!197 = !{!76, !10, i64 30528}
!198 = !{!76, !10, i64 30536}
!199 = !{!76, !10, i64 30544}
!200 = !{!76, !10, i64 30552}
!201 = !{!112, !2, i64 200}
!202 = !{!112, !2, i64 240}
!203 = !{!117, !2, i64 112}
!204 = !{!117, !2, i64 104}
!205 = !{!76, !8, i64 9564}
!206 = !{!76, !8, i64 9560}
!207 = !{!76, !8, i64 30724}
!208 = !{!76, !2, i64 24}
!209 = !{!76, !8, i64 9568}
!210 = !{i64 0, i64 8, !1, i64 8, i64 4, !27}
!211 = !{!188, !8, i64 24}
!212 = !{!18, !2, i64 200}
!213 = !{!20, !21, i64 0}
!214 = !{!151, !8, i64 0}
!215 = !{!151, !8, i64 16}
!216 = !{!151, !8, i64 232}
!217 = !{!151, !2, i64 192}
!218 = !{!151, !12, i64 416}
!219 = !{!220, !12, i64 8}
!220 = !{!"cos_object_s", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !12, i64 56, !2, i64 64, !221, i64 72, !8, i64 160, !3, i64 164, !8, i64 180, !3, i64 184}
!221 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!222 = !{!223, !12, i64 56}
!223 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !12, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !12, i64 56, !2, i64 64}
!224 = !{!18, !2, i64 224}
!225 = !{!18, !2, i64 216}
!226 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71, i64 24, i64 8, !71}
