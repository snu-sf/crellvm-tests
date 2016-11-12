; ModuleID = './gdevxps.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_xps_attr_state = type { %struct.gx_device_xps_vals, %struct.gx_device_xps_vals, i8*, i8** }
%struct.gx_device_xps_vals = type { double, i64 }
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_xps_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s*, i32, i64, i64, double, i32, i32, double, i32, [64 x i8] }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
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
%struct.gs_font_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
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
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gx_device_xps_f2i_s = type { i8*, %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_f2i_s* }
%struct.gx_device_xps_zinfo_s = type { i64, i64, %struct.gx_device_xps_zdata_s, i64, i16, i16 }
%struct.gx_device_xps_zdata_s = type { %struct._IO_FILE*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"StrokeLineJoin=\22%s\22\00", align 1
@join_str = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"StrokeStartLineCap=\22%s\22\00", align 1
@cap_str = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [22 x i8] c"StrokeEndLineCap=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"StrokeThickness=\22%f\22\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"StrokeMiterLimit=\22%f\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Stroke=\22%X\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Fill=\22%X\22\00", align 1
@xps_fixed_state = global [7 x %struct.gx_device_xps_attr_state] [%struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals zeroinitializer, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @join_str, i32 0, i32 0) }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals zeroinitializer, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cap_str, i32 0, i32 0) }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals zeroinitializer, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cap_str, i32 0, i32 0) }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals { double 1.000000e+00, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8** null }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals { double 1.000000e+01, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8** null }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** null }, %struct.gx_device_xps_attr_state { %struct.gx_device_xps_vals zeroinitializer, %struct.gx_device_xps_vals zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** null }], align 16
@.str.7 = private unnamed_addr constant [14 x i8] c"gx_device_xps\00", align 1
@st_device_xps = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8984, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_xps_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_xps_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"xpswrite\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_xpswrite_device = constant %struct.gx_device_xps_s { i32 8984, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_xps to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 816, i32 1056, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 9.600000e+01, float 9.600000e+01], [2 x float] [float 9.600000e+01, float 9.600000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @xps_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @xps_output_page, i32 (%struct.gx_device_s*)* @xps_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gdev_vector_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xps_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xps_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_xps_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_xps_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gx_device_vector_procs_s* null, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, %struct.stream_s* null, i8* null, i32 0, i32 0, %struct.gs_imager_state_s zeroinitializer, float* null, i32 0, i32 0, i32 0, %struct.gx_hl_saved_color_s zeroinitializer, %struct.gx_hl_saved_color_s zeroinitializer, i64 0, i64 0, i32 0, i32 0, %struct.gs_point_s zeroinitializer, i32 0, %struct.gx_device_bbox_s* null, i64 0, i64 0, %struct.gx_device_xps_f2i_s* null, %struct.gx_device_xps_f2i_s* null, i32 0, i64 0, i64 0, double 0.000000e+00, i32 0, i32 0, double 0.000000e+00, i32 0, [64 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"Miter\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Flat\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Triangle\00", align 1
@st_device_vector = external constant %struct.gs_memory_struct_type_s, align 8
@xps_vector_procs = internal constant %struct.gx_device_vector_procs_s { i32 (%struct.gx_device_vector_s*)* @xps_beginpage, i32 (%struct.gx_device_vector_s*, double)* @xps_setlinewidth, i32 (%struct.gx_device_vector_s*, i32)* @xps_setlinecap, i32 (%struct.gx_device_vector_s*, i32)* @xps_setlinejoin, i32 (%struct.gx_device_vector_s*, double)* @xps_setmiterlimit, i32 (%struct.gx_device_vector_s*, float*, i32, double)* @xps_setdash, i32 (%struct.gx_device_vector_s*, double)* @gdev_vector_setflat, i32 (%struct.gx_device_vector_s*, i32, i32)* @xps_setlogop, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @xps_can_handle_hl_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @xps_setfillcolor, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @xps_setstrokecolor, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)* @gdev_vector_dopath, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)* @xps_dorect, i32 (%struct.gx_device_vector_s*, i32)* @xps_beginpath, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @xps_moveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @xps_lineto, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)* @xps_curveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @xps_closepath, i32 (%struct.gx_device_vector_s*, i32)* @xps_endpath }, align 8
@__func__.xps_open_device = private unnamed_addr constant [16 x i8] c"xps_open_device\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"./devices/vector/gdevxps.c\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"FixedDocumentSequence.fdseq\00", align 1
@fixed_document_sequence = internal global i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.59, i32 0, i32 0), align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"[Content_Types].xml\00", align 1
@xps_content_types = internal global i8* getelementptr inbounds ([673 x i8], [673 x i8]* @.str.60, i32 0, i32 0), align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"Documents/1/FixedDocument.fdoc\00", align 1
@fixed_document_fdoc_header = internal global i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.61, i32 0, i32 0), align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"_rels/.rels\00", align 1
@rels_magic = internal global i8* getelementptr inbounds ([284 x i8], [284 x i8]* @.str.62, i32 0, i32 0), align 8
@.str.22 = private unnamed_addr constant [40 x i8] c"<PageContent Source=\22Pages/%d.fpage\22 />\00", align 1
@__func__.xps_beginpage = private unnamed_addr constant [14 x i8] c"xps_beginpage\00", align 1
@.str.23 = private unnamed_addr constant [102 x i8] c"<FixedPage Width=\22%d\22 Height=\22%d\22 xmlns=\22http://schemas.microsoft.com/xps/2005/06\22 xml:lang=\22en-US\22>\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"<Canvas RenderTransform=\22%g,%g,%g,%g,%g,%g\22>\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Documents/1/Pages/%d.fpage\00", align 1
@__func__.write_str_to_current_page = private unnamed_addr constant [26 x i8] c"write_str_to_current_page\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"butt\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"triangle\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.xps_setlinecap = private unnamed_addr constant [15 x i8] c"xps_setlinecap\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"miter\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"bevel\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__func__.xps_setlinejoin = private unnamed_addr constant [16 x i8] c"xps_setlinejoin\00", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@__func__.xps_dorect = private unnamed_addr constant [11 x i8] c"xps_dorect\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"xps_rect: type not supported %x\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"<Path \00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"Fill=\22#%06X\22 Data=\22M %g, %g L %g, %g %g, %g %g, %g Z\22 \00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"Stroke=\22#%06X\22 Data=\22M %g, %g L %g, %g %g, %g %g, %g Z\22 \00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"StrokeThickness=\22%g\22 \00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"/>\0A\00", align 1
@__func__.xps_beginpath = private unnamed_addr constant [14 x i8] c"xps_beginpath\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"type not supported %x\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Fill=\22#%06X\22 Data=\22\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Stroke=\22#%06X\22 Data=\22\00", align 1
@__func__.xps_moveto = private unnamed_addr constant [11 x i8] c"xps_moveto\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"xps_moveto: type not supported %x\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c" M %g,%g\00", align 1
@__func__.xps_lineto = private unnamed_addr constant [11 x i8] c"xps_lineto\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"xps_lineto: type not supported %x\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c" L %g,%g\00", align 1
@__func__.xps_curveto = private unnamed_addr constant [12 x i8] c"xps_curveto\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"xps_lineto: type not supported %x\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c" C %g,%g %g,%g %g,%g\00", align 1
@__func__.xps_closepath = private unnamed_addr constant [14 x i8] c"xps_closepath\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"xps_closepath: type not supported %x\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c" Z\00", align 1
@__func__.xps_endpath = private unnamed_addr constant [12 x i8] c"xps_endpath\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"\22 StrokeThickness=\22%g\22 />\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"\22 />\0A\00", align 1
@__func__.write_to_zip_file = private unnamed_addr constant [18 x i8] c"write_to_zip_file\00", align 1
@__func__.zip_add_file = private unnamed_addr constant [13 x i8] c"zip_add_file\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"zinfo\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"zinfo node\00", align 1
@__func__.zip_new_info_node = private unnamed_addr constant [18 x i8] c"zip_new_info_node\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"zinfo_filename\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"zip_append_data(filename)\00", align 1
@__func__.zip_append_data = private unnamed_addr constant [16 x i8] c"zip_append_data\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"xpsdata-\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.59 = private unnamed_addr constant [196 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><FixedDocumentSequence xmlns=\22http://schemas.microsoft.com/xps/2005/06\22><DocumentReference Source=\22Documents/1/FixedDocument.fdoc\22 /></FixedDocumentSequence>\00", align 1
@.str.60 = private unnamed_addr constant [673 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><Types xmlns=\22http://schemas.openxmlformats.org/package/2006/content-types\22><Default Extension=\22fdseq\22 ContentType=\22application/vnd.ms-package.xps-fixeddocumentsequence+xml\22 /><Default Extension=\22rels\22 ContentType=\22application/vnd.openxmlformats-package.relationships+xml\22 /><Default Extension=\22fdoc\22 ContentType=\22application/vnd.ms-package.xps-fixeddocument+xml\22 /><Default Extension=\22fpage\22 ContentType=\22application/vnd.ms-package.xps-fixedpage+xml\22 /><Default Extension=\22ttf\22 ContentType=\22application/vnd.ms-opentype\22 /><Default Extension=\22tif\22 ContentType=\22image/tiff\22 /><Default Extension=\22png\22 ContentType=\22image/png\22 /></Types>\00", align 1
@.str.61 = private unnamed_addr constant [103 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><FixedDocument xmlns=\22http://schemas.microsoft.com/xps/2005/06\22>\00", align 1
@.str.62 = private unnamed_addr constant [284 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><Relationships xmlns=\22http://schemas.openxmlformats.org/package/2006/relationships\22><Relationship Type=\22http://schemas.microsoft.com/xps/2005/06/fixedrepresentation\22 Target=\22/FixedDocumentSequence.fdseq\22 Id=\22Rdd12fb46c1de43ab\22 /></Relationships>\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"</Canvas></FixedPage>\00", align 1
@__func__.xps_output_page = private unnamed_addr constant [16 x i8] c"xps_output_page\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"</FixedDocument>\00", align 1
@__func__.xps_close_device = private unnamed_addr constant [17 x i8] c"xps_close_device\00", align 1
@__func__.xps_get_params = private unnamed_addr constant [15 x i8] c"xps_get_params\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"PrinterName\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"\0AERROR: PrinterName too long (max %d)\0A\00", align 1
@__func__.xps_put_params = private unnamed_addr constant [15 x i8] c"xps_put_params\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_xps_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_vector, i32 0, i32 4), align 8, !tbaa !7
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !5
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %6) #5
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @device_xps_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_vector, i32 0, i32 5), align 8, !tbaa !9
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %3) #5
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xps_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %5, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %9, i32 0, i32 43
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %v_memory, align 8, !tbaa !23
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 44
  store %struct.gx_device_vector_procs_s* @xps_vector_procs, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !43
  %11 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  call void @gdev_vector_init(%struct.gx_device_vector_s* %11) #5
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %12, i32 512, i32 2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i8* @gs_errstr(i32 %15) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_open_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 654, i32 1, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %16, i32 0, i32 69
  store i32 0, i32* %page_count, align 4, !tbaa !44
  %17 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %strokecolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %17, i32 0, i32 70
  store i64 -1, i64* %strokecolor, align 8, !tbaa !46
  %18 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %fillcolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %18, i32 0, i32 71
  store i64 -1, i64* %fillcolor, align 8, !tbaa !47
  %19 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linewidth = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %19, i32 0, i32 72
  store double 1.000000e+00, double* %linewidth, align 8, !tbaa !48
  %20 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %20, i32 0, i32 73
  store i32 0, i32* %linecap, align 4, !tbaa !49
  %21 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linejoin = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %21, i32 0, i32 74
  store i32 0, i32* %linejoin, align 4, !tbaa !50
  %22 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %miterlimit = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %22, i32 0, i32 75
  store double 4.000000e+00, double* %miterlimit, align 8, !tbaa !51
  %23 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %can_stroke = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %23, i32 0, i32 76
  store i32 1, i32* %can_stroke, align 4, !tbaa !52
  %24 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %f2i = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %24, i32 0, i32 67
  store %struct.gx_device_xps_f2i_s* null, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !53
  %25 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %f2i_tail = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %25, i32 0, i32 68
  store %struct.gx_device_xps_f2i_s* null, %struct.gx_device_xps_f2i_s** %f2i_tail, align 8, !tbaa !54
  %26 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %27 = load i8*, i8** @fixed_document_sequence, align 8, !tbaa !1
  %call3 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* %27) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %28, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %call6 = call i8* @gs_errstr(i32 %30) #5
  %call7 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_open_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 673, i32 1, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call6) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %31 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %32 = load i8*, i8** @xps_content_types, align 8, !tbaa !1
  %call9 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %32) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %33, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %call12 = call i8* @gs_errstr(i32 %35) #5
  %call13 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_open_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 678, i32 1, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call12) #5
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  %36 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %37 = load i8*, i8** @fixed_document_fdoc_header, align 8, !tbaa !1
  %call15 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %37) #5
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %38, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %call18 = call i8* @gs_errstr(i32 %40) #5
  %call19 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_open_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 684, i32 1, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call18) #5
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %41 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %42 = load i8*, i8** @rels_magic, align 8, !tbaa !1
  %call21 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* %42) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %43, 0
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %call24 = call i8* @gs_errstr(i32 %45) #5
  %call25 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_open_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 690, i32 1, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call24) #5
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.20
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.23, %if.then.17, %if.then.11, %if.then.5, %if.then
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0)) #5
  %8 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %8, i32 0, i32 69
  %9 = load i32, i32* %page_count, align 4, !tbaa !44
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %page_count, align 4, !tbaa !44
  %10 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %10, i32 0, i32 46
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !55
  %call1 = call i32 @ferror(%struct._IO_FILE* %11) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i8* @gs_errstr(i32 -12) #5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_output_page, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 725, i32 0, i32 -12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call2) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %14 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call4 = call i32 @gx_finish_output_page(%struct.gx_device_s* %12, i32 %13, i32 %14) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_vector_s*
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %call7 = call i32 @gx_outputfile_is_separate_pages(i8* %arraydecay, %struct.gs_memory_s* %19) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.6
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call10 = call i32 @xps_close_device(%struct.gx_device_s* %20) #5
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.9
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call14 = call i32 @xps_open_device(%struct.gx_device_s* %22) #5
  store i32 %call14, i32* %code, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %23, i32 0, i32 63
  store i32 0, i32* %in_page, align 4, !tbaa !56
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.12, %if.then.5, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_close_device(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i8* @gs_errstr(i32 %7) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xps_close_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 754, i32 1, i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %8, i32 0, i32 46
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !55
  %call3 = call i32 @ferror(%struct._IO_FILE* %9) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %call5 = call i8* @gs_errstr(i32 -12) #5
  %call6 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xps_close_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 757, i32 0, i32 -12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call5) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call8 = call i32 @zip_close_archive(%struct.gx_device_xps_s* %10) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call11 = call i8* @gs_errstr(i32 %13) #5
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xps_close_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 761, i32 1, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call11) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.7
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_vector_s*
  %call14 = call i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %15) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.10, %if.then.4, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gdev_vector_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @xps_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %ofns = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %3, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %4 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_get_params(%struct.gx_device_s* %5, %struct.gs_param_list_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i8* @gs_errstr(i32 %9) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.xps_get_params, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 841, i32 1, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %10 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %PrinterName = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %10, i32 0, i32 77
  %11 = bitcast [64 x i8]* %PrinterName to i8*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* %11, i8** %data, align 8, !tbaa !57
  %12 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %12, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay) #7
  %conv = trunc i64 %call3 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !59
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !60
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_string(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), %struct.gs_param_string_s* %ofns) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %16 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #2
  %17 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %pps = alloca %struct.gs_param_string_s, align 8
  %param_name = alloca i8*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_param_string_s* %pps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %5, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), %struct.gs_param_string_s* %pps) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %do.end
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !59
  %cmp = icmp ugt i32 %7, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %call1 = call i8* @gs_program_name() #5
  %call2 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call1, i64 %call2) #5
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i32 0, i32 0), i32 64) #5
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %8 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %PrinterName = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %8, i32 0, i32 77
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %PrinterName, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !57
  %size4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 1
  %10 = load i32, i32* %size4, align 4, !tbaa !59
  %conv = zext i32 %10 to i64
  %call5 = call i8* @memcpy(i8* %arraydecay, i8* %9, i64 %conv) #6
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 1
  %11 = load i32, i32* %size6, align 4, !tbaa !59
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %PrinterName7 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %12, i32 0, i32 77
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %PrinterName7, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !62
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 7
  %15 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !64
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %param_name, align 8, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call8 = call i32 %15(%struct.gs_param_list_s* %16, i8* %17, i32 %18) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @gdev_vector_put_params(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %21, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %sw.epilog
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %call13 = call i8* @gs_errstr(i32 %23) #5
  %call14 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.xps_put_params, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 884, i32 1, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call13) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %sw.epilog
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.12
  %25 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gs_param_string_s* %pps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gdev_xps_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_is_void(%struct.gx_path_s* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_vector_fill_path(%struct.gx_device_s* %1, %struct.gs_imager_state_s* %2, %struct.gx_path_s* %3, %struct.gx_fill_params_s* %4, %struct.gx_device_color_s* %5, %struct.gx_clip_path_s* %6) #5
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_xps_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_is_void(%struct.gx_path_s* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %4 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_vector_stroke_path(%struct.gx_device_s* %1, %struct.gs_imager_state_s* %2, %struct.gx_path_s* %3, %struct.gx_stroke_params_s* %4, %struct.gx_device_color_s* %5, %struct.gx_clip_path_s* %6) #5
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gdev_vector_init(%struct.gx_device_vector_s*) #1

declare i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s*, i32, i32) #1

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #1

declare i8* @gs_errstr(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %xps_dev, i8* %filename, i8* %str) #0 {
entry:
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #7
  %conv = trunc i64 %call to i32
  %call1 = call i32 @write_to_zip_file(%struct.gx_device_xps_s* %0, i8* %1, i8* %2, i32 %conv) #5
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @xps_beginpage(%struct.gx_device_vector_s* %vdev) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %buf = alloca [128 x i8], align 16
  %code = alloca i32, align 4
  %template = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %page_size_template = alloca i8*, align 8
  %canvas_template = alloca i8*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = bitcast i8** %template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), i8** %template, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %6 = load i8*, i8** %template, align 8, !tbaa !1
  %7 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %7, i32 0, i32 69
  %8 = load i32, i32* %page_count, align 4, !tbaa !44
  %add = add nsw i32 %8, 1
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* %6, i32 %add) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i8* @gs_errstr(i32 %11) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 942, i32 1, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %12 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call4 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay3) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %call7 = call i8* @gs_errstr(i32 %15) #5
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 947, i32 1, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call7) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.6, %if.then
  %16 = bitcast i8** %template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %17 = bitcast i8** %page_size_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  store i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.23, i32 0, i32 0), i8** %page_size_template, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %18 = load i8*, i8** %page_size_template, align 8, !tbaa !1
  %19 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %19, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !66
  %conv = fpext float %20 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 3.000000e+00
  %conv11 = fptosi double %div to i32
  %21 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %MediaSize12 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %21, i32 0, i32 19
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize12, i32 0, i64 1
  %22 = load float, float* %arrayidx13, align 4, !tbaa !66
  %conv14 = fpext float %22 to double
  %mul15 = fmul double %conv14, 4.000000e+00
  %div16 = fdiv double %mul15, 3.000000e+00
  %conv17 = fptosi double %div16 to i32
  %call18 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay10, i8* %18, i32 %conv11, i32 %conv17) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %23, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %cleanup.cont
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %call22 = call i8* @gs_errstr(i32 %25) #5
  %call23 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 958, i32 1, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call22) #5
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.24:                                        ; preds = %cleanup.cont
  %26 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call26 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %26, i8* %arraydecay25) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %27, 0
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.24
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %call30 = call i8* @gs_errstr(i32 %29) #5
  %call31 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 961, i32 1, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call30) #5
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.32:                                        ; preds = %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.32, %if.then.29, %if.then.21
  %30 = bitcast i8** %page_size_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.34, label %cleanup.65 [
    i32 0, label %cleanup.cont.35
  ]

cleanup.cont.35:                                  ; preds = %cleanup.33
  %31 = bitcast i8** %canvas_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i8** %canvas_template, align 8, !tbaa !1
  %arraydecay36 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %32 = load i8*, i8** %canvas_template, align 8, !tbaa !1
  %33 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %33, i32 0, i32 22
  %arrayidx37 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %34 = load float, float* %arrayidx37, align 4, !tbaa !66
  %conv38 = fpext float %34 to double
  %div39 = fdiv double 9.600000e+01, %conv38
  %35 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %HWResolution40 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %35, i32 0, i32 22
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution40, i32 0, i64 1
  %36 = load float, float* %arrayidx41, align 4, !tbaa !66
  %conv42 = fpext float %36 to double
  %div43 = fdiv double 9.600000e+01, %conv42
  %call44 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay36, i8* %32, double %div39, double 0.000000e+00, double 0.000000e+00, double %div43, double 0.000000e+00, double 0.000000e+00) #5
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %37, 0
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %cleanup.cont.35
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %call48 = call i8* @gs_errstr(i32 %39) #5
  %call49 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 969, i32 1, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call48) #5
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.50:                                        ; preds = %cleanup.cont.35
  %40 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay51 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call52 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %40, i8* %arraydecay51) #5
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %41, 0
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.end.50
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %call56 = call i8* @gs_errstr(i32 %43) #5
  %call57 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpage, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 973, i32 1, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call56) #5
  store i32 %call57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.58:                                        ; preds = %if.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.58, %if.then.55, %if.then.47
  %44 = bitcast i8** %canvas_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %cleanup.dest.60 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.60, label %cleanup.65 [
    i32 0, label %cleanup.cont.61
  ]

cleanup.cont.61:                                  ; preds = %cleanup.59
  br label %do.body.62

do.body.62:                                       ; preds = %cleanup.cont.61
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %do.end.64, %cleanup.59, %cleanup.33, %cleanup
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %47) #2
  %48 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setlinewidth(%struct.gx_device_vector_s* %vdev, double %width) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %width.addr = alloca double, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !67
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load double, double* %width.addr, align 8, !tbaa !67
  %4 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linewidth = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %4, i32 0, i32 72
  store double %3, double* %linewidth, align 8, !tbaa !48
  %5 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setlinecap(%struct.gx_device_vector_s* %vdev, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %cap.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %linecap_names = alloca [5 x i8*], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [5 x i8*]* %linecap_names to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #2
  %4 = bitcast [5 x i8*]* %linecap_names to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 16, i1 false)
  %5 = bitcast i8* %4 to [5 x i8*]*
  %6 = getelementptr [5 x i8*], [5 x i8*]* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8** %6
  %7 = getelementptr [5 x i8*], [5 x i8*]* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8** %7
  %8 = getelementptr [5 x i8*], [5 x i8*]* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8** %8
  %9 = getelementptr [5 x i8*], [5 x i8*]* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8** %9
  %10 = getelementptr [5 x i8*], [5 x i8*]* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8** %10
  %11 = load i32, i32* %cap.addr, align 4, !tbaa !61
  %cmp = icmp ult i32 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %cap.addr, align 4, !tbaa !61
  %cmp1 = icmp ugt i32 %12, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @gs_errstr(i32 -15) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.xps_setlinecap, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1003, i32 0, i32 -15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %cap.addr, align 4, !tbaa !61
  %14 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linecap = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %14, i32 0, i32 73
  store i32 %13, i32* %linecap, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast [5 x i8*]* %linecap_names to i8*
  call void @llvm.lifetime.end(i64 40, i8* %15) #2
  %16 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setlinejoin(%struct.gx_device_vector_s* %vdev, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %join.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %linejoin_names = alloca [6 x i8*], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [6 x i8*]* %linejoin_names to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast [6 x i8*]* %linejoin_names to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 16, i1 false)
  %5 = bitcast i8* %4 to [6 x i8*]*
  %6 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8** %6
  %7 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8** %7
  %8 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8** %8
  %9 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8** %9
  %10 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8** %10
  %11 = getelementptr [6 x i8*], [6 x i8*]* %5, i32 0, i32 5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8** %11
  %12 = load i32, i32* %join.addr, align 4, !tbaa !61
  %cmp = icmp ult i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %join.addr, align 4, !tbaa !61
  %cmp1 = icmp ugt i32 %13, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @gs_errstr(i32 -15) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.xps_setlinejoin, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1018, i32 0, i32 -15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %join.addr, align 4, !tbaa !61
  %15 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linejoin = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %15, i32 0, i32 74
  store i32 %14, i32* %linejoin, align 4, !tbaa !50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast [6 x i8*]* %linejoin_names to i8*
  call void @llvm.lifetime.end(i64 48, i8* %16) #2
  %17 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setmiterlimit(%struct.gx_device_vector_s* %vdev, double %limit) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %limit.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !67
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setdash(%struct.gx_device_vector_s* %vdev, float* %pattern, i32 %count, double %offset) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pattern.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store double %offset, double* %offset.addr, align 8, !tbaa !67
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  %conv = zext i1 %cmp to i32
  %4 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %can_stroke = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %4, i32 0, i32 76
  store i32 %conv, i32* %can_stroke, align 4, !tbaa !52
  %5 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 0
}

declare i32 @gdev_vector_setflat(%struct.gx_device_vector_s*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @xps_setlogop(%struct.gx_device_vector_s* %vdev, i32 %lop, i32 %diff) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %lop.addr = alloca i32, align 4
  %diff.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_can_handle_hl_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setfillcolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %fillcolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %5, i32 0, i32 71
  %call = call i32 @set_state_color(%struct.gx_device_vector_s* %3, %struct.gx_device_color_s* %4, i64* %fillcolor) #5
  %6 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_setstrokecolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %strokecolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %5, i32 0, i32 70
  %call = call i32 @set_state_color(%struct.gx_device_vector_s* %3, %struct.gx_device_color_s* %4, i64* %strokecolor) #5
  %6 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 %call
}

declare i32 @gdev_vector_dopath(%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xps_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %line = alloca [300 x i8], align 16
  %fmt = alloca i8*, align 8
  %c = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 300, i8* %3) #2
  %4 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_xps_s* %6 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 @drawing_path(i32 %8) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.xps_dorect, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1088, i32 3, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i32 %9) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %10 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and = and i32 %10, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %can_stroke = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %11, i32 0, i32 76
  %12 = load i32, i32* %can_stroke, align 4, !tbaa !52
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %13 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call7 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #5
  %14 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and8 = and i32 %14, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  %15 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %fillcolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %15, i32 0, i32 71
  %16 = load i64, i64* %fillcolor, align 8, !tbaa !47
  %and11 = and i64 %16, 16777215
  store i64 %and11, i64* %c, align 8, !tbaa !68
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %17 = load i8*, i8** %fmt, align 8, !tbaa !1
  %18 = load i64, i64* %c, align 8, !tbaa !68
  %19 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv = sitofp i32 %19 to double
  %mul = fmul double %conv, 3.906250e-03
  %20 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv12 = sitofp i32 %20 to double
  %mul13 = fmul double %conv12, 3.906250e-03
  %21 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv14 = sitofp i32 %21 to double
  %mul15 = fmul double %conv14, 3.906250e-03
  %22 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv16 = sitofp i32 %22 to double
  %mul17 = fmul double %conv16, 3.906250e-03
  %23 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %conv18 = sitofp i32 %23 to double
  %mul19 = fmul double %conv18, 3.906250e-03
  %24 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv20 = sitofp i32 %24 to double
  %mul21 = fmul double %conv20, 3.906250e-03
  %25 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %conv22 = sitofp i32 %25 to double
  %mul23 = fmul double %conv22, 3.906250e-03
  %26 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv24 = sitofp i32 %26 to double
  %mul25 = fmul double %conv24, 3.906250e-03
  %call26 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* %17, i64 %18, double %mul, double %mul13, double %mul15, double %mul17, double %mul19, double %mul21, double %mul23, double %mul25) #5
  br label %if.end.46

if.else:                                          ; preds = %if.end.6
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  %27 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %strokecolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %27, i32 0, i32 70
  %28 = load i64, i64* %strokecolor, align 8, !tbaa !46
  %and27 = and i64 %28, 16777215
  store i64 %and27, i64* %c, align 8, !tbaa !68
  %arraydecay28 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %29 = load i8*, i8** %fmt, align 8, !tbaa !1
  %30 = load i64, i64* %c, align 8, !tbaa !68
  %31 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv29 = sitofp i32 %31 to double
  %mul30 = fmul double %conv29, 3.906250e-03
  %32 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv31 = sitofp i32 %32 to double
  %mul32 = fmul double %conv31, 3.906250e-03
  %33 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %conv33 = sitofp i32 %33 to double
  %mul34 = fmul double %conv33, 3.906250e-03
  %34 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv35 = sitofp i32 %34 to double
  %mul36 = fmul double %conv35, 3.906250e-03
  %35 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %conv37 = sitofp i32 %35 to double
  %mul38 = fmul double %conv37, 3.906250e-03
  %36 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %conv39 = sitofp i32 %36 to double
  %mul40 = fmul double %conv39, 3.906250e-03
  %37 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %conv41 = sitofp i32 %37 to double
  %mul42 = fmul double %conv41, 3.906250e-03
  %38 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv43 = sitofp i32 %38 to double
  %mul44 = fmul double %conv43, 3.906250e-03
  %call45 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay28, i8* %29, i64 %30, double %mul30, double %mul32, double %mul34, double %mul36, double %mul38, double %mul40, double %mul42, double %mul44) #5
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.10
  %39 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay47 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %call48 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %39, i8* %arraydecay47) #5
  %40 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and49 = and i32 %40, 2
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.46
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  %arraydecay52 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %41 = load i8*, i8** %fmt, align 8, !tbaa !1
  %42 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linewidth = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %42, i32 0, i32 72
  %43 = load double, double* %linewidth, align 8, !tbaa !48
  %call53 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay52, i8* %41, double %43) #5
  %44 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %call55 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %44, i8* %arraydecay54) #5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.46
  %45 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call57 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #5
  store i32 %call57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.5, %if.then
  %46 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 300, i8* %48) #2
  %49 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_beginpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %line = alloca [300 x i8], align 16
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %c = alloca i64, align 8
  %fmt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 300, i8* %0) #2
  %1 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s* %2 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %3, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %4 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_xps_s* %6 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #5
  %8 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 @drawing_path(i32 %8) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_beginpath, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1163, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i32 %9) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %can_stroke = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %10, i32 0, i32 76
  %11 = load i32, i32* %can_stroke, align 4, !tbaa !52
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and = and i32 %12, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %13 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %fillcolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %13, i32 0, i32 71
  %14 = load i64, i64* %fillcolor, align 8, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %15 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %strokecolor = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %15, i32 0, i32 70
  %16 = load i64, i64* %strokecolor, align 8, !tbaa !46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %16, %cond.false ]
  store i64 %cond, i64* %c, align 8, !tbaa !68
  %17 = load i64, i64* %c, align 8, !tbaa !68
  %and7 = and i64 %17, 16777215
  store i64 %and7, i64* %c, align 8, !tbaa !68
  %18 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call8 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #5
  %19 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and9 = and i32 %19, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %cond.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  br label %if.end.12

if.else:                                          ; preds = %cond.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %20 = load i8*, i8** %fmt, align 8, !tbaa !1
  %21 = load i64, i64* %c, align 8, !tbaa !68
  %call13 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* %20, i64 %21) #5
  %22 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay14 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %call15 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %22, i8* %arraydecay14) #5
  br label %do.body

do.body:                                          ; preds = %if.end.12
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %23 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 300, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_moveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %line = alloca [300 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !67
  store double %y0, double* %y0.addr, align 8, !tbaa !67
  store double %x, double* %x.addr, align 8, !tbaa !67
  store double %y, double* %y.addr, align 8, !tbaa !67
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 300, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call = call i32 @drawing_path(i32 %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.xps_moveto, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1201, i32 3, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0), i32 %5) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %6 = load double, double* %x.addr, align 8, !tbaa !67
  %7 = load double, double* %y.addr, align 8, !tbaa !67
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), double %6, double %7) #5
  %8 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [300 x i8], [300 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %8, i8* %arraydecay3) #5
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.body.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.7, %if.then
  %9 = bitcast [300 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 300, i8* %9) #2
  %10 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_lineto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %line = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !67
  store double %y0, double* %y0.addr, align 8, !tbaa !67
  store double %x, double* %x.addr, align 8, !tbaa !67
  store double %y, double* %y.addr, align 8, !tbaa !67
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 200, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call = call i32 @drawing_path(i32 %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.xps_lineto, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1222, i32 3, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0), i32 %5) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %6 = load double, double* %x.addr, align 8, !tbaa !67
  %7 = load double, double* %y.addr, align 8, !tbaa !67
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), double %6, double %7) #5
  %8 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %8, i8* %arraydecay3) #5
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.body.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.7, %if.then
  %9 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 200, i8* %9) #2
  %10 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_curveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %line = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !67
  store double %y0, double* %y0.addr, align 8, !tbaa !67
  store double %x1, double* %x1.addr, align 8, !tbaa !67
  store double %y1, double* %y1.addr, align 8, !tbaa !67
  store double %x2, double* %x2.addr, align 8, !tbaa !67
  store double %y2, double* %y2.addr, align 8, !tbaa !67
  store double %x3, double* %x3.addr, align 8, !tbaa !67
  store double %y3, double* %y3.addr, align 8, !tbaa !67
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 200, i8* %3) #2
  %4 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call = call i32 @drawing_path(i32 %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.xps_curveto, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1241, i32 3, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i32 %5) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %6 = load double, double* %x1.addr, align 8, !tbaa !67
  %7 = load double, double* %y1.addr, align 8, !tbaa !67
  %8 = load double, double* %x2.addr, align 8, !tbaa !67
  %9 = load double, double* %y2.addr, align 8, !tbaa !67
  %10 = load double, double* %x3.addr, align 8, !tbaa !67
  %11 = load double, double* %y3.addr, align 8, !tbaa !67
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), double %6, double %7, double %8, double %9, double %10, double %11) #5
  %12 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call4 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %12, i8* %arraydecay3) #5
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 200, i8* %13) #2
  %14 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_closepath(%struct.gx_device_vector_s* %vdev, double %x, double %y, double %x_start, double %y_start, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %x_start.addr = alloca double, align 8
  %y_start.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !67
  store double %y, double* %y.addr, align 8, !tbaa !67
  store double %x_start, double* %x_start.addr, align 8, !tbaa !67
  store double %y_start, double* %y_start.addr, align 8, !tbaa !67
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call = call i32 @drawing_path(i32 %3) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xps_closepath, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1261, i32 3, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i32 %4) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call2 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)) #5
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %6 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @xps_endpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %line = alloca [200 x i8], align 16
  %fmt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 200, i8* %3) #2
  %4 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call = call i32 @drawing_path(i32 %5) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %type.addr, align 4, !tbaa !61
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.xps_endpath, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 1280, i32 3, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i32 %6) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and = and i32 %7, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8** %fmt, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %8 = load i8*, i8** %fmt, align 8, !tbaa !1
  %9 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %linewidth = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %9, i32 0, i32 72
  %10 = load double, double* %linewidth, align 8, !tbaa !48
  %call4 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* %8, double %10) #5
  %11 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call6 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %11, i8* %arraydecay5) #5
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %12 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %call7 = call i32 @write_str_to_current_page(%struct.gx_device_xps_s* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %13 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast [200 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 200, i8* %14) #2
  %15 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_str_to_current_page(%struct.gx_device_xps_s* %xps, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %xps.addr = alloca %struct.gx_device_xps_s*, align 8
  %str.addr = alloca i8*, align 8
  %page_template = alloca i8*, align 8
  %buf = alloca [128 x i8], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_xps_s* %xps, %struct.gx_device_xps_s** %xps.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i8** %page_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8** %page_template, align 8, !tbaa !1
  %1 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %page_template, align 8, !tbaa !1
  %4 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps.addr, align 8, !tbaa !1
  %page_count = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %4, i32 0, i32 69
  %5 = load i32, i32* %page_count, align 4, !tbaa !44
  %add = add nsw i32 %5, 1
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* %3, i32 %add) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i8* @gs_errstr(i32 %8) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.write_str_to_current_page, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 705, i32 1, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call4 = call i32 @write_str_to_zip_file(%struct.gx_device_xps_s* %9, i8* %arraydecay3, i8* %10) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %12) #2
  %13 = bitcast i8** %page_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_state_color(%struct.gx_device_vector_s* %vdev, %struct.gx_device_color_s* %pdc, i64* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %color.addr = alloca i64*, align 8
  %xps = alloca %struct.gx_device_xps_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i64* %color, i64** %color.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_xps_s*
  store %struct.gx_device_xps_s* %2, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %3 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_xps_s* %3 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #5
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 0
  %6 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !69
  %7 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_color_type_s* %6, %7
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %9 = load i64, i64* %pure, align 8, !tbaa !68
  %10 = load i64*, i64** %color.addr, align 8, !tbaa !1
  store i64 %9, i64* %10, align 8, !tbaa !68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gx_device_xps_s** %xps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @drawing_path(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4, !tbaa !61
  %0 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !tbaa !61
  %and1 = and i32 %1, 1
  %tobool2 = icmp ne i32 %and1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @write_to_zip_file(%struct.gx_device_xps_s* %xps_dev, i8* %filename, i8* %data, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %info = alloca %struct.gx_device_xps_zinfo_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_xps_s* %1 to %struct.gx_device_s*
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_xps_zinfo_s* @zip_look_up_file_info(%struct.gx_device_xps_s* %7, i8* %8) #5
  store %struct.gx_device_xps_zinfo_s* %call, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %10 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_xps_zinfo_s* %10, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call1 = call i32 @zip_add_file(%struct.gx_device_xps_s* %11, i8* %12) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i8* @gs_errstr(i32 %15) #5
  %call5 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.write_to_zip_file, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 434, i32 1, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call4) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call6 = call %struct.gx_device_xps_zinfo_s* @zip_look_up_file_info(%struct.gx_device_xps_s* %16, i8* %17) #5
  store %struct.gx_device_xps_zinfo_s* %call6, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %18 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gx_device_xps_zinfo_s* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i8* @gs_errstr(i32 -100) #5
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.write_to_zip_file, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 439, i32 0, i32 -100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call10) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %20 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %len.addr, align 4, !tbaa !5
  %call13 = call i32 @zip_append_data(%struct.gs_memory_s* %19, %struct.gx_device_xps_zinfo_s* %20, i8* %21, i32 %22) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i8* @gs_errstr(i32 %25) #5
  %call17 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.write_to_zip_file, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 443, i32 1, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call16) #5
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.15, %if.then.9, %if.then.3
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_xps_zinfo_s* @zip_look_up_file_info(%struct.gx_device_xps_s* %xps_dev, i8* %filename) #0 {
entry:
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %cur = alloca %struct.gx_device_xps_f2i_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_f2i_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %1, i32 0, i32 67
  %2 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !53
  store %struct.gx_device_xps_f2i_s* %2, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_xps_f2i_s* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  %filename1 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %filename1, align 8, !tbaa !73
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %7, i8* %8) #6
  store i32 %call, i32* %tmp, !tbaa !5
  %9 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %tmp, !tbaa !5
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %next, align 8, !tbaa !75
  store %struct.gx_device_xps_f2i_s* %13, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %14 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gx_device_xps_f2i_s* %14, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %15 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %cur, align 8, !tbaa !1
  %info = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %15, i32 0, i32 1
  %16 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !76
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_xps_zinfo_s* [ %16, %cond.true ], [ null, %cond.false ]
  %17 = bitcast %struct.gx_device_xps_f2i_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret %struct.gx_device_xps_zinfo_s* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @zip_add_file(%struct.gx_device_xps_s* %xps_dev, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call i32 @zip_new_info_node(%struct.gx_device_xps_s* %1, i8* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gs_errstr(i32 -100) #5
  %call2 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.zip_add_file, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 353, i32 0, i32 -100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call1) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @zip_append_data(%struct.gs_memory_s* %mem, %struct.gx_device_xps_zinfo_s* %info, i8* %data, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %info.addr = alloca %struct.gx_device_xps_zinfo_s*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %filename = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_xps_zinfo_s* %info, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %1, i32 0, i32 2
  %count2 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data1, i32 0, i32 1
  %2 = load i64, i64* %count2, align 8, !tbaa !77
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %3 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, i32 4096, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0)) #5
  store i8* %call, i8** %filename, align 8, !tbaa !1
  %7 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8*, i8** %filename, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call i8* @gs_errstr(i32 -25) #5
  %call5 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.zip_append_data, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 384, i32 0, i32 -25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call4) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %filename, align 8, !tbaa !1
  %call6 = call %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %filename, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %14, i8* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0)) #5
  %call10 = call i8* @gs_errstr(i32 -100) #5
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.zip_append_data, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 392, i32 0, i32 -100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call10) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %16 = load i8*, i8** %filename, align 8, !tbaa !1
  %call13 = call i32 @unlink(i8* %16) #6
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !83
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %filename, align 8, !tbaa !1
  call void %18(%struct.gs_memory_s* %19, i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0)) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %22 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %22, i32 0, i32 2
  %fp17 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data16, i32 0, i32 0
  store %struct._IO_FILE* %21, %struct._IO_FILE** %fp17, align 8, !tbaa !84
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.8, %if.then.3
  %23 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %entry
  %25 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %25, i32 0, i32 2
  %fp21 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data20, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp21, align 8, !tbaa !84
  %cmp22 = icmp eq %struct._IO_FILE* %26, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %call24 = call i8* @gs_errstr(i32 -100) #5
  %call25 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.zip_append_data, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 402, i32 0, i32 -100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call24) #5
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.26:                                        ; preds = %if.end.19
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %28 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = zext i32 %28 to i64
  %29 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data27 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %29, i32 0, i32 2
  %fp28 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data27, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp28, align 8, !tbaa !84
  %call29 = call i64 @fwrite(i8* %27, i64 1, i64 %conv, %struct._IO_FILE* %30) #5
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %count, align 4, !tbaa !5
  %31 = load i32, i32* %count, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp31 = icmp ne i32 %31, %32
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.26
  %33 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data34 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %33, i32 0, i32 2
  %fp35 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data34, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8, !tbaa !84
  %call36 = call i32 @fclose(%struct._IO_FILE* %34) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

if.end.37:                                        ; preds = %if.end.26
  %35 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data38 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %35, i32 0, i32 2
  %fp39 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data38, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp39, align 8, !tbaa !84
  %call40 = call i32 @fflush(%struct._IO_FILE* %36) #5
  %37 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv41 = zext i32 %37 to i64
  %38 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info.addr, align 8, !tbaa !1
  %data42 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %38, i32 0, i32 2
  %count43 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data42, i32 0, i32 1
  %39 = load i64, i64* %count43, align 8, !tbaa !77
  %add = add i64 %39, %conv41
  store i64 %add, i64* %count43, align 8, !tbaa !77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %if.end.37, %if.then.33, %if.then.23, %cleanup
  %40 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @zip_new_info_node(%struct.gx_device_xps_s* %xps_dev, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %lenstr = alloca i32, align 4
  %info = alloca %struct.gx_device_xps_zinfo_s*, align 8
  %f2i = alloca %struct.gx_device_xps_f2i_s*, align 8
  %cleanup.dest.slot = alloca i32
  %f2i31 = alloca %struct.gx_device_xps_f2i_s*, align 8
  %node = alloca i32, align 4
  %prev_f2i = alloca %struct.gx_device_xps_f2i_s*, align 8
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_xps_s* %1 to %struct.gx_device_s*
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast i32* %lenstr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !85
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !85
  %call = call i8* %10(%struct.gs_memory_s* %12, i32 48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0)) #5
  %13 = bitcast i8* %call to %struct.gx_device_xps_zinfo_s*
  store %struct.gx_device_xps_zinfo_s* %13, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !85
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_bytes4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 7
  %17 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes4, align 8, !tbaa !80
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !85
  %call6 = call i8* %17(%struct.gs_memory_s* %19, i32 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #5
  %20 = bitcast i8* %call6 to %struct.gx_device_xps_f2i_s*
  store %struct.gx_device_xps_f2i_s* %20, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_xps_zinfo_s* %21, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %22 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_device_xps_f2i_s* %22, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %call8 = call i8* @gs_errstr(i32 -100) #5
  %call9 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.zip_new_info_node, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 312, i32 0, i32 -100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %call8) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %23 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %24 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %info10 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %24, i32 0, i32 1
  store %struct.gx_device_xps_zinfo_s* %23, %struct.gx_device_xps_zinfo_s** %info10, align 8, !tbaa !76
  %25 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %25, i32 0, i32 2
  store %struct.gx_device_xps_f2i_s* null, %struct.gx_device_xps_f2i_s** %next, align 8, !tbaa !75
  %26 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i11 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %26, i32 0, i32 67
  %27 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i11, align 8, !tbaa !53
  %cmp12 = icmp eq %struct.gx_device_xps_f2i_s* %27, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %28 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %29 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i14 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %29, i32 0, i32 67
  store %struct.gx_device_xps_f2i_s* %28, %struct.gx_device_xps_f2i_s** %f2i14, align 8, !tbaa !53
  %30 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %31 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i_tail = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %31, i32 0, i32 68
  store %struct.gx_device_xps_f2i_s* %30, %struct.gx_device_xps_f2i_s** %f2i_tail, align 8, !tbaa !54
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %32 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %33 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i_tail15 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %33, i32 0, i32 68
  %34 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i_tail15, align 8, !tbaa !54
  %next16 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %34, i32 0, i32 2
  store %struct.gx_device_xps_f2i_s* %32, %struct.gx_device_xps_f2i_s** %next16, align 8, !tbaa !75
  %35 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %36 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i_tail17 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %36, i32 0, i32 68
  store %struct.gx_device_xps_f2i_s* %35, %struct.gx_device_xps_f2i_s** %f2i_tail17, align 8, !tbaa !54
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.13
  %37 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call19 = call i64 @strlen(i8* %37) #7
  %conv = trunc i64 %call19 to i32
  store i32 %conv, i32* %lenstr, align 4, !tbaa !5
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !85
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_bytes22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 7
  %40 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes22, align 8, !tbaa !80
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !85
  %43 = load i32, i32* %lenstr, align 4, !tbaa !5
  %add = add nsw i32 %43, 1
  %call24 = call i8* %40(%struct.gs_memory_s* %42, i32 %add, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0)) #5
  %44 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename25 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %44, i32 0, i32 0
  store i8* %call24, i8** %filename25, align 8, !tbaa !73
  %45 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename26 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %45, i32 0, i32 0
  %46 = load i8*, i8** %filename26, align 8, !tbaa !73
  %47 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call27 = call i8* @strcpy(i8* %46, i8* %47) #6
  %48 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %48, i32 0, i32 2
  %fp = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !84
  %49 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %49, i32 0, i32 2
  %count = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data28, i32 0, i32 1
  store i64 0, i64* %count, align 8, !tbaa !77
  %call29 = call i32 @gs_debug_c(i32 95) #5
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %if.end.18
  %50 = bitcast %struct.gx_device_xps_f2i_s** %f2i31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i32 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %51, i32 0, i32 67
  %52 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i32, align 8, !tbaa !53
  store %struct.gx_device_xps_f2i_s* %52, %struct.gx_device_xps_f2i_s** %f2i31, align 8, !tbaa !1
  %53 = bitcast i32* %node to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  store i32 1, i32* %node, align 4, !tbaa !5
  %54 = bitcast %struct.gx_device_xps_f2i_s** %prev_f2i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  br label %while.cond

while.cond:                                       ; preds = %do.end.37, %if.then.30
  %55 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i31, align 8, !tbaa !1
  %cmp33 = icmp ne %struct.gx_device_xps_f2i_s* %55, null
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.35

do.body.35:                                       ; preds = %while.body
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %56 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i31, align 8, !tbaa !1
  store %struct.gx_device_xps_f2i_s* %56, %struct.gx_device_xps_f2i_s** %prev_f2i, align 8, !tbaa !1
  %57 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i31, align 8, !tbaa !1
  %next38 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %57, i32 0, i32 2
  %58 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %next38, align 8, !tbaa !75
  store %struct.gx_device_xps_f2i_s* %58, %struct.gx_device_xps_f2i_s** %f2i31, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.39

do.body.39:                                       ; preds = %while.end
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %59 = bitcast %struct.gx_device_xps_f2i_s** %prev_f2i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i32* %node to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.gx_device_xps_f2i_s** %f2i31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %if.end.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then
  %62 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast i32* %lenstr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @gs_debug_c(i32) #1

declare %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #1

declare i32 @gx_outputfile_is_separate_pages(i8*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zip_close_archive(%struct.gx_device_xps_s* %xps_dev) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %f2i = alloca %struct.gx_device_xps_f2i_s*, align 8
  %entry_count = alloca i32, align 4
  %pos_before_cd = alloca i64, align 8
  %pos_after_cd = alloca i64, align 8
  %f = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %info = alloca %struct.gx_device_xps_zinfo_s*, align 8
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i1 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %1, i32 0, i32 67
  %2 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i1, align 8, !tbaa !53
  store %struct.gx_device_xps_f2i_s* %2, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %3 = bitcast i32* %entry_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %entry_count, align 4, !tbaa !5
  %4 = bitcast i64* %pos_before_cd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %pos_after_cd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.stream_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_xps_s* %7 to %struct.gx_device_vector_s*
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %8, i32 0, i32 47
  %9 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !86
  store %struct.stream_s* %9, %struct.stream_s** %f, align 8, !tbaa !1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %call = call i32 @zip_close_all_archive_files(%struct.gx_device_xps_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %call2 = call i64 @stell(%struct.stream_s* %12) #5
  store i64 %call2, i64* %pos_before_cd, align 8, !tbaa !68
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_xps_f2i_s* %15, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %info3 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %17, i32 0, i32 1
  %18 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info3, align 8, !tbaa !76
  store %struct.gx_device_xps_zinfo_s* %18, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %19 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u32(%struct.stream_s* %19, i64 33639248) #5
  %20 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %20, i16 zeroext 20) #5
  %21 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %21, i16 zeroext 20) #5
  %22 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %22, i16 zeroext 0) #5
  %23 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %23, i16 zeroext 0) #5
  %24 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %25 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %time = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %25, i32 0, i32 5
  %26 = load i16, i16* %time, align 2, !tbaa !87
  call void @put_u16(%struct.stream_s* %24, i16 zeroext %26) #5
  %27 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %28 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %date = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %28, i32 0, i32 4
  %29 = load i16, i16* %date, align 2, !tbaa !88
  call void @put_u16(%struct.stream_s* %27, i16 zeroext %29) #5
  %30 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %31 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %CRC = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %31, i32 0, i32 0
  %32 = load i64, i64* %CRC, align 8, !tbaa !89
  call void @put_u32(%struct.stream_s* %30, i64 %32) #5
  %33 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %34 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %34, i32 0, i32 2
  %count = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 1
  %35 = load i64, i64* %count, align 8, !tbaa !77
  call void @put_u32(%struct.stream_s* %33, i64 %35) #5
  %36 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %37 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %37, i32 0, i32 2
  %count5 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data4, i32 0, i32 1
  %38 = load i64, i64* %count5, align 8, !tbaa !77
  call void @put_u32(%struct.stream_s* %36, i64 %38) #5
  %39 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %40 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %40, i32 0, i32 0
  %41 = load i8*, i8** %filename, align 8, !tbaa !73
  %call6 = call i64 @strlen(i8* %41) #7
  %conv = trunc i64 %call6 to i16
  call void @put_u16(%struct.stream_s* %39, i16 zeroext %conv) #5
  %42 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %42, i16 zeroext 0) #5
  %43 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %43, i16 zeroext 0) #5
  %44 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %44, i16 zeroext 0) #5
  %45 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %45, i16 zeroext 0) #5
  %46 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u32(%struct.stream_s* %46, i64 0) #5
  %47 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %48 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %current_pos = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %48, i32 0, i32 3
  %49 = load i64, i64* %current_pos, align 8, !tbaa !90
  call void @put_u32(%struct.stream_s* %47, i64 %49) #5
  %50 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %51 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename7 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %51, i32 0, i32 0
  %52 = load i8*, i8** %filename7, align 8, !tbaa !73
  %53 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename8 = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %53, i32 0, i32 0
  %54 = load i8*, i8** %filename8, align 8, !tbaa !73
  %call9 = call i64 @strlen(i8* %54) #7
  %conv10 = trunc i64 %call9 to i32
  call void @put_bytes(%struct.stream_s* %50, i8* %52, i32 %conv10) #5
  %55 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_bytes(%struct.stream_s* %55, i8* null, i32 0) #5
  %56 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_bytes(%struct.stream_s* %56, i8* null, i32 0) #5
  %57 = load i32, i32* %entry_count, align 4, !tbaa !5
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %entry_count, align 4, !tbaa !5
  %58 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %58, i32 0, i32 2
  %59 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %next, align 8, !tbaa !75
  store %struct.gx_device_xps_f2i_s* %59, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %60 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %call11 = call i64 @stell(%struct.stream_s* %61) #5
  store i64 %call11, i64* %pos_after_cd, align 8, !tbaa !68
  %62 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u32(%struct.stream_s* %62, i64 101010256) #5
  %63 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %63, i16 zeroext 0) #5
  %64 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %64, i16 zeroext 0) #5
  %65 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %66 = load i32, i32* %entry_count, align 4, !tbaa !5
  %conv12 = trunc i32 %66 to i16
  call void @put_u16(%struct.stream_s* %65, i16 zeroext %conv12) #5
  %67 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %68 = load i32, i32* %entry_count, align 4, !tbaa !5
  %conv13 = trunc i32 %68 to i16
  call void @put_u16(%struct.stream_s* %67, i16 zeroext %conv13) #5
  %69 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %70 = load i64, i64* %pos_after_cd, align 8, !tbaa !68
  %71 = load i64, i64* %pos_before_cd, align 8, !tbaa !68
  %sub = sub nsw i64 %70, %71
  call void @put_u32(%struct.stream_s* %69, i64 %sub) #5
  %72 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %73 = load i64, i64* %pos_before_cd, align 8, !tbaa !68
  call void @put_u32(%struct.stream_s* %72, i64 %73) #5
  %74 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %74, i16 zeroext 0) #5
  %75 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_bytes(%struct.stream_s* %75, i8* null, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.stream_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i64* %pos_after_cd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i64* %pos_before_cd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %entry_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @gdev_vector_close_file(%struct.gx_device_vector_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zip_close_all_archive_files(%struct.gx_device_xps_s* %xps_dev) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %f2i = alloca %struct.gx_device_xps_f2i_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %f2i1 = getelementptr inbounds %struct.gx_device_xps_s, %struct.gx_device_xps_s* %1, i32 0, i32 67
  %2 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i1, align 8, !tbaa !53
  store %struct.gx_device_xps_f2i_s* %2, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %3 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_xps_f2i_s* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %filename = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %filename, align 8, !tbaa !73
  %call = call i32 @zip_close_archive_file(%struct.gx_device_xps_s* %5, i8* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %10 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_device_xps_f2i_s, %struct.gx_device_xps_f2i_s* %10, i32 0, i32 2
  %11 = load %struct.gx_device_xps_f2i_s*, %struct.gx_device_xps_f2i_s** %next, align 8, !tbaa !75
  store %struct.gx_device_xps_f2i_s* %11, %struct.gx_device_xps_f2i_s** %f2i, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2

cleanup.2:                                        ; preds = %while.end, %cleanup
  %13 = bitcast %struct.gx_device_xps_f2i_s** %f2i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @stell(%struct.stream_s*) #1

; Function Attrs: nounwind uwtable
define internal void @put_u32(%struct.stream_s* %zs, i64 %l) #0 {
entry:
  %zs.addr = alloca %struct.stream_s*, align 8
  %l.addr = alloca i64, align 8
  store %struct.stream_s* %zs, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  store i64 %l, i64* %l.addr, align 8, !tbaa !68
  %0 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !91
  %2 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !93
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !91
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !91
  %6 = load i64, i64* %l.addr, align 8, !tbaa !68
  %conv = trunc i64 %6 to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !91
  store i8 %conv, i8* %8, align 1, !tbaa !61
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %10 = load i64, i64* %l.addr, align 8, !tbaa !68
  %conv9 = trunc i64 %10 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv9) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %12 = load i8*, i8** %ptr12, align 8, !tbaa !91
  %13 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %limit15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 2
  %14 = load i8*, i8** %limit15, align 8, !tbaa !93
  %cmp16 = icmp uge i8* %12, %14
  br i1 %cmp16, label %cond.false.27, label %cond.true.18

cond.true.18:                                     ; preds = %cond.end
  %15 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 1
  %16 = load i8*, i8** %ptr21, align 8, !tbaa !91
  %incdec.ptr22 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr22, i8** %ptr21, align 8, !tbaa !91
  %17 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr = lshr i64 %17, 8
  %conv23 = trunc i64 %shr to i8
  %18 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w25 = bitcast %union.stream_cursor_s* %cursor24 to %struct.stream_cursor_write_s*
  %ptr26 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w25, i32 0, i32 1
  %19 = load i8*, i8** %ptr26, align 8, !tbaa !91
  store i8 %conv23, i8* %19, align 1, !tbaa !61
  br label %cond.end.31

cond.false.27:                                    ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %21 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr28 = lshr i64 %21, 8
  %conv29 = trunc i64 %shr28 to i8
  %call30 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv29) #5
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.18
  %cond32 = phi i32 [ 0, %cond.true.18 ], [ %call30, %cond.false.27 ]
  %22 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w34 = bitcast %union.stream_cursor_s* %cursor33 to %struct.stream_cursor_write_s*
  %ptr35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w34, i32 0, i32 1
  %23 = load i8*, i8** %ptr35, align 8, !tbaa !91
  %24 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %limit38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 2
  %25 = load i8*, i8** %limit38, align 8, !tbaa !93
  %cmp39 = icmp uge i8* %23, %25
  br i1 %cmp39, label %cond.false.51, label %cond.true.41

cond.true.41:                                     ; preds = %cond.end.31
  %26 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w43 = bitcast %union.stream_cursor_s* %cursor42 to %struct.stream_cursor_write_s*
  %ptr44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w43, i32 0, i32 1
  %27 = load i8*, i8** %ptr44, align 8, !tbaa !91
  %incdec.ptr45 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr45, i8** %ptr44, align 8, !tbaa !91
  %28 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr46 = lshr i64 %28, 16
  %conv47 = trunc i64 %shr46 to i8
  %29 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w49 = bitcast %union.stream_cursor_s* %cursor48 to %struct.stream_cursor_write_s*
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w49, i32 0, i32 1
  %30 = load i8*, i8** %ptr50, align 8, !tbaa !91
  store i8 %conv47, i8* %30, align 1, !tbaa !61
  br label %cond.end.55

cond.false.51:                                    ; preds = %cond.end.31
  %31 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %32 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr52 = lshr i64 %32, 16
  %conv53 = trunc i64 %shr52 to i8
  %call54 = call i32 @spputc(%struct.stream_s* %31, i8 zeroext %conv53) #5
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.51, %cond.true.41
  %cond56 = phi i32 [ 0, %cond.true.41 ], [ %call54, %cond.false.51 ]
  %33 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %w58 = bitcast %union.stream_cursor_s* %cursor57 to %struct.stream_cursor_write_s*
  %ptr59 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w58, i32 0, i32 1
  %34 = load i8*, i8** %ptr59, align 8, !tbaa !91
  %35 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w61 = bitcast %union.stream_cursor_s* %cursor60 to %struct.stream_cursor_write_s*
  %limit62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w61, i32 0, i32 2
  %36 = load i8*, i8** %limit62, align 8, !tbaa !93
  %cmp63 = icmp uge i8* %34, %36
  br i1 %cmp63, label %cond.false.75, label %cond.true.65

cond.true.65:                                     ; preds = %cond.end.55
  %37 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %w67 = bitcast %union.stream_cursor_s* %cursor66 to %struct.stream_cursor_write_s*
  %ptr68 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w67, i32 0, i32 1
  %38 = load i8*, i8** %ptr68, align 8, !tbaa !91
  %incdec.ptr69 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr69, i8** %ptr68, align 8, !tbaa !91
  %39 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr70 = lshr i64 %39, 24
  %conv71 = trunc i64 %shr70 to i8
  %40 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor72 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %w73 = bitcast %union.stream_cursor_s* %cursor72 to %struct.stream_cursor_write_s*
  %ptr74 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w73, i32 0, i32 1
  %41 = load i8*, i8** %ptr74, align 8, !tbaa !91
  store i8 %conv71, i8* %41, align 1, !tbaa !61
  br label %cond.end.79

cond.false.75:                                    ; preds = %cond.end.55
  %42 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %43 = load i64, i64* %l.addr, align 8, !tbaa !68
  %shr76 = lshr i64 %43, 24
  %conv77 = trunc i64 %shr76 to i8
  %call78 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext %conv77) #5
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.75, %cond.true.65
  %cond80 = phi i32 [ 0, %cond.true.65 ], [ %call78, %cond.false.75 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_u16(%struct.stream_s* %zs, i16 zeroext %s) #0 {
entry:
  %zs.addr = alloca %struct.stream_s*, align 8
  %s.addr = alloca i16, align 2
  store %struct.stream_s* %zs, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  store i16 %s, i16* %s.addr, align 2, !tbaa !94
  %0 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !91
  %2 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !93
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !91
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !91
  %6 = load i16, i16* %s.addr, align 2, !tbaa !94
  %conv = trunc i16 %6 to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !91
  store i8 %conv, i8* %8, align 1, !tbaa !61
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %10 = load i16, i16* %s.addr, align 2, !tbaa !94
  %conv9 = trunc i16 %10 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv9) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %12 = load i8*, i8** %ptr12, align 8, !tbaa !91
  %13 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %limit15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 2
  %14 = load i8*, i8** %limit15, align 8, !tbaa !93
  %cmp16 = icmp uge i8* %12, %14
  br i1 %cmp16, label %cond.false.28, label %cond.true.18

cond.true.18:                                     ; preds = %cond.end
  %15 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 1
  %16 = load i8*, i8** %ptr21, align 8, !tbaa !91
  %incdec.ptr22 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr22, i8** %ptr21, align 8, !tbaa !91
  %17 = load i16, i16* %s.addr, align 2, !tbaa !94
  %conv23 = zext i16 %17 to i32
  %shr = ashr i32 %conv23, 8
  %conv24 = trunc i32 %shr to i8
  %18 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_write_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w26, i32 0, i32 1
  %19 = load i8*, i8** %ptr27, align 8, !tbaa !91
  store i8 %conv24, i8* %19, align 1, !tbaa !61
  br label %cond.end.33

cond.false.28:                                    ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %21 = load i16, i16* %s.addr, align 2, !tbaa !94
  %conv29 = zext i16 %21 to i32
  %shr30 = ashr i32 %conv29, 8
  %conv31 = trunc i32 %shr30 to i8
  %call32 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv31) #5
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.28, %cond.true.18
  %cond34 = phi i32 [ 0, %cond.true.18 ], [ %call32, %cond.false.28 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_bytes(%struct.stream_s* %zs, i8* %buf, i32 %len) #0 {
entry:
  %zs.addr = alloca %struct.stream_s*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.stream_s* %zs, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %zs.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 %3, i32* %used) #5
  %4 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zip_close_archive_file(%struct.gx_device_xps_s* %xps_dev, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %xps_dev.addr = alloca %struct.gx_device_xps_s*, align 8
  %filename.addr = alloca i8*, align 8
  %info = alloca %struct.gx_device_xps_zinfo_s*, align 8
  %data = alloca %struct.gx_device_xps_zdata_s, align 8
  %buf = alloca [4 x i8], align 1
  %crc = alloca i64, align 8
  %f = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fp = alloca %struct._IO_FILE*, align 8
  %nread = alloca i32, align 4
  %fp22 = alloca %struct._IO_FILE*, align 8
  %nread29 = alloca i64, align 8
  store %struct.gx_device_xps_s* %xps_dev, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_xps_zinfo_s* @zip_look_up_file_info(%struct.gx_device_xps_s* %1, i8* %2) #5
  store %struct.gx_device_xps_zinfo_s* %call, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_xps_zdata_s* %data to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %4, i32 0, i32 2
  %5 = bitcast %struct.gx_device_xps_zdata_s* %data to i8*
  %6 = bitcast %struct.gx_device_xps_zdata_s* %data1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false), !tbaa.struct !95
  %7 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i64* %crc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i64 0, i64* %crc, align 8, !tbaa !68
  %9 = bitcast %struct.stream_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_xps_s*, %struct.gx_device_xps_s** %xps_dev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_xps_s* %10 to %struct.gx_device_vector_s*
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %11, i32 0, i32 47
  %12 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !86
  store %struct.stream_s* %12, %struct.stream_s** %f, align 8, !tbaa !1
  %13 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_xps_zinfo_s* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 1
  %14 = load i64, i64* %count, align 8, !tbaa !96
  %cmp2 = icmp uge i64 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %15 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %fp4 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8, !tbaa !97
  store %struct._IO_FILE* %16, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %17 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %call5 = call i64 @crc32(i64 0, i8* null, i32 0) #5
  store i64 %call5, i64* %crc, align 8, !tbaa !68
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  call void @rewind(%struct._IO_FILE* %18) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call6 = call i32 @feof(%struct._IO_FILE* %19) #6
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call7 = call i64 @fread(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %20) #5
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %nread, align 4, !tbaa !5
  %21 = load i64, i64* %crc, align 8, !tbaa !68
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %nread, align 4, !tbaa !5
  %call9 = call i64 @crc32(i64 %21, i8* %arraydecay8, i32 %22) #5
  store i64 %call9, i64* %crc, align 8, !tbaa !68
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  br label %if.end.10

if.end.10:                                        ; preds = %while.end, %if.end
  %25 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %call11 = call i64 @stell(%struct.stream_s* %25) #5
  %26 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %current_pos = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %26, i32 0, i32 3
  store i64 %call11, i64* %current_pos, align 8, !tbaa !90
  %27 = load i64, i64* %crc, align 8, !tbaa !68
  %28 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %CRC = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %28, i32 0, i32 0
  store i64 %27, i64* %CRC, align 8, !tbaa !89
  %call12 = call zeroext i16 @make_dos_date(i32 2012, i32 2, i32 16) #5
  %29 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %date = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %29, i32 0, i32 4
  store i16 %call12, i16* %date, align 2, !tbaa !88
  %call13 = call zeroext i16 @make_dos_time(i32 9, i32 15, i32 0) #5
  %30 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %time = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %30, i32 0, i32 5
  store i16 %call13, i16* %time, align 2, !tbaa !87
  %31 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u32(%struct.stream_s* %31, i64 67324752) #5
  %32 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %32, i16 zeroext 20) #5
  %33 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %33, i16 zeroext 0) #5
  %34 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %34, i16 zeroext 0) #5
  %35 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %36 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %time14 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %36, i32 0, i32 5
  %37 = load i16, i16* %time14, align 2, !tbaa !87
  call void @put_u16(%struct.stream_s* %35, i16 zeroext %37) #5
  %38 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %39 = load %struct.gx_device_xps_zinfo_s*, %struct.gx_device_xps_zinfo_s** %info, align 8, !tbaa !1
  %date15 = getelementptr inbounds %struct.gx_device_xps_zinfo_s, %struct.gx_device_xps_zinfo_s* %39, i32 0, i32 4
  %40 = load i16, i16* %date15, align 2, !tbaa !88
  call void @put_u16(%struct.stream_s* %38, i16 zeroext %40) #5
  %41 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %42 = load i64, i64* %crc, align 8, !tbaa !68
  call void @put_u32(%struct.stream_s* %41, i64 %42) #5
  %43 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %count16 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 1
  %44 = load i64, i64* %count16, align 8, !tbaa !96
  call void @put_u32(%struct.stream_s* %43, i64 %44) #5
  %45 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %count17 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 1
  %46 = load i64, i64* %count17, align 8, !tbaa !96
  call void @put_u32(%struct.stream_s* %45, i64 %46) #5
  %47 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %48 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call18 = call i64 @strlen(i8* %48) #7
  %conv19 = trunc i64 %call18 to i16
  call void @put_u16(%struct.stream_s* %47, i16 zeroext %conv19) #5
  %49 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_u16(%struct.stream_s* %49, i16 zeroext 0) #5
  %50 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %51 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call20 = call i64 @strlen(i8* %52) #7
  %conv21 = trunc i64 %call20 to i32
  call void @put_bytes(%struct.stream_s* %50, i8* %51, i32 %conv21) #5
  %53 = bitcast %struct._IO_FILE** %fp22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %fp23 = getelementptr inbounds %struct.gx_device_xps_zdata_s, %struct.gx_device_xps_zdata_s* %data, i32 0, i32 0
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp23, align 8, !tbaa !97
  store %struct._IO_FILE* %54, %struct._IO_FILE** %fp22, align 8, !tbaa !1
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8, !tbaa !1
  call void @rewind(%struct._IO_FILE* %55) #5
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %if.end.10
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8, !tbaa !1
  %call25 = call i32 @feof(%struct._IO_FILE* %56) #6
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %while.body.28, label %while.end.34

while.body.28:                                    ; preds = %while.cond.24
  %57 = bitcast i64* %nread29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #2
  %arraydecay30 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8, !tbaa !1
  %call31 = call i64 @fread(i8* %arraydecay30, i64 1, i64 4, %struct._IO_FILE* %58) #5
  store i64 %call31, i64* %nread29, align 8, !tbaa !68
  %59 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  %arraydecay32 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %60 = load i64, i64* %nread29, align 8, !tbaa !68
  %conv33 = trunc i64 %60 to i32
  call void @put_bytes(%struct.stream_s* %59, i8* %arraydecay32, i32 %conv33) #5
  %61 = bitcast i64* %nread29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  br label %while.cond.24

while.end.34:                                     ; preds = %while.cond.24
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8, !tbaa !1
  %call35 = call i32 @fclose(%struct._IO_FILE* %62) #5
  %63 = bitcast %struct._IO_FILE** %fp22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load %struct.stream_s*, %struct.stream_s** %f, align 8, !tbaa !1
  call void @put_bytes(%struct.stream_s* %64, i8* null, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.34, %if.then
  %65 = bitcast %struct.stream_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i64* %crc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast %struct.gx_device_xps_zdata_s* %data to i8*
  call void @llvm.lifetime.end(i64 16, i8* %68) #2
  %69 = bitcast %struct.gx_device_xps_zinfo_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @crc32(i64, i8*, i32) #1

declare void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @make_dos_date(i32 %year, i32 %month, i32 %day) #0 {
entry:
  %year.addr = alloca i32, align 4
  %month.addr = alloca i32, align 4
  %day.addr = alloca i32, align 4
  %delta_1980 = alloca i32, align 4
  store i32 %year, i32* %year.addr, align 4, !tbaa !5
  store i32 %month, i32* %month.addr, align 4, !tbaa !5
  store i32 %day, i32* %day.addr, align 4, !tbaa !5
  %0 = bitcast i32* %delta_1980 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %year.addr, align 4, !tbaa !5
  %sub = sub i32 %1, 1980
  store i32 %sub, i32* %delta_1980, align 4, !tbaa !5
  %2 = load i32, i32* %delta_1980, align 4, !tbaa !5
  %shl = shl i32 %2, 9
  %3 = load i32, i32* %month.addr, align 4, !tbaa !5
  %shl1 = shl i32 %3, 5
  %or = or i32 %shl, %shl1
  %4 = load i32, i32* %day.addr, align 4, !tbaa !5
  %or2 = or i32 %or, %4
  %conv = trunc i32 %or2 to i16
  %5 = bitcast i32* %delta_1980 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret i16 %conv
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @make_dos_time(i32 %hour, i32 %min, i32 %sec) #0 {
entry:
  %hour.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %sec.addr = alloca i32, align 4
  store i32 %hour, i32* %hour.addr, align 4, !tbaa !5
  store i32 %min, i32* %min.addr, align 4, !tbaa !5
  store i32 %sec, i32* %sec.addr, align 4, !tbaa !5
  %0 = load i32, i32* %hour.addr, align 4, !tbaa !5
  %shl = shl i32 %0, 11
  %1 = load i32, i32* %min.addr, align 4, !tbaa !5
  %shl1 = shl i32 %1, 5
  %or = or i32 %shl, %shl1
  %2 = load i32, i32* %sec.addr, align 4, !tbaa !5
  %shr = lshr i32 %2, 1
  %or2 = or i32 %or, %shr
  %conv = trunc i32 %or2 to i16
  ret i16 %conv
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

declare i32 @gdev_vector_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare void @eprintf_program_ident(i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare i32 @errprintf_nomem(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gdev_vector_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_path_is_void(%struct.gx_path_s*) #1

declare i32 @gdev_vector_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!9 = !{!8, !2, i64 40}
!10 = !{!11, !2, i64 24}
!11 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!24, !2, i64 1728}
!24 = !{!"gx_device_vector_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !25, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !38, i64 7512, !38, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !31, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840}
!25 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !26, i64 24, !6, i64 128, !30, i64 132, !6, i64 168, !31, i64 176, !31, i64 192, !6, i64 208, !6, i64 212, !15, i64 216, !3, i64 220, !33, i64 224, !33, i64 228, !34, i64 232, !13, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !27, i64 296, !35, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !27, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !36, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !37, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !37, i64 1336}
!26 = !{!"gx_line_params_s", !27, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !6, i64 36, !28, i64 40, !29, i64 64}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!29 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !27, i64 12, !6, i64 16, !27, i64 20, !6, i64 24, !6, i64 28, !27, i64 32}
!30 = !{!"gs_matrix_fixed_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!31 = !{!"gs_point_s", !32, i64 0, !32, i64 8}
!32 = !{!"double", !3, i64 0}
!33 = !{!"gs_transparency_source_s", !27, i64 0}
!34 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!35 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!36 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!37 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !3, i64 24}
!38 = !{!"gx_hl_saved_color_s", !13, i64 0, !13, i64 8, !6, i64 16, !39, i64 24, !41, i64 288}
!39 = !{!"gs_client_color_s", !2, i64 0, !40, i64 8}
!40 = !{!"gs_paint_color_s", !3, i64 0}
!41 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !42, i64 336}
!42 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!43 = !{!24, !2, i64 1736}
!44 = !{!45, !6, i64 8864}
!45 = !{!"gx_device_xps_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !25, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !38, i64 7512, !38, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !31, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840, !2, i64 8848, !2, i64 8856, !6, i64 8864, !13, i64 8872, !13, i64 8880, !32, i64 8888, !3, i64 8896, !3, i64 8900, !32, i64 8904, !6, i64 8912, !3, i64 8916}
!46 = !{!45, !13, i64 8872}
!47 = !{!45, !13, i64 8880}
!48 = !{!45, !32, i64 8888}
!49 = !{!45, !3, i64 8896}
!50 = !{!45, !3, i64 8900}
!51 = !{!45, !32, i64 8904}
!52 = !{!45, !6, i64 8912}
!53 = !{!45, !2, i64 8848}
!54 = !{!45, !2, i64 8856}
!55 = !{!45, !2, i64 5840}
!56 = !{!24, !6, i64 8816}
!57 = !{!58, !2, i64 0}
!58 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!59 = !{!58, !6, i64 8}
!60 = !{!58, !6, i64 12}
!61 = !{!3, !3, i64 0}
!62 = !{!63, !2, i64 0}
!63 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!64 = !{!65, !2, i64 56}
!65 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!66 = !{!27, !27, i64 0}
!67 = !{!32, !32, i64 0}
!68 = !{!13, !13, i64 0}
!69 = !{!70, !2, i64 0}
!70 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !42, i64 352, !6, i64 360, !39, i64 368, !71, i64 632}
!71 = !{!"_mask", !72, i64 0, !13, i64 8, !2, i64 16}
!72 = !{!"mp_", !6, i64 0, !6, i64 4}
!73 = !{!74, !2, i64 0}
!74 = !{!"gx_device_xps_f2i_s", !2, i64 0, !2, i64 8, !2, i64 16}
!75 = !{!74, !2, i64 16}
!76 = !{!74, !2, i64 8}
!77 = !{!78, !13, i64 24}
!78 = !{!"gx_device_xps_zinfo_s", !13, i64 0, !13, i64 8, !79, i64 16, !13, i64 32, !15, i64 40, !15, i64 42}
!79 = !{!"gx_device_xps_zdata_s", !2, i64 0, !13, i64 8}
!80 = !{!81, !2, i64 64}
!81 = !{!"gs_memory_s", !2, i64 0, !82, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!82 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!83 = !{!81, !2, i64 24}
!84 = !{!78, !2, i64 16}
!85 = !{!81, !2, i64 200}
!86 = !{!24, !2, i64 5848}
!87 = !{!78, !15, i64 42}
!88 = !{!78, !15, i64 40}
!89 = !{!78, !13, i64 0}
!90 = !{!78, !13, i64 32}
!91 = !{!92, !2, i64 8}
!92 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!93 = !{!92, !2, i64 16}
!94 = !{!15, !15, i64 0}
!95 = !{i64 0, i64 8, !1, i64 8, i64 8, !68}
!96 = !{!79, !13, i64 8}
!97 = !{!79, !2, i64 0}
