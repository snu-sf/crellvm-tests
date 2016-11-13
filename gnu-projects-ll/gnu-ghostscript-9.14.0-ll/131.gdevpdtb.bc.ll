; ModuleID = './gdevpdtb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdf_base14_font_info_s = type { i8*, i8* }
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
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
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.pdf_data_writer_s = type { %struct.psdf_binary_writer_s, i64, i64, %struct.pdf_resource_s*, %struct.gx_device_pdf_s*, i64, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }

@base14_font_info = internal constant [47 x %struct.pdf_base14_font_info_s] [%struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.pdf_base14_font_info_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, %struct.pdf_base14_font_info_s zeroinitializer], align 16
@.str = private unnamed_addr constant [22 x i8] c"pdf_add_subset_prefix\00", align 1
@st_pdf_base_font = internal constant %struct.gs_memory_struct_type_s { i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pdf_base_font_data to i8*) }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"pdf_base_font_alloc\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Can't embed the complete font %s as it is too large, embedding a subset.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pdf_base_font_alloc(CIDSet)\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Can't embed the complete font %s due to font error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".F%lx\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"pdf_base_font_alloc(font_name)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"/FontFile2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/FontFile\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/FontFile3\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" %ld 0 R\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"/Length1\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"/Length2\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"/Length3\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"/Type1C\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"/CIDFontType0C\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"NimbusMonL-Regu\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"NimbusMonL-Bold\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"NimbusMonL-ReguObli\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"NimbusMonL-BoldObli\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"NimbusSanL-Regu\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"NimbusSanL-Bold\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"NimbusSanL-ReguItal\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"NimbusSanL-BoldItal\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"StandardSymL\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"NimbusRomNo9L-Regu\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"NimbusRomNo9L-Medi\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"NimbusRomNo9L-ReguItal\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"NimbusRomNo9L-MediItal\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Dingbats\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"NimbusMono-Reg\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"NimbusMono-Bol\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"NimbusMono-Ita\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"NimbusMono-BolIta\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"NimbusSan-Reg\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"NimbusSan-Bol\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"NimbusSan-Ita\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"NimbusSan-BolIta\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"A030-Reg\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"A030-Bol\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"A030-Ita\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"A030-BolIta\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"NimbusSanNo2-Reg\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"NimbusSanNo2-Bol\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"NimbusSanNo2-Ita\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"NimbusSanNo2-BolIta\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"NimbusRomanNo4-Lig\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"NimbusRomanNo4-Bol\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"NimbusRomanNo4-LigIta\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"NimbusRomanNo4-BolIta\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"NimbusRomanNo9-Reg\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"NimbusRomanNo9-Med\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"NimbusRomanNo9-Ita\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"NimbusRomanNo9-MedIta\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"NimbusRom-Reg\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"NimbusRom-Med\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"NimbusRom-Ita\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"NimbusRom-MedIta\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"NimbusRomNo9-Reg\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"NimbusRomNo9-Bol\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"NimbusRomNo9-Ita\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"NimbusRomNo9-MedIta\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"pdf_base_font_t\00", align 1
@pdf_base_font_data = internal constant %struct.gc_struct_data_s { i16 5, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([5 x %struct.gc_ptr_element_s], [5 x %struct.gc_ptr_element_s]* @pdf_base_font_ptrs, i32 0, i32 0) }, align 8
@pdf_base_font_ptrs = internal constant [5 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 1, i16 48 }], align 16
@.str.81 = private unnamed_addr constant [6 x i8] c"%c%lx\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"pdf_adjust_font_name\00", align 1

; Function Attrs: nounwind uwtable
define i8* @pdf_find_base14_name(i8* %str, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ppsf = alloca %struct.pdf_base14_font_info_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_base14_font_info_s** %ppsf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pdf_base14_font_info_s* getelementptr inbounds ([47 x %struct.pdf_base14_font_info_s], [47 x %struct.pdf_base14_font_info_s]* @base14_font_info, i32 0, i32 0), %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pdf_base14_font_info_s*, %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  %urwname = getelementptr inbounds %struct.pdf_base14_font_info_s, %struct.pdf_base14_font_info_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %urwname, align 8, !tbaa !7
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pdf_base14_font_info_s*, %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  %urwname1 = getelementptr inbounds %struct.pdf_base14_font_info_s, %struct.pdf_base14_font_info_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %urwname1, align 8, !tbaa !7
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %call = call i32 @memcmp(i8* %4, i8* %5, i64 %conv) #7
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.pdf_base14_font_info_s*, %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  %stdname = getelementptr inbounds %struct.pdf_base14_font_info_s, %struct.pdf_base14_font_info_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %stdname, align 8, !tbaa !9
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.pdf_base14_font_info_s*, %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.pdf_base14_font_info_s, %struct.pdf_base14_font_info_s* %9, i32 1
  store %struct.pdf_base14_font_info_s* %incdec.ptr, %struct.pdf_base14_font_info_s** %ppsf, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast %struct.pdf_base14_font_info_s** %ppsf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pdf_has_subset_prefix(i8* %str, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, 7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 6
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 43
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, 6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1, !tbaa !10
  %conv6 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv6, 65
  %cmp7 = icmp uge i32 %sub, 26
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @pdf_add_subset_prefix(%struct.gx_device_pdf_s* %pdev, %struct.gs_string_s* %pstr, i8* %used, i32 %count, i8* %md5_hash) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pstr.addr = alloca %struct.gs_string_s*, align 8
  %used.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %md5_hash.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %data = alloca i8*, align 8
  %len = alloca i32, align 4
  %len0 = alloca i32, align 4
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %pstr, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  store i8* %used, i8** %used.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i8* %md5_hash, i8** %md5_hash.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4, !tbaa !11
  store i32 %2, i32* %size, align 4, !tbaa !5
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !13
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %6 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !56
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 43
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory2, align 8, !tbaa !13
  %9 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %data3, align 8, !tbaa !59
  %11 = load i32, i32* %size, align 4, !tbaa !5
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %12, 7
  %call = call i8* %6(%struct.gs_memory_s* %8, i8* %10, i32 %11, i32 %add, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #8
  store i8* %call, i8** %data, align 8, !tbaa !1
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %count.addr, align 4, !tbaa !5
  %add4 = add nsw i32 %14, 7
  %div = sdiv i32 %add4, 8
  store i32 %div, i32* %len, align 4, !tbaa !5
  %15 = bitcast i32* %len0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %len, align 4, !tbaa !5
  %conv = sext i32 %16 to i64
  %and = and i64 %conv, -2
  %conv5 = trunc i64 %and to i32
  store i32 %conv5, i32* %len0, align 4, !tbaa !5
  %17 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 0, i64* %v, align 8, !tbaa !60
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %19, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load i8*, i8** %md5_hash.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.then.7, label %if.end.20

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %21, 8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %v, align 8, !tbaa !60
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i8*, i8** %md5_hash.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %26 = load i8, i8* %add.ptr, align 1, !tbaa !10
  %conv10 = sext i8 %26 to i32
  %27 = load i8*, i8** %md5_hash.addr, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext11 = sext i32 %28 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %27, i64 %idx.ext11
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %29 = load i8, i8* %add.ptr13, align 1, !tbaa !10
  %conv14 = sext i8 %29 to i32
  %shl = shl i32 %conv14, 8
  %or = or i32 %conv10, %shl
  %conv15 = trunc i32 %or to i16
  %call16 = call i64 @hash(i64 %22, i32 %23, i16 zeroext %conv15) #8
  store i64 %call16, i64* %v, align 8, !tbaa !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %conv17 = sext i32 %30 to i64
  %add18 = add i64 %conv17, 2
  %conv19 = trunc i64 %add18 to i32
  store i32 %conv19, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %if.end.20
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %len0, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %31, %32
  br i1 %cmp22, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.21
  %33 = load i64, i64* %v, align 8, !tbaa !60
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i8*, i8** %used.addr, align 8, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext25 = sext i32 %36 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %35, i64 %idx.ext25
  %37 = bitcast i8* %add.ptr26 to i16*
  %38 = load i16, i16* %37, align 2, !tbaa !61
  %call27 = call i64 @hash(i64 %33, i32 %34, i16 zeroext %38) #8
  store i64 %call27, i64* %v, align 8, !tbaa !60
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %conv29 = sext i32 %39 to i64
  %add30 = add i64 %conv29, 2
  %conv31 = trunc i64 %add30 to i32
  store i32 %conv31, i32* %i, align 4, !tbaa !5
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.39, %for.end.32
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %len, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %40, %41
  br i1 %cmp34, label %for.body.36, label %for.end.40

for.body.36:                                      ; preds = %for.cond.33
  %42 = load i64, i64* %v, align 8, !tbaa !60
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load i8*, i8** %used.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 %idxprom
  %46 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv37 = zext i8 %46 to i16
  %call38 = call i64 @hash(i64 %42, i32 %43, i16 zeroext %conv37) #8
  store i64 %call38, i64* %v, align 8, !tbaa !60
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.end.40:                                       ; preds = %for.cond.33
  %48 = load i8*, i8** %data, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %48, i64 7
  %49 = load i8*, i8** %data, align 8, !tbaa !1
  %50 = load i32, i32* %size, align 4, !tbaa !5
  %conv42 = zext i32 %50 to i64
  %call43 = call i8* @memmove(i8* %add.ptr41, i8* %49, i64 %conv42) #9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %for.end.40
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %51, 6
  br i1 %cmp45, label %for.body.47, label %for.end.55

for.body.47:                                      ; preds = %for.cond.44
  %52 = load i64, i64* %v, align 8, !tbaa !60
  %rem = urem i64 %52, 26
  %add48 = add i64 65, %rem
  %conv49 = trunc i64 %add48 to i8
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %53 to i64
  %54 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %54, i64 %idxprom50
  store i8 %conv49, i8* %arrayidx51, align 1, !tbaa !10
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.47
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %55, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !5
  %56 = load i64, i64* %v, align 8, !tbaa !60
  %div54 = udiv i64 %56, 26
  store i64 %div54, i64* %v, align 8, !tbaa !60
  br label %for.cond.44

for.end.55:                                       ; preds = %for.cond.44
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %57, i64 6
  store i8 43, i8* %arrayidx56, align 1, !tbaa !10
  %58 = load i8*, i8** %data, align 8, !tbaa !1
  %59 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %data57 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %59, i32 0, i32 0
  store i8* %58, i8** %data57, align 8, !tbaa !59
  %60 = load i32, i32* %size, align 4, !tbaa !5
  %add58 = add i32 %60, 7
  %61 = load %struct.gs_string_s*, %struct.gs_string_s** %pstr.addr, align 8, !tbaa !1
  %size59 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %61, i32 0, i32 1
  store i32 %add58, i32* %size59, align 4, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.55, %if.then
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %len0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @hash(i64 %v, i32 %index, i16 zeroext %w) #3 {
entry:
  %v.addr = alloca i64, align 8
  %index.addr = alloca i32, align 4
  %w.addr = alloca i16, align 2
  store i64 %v, i64* %v.addr, align 8, !tbaa !60
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i16 %w, i16* %w.addr, align 2, !tbaa !61
  %0 = load i64, i64* %v.addr, align 8, !tbaa !60
  %mul = mul i64 %0, 3141592653
  %1 = load i16, i16* %w.addr, align 2, !tbaa !61
  %conv = zext i16 %1 to i64
  %add = add i64 %mul, %conv
  ret i64 %add
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @pdf_base_font_alloc(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s** %ppbfont, %struct.gs_font_base_s* %font, %struct.gs_matrix_s* %orig_matrix, i32 %is_standard) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %ppbfont.addr = alloca %struct.pdf_base_font_s**, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %orig_matrix.addr = alloca %struct.gs_matrix_s*, align 8
  %is_standard.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %copied = alloca %struct.gs_font_s*, align 8
  %complete = alloca %struct.gs_font_s*, align 8
  %pbfont = alloca %struct.pdf_base_font_s*, align 8
  %pfname = alloca %struct.gs_font_name_s*, align 8
  %font_name1 = alloca %struct.gs_const_string_s, align 8
  %fnbuf = alloca [19 x i8], align 16
  %code = alloca i32, align 4
  %reserve_glyphs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %glyph = alloca i64, align 8
  %buf = alloca [48 x i8], align 16
  %l = alloca i32, align 4
  %buf95 = alloca [48 x i8], align 16
  %l96 = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s** %ppbfont, %struct.pdf_base_font_s*** %ppbfont.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %orig_matrix, %struct.gs_matrix_s** %orig_matrix.addr, align 8, !tbaa !1
  store i32 %is_standard, i32* %is_standard.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !13
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_font_s** %complete to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !62
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_pdf_base_font, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #8
  %9 = bitcast i8* %call to %struct.pdf_base_font_s*
  store %struct.pdf_base_font_s* %9, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_name_s** %pfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 22
  store %struct.gs_font_name_s* %font_name, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %12 = bitcast %struct.gs_const_string_s* %font_name1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast [19 x i8]* %fnbuf to i8*
  call void @llvm.lifetime.start(i64 19, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %reserve_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1, i32* %reserve_glyphs, align 4, !tbaa !5
  %16 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %cmp = icmp eq %struct.pdf_base_font_s* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %18 = bitcast %struct.pdf_base_font_s* %17 to i8*
  %call2 = call i8* @memset(i8* %18, i32 0, i64 80) #9
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType, align 4, !tbaa !63
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 42, label %sw.bb.32
    i32 9, label %sw.bb.39
    i32 11, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %21 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.bb
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs3, i32 0, i32 6
  %25 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !69
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gs_font_base_s* %26 to %struct.gs_font_s*
  %call4 = call i32 %25(%struct.gs_font_s* %27, i32* %index, i32 0, i64* %glyph) #8
  %28 = load i32, i32* %index, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %28, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %count, align 4, !tbaa !5
  %31 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %31, i32 0, i32 4
  store i32 %30, i32* %num_glyphs, align 4, !tbaa !70
  %32 = load i32, i32* %is_standard.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %32, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %33 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %33, i32 0, i32 2
  store i32 %cond, i32* %do_subset, align 4, !tbaa !72
  %34 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs6 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %37, i32 0, i32 4
  %38 = load i32, i32* %num_glyphs6, align 4, !tbaa !70
  %cmp7 = icmp sgt i32 %38, 2048
  br i1 %cmp7, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %for.end
  %39 = load i32, i32* %is_standard.addr, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %39, 0
  br i1 %tobool8, label %if.end.31, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 257, i32* %reserve_glyphs, align 4, !tbaa !5
  %40 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset10 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %40, i32 0, i32 2
  %41 = load i32, i32* %do_subset10, align 4, !tbaa !72
  %cmp11 = icmp ne i32 %41, 1
  br i1 %cmp11, label %if.then.12, label %if.end.30

if.then.12:                                       ; preds = %if.then.9
  %42 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 48, i8* %42) #1
  %43 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %font_name13 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %44, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name13, i32 0, i32 1
  %45 = load i32, i32* %size, align 4, !tbaa !73
  %conv = zext i32 %45 to i64
  %cmp14 = icmp ult i64 %conv, 47
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %46 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %font_name16 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %46, i32 0, i32 22
  %size17 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name16, i32 0, i32 1
  %47 = load i32, i32* %size17, align 4, !tbaa !73
  %conv18 = zext i32 %47 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i64 [ %conv18, %cond.true ], [ 47, %cond.false ]
  %conv20 = trunc i64 %cond19 to i32
  store i32 %conv20, i32* %l, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %48 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %font_name21 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %48, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name21, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %49 = load i32, i32* %l, align 4, !tbaa !5
  %conv23 = sext i32 %49 to i64
  %call24 = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay22, i64 %conv23) #9
  %50 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %51 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %call25 = call i8* @gs_program_name() #8
  %call26 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %52, i8* %call25, i64 %call26) #8
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !74
  %arraydecay28 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %call29 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %54, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay28) #8
  %55 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 48, i8* %56) #1
  br label %if.end.30

if.end.30:                                        ; preds = %cond.end, %if.then.9
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %for.end
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end
  %57 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gs_font_base_s* %57 to %struct.gs_font_type42_s*
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %58, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 15
  %59 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !75
  %60 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs33 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %60, i32 0, i32 4
  store i32 %59, i32* %num_glyphs33, align 4, !tbaa !70
  %61 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs34 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %61, i32 0, i32 4
  %62 = load i32, i32* %num_glyphs34, align 4, !tbaa !70
  %cmp35 = icmp sle i32 %62, 4096
  %cond37 = select i1 %cmp35, i32 0, i32 2
  %63 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset38 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %63, i32 0, i32 2
  store i32 %cond37, i32* %do_subset38, align 4, !tbaa !72
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end
  %64 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gs_font_base_s* %64 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %65, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %66 = load i32, i32* %CIDCount, align 4, !tbaa !78
  %67 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs40 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %67, i32 0, i32 4
  store i32 %66, i32* %num_glyphs40, align 4, !tbaa !70
  br label %cid

sw.bb.41:                                         ; preds = %if.end
  %68 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gs_font_base_s* %68 to %struct.gs_font_cid2_s*
  %cidata42 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %69, i32 0, i32 30
  %common43 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata42, i32 0, i32 0
  %CIDCount44 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common43, i32 0, i32 1
  %70 = load i32, i32* %CIDCount44, align 4, !tbaa !83
  %71 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs45 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %71, i32 0, i32 4
  store i32 %70, i32* %num_glyphs45, align 4, !tbaa !70
  br label %cid

cid:                                              ; preds = %sw.bb.41, %sw.bb.39
  %72 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset46 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %72, i32 0, i32 2
  store i32 2, i32* %do_subset46, align 4, !tbaa !72
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 7
  %74 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !87
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %76 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs48 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %76, i32 0, i32 4
  %77 = load i32, i32* %num_glyphs48, align 4, !tbaa !70
  %add = add nsw i32 %77, 7
  %div = sdiv i32 %add, 8
  %call49 = call i8* %74(%struct.gs_memory_s* %75, i32 %div, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #8
  %78 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %78, i32 0, i32 5
  store i8* %call49, i8** %CIDSet, align 8, !tbaa !88
  %79 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet50 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %79, i32 0, i32 5
  %80 = load i8*, i8** %CIDSet50, align 8, !tbaa !88
  %cmp51 = icmp eq i8* %80, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cid
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.54:                                        ; preds = %cid
  %81 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs55 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %81, i32 0, i32 4
  %82 = load i32, i32* %num_glyphs55, align 4, !tbaa !70
  %add56 = add nsw i32 %82, 7
  %div57 = sdiv i32 %add56, 8
  %83 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSetLength = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %83, i32 0, i32 6
  store i32 %div57, i32* %CIDSetLength, align 4, !tbaa !89
  %84 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %CIDSet58 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %84, i32 0, i32 5
  %85 = load i8*, i8** %CIDSet58, align 8, !tbaa !88
  %86 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %num_glyphs59 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %86, i32 0, i32 4
  %87 = load i32, i32* %num_glyphs59, align 4, !tbaa !70
  %add60 = add nsw i32 %87, 7
  %div61 = sdiv i32 %add60, 8
  %conv62 = sext i32 %div61 to i64
  %call63 = call i8* @memset(i8* %85, i32 0, i64 %conv62) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %fail

sw.epilog:                                        ; preds = %if.end.54, %sw.bb.32, %if.end.31
  %88 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gs_font_base_s* %88 to %struct.gs_font_s*
  %90 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %orig_matrix.addr, align 8, !tbaa !1
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %92 = load i32, i32* %reserve_glyphs, align 4, !tbaa !5
  %call64 = call i32 @gs_copy_font(%struct.gs_font_s* %89, %struct.gs_matrix_s* %90, %struct.gs_memory_s* %91, %struct.gs_font_s** %copied, i32 %92) #8
  store i32 %call64, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %93, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.epilog
  br label %fail

if.end.68:                                        ; preds = %sw.epilog
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %94, i32 0, i32 5
  %95 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %96 = bitcast %struct.gs_font_s* %95 to i8*
  %call69 = call i32 @gs_notify_register(%struct.gs_notify_list_s* %notify_list, i32 (i8*, i8*)* @copied_font_notify, i8* %96) #8
  %97 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %97, i32 0, i32 9
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !90
  %98 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %FontMatrix70 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %98, i32 0, i32 9
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix70, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !92
  %99 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset71 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %99, i32 0, i32 2
  %100 = load i32, i32* %do_subset71, align 4, !tbaa !72
  %cmp72 = icmp ne i32 %100, 2
  br i1 %cmp72, label %land.lhs.true.74, label %if.else.130

land.lhs.true.74:                                 ; preds = %if.end.68
  %101 = load i32, i32* %reserve_glyphs, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %101, -1
  br i1 %cmp75, label %if.then.77, label %if.else.130

if.then.77:                                       ; preds = %land.lhs.true.74
  %102 = load i32, i32* %is_standard.addr, align 4, !tbaa !5
  %tobool78 = icmp ne i32 %102, 0
  br i1 %tobool78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %if.then.77
  %103 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  store %struct.gs_font_s* %103, %struct.gs_font_s** %complete, align 8, !tbaa !1
  br label %if.end.86

if.else:                                          ; preds = %if.then.77
  %104 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %105 = bitcast %struct.gs_font_base_s* %104 to %struct.gs_font_s*
  %106 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontMatrix80 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %106, i32 0, i32 9
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call81 = call i32 @gs_copy_font(%struct.gs_font_s* %105, %struct.gs_matrix_s* %FontMatrix80, %struct.gs_memory_s* %107, %struct.gs_font_s** %complete, i32 -1) #8
  store i32 %call81, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %108, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  br label %fail

if.end.85:                                        ; preds = %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.79
  %109 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %110 = bitcast %struct.gs_font_base_s* %109 to %struct.gs_font_s*
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %complete, align 8, !tbaa !1
  %call87 = call i32 @gs_copy_font_complete(%struct.gs_font_s* %110, %struct.gs_font_s* %111) #8
  store i32 %call87, i32* %code, align 4, !tbaa !5
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %112, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.124

land.lhs.true.90:                                 ; preds = %if.end.86
  %113 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %do_subset91 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %113, i32 0, i32 2
  %114 = load i32, i32* %do_subset91, align 4, !tbaa !72
  %cmp92 = icmp eq i32 %114, 1
  br i1 %cmp92, label %if.then.94, label %if.end.124

if.then.94:                                       ; preds = %land.lhs.true.90
  %115 = bitcast [48 x i8]* %buf95 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %115) #1
  %116 = bitcast i32* %l96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %font_name97 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %117, i32 0, i32 22
  %size98 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name97, i32 0, i32 1
  %118 = load i32, i32* %size98, align 4, !tbaa !93
  %conv99 = zext i32 %118 to i64
  %cmp100 = icmp ult i64 %conv99, 47
  br i1 %cmp100, label %cond.true.102, label %cond.false.106

cond.true.102:                                    ; preds = %if.then.94
  %119 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %font_name103 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %119, i32 0, i32 22
  %size104 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name103, i32 0, i32 1
  %120 = load i32, i32* %size104, align 4, !tbaa !93
  %conv105 = zext i32 %120 to i64
  br label %cond.end.107

cond.false.106:                                   ; preds = %if.then.94
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.102
  %cond108 = phi i64 [ %conv105, %cond.true.102 ], [ 47, %cond.false.106 ]
  %conv109 = trunc i64 %cond108 to i32
  store i32 %conv109, i32* %l96, align 4, !tbaa !5
  %arraydecay110 = getelementptr inbounds [48 x i8], [48 x i8]* %buf95, i32 0, i32 0
  %121 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %font_name111 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %121, i32 0, i32 22
  %chars112 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name111, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [48 x i8], [48 x i8]* %chars112, i32 0, i32 0
  %122 = load i32, i32* %l96, align 4, !tbaa !5
  %conv114 = sext i32 %122 to i64
  %call115 = call i8* @memcpy(i8* %arraydecay110, i8* %arraydecay113, i64 %conv114) #9
  %123 = load i32, i32* %l96, align 4, !tbaa !5
  %idxprom116 = sext i32 %123 to i64
  %arrayidx117 = getelementptr inbounds [48 x i8], [48 x i8]* %buf95, i32 0, i64 %idxprom116
  store i8 0, i8* %arrayidx117, align 1, !tbaa !10
  %124 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory118, align 8, !tbaa !74
  %call119 = call i8* @gs_program_name() #8
  %call120 = call i64 @gs_revision_number() #8
  call void @emprintf_program_ident(%struct.gs_memory_s* %125, i8* %call119, i64 %call120) #8
  %126 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %126, i32 0, i32 3
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !74
  %arraydecay122 = getelementptr inbounds [48 x i8], [48 x i8]* %buf95, i32 0, i32 0
  %call123 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay122) #8
  store i32 6, i32* %cleanup.dest.slot
  %128 = bitcast i32* %l96 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast [48 x i8]* %buf95 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %129) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup [
    i32 6, label %fail
  ]

if.end.124:                                       ; preds = %land.lhs.true.90, %if.end.86
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %130, 0
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.124
  %131 = load %struct.gs_font_s*, %struct.gs_font_s** %complete, align 8, !tbaa !1
  %call128 = call i32 @gs_free_copied_font(%struct.gs_font_s* %131) #8
  %132 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  store %struct.gs_font_s* %132, %struct.gs_font_s** %complete, align 8, !tbaa !1
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.124
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.74, %if.end.68
  %133 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  store %struct.gs_font_s* %133, %struct.gs_font_s** %complete, align 8, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.end.129
  %134 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %135 = bitcast %struct.gs_font_s* %134 to %struct.gs_font_base_s*
  %136 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %copied132 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %136, i32 0, i32 0
  store %struct.gs_font_base_s* %135, %struct.gs_font_base_s** %copied132, align 8, !tbaa !94
  %137 = load %struct.gs_font_s*, %struct.gs_font_s** %complete, align 8, !tbaa !1
  %138 = bitcast %struct.gs_font_s* %137 to %struct.gs_font_base_s*
  %139 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %complete133 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %139, i32 0, i32 1
  store %struct.gs_font_base_s* %138, %struct.gs_font_base_s** %complete133, align 8, !tbaa !95
  %140 = load i32, i32* %is_standard.addr, align 4, !tbaa !5
  %141 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %is_standard134 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %141, i32 0, i32 3
  store i32 %140, i32* %is_standard134, align 4, !tbaa !96
  %142 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %size135 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %142, i32 0, i32 1
  %143 = load i32, i32* %size135, align 4, !tbaa !97
  %cmp136 = icmp ugt i32 %143, 0
  br i1 %cmp136, label %if.then.138, label %if.else.150

if.then.138:                                      ; preds = %if.end.131
  %144 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %chars139 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %144, i32 0, i32 0
  %arraydecay140 = getelementptr inbounds [48 x i8], [48 x i8]* %chars139, i32 0, i32 0
  %data141 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 0
  store i8* %arraydecay140, i8** %data141, align 8, !tbaa !98
  %145 = load %struct.gs_font_name_s*, %struct.gs_font_name_s** %pfname, align 8, !tbaa !1
  %size142 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %145, i32 0, i32 1
  %146 = load i32, i32* %size142, align 4, !tbaa !97
  %size143 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  store i32 %146, i32* %size143, align 4, !tbaa !99
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.138
  %data144 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 0
  %147 = load i8*, i8** %data144, align 8, !tbaa !98
  %size145 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  %148 = load i32, i32* %size145, align 4, !tbaa !99
  %call146 = call i32 @pdf_has_subset_prefix(i8* %147, i32 %148) #8
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %data148 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 0
  %149 = load i8*, i8** %data148, align 8, !tbaa !98
  %add.ptr = getelementptr inbounds i8, i8* %149, i64 7
  store i8* %add.ptr, i8** %data148, align 8, !tbaa !98
  %size149 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  %150 = load i32, i32* %size149, align 4, !tbaa !99
  %sub = sub i32 %150, 7
  store i32 %sub, i32* %size149, align 4, !tbaa !99
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.159

if.else.150:                                      ; preds = %if.end.131
  %arraydecay151 = getelementptr inbounds [19 x i8], [19 x i8]* %fnbuf, i32 0, i32 0
  %151 = load %struct.gs_font_s*, %struct.gs_font_s** %copied, align 8, !tbaa !1
  %152 = ptrtoint %struct.gs_font_s* %151 to i64
  %call152 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 %152) #8
  %arraydecay153 = getelementptr inbounds [19 x i8], [19 x i8]* %fnbuf, i32 0, i32 0
  %data154 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 0
  store i8* %arraydecay153, i8** %data154, align 8, !tbaa !98
  %arraydecay155 = getelementptr inbounds [19 x i8], [19 x i8]* %fnbuf, i32 0, i32 0
  %call156 = call i64 @strlen(i8* %arraydecay155) #7
  %conv157 = trunc i64 %call156 to i32
  %size158 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  store i32 %conv157, i32* %size158, align 4, !tbaa !99
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.150, %while.end
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs160 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %153, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs160, i32 0, i32 16
  %154 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !100
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %size161 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  %156 = load i32, i32* %size161, align 4, !tbaa !99
  %call162 = call i8* %154(%struct.gs_memory_s* %155, i32 %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #8
  %157 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name163 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %157, i32 0, i32 7
  %data164 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name163, i32 0, i32 0
  store i8* %call162, i8** %data164, align 8, !tbaa !101
  %158 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name165 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %158, i32 0, i32 7
  %data166 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name165, i32 0, i32 0
  %159 = load i8*, i8** %data166, align 8, !tbaa !101
  %cmp167 = icmp eq i8* %159, null
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.159
  br label %fail

if.end.170:                                       ; preds = %if.end.159
  %160 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name171 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %160, i32 0, i32 7
  %data172 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name171, i32 0, i32 0
  %161 = load i8*, i8** %data172, align 8, !tbaa !101
  %data173 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 0
  %162 = load i8*, i8** %data173, align 8, !tbaa !98
  %size174 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  %163 = load i32, i32* %size174, align 4, !tbaa !99
  %conv175 = zext i32 %163 to i64
  %call176 = call i8* @memcpy(i8* %161, i8* %162, i64 %conv175) #9
  %size177 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %font_name1, i32 0, i32 1
  %164 = load i32, i32* %size177, align 4, !tbaa !99
  %165 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %font_name178 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %165, i32 0, i32 7
  %size179 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name178, i32 0, i32 1
  store i32 %164, i32* %size179, align 4, !tbaa !102
  %166 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %167 = load %struct.pdf_base_font_s**, %struct.pdf_base_font_s*** %ppbfont.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %166, %struct.pdf_base_font_s** %167, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %cond.end.107, %if.then.169, %if.then.84, %if.then.67, %sw.default, %if.then.53
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs180 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %168, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs180, i32 0, i32 2
  %169 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !103
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %171 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont, align 8, !tbaa !1
  %172 = bitcast %struct.pdf_base_font_s* %171 to i8*
  call void %169(%struct.gs_memory_s* %170, i8* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #8
  %173 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %cond.end.107, %if.end.170, %if.then
  %174 = bitcast i32* %reserve_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast [19 x i8]* %fnbuf to i8*
  call void @llvm.lifetime.end(i64 19, i8* %176) #1
  %177 = bitcast %struct.gs_const_string_s* %font_name1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %177) #1
  %178 = bitcast %struct.gs_font_name_s** %pfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast %struct.pdf_base_font_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.gs_font_s** %complete to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.gs_font_s** %copied to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = load i32, i32* %retval
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #5

declare i8* @gs_program_name() #5

declare i64 @gs_revision_number() #5

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #5

declare i32 @gs_copy_font(%struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_memory_s*, %struct.gs_font_s**, i32) #5

declare i32 @gs_notify_register(%struct.gs_notify_list_s*, i32 (i8*, i8*)*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @copied_font_notify(i8* %proc_data, i8* %event_data) #0 {
entry:
  %proc_data.addr = alloca i8*, align 8
  %event_data.addr = alloca i8*, align 8
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store i8* %event_data, i8** %event_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.gs_font_s*
  %call = call i32 @gs_purge_font_from_char_caches_completely(%struct.gs_font_s* %1) #8
  ret i32 %call
}

declare i32 @gs_copy_font_complete(%struct.gs_font_s*, %struct.gs_font_s*) #5

declare i32 @gs_free_copied_font(%struct.gs_font_s*) #5

declare i32 @gs_sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_string_s* @pdf_base_font_name(%struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %0, i32 0, i32 7
  ret %struct.gs_string_s* %font_name
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_base_s* @pdf_base_font_font(%struct.pdf_base_font_s* %pbfont, i32 %complete) #0 {
entry:
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %complete.addr = alloca i32, align 4
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %complete, i32* %complete.addr, align 4, !tbaa !5
  %0 = load i32, i32* %complete.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %complete1 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %complete1, align 8, !tbaa !95
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %3, i32 0, i32 0
  %4 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_font_base_s* [ %2, %cond.true ], [ %4, %cond.false ]
  ret %struct.gs_font_base_s* %cond
}

; Function Attrs: nounwind uwtable
define i32 @pdf_base_font_is_subset(%struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %do_subset = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %0, i32 0, i32 2
  %1 = load i32, i32* %do_subset, align 4, !tbaa !72
  %cmp = icmp eq i32 %1, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @pdf_base_font_drop_complete(%struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %complete = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %0, i32 0, i32 1
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %complete, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf_base_font_copy_glyph(%struct.pdf_base_font_s* %pbfont, i64 %glyph, %struct.gs_font_base_s* %font) #0 {
entry:
  %retval = alloca i32, align 4
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cid = alloca i32, align 4
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !60
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_base_s* %1 to %struct.gs_font_s*
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %4 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %4, i32 0, i32 0
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !94
  %6 = bitcast %struct.gs_font_base_s* %5 to %struct.gs_font_s*
  %7 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %is_standard = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %7, i32 0, i32 3
  %8 = load i32, i32* %is_standard, align 4, !tbaa !96
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %call = call i32 @gs_copy_glyph_options(%struct.gs_font_s* %2, i64 %3, %struct.gs_font_s* %6, i32 %cond) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %CIDSet = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %11, i32 0, i32 5
  %12 = load i8*, i8** %CIDSet, align 8, !tbaa !88
  %cmp1 = icmp ne i8* %12, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %13 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %sub = sub i64 %13, 2147483648
  %conv = trunc i64 %sub to i32
  %14 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %14, i32 0, i32 4
  %15 = load i32, i32* %num_glyphs, align 4, !tbaa !70
  %cmp2 = icmp ult i32 %conv, %15
  br i1 %cmp2, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %land.lhs.true
  %16 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i64, i64* %glyph.addr, align 8, !tbaa !60
  %sub5 = sub i64 %17, 2147483648
  %conv6 = trunc i64 %sub5 to i32
  store i32 %conv6, i32* %cid, align 4, !tbaa !5
  %18 = load i32, i32* %cid, align 4, !tbaa !5
  %and = and i32 %18, 7
  %shr = ashr i32 128, %and
  %19 = load i32, i32* %cid, align 4, !tbaa !5
  %shr7 = lshr i32 %19, 3
  %idxprom = zext i32 %shr7 to i64
  %20 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %CIDSet8 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %20, i32 0, i32 5
  %21 = load i8*, i8** %CIDSet8, align 8, !tbaa !88
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv9 = zext i8 %22 to i32
  %or = or i32 %conv9, %shr
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %arrayidx, align 1, !tbaa !10
  %23 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gs_copy_glyph_options(%struct.gs_font_s*, i64, %struct.gs_font_s*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @pdf_do_subset_font(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s* %pbfont, i64 %rid) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %rid.addr = alloca i64, align 8
  %copied = alloca %struct.gs_font_base_s*, align 8
  %max_pct = alloca i32, align 4
  %do_subset2 = alloca i32, align 4
  %max_subset_used = alloca i32, align 4
  %used = alloca i32, align 4
  %index = alloca i32, align 4
  %ignore_glyph = alloca i64, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !60
  %0 = bitcast %struct.gs_font_base_s** %copied to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied1 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %1, i32 0, i32 0
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied1, align 8, !tbaa !94
  store %struct.gs_font_base_s* %2, %struct.gs_font_base_s** %copied, align 8, !tbaa !1
  %3 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %do_subset = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %3, i32 0, i32 2
  %4 = load i32, i32* %do_subset, align 4, !tbaa !72
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %max_pct to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 73
  %MaxSubsetPct = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 31
  %7 = load i32, i32* %MaxSubsetPct, align 4, !tbaa !104
  store i32 %7, i32* %max_pct, align 4, !tbaa !5
  %8 = bitcast i32* %do_subset2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 73
  %SubsetFonts = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 32
  %10 = load i32, i32* %SubsetFonts, align 4, !tbaa !105
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %11 = load i32, i32* %max_pct, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %12 = phi i1 [ false, %if.then ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %do_subset2, align 4, !tbaa !5
  %13 = load i32, i32* %do_subset2, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %land.end
  %14 = load i32, i32* %max_pct, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %14, 100
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %land.lhs.true
  store i32 0, i32* %do_subset2, align 4, !tbaa !5
  %15 = load i32, i32* %max_pct, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.then.7
  %16 = bitcast i32* %max_subset_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %num_glyphs = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %17, i32 0, i32 4
  %18 = load i32, i32* %num_glyphs, align 4, !tbaa !70
  %19 = load i32, i32* %max_pct, align 4, !tbaa !5
  %mul = mul nsw i32 %18, %19
  %div = sdiv i32 %mul, 100
  store i32 %div, i32* %max_subset_used, align 4, !tbaa !5
  %20 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i64* %ignore_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32 1, i32* %do_subset2, align 4, !tbaa !5
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %used, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then.9
  %23 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %23, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %24 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !69
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_base_s* %25 to %struct.gs_font_s*
  %call = call i32 %24(%struct.gs_font_s* %26, i32* %index, i32 1, i64* %ignore_glyph) #8
  %27 = load i32, i32* %index, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %27, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %used, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %used, align 4, !tbaa !5
  %29 = load i32, i32* %max_subset_used, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %inc, %29
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %do_subset2, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %30 = bitcast i64* %ignore_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %max_subset_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %land.end
  %34 = load i32, i32* %do_subset2, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %34, 0
  %cond = select i1 %tobool15, i32 2, i32 1
  %35 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %do_subset16 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %35, i32 0, i32 2
  store i32 %cond, i32* %do_subset16, align 4, !tbaa !72
  %36 = bitcast i32* %do_subset2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %max_pct to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %entry
  %38 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %do_subset18 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %38, i32 0, i32 2
  %39 = load i32, i32* %do_subset18, align 4, !tbaa !72
  %cmp19 = icmp eq i32 %39, 2
  %conv = zext i1 %cmp19 to i32
  %40 = bitcast %struct.gs_font_base_s** %copied to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_FontFile_entry(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %FontFile_key = alloca i8*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !106
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i8** %FontFile_key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %4, i32 0, i32 0
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !94
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 11
  %6 = load i32, i32* %FontType, align 4, !tbaa !63
  switch i32 %6, label %sw.default [
    i32 42, label %sw.bb
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8** %FontFile_key, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 102
  %8 = load i32, i32* %ResourcesBeforeUsage, align 4, !tbaa !107
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8** %FontFile_key, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8** %FontFile_key, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load i8*, i8** %FontFile_key, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %9, i8* %10) #8
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %12, i32 0, i32 9
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile, align 8, !tbaa !108
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %13, i32 0, i32 1
  %14 = load i64, i64* %id, align 8, !tbaa !109
  %call1 = call i8* @pprintld1(%struct.stream_s* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i64 %14) #8
  %15 = bitcast i8** %FontFile_key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 0
}

declare i32 @stream_puts(%struct.stream_s*, i8*) #5

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @pdf_write_embedded_font(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s* %pbfont, i32 %FontType, %struct.gs_int_rect_s* %FontBBox, i64 %rid, %struct.cos_dict_s** %ppcd) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %FontType.addr = alloca i32, align 4
  %FontBBox.addr = alloca %struct.gs_int_rect_s*, align 8
  %rid.addr = alloca i64, align 8
  %ppcd.addr = alloca %struct.cos_dict_s**, align 8
  %do_subset = alloca i32, align 4
  %out_font = alloca %struct.gs_font_base_s*, align 8
  %fnstr = alloca %struct.gs_const_string_s, align 8
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %digest = alloca [6 x i8], align 1
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %options = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %code33 = alloca i32, align 4
  %lengths = alloca [3 x i32], align 4
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %options110 = alloca i32, align 4
  %poss = alloca %struct.stream_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  store i32 %FontType, i32* %FontType.addr, align 4, !tbaa !10
  store %struct.gs_int_rect_s* %FontBBox, %struct.gs_int_rect_s** %FontBBox.addr, align 8, !tbaa !1
  store i64 %rid, i64* %rid.addr, align 8, !tbaa !60
  store %struct.cos_dict_s** %ppcd, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %do_subset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %3 = load i64, i64* %rid.addr, align 8, !tbaa !60
  %call = call i32 @pdf_do_subset_font(%struct.gx_device_pdf_s* %1, %struct.pdf_base_font_s* %2, i64 %3) #8
  store i32 %call, i32* %do_subset, align 4, !tbaa !5
  %4 = bitcast %struct.gs_font_base_s** %out_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %do_subset, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %complete = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %6, i32 0, i32 1
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %complete, align 8, !tbaa !95
  %cmp = icmp eq %struct.gs_font_base_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %8 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %8, i32 0, i32 0
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !94
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %complete1 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %10, i32 0, i32 1
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %complete1, align 8, !tbaa !95
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_font_base_s* [ %9, %cond.true ], [ %11, %cond.false ]
  store %struct.gs_font_base_s* %cond, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %12 = bitcast %struct.gs_const_string_s* %fnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %13) #1
  %14 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 6, i8* %14) #1
  %15 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 6, i32 1, i1 false)
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %code1, align 4, !tbaa !5
  %18 = bitcast i32* %options to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %options, align 4, !tbaa !5
  %19 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %written = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %19, i32 0, i32 8
  %20 = load i32, i32* %written, align 4, !tbaa !112
  %tobool2 = icmp ne i32 %20, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end:                                           ; preds = %cond.end
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %22 = bitcast %struct.gs_font_base_s* %21 to %struct.gs_font_s*
  %call3 = call i32 @copied_order_font(%struct.gs_font_s* %22) #8
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %23, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.6:                                         ; preds = %if.end
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 94
  %26 = load i32, i32* %CompressFonts, align 4, !tbaa !113
  %tobool7 = icmp ne i32 %26, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  store i32 3, i32* %options, align 4, !tbaa !5
  br label %if.end.14

if.else:                                          ; preds = %if.end.6
  %27 = load i32, i32* %FontType.addr, align 4, !tbaa !10
  %cmp9 = icmp ne i32 %27, 1
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.else
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HaveCFF = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 69
  %29 = load i32, i32* %HaveCFF, align 4, !tbaa !114
  %tobool11 = icmp ne i32 %29, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.10, %if.else
  store i32 1, i32* %options, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %31 = load i32, i32* %options, align 4, !tbaa !5
  %call15 = call i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s* %30, %struct.pdf_data_writer_s* %writer, i32 %31, i64 0) #8
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.18:                                        ; preds = %if.end.14
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 109
  %35 = load i32, i32* %PDFA, align 4, !tbaa !115
  %cmp19 = icmp ne i32 %35, 0
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.18
  %36 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %37, i32 0, i32 43
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !13
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %39 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !116
  %call21 = call %struct.stream_s* @s_MD5C_make_stream(%struct.gs_memory_s* %38, %struct.stream_s* %39) #8
  store %struct.stream_s* %call21, %struct.stream_s** %s, align 8, !tbaa !1
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp22 = icmp eq %struct.stream_s* %40, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.20
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %binary25 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm26 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary25, i32 0, i32 2
  store %struct.stream_s* %41, %struct.stream_s** %strm26, align 8, !tbaa !116
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23
  %42 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.198 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.end.18
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %43, i32 0, i32 75
  %44 = load double, double* %CompatibilityLevel, align 8, !tbaa !119
  %cmp28 = fcmp oeq double %44, 1.200000e+00
  br i1 %cmp28, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.27
  %45 = load i32, i32* %do_subset, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %45, 0
  br i1 %tobool29, label %if.end.41, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %46 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %is_standard = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %46, i32 0, i32 3
  %47 = load i32, i32* %is_standard, align 4, !tbaa !96
  %tobool31 = icmp ne i32 %47, 0
  br i1 %tobool31, label %if.end.41, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %48 = bitcast i32* %code33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %50 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !120
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %50, i32 0, i32 7
  %51 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !121
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %51, i32 0, i32 1
  %52 = load i64, i64* %id, align 8, !tbaa !123
  %53 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %call34 = call i32 @pdf_adjust_font_name(%struct.gx_device_pdf_s* %49, i64 %52, %struct.pdf_base_font_s* %53) #8
  store i32 %call34, i32* %code33, align 4, !tbaa !5
  %54 = load i32, i32* %code33, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %54, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %55 = load i32, i32* %code33, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.37:                                        ; preds = %if.then.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %if.then.36
  %56 = bitcast i32* %code33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %cleanup.dest.39 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.39, label %cleanup.198 [
    i32 0, label %cleanup.cont.40
  ]

cleanup.cont.40:                                  ; preds = %cleanup.38
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont.40, %land.lhs.true.30, %land.lhs.true, %if.end.27
  %57 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %57, i32 0, i32 7
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name, i32 0, i32 0
  %58 = load i8*, i8** %data, align 8, !tbaa !101
  %data42 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fnstr, i32 0, i32 0
  store i8* %58, i8** %data42, align 8, !tbaa !98
  %59 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name43 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %59, i32 0, i32 7
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name43, i32 0, i32 1
  %60 = load i32, i32* %size, align 4, !tbaa !102
  %size44 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %fnstr, i32 0, i32 1
  store i32 %60, i32* %size44, align 4, !tbaa !99
  %61 = load i32, i32* %FontType.addr, align 4, !tbaa !10
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.45
    i32 1, label %sw.bb.50
    i32 42, label %sw.bb.109
    i32 9, label %sw.bb.152
    i32 11, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %if.end.41
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.41
  %62 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HaveCFF46 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %62, i32 0, i32 69
  %63 = load i32, i32* %HaveCFF46, align 4, !tbaa !114
  %tobool47 = icmp ne i32 %63, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %sw.bb.45
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.49:                                        ; preds = %sw.bb.45
  br label %sw.bb.50

sw.bb.50:                                         ; preds = %if.end.41, %if.end.49
  %64 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HavePDFWidths = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %64, i32 0, i32 103
  %65 = load i32, i32* %HavePDFWidths, align 4, !tbaa !125
  %tobool51 = icmp ne i32 %65, 0
  br i1 %tobool51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %sw.bb.50
  %66 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %67 = bitcast %struct.gs_font_base_s* %66 to %struct.gs_font_s*
  %call53 = call i32 @copied_drop_extension_glyphs(%struct.gs_font_s* %67) #8
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %68, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  %69 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.56:                                        ; preds = %if.then.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %sw.bb.50
  %70 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HaveCFF58 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %70, i32 0, i32 69
  %71 = load i32, i32* %HaveCFF58, align 4, !tbaa !114
  %tobool59 = icmp ne i32 %71, 0
  br i1 %tobool59, label %if.else.95, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  %72 = bitcast [3 x i32]* %lengths to i8*
  call void @llvm.lifetime.start(i64 12, i8* %72) #1
  %binary61 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm62 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary61, i32 0, i32 2
  %73 = load %struct.stream_s*, %struct.stream_s** %strm62, align 8, !tbaa !116
  %74 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %75 = bitcast %struct.gs_font_base_s* %74 to %struct.gs_font_type1_s*
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i32 0
  %call63 = call i32 @psf_write_type1_font(%struct.stream_s* %73, %struct.gs_font_type1_s* %75, i32 39, i64* null, i32 0, %struct.gs_const_string_s* %fnstr, i32* %arraydecay) #8
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i64 0
  %76 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp64 = icmp sgt i32 %76, 0
  br i1 %cmp64, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %if.then.60
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %77, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.65
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %code1, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.68:                                        ; preds = %if.then.65
  %pres69 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %79 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres69, align 8, !tbaa !120
  %object70 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %79, i32 0, i32 7
  %80 = load %struct.cos_object_s*, %struct.cos_object_s** %object70, align 8, !tbaa !121
  %81 = bitcast %struct.cos_object_s* %80 to %struct.cos_dict_s*
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i64 0
  %82 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %call72 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %82) #8
  store i32 %call72, i32* %code, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.68, %if.then.60
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i64 1
  %83 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %cmp75 = icmp sgt i32 %83, 0
  br i1 %cmp75, label %if.then.76, label %if.end.91

if.then.76:                                       ; preds = %if.end.73
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %84, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.76
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %code1, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.79:                                        ; preds = %if.then.76
  %pres80 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %86 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres80, align 8, !tbaa !120
  %object81 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %86, i32 0, i32 7
  %87 = load %struct.cos_object_s*, %struct.cos_object_s** %object81, align 8, !tbaa !121
  %88 = bitcast %struct.cos_object_s* %87 to %struct.cos_dict_s*
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i64 1
  %89 = load i32, i32* %arrayidx82, align 4, !tbaa !5
  %call83 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %89) #8
  store i32 %call83, i32* %code, align 4, !tbaa !5
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %90, 0
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.79
  %91 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.86:                                        ; preds = %if.end.79
  %pres87 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %92 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres87, align 8, !tbaa !120
  %object88 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %92, i32 0, i32 7
  %93 = load %struct.cos_object_s*, %struct.cos_object_s** %object88, align 8, !tbaa !121
  %94 = bitcast %struct.cos_object_s* %93 to %struct.cos_dict_s*
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %lengths, i32 0, i64 2
  %95 = load i32, i32* %arrayidx89, align 4, !tbaa !5
  %call90 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %95) #8
  store i32 %call90, i32* %code, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.86, %if.end.73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.then.78, %if.then.67, %if.end.91, %if.then.85
  %96 = bitcast [3 x i32]* %lengths to i8*
  call void @llvm.lifetime.end(i64 12, i8* %96) #1
  %cleanup.dest.93 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.93, label %cleanup.198 [
    i32 0, label %cleanup.cont.94
    i32 3, label %finish
  ]

cleanup.cont.94:                                  ; preds = %cleanup.92
  br label %if.end.108

if.else.95:                                       ; preds = %if.end.57
  %pres96 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %97 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres96, align 8, !tbaa !120
  %object97 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %97, i32 0, i32 7
  %98 = load %struct.cos_object_s*, %struct.cos_object_s** %object97, align 8, !tbaa !121
  %99 = bitcast %struct.cos_object_s* %98 to %struct.cos_dict_s*
  %call98 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #8
  store i32 %call98, i32* %code, align 4, !tbaa !5
  %100 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %100, 0
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.else.95
  %101 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.101:                                       ; preds = %if.else.95
  %binary102 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm103 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary102, i32 0, i32 2
  %102 = load %struct.stream_s*, %struct.stream_s** %strm103, align 8, !tbaa !116
  %103 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %104 = bitcast %struct.gs_font_base_s* %103 to %struct.gs_font_type1_s*
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel104 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %105, i32 0, i32 75
  %106 = load double, double* %CompatibilityLevel104, align 8, !tbaa !119
  %cmp105 = fcmp olt double %106, 1.300000e+00
  %cond106 = select i1 %cmp105, i32 4, i32 0
  %or = or i32 3, %cond106
  %107 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %FontBBox.addr, align 8, !tbaa !1
  %call107 = call i32 @psf_write_type2_font(%struct.stream_s* %102, %struct.gs_font_type1_s* %104, i32 %or, i64* null, i32 0, %struct.gs_const_string_s* %fnstr, %struct.gs_int_rect_s* %107) #8
  store i32 %call107, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %108, i32* %code1, align 4, !tbaa !5
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.101, %cleanup.cont.94
  br label %finish

sw.bb.109:                                        ; preds = %if.end.41
  %109 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %111 = bitcast %struct.gs_font_base_s* %110 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %111, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %112 = bitcast i32* %options110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA111 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %113, i32 0, i32 109
  %114 = load i32, i32* %PDFA111, align 4, !tbaa !115
  %cmp112 = icmp ne i32 %114, 0
  %cond113 = select i1 %cmp112, i32 32, i32 0
  %or114 = or i32 18, %cond113
  %115 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel115 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %115, i32 0, i32 75
  %116 = load double, double* %CompatibilityLevel115, align 8, !tbaa !119
  %cmp116 = fcmp ole double %116, 1.200000e+00
  %cond117 = select i1 %cmp116, i32 8, i32 0
  %or118 = or i32 %or114, %cond117
  %117 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data119 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %117, i32 0, i32 29
  %numGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data119, i32 0, i32 14
  %118 = load i32, i32* %numGlyphs, align 4, !tbaa !126
  %119 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data120 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %119, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data120, i32 0, i32 15
  %120 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !75
  %cmp121 = icmp ne i32 %118, %120
  br i1 %cmp121, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.109
  %121 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %do_subset122 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %121, i32 0, i32 2
  %122 = load i32, i32* %do_subset122, align 4, !tbaa !72
  %cmp123 = icmp eq i32 %122, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.109
  %123 = phi i1 [ true, %sw.bb.109 ], [ %cmp123, %lor.rhs ]
  %cond124 = select i1 %123, i32 1, i32 0
  %or125 = or i32 %or118, %cond124
  store i32 %or125, i32* %options110, align 4, !tbaa !5
  %124 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %124) #1
  %125 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %HavePDFWidths126 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %125, i32 0, i32 103
  %126 = load i32, i32* %HavePDFWidths126, align 4, !tbaa !125
  %tobool127 = icmp ne i32 %126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.133

if.then.128:                                      ; preds = %lor.end
  %127 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %128 = bitcast %struct.gs_font_base_s* %127 to %struct.gs_font_s*
  %call129 = call i32 @copied_drop_extension_glyphs(%struct.gs_font_s* %128) #8
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %129, 0
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.128
  %130 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.132:                                       ; preds = %if.then.128
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %lor.end
  %131 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  call void @s_init(%struct.stream_s* %poss, %struct.gs_memory_s* %132) #8
  call void @swrite_position_only(%struct.stream_s* %poss) #8
  %133 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %134 = load i32, i32* %options110, align 4, !tbaa !5
  %call134 = call i32 @psf_write_truetype_font(%struct.stream_s* %poss, %struct.gs_font_type42_s* %133, i32 %134, i64* null, i32 0, %struct.gs_const_string_s* %fnstr) #8
  store i32 %call134, i32* %code, align 4, !tbaa !5
  %135 = load i32, i32* %code, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %135, 0
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %136 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.137:                                       ; preds = %if.end.133
  %pres138 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %137 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres138, align 8, !tbaa !120
  %object139 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %137, i32 0, i32 7
  %138 = load %struct.cos_object_s*, %struct.cos_object_s** %object139, align 8, !tbaa !121
  %139 = bitcast %struct.cos_object_s* %138 to %struct.cos_dict_s*
  %call140 = call i64 @stell(%struct.stream_s* %poss) #8
  %conv = trunc i64 %call140 to i32
  %call141 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %conv) #8
  store i32 %call141, i32* %code, align 4, !tbaa !5
  %140 = load i32, i32* %code, align 4, !tbaa !5
  %cmp142 = icmp slt i32 %140, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.137
  %141 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end.145:                                       ; preds = %if.end.137
  %binary146 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm147 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary146, i32 0, i32 2
  %142 = load %struct.stream_s*, %struct.stream_s** %strm147, align 8, !tbaa !116
  %143 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %144 = load i32, i32* %options110, align 4, !tbaa !5
  %call148 = call i32 @psf_write_truetype_font(%struct.stream_s* %142, %struct.gs_font_type42_s* %143, i32 %144, i64* null, i32 0, %struct.gs_const_string_s* %fnstr) #8
  store i32 %call148, i32* %code, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.145, %if.then.144, %if.then.136, %if.then.131
  %145 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %145) #1
  %146 = bitcast i32* %options110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %cleanup.dest167 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest167, label %cleanup.198 [
    i32 3, label %finish
  ]

sw.bb.152:                                        ; preds = %if.end.41
  %pres153 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %148 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres153, align 8, !tbaa !120
  %object154 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %148, i32 0, i32 7
  %149 = load %struct.cos_object_s*, %struct.cos_object_s** %object154, align 8, !tbaa !121
  %150 = bitcast %struct.cos_object_s* %149 to %struct.cos_dict_s*
  %call155 = call i32 @cos_dict_put_string_copy(%struct.cos_dict_s* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #8
  store i32 %call155, i32* %code, align 4, !tbaa !5
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %151, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %sw.bb.152
  %152 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.159:                                       ; preds = %sw.bb.152
  %binary160 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm161 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary160, i32 0, i32 2
  %153 = load %struct.stream_s*, %struct.stream_s** %strm161, align 8, !tbaa !116
  %154 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %155 = bitcast %struct.gs_font_base_s* %154 to %struct.gs_font_cid0_s*
  %call162 = call i32 @psf_write_cid0_font(%struct.stream_s* %153, %struct.gs_font_cid0_s* %155, i32 3, i8* null, i32 0, %struct.gs_const_string_s* %fnstr) #8
  store i32 %call162, i32* %code, align 4, !tbaa !5
  br label %finish

sw.bb.163:                                        ; preds = %if.end.41
  %binary164 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm165 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary164, i32 0, i32 2
  %156 = load %struct.stream_s*, %struct.stream_s** %strm165, align 8, !tbaa !116
  %157 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %out_font, align 8, !tbaa !1
  %158 = bitcast %struct.gs_font_base_s* %157 to %struct.gs_font_cid2_s*
  %call166 = call i32 @psf_write_cid2_font(%struct.stream_s* %156, %struct.gs_font_cid2_s* %158, i32 16, i8* null, i32 0, %struct.gs_const_string_s* %fnstr) #8
  store i32 %call166, i32* %code, align 4, !tbaa !5
  br label %finish

finish:                                           ; preds = %sw.bb.163, %cleanup.149, %cleanup.92, %if.end.159, %if.end.108
  %159 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PDFA168 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %159, i32 0, i32 109
  %160 = load i32, i32* %PDFA168, align 4, !tbaa !115
  %cmp169 = icmp ne i32 %160, 0
  br i1 %cmp169, label %if.then.171, label %if.end.181

if.then.171:                                      ; preds = %finish
  %binary172 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm173 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary172, i32 0, i32 2
  %161 = load %struct.stream_s*, %struct.stream_s** %strm173, align 8, !tbaa !116
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %161, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %162 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !127
  %binary174 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm175 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary174, i32 0, i32 2
  %163 = load %struct.stream_s*, %struct.stream_s** %strm175, align 8, !tbaa !116
  %call176 = call i32 %162(%struct.stream_s* %163) #8
  %binary177 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm178 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary177, i32 0, i32 2
  %164 = load %struct.stream_s*, %struct.stream_s** %strm178, align 8, !tbaa !116
  %arraydecay179 = getelementptr inbounds [6 x i8], [6 x i8]* %digest, i32 0, i32 0
  %call180 = call i32 @s_MD5C_get_digest(%struct.stream_s* %164, i8* %arraydecay179, i32 6) #8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.171, %finish
  %pres182 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %165 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres182, align 8, !tbaa !120
  %object183 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %165, i32 0, i32 7
  %166 = load %struct.cos_object_s*, %struct.cos_object_s** %object183, align 8, !tbaa !121
  %167 = bitcast %struct.cos_object_s* %166 to %struct.cos_dict_s*
  %168 = load %struct.cos_dict_s**, %struct.cos_dict_s*** %ppcd.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %167, %struct.cos_dict_s** %168, align 8, !tbaa !1
  %169 = load i32, i32* %code, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %169, 0
  br i1 %cmp184, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.181
  %170 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call187 = call i32 @pdf_end_fontfile(%struct.gx_device_pdf_s* %170, %struct.pdf_data_writer_s* %writer) #8
  %171 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.188:                                       ; preds = %if.end.181
  %172 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call189 = call i32 @pdf_end_fontfile(%struct.gx_device_pdf_s* %172, %struct.pdf_data_writer_s* %writer) #8
  store i32 %call189, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.41
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.188, %sw.bb
  %173 = load i32, i32* %code, align 4, !tbaa !5
  %cmp190 = icmp sge i32 %173, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.196

land.lhs.true.192:                                ; preds = %sw.epilog
  %174 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp193 = icmp slt i32 %174, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true.192
  %175 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %175, i32* %code, align 4, !tbaa !5
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %land.lhs.true.192, %sw.epilog
  %176 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %written197 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %176, i32 0, i32 8
  store i32 1, i32* %written197, align 4, !tbaa !112
  %177 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %if.end.196, %if.then.186, %cleanup.149, %if.then.158, %if.then.100, %cleanup.92, %if.then.55, %if.then.48, %cleanup.38, %cleanup, %if.then.17, %if.then.5, %if.then
  %178 = bitcast i32* %options to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast [6 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 6, i8* %181) #1
  %182 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %182) #1
  %183 = bitcast %struct.gs_const_string_s* %fnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %183) #1
  %184 = bitcast %struct.gs_font_base_s** %out_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i32* %do_subset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = load i32, i32* %retval
  ret i32 %186
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @copied_order_font(%struct.gs_font_s*) #5

declare i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s*, %struct.pdf_data_writer_s*, i32, i64) #5

declare %struct.stream_s* @s_MD5C_make_stream(%struct.gs_memory_s*, %struct.stream_s*) #5

; Function Attrs: nounwind uwtable
define internal i32 @pdf_adjust_font_name(%struct.gx_device_pdf_s* %pdev, i64 %id, %struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %id.addr = alloca i64, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %i = alloca i32, align 4
  %chars = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %size = alloca i32, align 4
  %suffix = alloca [18 x i8], align 16
  %suffix_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !60
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %2, i32 0, i32 7
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !101
  store i8* %3, i8** %chars, align 8, !tbaa !1
  %4 = bitcast i8** %data1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name2 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %6, i32 0, i32 7
  %size3 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name2, i32 0, i32 1
  %7 = load i32, i32* %size3, align 4, !tbaa !102
  store i32 %7, i32* %size, align 4, !tbaa !5
  %8 = bitcast [18 x i8]* %suffix to i8*
  call void @llvm.lifetime.start(i64 18, i8* %8) #1
  %9 = bitcast i32* %suffix_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %10, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %13 = load i8*, i8** %chars, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %14 to i32
  %idxprom4 = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #10
  %15 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 %idxprom4
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !61
  %conv6 = zext i16 %16 to i32
  %and = and i32 %conv6, 4096
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %size, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %19, %20
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %21, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %sub12 = sub nsw i32 %22, 1
  %idxprom13 = sext i32 %sub12 to i64
  %23 = load i8*, i8** %chars, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 %idxprom13
  %24 = load i8, i8* %arrayidx14, align 1, !tbaa !10
  %conv15 = zext i8 %24 to i32
  %cmp16 = icmp eq i32 %conv15, 126
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  br label %do.body.18

do.body.18:                                       ; preds = %land.end.30, %if.then
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %dec19 = add nsw i32 %25, -1
  store i32 %dec19, i32* %i, align 4, !tbaa !5
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.18
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %26, 0
  br i1 %cmp21, label %land.rhs.23, label %land.end.30

land.rhs.23:                                      ; preds = %do.cond.20
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %sub24 = sub nsw i32 %27, 1
  %idxprom25 = sext i32 %sub24 to i64
  %28 = load i8*, i8** %chars, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %28, i64 %idxprom25
  %29 = load i8, i8* %arrayidx26, align 1, !tbaa !10
  %conv27 = zext i8 %29 to i32
  %cmp28 = icmp eq i32 %conv27, 126
  br label %land.end.30

land.end.30:                                      ; preds = %land.rhs.23, %do.cond.20
  %30 = phi i1 [ false, %do.cond.20 ], [ %cmp28, %land.rhs.23 ]
  br i1 %30, label %do.body.18, label %do.end.31

do.end.31:                                        ; preds = %land.end.30
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %31, 1
  store i32 %add, i32* %size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %do.end.31, %land.lhs.true.11, %land.lhs.true, %for.end
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %suffix, i32 0, i32 0
  %32 = load i64, i64* %id.addr, align 8, !tbaa !60
  %call32 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 126, i64 %32) #8
  %arraydecay33 = getelementptr inbounds [18 x i8], [18 x i8]* %suffix, i32 0, i32 0
  %call34 = call i64 @strlen(i8* %arraydecay33) #7
  %conv35 = trunc i64 %call34 to i32
  store i32 %conv35, i32* %suffix_size, align 4, !tbaa !5
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 43
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !13
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %35 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !56
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory36 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %36, i32 0, i32 43
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory36, align 8, !tbaa !13
  %38 = load i8*, i8** %chars, align 8, !tbaa !1
  %39 = load i32, i32* %size, align 4, !tbaa !5
  %40 = load i32, i32* %size, align 4, !tbaa !5
  %41 = load i32, i32* %suffix_size, align 4, !tbaa !5
  %add37 = add i32 %40, %41
  %call38 = call i8* %35(%struct.gs_memory_s* %37, i8* %38, i32 %39, i32 %add37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0)) #8
  store i8* %call38, i8** %data1, align 8, !tbaa !1
  %42 = load i8*, i8** %data1, align 8, !tbaa !1
  %cmp39 = icmp eq i8* %42, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end
  %43 = load i8*, i8** %data1, align 8, !tbaa !1
  %44 = load i32, i32* %size, align 4, !tbaa !5
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  %arraydecay43 = getelementptr inbounds [18 x i8], [18 x i8]* %suffix, i32 0, i32 0
  %45 = load i32, i32* %suffix_size, align 4, !tbaa !5
  %conv44 = zext i32 %45 to i64
  %call45 = call i8* @memcpy(i8* %add.ptr, i8* %arraydecay43, i64 %conv44) #9
  %46 = load i8*, i8** %data1, align 8, !tbaa !1
  %47 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name46 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %47, i32 0, i32 7
  %data47 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name46, i32 0, i32 0
  store i8* %46, i8** %data47, align 8, !tbaa !101
  %48 = load i32, i32* %size, align 4, !tbaa !5
  %49 = load i32, i32* %suffix_size, align 4, !tbaa !5
  %add48 = add i32 %48, %49
  %50 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %font_name49 = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %50, i32 0, i32 7
  %size50 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %font_name49, i32 0, i32 1
  store i32 %add48, i32* %size50, align 4, !tbaa !102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41
  %51 = bitcast i32* %suffix_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast [18 x i8]* %suffix to i8*
  call void @llvm.lifetime.end(i64 18, i8* %52) #1
  %53 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i8** %data1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @copied_drop_extension_glyphs(%struct.gs_font_s*) #5

declare i32 @psf_write_type1_font(%struct.stream_s*, %struct.gs_font_type1_s*, i32, i64*, i32, %struct.gs_const_string_s*, i32*) #5

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #5

declare i32 @cos_dict_put_string_copy(%struct.cos_dict_s*, i8*, i8*) #5

declare i32 @psf_write_type2_font(%struct.stream_s*, %struct.gs_font_type1_s*, i32, i64*, i32, %struct.gs_const_string_s*, %struct.gs_int_rect_s*) #5

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #5

declare void @swrite_position_only(%struct.stream_s*) #5

declare i32 @psf_write_truetype_font(%struct.stream_s*, %struct.gs_font_type42_s*, i32, i64*, i32, %struct.gs_const_string_s*) #5

declare i64 @stell(%struct.stream_s*) #5

declare i32 @psf_write_cid0_font(%struct.stream_s*, %struct.gs_font_cid0_s*, i32, i8*, i32, %struct.gs_const_string_s*) #5

declare i32 @psf_write_cid2_font(%struct.stream_s*, %struct.gs_font_cid2_s*, i32, i8*, i32, %struct.gs_const_string_s*) #5

declare i32 @s_MD5C_get_digest(%struct.stream_s*, i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @pdf_end_fontfile(%struct.gx_device_pdf_s* %pdev, %struct.pdf_data_writer_s* %pdw) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdw.addr = alloca %struct.pdf_data_writer_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_data_writer_s* %pdw, %struct.pdf_data_writer_s** %pdw.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_data_writer_s*, %struct.pdf_data_writer_s** %pdw.addr, align 8, !tbaa !1
  %pdev1 = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %0, i32 0, i32 4
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev1, align 8, !tbaa !130
  %call = call i32 @pdf_close_aside(%struct.gx_device_pdf_s* %1) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @pdf_write_CharSet(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s* %pbfont) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %font = alloca %struct.gs_font_base_s*, align 8
  %index = alloca i32, align 4
  %glyph = alloca i64, align 8
  %gstr = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !106
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %copied = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %4, i32 0, i32 0
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %copied, align 8, !tbaa !94
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 6
  %10 = load i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !69
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %12 = bitcast %struct.gs_font_base_s* %11 to %struct.gs_font_s*
  %call1 = call i32 %10(%struct.gs_font_s* %12, i32* %index, i32 0, i64* %glyph) #8
  %13 = load i32, i32* %index, align 4, !tbaa !5
  %cmp = icmp ne i32 %13, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %16, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs2, i32 0, i32 9
  %17 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !131
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_base_s* %18 to %struct.gs_font_s*
  %20 = load i64, i64* %glyph, align 8, !tbaa !60
  %call3 = call i32 %17(%struct.gs_font_s* %19, i64 %20, %struct.gs_const_string_s* %gstr) #8
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %21, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8, !tbaa !98
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !99
  %call5 = call i32 @bytes_compare(i8* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 7) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 0
  %25 = load i8*, i8** %data6, align 8, !tbaa !98
  %size7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 1
  %26 = load i32, i32* %size7, align 4, !tbaa !99
  %call8 = call i32 @pdf_put_name(%struct.gx_device_pdf_s* %24, i8* %25, i32 %26) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #8
  %30 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_font_base_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret i32 0
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #5

declare i32 @pdf_put_name(%struct.gx_device_pdf_s*, i8*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @pdf_write_CIDSet(%struct.gx_device_pdf_s* %pdev, %struct.pdf_base_font_s* %pbfont, i64* %pcidset_id) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pbfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %pcidset_id.addr = alloca i64*, align 8
  %writer = alloca %struct.pdf_data_writer_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_base_font_s* %pbfont, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  store i64* %pcidset_id, i64** %pcidset_id.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompressFonts = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 94
  %4 = load i32, i32* %CompressFonts, align 4, !tbaa !113
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %or = or i32 1, %cond
  %call = call i32 @pdf_begin_data_stream(%struct.gx_device_pdf_s* %2, %struct.pdf_data_writer_s* %writer, i32 %or, i64 0) #8
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %binary = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 0
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %binary, i32 0, i32 2
  %7 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !116
  %8 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %CIDSet = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %8, i32 0, i32 5
  %9 = load i8*, i8** %CIDSet, align 8, !tbaa !88
  %10 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %pbfont.addr, align 8, !tbaa !1
  %CIDSetLength = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %10, i32 0, i32 6
  %11 = load i32, i32* %CIDSetLength, align 4, !tbaa !89
  %call1 = call i32 @stream_write(%struct.stream_s* %7, i8* %9, i32 %11) #8
  %call2 = call i32 @pdf_end_data(%struct.pdf_data_writer_s* %writer) #8
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %pres = getelementptr inbounds %struct.pdf_data_writer_s, %struct.pdf_data_writer_s* %writer, i32 0, i32 3
  %14 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !120
  %call6 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %14) #8
  %15 = load i64*, i64** %pcidset_id.addr, align 8, !tbaa !1
  store i64 %call6, i64* %15, align 8, !tbaa !60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.pdf_data_writer_s* %writer to i8*
  call void @llvm.lifetime.end(i64 80, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #5

declare i32 @pdf_end_data(%struct.pdf_data_writer_s*) #5

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #5

; Function Attrs: nounwind uwtable
define i32 @pdf_is_standard_font(%struct.pdf_base_font_s* %bfont) #0 {
entry:
  %bfont.addr = alloca %struct.pdf_base_font_s*, align 8
  store %struct.pdf_base_font_s* %bfont, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  %is_standard = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %0, i32 0, i32 3
  %1 = load i32, i32* %is_standard, align 4, !tbaa !96
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @pdf_set_FontFile_object(%struct.pdf_base_font_s* %bfont, %struct.cos_dict_s* %pcd) #0 {
entry:
  %bfont.addr = alloca %struct.pdf_base_font_s*, align 8
  %pcd.addr = alloca %struct.cos_dict_s*, align 8
  store %struct.pdf_base_font_s* %bfont, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %pcd, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %0 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd.addr, align 8, !tbaa !1
  %1 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %1, i32 0, i32 9
  store %struct.cos_dict_s* %0, %struct.cos_dict_s** %FontFile, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cos_dict_s* @pdf_get_FontFile_object(%struct.pdf_base_font_s* %bfont) #0 {
entry:
  %bfont.addr = alloca %struct.pdf_base_font_s*, align 8
  store %struct.pdf_base_font_s* %bfont, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  %0 = load %struct.pdf_base_font_s*, %struct.pdf_base_font_s** %bfont.addr, align 8, !tbaa !1
  %FontFile = getelementptr inbounds %struct.pdf_base_font_s, %struct.pdf_base_font_s* %0, i32 0, i32 9
  %1 = load %struct.cos_dict_s*, %struct.cos_dict_s** %FontFile, align 8, !tbaa !108
  ret %struct.cos_dict_s* %1
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #5

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #5

declare i32 @gs_purge_font_from_char_caches_completely(%struct.gs_font_s*) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare i32 @pdf_close_aside(%struct.gx_device_pdf_s*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"pdf_base14_font_info_s", !2, i64 0, !2, i64 8}
!9 = !{!8, !2, i64 8}
!10 = !{!3, !3, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!13 = !{!14, !2, i64 1728}
!14 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !15, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !20, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !16, i64 928, !16, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !16, i64 968, !16, i64 976, !21, i64 984, !6, i64 1052, !6, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !26, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !39, i64 7512, !39, i64 8144, !16, i64 8776, !16, i64 8784, !3, i64 8792, !3, i64 8796, !32, i64 8800, !6, i64 8816, !2, i64 8824, !16, i64 8832, !16, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !33, i64 8872, !44, i64 8880, !6, i64 9360, !33, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !49, i64 9424, !49, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !16, i64 9472, !6, i64 9480, !6, i64 9484, !48, i64 9488, !48, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !16, i64 9576, !16, i64 9584, !16, i64 9592, !50, i64 9600, !48, i64 9616, !48, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !48, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !51, i64 9784, !52, i64 9816, !52, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !16, i64 9920, !3, i64 9928, !6, i64 9960, !16, i64 9968, !16, i64 9976, !3, i64 9984, !3, i64 9988, !53, i64 9992, !53, i64 14120, !53, i64 18248, !53, i64 22376, !16, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !16, i64 26536, !6, i64 26544, !6, i64 26548, !16, i64 26552, !3, i64 26560, !16, i64 26568, !16, i64 26576, !3, i64 26584, !2, i64 26592, !54, i64 26600, !2, i64 26648, !6, i64 26656, !16, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !16, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !32, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !55, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !29, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !31, i64 30488, !6, i64 30524, !51, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !16, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !29, i64 30612, !33, i64 30640, !2, i64 30648, !45, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!15 = !{!"rc_header_s", !16, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!"long", !3, i64 0}
!17 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !19, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !16, i64 704, !6, i64 712}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!20 = !{!"gx_device_cached_colors_s", !16, i64 0, !16, i64 8}
!21 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!22 = !{!"gdev_space_params_s", !16, i64 0, !16, i64 8, !23, i64 16, !6, i64 32, !3, i64 36}
!23 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !16, i64 8}
!24 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!26 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !27, i64 24, !6, i64 128, !31, i64 132, !6, i64 168, !32, i64 176, !32, i64 192, !6, i64 208, !6, i64 212, !18, i64 216, !3, i64 220, !34, i64 224, !34, i64 228, !35, i64 232, !16, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !28, i64 296, !36, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !28, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !37, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !38, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !38, i64 1336}
!27 = !{!"gx_line_params_s", !28, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !6, i64 36, !29, i64 40, !30, i64 64}
!28 = !{!"float", !3, i64 0}
!29 = !{!"gs_matrix_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!30 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !28, i64 12, !6, i64 16, !28, i64 20, !6, i64 24, !6, i64 28, !28, i64 32}
!31 = !{!"gs_matrix_fixed_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!32 = !{!"gs_point_s", !33, i64 0, !33, i64 8}
!33 = !{!"double", !3, i64 0}
!34 = !{!"gs_transparency_source_s", !28, i64 0}
!35 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!36 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!37 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!38 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !3, i64 24}
!39 = !{!"gx_hl_saved_color_s", !16, i64 0, !16, i64 8, !6, i64 16, !40, i64 24, !42, i64 288}
!40 = !{!"gs_client_color_s", !2, i64 0, !41, i64 8}
!41 = !{!"gs_paint_color_s", !3, i64 0}
!42 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !43, i64 336}
!43 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!44 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !45, i64 64, !45, i64 80, !45, i64 96, !45, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !46, i64 152, !6, i64 232, !6, i64 236, !46, i64 240, !46, i64 320, !47, i64 400, !47, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !48, i64 448, !47, i64 464}
!45 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!46 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !28, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!47 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!"gs_rect_s", !32, i64 0, !32, i64 16}
!52 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !51, i64 8}
!53 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!54 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!55 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !28, i64 40, !28, i64 44, !3, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !28, i64 84, !28, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !39, i64 120, !39, i64 752, !27, i64 1384, !2, i64 1488, !6, i64 1496, !16, i64 1504}
!56 = !{!57, !2, i64 152}
!57 = !{!"gs_memory_s", !2, i64 0, !58, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!58 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!59 = !{!12, !2, i64 0}
!60 = !{!16, !16, i64 0}
!61 = !{!18, !18, i64 0}
!62 = !{!57, !2, i64 72}
!63 = !{!64, !3, i64 128}
!64 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !65, i64 40, !16, i64 56, !2, i64 64, !2, i64 72, !29, i64 80, !29, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !28, i64 156, !6, i64 160, !66, i64 168, !67, i64 272, !67, i64 324, !51, i64 376, !68, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!65 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!66 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!67 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!68 = !{!"gs_uid_s", !16, i64 0, !2, i64 8}
!69 = !{!64, !2, i64 216}
!70 = !{!71, !6, i64 24}
!71 = !{!"pdf_base_font_s", !2, i64 0, !2, i64 8, !3, i64 16, !6, i64 20, !6, i64 24, !2, i64 32, !6, i64 40, !12, i64 48, !6, i64 64, !2, i64 72}
!72 = !{!71, !3, i64 16}
!73 = !{!64, !6, i64 372}
!74 = !{!14, !2, i64 24}
!75 = !{!76, !6, i64 596}
!76 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !65, i64 40, !16, i64 56, !2, i64 64, !2, i64 72, !29, i64 80, !29, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !28, i64 156, !6, i64 160, !66, i64 168, !67, i64 272, !67, i64 324, !51, i64 376, !68, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !77, i64 448}
!77 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !16, i64 48, !16, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !16, i64 120, !16, i64 128, !16, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !16, i64 200}
!78 = !{!79, !6, i64 488}
!79 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !65, i64 40, !16, i64 56, !2, i64 64, !2, i64 72, !29, i64 80, !29, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !28, i64 156, !6, i64 160, !66, i64 168, !67, i64 272, !67, i64 324, !51, i64 376, !68, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !80, i64 448}
!80 = !{!"gs_font_cid0_data_s", !81, i64 0, !16, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!81 = !{!"gs_font_cid_data_s", !82, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!82 = !{!"gs_cid_system_info_s", !45, i64 0, !45, i64 16, !6, i64 32}
!83 = !{!84, !6, i64 696}
!84 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !65, i64 40, !16, i64 56, !2, i64 64, !2, i64 72, !29, i64 80, !29, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !28, i64 156, !6, i64 160, !66, i64 168, !67, i64 272, !67, i64 324, !51, i64 376, !68, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !77, i64 448, !85, i64 656, !2, i64 744}
!85 = !{!"gs_font_cid2_data_s", !81, i64 0, !6, i64 56, !2, i64 64, !86, i64 72}
!86 = !{!"o_", !2, i64 0, !2, i64 8}
!87 = !{!57, !2, i64 64}
!88 = !{!71, !2, i64 32}
!89 = !{!71, !6, i64 40}
!90 = !{!91, !28, i64 100}
!91 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !65, i64 40, !16, i64 56, !2, i64 64, !2, i64 72, !29, i64 80, !29, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !28, i64 156, !6, i64 160, !66, i64 168, !67, i64 272, !67, i64 324}
!92 = !{!91, !28, i64 96}
!93 = !{!91, !6, i64 372}
!94 = !{!71, !2, i64 0}
!95 = !{!71, !2, i64 8}
!96 = !{!71, !6, i64 20}
!97 = !{!67, !6, i64 48}
!98 = !{!45, !2, i64 0}
!99 = !{!45, !6, i64 8}
!100 = !{!57, !2, i64 136}
!101 = !{!71, !2, i64 48}
!102 = !{!71, !6, i64 56}
!103 = !{!57, !2, i64 24}
!104 = !{!14, !6, i64 9320}
!105 = !{!14, !6, i64 9324}
!106 = !{!14, !2, i64 5848}
!107 = !{!14, !6, i64 9536}
!108 = !{!71, !2, i64 72}
!109 = !{!110, !16, i64 8}
!110 = !{!"cos_dict_s", !2, i64 0, !16, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !16, i64 56, !2, i64 64, !111, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!111 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!112 = !{!71, !6, i64 64}
!113 = !{!14, !6, i64 9480}
!114 = !{!14, !6, i64 8856}
!115 = !{!14, !6, i64 9564}
!116 = !{!117, !2, i64 16}
!117 = !{!"pdf_data_writer_s", !118, i64 0, !16, i64 32, !16, i64 40, !2, i64 48, !2, i64 56, !16, i64 64, !6, i64 72}
!118 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!119 = !{!14, !33, i64 9368}
!120 = !{!117, !2, i64 48}
!121 = !{!122, !2, i64 64}
!122 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !16, i64 56, !2, i64 64}
!123 = !{!124, !16, i64 8}
!124 = !{!"cos_object_s", !2, i64 0, !16, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !16, i64 56, !2, i64 64, !111, i64 72, !6, i64 160, !3, i64 164, !6, i64 180, !3, i64 184}
!125 = !{!14, !6, i64 9540}
!126 = !{!76, !6, i64 592}
!127 = !{!128, !2, i64 208}
!128 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !18, i64 152, !3, i64 154, !3, i64 155, !12, i64 160, !16, i64 176, !129, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !18, i64 264, !18, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !45, i64 312, !6, i64 328, !16, i64 336, !16, i64 344}
!129 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!130 = !{!117, !2, i64 56}
!131 = !{!64, !2, i64 240}
