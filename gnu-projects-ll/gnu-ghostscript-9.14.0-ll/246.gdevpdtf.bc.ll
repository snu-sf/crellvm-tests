; ModuleID = './gdevpdtf.bc'
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
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.pdf_standard_font_info_s = type { i8*, i32, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type opaque
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
%struct.cos_array_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
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
%struct.anon = type { %struct.pdf_font_resource_s*, [27 x i8], %struct.gs_const_string_s, i32, i32, i32 }
%struct.anon.2 = type { i64, i16*, i32, i64, double*, double*, i8*, %struct.pdf_font_resource_s* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.pdf_char_glyph_pair_s = type { i64, i64 }
%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.anon.5 = type { i32 }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.8, float, i32, %struct.anon.9, %struct.anon.10, i32, %struct.anon.11, i32, %struct.anon.12, %struct.anon.13, %struct.anon.14, %struct.anon.15, %struct.anon.16, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type1_state_s = type opaque
%struct.anon.8 = type { i32, [14 x float] }
%struct.anon.9 = type { i32, [14 x float] }
%struct.anon.10 = type { i32, [10 x float] }
%struct.anon.11 = type { i32, [10 x float] }
%struct.anon.12 = type { i32, [1 x float] }
%struct.anon.13 = type { i32, [1 x float] }
%struct.anon.14 = type { i32, [12 x float] }
%struct.anon.15 = type { i32, [12 x float] }
%struct.anon.16 = type { i32, [16 x float] }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }

@.str = private unnamed_addr constant [20 x i8] c"pdf_font_resource_t\00", align 1
@st_pdf_font_resource = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_font_resource_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_font_resource_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"pdf_outline_fonts_alloc(outline_fonts)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"pdf_outline_fonts_alloc(standard_fonts)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Free BaseFont string\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Free Widths array\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Free used array\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Free simple Encoding\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Free simple v\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Free CIDFont used2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Free CIDToGID map\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Free font resource object\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"font_resource_encoded_alloc\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"pdf_font_simple_alloc\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"\0AWarning: %s cannot be embedded because of licensing restrictions\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"pdf_compute_BaseFont\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Replacing BaseFont string\00", align 1
@standard_font_info = internal constant [15 x %struct.pdf_standard_font_info_s] [%struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 7, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 12, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 15, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i32 19, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 9, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 14, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 17, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 21, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 6, i32 2 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 11, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 10, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 12, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 16, i32 0 }, %struct.pdf_standard_font_info_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 12, i32 3 }, %struct.pdf_standard_font_info_s zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"CIDToGIDMap\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"pdf_font_cidfont_alloc\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"pdf_obtain_cidfont_widths_arrays\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"OneByteIdentityH\00", align 1
@pdf_convert_truetype_font.CMapName = private unnamed_addr constant %struct.gs_const_string_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 16 }, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@st_pdf_resource = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"pdf_outline_fonts_t\00", align 1
@pdf_outline_fonts_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_outline_fonts_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_outline_fonts = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_outline_fonts_reloc_ptrs to i8*) }, align 8
@pdf_outline_fonts_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.22 = private unnamed_addr constant [22 x i8] c"pdf_standard_font_t[]\00", align 1
@st_pdf_standard_font_element = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_std_font_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_std_font_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.23 = private unnamed_addr constant [20 x i8] c"pdf_standard_font_t\00", align 1
@pdf_std_font_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_std_font_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_standard_font = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_std_font_reloc_ptrs to i8*) }, align 8
@pdf_std_font_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.24 = private unnamed_addr constant [25 x i8] c"pdf_encoding_element_t[]\00", align 1
@st_pdf_encoding_element = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_encoding_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @pdf_encoding_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.25 = private unnamed_addr constant [23 x i8] c"pdf_encoding_element_t\00", align 1
@pdf_encoding1_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pdf_encoding1_enum_ptrs, i32 0, i32 0) }, align 8
@st_pdf_encoding1 = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_encoding1_reloc_ptrs to i8*) }, align 8
@pdf_encoding1_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 8 }], align 2
@.str.26 = private unnamed_addr constant [17 x i8] c"pdf_resize_array\00", align 1
@gx_extendeg_glyph_name_separator = external constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"font_resource_alloc(Widths)\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"font_resource_alloc(used)\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pdf_font_resource_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_font_resource_s*
  store %struct.pdf_font_resource_s* %2, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.16
    i32 8, label %sw.bb.25
    i32 9, label %sw.bb.51
    i32 10, label %sw.bb.63
    i32 11, label %sw.bb.77
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pdf_resource, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 12
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_state_s* %10) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !9
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* %12, i8** %ptr, align 8, !tbaa !11
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %BaseFont1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 10
  %size2 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont1, i32 0, i32 1
  %15 = load i32, i32* %size2, align 4, !tbaa !13
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %16, i32 0, i32 1
  store i32 %15, i32* %size3, align 4, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 11
  %18 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %19 = bitcast %struct.pdf_font_descriptor_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr5, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.6:                                          ; preds = %entry
  %21 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %21, i32 0, i32 12
  %22 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !18
  %23 = bitcast %struct.pdf_base_font_s* %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr7, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 14
  %26 = load double*, double** %Widths, align 8, !tbaa !19
  %27 = bitcast double* %26 to i8*
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr9, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %entry
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 15
  %30 = load i8*, i8** %used, align 8, !tbaa !20
  %31 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %31, i32 0, i32 0
  store i8* %30, i8** %ptr11, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.12:                                         ; preds = %entry
  %32 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %32, i32 0, i32 16
  %33 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !21
  %34 = bitcast %struct.pdf_resource_s* %33 to i8*
  %35 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %35, i32 0, i32 0
  store i8* %34, i8** %ptr13, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %entry
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 17
  %37 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !22
  %38 = bitcast %struct.gs_cmap_s* %37 to i8*
  %39 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %39, i32 0, i32 0
  store i8* %38, i8** %ptr15, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %entry
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 8
  %41 = load i32, i32* %FontType, align 4, !tbaa !23
  switch i32 %41, label %sw.default.22 [
    i32 0, label %sw.bb.17
    i32 9, label %sw.bb.19
    i32 11, label %sw.bb.19
  ]

sw.bb.17:                                         ; preds = %sw.bb.16
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 0
  %43 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !24
  %44 = bitcast %struct.pdf_font_resource_s* %43 to i8*
  %45 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %45, i32 0, i32 0
  store i8* %44, i8** %ptr18, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %sw.bb.16, %sw.bb.16
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u20 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u20 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 4
  %47 = load double*, double** %Widths2, align 8, !tbaa !27
  %48 = bitcast double* %47 to i8*
  %49 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %49, i32 0, i32 0
  store i8* %48, i8** %ptr21, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.22:                                    ; preds = %sw.bb.16
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @pdf_mark_glyph_names(%struct.pdf_font_resource_s* %50, %struct.gs_memory_s* %51) #5
  %52 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u23 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %52, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u23 to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %53 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !29
  %54 = bitcast %struct.pdf_encoding_element_s* %53 to i8*
  %55 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %55, i32 0, i32 0
  store i8* %54, i8** %ptr24, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %entry
  %56 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType26 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %56, i32 0, i32 8
  %57 = load i32, i32* %FontType26, align 4, !tbaa !23
  switch i32 %57, label %sw.default.49 [
    i32 0, label %sw.bb.27
    i32 1, label %sw.bb.40
    i32 2, label %sw.bb.40
    i32 42, label %sw.bb.40
    i32 53, label %sw.bb.40
    i32 51, label %sw.bb.40
    i32 52, label %sw.bb.40
    i32 3, label %sw.bb.40
    i32 54, label %sw.bb.40
    i32 9, label %sw.bb.44
    i32 11, label %sw.bb.44
  ]

sw.bb.27:                                         ; preds = %sw.bb.25
  %58 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u28 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %58, i32 0, i32 20
  %type029 = bitcast %union.anon.1* %u28 to %struct.anon*
  %cmap_is_standard = getelementptr inbounds %struct.anon, %struct.anon* %type029, i32 0, i32 4
  %59 = load i32, i32* %cmap_is_standard, align 4, !tbaa !31
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.27
  %60 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %60, i32 0, i32 0
  store i8* null, i8** %ptr30, align 8, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.27
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u31 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 20
  %type032 = bitcast %union.anon.1* %u31 to %struct.anon*
  %CMapName = getelementptr inbounds %struct.anon, %struct.anon* %type032, i32 0, i32 2
  %data33 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName, i32 0, i32 0
  %62 = load i8*, i8** %data33, align 8, !tbaa !32
  %63 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr34 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %63, i32 0, i32 0
  store i8* %62, i8** %ptr34, align 8, !tbaa !11
  %64 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u35 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %64, i32 0, i32 20
  %type036 = bitcast %union.anon.1* %u35 to %struct.anon*
  %CMapName37 = getelementptr inbounds %struct.anon, %struct.anon* %type036, i32 0, i32 2
  %size38 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName37, i32 0, i32 1
  %65 = load i32, i32* %size38, align 4, !tbaa !33
  %66 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %66, i32 0, i32 1
  store i32 %65, i32* %size39, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_struct_procs, %cond.true ], [ @ptr_const_string_procs, %cond.false ]
  store %struct.gs_ptr_procs_s* %cond, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.40:                                         ; preds = %sw.bb.25, %sw.bb.25, %sw.bb.25, %sw.bb.25, %sw.bb.25, %sw.bb.25, %sw.bb.25, %sw.bb.25
  %67 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u41 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %67, i32 0, i32 20
  %simple42 = bitcast %union.anon.1* %u41 to %struct.anon.3*
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple42, i32 0, i32 5
  %68 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !34
  %69 = bitcast %struct.gs_point_s* %68 to i8*
  %70 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr43 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %70, i32 0, i32 0
  store i8* %69, i8** %ptr43, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.44:                                         ; preds = %sw.bb.25, %sw.bb.25
  %71 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u45 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %71, i32 0, i32 20
  %cidfont46 = bitcast %union.anon.1* %u45 to %struct.anon.2*
  %v47 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont46, i32 0, i32 5
  %72 = load double*, double** %v47, align 8, !tbaa !35
  %73 = bitcast double* %72 to i8*
  %74 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr48 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %74, i32 0, i32 0
  store i8* %73, i8** %ptr48, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.49:                                    ; preds = %sw.bb.25
  %75 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr50 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %75, i32 0, i32 0
  store i8* null, i8** %ptr50, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.51:                                         ; preds = %entry
  %76 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType52 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %76, i32 0, i32 8
  %77 = load i32, i32* %FontType52, align 4, !tbaa !23
  switch i32 %77, label %sw.default.61 [
    i32 53, label %sw.bb.53
    i32 51, label %sw.bb.53
    i32 52, label %sw.bb.53
    i32 3, label %sw.bb.53
    i32 54, label %sw.bb.53
    i32 9, label %sw.bb.57
    i32 11, label %sw.bb.57
  ]

sw.bb.53:                                         ; preds = %sw.bb.51, %sw.bb.51, %sw.bb.51, %sw.bb.51, %sw.bb.51
  %78 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u54 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %78, i32 0, i32 20
  %simple55 = bitcast %union.anon.1* %u54 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple55, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %79 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !36
  %80 = bitcast %struct.pdf_char_proc_ownership_s* %79 to i8*
  %81 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr56 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %81, i32 0, i32 0
  store i8* %80, i8** %ptr56, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.57:                                         ; preds = %sw.bb.51, %sw.bb.51
  %82 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u58 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %82, i32 0, i32 20
  %cidfont59 = bitcast %union.anon.1* %u58 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont59, i32 0, i32 1
  %83 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !43
  %84 = bitcast i16* %83 to i8*
  %85 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr60 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %85, i32 0, i32 0
  store i8* %84, i8** %ptr60, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.61:                                    ; preds = %sw.bb.51
  %86 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr62 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %86, i32 0, i32 0
  store i8* null, i8** %ptr62, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.63:                                         ; preds = %entry
  %87 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType64 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %87, i32 0, i32 8
  %88 = load i32, i32* %FontType64, align 4, !tbaa !23
  switch i32 %88, label %sw.default.75 [
    i32 53, label %sw.bb.65
    i32 51, label %sw.bb.65
    i32 52, label %sw.bb.65
    i32 3, label %sw.bb.65
    i32 54, label %sw.bb.65
    i32 9, label %sw.bb.71
    i32 11, label %sw.bb.71
  ]

sw.bb.65:                                         ; preds = %sw.bb.63, %sw.bb.63, %sw.bb.63, %sw.bb.63, %sw.bb.63
  %89 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u66 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %89, i32 0, i32 20
  %simple67 = bitcast %union.anon.1* %u66 to %struct.anon.3*
  %s68 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple67, i32 0, i32 7
  %type369 = bitcast %union.anon.4* %s68 to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type369, i32 0, i32 6
  %90 = load i8*, i8** %cached, align 8, !tbaa !44
  %91 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr70 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %91, i32 0, i32 0
  store i8* %90, i8** %ptr70, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.71:                                         ; preds = %sw.bb.63, %sw.bb.63
  %92 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u72 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %92, i32 0, i32 20
  %cidfont73 = bitcast %union.anon.1* %u72 to %struct.anon.2*
  %parent = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont73, i32 0, i32 7
  %93 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %parent, align 8, !tbaa !45
  %94 = bitcast %struct.pdf_font_resource_s* %93 to i8*
  %95 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr74 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %95, i32 0, i32 0
  store i8* %94, i8** %ptr74, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.75:                                    ; preds = %sw.bb.63
  %96 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr76 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %96, i32 0, i32 0
  store i8* null, i8** %ptr76, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.77:                                         ; preds = %entry
  %97 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType78 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %97, i32 0, i32 8
  %98 = load i32, i32* %FontType78, align 4, !tbaa !23
  switch i32 %98, label %sw.default.89 [
    i32 53, label %sw.bb.79
    i32 51, label %sw.bb.79
    i32 52, label %sw.bb.79
    i32 3, label %sw.bb.79
    i32 54, label %sw.bb.79
    i32 9, label %sw.bb.85
    i32 11, label %sw.bb.85
  ]

sw.bb.79:                                         ; preds = %sw.bb.77, %sw.bb.77, %sw.bb.77, %sw.bb.77, %sw.bb.77
  %99 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u80 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %99, i32 0, i32 20
  %simple81 = bitcast %union.anon.1* %u80 to %struct.anon.3*
  %s82 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple81, i32 0, i32 7
  %type383 = bitcast %union.anon.4* %s82 to %struct.anon.7*
  %Resources = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type383, i32 0, i32 5
  %100 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources, align 8, !tbaa !46
  %101 = bitcast %struct.cos_dict_s* %100 to i8*
  %102 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr84 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %102, i32 0, i32 0
  store i8* %101, i8** %ptr84, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.85:                                         ; preds = %sw.bb.77, %sw.bb.77
  %103 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u86 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %103, i32 0, i32 20
  %cidfont87 = bitcast %union.anon.1* %u86 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont87, i32 0, i32 6
  %104 = load i8*, i8** %used2, align 8, !tbaa !47
  %105 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr88 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %105, i32 0, i32 0
  store i8* %104, i8** %ptr88, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.89:                                    ; preds = %sw.bb.77
  %106 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr90 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %106, i32 0, i32 0
  store i8* null, i8** %ptr90, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.89, %sw.bb.85, %sw.bb.79, %sw.default.75, %sw.bb.71, %sw.bb.65, %sw.default.61, %sw.bb.57, %sw.bb.53, %sw.default.49, %sw.bb.44, %sw.bb.40, %cond.end, %sw.default.22, %sw.bb.19, %sw.bb.17, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb, %sw.default
  %107 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %108
}

; Function Attrs: nounwind uwtable
define internal void @pdf_font_resource_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.pdf_font_resource_s*
  store %struct.pdf_font_resource_s* %2, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_pdf_resource, i32 0, i32 5), align 8, !tbaa !48
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_pdf_resource, %struct.gc_state_s* %6) #5
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 1
  %10 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !49
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 10
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %10(%struct.gs_string_s* %BaseFont, %struct.gc_state_s* %12) #5
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !51
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 11
  %18 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %19 = bitcast %struct.pdf_font_descriptor_s* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %16(i8* %19, %struct.gc_state_s* %20) #5
  %21 = bitcast i8* %call to %struct.pdf_font_descriptor_s*
  %22 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontDescriptor1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %22, i32 0, i32 11
  store %struct.pdf_font_descriptor_s* %21, %struct.pdf_font_descriptor_s** %FontDescriptor1, align 8, !tbaa !15
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !51
  %27 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %27, i32 0, i32 12
  %28 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !18
  %29 = bitcast %struct.pdf_base_font_s* %28 to i8*
  %30 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %26(i8* %29, %struct.gc_state_s* %30) #5
  %31 = bitcast i8* %call3 to %struct.pdf_base_font_s*
  %32 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %base_font4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %32, i32 0, i32 12
  store %struct.pdf_base_font_s* %31, %struct.pdf_base_font_s** %base_font4, align 8, !tbaa !18
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gc_state_s* %33 to %struct.gc_procs_common_s**
  %35 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %34, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %35, i32 0, i32 0
  %36 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !51
  %37 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %37, i32 0, i32 14
  %38 = load double*, double** %Widths, align 8, !tbaa !19
  %39 = bitcast double* %38 to i8*
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %36(i8* %39, %struct.gc_state_s* %40) #5
  %41 = bitcast i8* %call6 to double*
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %Widths7 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 14
  store double* %41, double** %Widths7, align 8, !tbaa !19
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gc_state_s* %43 to %struct.gc_procs_common_s**
  %45 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %44, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %45, i32 0, i32 0
  %46 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !51
  %47 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %47, i32 0, i32 15
  %48 = load i8*, i8** %used, align 8, !tbaa !20
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %46(i8* %48, %struct.gc_state_s* %49) #5
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %used10 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 15
  store i8* %call9, i8** %used10, align 8, !tbaa !20
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !51
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 16
  %56 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !21
  %57 = bitcast %struct.pdf_resource_s* %56 to i8*
  %58 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %54(i8* %57, %struct.gc_state_s* %58) #5
  %59 = bitcast i8* %call12 to %struct.pdf_resource_s*
  %60 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %res_ToUnicode13 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %60, i32 0, i32 16
  store %struct.pdf_resource_s* %59, %struct.pdf_resource_s** %res_ToUnicode13, align 8, !tbaa !21
  %61 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gc_state_s* %61 to %struct.gc_procs_common_s**
  %63 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %62, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %63, i32 0, i32 0
  %64 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !51
  %65 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %65, i32 0, i32 17
  %66 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !22
  %67 = bitcast %struct.gs_cmap_s* %66 to i8*
  %68 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call15 = call i8* %64(i8* %67, %struct.gc_state_s* %68) #5
  %69 = bitcast i8* %call15 to %struct.gs_cmap_s*
  %70 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmap_ToUnicode16 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %70, i32 0, i32 17
  store %struct.gs_cmap_s* %69, %struct.gs_cmap_s** %cmap_ToUnicode16, align 8, !tbaa !22
  %71 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %71, i32 0, i32 8
  %72 = load i32, i32* %FontType, align 4, !tbaa !23
  switch i32 %72, label %sw.default [
    i32 0, label %sw.bb
    i32 53, label %sw.bb.26
    i32 51, label %sw.bb.26
    i32 52, label %sw.bb.26
    i32 3, label %sw.bb.26
    i32 54, label %sw.bb.26
    i32 9, label %sw.bb.71
    i32 11, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %entry
  %73 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %73, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %cmap_is_standard = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 4
  %74 = load i32, i32* %cmap_is_standard, align 4, !tbaa !31
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %75 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %76 = bitcast %struct.gc_state_s* %75 to %struct.gc_procs_common_s**
  %77 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %76, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %77, i32 0, i32 2
  %78 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !52
  %79 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u17 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %79, i32 0, i32 20
  %type018 = bitcast %union.anon.1* %u17 to %struct.anon*
  %CMapName = getelementptr inbounds %struct.anon, %struct.anon* %type018, i32 0, i32 2
  %80 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %78(%struct.gs_const_string_s* %CMapName, %struct.gc_state_s* %80) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %81 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %82 = bitcast %struct.gc_state_s* %81 to %struct.gc_procs_common_s**
  %83 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %82, align 8, !tbaa !1
  %reloc_struct_ptr19 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %83, i32 0, i32 0
  %84 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr19, align 8, !tbaa !51
  %85 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u20 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %85, i32 0, i32 20
  %type021 = bitcast %union.anon.1* %u20 to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type021, i32 0, i32 0
  %86 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !24
  %87 = bitcast %struct.pdf_font_resource_s* %86 to i8*
  %88 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call22 = call i8* %84(i8* %87, %struct.gc_state_s* %88) #5
  %89 = bitcast i8* %call22 to %struct.pdf_font_resource_s*
  %90 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u23 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %90, i32 0, i32 20
  %type024 = bitcast %union.anon.1* %u23 to %struct.anon*
  %DescendantFont25 = getelementptr inbounds %struct.anon, %struct.anon* %type024, i32 0, i32 0
  store %struct.pdf_font_resource_s* %89, %struct.pdf_font_resource_s** %DescendantFont25, align 8, !tbaa !24
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %91 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gc_state_s* %91 to %struct.gc_procs_common_s**
  %93 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %92, align 8, !tbaa !1
  %reloc_struct_ptr27 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %93, i32 0, i32 0
  %94 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr27, align 8, !tbaa !51
  %95 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u28 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %95, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u28 to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %96 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !29
  %97 = bitcast %struct.pdf_encoding_element_s* %96 to i8*
  %98 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call29 = call i8* %94(i8* %97, %struct.gc_state_s* %98) #5
  %99 = bitcast i8* %call29 to %struct.pdf_encoding_element_s*
  %100 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %100, i32 0, i32 20
  %simple31 = bitcast %union.anon.1* %u30 to %struct.anon.3*
  %Encoding32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple31, i32 0, i32 4
  store %struct.pdf_encoding_element_s* %99, %struct.pdf_encoding_element_s** %Encoding32, align 8, !tbaa !29
  %101 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %102 = bitcast %struct.gc_state_s* %101 to %struct.gc_procs_common_s**
  %103 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %102, align 8, !tbaa !1
  %reloc_struct_ptr33 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %103, i32 0, i32 0
  %104 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr33, align 8, !tbaa !51
  %105 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u34 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %105, i32 0, i32 20
  %simple35 = bitcast %union.anon.1* %u34 to %struct.anon.3*
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple35, i32 0, i32 5
  %106 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !34
  %107 = bitcast %struct.gs_point_s* %106 to i8*
  %108 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call36 = call i8* %104(i8* %107, %struct.gc_state_s* %108) #5
  %109 = bitcast i8* %call36 to %struct.gs_point_s*
  %110 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u37 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %110, i32 0, i32 20
  %simple38 = bitcast %union.anon.1* %u37 to %struct.anon.3*
  %v39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple38, i32 0, i32 5
  store %struct.gs_point_s* %109, %struct.gs_point_s** %v39, align 8, !tbaa !34
  %111 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %112 = bitcast %struct.gc_state_s* %111 to %struct.gc_procs_common_s**
  %113 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %112, align 8, !tbaa !1
  %reloc_struct_ptr40 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %113, i32 0, i32 0
  %114 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr40, align 8, !tbaa !51
  %115 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u41 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %115, i32 0, i32 20
  %simple42 = bitcast %union.anon.1* %u41 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple42, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %116 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !36
  %117 = bitcast %struct.pdf_char_proc_ownership_s* %116 to i8*
  %118 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call43 = call i8* %114(i8* %117, %struct.gc_state_s* %118) #5
  %119 = bitcast i8* %call43 to %struct.pdf_char_proc_ownership_s*
  %120 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u44 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %120, i32 0, i32 20
  %simple45 = bitcast %union.anon.1* %u44 to %struct.anon.3*
  %s46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple45, i32 0, i32 7
  %type347 = bitcast %union.anon.4* %s46 to %struct.anon.7*
  %char_procs48 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type347, i32 0, i32 2
  store %struct.pdf_char_proc_ownership_s* %119, %struct.pdf_char_proc_ownership_s** %char_procs48, align 8, !tbaa !36
  %121 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %122 = bitcast %struct.gc_state_s* %121 to %struct.gc_procs_common_s**
  %123 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %122, align 8, !tbaa !1
  %reloc_struct_ptr49 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %123, i32 0, i32 0
  %124 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr49, align 8, !tbaa !51
  %125 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u50 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %125, i32 0, i32 20
  %simple51 = bitcast %union.anon.1* %u50 to %struct.anon.3*
  %s52 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple51, i32 0, i32 7
  %type353 = bitcast %union.anon.4* %s52 to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type353, i32 0, i32 6
  %126 = load i8*, i8** %cached, align 8, !tbaa !44
  %127 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call54 = call i8* %124(i8* %126, %struct.gc_state_s* %127) #5
  %128 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u55 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %128, i32 0, i32 20
  %simple56 = bitcast %union.anon.1* %u55 to %struct.anon.3*
  %s57 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple56, i32 0, i32 7
  %type358 = bitcast %union.anon.4* %s57 to %struct.anon.7*
  %cached59 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type358, i32 0, i32 6
  store i8* %call54, i8** %cached59, align 8, !tbaa !44
  %129 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gc_state_s* %129 to %struct.gc_procs_common_s**
  %131 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %130, align 8, !tbaa !1
  %reloc_struct_ptr60 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %131, i32 0, i32 0
  %132 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr60, align 8, !tbaa !51
  %133 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u61 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %133, i32 0, i32 20
  %simple62 = bitcast %union.anon.1* %u61 to %struct.anon.3*
  %s63 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple62, i32 0, i32 7
  %type364 = bitcast %union.anon.4* %s63 to %struct.anon.7*
  %Resources = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type364, i32 0, i32 5
  %134 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Resources, align 8, !tbaa !46
  %135 = bitcast %struct.cos_dict_s* %134 to i8*
  %136 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call65 = call i8* %132(i8* %135, %struct.gc_state_s* %136) #5
  %137 = bitcast i8* %call65 to %struct.cos_dict_s*
  %138 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u66 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %138, i32 0, i32 20
  %simple67 = bitcast %union.anon.1* %u66 to %struct.anon.3*
  %s68 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple67, i32 0, i32 7
  %type369 = bitcast %union.anon.4* %s68 to %struct.anon.7*
  %Resources70 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type369, i32 0, i32 5
  store %struct.cos_dict_s* %137, %struct.cos_dict_s** %Resources70, align 8, !tbaa !46
  br label %sw.epilog

sw.bb.71:                                         ; preds = %entry, %entry
  %139 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %140 = bitcast %struct.gc_state_s* %139 to %struct.gc_procs_common_s**
  %141 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %140, align 8, !tbaa !1
  %reloc_struct_ptr72 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %141, i32 0, i32 0
  %142 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr72, align 8, !tbaa !51
  %143 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u73 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %143, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u73 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 4
  %144 = load double*, double** %Widths2, align 8, !tbaa !27
  %145 = bitcast double* %144 to i8*
  %146 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call74 = call i8* %142(i8* %145, %struct.gc_state_s* %146) #5
  %147 = bitcast i8* %call74 to double*
  %148 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u75 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %148, i32 0, i32 20
  %cidfont76 = bitcast %union.anon.1* %u75 to %struct.anon.2*
  %Widths277 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont76, i32 0, i32 4
  store double* %147, double** %Widths277, align 8, !tbaa !27
  %149 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %150 = bitcast %struct.gc_state_s* %149 to %struct.gc_procs_common_s**
  %151 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %150, align 8, !tbaa !1
  %reloc_struct_ptr78 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %151, i32 0, i32 0
  %152 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr78, align 8, !tbaa !51
  %153 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u79 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %153, i32 0, i32 20
  %cidfont80 = bitcast %union.anon.1* %u79 to %struct.anon.2*
  %v81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont80, i32 0, i32 5
  %154 = load double*, double** %v81, align 8, !tbaa !35
  %155 = bitcast double* %154 to i8*
  %156 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call82 = call i8* %152(i8* %155, %struct.gc_state_s* %156) #5
  %157 = bitcast i8* %call82 to double*
  %158 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u83 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %158, i32 0, i32 20
  %cidfont84 = bitcast %union.anon.1* %u83 to %struct.anon.2*
  %v85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont84, i32 0, i32 5
  store double* %157, double** %v85, align 8, !tbaa !35
  %159 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %160 = bitcast %struct.gc_state_s* %159 to %struct.gc_procs_common_s**
  %161 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %160, align 8, !tbaa !1
  %reloc_struct_ptr86 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %161, i32 0, i32 0
  %162 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr86, align 8, !tbaa !51
  %163 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u87 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %163, i32 0, i32 20
  %cidfont88 = bitcast %union.anon.1* %u87 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont88, i32 0, i32 1
  %164 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !43
  %165 = bitcast i16* %164 to i8*
  %166 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call89 = call i8* %162(i8* %165, %struct.gc_state_s* %166) #5
  %167 = bitcast i8* %call89 to i16*
  %168 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u90 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %168, i32 0, i32 20
  %cidfont91 = bitcast %union.anon.1* %u90 to %struct.anon.2*
  %CIDToGIDMap92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont91, i32 0, i32 1
  store i16* %167, i16** %CIDToGIDMap92, align 8, !tbaa !43
  %169 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %170 = bitcast %struct.gc_state_s* %169 to %struct.gc_procs_common_s**
  %171 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %170, align 8, !tbaa !1
  %reloc_struct_ptr93 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %171, i32 0, i32 0
  %172 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr93, align 8, !tbaa !51
  %173 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u94 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %173, i32 0, i32 20
  %cidfont95 = bitcast %union.anon.1* %u94 to %struct.anon.2*
  %parent = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont95, i32 0, i32 7
  %174 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %parent, align 8, !tbaa !45
  %175 = bitcast %struct.pdf_font_resource_s* %174 to i8*
  %176 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call96 = call i8* %172(i8* %175, %struct.gc_state_s* %176) #5
  %177 = bitcast i8* %call96 to %struct.pdf_font_resource_s*
  %178 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u97 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %178, i32 0, i32 20
  %cidfont98 = bitcast %union.anon.1* %u97 to %struct.anon.2*
  %parent99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont98, i32 0, i32 7
  store %struct.pdf_font_resource_s* %177, %struct.pdf_font_resource_s** %parent99, align 8, !tbaa !45
  %179 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %180 = bitcast %struct.gc_state_s* %179 to %struct.gc_procs_common_s**
  %181 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %180, align 8, !tbaa !1
  %reloc_struct_ptr100 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %181, i32 0, i32 0
  %182 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr100, align 8, !tbaa !51
  %183 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u101 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %183, i32 0, i32 20
  %cidfont102 = bitcast %union.anon.1* %u101 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont102, i32 0, i32 6
  %184 = load i8*, i8** %used2, align 8, !tbaa !47
  %185 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call103 = call i8* %182(i8* %184, %struct.gc_state_s* %185) #5
  %186 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u104 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %186, i32 0, i32 20
  %cidfont105 = bitcast %union.anon.1* %u104 to %struct.anon.2*
  %used2106 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont105, i32 0, i32 6
  store i8* %call103, i8** %used2106, align 8, !tbaa !47
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %187 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %188 = bitcast %struct.gc_state_s* %187 to %struct.gc_procs_common_s**
  %189 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %188, align 8, !tbaa !1
  %reloc_struct_ptr107 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %189, i32 0, i32 0
  %190 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr107, align 8, !tbaa !51
  %191 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u108 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %191, i32 0, i32 20
  %simple109 = bitcast %union.anon.1* %u108 to %struct.anon.3*
  %Encoding110 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple109, i32 0, i32 4
  %192 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding110, align 8, !tbaa !29
  %193 = bitcast %struct.pdf_encoding_element_s* %192 to i8*
  %194 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call111 = call i8* %190(i8* %193, %struct.gc_state_s* %194) #5
  %195 = bitcast i8* %call111 to %struct.pdf_encoding_element_s*
  %196 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u112 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %196, i32 0, i32 20
  %simple113 = bitcast %union.anon.1* %u112 to %struct.anon.3*
  %Encoding114 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple113, i32 0, i32 4
  store %struct.pdf_encoding_element_s* %195, %struct.pdf_encoding_element_s** %Encoding114, align 8, !tbaa !29
  %197 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %198 = bitcast %struct.gc_state_s* %197 to %struct.gc_procs_common_s**
  %199 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %198, align 8, !tbaa !1
  %reloc_struct_ptr115 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %199, i32 0, i32 0
  %200 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr115, align 8, !tbaa !51
  %201 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u116 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %201, i32 0, i32 20
  %simple117 = bitcast %union.anon.1* %u116 to %struct.anon.3*
  %v118 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple117, i32 0, i32 5
  %202 = load %struct.gs_point_s*, %struct.gs_point_s** %v118, align 8, !tbaa !34
  %203 = bitcast %struct.gs_point_s* %202 to i8*
  %204 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call119 = call i8* %200(i8* %203, %struct.gc_state_s* %204) #5
  %205 = bitcast i8* %call119 to %struct.gs_point_s*
  %206 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u120 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %206, i32 0, i32 20
  %simple121 = bitcast %union.anon.1* %u120 to %struct.anon.3*
  %v122 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple121, i32 0, i32 5
  store %struct.gs_point_s* %205, %struct.gs_point_s** %v122, align 8, !tbaa !34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.71, %sw.bb.26, %if.end
  %207 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.pdf_outline_fonts_s* @pdf_outline_fonts_alloc(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.pdf_outline_fonts_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pofs = alloca %struct.pdf_outline_fonts_s*, align 8
  %ppsf = alloca %struct.pdf_standard_font_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_outline_fonts_s** %pofs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !53
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_outline_fonts to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.pdf_outline_fonts_s*
  store %struct.pdf_outline_fonts_s* %4, %struct.pdf_outline_fonts_s** %pofs, align 8, !tbaa !1
  %5 = bitcast %struct.pdf_standard_font_s** %ppsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 12
  %7 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !56
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i8* %7(%struct.gs_memory_s* %8, i32 14, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_standard_font_element to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #5
  %9 = bitcast i8* %call2 to %struct.pdf_standard_font_s*
  store %struct.pdf_standard_font_s* %9, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %10 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %pofs, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_outline_fonts_s* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.pdf_standard_font_s* %11, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.pdf_outline_fonts_s* null, %struct.pdf_outline_fonts_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %13 = bitcast %struct.pdf_standard_font_s* %12 to i8*
  %call4 = call i8* @memset(i8* %13, i32 0, i64 448) #6
  %14 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %pofs, align 8, !tbaa !1
  %15 = bitcast %struct.pdf_outline_fonts_s* %14 to i8*
  %call5 = call i8* @memset(i8* %15, i32 0, i64 8) #6
  %16 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %17 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %pofs, align 8, !tbaa !1
  %standard_fonts = getelementptr inbounds %struct.pdf_outline_fonts_s, %struct.pdf_outline_fonts_s* %17, i32 0, i32 0
  store %struct.pdf_standard_font_s* %16, %struct.pdf_standard_font_s** %standard_fonts, align 8, !tbaa !57
  %18 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %pofs, align 8, !tbaa !1
  store %struct.pdf_outline_fonts_s* %18, %struct.pdf_outline_fonts_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.pdf_standard_font_s** %ppsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.pdf_outline_fonts_s** %pofs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %retval
  ret %struct.pdf_outline_fonts_s* %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.pdf_standard_font_s* @pdf_standard_fonts(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 160
  %1 = load %struct.pdf_text_data_s*, %struct.pdf_text_data_s** %text, align 8, !tbaa !59
  %outline_fonts = getelementptr inbounds %struct.pdf_text_data_s, %struct.pdf_text_data_s* %1, i32 0, i32 0
  %2 = load %struct.pdf_outline_fonts_s*, %struct.pdf_outline_fonts_s** %outline_fonts, align 8, !tbaa !95
  %standard_fonts = getelementptr inbounds %struct.pdf_outline_fonts_s, %struct.pdf_outline_fonts_s* %2, i32 0, i32 0
  %3 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %standard_fonts, align 8, !tbaa !57
  ret %struct.pdf_standard_font_s* %3
}

; Function Attrs: nounwind uwtable
define void @pdf_clean_standard_fonts(%struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppsf = alloca %struct.pdf_standard_font_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_standard_font_s** %ppsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.pdf_standard_font_s* @pdf_standard_fonts(%struct.gx_device_pdf_s* %1) #5
  store %struct.pdf_standard_font_s* %call, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %2 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %ppsf, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_standard_font_s* %2 to i8*
  %call1 = call i8* @memset(i8* %3, i32 0, i64 448) #6
  %4 = bitcast %struct.pdf_standard_font_s** %ppsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @font_resource_free(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %0, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont, i32 0, i32 1
  %1 = load i32, i32* %size, align 4, !tbaa !97
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 12
  %3 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !18
  %cmp = icmp eq %struct.pdf_base_font_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %4, i32 0, i32 12
  %5 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font1, align 8, !tbaa !18
  %is_standard = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %5, i32 0, i32 3
  %6 = load i32, i32* %is_standard, align 4, !tbaa !98
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 43
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %9 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !101
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 43
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory3, align 8, !tbaa !100
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont4, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !102
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 10
  %size6 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont5, i32 0, i32 1
  %15 = load i32, i32* %size6, align 4, !tbaa !97
  call void %9(%struct.gs_memory_s* %11, i8* %13, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont7 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %16, i32 0, i32 10
  %data8 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont7, i32 0, i32 0
  store i8* null, i8** %data8, align 8, !tbaa !102
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 10
  %size10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont9, i32 0, i32 1
  store i32 0, i32* %size10, align 4, !tbaa !97
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 14
  %19 = load double*, double** %Widths, align 8, !tbaa !19
  %tobool11 = icmp ne double* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 43
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory13, align 8, !tbaa !100
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory15 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 43
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory15, align 8, !tbaa !100
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths16 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %25, i32 0, i32 14
  %26 = load double*, double** %Widths16, align 8, !tbaa !19
  %27 = bitcast double* %26 to i8*
  call void %22(%struct.gs_memory_s* %24, i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #5
  %28 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths17 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %28, i32 0, i32 14
  store double* null, double** %Widths17, align 8, !tbaa !19
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.end
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %29, i32 0, i32 15
  %30 = load i8*, i8** %used, align 8, !tbaa !20
  %tobool19 = icmp ne i8* %30, null
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.18
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %31, i32 0, i32 43
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory21, align 8, !tbaa !100
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !103
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 43
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory24, align 8, !tbaa !100
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used25 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 15
  %37 = load i8*, i8** %used25, align 8, !tbaa !20
  call void %33(%struct.gs_memory_s* %35, i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #5
  %38 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used26 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %38, i32 0, i32 15
  store i8* null, i8** %used26, align 8, !tbaa !20
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.end.18
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %39, i32 0, i32 16
  %40 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !21
  %tobool28 = icmp ne %struct.pdf_resource_s* %40, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %41 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %41, i32 0, i32 16
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %res_ToUnicode30, align 8, !tbaa !21
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 17
  %43 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !22
  %tobool32 = icmp ne %struct.gs_cmap_s* %43, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.31
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 43
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory34, align 8, !tbaa !100
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode35 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 17
  %47 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode35, align 8, !tbaa !22
  %call = call i32 @gs_cmap_ToUnicode_free(%struct.gs_memory_s* %45, %struct.gs_cmap_s* %47) #5
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %cmap_ToUnicode36 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 17
  store %struct.gs_cmap_s* null, %struct.gs_cmap_s** %cmap_ToUnicode36, align 8, !tbaa !22
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.31
  %49 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %49, i32 0, i32 8
  %50 = load i32, i32* %FontType, align 4, !tbaa !23
  switch i32 %50, label %sw.default [
    i32 0, label %sw.epilog
    i32 53, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 3, label %sw.bb
    i32 54, label %sw.bb
    i32 9, label %sw.bb.82
    i32 11, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %if.end.37, %if.end.37, %if.end.37, %if.end.37, %if.end.37
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  %52 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !29
  %tobool38 = icmp ne %struct.pdf_encoding_element_s* %52, null
  br i1 %tobool38, label %if.then.39, label %if.end.50

if.then.39:                                       ; preds = %sw.bb
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory40 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 43
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory40, align 8, !tbaa !100
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object42 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object42, align 8, !tbaa !103
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 43
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory43, align 8, !tbaa !100
  %58 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u44 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %58, i32 0, i32 20
  %simple45 = bitcast %union.anon.1* %u44 to %struct.anon.3*
  %Encoding46 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple45, i32 0, i32 4
  %59 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding46, align 8, !tbaa !29
  %60 = bitcast %struct.pdf_encoding_element_s* %59 to i8*
  call void %55(%struct.gs_memory_s* %57, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u47 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 20
  %simple48 = bitcast %union.anon.1* %u47 to %struct.anon.3*
  %Encoding49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple48, i32 0, i32 4
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %Encoding49, align 8, !tbaa !29
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.39, %sw.bb
  %62 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u51 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %62, i32 0, i32 20
  %simple52 = bitcast %union.anon.1* %u51 to %struct.anon.3*
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple52, i32 0, i32 5
  %63 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !34
  %tobool53 = icmp ne %struct.gs_point_s* %63, null
  br i1 %tobool53, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %if.end.50
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 43
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory55, align 8, !tbaa !100
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object57, align 8, !tbaa !103
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %67, i32 0, i32 43
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory58, align 8, !tbaa !100
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u59 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 20
  %simple60 = bitcast %union.anon.1* %u59 to %struct.anon.3*
  %v61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple60, i32 0, i32 5
  %70 = load %struct.gs_point_s*, %struct.gs_point_s** %v61, align 8, !tbaa !34
  %71 = bitcast %struct.gs_point_s* %70 to i8*
  call void %66(%struct.gs_memory_s* %68, i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #5
  %72 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %72, i32 0, i32 20
  %simple63 = bitcast %union.anon.1* %u62 to %struct.anon.3*
  %v64 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple63, i32 0, i32 5
  store %struct.gs_point_s* null, %struct.gs_point_s** %v64, align 8, !tbaa !34
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.54, %if.end.50
  %73 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u66 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %73, i32 0, i32 20
  %simple67 = bitcast %union.anon.1* %u66 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple67, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s to %struct.anon.7*
  %char_procs = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 2
  %74 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs, align 8, !tbaa !36
  %tobool68 = icmp ne %struct.pdf_char_proc_ownership_s* %74, null
  br i1 %tobool68, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %if.end.65
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %76 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u70 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %76, i32 0, i32 20
  %simple71 = bitcast %union.anon.1* %u70 to %struct.anon.3*
  %s72 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple71, i32 0, i32 7
  %type373 = bitcast %union.anon.4* %s72 to %struct.anon.7*
  %char_procs74 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type373, i32 0, i32 2
  %77 = load %struct.pdf_char_proc_ownership_s*, %struct.pdf_char_proc_ownership_s** %char_procs74, align 8, !tbaa !36
  %78 = bitcast %struct.pdf_char_proc_ownership_s* %77 to %struct.pdf_resource_s*
  %call75 = call i32 @pdf_free_charproc_ownership(%struct.gx_device_pdf_s* %75, %struct.pdf_resource_s* %78) #5
  %79 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u76 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %79, i32 0, i32 20
  %simple77 = bitcast %union.anon.1* %u76 to %struct.anon.3*
  %s78 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple77, i32 0, i32 7
  %type379 = bitcast %union.anon.4* %s78 to %struct.anon.7*
  %char_procs80 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type379, i32 0, i32 2
  store %struct.pdf_char_proc_ownership_s* null, %struct.pdf_char_proc_ownership_s** %char_procs80, align 8, !tbaa !36
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.69, %if.end.65
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.37, %if.end.37
  %80 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u83 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %80, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u83 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 6
  %81 = load i8*, i8** %used2, align 8, !tbaa !47
  %tobool84 = icmp ne i8* %81, null
  br i1 %tobool84, label %if.then.85, label %if.end.96

if.then.85:                                       ; preds = %sw.bb.82
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory86 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 43
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory86, align 8, !tbaa !100
  %procs87 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 1
  %free_object88 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs87, i32 0, i32 2
  %84 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object88, align 8, !tbaa !103
  %85 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory89 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %85, i32 0, i32 43
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory89, align 8, !tbaa !100
  %87 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u90 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %87, i32 0, i32 20
  %cidfont91 = bitcast %union.anon.1* %u90 to %struct.anon.2*
  %used292 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont91, i32 0, i32 6
  %88 = load i8*, i8** %used292, align 8, !tbaa !47
  call void %84(%struct.gs_memory_s* %86, i8* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  %89 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u93 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %89, i32 0, i32 20
  %cidfont94 = bitcast %union.anon.1* %u93 to %struct.anon.2*
  %used295 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont94, i32 0, i32 6
  store i8* null, i8** %used295, align 8, !tbaa !47
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.85, %sw.bb.82
  %90 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u97 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %90, i32 0, i32 20
  %cidfont98 = bitcast %union.anon.1* %u97 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont98, i32 0, i32 1
  %91 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !43
  %tobool99 = icmp ne i16* %91, null
  br i1 %tobool99, label %if.then.100, label %if.end.111

if.then.100:                                      ; preds = %if.end.96
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory101 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %92, i32 0, i32 43
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory101, align 8, !tbaa !100
  %procs102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 1
  %free_object103 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs102, i32 0, i32 2
  %94 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object103, align 8, !tbaa !103
  %95 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory104 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %95, i32 0, i32 43
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory104, align 8, !tbaa !100
  %97 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u105 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %97, i32 0, i32 20
  %cidfont106 = bitcast %union.anon.1* %u105 to %struct.anon.2*
  %CIDToGIDMap107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont106, i32 0, i32 1
  %98 = load i16*, i16** %CIDToGIDMap107, align 8, !tbaa !43
  %99 = bitcast i16* %98 to i8*
  call void %94(%struct.gs_memory_s* %96, i8* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #5
  %100 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u108 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %100, i32 0, i32 20
  %cidfont109 = bitcast %union.anon.1* %u108 to %struct.anon.2*
  %CIDToGIDMap110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont109, i32 0, i32 1
  store i16* null, i16** %CIDToGIDMap110, align 8, !tbaa !43
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.100, %if.end.96
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.37
  %101 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u112 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %101, i32 0, i32 20
  %simple113 = bitcast %union.anon.1* %u112 to %struct.anon.3*
  %Encoding114 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple113, i32 0, i32 4
  %102 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding114, align 8, !tbaa !29
  %tobool115 = icmp ne %struct.pdf_encoding_element_s* %102, null
  br i1 %tobool115, label %if.then.116, label %if.end.127

if.then.116:                                      ; preds = %sw.default
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory117 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %103, i32 0, i32 43
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory117, align 8, !tbaa !100
  %procs118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %free_object119 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs118, i32 0, i32 2
  %105 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object119, align 8, !tbaa !103
  %106 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory120 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %106, i32 0, i32 43
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory120, align 8, !tbaa !100
  %108 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u121 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %108, i32 0, i32 20
  %simple122 = bitcast %union.anon.1* %u121 to %struct.anon.3*
  %Encoding123 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple122, i32 0, i32 4
  %109 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding123, align 8, !tbaa !29
  %110 = bitcast %struct.pdf_encoding_element_s* %109 to i8*
  call void %105(%struct.gs_memory_s* %107, i8* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  %111 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u124 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %111, i32 0, i32 20
  %simple125 = bitcast %union.anon.1* %u124 to %struct.anon.3*
  %Encoding126 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple125, i32 0, i32 4
  store %struct.pdf_encoding_element_s* null, %struct.pdf_encoding_element_s** %Encoding126, align 8, !tbaa !29
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.116, %sw.default
  %112 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u128 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %112, i32 0, i32 20
  %simple129 = bitcast %union.anon.1* %u128 to %struct.anon.3*
  %v130 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple129, i32 0, i32 5
  %113 = load %struct.gs_point_s*, %struct.gs_point_s** %v130, align 8, !tbaa !34
  %tobool131 = icmp ne %struct.gs_point_s* %113, null
  br i1 %tobool131, label %if.then.132, label %if.end.143

if.then.132:                                      ; preds = %if.end.127
  %114 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory133 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %114, i32 0, i32 43
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory133, align 8, !tbaa !100
  %procs134 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 1
  %free_object135 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs134, i32 0, i32 2
  %116 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object135, align 8, !tbaa !103
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory136 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %117, i32 0, i32 43
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory136, align 8, !tbaa !100
  %119 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u137 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %119, i32 0, i32 20
  %simple138 = bitcast %union.anon.1* %u137 to %struct.anon.3*
  %v139 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple138, i32 0, i32 5
  %120 = load %struct.gs_point_s*, %struct.gs_point_s** %v139, align 8, !tbaa !34
  %121 = bitcast %struct.gs_point_s* %120 to i8*
  call void %116(%struct.gs_memory_s* %118, i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #5
  %122 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u140 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %122, i32 0, i32 20
  %simple141 = bitcast %union.anon.1* %u140 to %struct.anon.3*
  %v142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple141, i32 0, i32 5
  store %struct.gs_point_s* null, %struct.gs_point_s** %v142, align 8, !tbaa !34
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.132, %if.end.127
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.143, %if.end.111, %if.end.81, %if.end.37
  %123 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %123, i32 0, i32 7
  %124 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !104
  %tobool144 = icmp ne %struct.cos_object_s* %124, null
  br i1 %tobool144, label %if.then.145, label %if.end.152

if.then.145:                                      ; preds = %sw.epilog
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory146 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 43
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory146, align 8, !tbaa !100
  %procs147 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %126, i32 0, i32 1
  %free_object148 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs147, i32 0, i32 2
  %127 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object148, align 8, !tbaa !103
  %128 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory149 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %128, i32 0, i32 43
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory149, align 8, !tbaa !100
  %130 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object150 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %130, i32 0, i32 7
  %131 = load %struct.cos_object_s*, %struct.cos_object_s** %object150, align 8, !tbaa !104
  %132 = bitcast %struct.cos_object_s* %131 to i8*
  call void %127(%struct.gs_memory_s* %129, i8* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #5
  %133 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %object151 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %133, i32 0, i32 7
  store %struct.cos_object_s* null, %struct.cos_object_s** %object151, align 8, !tbaa !104
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.145, %sw.epilog
  %134 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %134, i32 0, i32 11
  %135 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %tobool153 = icmp ne %struct.pdf_font_descriptor_s* %135, null
  br i1 %tobool153, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.end.152
  %136 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor155 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %136, i32 0, i32 11
  store %struct.pdf_font_descriptor_s* null, %struct.pdf_font_descriptor_s** %FontDescriptor155, align 8, !tbaa !15
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %if.end.152
  ret i32 0
}

declare i32 @gs_cmap_ToUnicode_free(%struct.gs_memory_s*, %struct.gs_cmap_s*) #3

declare i32 @pdf_free_charproc_ownership(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_assign_font_object_id(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdfont1 = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_font_resource_s* %0 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %1) #5
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %5 = bitcast %struct.pdf_font_resource_s* %4 to %struct.pdf_resource_s*
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %3, %struct.pdf_resource_s* %5, i64 0) #5
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 11
  %8 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %call1 = call i32 @pdf_mark_font_descriptor_used(%struct.gx_device_pdf_s* %6, %struct.pdf_font_descriptor_s* %8) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end:                                           ; preds = %if.then
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 8
  %12 = load i32, i32* %FontType, align 4, !tbaa !23
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %13 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 0
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !24
  store %struct.pdf_font_resource_s* %15, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %16 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %call6 = call i64 @pdf_font_id(%struct.pdf_font_resource_s* %16) #5
  %cmp7 = icmp eq i64 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %19 = bitcast %struct.pdf_font_resource_s* %18 to %struct.pdf_resource_s*
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %17, %struct.pdf_resource_s* %19, i64 0) #5
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %21 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont1, align 8, !tbaa !1
  %FontDescriptor9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %21, i32 0, i32 11
  %22 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor9, align 8, !tbaa !15
  %call10 = call i32 @pdf_mark_font_descriptor_used(%struct.gx_device_pdf_s* %20, %struct.pdf_font_descriptor_s* %22) #5
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %23, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.12
  %25 = bitcast %struct.pdf_font_resource_s** %pdfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %cleanup, %if.then.3
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest.17 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.17, label %unreachable [
    i32 0, label %cleanup.cont.18
    i32 1, label %return
  ]

cleanup.cont.18:                                  ; preds = %cleanup.16
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont.18, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %cleanup.16
  %27 = load i32, i32* %retval
  ret i32 %27

unreachable:                                      ; preds = %cleanup.16
  unreachable
}

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #3

declare void @pdf_reserve_object_id(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i64) #3

declare i32 @pdf_mark_font_descriptor_used(%struct.gx_device_pdf_s*, %struct.pdf_font_descriptor_s*) #3

; Function Attrs: nounwind uwtable
define i64 @pdf_font_id(%struct.pdf_font_resource_s* %pdfont) #0 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %1 = bitcast %struct.pdf_font_resource_s* %0 to %struct.pdf_resource_s*
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %1) #5
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @font_resource_encoded_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i64 %rid, i32 %ftype, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rid.addr = alloca i64, align 8
  %ftype.addr = alloca i32, align 4
  %write_contents.addr = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, align 8
  %Encoding = alloca %struct.pdf_encoding_element_s*, align 8
  %v = alloca %struct.gs_point_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !106
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_encoding_element_s** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %3 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !56
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !100
  %call = call i8* %3(%struct.gs_memory_s* %5, i32 256, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_encoding_element to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.pdf_encoding_element_s*
  store %struct.pdf_encoding_element_s* %6, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %7 = bitcast %struct.gs_point_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 43
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory2, align 8, !tbaa !100
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 10
  %10 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory4 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 43
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory4, align 8, !tbaa !100
  %call5 = call i8* %10(%struct.gs_memory_s* %12, i32 256, i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #5
  %13 = bitcast i8* %call5 to %struct.gs_point_s*
  store %struct.gs_point_s* %13, %struct.gs_point_s** %v, align 8, !tbaa !1
  %14 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_point_s* %17, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.pdf_encoding_element_s* %18, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory7 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %19, i32 0, i32 43
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory7, align 8, !tbaa !100
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory9 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 43
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory9, align 8, !tbaa !100
  %24 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %25 = bitcast %struct.pdf_encoding_element_s* %24 to i8*
  call void %21(%struct.gs_memory_s* %23, i8* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory10 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 43
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory10, align 8, !tbaa !100
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !103
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 43
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory13, align 8, !tbaa !100
  %31 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !1
  %32 = bitcast %struct.gs_point_s* %31 to i8*
  call void %28(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %34 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %35 = load i32, i32* %ftype.addr, align 4, !tbaa !106
  %36 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %call14 = call i32 @font_resource_simple_alloc(%struct.gx_device_pdf_s* %33, %struct.pdf_font_resource_s** %pdfont, i64 %34, i32 %35, i32 256, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %36) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %37, 0
  br i1 %cmp15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.end
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 43
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory17, align 8, !tbaa !100
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !103
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory20 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 43
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory20, align 8, !tbaa !100
  %43 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %44 = bitcast %struct.pdf_encoding_element_s* %43 to i8*
  call void %40(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory21 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %45, i32 0, i32 43
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory21, align 8, !tbaa !100
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !103
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 43
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory24, align 8, !tbaa !100
  %50 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !1
  %51 = bitcast %struct.gs_point_s* %50 to i8*
  call void %47(%struct.gs_memory_s* %49, i8* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end
  %52 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !1
  %53 = bitcast %struct.gs_point_s* %52 to i8*
  %call26 = call i8* @memset(i8* %53, i32 0, i64 4096) #6
  %54 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %55 = bitcast %struct.pdf_encoding_element_s* %54 to i8*
  %call27 = call i8* @memset(i8* %55, i32 0, i64 8192) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %56, 256
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %58, i64 %idxprom
  %glyph = getelementptr inbounds %struct.pdf_encoding_element_s, %struct.pdf_encoding_element_s* %arrayidx, i32 0, i32 0
  store i64 2147483647, i64* %glyph, align 8, !tbaa !108
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.pdf_encoding_element_s*, %struct.pdf_encoding_element_s** %Encoding, align 8, !tbaa !1
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %Encoding29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 4
  store %struct.pdf_encoding_element_s* %60, %struct.pdf_encoding_element_s** %Encoding29, align 8, !tbaa !29
  %62 = load %struct.gs_point_s*, %struct.gs_point_s** %v, align 8, !tbaa !1
  %63 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %63, i32 0, i32 20
  %simple31 = bitcast %union.anon.1* %u30 to %struct.anon.3*
  %v32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple31, i32 0, i32 5
  store %struct.gs_point_s* %62, %struct.gs_point_s** %v32, align 8, !tbaa !34
  %64 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %65 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %64, %struct.pdf_font_resource_s** %65, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_point_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.pdf_encoding_element_s** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @font_resource_simple_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i64 %rid, i32 %ftype, i32 %chars_count, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rid.addr = alloca i64, align 8
  %ftype.addr = alloca i32, align 4
  %chars_count.addr = alloca i32, align 4
  %write_contents.addr = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, align 8
  %pfres = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !106
  store i32 %chars_count, i32* %chars_count.addr, align 4, !tbaa !5
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pfres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %4 = load i32, i32* %ftype.addr, align 4, !tbaa !106
  %5 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %6 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %call = call i32 @font_resource_alloc(%struct.gx_device_pdf_s* %2, %struct.pdf_font_resource_s** %pfres, i32 6, i64 %3, i32 %4, i32 %5, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %9, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %FirstChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 0
  store i32 256, i32* %FirstChar, align 4, !tbaa !110
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 20
  %simple2 = bitcast %union.anon.1* %u1 to %struct.anon.3*
  %LastChar = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple2, i32 0, i32 1
  store i32 -1, i32* %LastChar, align 4, !tbaa !111
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %11, i32 0, i32 20
  %simple4 = bitcast %union.anon.1* %u3 to %struct.anon.3*
  %BaseEncoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple4, i32 0, i32 2
  store i32 -1, i32* %BaseEncoding, align 4, !tbaa !112
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 20
  %simple6 = bitcast %union.anon.1* %u5 to %struct.anon.3*
  %preferred_encoding_index = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple6, i32 0, i32 3
  store i32 -1, i32* %preferred_encoding_index, align 4, !tbaa !113
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %u7 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %13, i32 0, i32 20
  %simple8 = bitcast %union.anon.1* %u7 to %struct.anon.3*
  %last_reserved_char = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple8, i32 0, i32 6
  store i32 -1, i32* %last_reserved_char, align 4, !tbaa !114
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %15 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %14, %struct.pdf_font_resource_s** %15, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.pdf_font_resource_s** %pfres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @pdf_resize_resource_arrays(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pfres, i32 %chars_count) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pfres.addr = alloca %struct.pdf_font_resource_s*, align 8
  %chars_count.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pfres, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  store i32 %chars_count, i32* %chars_count.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 13
  %6 = load i32, i32* %count, align 4, !tbaa !115
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 14
  %8 = load double*, double** %Widths, align 8, !tbaa !19
  %cmp1 = icmp ne double* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %Widths3 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 14
  %11 = bitcast double** %Widths3 to i8**
  %12 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count4 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %12, i32 0, i32 13
  %13 = load i32, i32* %count4, align 4, !tbaa !115
  %14 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %call = call i32 @pdf_resize_array(%struct.gs_memory_s* %9, i8** %11, i32 8, i32 %13, i32 %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 15
  %19 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %19, i32 0, i32 13
  %20 = load i32, i32* %count9, align 4, !tbaa !115
  %add = add i32 %20, 7
  %div = udiv i32 %add, 8
  %21 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %21, 7
  %div11 = sdiv i32 %add10, 8
  %call12 = call i32 @pdf_resize_array(%struct.gs_memory_s* %17, i8** %used, i32 1, i32 %div, i32 %div11) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %22, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.8
  %24 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %24, i32 0, i32 8
  %25 = load i32, i32* %FontType, align 4, !tbaa !23
  %cmp16 = icmp eq i32 %25, 9
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %FontType17 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %26, i32 0, i32 8
  %27 = load i32, i32* %FontType17, align 4, !tbaa !23
  %cmp18 = icmp eq i32 %27, 11
  br i1 %cmp18, label %if.then.19, label %if.end.45

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.15
  %28 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %28, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 5
  %29 = load double*, double** %v, align 8, !tbaa !35
  %cmp20 = icmp ne double* %29, null
  br i1 %cmp20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %if.then.19
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %31 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u22 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %31, i32 0, i32 20
  %cidfont23 = bitcast %union.anon.1* %u22 to %struct.anon.2*
  %v24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont23, i32 0, i32 5
  %32 = bitcast double** %v24 to i8**
  %33 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count25 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %33, i32 0, i32 13
  %34 = load i32, i32* %count25, align 4, !tbaa !115
  %mul = mul i32 %34, 2
  %35 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %mul26 = mul nsw i32 %35, 2
  %call27 = call i32 @pdf_resize_array(%struct.gs_memory_s* %30, i8** %32, i32 8, i32 %mul, i32 %mul26) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %36, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.21
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  %38 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u32 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %38, i32 0, i32 20
  %cidfont33 = bitcast %union.anon.1* %u32 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont33, i32 0, i32 4
  %39 = load double*, double** %Widths2, align 8, !tbaa !27
  %cmp34 = icmp ne double* %39, null
  br i1 %cmp34, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %if.end.31
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %41 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u36 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %41, i32 0, i32 20
  %cidfont37 = bitcast %union.anon.1* %u36 to %struct.anon.2*
  %Widths238 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont37, i32 0, i32 4
  %42 = bitcast double** %Widths238 to i8**
  %43 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count39 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %43, i32 0, i32 13
  %44 = load i32, i32* %count39, align 4, !tbaa !115
  %45 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %call40 = call i32 @pdf_resize_array(%struct.gs_memory_s* %40, i8** %42, i32 8, i32 %44, i32 %45) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %46, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.35
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.31
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %FontType46 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 8
  %49 = load i32, i32* %FontType46, align 4, !tbaa !23
  %cmp47 = icmp eq i32 %49, 11
  br i1 %cmp47, label %if.then.48, label %if.end.64

if.then.48:                                       ; preds = %if.end.45
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u49 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 20
  %cidfont50 = bitcast %union.anon.1* %u49 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont50, i32 0, i32 1
  %51 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !43
  %cmp51 = icmp ne i16* %51, null
  br i1 %cmp51, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %if.then.48
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %53 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u53 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %53, i32 0, i32 20
  %cidfont54 = bitcast %union.anon.1* %u53 to %struct.anon.2*
  %CIDToGIDMap55 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont54, i32 0, i32 1
  %54 = bitcast i16** %CIDToGIDMap55 to i8**
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count56 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 13
  %56 = load i32, i32* %count56, align 4, !tbaa !115
  %57 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %call57 = call i32 @pdf_resize_array(%struct.gs_memory_s* %52, i8** %54, i32 2, i32 %56, i32 %57) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %58, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.52
  %59 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.then.52
  %60 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %61 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u61 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %61, i32 0, i32 20
  %cidfont62 = bitcast %union.anon.1* %u61 to %struct.anon.2*
  %CIDToGIDMapLength = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont62, i32 0, i32 2
  store i32 %60, i32* %CIDToGIDMapLength, align 4, !tbaa !116
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %if.then.48
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.45
  %62 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %FontType65 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %62, i32 0, i32 8
  %63 = load i32, i32* %FontType65, align 4, !tbaa !23
  %cmp66 = icmp eq i32 %63, 9
  br i1 %cmp66, label %if.then.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.64
  %64 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %FontType68 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %64, i32 0, i32 8
  %65 = load i32, i32* %FontType68, align 4, !tbaa !23
  %cmp69 = icmp eq i32 %65, 11
  br i1 %cmp69, label %if.then.70, label %if.end.88

if.then.70:                                       ; preds = %lor.lhs.false.67, %if.end.64
  %66 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u71 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %66, i32 0, i32 20
  %cidfont72 = bitcast %union.anon.1* %u71 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont72, i32 0, i32 6
  %67 = load i8*, i8** %used2, align 8, !tbaa !47
  %cmp73 = icmp ne i8* %67, null
  br i1 %cmp73, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %if.then.70
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %69 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %u75 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %69, i32 0, i32 20
  %cidfont76 = bitcast %union.anon.1* %u75 to %struct.anon.2*
  %used277 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont76, i32 0, i32 6
  %70 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count78 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %70, i32 0, i32 13
  %71 = load i32, i32* %count78, align 4, !tbaa !115
  %add79 = add i32 %71, 7
  %div80 = udiv i32 %add79, 8
  %72 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %add81 = add nsw i32 %72, 7
  %div82 = sdiv i32 %add81, 8
  %call83 = call i32 @pdf_resize_array(%struct.gs_memory_s* %68, i8** %used277, i32 1, i32 %div80, i32 %div82) #5
  store i32 %call83, i32* %code, align 4, !tbaa !5
  %73 = load i32, i32* %code, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %73, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.74
  %74 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %if.then.74
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.70
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %lor.lhs.false.67
  %75 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %76 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres.addr, align 8, !tbaa !1
  %count89 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %76, i32 0, i32 13
  store i32 %75, i32* %count89, align 4, !tbaa !115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.85, %if.then.59, %if.then.42, %if.then.29, %if.then.14, %if.then.6, %if.then
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_resize_array(%struct.gs_memory_s* %mem, i8** %p, i32 %elem_size, i32 %old_size, i32 %new_size) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %p.addr = alloca i8**, align 8
  %elem_size.addr = alloca i32, align 4
  %old_size.addr = alloca i32, align 4
  %new_size.addr = alloca i32, align 4
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store i32 %elem_size, i32* %elem_size.addr, align 4, !tbaa !5
  store i32 %old_size, i32* %old_size.addr, align 4, !tbaa !5
  store i32 %new_size, i32* %new_size.addr, align 4, !tbaa !5
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %2 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %5 = load i32, i32* %elem_size.addr, align 4, !tbaa !5
  %call = call i8* %2(%struct.gs_memory_s* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %call, i8** %q, align 8, !tbaa !1
  %6 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %q, align 8, !tbaa !1
  %8 = load i32, i32* %elem_size.addr, align 4, !tbaa !5
  %9 = load i32, i32* %old_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %10 = load i32, i32* %elem_size.addr, align 4, !tbaa !5
  %11 = load i32, i32* %new_size.addr, align 4, !tbaa !5
  %12 = load i32, i32* %old_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  %mul1 = mul nsw i32 %10, %sub
  %conv = sext i32 %mul1 to i64
  %call2 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv) #6
  %13 = load i8*, i8** %q, align 8, !tbaa !1
  %14 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %14, align 8, !tbaa !1
  %16 = load i32, i32* %elem_size.addr, align 4, !tbaa !5
  %17 = load i32, i32* %old_size.addr, align 4, !tbaa !5
  %mul3 = mul nsw i32 %16, %17
  %conv4 = sext i32 %mul3 to i64
  %call5 = call i8* @memcpy(i8* %13, i8* %15, i64 %conv4) #6
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %21, align 8, !tbaa !1
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #5
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %24 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  store i8* %23, i8** %24, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %pdfont, i32 %complete) #0 {
entry:
  %retval = alloca %struct.gs_font_base_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %complete.addr = alloca i32, align 4
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %complete, i32* %complete.addr, align 4, !tbaa !5
  %0 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %0, i32 0, i32 12
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font, align 8, !tbaa !18
  %cmp = icmp ne %struct.pdf_base_font_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %base_font1 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %2, i32 0, i32 12
  %3 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %base_font1, align 8, !tbaa !18
  %4 = load i32, i32* %complete.addr, align 4, !tbaa !5
  %call = call %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s* %3, i32 %4) #5
  store %struct.gs_font_base_s* %call, %struct.gs_font_base_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 11
  %6 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %cmp2 = icmp eq %struct.pdf_font_descriptor_s* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 11
  %8 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor5, align 8, !tbaa !15
  %9 = load i32, i32* %complete.addr, align 4, !tbaa !5
  %call6 = call %struct.gs_font_base_s* @pdf_font_descriptor_font(%struct.pdf_font_descriptor_s* %8, i32 %9) #5
  store %struct.gs_font_base_s* %call6, %struct.gs_font_base_s** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %retval
  ret %struct.gs_font_base_s* %10
}

declare %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s*, i32) #3

declare %struct.gs_font_base_s* @pdf_font_descriptor_font(%struct.pdf_font_descriptor_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_font_embed_status(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, i32* %pindex, %struct.pdf_char_glyph_pair_s* %pairs, i32 %num_glyphs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %pairs.addr = alloca %struct.pdf_char_glyph_pair_s*, align 8
  %num_glyphs.addr = alloca i32, align 4
  %fn = alloca %struct.gs_font_name_s*, align 8
  %chars = alloca i8*, align 8
  %size = alloca i32, align 4
  %index = alloca i32, align 4
  %embed_as_standard_called = alloca i32, align 4
  %do_embed_as_standard = alloca i32, align 4
  %code = alloca i32, align 4
  %info = alloca %struct.gs_font_info_s, align 8
  %name = alloca [48 x i8], align 16
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store %struct.pdf_char_glyph_pair_s* %pairs, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_font_name_s** %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 22
  store %struct.gs_font_name_s* %font_name, %struct.gs_font_name_s** %fn, align 8, !tbaa !1
  %2 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %fn, align 8, !tbaa !1
  %chars1 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars1, i32 0, i32 0
  store i8* %arraydecay, i8** %chars, align 8, !tbaa !1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %fn, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size2, align 4, !tbaa !117
  store i32 %6, i32* %size, align 4, !tbaa !5
  %7 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %chars, align 8, !tbaa !1
  %9 = load i32, i32* %size, align 4, !tbaa !5
  %call = call i32 @pdf_find_standard_font_name(i8* %8, i32 %9) #5
  store i32 %call, i32* %index, align 4, !tbaa !5
  %10 = bitcast i32* %embed_as_standard_called to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %embed_as_standard_called, align 4, !tbaa !5
  %11 = bitcast i32* %do_embed_as_standard to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %do_embed_as_standard, align 4, !tbaa !5
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %13) #1
  %14 = bitcast %struct.gs_font_info_s* %info to i8*
  %call3 = call i8* @memset(i8* %14, i32 0, i64 160) #6
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %16 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !119
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call4 = call i32 %16(%struct.gs_font_s* %17, %struct.gs_point_s* null, i32 16384, %struct.gs_font_info_s* %info) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %entry
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %19 = load i32, i32* %members, align 4, !tbaa !123
  %and = and i32 %19, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.lhs.true
  %EmbeddingRights = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 22
  %20 = load i32, i32* %EmbeddingRights, align 4, !tbaa !126
  %cmp5 = icmp eq i32 %20, 2
  br i1 %cmp5, label %land.lhs.true.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %EmbeddingRights6 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 22
  %21 = load i32, i32* %EmbeddingRights6, align 4, !tbaa !126
  %and7 = and i32 %21, 512
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %lor.lhs.false, %if.then
  %22 = load i8*, i8** %chars, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %call10 = call i32 @IsInWhiteList(i8* %22, i32 %23) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.9
  %24 = bitcast [48 x i8]* %name to i8*
  call void @llvm.lifetime.start(i64 48, i8* %24) #1
  %25 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font_name13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 22
  %size14 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name13, i32 0, i32 1
  %27 = load i32, i32* %size14, align 4, !tbaa !127
  %cmp15 = icmp ult i32 47, %27
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font_name16 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %28, i32 0, i32 22
  %size17 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name16, i32 0, i32 1
  %29 = load i32, i32* %size17, align 4, !tbaa !127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 47, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, i32* %len, align 4, !tbaa !5
  %arraydecay18 = getelementptr inbounds [48 x i8], [48 x i8]* %name, i32 0, i32 0
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %font_name19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %30, i32 0, i32 22
  %chars20 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name19, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [48 x i8], [48 x i8]* %chars20, i32 0, i32 0
  %31 = load i32, i32* %len, align 4, !tbaa !5
  %conv = sext i32 %31 to i64
  %call22 = call i8* @memcpy(i8* %arraydecay18, i8* %arraydecay21, i64 %conv) #6
  %32 = load i32, i32* %len, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %name, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !106
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 43
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  %call23 = call i8* @gs_program_name() #5
  %call24 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %34, i8* %call23, i64 %call24) #5
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory25 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 43
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory25, align 8, !tbaa !100
  %arraydecay26 = getelementptr inbounds [48 x i8], [48 x i8]* %name, i32 0, i32 0
  %call27 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %36, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay26) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast [48 x i8]* %name to i8*
  call void @llvm.lifetime.end(i64 48, i8* %38) #1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.9, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %land.lhs.true, %entry
  %39 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %tobool29 = icmp ne i32* %39, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %40 = load i32, i32* %index, align 4, !tbaa !5
  %41 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %40, i32* %41, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 108
  %43 = load i32, i32* %PDFX, align 4, !tbaa !128
  %tobool32 = icmp ne i32 %43, 0
  br i1 %tobool32, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.31
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 109
  %45 = load i32, i32* %PDFA, align 4, !tbaa !129
  %cmp34 = icmp ne i32 %45, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.end.31
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false.33
  %46 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %46, i32 0, i32 75
  %47 = load double, double* %CompatibilityLevel, align 8, !tbaa !130
  %cmp38 = fcmp olt double %47, 1.300000e+00
  br i1 %cmp38, label %if.then.40, label %if.end.54

if.then.40:                                       ; preds = %if.end.37
  %48 = load i32, i32* %index, align 4, !tbaa !5
  %cmp41 = icmp sge i32 %48, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.53

land.lhs.true.43:                                 ; preds = %if.then.40
  store i32 1, i32* %embed_as_standard_called, align 4, !tbaa !5
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %51 = load i32, i32* %index, align 4, !tbaa !5
  %52 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %53 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call44 = call i32 @embed_as_standard(%struct.gx_device_pdf_s* %49, %struct.gs_font_s* %50, i32 %51, %struct.pdf_char_glyph_pair_s* %52, i32 %53) #5
  store i32 %call44, i32* %do_embed_as_standard, align 4, !tbaa !5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %land.lhs.true.43
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 99
  %55 = load i32, i32* %ForOPDFRead, align 4, !tbaa !131
  %tobool47 = icmp ne i32 %55, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %if.then.46
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call49 = call i32 @has_extension_glyphs(%struct.gs_font_s* %56) #5
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %land.lhs.true.48, %if.then.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %land.lhs.true.43, %if.then.40
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.37
  %57 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %57, i32 0, i32 73
  %NeverEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 28
  %58 = load i8*, i8** %chars, align 8, !tbaa !1
  %59 = load i32, i32* %size, align 4, !tbaa !5
  %call55 = call i32 @embed_list_includes(%struct.gs_param_string_array_s* %NeverEmbed, i8* %58, i32 %59) #5
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.67

lor.lhs.false.57:                                 ; preds = %if.end.54
  %60 = load i32, i32* %index, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %60, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.79

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %61 = load i32, i32* %embed_as_standard_called, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %61, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %land.lhs.true.60
  %62 = load i32, i32* %do_embed_as_standard, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %62, 0
  br i1 %tobool63, label %if.end.79, label %if.then.67

cond.false.64:                                    ; preds = %land.lhs.true.60
  store i32 1, i32* %embed_as_standard_called, align 4, !tbaa !5
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %64 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %65 = load i32, i32* %index, align 4, !tbaa !5
  %66 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %67 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call65 = call i32 @embed_as_standard(%struct.gx_device_pdf_s* %63, %struct.gs_font_s* %64, i32 %65, %struct.pdf_char_glyph_pair_s* %66, i32 %67) #5
  store i32 %call65, i32* %do_embed_as_standard, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.79, label %if.then.67

if.then.67:                                       ; preds = %cond.false.64, %cond.true.62, %if.end.54
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params68 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 73
  %EmbedAllFonts = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params68, i32 0, i32 30
  %69 = load i32, i32* %EmbedAllFonts, align 4, !tbaa !132
  %tobool69 = icmp ne i32 %69, 0
  br i1 %tobool69, label %if.then.77, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.then.67
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %call71 = call i32 @font_is_symbolic(%struct.gs_font_s* %70) #5
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.70
  %71 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %71, i32 0, i32 73
  %AlwaysEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params74, i32 0, i32 27
  %72 = load i8*, i8** %chars, align 8, !tbaa !1
  %73 = load i32, i32* %size, align 4, !tbaa !5
  %call75 = call i32 @embed_list_includes(%struct.gs_param_string_array_s* %AlwaysEmbed, i8* %72, i32 %73) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.70, %if.then.67
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %lor.lhs.false.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %cond.false.64, %cond.true.62, %lor.lhs.false.57
  %74 = load i32, i32* %index, align 4, !tbaa !5
  %cmp80 = icmp sge i32 %74, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.90

land.lhs.true.82:                                 ; preds = %if.end.79
  %75 = load i32, i32* %embed_as_standard_called, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %75, 0
  br i1 %tobool83, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %land.lhs.true.82
  %76 = load i32, i32* %do_embed_as_standard, align 4, !tbaa !5
  %tobool85 = icmp ne i32 %76, 0
  br i1 %tobool85, label %if.then.89, label %if.end.90

cond.false.86:                                    ; preds = %land.lhs.true.82
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %79 = load i32, i32* %index, align 4, !tbaa !5
  %80 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %81 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call87 = call i32 @embed_as_standard(%struct.gx_device_pdf_s* %77, %struct.gs_font_s* %78, i32 %79, %struct.pdf_char_glyph_pair_s* %80, i32 %81) #5
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.false.86, %cond.true.84
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %cond.false.86, %cond.true.84, %if.end.79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %if.then.89, %if.then.77, %if.end.52, %if.then.51, %if.then.36, %cond.end
  %82 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %82) #1
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %do_embed_as_standard to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %embed_as_standard_called to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.gs_font_name_s** %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_find_standard_font_name(i8* %str, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ppsf = alloca %struct.pdf_standard_font_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_standard_font_info_s** %ppsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pdf_standard_font_info_s* getelementptr inbounds ([15 x %struct.pdf_standard_font_info_s], [15 x %struct.pdf_standard_font_info_s]* @standard_font_info, i32 0, i32 0), %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %fname, align 8, !tbaa !133
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4, !tbaa !135
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  %fname2 = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %fname2, align 8, !tbaa !133
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %call = call i32 @memcmp(i8* %7, i8* %8, i64 %conv) #7
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.pdf_standard_font_info_s* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([15 x %struct.pdf_standard_font_info_s]* @standard_font_info to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv4 = trunc i64 %sub.ptr.div to i32
  store i32 %conv4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %11, i32 1
  store %struct.pdf_standard_font_info_s* %incdec.ptr, %struct.pdf_standard_font_info_s** %ppsf, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast %struct.pdf_standard_font_info_s** %ppsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @IsInWhiteList(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @embed_as_standard(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_s* %font, i32 %index, %struct.pdf_char_glyph_pair_s* %pairs, i32 %num_glyphs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %index.addr = alloca i32, align 4
  %pairs.addr = alloca %struct.pdf_char_glyph_pair_s*, align 8
  %num_glyphs.addr = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.pdf_char_glyph_pair_s* %pairs, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 4
  %1 = load i32, i32* %is_resource, align 4, !tbaa !136
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_s* %3 to %struct.gs_font_base_s*
  %5 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %6 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call = call i32 @find_std_appearance(%struct.gx_device_pdf_s* %2, %struct.gs_font_base_s* %4, i32 -1, %struct.pdf_char_glyph_pair_s* %5, i32 %6) #5
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %call, %7
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 3
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !137
  %call3 = call i32 @scan_for_standard_fonts(%struct.gx_device_pdf_s* %8, %struct.gs_font_dir_s* %10) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_s* %12 to %struct.gs_font_base_s*
  %14 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %15 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call7 = call i32 @find_std_appearance(%struct.gx_device_pdf_s* %11, %struct.gs_font_base_s* %13, i32 -1, %struct.pdf_char_glyph_pair_s* %14, i32 %15) #5
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %call7, %16
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @has_extension_glyphs(%struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %glyph = alloca i64, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %sl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %call = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0)) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %sl, align 4, !tbaa !5
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %7, i64* null, i32 0, i32 0) #5
  store i64 2147483647, i64* %glyph, align 8, !tbaa !105
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %call1 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 9
  %9 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !138
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %11 = load i64, i64* %glyph, align 8, !tbaa !105
  %call3 = call i32 %9(%struct.gs_font_s* %10, i64 %11, %struct.gs_const_string_s* %str) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !33
  %15 = load i32, i32* %sl, align 4, !tbaa !5
  %sub = sub i32 %14, %15
  store i32 %sub, i32* %l, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %17 = load i32, i32* %l, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8, !tbaa !32
  %19 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %20 = load i32, i32* %sl, align 4, !tbaa !5
  %conv10 = sext i32 %20 to i64
  %call11 = call i32 @memcmp(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0), i8* %add.ptr, i64 %conv10) #7
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %genum) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.14, %if.then.12, %if.then
  %22 = bitcast i32* %sl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  %27 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @embed_list_includes(%struct.gs_param_string_array_s* %psa, i8* %chars, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %chars.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  store i8* %chars, i8** %chars.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4, !tbaa !139
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !140
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i64 %idxprom
  %data2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %data2, align 8, !tbaa !141
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data4, align 8, !tbaa !140
  %arrayidx5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i64 %idxprom3
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx5, i32 0, i32 1
  %11 = load i32, i32* %size6, align 4, !tbaa !142
  %12 = load i8*, i8** %chars.addr, align 8, !tbaa !1
  %13 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @bytes_compare(i8* %7, i32 %11, i8* %12, i32 %13) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @font_is_symbolic(%struct.gs_font_s* %font) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !143
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_base_s*
  %nearest_encoding_index = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 28
  %4 = load i32, i32* %nearest_encoding_index, align 4, !tbaa !144
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i32 %finish) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %finish.addr = alloca i32, align 4
  %pdsubf = alloca %struct.pdf_font_resource_s*, align 8
  %fname = alloca %struct.gs_string_s, align 8
  %size = alloca i32, align 4
  %data = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %i35 = alloca i32, align 4
  %j = alloca i32, align 4
  %code98 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %finish, i32* %finish.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %1, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %2 = bitcast %struct.gs_string_s* %fname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 8
  %6 = load i32, i32* %FontType, align 4, !tbaa !23
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %DescendantFont = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 0
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont, align 8, !tbaa !24
  store %struct.pdf_font_resource_s* %9, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %12 = load i32, i32* %finish.addr, align 4, !tbaa !5
  %call = call i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %10, %struct.pdf_font_resource_s* %11, i32 %12) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %13, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %15, i32 0, i32 10
  %16 = bitcast %struct.gs_string_s* %fname to i8*
  %17 = bitcast %struct.gs_string_s* %BaseFont to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false), !tbaa.struct !147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.132 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.else:                                          ; preds = %entry
  %19 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %19, i32 0, i32 11
  %20 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %cmp3 = icmp eq %struct.pdf_font_descriptor_s* %20, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.else.5:                                        ; preds = %if.else
  %21 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontDescriptor6 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %21, i32 0, i32 11
  %22 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor6, align 8, !tbaa !15
  %call7 = call %struct.gs_string_s* @pdf_font_descriptor_base_name(%struct.pdf_font_descriptor_s* %22) #5
  %23 = bitcast %struct.gs_string_s* %fname to i8*
  %24 = bitcast %struct.gs_string_s* %call7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !147
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %cleanup.cont
  %size10 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 1
  %25 = load i32, i32* %size10, align 4, !tbaa !13
  store i32 %25, i32* %size, align 4, !tbaa !5
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 43
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !148
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 43
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory11, align 8, !tbaa !100
  %31 = load i32, i32* %size, align 4, !tbaa !5
  %call12 = call i8* %28(%struct.gs_memory_s* %30, i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #5
  store i8* %call12, i8** %data, align 8, !tbaa !1
  %32 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp13 = icmp eq i8* %32, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.15:                                        ; preds = %if.end.9
  %33 = load i8*, i8** %data, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 0
  %34 = load i8*, i8** %data16, align 8, !tbaa !9
  %35 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %35 to i64
  %call17 = call i8* @memcpy(i8* %33, i8* %34, i64 %conv) #6
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType18 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 8
  %37 = load i32, i32* %FontType18, align 4, !tbaa !23
  switch i32 %37, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 42, label %sw.bb.34
    i32 11, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end.15, %if.end.15
  %38 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u19 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %38, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u19 to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type1 = bitcast %union.anon.4* %s to %struct.anon.5*
  %is_MM_instance = getelementptr inbounds %struct.anon.5, %struct.anon.5* %type1, i32 0, i32 0
  %39 = load i32, i32* %is_MM_instance, align 4, !tbaa !149
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %sw.bb
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor20 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 11
  %41 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor20, align 8, !tbaa !15
  %call21 = call i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %41) #5
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.33, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %size, align 4, !tbaa !5
  %cmp24 = icmp ult i32 %43, %44
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %45 to i64
  %46 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 %idxprom
  %47 = load i8, i8* %arrayidx, align 1, !tbaa !106
  %conv26 = zext i8 %47 to i32
  %cmp27 = icmp eq i32 %conv26, 32
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = zext i32 %48 to i64
  %49 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %49, i64 %idxprom30
  store i8 95, i8* %arrayidx31, align 1, !tbaa !106
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.15, %if.end.15
  %52 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %i35, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.52, %sw.bb.34
  %54 = load i32, i32* %i35, align 4, !tbaa !5
  %55 = load i32, i32* %size, align 4, !tbaa !5
  %cmp37 = icmp ult i32 %54, %55
  br i1 %cmp37, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %for.cond.36
  %56 = load i32, i32* %i35, align 4, !tbaa !5
  %idxprom40 = zext i32 %56 to i64
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %57, i64 %idxprom40
  %58 = load i8, i8* %arrayidx41, align 1, !tbaa !106
  %conv42 = zext i8 %58 to i32
  %cmp43 = icmp ne i32 %conv42, 32
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %for.body.39
  %59 = load i32, i32* %i35, align 4, !tbaa !5
  %idxprom46 = zext i32 %59 to i64
  %60 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %60, i64 %idxprom46
  %61 = load i8, i8* %arrayidx47, align 1, !tbaa !106
  %62 = load i32, i32* %j, align 4, !tbaa !5
  %inc48 = add i32 %62, 1
  store i32 %inc48, i32* %j, align 4, !tbaa !5
  %idxprom49 = zext i32 %62 to i64
  %63 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %63, i64 %idxprom49
  store i8 %61, i8* %arrayidx50, align 1, !tbaa !106
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %for.body.39
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %64 = load i32, i32* %i35, align 4, !tbaa !5
  %inc53 = add i32 %64, 1
  store i32 %inc53, i32* %i35, align 4, !tbaa !5
  br label %for.cond.36

for.end.54:                                       ; preds = %for.cond.36
  %65 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory55 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %65, i32 0, i32 43
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory55, align 8, !tbaa !100
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 18
  %67 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !151
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory57 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %68, i32 0, i32 43
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory57, align 8, !tbaa !100
  %70 = load i8*, i8** %data, align 8, !tbaa !1
  %71 = load i32, i32* %i35, align 4, !tbaa !5
  %72 = load i32, i32* %j, align 4, !tbaa !5
  %call58 = call i8* %67(%struct.gs_memory_s* %69, i8* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #5
  store i8* %call58, i8** %data, align 8, !tbaa !1
  %73 = load i32, i32* %j, align 4, !tbaa !5
  store i32 %73, i32* %size, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  %74 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.54, %if.end.33, %if.end.15
  %76 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont61 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %76, i32 0, i32 10
  %size62 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont61, i32 0, i32 1
  %77 = load i32, i32* %size62, align 4, !tbaa !97
  %tobool63 = icmp ne i32 %77, 0
  br i1 %tobool63, label %if.then.64, label %if.end.72

if.then.64:                                       ; preds = %sw.epilog
  %78 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory65 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %78, i32 0, i32 43
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory65, align 8, !tbaa !100
  %procs66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs66, i32 0, i32 19
  %80 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !101
  %81 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %81, i32 0, i32 43
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory67, align 8, !tbaa !100
  %83 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont68 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %83, i32 0, i32 10
  %data69 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont68, i32 0, i32 0
  %84 = load i8*, i8** %data69, align 8, !tbaa !102
  %85 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont70 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %85, i32 0, i32 10
  %size71 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont70, i32 0, i32 1
  %86 = load i32, i32* %size71, align 4, !tbaa !97
  call void %80(%struct.gs_memory_s* %82, i8* %84, i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.64, %sw.epilog
  %87 = load i8*, i8** %data, align 8, !tbaa !1
  %data73 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 0
  store i8* %87, i8** %data73, align 8, !tbaa !9
  %88 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont74 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %88, i32 0, i32 10
  %data75 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont74, i32 0, i32 0
  store i8* %87, i8** %data75, align 8, !tbaa !102
  %89 = load i32, i32* %size, align 4, !tbaa !5
  %size76 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 1
  store i32 %89, i32* %size76, align 4, !tbaa !13
  %90 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont77 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %90, i32 0, i32 10
  %size78 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont77, i32 0, i32 1
  store i32 %89, i32* %size78, align 4, !tbaa !97
  %91 = load i32, i32* %finish.addr, align 4, !tbaa !5
  %tobool79 = icmp ne i32 %91, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.121

land.lhs.true.80:                                 ; preds = %if.end.72
  %92 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor81 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %92, i32 0, i32 11
  %93 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor81, align 8, !tbaa !15
  %cmp82 = icmp ne %struct.pdf_font_descriptor_s* %93, null
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.121

land.lhs.true.84:                                 ; preds = %land.lhs.true.80
  %94 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor85 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %94, i32 0, i32 11
  %95 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor85, align 8, !tbaa !15
  %call86 = call i32 @pdf_font_descriptor_is_subset(%struct.pdf_font_descriptor_s* %95) #5
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.121

land.lhs.true.88:                                 ; preds = %land.lhs.true.84
  %data89 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 0
  %96 = load i8*, i8** %data89, align 8, !tbaa !9
  %size90 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %fname, i32 0, i32 1
  %97 = load i32, i32* %size90, align 4, !tbaa !13
  %call91 = call i32 @pdf_has_subset_prefix(i8* %96, i32 %97) #5
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.121, label %land.lhs.true.93

land.lhs.true.93:                                 ; preds = %land.lhs.true.88
  %98 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor94 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %98, i32 0, i32 11
  %99 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor94, align 8, !tbaa !15
  %call95 = call i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s* %99) #5
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.121

if.then.97:                                       ; preds = %land.lhs.true.93
  %100 = bitcast i32* %code98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor99 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %101, i32 0, i32 11
  %102 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor99, align 8, !tbaa !15
  %tobool100 = icmp ne %struct.pdf_font_descriptor_s* %102, null
  br i1 %tobool100, label %if.then.101, label %if.else.105

if.then.101:                                      ; preds = %if.then.97
  %103 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %104 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %104, i32 0, i32 15
  %105 = load i8*, i8** %used, align 8, !tbaa !20
  %106 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %106, i32 0, i32 13
  %107 = load i32, i32* %count, align 4, !tbaa !115
  %108 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontDescriptor102 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %108, i32 0, i32 11
  %109 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor102, align 8, !tbaa !15
  %110 = bitcast %struct.pdf_font_descriptor_s* %109 to i8*
  %call103 = call i8* @pdf_fontfile_hash(i8* %110) #5
  %call104 = call i32 @pdf_add_subset_prefix(%struct.gx_device_pdf_s* %103, %struct.gs_string_s* %fname, i8* %105, i32 %107, i8* %call103) #5
  store i32 %call104, i32* %code98, align 4, !tbaa !5
  br label %if.end.109

if.else.105:                                      ; preds = %if.then.97
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %112 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %used106 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %112, i32 0, i32 15
  %113 = load i8*, i8** %used106, align 8, !tbaa !20
  %114 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count107 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %114, i32 0, i32 13
  %115 = load i32, i32* %count107, align 4, !tbaa !115
  %call108 = call i32 @pdf_add_subset_prefix(%struct.gx_device_pdf_s* %111, %struct.gs_string_s* %fname, i8* %113, i32 %115, i8* null) #5
  store i32 %call108, i32* %code98, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.101
  %116 = load i32, i32* %code98, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %116, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  %117 = load i32, i32* %code98, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.113:                                       ; preds = %if.end.109
  %118 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %BaseFont114 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %118, i32 0, i32 10
  %119 = bitcast %struct.gs_string_s* %BaseFont114 to i8*
  %120 = bitcast %struct.gs_string_s* %fname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 16, i32 8, i1 false), !tbaa.struct !147
  %121 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call115 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %121, i32 0) #5
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call115, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  store i64 9223372036854775807, i64* %id, align 8, !tbaa !152
  %122 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %call116 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %122, i32 0) #5
  %UID117 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %call116, i32 0, i32 24
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID117, i32 0, i32 1
  store i64* null, i64** %xvalues, align 8, !tbaa !153
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %if.end.113, %if.then.112
  %123 = bitcast i32* %code98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %cleanup.dest.119 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.119, label %cleanup.132 [
    i32 0, label %cleanup.cont.120
  ]

cleanup.cont.120:                                 ; preds = %cleanup.118
  br label %if.end.121

if.end.121:                                       ; preds = %cleanup.cont.120, %land.lhs.true.93, %land.lhs.true.88, %land.lhs.true.84, %land.lhs.true.80, %if.end.72
  %124 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %FontType122 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %124, i32 0, i32 8
  %125 = load i32, i32* %FontType122, align 4, !tbaa !23
  %cmp123 = icmp ne i32 %125, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.131

land.lhs.true.125:                                ; preds = %if.end.121
  %126 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontDescriptor126 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %126, i32 0, i32 11
  %127 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor126, align 8, !tbaa !15
  %tobool127 = icmp ne %struct.pdf_font_descriptor_s* %127, null
  br i1 %tobool127, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %land.lhs.true.125
  %128 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontDescriptor129 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %128, i32 0, i32 11
  %129 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor129, align 8, !tbaa !15
  %call130 = call %struct.gs_string_s* @pdf_font_descriptor_name(%struct.pdf_font_descriptor_s* %129) #5
  %130 = bitcast %struct.gs_string_s* %call130 to i8*
  %131 = bitcast %struct.gs_string_s* %fname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 16, i32 8, i1 false), !tbaa.struct !147
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %land.lhs.true.125, %if.end.121
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %if.end.131, %cleanup.118, %if.then.14, %if.then.4, %cleanup
  %132 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast %struct.gs_string_s* %fname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %134) #1
  %135 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_string_s* @pdf_font_descriptor_base_name(%struct.pdf_font_descriptor_s*) #3

declare i32 @pdf_font_descriptor_embedding(%struct.pdf_font_descriptor_s*) #3

declare i32 @pdf_font_descriptor_is_subset(%struct.pdf_font_descriptor_s*) #3

declare i32 @pdf_has_subset_prefix(i8*, i32) #3

declare i32 @pdf_add_subset_prefix(%struct.gx_device_pdf_s*, %struct.gs_string_s*, i8*, i32, i8*) #3

declare i8* @pdf_fontfile_hash(i8*) #3

declare %struct.gs_string_s* @pdf_font_descriptor_name(%struct.pdf_font_descriptor_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_font_type0_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i64 %rid, %struct.pdf_font_resource_s* %DescendantFont, %struct.gs_const_string_s* %CMapName) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rid.addr = alloca i64, align 8
  %DescendantFont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %CMapName.addr = alloca %struct.gs_const_string_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store %struct.pdf_font_resource_s* %DescendantFont, %struct.pdf_font_resource_s** %DescendantFont.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %CMapName, %struct.gs_const_string_s** %CMapName.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %3 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %call = call i32 @font_resource_alloc(%struct.gx_device_pdf_s* %1, %struct.pdf_font_resource_s** %2, i32 6, i64 %3, i32 0, i32 0, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_type0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %DescendantFont.addr, align 8, !tbaa !1
  %6 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %6, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %DescendantFont1 = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 0
  store %struct.pdf_font_resource_s* %5, %struct.pdf_font_resource_s** %DescendantFont1, align 8, !tbaa !24
  %8 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %8, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %9, i32 0, i32 20
  %type03 = bitcast %union.anon.1* %u2 to %struct.anon*
  %CMapName4 = getelementptr inbounds %struct.anon, %struct.anon* %type03, i32 0, i32 2
  %10 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %CMapName.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_const_string_s* %CMapName4 to i8*
  %12 = bitcast %struct.gs_const_string_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !147
  %13 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %13, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %type06 = bitcast %union.anon.1* %u5 to %struct.anon*
  %font_index = getelementptr inbounds %struct.anon, %struct.anon* %type06, i32 0, i32 3
  store i32 0, i32* %font_index, align 4, !tbaa !154
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %16, align 8, !tbaa !1
  %call7 = call i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %15, %struct.pdf_font_resource_s* %17, i32 0) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @font_resource_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i32 %rtype, i64 %rid, i32 %ftype, i32 %chars_count, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rtype.addr = alloca i32, align 4
  %rid.addr = alloca i64, align 8
  %ftype.addr = alloca i32, align 4
  %chars_count.addr = alloca i32, align 4
  %write_contents.addr = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pfres = alloca %struct.pdf_font_resource_s*, align 8
  %widths = alloca double*, align 8
  %used = alloca i8*, align 8
  %code = alloca i32, align 4
  %is_CID_font = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i32 %rtype, i32* %rtype.addr, align 4, !tbaa !106
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !106
  store i32 %chars_count, i32* %chars_count.addr, align 4, !tbaa !5
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.pdf_font_resource_s** %pfres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double** %widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store double* null, double** %widths, align 8, !tbaa !1
  %5 = bitcast i8** %used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* null, i8** %used, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %is_CID_font to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ftype.addr, align 4, !tbaa !106
  %cmp = icmp eq i32 %8, 9
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load i32, i32* %ftype.addr, align 4, !tbaa !106
  %cmp1 = icmp eq i32 %9, 11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %is_CID_font, align 4, !tbaa !5
  %11 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end.17

if.then:                                          ; preds = %lor.end
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %size, align 4, !tbaa !5
  %14 = load i32, i32* %is_CID_font, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %16 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %call = call i8* %16(%struct.gs_memory_s* %17, i32 %18, i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #5
  %19 = bitcast i8* %call to double*
  store double* %19, double** %widths, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %21 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !155
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = load i32, i32* %size, align 4, !tbaa !5
  %call5 = call i8* %21(%struct.gs_memory_s* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)) #5
  store i8* %call5, i8** %used, align 8, !tbaa !1
  %24 = load i32, i32* %is_CID_font, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %24, 0
  br i1 %tobool6, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %25 = load double*, double** %widths, align 8, !tbaa !1
  %cmp7 = icmp eq double* %25, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %26 = load i8*, i8** %used, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %26, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %27 = load i32, i32* %is_CID_font, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %27, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %28 = load double*, double** %widths, align 8, !tbaa !1
  %29 = bitcast double* %28 to i8*
  %30 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %mul = mul i64 %conv, 8
  %call13 = call i8* @memset(i8* %29, i32 0, i64 %mul) #6
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %31 = load i8*, i8** %used, align 8, !tbaa !1
  %32 = load i32, i32* %size, align 4, !tbaa !5
  %conv15 = zext i32 %32 to i64
  %call16 = call i8* @memset(i8* %31, i32 0, i64 %conv15) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.9, %if.end.14
  %33 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %lor.end
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %35 = load i32, i32* %rtype.addr, align 4, !tbaa !106
  %36 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %37 = bitcast %struct.pdf_font_resource_s** %pfres to %struct.pdf_resource_s**
  %call18 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %34, i32 %35, i64 %36, %struct.pdf_resource_s** %37, i64 -1) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %38, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  br label %fail

if.end.22:                                        ; preds = %if.end.17
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %40 = bitcast %struct.pdf_font_resource_s* %39 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 72
  %call23 = call i8* @memset(i8* %add.ptr, i32 0, i64 232) #6
  %41 = load i32, i32* %ftype.addr, align 4, !tbaa !106
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 8
  store i32 %41, i32* %FontType, align 4, !tbaa !23
  %43 = load i32, i32* %chars_count.addr, align 4, !tbaa !5
  %44 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %44, i32 0, i32 13
  store i32 %43, i32* %count, align 4, !tbaa !115
  %45 = load double*, double** %widths, align 8, !tbaa !1
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 14
  store double* %45, double** %Widths, align 8, !tbaa !19
  %47 = load i8*, i8** %used, align 8, !tbaa !1
  %48 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %used24 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %48, i32 0, i32 15
  store i8* %47, i8** %used24, align 8, !tbaa !20
  %49 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %write_contents25 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 9
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %49, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents25, align 8, !tbaa !156
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 16
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !21
  %52 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %52, i32 0, i32 17
  store %struct.gs_cmap_s* null, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !22
  %53 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %mark_glyph = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %53, i32 0, i32 18
  store i32 (%struct.gs_memory_s*, i64, i8*)* null, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !157
  %54 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %mark_glyph_data = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %54, i32 0, i32 19
  store i8* null, i8** %mark_glyph_data, align 8, !tbaa !158
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pfres, align 8, !tbaa !1
  %56 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %55, %struct.pdf_font_resource_s** %56, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

fail:                                             ; preds = %cleanup, %if.then.21
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 2
  %58 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %60 = load i8*, i8** %used, align 8, !tbaa !1
  call void %58(%struct.gs_memory_s* %59, i8* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)) #5
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object28 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object28, align 8, !tbaa !103
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %64 = load double*, double** %widths, align 8, !tbaa !1
  %65 = bitcast double* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %fail, %if.end.22, %cleanup
  %67 = bitcast i32* %is_CID_font to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i8** %used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast double** %widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.pdf_font_resource_s** %pfres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @pdf_write_contents_type0(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_font_type3_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %write_contents.addr = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %write_contents, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  %2 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents.addr, align 8, !tbaa !1
  %call = call i32 @font_resource_simple_alloc(%struct.gx_device_pdf_s* %0, %struct.pdf_font_resource_s** %1, i64 0, i32 3, i32 256, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pdf_font_std_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i32 %is_original, i64 %rid, %struct.gs_font_base_s* %pfont, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %is_original.addr = alloca i32, align 4
  %rid.addr = alloca i64, align 8
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  %index.addr = alloca i32, align 4
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %psfi = alloca %struct.pdf_standard_font_info_s*, align 8
  %psf = alloca %struct.pdf_standard_font_s*, align 8
  %orig_matrix = alloca %struct.gs_matrix_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i32 %is_original, i32* %is_original.addr, align 4, !tbaa !5
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %4, i32 0, i32 11
  %5 = load i32, i32* %FontType, align 4, !tbaa !159
  %call = call i32 @font_resource_encoded_alloc(%struct.gx_device_pdf_s* %2, %struct.pdf_font_resource_s** %pdfont, i64 %3, i32 %5, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_std) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.pdf_standard_font_info_s** %psfi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [15 x %struct.pdf_standard_font_info_s], [15 x %struct.pdf_standard_font_info_s]* @standard_font_info, i32 0, i64 %idxprom
  store %struct.pdf_standard_font_info_s* %arrayidx, %struct.pdf_standard_font_info_s** %psfi, align 8, !tbaa !1
  %8 = bitcast %struct.pdf_standard_font_s** %psf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call %struct.pdf_standard_font_s* @pdf_standard_fonts(%struct.gx_device_pdf_s* %10) #5
  %arrayidx3 = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %call2, i64 %idxprom1
  store %struct.pdf_standard_font_s* %arrayidx3, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %11 = bitcast %struct.gs_matrix_s** %orig_matrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %is_original.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %orig_matrix4 = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %14, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix_s* [ %FontMatrix, %cond.true ], [ %orig_matrix4, %cond.false ]
  store %struct.gs_matrix_s* %cond, %struct.gs_matrix_s** %orig_matrix, align 8, !tbaa !1
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %base_font = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %17, i32 0, i32 12
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %orig_matrix, align 8, !tbaa !1
  %call5 = call i32 @pdf_base_font_alloc(%struct.gx_device_pdf_s* %16, %struct.pdf_base_font_s** %base_font, %struct.gs_font_base_s* %18, %struct.gs_matrix_s* %19, i32 1) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %21 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %psfi, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %fname, align 8, !tbaa !133
  %23 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %BaseFont = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %23, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont, i32 0, i32 0
  store i8* %22, i8** %data, align 8, !tbaa !102
  %24 = load %struct.pdf_standard_font_info_s*, %struct.pdf_standard_font_info_s** %psfi, align 8, !tbaa !1
  %fname7 = getelementptr inbounds %struct.pdf_standard_font_info_s, %struct.pdf_standard_font_info_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %fname7, align 8, !tbaa !133
  %call8 = call i64 @strlen(i8* %25) #7
  %conv = trunc i64 %call8 to i32
  %26 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %BaseFont9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %26, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %BaseFont9, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !97
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %27, i32 0, i32 3
  %28 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %28, i32 0, i32 5
  %mark_glyph = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 13
  %29 = load i32 (%struct.gs_memory_s*, i64, i8*)*, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph, align 8, !tbaa !161
  %30 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %mark_glyph10 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %30, i32 0, i32 18
  store i32 (%struct.gs_memory_s*, i64, i8*)* %29, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph10, align 8, !tbaa !157
  %31 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %32 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  call void @set_is_MM_instance(%struct.pdf_font_resource_s* %31, %struct.gs_font_base_s* %32) #5
  %33 = load i32, i32* %is_original.addr, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %33, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %34 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %35 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %pdfont13 = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %35, i32 0, i32 0
  store %struct.pdf_font_resource_s* %34, %struct.pdf_font_resource_s** %pdfont13, align 8, !tbaa !165
  %36 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %orig_matrix14 = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %36, i32 0, i32 1
  %37 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix15 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %37, i32 0, i32 9
  %38 = bitcast %struct.gs_matrix_s* %orig_matrix14 to i8*
  %39 = bitcast %struct.gs_matrix_s* %FontMatrix15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 4, i1 false), !tbaa.struct !167
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %41 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %40, %struct.pdf_font_resource_s** %41, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %42 = bitcast %struct.gs_matrix_s** %orig_matrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.pdf_standard_font_s** %psf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.pdf_standard_font_info_s** %psfi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @pdf_write_contents_std(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

declare i32 @pdf_base_font_alloc(%struct.gx_device_pdf_s*, %struct.pdf_base_font_s**, %struct.gs_font_base_s*, %struct.gs_matrix_s*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @set_is_MM_instance(%struct.pdf_font_resource_s* %pdfont, %struct.gs_font_base_s* %pfont) #0 {
entry:
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %pfont.addr = alloca %struct.gs_font_base_s*, align 8
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pfont, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !159
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_base_s* %2 to %struct.gs_font_type1_s*
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %3, i32 0, i32 29
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 25
  %count = getelementptr inbounds %struct.anon.16, %struct.anon.16* %WeightVector, i32 0, i32 0
  %4 = load i32, i32* %count, align 4, !tbaa !169
  %cmp = icmp sgt i32 %4, 0
  %conv = zext i1 %cmp to i32
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type1 = bitcast %union.anon.4* %s to %struct.anon.5*
  %is_MM_instance = getelementptr inbounds %struct.anon.5, %struct.anon.5* %type1, i32 0, i32 0
  store i32 %conv, i32* %is_MM_instance, align 4, !tbaa !149
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_font_simple_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i64 %rid, %struct.pdf_font_descriptor_s* %pfd) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rid.addr = alloca i64, align 8
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %4 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %call = call i32 @pdf_font_descriptor_FontType(%struct.pdf_font_descriptor_s* %4) #5
  %call1 = call i32 @font_resource_encoded_alloc(%struct.gx_device_pdf_s* %2, %struct.pdf_font_resource_s** %pdfont, i64 %3, i32 %call, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_simple) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %8 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %8, i32 0, i32 11
  store %struct.pdf_font_descriptor_s* %7, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %10 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_font_base_s* @pdf_font_descriptor_font(%struct.pdf_font_descriptor_s* %10, i32 0) #5
  call void @set_is_MM_instance(%struct.pdf_font_resource_s* %9, %struct.gs_font_base_s* %call2) #5
  %11 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %12 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %11, %struct.pdf_font_resource_s** %12, align 8, !tbaa !1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call3 = call i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %13, %struct.pdf_font_resource_s* %14, i32 0) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @pdf_font_descriptor_FontType(%struct.pdf_font_descriptor_s*) #3

declare i32 @pdf_write_contents_simple(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_font_cidfont_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s** %ppfres, i64 %rid, %struct.pdf_font_descriptor_s* %pfd) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppfres.addr = alloca %struct.pdf_font_resource_s**, align 8
  %rid.addr = alloca i64, align 8
  %pfd.addr = alloca %struct.pdf_font_descriptor_s*, align 8
  %FontType = alloca i32, align 4
  %font = alloca %struct.gs_font_base_s*, align 8
  %chars_count = alloca i32, align 4
  %code = alloca i32, align 4
  %write_contents = alloca i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, align 8
  %pcidsi = alloca %struct.gs_cid_system_info_s*, align 8
  %map = alloca i16*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s** %ppfres, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !105
  store %struct.pdf_font_descriptor_s* %pfd, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %FontType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %call = call i32 @pdf_font_descriptor_FontType(%struct.pdf_font_descriptor_s* %1) #5
  store i32 %call, i32* %FontType, align 4, !tbaa !106
  %2 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_font_base_s* @pdf_font_descriptor_font(%struct.pdf_font_descriptor_s* %3, i32 0) #5
  store %struct.gs_font_base_s* %call1, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %4 = bitcast i32* %chars_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i16** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* null, i16** %map, align 8, !tbaa !1
  %9 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %FontType, align 4, !tbaa !106
  switch i32 %10, label %sw.default [
    i32 9, label %sw.bb
    i32 11, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %12 = bitcast %struct.gs_font_base_s* %11 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %12, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %13 = load i32, i32* %CIDCount, align 4, !tbaa !174
  store i32 %13, i32* %chars_count, align 4, !tbaa !5
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %15 = bitcast %struct.gs_font_base_s* %14 to %struct.gs_font_cid0_s*
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %15, i32 0, i32 29
  %common3 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common3, i32 0, i32 0
  store %struct.gs_cid_system_info_s* %CIDSystemInfo, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_cid0, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %17 = bitcast %struct.gs_font_base_s* %16 to %struct.gs_font_cid2_s*
  %cidata5 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %17, i32 0, i32 30
  %common6 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata5, i32 0, i32 0
  %CIDCount7 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common6, i32 0, i32 1
  %18 = load i32, i32* %CIDCount7, align 4, !tbaa !179
  store i32 %18, i32* %chars_count, align 4, !tbaa !5
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %20 = bitcast %struct.gs_font_base_s* %19 to %struct.gs_font_cid2_s*
  %cidata8 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %20, i32 0, i32 30
  %common9 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata8, i32 0, i32 0
  %CIDSystemInfo10 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common9, i32 0, i32 0
  store %struct.gs_cid_system_info_s* %CIDSystemInfo10, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %21 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %21, i32 0, i32 43
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory11 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %24, i32 0, i32 43
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory11, align 8, !tbaa !100
  %26 = load i32, i32* %chars_count, align 4, !tbaa !5
  %call12 = call i8* %23(%struct.gs_memory_s* %25, i32 %26, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #5
  %27 = bitcast i8* %call12 to i16*
  store i16* %27, i16** %map, align 8, !tbaa !1
  %28 = load i16*, i16** %map, align 8, !tbaa !1
  %cmp = icmp eq i16* %28, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.4
  %29 = load i16*, i16** %map, align 8, !tbaa !1
  %30 = bitcast i16* %29 to i8*
  %31 = load i32, i32* %chars_count, align 4, !tbaa !5
  %conv = sext i32 %31 to i64
  %mul = mul i64 %conv, 2
  %call13 = call i8* @memset(i8* %30, i32 0, i64 %mul) #6
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_cid2, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load i64, i64* %rid.addr, align 8, !tbaa !105
  %34 = load i32, i32* %FontType, align 4, !tbaa !106
  %35 = load i32, i32* %chars_count, align 4, !tbaa !5
  %36 = load i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents, align 8, !tbaa !1
  %call14 = call i32 @font_resource_alloc(%struct.gx_device_pdf_s* %32, %struct.pdf_font_resource_s** %pdfont, i32 8, i64 %33, i32 %34, i32 %35, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* %36) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %37, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.epilog
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %sw.epilog
  %39 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd.addr, align 8, !tbaa !1
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 11
  store %struct.pdf_font_descriptor_s* %39, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !15
  %41 = load i16*, i16** %map, align 8, !tbaa !1
  %42 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %42, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 1
  store i16* %41, i16** %CIDToGIDMap, align 8, !tbaa !43
  %43 = load i32, i32* %chars_count, align 4, !tbaa !5
  %44 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u19 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %44, i32 0, i32 20
  %cidfont20 = bitcast %union.anon.1* %u19 to %struct.anon.2*
  %CIDToGIDMapLength = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont20, i32 0, i32 2
  store i32 %43, i32* %CIDToGIDMapLength, align 4, !tbaa !116
  %45 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u21 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %45, i32 0, i32 20
  %cidfont22 = bitcast %union.anon.1* %u21 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont22, i32 0, i32 4
  store double* null, double** %Widths2, align 8, !tbaa !27
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u23 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 20
  %cidfont24 = bitcast %union.anon.1* %u23 to %struct.anon.2*
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont24, i32 0, i32 5
  store double* null, double** %v, align 8, !tbaa !35
  %47 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u25 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %47, i32 0, i32 20
  %cidfont26 = bitcast %union.anon.1* %u25 to %struct.anon.2*
  %parent = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont26, i32 0, i32 7
  store %struct.pdf_font_resource_s* null, %struct.pdf_font_resource_s** %parent, align 8, !tbaa !45
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 43
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory27, align 8, !tbaa !100
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 7
  %50 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !155
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 43
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory29, align 8, !tbaa !100
  %53 = load i32, i32* %chars_count, align 4, !tbaa !5
  %add = add nsw i32 %53, 7
  %div = sdiv i32 %add, 8
  %call30 = call i8* %50(%struct.gs_memory_s* %52, i32 %div, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)) #5
  %54 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u31 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %54, i32 0, i32 20
  %cidfont32 = bitcast %union.anon.1* %u31 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont32, i32 0, i32 6
  store i8* %call30, i8** %used2, align 8, !tbaa !47
  %55 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u33 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %55, i32 0, i32 20
  %cidfont34 = bitcast %union.anon.1* %u33 to %struct.anon.2*
  %used235 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont34, i32 0, i32 6
  %56 = load i8*, i8** %used235, align 8, !tbaa !47
  %cmp36 = icmp eq i8* %56, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.18
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.18
  %57 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u40 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %57, i32 0, i32 20
  %cidfont41 = bitcast %union.anon.1* %u40 to %struct.anon.2*
  %used242 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont41, i32 0, i32 6
  %58 = load i8*, i8** %used242, align 8, !tbaa !47
  %59 = load i32, i32* %chars_count, align 4, !tbaa !5
  %add43 = add nsw i32 %59, 7
  %div44 = sdiv i32 %add43, 8
  %conv45 = sext i32 %div44 to i64
  %call46 = call i8* @memset(i8* %58, i32 0, i64 %conv45) #6
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %61 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi, align 8, !tbaa !1
  %62 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u47 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %62, i32 0, i32 20
  %cidfont48 = bitcast %union.anon.1* %u47 to %struct.anon.2*
  %CIDSystemInfo_id = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont48, i32 0, i32 0
  %call49 = call i32 @pdf_write_cid_systemInfo_separate(%struct.gx_device_pdf_s* %60, %struct.gs_cid_system_info_s* %61, i64* %CIDSystemInfo_id) #5
  store i32 %call49, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %63, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.39
  %64 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.39
  %65 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %66 = load %struct.pdf_font_resource_s**, %struct.pdf_font_resource_s*** %ppfres.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %65, %struct.pdf_font_resource_s** %66, align 8, !tbaa !1
  %67 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %68 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call54 = call i32 @pdf_compute_BaseFont(%struct.gx_device_pdf_s* %67, %struct.pdf_font_resource_s* %68, i32 0) #5
  store i32 %call54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.52, %if.then.38, %if.then.17, %sw.default, %if.then
  %69 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i16** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.gs_cid_system_info_s** %pcidsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %chars_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %FontType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @pdf_write_contents_cid0(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

declare i32 @pdf_write_contents_cid2(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

declare i32 @pdf_write_cid_systemInfo_separate(%struct.gx_device_pdf_s*, %struct.gs_cid_system_info_s*, i64*) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_obtain_cidfont_widths_arrays(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, i32 %wmode, double** %w, double** %w0, double** %v) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %wmode.addr = alloca i32, align 4
  %w.addr = alloca double**, align 8
  %w0.addr = alloca double**, align 8
  %v.addr = alloca double**, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %ww = alloca double*, align 8
  %vv = alloca double*, align 8
  %ww0 = alloca double*, align 8
  %chars_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store i32 %wmode, i32* %wmode.addr, align 4, !tbaa !5
  store double** %w, double*** %w.addr, align 8, !tbaa !1
  store double** %w0, double*** %w0.addr, align 8, !tbaa !1
  store double** %v, double*** %v.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !100
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast double** %ww to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double** %vv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store double* null, double** %vv, align 8, !tbaa !1
  %5 = bitcast double** %ww0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store double* null, double** %ww0, align 8, !tbaa !1
  %6 = bitcast i32* %chars_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %7, i32 0, i32 13
  %8 = load i32, i32* %count, align 4, !tbaa !115
  store i32 %8, i32* %chars_count, align 4, !tbaa !5
  %9 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %10, i32 0, i32 14
  %11 = load double*, double** %Widths, align 8, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %11, %cond.true ], [ null, %cond.false ]
  %12 = load double**, double*** %w0.addr, align 8, !tbaa !1
  store double* %cond, double** %12, align 8, !tbaa !1
  %13 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %13, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %14 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %14, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %v3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 5
  %15 = load double*, double** %v3, align 8, !tbaa !35
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi double* [ %15, %cond.true.2 ], [ null, %cond.false.4 ]
  %16 = load double**, double*** %v.addr, align 8, !tbaa !1
  store double* %cond6, double** %16, align 8, !tbaa !1
  %17 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end.5
  %18 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u9 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %18, i32 0, i32 20
  %cidfont10 = bitcast %union.anon.1* %u9 to %struct.anon.2*
  %Widths2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont10, i32 0, i32 4
  %19 = load double*, double** %Widths2, align 8, !tbaa !27
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end.5
  %20 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths12 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %20, i32 0, i32 14
  %21 = load double*, double** %Widths12, align 8, !tbaa !19
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.8
  %cond14 = phi double* [ %19, %cond.true.8 ], [ %21, %cond.false.11 ]
  %22 = load double**, double*** %w.addr, align 8, !tbaa !1
  store double* %cond14, double** %22, align 8, !tbaa !1
  %23 = load double**, double*** %w.addr, align 8, !tbaa !1
  %24 = load double*, double** %23, align 8, !tbaa !1
  %cmp = icmp eq double* %24, null
  br i1 %cmp, label %if.then, label %if.end.71

if.then:                                          ; preds = %cond.end.13
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %26 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !107
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load i32, i32* %chars_count, align 4, !tbaa !5
  %call = call i8* %26(%struct.gs_memory_s* %27, i32 %28, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  %29 = bitcast i8* %call to double*
  store double* %29, double** %ww, align 8, !tbaa !1
  %30 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %30, 0
  br i1 %tobool15, label %if.then.16, label %if.end.32

if.then.16:                                       ; preds = %if.then
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array18 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array18, align 8, !tbaa !107
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %34 = load i32, i32* %chars_count, align 4, !tbaa !5
  %call19 = call i8* %32(%struct.gs_memory_s* %33, i32 %34, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  %35 = bitcast i8* %call19 to double*
  store double* %35, double** %vv, align 8, !tbaa !1
  %36 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths20 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %36, i32 0, i32 14
  %37 = load double*, double** %Widths20, align 8, !tbaa !19
  %cmp21 = icmp eq double* %37, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.16
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_byte_array24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 10
  %39 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array24, align 8, !tbaa !107
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %41 = load i32, i32* %chars_count, align 4, !tbaa !5
  %call25 = call i8* %39(%struct.gs_memory_s* %40, i32 %41, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  %42 = bitcast i8* %call25 to double*
  store double* %42, double** %ww0, align 8, !tbaa !1
  %43 = load double*, double** %ww0, align 8, !tbaa !1
  %44 = load double**, double*** %w0.addr, align 8, !tbaa !1
  store double* %43, double** %44, align 8, !tbaa !1
  %45 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths26 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %45, i32 0, i32 14
  store double* %43, double** %Widths26, align 8, !tbaa !19
  %46 = load double*, double** %ww0, align 8, !tbaa !1
  %cmp27 = icmp ne double* %46, null
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.22
  %47 = load double*, double** %ww0, align 8, !tbaa !1
  %48 = bitcast double* %47 to i8*
  %49 = load i32, i32* %chars_count, align 4, !tbaa !5
  %conv = sext i32 %49 to i64
  %mul = mul i64 %conv, 8
  %call29 = call i8* @memset(i8* %48, i32 0, i64 %mul) #6
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.22
  br label %if.end.31

if.else:                                          ; preds = %if.then.16
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths30 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 14
  %51 = load double*, double** %Widths30, align 8, !tbaa !19
  store double* %51, double** %ww0, align 8, !tbaa !1
  %52 = load double**, double*** %w0.addr, align 8, !tbaa !1
  store double* %51, double** %52, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %53 = load double*, double** %ww, align 8, !tbaa !1
  %cmp33 = icmp eq double* %53, null
  br i1 %cmp33, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %54 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %54, 0
  br i1 %tobool35, label %land.lhs.true, label %lor.lhs.false.38

land.lhs.true:                                    ; preds = %lor.lhs.false
  %55 = load double*, double** %vv, align 8, !tbaa !1
  %cmp36 = icmp eq double* %55, null
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %56 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool39 = icmp ne i32 %56, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.49

land.lhs.true.40:                                 ; preds = %lor.lhs.false.38
  %57 = load double*, double** %ww0, align 8, !tbaa !1
  %cmp41 = icmp eq double* %57, null
  br i1 %cmp41, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %land.lhs.true.40, %land.lhs.true, %if.end.32
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %61 = load double*, double** %ww, align 8, !tbaa !1
  %62 = bitcast double* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_object46 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object46, align 8, !tbaa !103
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %66 = load double*, double** %vv, align 8, !tbaa !1
  %67 = bitcast double* %66 to i8*
  call void %64(%struct.gs_memory_s* %65, i8* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object48 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object48, align 8, !tbaa !103
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %71 = load double*, double** %ww0, align 8, !tbaa !1
  %72 = bitcast double* %71 to i8*
  call void %69(%struct.gs_memory_s* %70, i8* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %land.lhs.true.40, %lor.lhs.false.38
  %73 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %73, 0
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.49
  %74 = load double*, double** %vv, align 8, !tbaa !1
  %75 = bitcast double* %74 to i8*
  %76 = load i32, i32* %chars_count, align 4, !tbaa !5
  %mul52 = mul nsw i32 %76, 2
  %conv53 = sext i32 %mul52 to i64
  %mul54 = mul i64 %conv53, 8
  %call55 = call i8* @memset(i8* %75, i32 0, i64 %mul54) #6
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.49
  %77 = load double*, double** %ww, align 8, !tbaa !1
  %78 = bitcast double* %77 to i8*
  %79 = load i32, i32* %chars_count, align 4, !tbaa !5
  %conv57 = sext i32 %79 to i64
  %mul58 = mul i64 %conv57, 8
  %call59 = call i8* @memset(i8* %78, i32 0, i64 %mul58) #6
  %80 = load i32, i32* %wmode.addr, align 4, !tbaa !5
  %tobool60 = icmp ne i32 %80, 0
  br i1 %tobool60, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %if.end.56
  %81 = load double*, double** %ww, align 8, !tbaa !1
  %82 = load double**, double*** %w.addr, align 8, !tbaa !1
  store double* %81, double** %82, align 8, !tbaa !1
  %83 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %83, i32 0, i32 20
  %cidfont63 = bitcast %union.anon.1* %u62 to %struct.anon.2*
  %Widths264 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont63, i32 0, i32 4
  store double* %81, double** %Widths264, align 8, !tbaa !27
  %84 = load double*, double** %vv, align 8, !tbaa !1
  %85 = load double**, double*** %v.addr, align 8, !tbaa !1
  store double* %84, double** %85, align 8, !tbaa !1
  %86 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u65 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %86, i32 0, i32 20
  %cidfont66 = bitcast %union.anon.1* %u65 to %struct.anon.2*
  %v67 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont66, i32 0, i32 5
  store double* %84, double** %v67, align 8, !tbaa !35
  br label %if.end.70

if.else.68:                                       ; preds = %if.end.56
  %87 = load double*, double** %ww, align 8, !tbaa !1
  %88 = load double**, double*** %w.addr, align 8, !tbaa !1
  store double* %87, double** %88, align 8, !tbaa !1
  %89 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %Widths69 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %89, i32 0, i32 14
  store double* %87, double** %Widths69, align 8, !tbaa !19
  %90 = load double**, double*** %v.addr, align 8, !tbaa !1
  store double* null, double** %90, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.61
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %cond.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.43
  %91 = bitcast i32* %chars_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast double** %ww0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast double** %vv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double** %ww to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define i32 @pdf_convert_truetype_font(%struct.gx_device_pdf_s* %pdev, %struct.pdf_resource_s* %pres) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pres.addr = alloca %struct.pdf_resource_s*, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %pdfont0 = alloca %struct.pdf_font_resource_s*, align 8
  %CMapName = alloca %struct.gs_const_string_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s* %pres, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 109
  %1 = load i32, i32* %PDFA, align 4, !tbaa !129
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %4 = bitcast %struct.pdf_resource_s* %3 to %struct.pdf_font_resource_s*
  store %struct.pdf_font_resource_s* %4, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %5 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %5, i32 0, i32 8
  %6 = load i32, i32* %FontType, align 4, !tbaa !23
  %cmp1 = icmp ne i32 %6, 42
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.else.3:                                        ; preds = %if.else
  %7 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %call = call i64 @pdf_resource_id(%struct.pdf_resource_s* %7) #5
  %cmp4 = icmp eq i64 %call, -1
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.else.6:                                        ; preds = %if.else.3
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call7 = call i32 @pdf_different_encoding_index(%struct.pdf_font_resource_s* %9, i32 0) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.6
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end:                                           ; preds = %if.else.6
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %12, 256
  br i1 %cmp10, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %13, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %BaseEncoding = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 2
  %14 = load i32, i32* %BaseEncoding, align 4, !tbaa !112
  %cmp11 = icmp ne i32 %14, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %15 = bitcast %struct.pdf_font_resource_s** %pdfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_const_string_s* %CMapName to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast %struct.gs_const_string_s* %CMapName to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.gs_const_string_s* @pdf_convert_truetype_font.CMapName to i8*), i64 16, i32 8, i1 false)
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %19 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call14 = call i32 @pdf_convert_truetype_font_descriptor(%struct.gx_device_pdf_s* %18, %struct.pdf_font_resource_s* %19) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %rid = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %23, i32 0, i32 2
  %24 = load i64, i64* %rid, align 8, !tbaa !184
  %add = add i64 %24, 1
  %25 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %call18 = call i32 @pdf_font_type0_alloc(%struct.gx_device_pdf_s* %22, %struct.pdf_font_resource_s** %pdfont0, i64 %add, %struct.pdf_font_resource_s* %25, %struct.gs_const_string_s* %CMapName) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont0, align 8, !tbaa !1
  %30 = bitcast %struct.pdf_font_resource_s* %29 to %struct.pdf_resource_s*
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres.addr, align 8, !tbaa !1
  %call22 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %31) #5
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %28, %struct.pdf_resource_s* %30, i64 %call22) #5
  %32 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %33 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %34 = bitcast %struct.pdf_font_resource_s* %33 to %struct.pdf_resource_s*
  call void @pdf_reserve_object_id(%struct.gx_device_pdf_s* %32, %struct.pdf_resource_s* %34, i64 0) #5
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf_write_OneByteIdentityH(%struct.gx_device_pdf_s* %35) #5
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %36, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %IdentityCIDSystemInfo_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 170
  %38 = load i64, i64* %IdentityCIDSystemInfo_id, align 8, !tbaa !186
  %39 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %u27 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %39, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u27 to %struct.anon.2*
  %CIDSystemInfo_id = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 0
  store i64 %38, i64* %CIDSystemInfo_id, align 8, !tbaa !187
  %40 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont0, align 8, !tbaa !1
  %u28 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %40, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u28 to %struct.anon*
  %Encoding_name = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name, i32 0, i32 0
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %OneByteIdentityH = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 169
  %42 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %OneByteIdentityH, align 8, !tbaa !188
  %call29 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %42) #5
  %call30 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 %call29) #5
  %43 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %43, i32 0, i32 16
  %44 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !21
  %45 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont0, align 8, !tbaa !1
  %res_ToUnicode31 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %45, i32 0, i32 16
  store %struct.pdf_resource_s* %44, %struct.pdf_resource_s** %res_ToUnicode31, align 8, !tbaa !21
  %46 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %res_ToUnicode32 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %46, i32 0, i32 16
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %res_ToUnicode32, align 8, !tbaa !21
  %47 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmap_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %47, i32 0, i32 17
  %48 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %cmap_ToUnicode, align 8, !tbaa !22
  %49 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont0, align 8, !tbaa !1
  %cmap_ToUnicode33 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %49, i32 0, i32 17
  store %struct.gs_cmap_s* %48, %struct.gs_cmap_s** %cmap_ToUnicode33, align 8, !tbaa !22
  %50 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %cmap_ToUnicode34 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %50, i32 0, i32 17
  store %struct.gs_cmap_s* null, %struct.gs_cmap_s** %cmap_ToUnicode34, align 8, !tbaa !22
  %51 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %FontType35 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %51, i32 0, i32 8
  store i32 11, i32* %FontType35, align 4, !tbaa !23
  %52 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %write_contents = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %52, i32 0, i32 9
  store i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)* @pdf_write_contents_cid2, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)** %write_contents, align 8, !tbaa !156
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.20, %if.then.16
  %53 = bitcast %struct.gs_const_string_s* %CMapName to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = bitcast %struct.pdf_font_resource_s** %pdfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %cleanup.37

cleanup.37:                                       ; preds = %cleanup, %if.then.12, %if.then.9
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %cleanup.38

cleanup.38:                                       ; preds = %cleanup.37, %if.then.5, %if.then.2
  %56 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  br label %return

return:                                           ; preds = %cleanup.38, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @pdf_different_encoding_index(%struct.pdf_font_resource_s*, i32) #3

declare i32 @pdf_convert_truetype_font_descriptor(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*) #3

declare i32 @pdf_write_OneByteIdentityH(%struct.gx_device_pdf_s*) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s* %pdev, %struct.gs_cmap_s* %pcmap, %struct.pdf_resource_s** %ppres, i32 %font_index_only) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %ppres.addr = alloca %struct.pdf_resource_s**, align 8
  %font_index_only.addr = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store %struct.pdf_resource_s** %ppres, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_resource_s**, %struct.pdf_resource_s*** %ppres.addr, align 8, !tbaa !1
  %3 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call = call i32 @pdf_write_cmap(%struct.gx_device_pdf_s* %0, %struct.gs_cmap_s* %1, %struct.pdf_resource_s** %2, i32 %3) #5
  ret i32 %call
}

declare i32 @pdf_write_cmap(%struct.gx_device_pdf_s*, %struct.gs_cmap_s*, %struct.pdf_resource_s**, i32) #3

declare void @pdf_mark_glyph_names(%struct.pdf_font_resource_s*, %struct.gs_memory_s*) #3

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pdf_std_font_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 32
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_standard_font to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 32
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 32, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_standard_font to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @pdf_std_font_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 32
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_standard_font to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !48
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 32, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_standard_font to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 32
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @pdf_encoding_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 32
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_encoding1 to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 32
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 32, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_encoding1 to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @pdf_encoding_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 32
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_encoding1 to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !48
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 32, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pdf_encoding1 to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 32
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @find_std_appearance(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_base_s* %bfont, i32 %mask, %struct.pdf_char_glyph_pair_s* %pairs, i32 %num_glyphs) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %bfont.addr = alloca %struct.gs_font_base_s*, align 8
  %mask.addr = alloca i32, align 4
  %pairs.addr = alloca %struct.pdf_char_glyph_pair_s*, align 8
  %num_glyphs.addr = alloca i32, align 4
  %has_uid = alloca i32, align 4
  %psf = alloca %struct.pdf_standard_font_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cfont = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %bfont, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !5
  store %struct.pdf_char_glyph_pair_s* %pairs, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  store i32 %num_glyphs, i32* %num_glyphs.addr, align 4, !tbaa !5
  %0 = bitcast i32* %has_uid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %2 = load i64, i64* %id, align 8, !tbaa !152
  %and = and i64 %2, -16777216
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %UID1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 24
  %id2 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID1, i32 0, i32 0
  %4 = load i64, i64* %id2, align 8, !tbaa !189
  %cmp3 = icmp ne i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %has_uid, align 4, !tbaa !5
  %6 = bitcast %struct.pdf_standard_font_s** %psf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call %struct.pdf_standard_font_s* @pdf_standard_fonts(%struct.gx_device_pdf_s* %7) #5
  store %struct.pdf_standard_font_s* %call, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 11
  %10 = load i32, i32* %FontType, align 4, !tbaa !159
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 42, label %sw.bb
  ]

sw.bb:                                            ; preds = %land.end, %land.end, %land.end
  br label %sw.epilog

sw.default:                                       ; preds = %land.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %11, 14
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.gs_font_base_s** %cfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %pdfont = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %14, i32 0, i32 0
  %15 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !165
  %tobool = icmp ne %struct.pdf_font_resource_s* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %pdfont5 = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %16, i32 0, i32 0
  %17 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont5, align 8, !tbaa !165
  %call6 = call %struct.gs_font_base_s* @pdf_font_resource_font(%struct.pdf_font_resource_s* %17, i32 0) #5
  store %struct.gs_font_base_s* %call6, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %18 = load i32, i32* %has_uid, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %UID9 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 24
  %20 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %UID10 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %20, i32 0, i32 24
  %call11 = call i32 @uid_equal(%struct.gs_uid_s* %UID9, %struct.gs_uid_s* %UID10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.8
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %cfont, align 8, !tbaa !1
  %22 = bitcast %struct.gs_font_base_s* %21 to %struct.gs_font_s*
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %bfont.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gs_font_base_s* %23 to %struct.gs_font_s*
  %25 = load %struct.pdf_char_glyph_pair_s*, %struct.pdf_char_glyph_pair_s** %pairs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.pdf_char_glyph_pair_s, %struct.pdf_char_glyph_pair_s* %25, i64 0
  %glyph = getelementptr inbounds %struct.pdf_char_glyph_pair_s, %struct.pdf_char_glyph_pair_s* %arrayidx, i32 0, i32 1
  %26 = load i32, i32* %num_glyphs.addr, align 4, !tbaa !5
  %call16 = call i32 @gs_copied_can_copy_glyphs(%struct.gs_font_s* %22, %struct.gs_font_s* %24, i64* %glyph, i32 %26, i32 16, i32 1) #5
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %27, -28
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %29, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %30 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.18, %if.then.13, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_font_base_s** %cfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %33 = load %struct.pdf_standard_font_s*, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %33, i32 1
  store %struct.pdf_standard_font_s* %incdec.ptr, %struct.pdf_standard_font_s** %psf, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %for.end, %cleanup, %sw.default
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.pdf_standard_font_s** %psf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %has_uid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_for_standard_fonts(%struct.gx_device_pdf_s* %pdev, %struct.gs_font_dir_s* %dir) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %found = alloca i32, align 4
  %orig = alloca %struct.gs_font_s*, align 8
  %obfont = alloca %struct.gs_font_base_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %pdfont9 = alloca %struct.pdf_font_resource_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %0 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %found, align 4, !tbaa !5
  %1 = bitcast %struct.gs_font_s** %orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 0
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !190
  store %struct.gs_font_s* %3, %struct.gs_font_s** %orig, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_font_s* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.gs_font_base_s** %obfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 11
  %7 = load i32, i32* %FontType, align 4, !tbaa !143
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 4
  %9 = load i32, i32* %is_resource, align 4, !tbaa !136
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %11 = bitcast %struct.gs_font_s* %10 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %11, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %12, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %13 = load i64, i64* %id, align 8, !tbaa !152
  %and = and i64 %13, -16777216
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.20

if.then.3:                                        ; preds = %if.end
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %key_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 21
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %key_name4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %16, i32 0, i32 21
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %key_name4, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !191
  %call = call i32 @pdf_find_standard_font_name(i8* %arraydecay, i32 %17) #5
  store i32 %call, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %18, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.3
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call %struct.pdf_standard_font_s* @pdf_standard_fonts(%struct.gx_device_pdf_s* %20) #5
  %arrayidx = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %call6, i64 %idxprom
  %pdfont = getelementptr inbounds %struct.pdf_standard_font_s, %struct.pdf_standard_font_s* %arrayidx, i32 0, i32 0
  %21 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !165
  %cmp7 = icmp eq %struct.pdf_font_resource_s* %21, null
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %land.lhs.true
  %22 = bitcast %struct.pdf_font_resource_s** %pdfont9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %id10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %25, i32 0, i32 6
  %26 = load i64, i64* %id10, align 8, !tbaa !192
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %obfont, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %call11 = call i32 @pdf_font_std_alloc(%struct.gx_device_pdf_s* %24, %struct.pdf_font_resource_s** %pdfont9, i32 1, i64 %26, %struct.gs_font_base_s* %27, i32 %28) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %29, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  store i32 1, i32* %found, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.pdf_font_resource_s** %pdfont9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.then.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.16, %cleanup
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest.18 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.18, label %cleanup.21 [
    i32 0, label %cleanup.cont.19
  ]

cleanup.cont.19:                                  ; preds = %cleanup.17
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont.19, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.20, %cleanup.17, %if.then
  %33 = bitcast %struct.gs_font_base_s** %obfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest.22 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.22, label %unreachable [
    i32 0, label %cleanup.cont.23
    i32 4, label %for.inc
  ]

cleanup.cont.23:                                  ; preds = %cleanup.21
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.23, %cleanup.21
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %orig, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %34, i32 0, i32 0
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !193
  store %struct.gs_font_s* %35, %struct.gs_font_s** %orig, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %found, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast %struct.gs_font_s** %orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  ret i32 %36

unreachable:                                      ; preds = %cleanup.21
  unreachable
}

declare i32 @uid_equal(%struct.gs_uid_s*, %struct.gs_uid_s*) #3

declare i32 @gs_copied_can_copy_glyphs(%struct.gs_font_s*, %struct.gs_font_s*, i64*, i32, i32, i32) #3

declare void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i64*, i32, i32) #3

declare i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s*, i64*) #3

declare void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s*) #3

declare i32 @bytes_compare(i8*, i32, i8*, i32) #3

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 0}
!10 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 8}
!14 = !{!12, !6, i64 8}
!15 = !{!16, !2, i64 104}
!16 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !17, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !17, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !10, i64 88, !2, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!17 = !{!"long", !3, i64 0}
!18 = !{!16, !2, i64 112}
!19 = !{!16, !2, i64 128}
!20 = !{!16, !2, i64 136}
!21 = !{!16, !2, i64 144}
!22 = !{!16, !2, i64 152}
!23 = !{!16, !3, i64 72}
!24 = !{!25, !2, i64 0}
!25 = !{!"", !2, i64 0, !3, i64 8, !26, i64 40, !6, i64 56, !6, i64 60, !6, i64 64}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!28, !2, i64 32}
!28 = !{!"", !17, i64 0, !2, i64 8, !6, i64 16, !17, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!29 = !{!30, !2, i64 16}
!30 = !{!"", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 12, !2, i64 16, !2, i64 24, !6, i64 32, !3, i64 40}
!31 = !{!25, !6, i64 60}
!32 = !{!26, !2, i64 0}
!33 = !{!26, !6, i64 8}
!34 = !{!30, !2, i64 24}
!35 = !{!28, !2, i64 40}
!36 = !{!37, !2, i64 56}
!37 = !{!"", !38, i64 0, !41, i64 32, !2, i64 56, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!38 = !{!"gs_rect_s", !39, i64 0, !39, i64 16}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !3, i64 0}
!41 = !{!"gs_matrix_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!42 = !{!"float", !3, i64 0}
!43 = !{!28, !2, i64 8}
!44 = !{!37, !2, i64 80}
!45 = !{!28, !2, i64 56}
!46 = !{!37, !2, i64 72}
!47 = !{!28, !2, i64 48}
!48 = !{!8, !2, i64 40}
!49 = !{!50, !2, i64 8}
!50 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!51 = !{!50, !2, i64 0}
!52 = !{!50, !2, i64 16}
!53 = !{!54, !2, i64 72}
!54 = !{!"gs_memory_s", !2, i64 0, !55, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!56 = !{!54, !2, i64 104}
!57 = !{!58, !2, i64 0}
!58 = !{!"pdf_outline_fonts_s", !2, i64 0}
!59 = !{!60, !2, i64 26592}
!60 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !61, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !62, i64 96, !65, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !17, i64 928, !17, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !17, i64 968, !17, i64 976, !66, i64 984, !6, i64 1052, !6, i64 1056, !67, i64 1064, !2, i64 1104, !3, i64 1112, !69, i64 1120, !70, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !71, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !80, i64 7512, !80, i64 8144, !17, i64 8776, !17, i64 8784, !3, i64 8792, !3, i64 8796, !39, i64 8800, !6, i64 8816, !2, i64 8824, !17, i64 8832, !17, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !40, i64 8872, !85, i64 8880, !6, i64 9360, !40, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !89, i64 9424, !89, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !17, i64 9472, !6, i64 9480, !6, i64 9484, !88, i64 9488, !88, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !17, i64 9576, !17, i64 9584, !17, i64 9592, !90, i64 9600, !88, i64 9616, !88, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !88, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !38, i64 9784, !91, i64 9816, !91, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !17, i64 9920, !3, i64 9928, !6, i64 9960, !17, i64 9968, !17, i64 9976, !3, i64 9984, !3, i64 9988, !92, i64 9992, !92, i64 14120, !92, i64 18248, !92, i64 22376, !17, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !17, i64 26536, !6, i64 26544, !6, i64 26548, !17, i64 26552, !3, i64 26560, !17, i64 26568, !17, i64 26576, !3, i64 26584, !2, i64 26592, !93, i64 26600, !2, i64 26648, !6, i64 26656, !17, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !17, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !39, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !94, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !41, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !74, i64 30488, !6, i64 30524, !38, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !17, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !41, i64 30612, !40, i64 30640, !2, i64 30648, !26, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!61 = !{!"rc_header_s", !17, i64 0, !2, i64 8, !2, i64 16}
!62 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !63, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !64, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !17, i64 704, !6, i64 712}
!63 = !{!"short", !3, i64 0}
!64 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!65 = !{!"gx_device_cached_colors_s", !17, i64 0, !17, i64 8}
!66 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!67 = !{!"gdev_space_params_s", !17, i64 0, !17, i64 8, !68, i64 16, !6, i64 32, !3, i64 36}
!68 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !17, i64 8}
!69 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!70 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!71 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !72, i64 24, !6, i64 128, !74, i64 132, !6, i64 168, !39, i64 176, !39, i64 192, !6, i64 208, !6, i64 212, !63, i64 216, !3, i64 220, !75, i64 224, !75, i64 228, !76, i64 232, !17, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !42, i64 296, !77, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !42, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !78, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !79, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !79, i64 1336}
!72 = !{!"gx_line_params_s", !42, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !6, i64 36, !41, i64 40, !73, i64 64}
!73 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !42, i64 12, !6, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !42, i64 32}
!74 = !{!"gs_matrix_fixed_s", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!75 = !{!"gs_transparency_source_s", !42, i64 0}
!76 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!77 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!78 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!79 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !17, i64 16, !3, i64 24}
!80 = !{!"gx_hl_saved_color_s", !17, i64 0, !17, i64 8, !6, i64 16, !81, i64 24, !83, i64 288}
!81 = !{!"gs_client_color_s", !2, i64 0, !82, i64 8}
!82 = !{!"gs_paint_color_s", !3, i64 0}
!83 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !84, i64 336}
!84 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!85 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !26, i64 64, !26, i64 80, !26, i64 96, !26, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !86, i64 152, !6, i64 232, !6, i64 236, !86, i64 240, !86, i64 320, !87, i64 400, !87, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !88, i64 448, !87, i64 464}
!86 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !42, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!87 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!88 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!89 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!90 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!91 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !38, i64 8}
!92 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!93 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!94 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !42, i64 40, !42, i64 44, !3, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !6, i64 80, !42, i64 84, !42, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !80, i64 120, !80, i64 752, !72, i64 1384, !2, i64 1488, !6, i64 1496, !17, i64 1504}
!95 = !{!96, !2, i64 0}
!96 = !{!"pdf_text_data_s", !2, i64 0, !2, i64 8, !2, i64 16}
!97 = !{!16, !6, i64 96}
!98 = !{!99, !6, i64 20}
!99 = !{!"pdf_base_font_s", !2, i64 0, !2, i64 8, !3, i64 16, !6, i64 20, !6, i64 24, !2, i64 32, !6, i64 40, !10, i64 48, !6, i64 64, !2, i64 72}
!100 = !{!60, !2, i64 1728}
!101 = !{!54, !2, i64 160}
!102 = !{!16, !2, i64 88}
!103 = !{!54, !2, i64 24}
!104 = !{!16, !2, i64 64}
!105 = !{!17, !17, i64 0}
!106 = !{!3, !3, i64 0}
!107 = !{!54, !2, i64 88}
!108 = !{!109, !17, i64 0}
!109 = !{!"pdf_encoding_element_s", !17, i64 0, !26, i64 8, !6, i64 24}
!110 = !{!30, !6, i64 0}
!111 = !{!30, !6, i64 4}
!112 = !{!30, !3, i64 8}
!113 = !{!30, !3, i64 12}
!114 = !{!30, !6, i64 32}
!115 = !{!16, !6, i64 120}
!116 = !{!28, !6, i64 16}
!117 = !{!118, !6, i64 48}
!118 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!119 = !{!120, !2, i64 184}
!120 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !121, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !41, i64 80, !41, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !42, i64 156, !6, i64 160, !122, i64 168, !118, i64 272, !118, i64 324}
!121 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!122 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!123 = !{!124, !6, i64 0}
!124 = !{!"gs_font_info_s", !6, i64 0, !6, i64 4, !6, i64 8, !125, i64 12, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !42, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !26, i64 88, !26, i64 104, !26, i64 120, !26, i64 136, !6, i64 152}
!125 = !{!"gs_int_rect_s", !84, i64 0, !84, i64 8}
!126 = !{!124, !6, i64 152}
!127 = !{!120, !6, i64 372}
!128 = !{!60, !6, i64 9560}
!129 = !{!60, !6, i64 9564}
!130 = !{!60, !40, i64 9368}
!131 = !{!60, !6, i64 9524}
!132 = !{!60, !6, i64 9316}
!133 = !{!134, !2, i64 0}
!134 = !{!"pdf_standard_font_info_s", !2, i64 0, !6, i64 8, !3, i64 12}
!135 = !{!134, !6, i64 8}
!136 = !{!120, !6, i64 32}
!137 = !{!120, !2, i64 24}
!138 = !{!120, !2, i64 240}
!139 = !{!87, !6, i64 8}
!140 = !{!87, !2, i64 0}
!141 = !{!88, !2, i64 0}
!142 = !{!88, !6, i64 8}
!143 = !{!120, !3, i64 128}
!144 = !{!145, !3, i64 444}
!145 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !121, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !41, i64 80, !41, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !42, i64 156, !6, i64 160, !122, i64 168, !118, i64 272, !118, i64 324, !38, i64 376, !146, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!146 = !{!"gs_uid_s", !17, i64 0, !2, i64 8}
!147 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!148 = !{!54, !2, i64 136}
!149 = !{!150, !6, i64 0}
!150 = !{!"", !6, i64 0}
!151 = !{!54, !2, i64 152}
!152 = !{!146, !17, i64 0}
!153 = !{!146, !2, i64 8}
!154 = !{!25, !6, i64 56}
!155 = !{!54, !2, i64 64}
!156 = !{!16, !2, i64 80}
!157 = !{!16, !2, i64 160}
!158 = !{!16, !2, i64 168}
!159 = !{!145, !3, i64 128}
!160 = !{!145, !2, i64 24}
!161 = !{!162, !2, i64 128}
!162 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !163, i64 24, !164, i64 56, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208, !17, i64 216}
!163 = !{!"fm_pair_cache_s", !6, i64 0, !6, i64 4, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!164 = !{!"char_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!165 = !{!166, !2, i64 0}
!166 = !{!"pdf_standard_font_s", !2, i64 0, !41, i64 8}
!167 = !{i64 0, i64 4, !168, i64 4, i64 4, !168, i64 8, i64 4, !168, i64 12, i64 4, !168, i64 16, i64 4, !168, i64 20, i64 4, !168}
!168 = !{!42, !42, i64 0}
!169 = !{!170, !6, i64 900}
!170 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !121, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !41, i64 80, !41, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !42, i64 156, !6, i64 160, !122, i64 168, !118, i64 272, !118, i64 324, !38, i64 376, !146, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !171, i64 448}
!171 = !{!"gs_type1_data_s", !172, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !17, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !42, i64 100, !42, i64 104, !173, i64 108, !42, i64 168, !6, i64 172, !173, i64 176, !173, i64 236, !6, i64 280, !173, i64 284, !6, i64 328, !173, i64 332, !173, i64 340, !173, i64 348, !173, i64 400, !173, i64 452, !3, i64 520, !6, i64 536}
!172 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!173 = !{!"", !6, i64 0, !3, i64 4}
!174 = !{!175, !6, i64 488}
!175 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !121, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !41, i64 80, !41, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !42, i64 156, !6, i64 160, !122, i64 168, !118, i64 272, !118, i64 324, !38, i64 376, !146, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !176, i64 448}
!176 = !{!"gs_font_cid0_data_s", !177, i64 0, !17, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!177 = !{!"gs_font_cid_data_s", !178, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!178 = !{!"gs_cid_system_info_s", !26, i64 0, !26, i64 16, !6, i64 32}
!179 = !{!180, !6, i64 696}
!180 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !121, i64 40, !17, i64 56, !2, i64 64, !2, i64 72, !41, i64 80, !41, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !42, i64 156, !6, i64 160, !122, i64 168, !118, i64 272, !118, i64 324, !38, i64 376, !146, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !181, i64 448, !182, i64 656, !2, i64 744}
!181 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !17, i64 48, !17, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !17, i64 120, !17, i64 128, !17, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !17, i64 200}
!182 = !{!"gs_font_cid2_data_s", !177, i64 0, !6, i64 56, !2, i64 64, !183, i64 72}
!183 = !{!"o_", !2, i64 0, !2, i64 8}
!184 = !{!185, !17, i64 16}
!185 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !17, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !17, i64 56, !2, i64 64}
!186 = !{!60, !17, i64 28664}
!187 = !{!28, !17, i64 0}
!188 = !{!60, !2, i64 28656}
!189 = !{!145, !17, i64 408}
!190 = !{!162, !2, i64 0}
!191 = !{!120, !6, i64 320}
!192 = !{!120, !17, i64 56}
!193 = !{!120, !2, i64 0}
