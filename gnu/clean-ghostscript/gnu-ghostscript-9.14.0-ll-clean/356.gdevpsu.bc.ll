; ModuleID = './gdevpsu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_ = type { i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
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
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
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
%struct.gx_image_type_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%struct.gs_point_s = type { double, double }
%union.s_ = type { i64 }
%struct.gs_font_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_device_pswrite_common_s = type { float, i32, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@psw_eps_header = internal constant [2 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* null], align 16
@psw_ps_header = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"%%BoundingBox: (atend)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%%HiResBoundingBox: (atend)\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"%...............................................................\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%%%%Creator: %s %ld (%s)\0A\00", align 1
@gs_product = external constant i8*, align 8
@gs_revision = external constant i64, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"%%%%CreationDate: %d/%02d/%02d %02d:%02d:%02d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%%DocumentData: Clean7Bit\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%%%%LanguageLevel: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%%Extensions: CMYK\0A\00", align 1
@psw_begin_prolog = internal constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.44, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"%% %s\0A\00", align 1
@gs_copyright = external constant i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"%%BeginResource: procset \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c" %5.3lf %d\0A/\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c" 80 dict dup begin\0A\00", align 1
@psw_ps_procset = internal constant [8 x i8*] [i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* null], align 16
@psw_end_prolog = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [28 x i8] c"%%%%Trailer\0A%%%%Pages: %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%%EOF\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%%%%Page: %ld %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%%%%PageBoundingBox: 0 0 %ld %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%%BeginPageSetup\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" begin\0A\00", align 1
@psw_write_page_header.sizes = internal constant [8 x %struct.ps_] [%struct.ps_ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 792, i32 1224 }, %struct.ps_ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 842, i32 1191 }, %struct.ps_ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 595, i32 842 }, %struct.ps_ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 501, i32 709 }, %struct.ps_ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 1224, i32 792 }, %struct.ps_ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 612, i32 1008 }, %struct.ps_ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 612, i32 792 }, %struct.ps_ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"/11x17\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"/a3\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"/a4\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"/b5\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"/ledger\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"/legal\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"/letter\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"%s setpagesize\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"/pagesave save store %d dict begin\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%g %g scale\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"%%EndPageSetup\0Agsave mark\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"cleartomark end end pagesave restore\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"userdict /#copies %d put\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" %s\0A%%%%PageTrailer\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"showpage\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"copypage\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"%!PS-Adobe-3.0 EPSF-3.0\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"%!PS-Adobe-3.0\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"%%Pages: (atend)\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"%%%%HiResBoundingBox: %f %f %f %f\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"%%EndComments\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"%%BeginProlog\00", align 1
@.str.44 = private unnamed_addr constant [73 x i8] c"% This copyright applies to everything between here and the %%EndProlog:\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"/PageSize 2 array def/setpagesize{ PageSize aload pop 3 index eq exch\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"4 index eq and{ pop pop pop}{ PageSize dup  1\00", align 1
@.str.47 = private unnamed_addr constant [85 x i8] c"5 -1 roll put 0 4 -1 roll put dup null eq {false} {dup where} ifelse{ exch get exec}\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"{ pop/setpagedevice where\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"{ pop 1 dict dup /PageSize PageSize put setpagedevice}\00", align 1
@.str.50 = private unnamed_addr constant [72 x i8] c"{ /setpage where{ pop PageSize aload pop pageparams 3 {exch pop} repeat\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"setpage}if}ifelse}ifelse}ifelse} bind def\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"end def\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"%%EndResource\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"/pagesave null def\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"%%EndProlog\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"GS_%s\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"_%d_%d_%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psw_print_lines(%struct._IO_FILE* %f, i8** %lines) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %lines.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i8** %lines, i8*** %lines.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %lines.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %lines.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %7) #6
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @psw_begin_file_header(%struct._IO_FILE* %f, %struct.gx_device_s* %dev, %struct.gs_rect_s* %pbbox, %struct.gx_device_pswrite_common_s* %pdpc, i32 %ascii) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %pdpc.addr = alloca %struct.gx_device_pswrite_common_s*, align 8
  %ascii.addr = alloca i32, align 4
  %t = alloca i64, align 8
  %tms = alloca %struct.tm, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store %struct.gx_device_pswrite_common_s* %pdpc, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  store i32 %ascii, i32* %ascii.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProduceEPS = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %1, i32 0, i32 1
  %2 = load i32, i32* %ProduceEPS, align 4, !tbaa !7
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @psw_eps_header, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @psw_ps_header, i32 0, i32 0)
  %call = call i32 @psw_print_lines(%struct._IO_FILE* %0, i8** %cond) #6
  %3 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_rect_s* %3, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %5 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  call void @psw_print_bbox(%struct._IO_FILE* %4, %struct.gs_rect_s* %5) #6
  %6 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %6, i32 0, i32 3
  store i64 0, i64* %bbox_position, align 8, !tbaa !11
  br label %if.end.13

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i32 @is_seekable(%struct._IO_FILE* %7) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.8, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position5 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %8, i32 0, i32 3
  store i64 -1, i64* %bbox_position5, align 8, !tbaa !11
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %9) #6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %10) #6
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call9 = call i64 @gp_ftell_64(%struct._IO_FILE* %11) #6
  %12 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position10 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %12, i32 0, i32 3
  store i64 %call9, i64* %bbox_position10, align 8, !tbaa !11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %13) #6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %14) #6
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %16 = load i8*, i8** @gs_product, align 8, !tbaa !1
  %17 = load i64, i64* @gs_revision, align 8, !tbaa !12
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 2
  %19 = load i8*, i8** %dname, align 8, !tbaa !13
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %16, i64 %17, i8* %19) #6
  %20 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.tm* %tms to i8*
  call void @llvm.lifetime.start(i64 56, i8* %21) #1
  %call15 = call i64 @time(i64* %t) #7
  %call16 = call %struct.tm* @localtime(i64* %t) #7
  %22 = bitcast %struct.tm* %tms to i8*
  %23 = bitcast %struct.tm* %call16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 56, i32 8, i1 false), !tbaa.struct !25
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 5
  %25 = load i32, i32* %tm_year, align 4, !tbaa !26
  %add = add nsw i32 %25, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 4
  %26 = load i32, i32* %tm_mon, align 4, !tbaa !28
  %add17 = add nsw i32 %26, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 3
  %27 = load i32, i32* %tm_mday, align 4, !tbaa !29
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 2
  %28 = load i32, i32* %tm_hour, align 4, !tbaa !30
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 1
  %29 = load i32, i32* %tm_min, align 4, !tbaa !31
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tms, i32 0, i32 0
  %30 = load i32, i32* %tm_sec, align 4, !tbaa !32
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add17, i32 %27, i32 %28, i32 %29, i32 %30) #6
  %31 = bitcast %struct.tm* %tms to i8*
  call void @llvm.lifetime.end(i64 56, i8* %31) #1
  %32 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %ascii.addr, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.13
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %34) #6
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.13
  %35 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %35, i32 0, i32 0
  %36 = load float, float* %LanguageLevel, align 4, !tbaa !33
  %conv = fpext float %36 to double
  %cmp = fcmp oge double %conv, 2.000000e+00
  br i1 %cmp, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.end.22
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %LanguageLevel25 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %38, i32 0, i32 0
  %39 = load float, float* %LanguageLevel25, align 4, !tbaa !33
  %conv26 = fptosi float %39 to i32
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %conv26) #6
  br label %if.end.36

if.else.28:                                       ; preds = %if.end.22
  %40 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %LanguageLevel29 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %40, i32 0, i32 0
  %41 = load float, float* %LanguageLevel29, align 4, !tbaa !33
  %conv30 = fpext float %41 to double
  %cmp31 = fcmp oeq double %conv30, 1.500000e+00
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.28
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %42) #6
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call37 = call i32 @psw_print_lines(%struct._IO_FILE* %43, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @psw_begin_prolog, i32 0, i32 0)) #6
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %45 = load i8*, i8** @gs_copyright, align 8, !tbaa !1
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %45) #6
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %46) #6
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call40 = call i32 @fflush(%struct._IO_FILE* %47) #6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  call void @psw_print_procset_name(%struct._IO_FILE* %48, %struct.gx_device_s* %49, %struct.gx_device_pswrite_common_s* %50) #6
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %52 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProcSet_version = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %52, i32 0, i32 2
  %53 = load i32, i32* %ProcSet_version, align 4, !tbaa !34
  %conv41 = sitofp i32 %53 to double
  %div = fdiv double %conv41, 1.000000e+03
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), double %div, i32 0) #6
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call43 = call i32 @fflush(%struct._IO_FILE* %54) #6
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  call void @psw_print_procset_name(%struct._IO_FILE* %55, %struct.gx_device_s* %56, %struct.gx_device_pswrite_common_s* %57) #6
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call44 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %58) #6
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call45 = call i32 @psw_print_lines(%struct._IO_FILE* %59, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @psw_ps_procset, i32 0, i32 0)) #6
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call46 = call i32 @fflush(%struct._IO_FILE* %60) #6
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call47 = call i32 @ferror(%struct._IO_FILE* %61) #7
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.36
  store i32 -12, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.36
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.49
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal void @psw_print_bbox(%struct._IO_FILE* %f, %struct.gs_rect_s* %pbbox) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %1 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !35
  %call = call double @floor(double %2) #8
  %conv = fptosi double %call to i32
  %3 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %4 = load double, double* %y, align 8, !tbaa !39
  %call2 = call double @floor(double %4) #8
  %conv3 = fptosi double %call2 to i32
  %5 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %5, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %6 = load double, double* %x4, align 8, !tbaa !40
  %call5 = call double @ceil(double %6) #8
  %conv6 = fptosi double %call5 to i32
  %7 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q7 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q7, i32 0, i32 1
  %8 = load double, double* %y8, align 8, !tbaa !41
  %call9 = call double @ceil(double %8) #8
  %conv10 = fptosi double %call9 to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv10) #6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %10 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %10, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 0
  %11 = load double, double* %x13, align 8, !tbaa !35
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 0
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p14, i32 0, i32 1
  %13 = load double, double* %y15, align 8, !tbaa !39
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %14, i32 0, i32 1
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q16, i32 0, i32 0
  %15 = load double, double* %x17, align 8, !tbaa !40
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q18 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q18, i32 0, i32 1
  %17 = load double, double* %y19, align 8, !tbaa !41
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0), double %11, double %13, double %15, double %17) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_seekable(%struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stat* %buf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @fileno(%struct._IO_FILE* %1) #7
  %call1 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %call, %struct.stat* %buf) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %2 = load i32, i32* %st_mode, align 4, !tbaa !42
  %and = and i32 %2, 61440
  %cmp = icmp eq i32 %and, 32768
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast %struct.stat* %buf to i8*
  call void @llvm.lifetime.end(i64 144, i8* %3) #1
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i64 @gp_ftell_64(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @psw_print_procset_name(%struct._IO_FILE* %f, %struct.gx_device_s* %dev, %struct.gx_device_pswrite_common_s* %pdpc) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdpc.addr = alloca %struct.gx_device_pswrite_common_s*, align 8
  %buf = alloca [100 x i8], align 16
  %s = alloca %struct.stream_s, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_pswrite_common_s* %pdpc, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %0 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %0) #1
  %1 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %3) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @swrite_file(%struct.stream_s* %s, %struct._IO_FILE* %4, i8* %arraydecay, i32 100) #6
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  call void @psw_put_procset_name(%struct.stream_s* %s, %struct.gx_device_s* %5, %struct.gx_device_pswrite_common_s* %6) #6
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %7 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !46
  %call = call i32 %7(%struct.stream_s* %s) #6
  %8 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %8) #1
  %9 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %9) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @psw_end_file_header(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 @psw_print_lines(%struct._IO_FILE* %0, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @psw_end_prolog, i32 0, i32 0)) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psw_end_file(%struct._IO_FILE* %f, %struct.gx_device_s* %dev, %struct.gx_device_pswrite_common_s* %pdpc, %struct.gs_rect_s* %pbbox, i32 %page_count) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdpc.addr = alloca %struct.gx_device_pswrite_common_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %page_count.addr = alloca i32, align 4
  %save_pos = alloca i64, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_pswrite_common_s* %pdpc, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 %page_count, i32* %page_count.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %2 = load i32, i32* %page_count.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i64 %conv) #6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @ferror(%struct._IO_FILE* %3) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 26
  %5 = load i64, i64* %PageCount, align 8, !tbaa !51
  %cmp4 = icmp sgt i64 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.end.3
  %6 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %6, i32 0, i32 3
  %7 = load i64, i64* %bbox_position, align 8, !tbaa !11
  %cmp6 = icmp ne i64 %7, 0
  br i1 %cmp6, label %if.then.8, label %if.end.64

if.then.8:                                        ; preds = %land.lhs.true
  %8 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position9 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %8, i32 0, i32 3
  %9 = load i64, i64* %bbox_position9, align 8, !tbaa !11
  %cmp10 = icmp sge i64 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.else.62

if.then.12:                                       ; preds = %if.then.8
  %10 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call13 = call i64 @gp_ftell_64(%struct._IO_FILE* %11) #6
  store i64 %call13, i64* %save_pos, align 8, !tbaa !12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %bbox_position14 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %13, i32 0, i32 3
  %14 = load i64, i64* %bbox_position14, align 8, !tbaa !11
  %call15 = call i32 @gp_fseek_64(%struct._IO_FILE* %12, i64 %14, i32 0) #6
  %15 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %15, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %16 = load double, double* %x, align 8, !tbaa !35
  %cmp16 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %if.then.12
  %17 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %17, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  %18 = load double, double* %y, align 8, !tbaa !39
  %cmp20 = fcmp oeq double %18, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %19 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %19, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %20 = load double, double* %x23, align 8, !tbaa !40
  %cmp24 = fcmp oeq double %20, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.26, label %if.else

land.lhs.true.26:                                 ; preds = %land.lhs.true.22
  %21 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %q27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %21, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q27, i32 0, i32 1
  %22 = load double, double* %y28, align 8, !tbaa !41
  %cmp29 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true.26
  %23 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %23) #1
  %24 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width32, align 4, !tbaa !52
  %conv33 = sitofp i32 %26 to double
  %mul = fmul double %conv33, 7.200000e+01
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !53
  %conv34 = fpext float %28 to double
  %div = fdiv double %mul, %conv34
  %add = fadd double %div, 5.000000e-01
  %conv35 = fptosi double %add to i32
  store i32 %conv35, i32* %width, align 4, !tbaa !5
  %29 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height36, align 4, !tbaa !54
  %conv37 = sitofp i32 %31 to double
  %mul38 = fmul double %conv37, 7.200000e+01
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 22
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution39, i32 0, i64 1
  %33 = load float, float* %arrayidx40, align 4, !tbaa !53
  %conv41 = fpext float %33 to double
  %div42 = fdiv double %mul38, %conv41
  %add43 = fadd double %div42, 5.000000e-01
  %conv44 = fptosi double %add43 to i32
  store i32 %conv44, i32* %height, align 4, !tbaa !5
  %p45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p45, i32 0, i32 0
  store double 0.000000e+00, double* %x46, align 8, !tbaa !35
  %p47 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p47, i32 0, i32 1
  store double 0.000000e+00, double* %y48, align 8, !tbaa !39
  %34 = load i32, i32* %width, align 4, !tbaa !5
  %conv49 = sitofp i32 %34 to double
  %q50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q50, i32 0, i32 0
  store double %conv49, double* %x51, align 8, !tbaa !40
  %35 = load i32, i32* %height, align 4, !tbaa !5
  %conv52 = sitofp i32 %35 to double
  %q53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q53, i32 0, i32 1
  store double %conv52, double* %y54, align 8, !tbaa !41
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  call void @psw_print_bbox(%struct._IO_FILE* %36, %struct.gs_rect_s* %bbox) #6
  %37 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %39) #1
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true.18, %if.then.12
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %41 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  call void @psw_print_bbox(%struct._IO_FILE* %40, %struct.gs_rect_s* %41) #6
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.31
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call56 = call i32 @fputc(i32 37, %struct._IO_FILE* %42) #6
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call57 = call i32 @ferror(%struct._IO_FILE* %43) #7
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.55
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %45 = load i64, i64* %save_pos, align 8, !tbaa !12
  %call61 = call i32 @gp_fseek_64(%struct._IO_FILE* %44, i64 %45, i32 0) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.59
  %46 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %48 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  call void @psw_print_bbox(%struct._IO_FILE* %47, %struct.gs_rect_s* %48) #6
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %cleanup.cont
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true, %if.end.3
  %49 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProduceEPS = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %49, i32 0, i32 1
  %50 = load i32, i32* %ProduceEPS, align 4, !tbaa !7
  %tobool65 = icmp ne i32 %50, 0
  br i1 %tobool65, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %if.end.64
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call67 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %51) #6
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call69 = call i32 @ferror(%struct._IO_FILE* %52) #7
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  store i32 -12, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.68
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.71, %cleanup, %if.then.2, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gp_fseek_64(%struct._IO_FILE*, i64, i32) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @psw_write_page_header(%struct.stream_s* %s, %struct.gx_device_s* %dev, %struct.gx_device_pswrite_common_s* %pdpc, i32 %do_scale, i64 %page_ord, i32 %dictsize) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdpc.addr = alloca %struct.gx_device_pswrite_common_s*, align 8
  %do_scale.addr = alloca i32, align 4
  %page_ord.addr = alloca i64, align 8
  %dictsize.addr = alloca i32, align 4
  %page = alloca i64, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %p = alloca %struct.ps_*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_pswrite_common_s* %pdpc, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  store i32 %do_scale, i32* %do_scale.addr, align 4, !tbaa !5
  store i64 %page_ord, i64* %page_ord.addr, align 8, !tbaa !12
  store i32 %dictsize, i32* %dictsize.addr, align 4, !tbaa !5
  %0 = bitcast i64* %page to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 26
  %2 = load i64, i64* %PageCount, align 8, !tbaa !51
  %add = add nsw i64 %2, 1
  store i64 %add, i64* %page, align 8, !tbaa !12
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width1, align 4, !tbaa !52
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 7.200000e+01
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !53
  %conv2 = fpext float %7 to double
  %div = fdiv double %mul, %conv2
  %add3 = fadd double %div, 5.000000e-01
  %conv4 = fptosi double %add3 to i32
  store i32 %conv4, i32* %width, align 4, !tbaa !5
  %8 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height5, align 4, !tbaa !54
  %conv6 = sitofp i32 %10 to double
  %mul7 = fmul double %conv6, 7.200000e+01
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 22
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution8, i32 0, i64 1
  %12 = load float, float* %arrayidx9, align 4, !tbaa !53
  %conv10 = fpext float %12 to double
  %div11 = fdiv double %mul7, %conv10
  %add12 = fadd double %div11, 5.000000e-01
  %conv13 = fptosi double %add12 to i32
  store i32 %conv13, i32* %height, align 4, !tbaa !5
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = load i64, i64* %page, align 8, !tbaa !12
  %15 = load i64, i64* %page_ord.addr, align 8, !tbaa !12
  %call = call i8* @pprintld2(%struct.stream_s* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i64 %14, i64 %15) #6
  %16 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProduceEPS = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %16, i32 0, i32 1
  %17 = load i32, i32* %ProduceEPS, align 4, !tbaa !7
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i32, i32* %width, align 4, !tbaa !5
  %conv14 = sext i32 %19 to i64
  %20 = load i32, i32* %height, align 4, !tbaa !5
  %conv15 = sext i32 %20 to i64
  %call16 = call i8* @pprintld2(%struct.stream_s* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i64 %conv14, i64 %conv15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call17 = call i32 @stream_puts(%struct.stream_s* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #6
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  call void @psw_put_procset_name(%struct.stream_s* %22, %struct.gx_device_s* %23, %struct.gx_device_pswrite_common_s* %24) #6
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call18 = call i32 @stream_puts(%struct.stream_s* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #6
  %26 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProduceEPS19 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %26, i32 0, i32 1
  %27 = load i32, i32* %ProduceEPS19, align 4, !tbaa !7
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.end.50, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %28 = bitcast %struct.ps_** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store %struct.ps_* getelementptr inbounds ([8 x %struct.ps_], [8 x %struct.ps_]* @psw_write_page_header.sizes, i32 0, i32 0), %struct.ps_** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.then.21
  %29 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %size_name = getelementptr inbounds %struct.ps_, %struct.ps_* %29, i32 0, i32 0
  %30 = load i8*, i8** %size_name, align 8, !tbaa !55
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx22, align 1, !tbaa !57
  %conv23 = sext i8 %31 to i32
  %cmp = icmp eq i32 %conv23, 47
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct.ps_, %struct.ps_* %32, i32 0, i32 1
  %33 = load i32, i32* %width25, align 4, !tbaa !58
  %sub = sub nsw i32 %33, 5
  %34 = load i32, i32* %width, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %sub, %34
  br i1 %cmp26, label %land.lhs.true, label %if.else.44

land.lhs.true:                                    ; preds = %while.body
  %35 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %width28 = getelementptr inbounds %struct.ps_, %struct.ps_* %35, i32 0, i32 1
  %36 = load i32, i32* %width28, align 4, !tbaa !58
  %add29 = add nsw i32 %36, 5
  %37 = load i32, i32* %width, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %add29, %37
  br i1 %cmp30, label %if.then.32, label %if.else.44

if.then.32:                                       ; preds = %land.lhs.true
  %38 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %height33 = getelementptr inbounds %struct.ps_, %struct.ps_* %38, i32 0, i32 2
  %39 = load i32, i32* %height33, align 4, !tbaa !59
  %sub34 = sub nsw i32 %39, 5
  %40 = load i32, i32* %height, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %sub34, %40
  br i1 %cmp35, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %if.then.32
  %41 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %height38 = getelementptr inbounds %struct.ps_, %struct.ps_* %41, i32 0, i32 2
  %42 = load i32, i32* %height38, align 4, !tbaa !59
  %add39 = add nsw i32 %42, 5
  %43 = load i32, i32* %height, align 4, !tbaa !5
  %cmp40 = icmp sge i32 %add39, %43
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %land.lhs.true.37
  br label %while.end

if.else:                                          ; preds = %land.lhs.true.37, %if.then.32
  %44 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ps_, %struct.ps_* %44, i32 1
  store %struct.ps_* %incdec.ptr, %struct.ps_** %p, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true, %while.body
  %45 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds %struct.ps_, %struct.ps_* %45, i32 1
  store %struct.ps_* %incdec.ptr45, %struct.ps_** %p, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.end.43
  br label %while.cond

while.end:                                        ; preds = %if.then.42, %while.cond
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %47 = load i32, i32* %width, align 4, !tbaa !5
  %48 = load i32, i32* %height, align 4, !tbaa !5
  %call47 = call i8* @pprintd2(%struct.stream_s* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %47, i32 %48) #6
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %50 = load %struct.ps_*, %struct.ps_** %p, align 8, !tbaa !1
  %size_name48 = getelementptr inbounds %struct.ps_, %struct.ps_* %50, i32 0, i32 0
  %51 = load i8*, i8** %size_name48, align 8, !tbaa !55
  %call49 = call i8* @pprints1(%struct.stream_s* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* %51) #6
  %52 = bitcast %struct.ps_** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %if.end.50

if.end.50:                                        ; preds = %while.end, %if.end
  %53 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %54 = load i32, i32* %dictsize.addr, align 4, !tbaa !5
  %call51 = call i8* @pprintd1(%struct.stream_s* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i32 %54) #6
  %55 = load i32, i32* %do_scale.addr, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.end.50
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 22
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution54, i32 0, i64 0
  %58 = load float, float* %arrayidx55, align 4, !tbaa !53
  %conv56 = fpext float %58 to double
  %div57 = fdiv double 7.200000e+01, %conv56
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution58 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 22
  %arrayidx59 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution58, i32 0, i64 1
  %60 = load float, float* %arrayidx59, align 4, !tbaa !53
  %conv60 = fpext float %60 to double
  %div61 = fdiv double 7.200000e+01, %conv60
  %call62 = call i8* @pprintg2(%struct.stream_s* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), double %div57, double %div61) #6
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.53, %if.end.50
  %61 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call64 = call i32 @stream_puts(%struct.stream_s* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0)) #6
  %62 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %62, i32 0, i32 9
  %63 = load i16, i16* %end_status, align 2, !tbaa !60
  %conv65 = sext i16 %63 to i32
  %cmp66 = icmp eq i32 %conv65, -2
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.63
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.end.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.then.68
  %64 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64* %page to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i8* @pprintld2(%struct.stream_s*, i8*, i64, i64) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @psw_put_procset_name(%struct.stream_s* %s, %struct.gx_device_s* %dev, %struct.gx_device_pswrite_common_s* %pdpc) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdpc.addr = alloca %struct.gx_device_pswrite_common_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_pswrite_common_s* %pdpc, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %dname, align 8, !tbaa !13
  %call = call i8* @pprints1(%struct.stream_s* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %2) #6
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %4, i32 0, i32 0
  %5 = load float, float* %LanguageLevel, align 4, !tbaa !33
  %conv = fptosi float %5 to i32
  %6 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %LanguageLevel1 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %6, i32 0, i32 0
  %7 = load float, float* %LanguageLevel1, align 4, !tbaa !33
  %mul = fmul float %7, 1.000000e+01
  %conv2 = fpext float %mul to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptosi double %add to i32
  %rem = srem i32 %conv3, 10
  %8 = load %struct.gx_device_pswrite_common_s*, %struct.gx_device_pswrite_common_s** %pdpc.addr, align 8, !tbaa !1
  %ProcSet_version = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %8, i32 0, i32 2
  %9 = load i32, i32* %ProcSet_version, align 4, !tbaa !34
  %call4 = call i8* @pprintd3(%struct.stream_s* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 %conv, i32 %rem, i32 %9) #6
  ret void
}

declare i8* @pprintd2(%struct.stream_s*, i8*, i32, i32) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #2

; Function Attrs: nounwind uwtable
define i32 @psw_write_page_trailer(%struct._IO_FILE* %f, i32 %num_copies, i32 %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0)) #6
  %1 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %3 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i32 %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %5 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8* %cond) #6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call3 = call i32 @fflush(%struct._IO_FILE* %6) #6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call4 = call i32 @ferror(%struct._IO_FILE* %7) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #5 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !5
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !5
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #3

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @swrite_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #2

declare i8* @pprintd3(%struct.stream_s*, i8*, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 4}
!8 = !{!"gx_device_pswrite_common_s", !9, i64 0, !6, i64 4, !6, i64 8, !10, i64 16}
!9 = !{!"float", !3, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!8, !10, i64 16}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !2, i64 16}
!14 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !15, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !16, i64 96, !19, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !20, i64 984, !6, i64 1052, !6, i64 1056, !21, i64 1064, !2, i64 1104, !3, i64 1112, !23, i64 1120, !24, i64 1144}
!15 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !17, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !18, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!17 = !{!"short", !3, i64 0}
!18 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!19 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!20 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!21 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !22, i64 16, !6, i64 32, !3, i64 36}
!22 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!23 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!24 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!25 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 40, i64 8, !12, i64 48, i64 8, !1}
!26 = !{!27, !6, i64 20}
!27 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !2, i64 48}
!28 = !{!27, !6, i64 16}
!29 = !{!27, !6, i64 12}
!30 = !{!27, !6, i64 8}
!31 = !{!27, !6, i64 4}
!32 = !{!27, !6, i64 0}
!33 = !{!8, !9, i64 0}
!34 = !{!8, !6, i64 8}
!35 = !{!36, !38, i64 0}
!36 = !{!"gs_rect_s", !37, i64 0, !37, i64 16}
!37 = !{!"gs_point_s", !38, i64 0, !38, i64 8}
!38 = !{!"double", !3, i64 0}
!39 = !{!36, !38, i64 8}
!40 = !{!36, !38, i64 16}
!41 = !{!36, !38, i64 24}
!42 = !{!43, !6, i64 24}
!43 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !44, i64 72, !44, i64 88, !44, i64 104, !3, i64 120}
!44 = !{!"timespec", !10, i64 0, !10, i64 8}
!45 = !{!14, !2, i64 24}
!46 = !{!47, !2, i64 208}
!47 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !17, i64 152, !3, i64 154, !3, i64 155, !48, i64 160, !10, i64 176, !49, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !17, i64 264, !17, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !50, i64 312, !6, i64 328, !10, i64 336, !10, i64 344}
!48 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!49 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!50 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!51 = !{!14, !10, i64 928}
!52 = !{!14, !6, i64 832}
!53 = !{!9, !9, i64 0}
!54 = !{!14, !6, i64 836}
!55 = !{!56, !2, i64 0}
!56 = !{!"ps_", !2, i64 0, !6, i64 8, !6, i64 12}
!57 = !{!3, !3, i64 0}
!58 = !{!56, !6, i64 8}
!59 = !{!56, !6, i64 12}
!60 = !{!47, !17, i64 152}
