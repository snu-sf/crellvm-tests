; ModuleID = './gdevpx.bc'
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_pclxl_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.pal_, %struct.pts_, %struct.ch_, i32, i32, i32, i32, double, double, i32, i32 }
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
%struct.pal_ = type { i32, [768 x i8] }
%struct.pts_ = type { %struct.gs_int_point_s, i32, i32, [40 x %struct.gs_int_point_s] }
%struct.ch_ = type { [600 x i16], [400 x %struct.cd_], i32, i32, i32, i64 }
%struct.cd_ = type { i64, i32 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.pclxl_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32, %struct.gs_matrix_s, %struct.ir_, i32 }
%struct.ir_ = type { i8*, i32, i32, i32 }
%struct.gdev_vector_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32 }
%struct.stream_RLE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i64, i32 }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }

@.str = private unnamed_addr constant [16 x i8] c"gx_device_pclxl\00", align 1
@st_device_pclxl = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 17800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_pclxl_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_pclxl_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"pxlmono\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_pxlmono_device = constant %struct.gx_device_pclxl_s { i32 17800, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_pclxl to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pclxl_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @pclxl_output_page, i32 (%struct.gx_device_s*)* @pclxl_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gdev_vector_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @pclxl_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @pclxl_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pclxl_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pclxl_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @pclxl_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @pclxl_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @pclxl_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gx_device_vector_procs_s* null, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, %struct.stream_s* null, i8* null, i32 0, i32 0, %struct.gs_imager_state_s zeroinitializer, float* null, i32 0, i32 0, i32 0, %struct.gx_hl_saved_color_s zeroinitializer, %struct.gx_hl_saved_color_s zeroinitializer, i64 0, i64 0, i32 0, i32 0, %struct.gs_point_s zeroinitializer, i32 0, %struct.gx_device_bbox_s* null, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pal_ zeroinitializer, %struct.pts_ zeroinitializer, %struct.ch_ zeroinitializer, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, i32 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"pxlcolor\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_pxlcolor_device = constant %struct.gx_device_pclxl_s { i32 17800, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_pclxl to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @pclxl_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @pclxl_output_page, i32 (%struct.gx_device_s*)* @pclxl_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gdev_vector_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @pclxl_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @pclxl_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pclxl_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @pclxl_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gdev_vector_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @pclxl_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @pclxl_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @pclxl_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gx_device_vector_procs_s* null, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, %struct.stream_s* null, i8* null, i32 0, i32 0, %struct.gs_imager_state_s zeroinitializer, float* null, i32 0, i32 0, i32 0, %struct.gx_hl_saved_color_s zeroinitializer, %struct.gx_hl_saved_color_s zeroinitializer, i64 0, i64 0, i32 0, i32 0, %struct.gs_point_s zeroinitializer, i32 0, %struct.gx_device_bbox_s* null, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pal_ zeroinitializer, %struct.pts_ zeroinitializer, %struct.ch_ zeroinitializer, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00, double 0.000000e+00, i32 0, i32 0 }, align 8
@st_device_vector = external constant %struct.gs_memory_struct_type_s, align 8
@pclxl_vector_procs = internal constant %struct.gx_device_vector_procs_s { i32 (%struct.gx_device_vector_s*)* @pclxl_beginpage, i32 (%struct.gx_device_vector_s*, double)* @pclxl_setlinewidth, i32 (%struct.gx_device_vector_s*, i32)* @pclxl_setlinecap, i32 (%struct.gx_device_vector_s*, i32)* @pclxl_setlinejoin, i32 (%struct.gx_device_vector_s*, double)* @pclxl_setmiterlimit, i32 (%struct.gx_device_vector_s*, float*, i32, double)* @pclxl_setdash, i32 (%struct.gx_device_vector_s*, double)* @gdev_vector_setflat, i32 (%struct.gx_device_vector_s*, i32, i32)* @pclxl_setlogop, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pclxl_can_handle_hl_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pclxl_setfillcolor, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @pclxl_setstrokecolor, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)* @gdev_vector_dopath, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)* @pclxl_dorect, i32 (%struct.gx_device_vector_s*, i32)* @pclxl_beginpath, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @pclxl_moveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @pclxl_lineto, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)* @pclxl_curveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @pclxl_closepath, i32 (%struct.gx_device_vector_s*, i32)* @pclxl_endpath }, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Igoring invalid linejoin enumerator %d\0A\00", align 1
@pclxl_setdash.nac_ = internal constant [4 x i8] c"\C0\00\F8N", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@gx_dc_type_null = external constant %struct.gx_device_color_type_s*, align 8
@gx_dc_type_none = external constant %struct.gx_device_color_type_s*, align 8
@pclxl_dorect.cr_ = internal constant [7 x i8] c"\F8B\C0\00\F8Sh", align 1
@pclxl_endpath.scr_ = internal constant [5 x i8] c"\C0\00\F8Sb", align 1
@pclxl_copy_mono.mi_ = internal constant [8 x i8] c"\C0\00\F8b\C0\01\F8d", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@pclxl_define_bitmap_font.bfh_ = internal constant [29 x i8] c"\F8\A8\C0\00\F8\A9O\C1\18\00\F8\A7P\FB\18\00\00\00\00\FE\00\02\00BR\00\00\00\04", align 16
@pclxl_define_bitmap_font.efh_ = internal constant [7 x i8] c"\FF\FF\00\00\00\00Q", align 1
@.str.7 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@pclxl_set_font.sf_ = internal constant [12 x i8] c"\F8\A8\C0\01\F8\A6\C1\00\00\F8\AAo", align 1
@pclxl_set_color_palette.csp_ = internal constant [7 x i8] c"\F8\03\C0\02\F8\02\C8", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"pclxl_write_image_data\00", align 1
@s_RLE_template = external constant %struct.stream_template_s, align 8
@.str.9 = private unnamed_addr constant [6 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"pclxl_write_image_data_DeltaRow(buf)\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"pclxl_write_image_data_DeltaRow(prow)\00", align 1
@pclxl_copy_color.ci_ = internal constant [6 x i8] c"\F8b\C0\00\F8d", align 1
@eBit_values = internal constant [9 x i8] c"\00\00\00\00\01\00\00\00\02", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\FF\00\00", align 1
@pclxl_fill_mask.mi_ = internal constant [8 x i8] c"\C0\00\F8b\C0\01\F8d", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"pclxl_begin_image\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"pclxl_begin_image(rows)\00", align 1
@pclxl_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @pclxl_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @pclxl_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"\00\FF\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"pclxl_image_enum_t\00", align 1
@pclxl_image_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_vector_image_enum, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pclxl_image_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_pclxl_image_enum = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pclxl_image_enum_reloc_ptrs to i8*) }, align 8
@st_vector_image_enum = external constant %struct.gs_memory_struct_type_s, align 8
@pclxl_image_enum_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 632 }], align 2
@pclxl_image_write_rows.ci_ = internal constant [6 x i8] c"\F8b\C0\00\F8d", align 1
@pclxl_image_write_rows.ii_ = internal constant [6 x i8] c"\F8b\C0\01\F8d", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"pclxl_end_image(rows)\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"MediaPosition\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Tumble\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"CompressMode\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_pclxl_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %6) #7
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @device_pclxl_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
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
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_state_s* %3) #7
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %5, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %9, i32 0, i32 43
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %v_memory, align 8, !tbaa !23
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 44
  store %struct.gx_device_vector_procs_s* @pclxl_vector_procs, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !43
  %11 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %11, i32 512, i32 2) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_page_init(%struct.gx_device_pclxl_s* %14) #7
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 47
  %16 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !44
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 @px_write_file_header(%struct.stream_s* %16, %struct.gx_device_s* %17) #7
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %media_size = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 67
  store i32 225, i32* %media_size, align 4, !tbaa !45
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %19, i32 0, i32 84
  %20 = bitcast %struct.ch_* %chars to i8*
  %call2 = call i8* @memset(i8* %20, i32 0, i64 7624) #8
  %21 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %chars3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %21, i32 0, i32 84
  %next_out = getelementptr inbounds %struct.ch_, %struct.ch_* %chars3, i32 0, i32 3
  store i32 2, i32* %next_out, align 4, !tbaa !50
  %22 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %chars4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %22, i32 0, i32 84
  %next_in = getelementptr inbounds %struct.ch_, %struct.ch_* %chars4, i32 0, i32 2
  store i32 2, i32* %next_in, align 4, !tbaa !51
  %23 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %23, i32 0, i32 72
  store i32 0, i32* %MediaPosition_set, align 4, !tbaa !52
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 75
  store i32 0, i32* %MediaType_set, align 4, !tbaa !53
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_old = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 70
  store i32 1, i32* %MediaPosition_old, align 4, !tbaa !54
  %26 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %26, i32 0, i32 71
  store i32 1, i32* %MediaPosition, align 4, !tbaa !55
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_old = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %27, i32 0, i32 73
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType_old, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !56
  %28 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %28, i32 0, i32 74
  %arrayidx5 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1, !tbaa !56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 63
  %6 = load i32, i32* %in_page, align 4, !tbaa !57
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_vector_s*
  %call = call i32 @pclxl_beginpage(%struct.gx_device_vector_s* %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 47
  %10 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !58
  store %struct.stream_s* %10, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %11, i32 %12, i32 49) #7
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %13, i8 zeroext 68) #7
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 14
  %flush2 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %15 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush2, align 8, !tbaa !59
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call3 = call i32 %15(%struct.stream_s* %16) #7
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_page_init(%struct.gx_device_pclxl_s* %17) #7
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 46
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !64
  %call4 = call i32 @ferror(%struct._IO_FILE* %19) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %22 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %call8 = call i32 @gx_finish_output_page(%struct.gx_device_s* %20, i32 %21, i32 %22) #7
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.7
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_s* %24 to %struct.gx_device_vector_s*
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %25, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  %call11 = call i32 @gx_outputfile_is_separate_pages(i8* %arraydecay, %struct.gs_memory_s* %27) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.10
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call14 = call i32 @pclxl_close_device(%struct.gx_device_s* %28) #7
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.13
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call18 = call i32 @pclxl_open_device(%struct.gx_device_s* %30) #7
  store i32 %call18, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %if.end.10
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.16, %if.then.9, %if.then.6
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_close_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %file1 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %4, i32 0, i32 46
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8, !tbaa !64
  store %struct._IO_FILE* %5, %struct._IO_FILE** %file, align 8, !tbaa !1
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 47
  %7 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !58
  %cmp = icmp ne %struct.stream_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %8, i32 0, i32 47
  %9 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !58
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %10 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !59
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %strm3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 47
  %12 = load %struct.stream_s*, %struct.stream_s** %strm3, align 8, !tbaa !58
  %call = call i32 %10(%struct.stream_s* %12) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 63
  %14 = load i32, i32* %in_page, align 4, !tbaa !57
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call5 = call i32 @fputc(i32 68, %struct._IO_FILE* %15) #7
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call7 = call i32 @px_write_file_trailer(%struct._IO_FILE* %16) #7
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_vector_s*
  %call8 = call i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %18) #7
  %19 = bitcast %struct._IO_FILE** %file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %call8
}

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gdev_vector_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %color0 = alloca i64, align 8
  %color1 = alloca i64, align 8
  %white = alloca i64, align 8
  %black = alloca i64, align 8
  %lop = alloca i32, align 4
  %palette = alloca [6 x i8], align 1
  %palette_size = alloca i32, align 4
  %color_space = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dcolor = alloca %struct.gx_device_color_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !65
  store i64 %one, i64* %one.addr, align 8, !tbaa !65
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %5, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %color0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i64, i64* %zero.addr, align 8, !tbaa !65
  store i64 %9, i64* %color0, align 8, !tbaa !65
  %10 = bitcast i64* %color1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i64, i64* %one.addr, align 8, !tbaa !65
  store i64 %11, i64* %color1, align 8, !tbaa !65
  %12 = bitcast i64* %white to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !66
  %conv = zext i16 %14 to i32
  %shl = shl i32 1, %conv
  %sub = sub nsw i32 %shl, 1
  %conv1 = sext i32 %sub to i64
  store i64 %conv1, i64* %white, align 8, !tbaa !65
  %15 = bitcast i64* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store i64 0, i64* %black, align 8, !tbaa !65
  %16 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast [6 x i8]* %palette to i8*
  call void @llvm.lifetime.start(i64 6, i8* %17) #2
  %18 = bitcast i32* %palette_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %color_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %20, %21
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %do.body.2
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %22, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 %26, %25
  store i32 %sub7, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %29, %28
  store i32 %add11, i32* %h.addr, align 4, !tbaa !5
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %31 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %30, %31
  %32 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !65
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.2
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 13
  %35 = load i32, i32* %width, align 4, !tbaa !67
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %35, %36
  %cmp15 = icmp sgt i32 %33, %sub14
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 13
  %38 = load i32, i32* %width18, align 4, !tbaa !67
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %38, %39
  store i32 %sub19, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 14
  %42 = load i32, i32* %height, align 4, !tbaa !68
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %42, %43
  %cmp22 = icmp sgt i32 %40, %sub21
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.end
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 14
  %45 = load i32, i32* %height25, align 4, !tbaa !68
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub26 = sub nsw i32 %45, %46
  store i32 %sub26, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.end
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp28 = icmp sle i32 %47, 0
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %48, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.33:                                        ; preds = %lor.lhs.false
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %49 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %49, %struct.gx_clip_path_s* null) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %50, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end.35
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.39:                                        ; preds = %do.end.35
  %52 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and = and i32 %52, 7
  %cmp40 = icmp ne i32 %and, 0
  br i1 %cmp40, label %if.then.48, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.39
  %53 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %53, 1
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.42
  %54 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %54, 1
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false.42, %if.end.39
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %57 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %58 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %59 = load i64, i64* %id.addr, align 8, !tbaa !65
  %60 = load i32, i32* %x.addr, align 4, !tbaa !5
  %61 = load i32, i32* %y.addr, align 4, !tbaa !5
  %62 = load i32, i32* %w.addr, align 4, !tbaa !5
  %63 = load i32, i32* %h.addr, align 4, !tbaa !5
  %64 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %65 = load i64, i64* %one.addr, align 8, !tbaa !65
  %call49 = call i32 @gx_default_copy_mono(%struct.gx_device_s* %55, i8* %56, i32 %57, i32 %58, i64 %59, i32 %60, i32 %61, i32 %62, i32 %63, i64 %64, i64 %65) #7
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.50:                                        ; preds = %lor.lhs.false.45
  %66 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %67 = load i32, i32* %x.addr, align 4, !tbaa !5
  %68 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call51 = call i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %66, i32 %67, i32 %68) #7
  %69 = load i64, i64* %id.addr, align 8, !tbaa !65
  %cmp52 = icmp ne i64 %69, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %if.end.50
  %70 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %cmp54 = icmp eq i64 %70, -1
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %71 = load i64, i64* %one.addr, align 8, !tbaa !65
  %cmp57 = icmp ne i64 %71, -1
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.74

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %72 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %72, 0
  br i1 %cmp60, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %land.lhs.true.59
  %73 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %73) #2
  %74 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call63 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %74, i32 752) #7
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %75, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.then.62
  %76 = load i64, i64* %one.addr, align 8, !tbaa !65
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %76, i64* %pure, align 8, !tbaa !65
  %77 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* %77, %struct.gx_device_color_type_s** %type, align 8, !tbaa !69
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !73
  %78 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call68 = call i32 @pclxl_setfillcolor(%struct.gx_device_vector_s* %78, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor) #7
  %79 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %80 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %81 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %82 = load i64, i64* %id.addr, align 8, !tbaa !65
  %83 = load i32, i32* %w.addr, align 4, !tbaa !5
  %84 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call69 = call i32 @pclxl_copy_text_char(%struct.gx_device_pclxl_s* %79, i8* %80, i32 %81, i64 %82, i32 %83, i32 %84) #7
  %cmp70 = icmp sge i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72, %if.then.66
  %85 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %85) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %land.lhs.true.59, %land.lhs.true.56, %land.lhs.true, %if.end.50
  %86 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %cmp75 = icmp eq i64 %86, -1
  br i1 %cmp75, label %if.then.77, label %if.else.91

if.then.77:                                       ; preds = %if.end.74
  %87 = load i64, i64* %one.addr, align 8, !tbaa !65
  %cmp78 = icmp eq i64 %87, -1
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.77
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.81:                                        ; preds = %if.then.77
  %88 = load i64, i64* %one.addr, align 8, !tbaa !65
  %89 = load i64, i64* %white, align 8, !tbaa !65
  %cmp82 = icmp ne i64 %88, %89
  br i1 %cmp82, label %if.then.84, label %if.else.89

if.then.84:                                       ; preds = %if.end.81
  %90 = load i64, i64* %one.addr, align 8, !tbaa !65
  %91 = load i64, i64* %black, align 8, !tbaa !65
  %cmp85 = icmp eq i64 %90, %91
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %if.then.84
  store i32 136, i32* %lop, align 4, !tbaa !5
  br label %if.end.88

if.else:                                          ; preds = %if.then.84
  store i32 460, i32* %lop, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.87
  %92 = load i64, i64* %white, align 8, !tbaa !65
  store i64 %92, i64* %color0, align 8, !tbaa !65
  br label %if.end.90

if.else.89:                                       ; preds = %if.end.81
  store i32 238, i32* %lop, align 4, !tbaa !5
  %93 = load i64, i64* %black, align 8, !tbaa !65
  store i64 %93, i64* %color0, align 8, !tbaa !65
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.end.88
  br label %if.end.107

if.else.91:                                       ; preds = %if.end.74
  %94 = load i64, i64* %one.addr, align 8, !tbaa !65
  %cmp92 = icmp eq i64 %94, -1
  br i1 %cmp92, label %if.then.94, label %if.else.105

if.then.94:                                       ; preds = %if.else.91
  %95 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %96 = load i64, i64* %white, align 8, !tbaa !65
  %cmp95 = icmp ne i64 %95, %96
  br i1 %cmp95, label %if.then.97, label %if.else.103

if.then.97:                                       ; preds = %if.then.94
  %97 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %98 = load i64, i64* %black, align 8, !tbaa !65
  %cmp98 = icmp eq i64 %97, %98
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.then.97
  store i32 136, i32* %lop, align 4, !tbaa !5
  br label %if.end.102

if.else.101:                                      ; preds = %if.then.97
  store i32 460, i32* %lop, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  %99 = load i64, i64* %white, align 8, !tbaa !65
  store i64 %99, i64* %color1, align 8, !tbaa !65
  br label %if.end.104

if.else.103:                                      ; preds = %if.then.94
  store i32 238, i32* %lop, align 4, !tbaa !5
  %100 = load i64, i64* %black, align 8, !tbaa !65
  store i64 %100, i64* %color1, align 8, !tbaa !65
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.end.102
  br label %if.end.106

if.else.105:                                      ; preds = %if.else.91
  store i32 204, i32* %lop, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.end.104
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.90
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info108 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info108, i32 0, i32 1
  %102 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp109 = icmp eq i32 %102, 1
  br i1 %cmp109, label %if.then.120, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.end.107
  %103 = load i64, i64* %color0, align 8, !tbaa !65
  %shr = lshr i64 %103, 8
  %104 = load i64, i64* %color0, align 8, !tbaa !65
  %and112 = and i64 %104, 65535
  %cmp113 = icmp eq i64 %shr, %and112
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.127

land.lhs.true.115:                                ; preds = %lor.lhs.false.111
  %105 = load i64, i64* %color1, align 8, !tbaa !65
  %shr116 = lshr i64 %105, 8
  %106 = load i64, i64* %color1, align 8, !tbaa !65
  %and117 = and i64 %106, 65535
  %cmp118 = icmp eq i64 %shr116, %and117
  br i1 %cmp118, label %if.then.120, label %if.else.127

if.then.120:                                      ; preds = %land.lhs.true.115, %if.end.107
  %107 = load i64, i64* %color0, align 8, !tbaa !65
  %conv121 = trunc i64 %107 to i8
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 0
  store i8 %conv121, i8* %arrayidx, align 1, !tbaa !56
  %108 = load i64, i64* %color1, align 8, !tbaa !65
  %conv122 = trunc i64 %108 to i8
  %arrayidx123 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 1
  store i8 %conv122, i8* %arrayidx123, align 1, !tbaa !56
  store i32 2, i32* %palette_size, align 4, !tbaa !5
  store i32 1, i32* %color_space, align 4, !tbaa !56
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.120
  br label %do.cond.125

do.cond.125:                                      ; preds = %do.body.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  br label %if.end.144

if.else.127:                                      ; preds = %land.lhs.true.115, %lor.lhs.false.111
  %109 = load i64, i64* %color0, align 8, !tbaa !65
  %shr128 = lshr i64 %109, 16
  %conv129 = trunc i64 %shr128 to i8
  %arrayidx130 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 0
  store i8 %conv129, i8* %arrayidx130, align 1, !tbaa !56
  %110 = load i64, i64* %color0, align 8, !tbaa !65
  %shr131 = lshr i64 %110, 8
  %conv132 = trunc i64 %shr131 to i8
  %arrayidx133 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 1
  store i8 %conv132, i8* %arrayidx133, align 1, !tbaa !56
  %111 = load i64, i64* %color0, align 8, !tbaa !65
  %conv134 = trunc i64 %111 to i8
  %arrayidx135 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 2
  store i8 %conv134, i8* %arrayidx135, align 1, !tbaa !56
  %112 = load i64, i64* %color1, align 8, !tbaa !65
  %shr136 = lshr i64 %112, 16
  %conv137 = trunc i64 %shr136 to i8
  %arrayidx138 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 3
  store i8 %conv137, i8* %arrayidx138, align 1, !tbaa !56
  %113 = load i64, i64* %color1, align 8, !tbaa !65
  %shr139 = lshr i64 %113, 8
  %conv140 = trunc i64 %shr139 to i8
  %arrayidx141 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 4
  store i8 %conv140, i8* %arrayidx141, align 1, !tbaa !56
  %114 = load i64, i64* %color1, align 8, !tbaa !65
  %conv142 = trunc i64 %114 to i8
  %arrayidx143 = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i64 5
  store i8 %conv142, i8* %arrayidx143, align 1, !tbaa !56
  store i32 6, i32* %palette_size, align 4, !tbaa !5
  store i32 2, i32* %color_space, align 4, !tbaa !56
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.127, %do.end.126
  %115 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %116 = load i32, i32* %lop, align 4, !tbaa !5
  %call145 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %115, i32 %116) #7
  store i32 %call145, i32* %code, align 4, !tbaa !5
  %117 = load i32, i32* %code, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %117, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.144
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.149:                                       ; preds = %if.end.144
  %118 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %119 = load i32, i32* %color_space, align 4, !tbaa !56
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %palette, i32 0, i32 0
  %120 = load i32, i32* %palette_size, align 4, !tbaa !5
  call void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %118, i32 %119, i8* %arraydecay, i32 %120) #7
  %121 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call150 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %121) #7
  store %struct.stream_s* %call150, %struct.stream_s** %s, align 8, !tbaa !1
  %122 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pclxl_copy_mono.mi_, i32 0, i32 0), i32 8) #7
  %123 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %124 = load i32, i32* %w.addr, align 4, !tbaa !5
  %125 = load i32, i32* %h.addr, align 4, !tbaa !5
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %127 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_begin_image(%struct.gx_device_pclxl_s* %123, i32 %124, i32 %125, i32 %126, i32 %127) #7
  %128 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %129 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %130 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %131 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %132 = load i32, i32* %w.addr, align 4, !tbaa !5
  %133 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data(%struct.gx_device_pclxl_s* %128, i8* %129, i32 %130, i32 %131, i32 %132, i32 0, i32 %133) #7
  %134 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_write_end_image(%struct.gx_device_pclxl_s* %134) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.end.149, %if.then.148, %if.then.80, %cleanup, %if.then.48, %if.then.38, %if.then.32
  %135 = bitcast i32* %color_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %palette_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast [6 x i8]* %palette to i8*
  call void @llvm.lifetime.end(i64 6, i8* %137) #2
  %138 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i64* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i64* %white to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i64* %color1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i64* %color0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %source_bit = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %5, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %9, %10
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %18, %17
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !65
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !67
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %24, %25
  %cmp10 = icmp sgt i32 %22, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width12, align 4, !tbaa !67
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %27, %28
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !68
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %31, %32
  %cmp16 = icmp sgt i32 %29, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height18, align 4, !tbaa !68
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %34, %35
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %36, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %37, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %38 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %38, %struct.gx_clip_path_s* null) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %39, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %do.end.26
  %41 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %43 = load i16, i16* %depth, align 2, !tbaa !66
  %conv = zext i16 %43 to i32
  %mul30 = mul nsw i32 %41, %conv
  store i32 %mul30, i32* %source_bit, align 4, !tbaa !5
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info31, i32 0, i32 1
  %45 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp32 = icmp eq i32 %45, 3
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.29
  %46 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %46, i32 2) #7
  br label %if.end.41

if.else:                                          ; preds = %if.end.29
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 11
  %num_components36 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 1
  %48 = load i32, i32* %num_components36, align 4, !tbaa !74
  %cmp37 = icmp eq i32 %48, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  %49 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %49, i32 1) #7
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.34
  %50 = load i32, i32* %source_bit, align 4, !tbaa !5
  %and = and i32 %50, 7
  %cmp42 = icmp ne i32 %and, 0
  br i1 %cmp42, label %if.then.50, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.41
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %51, 1
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.44
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %52, 1
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.44, %if.end.41
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %55 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %56 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %57 = load i64, i64* %id.addr, align 8, !tbaa !65
  %58 = load i32, i32* %x.addr, align 4, !tbaa !5
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %60 = load i32, i32* %w.addr, align 4, !tbaa !5
  %61 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call51 = call i32 @gx_default_copy_color(%struct.gx_device_s* %53, i8* %54, i32 %55, i32 %56, i64 %57, i32 %58, i32 %59, i32 %60, i32 %61) #7
  store i32 %call51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %lor.lhs.false.47
  %62 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call53 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %62, i32 204) #7
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %63, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.52
  %64 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %65 = load i32, i32* %x.addr, align 4, !tbaa !5
  %66 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call58 = call i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %64, i32 %65, i32 %66) #7
  %67 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call59 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %67) #7
  store %struct.stream_s* %call59, %struct.stream_s** %s, align 8, !tbaa !1
  %68 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 11
  %depth61 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info60, i32 0, i32 3
  %70 = load i16, i16* %depth61, align 2, !tbaa !66
  %conv62 = zext i16 %70 to i32
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 11
  %num_components64 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info63, i32 0, i32 1
  %72 = load i32, i32* %num_components64, align 4, !tbaa !74
  %div = sdiv i32 %conv62, %72
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @eBit_values, i32 0, i64 %idxprom
  %73 = load i8, i8* %arrayidx, align 1, !tbaa !56
  call void @px_put_ub(%struct.stream_s* %68, i8 zeroext %73) #7
  %74 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pclxl_copy_color.ci_, i32 0, i32 0), i32 6) #7
  %75 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %77 = load i32, i32* %h.addr, align 4, !tbaa !5
  %78 = load i32, i32* %w.addr, align 4, !tbaa !5
  %79 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_begin_image(%struct.gx_device_pclxl_s* %75, i32 %76, i32 %77, i32 %78, i32 %79) #7
  %80 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %81 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %82 = load i32, i32* %source_bit, align 4, !tbaa !5
  %83 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %84 = load i32, i32* %w.addr, align 4, !tbaa !5
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 11
  %depth66 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info65, i32 0, i32 3
  %86 = load i16, i16* %depth66, align 2, !tbaa !66
  %conv67 = zext i16 %86 to i32
  %mul68 = mul nsw i32 %84, %conv67
  %87 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data(%struct.gx_device_pclxl_s* %80, i8* %81, i32 %82, i32 %83, i32 %mul68, i32 0, i32 %87) #7
  %88 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_write_end_image(%struct.gx_device_pclxl_s* %88) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.56, %if.then.50, %if.then.28, %if.then.23
  %89 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.gs_param_string_s* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_get_params(%struct.gx_device_s* %3, %struct.gs_param_list_s* %4) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %7, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 77
  %call1 = call i32 @param_write_bool(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32* %Duplex) #7
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 72
  %12 = load i32, i32* %MediaPosition_set, align 4, !tbaa !52
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.4
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %14, i32 0, i32 71
  %call6 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32* %MediaPosition) #7
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.4
  %16 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %16, i32 0, i32 75
  %17 = load i32, i32* %MediaType_set, align 4, !tbaa !53
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 74
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !75
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 0
  %19 = load i8*, i8** %data13, align 8, !tbaa !75
  %call14 = call i64 @strlen(i8* %19) #9
  %conv = trunc i64 %call14 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !77
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !78
  store i32 1, i32* %code, align 4, !tbaa !5
  br i1 false, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call17 = call i32 @param_write_string(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct.gs_param_string_s* %s) #7
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 78
  %call23 = call i32 @param_write_bool(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32* %Tumble) #7
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.22
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %CompressMode = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %27, i32 0, i32 87
  %call28 = call i32 @param_write_int(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32* %CompressMode) #7
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31, %if.then.26, %if.then.20, %if.then.15, %if.then.8, %if.then.3, %if.then
  %29 = bitcast %struct.gs_param_string_s* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %intval = alloca i32, align 4
  %boolval = alloca i32, align 4
  %stringval = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %intval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %boolval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_param_string_s* %stringval to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %6, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32* %boolval) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @param_read_null(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #7
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.body.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !79
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 7
  %11 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !81
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call7 = call i32 %11(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 %13) #7
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %16, i32 0, i32 77
  store i32 0, i32* %Duplex, align 4, !tbaa !83
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %if.end.18

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.else
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  %18 = load i32, i32* %boolval, align 4, !tbaa !5
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Duplex16 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %19, i32 0, i32 77
  store i32 %18, i32* %Duplex16, align 4, !tbaa !83
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.10
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %20, 0
  br i1 %cmp19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.18
  %21 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Duplex21 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %21, i32 0, i32 77
  %22 = load i32, i32* %Duplex21, align 4, !tbaa !83
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.then.20
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %23 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %23, i32 0, i32 76
  %24 = load i32, i32* %page, align 4, !tbaa !84
  %add = add nsw i32 %24, 1
  %and = and i32 %add, -2
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page26 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 76
  store i32 %and, i32* %page26, align 4, !tbaa !84
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.25, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.18
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call29 = call i32 @param_read_int(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32* %intval) #7
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %if.end.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %27, i32 0, i32 0
  %28 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs35, align 8, !tbaa !79
  %signal_error36 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %28, i32 0, i32 7
  %29 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error36, align 8, !tbaa !81
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %call37 = call i32 %29(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 %31) #7
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.38:                                       ; preds = %if.end.28
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %33, 0
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.else.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %34 = load i32, i32* %intval, align 4, !tbaa !5
  %35 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %35, i32 0, i32 71
  store i32 %34, i32* %MediaPosition, align 4, !tbaa !55
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %if.else.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %36, 0
  br i1 %cmp46, label %if.then.47, label %if.end.61

if.then.47:                                       ; preds = %if.end.45
  %37 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %37, i32 0, i32 72
  store i32 1, i32* %MediaPosition_set, align 4, !tbaa !52
  %38 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_old = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %38, i32 0, i32 70
  %39 = load i32, i32* %MediaPosition_old, align 4, !tbaa !54
  %40 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition48 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %40, i32 0, i32 71
  %41 = load i32, i32* %MediaPosition48, align 4, !tbaa !55
  %cmp49 = icmp ne i32 %39, %41
  br i1 %cmp49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %if.then.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %42 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page54 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %42, i32 0, i32 76
  %43 = load i32, i32* %page54, align 4, !tbaa !84
  %add55 = add nsw i32 %43, 1
  %and56 = and i32 %add55, -2
  %44 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page57 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %44, i32 0, i32 76
  store i32 %and56, i32* %page57, align 4, !tbaa !84
  %45 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition58 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %45, i32 0, i32 71
  %46 = load i32, i32* %MediaPosition58, align 4, !tbaa !55
  %47 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_old59 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %47, i32 0, i32 70
  store i32 %46, i32* %MediaPosition_old59, align 4, !tbaa !54
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.53, %if.then.47
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.45
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call62 = call i32 @param_read_string(%struct.gs_param_list_s* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct.gs_param_string_s* %stringval) #7
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.84

if.then.64:                                       ; preds = %if.end.61
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call68 = call i32 @param_read_null(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #7
  store i32 %call68, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %do.end.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.body.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs74 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %50, i32 0, i32 0
  %51 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs74, align 8, !tbaa !79
  %signal_error75 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %51, i32 0, i32 7
  %52 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error75, align 8, !tbaa !81
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %call76 = call i32 %52(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 %54) #7
  %55 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %do.end.67
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %56, 0
  br i1 %cmp78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.77
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %57 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %57, i32 0, i32 74
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !56
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %if.end.77
  br label %if.end.96

if.else.84:                                       ; preds = %if.end.61
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %58, 0
  br i1 %cmp85, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %if.else.84
  %59 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType87 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %59, i32 0, i32 74
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType87, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %stringval, i32 0, i32 0
  %60 = load i8*, i8** %data, align 8, !tbaa !75
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %stringval, i32 0, i32 1
  %61 = load i32, i32* %size, align 4, !tbaa !77
  %conv = zext i32 %61 to i64
  %call88 = call i8* @strncpy(i8* %arraydecay, i8* %60, i64 %conv) #8
  %size89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %stringval, i32 0, i32 1
  %62 = load i32, i32* %size89, align 4, !tbaa !77
  %idxprom = zext i32 %62 to i64
  %63 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType90 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %63, i32 0, i32 74
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType90, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx91, align 1, !tbaa !56
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.86
  br label %do.cond.93

do.cond.93:                                       ; preds = %do.body.92
  br label %do.end.94

do.end.94:                                        ; preds = %do.cond.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %if.else.84
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.83
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %64, 0
  br i1 %cmp97, label %if.then.99, label %if.end.119

if.then.99:                                       ; preds = %if.end.96
  %65 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %65, i32 0, i32 75
  store i32 1, i32* %MediaType_set, align 4, !tbaa !53
  %66 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_old = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %68, i32 0, i32 73
  %arraydecay100 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType_old, i32 0, i32 0
  %69 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType101 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %69, i32 0, i32 74
  %arraydecay102 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType101, i32 0, i32 0
  %call103 = call i32 @strcmp(i8* %arraydecay100, i8* %arraydecay102) #8
  store i32 %call103, i32* %tmp, !tbaa !5
  %70 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = load i32, i32* %tmp, !tbaa !5
  %tobool104 = icmp ne i32 %72, 0
  br i1 %tobool104, label %if.then.105, label %if.end.118

if.then.105:                                      ; preds = %if.then.99
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %73 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page109 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %73, i32 0, i32 76
  %74 = load i32, i32* %page109, align 4, !tbaa !84
  %add110 = add nsw i32 %74, 1
  %and111 = and i32 %add110, -2
  %75 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page112 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %75, i32 0, i32 76
  store i32 %and111, i32* %page112, align 4, !tbaa !84
  %76 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_old113 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %76, i32 0, i32 73
  %arraydecay114 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType_old113, i32 0, i32 0
  %77 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType115 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %77, i32 0, i32 74
  %arraydecay116 = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType115, i32 0, i32 0
  %call117 = call i8* @strcpy(i8* %arraydecay114, i8* %arraydecay116) #8
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.108, %if.then.99
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.96
  %78 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call120 = call i32 @param_read_bool(%struct.gs_param_list_s* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32* %boolval) #7
  store i32 %call120, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.142

if.then.123:                                      ; preds = %if.end.119
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  br label %do.cond.125

do.cond.125:                                      ; preds = %do.body.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  %79 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call127 = call i32 @param_read_null(%struct.gs_param_list_s* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #7
  store i32 %call127, i32* %code, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.137

if.then.130:                                      ; preds = %do.end.126
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  br label %do.cond.132

do.cond.132:                                      ; preds = %do.body.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs134 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %80, i32 0, i32 0
  %81 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs134, align 8, !tbaa !79
  %signal_error135 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %81, i32 0, i32 7
  %82 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error135, align 8, !tbaa !81
  %83 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %call136 = call i32 %82(%struct.gs_param_list_s* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %84) #7
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %do.end.126
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp138 = icmp eq i32 %86, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.137
  %87 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %87, i32 0, i32 78
  store i32 0, i32* %Tumble, align 4, !tbaa !85
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.end.137
  br label %if.end.151

if.else.142:                                      ; preds = %if.end.119
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %88, 0
  br i1 %cmp143, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %if.else.142
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.145
  br label %do.cond.147

do.cond.147:                                      ; preds = %do.body.146
  br label %do.end.148

do.end.148:                                       ; preds = %do.cond.147
  %89 = load i32, i32* %boolval, align 4, !tbaa !5
  %90 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Tumble149 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %90, i32 0, i32 78
  store i32 %89, i32* %Tumble149, align 4, !tbaa !85
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.148, %if.else.142
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.141
  %91 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call152 = call i32 @param_read_int(%struct.gs_param_list_s* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32* %intval) #7
  store i32 %call152, i32* %code, align 4, !tbaa !5
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.162

if.then.155:                                      ; preds = %if.end.151
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.155
  br label %do.cond.157

do.cond.157:                                      ; preds = %do.body.156
  br label %do.end.158

do.end.158:                                       ; preds = %do.cond.157
  %92 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs159 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %92, i32 0, i32 0
  %93 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs159, align 8, !tbaa !79
  %signal_error160 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %93, i32 0, i32 7
  %94 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error160, align 8, !tbaa !81
  %95 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %call161 = call i32 %94(%struct.gs_param_list_s* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 %96) #7
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.162:                                      ; preds = %if.end.151
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %98, 0
  br i1 %cmp163, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.else.162
  br label %do.body.166

do.body.166:                                      ; preds = %if.then.165
  br label %do.cond.167

do.cond.167:                                      ; preds = %do.body.166
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  %99 = load i32, i32* %intval, align 4, !tbaa !5
  %100 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %CompressMode = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %100, i32 0, i32 87
  store i32 %99, i32* %CompressMode, align 4, !tbaa !86
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %if.else.162
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %102 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call171 = call i32 @gdev_vector_put_params(%struct.gx_device_s* %101, %struct.gs_param_list_s* %102) #7
  store i32 %call171, i32* %code, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.170
  %103 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.175:                                       ; preds = %if.end.170
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.175, %if.then.174, %do.end.158, %do.end.133, %do.end.73, %do.end.34, %do.end.6
  %104 = bitcast %struct.gs_param_string_s* %stringval to i8*
  call void @llvm.lifetime.end(i64 16, i8* %104) #2
  %105 = bitcast i32* %boolval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %intval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

declare i32 @gdev_vector_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %foreground = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %5, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %foreground to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %9, %10
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %18, %17
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !65
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !67
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %24, %25
  %cmp10 = icmp sgt i32 %22, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width12, align 4, !tbaa !67
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %27, %28
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !68
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %31, %32
  %cmp16 = icmp sgt i32 %29, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height18, align 4, !tbaa !68
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %34, %35
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %36, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %37, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %38 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and = and i32 %38, 7
  %cmp27 = icmp ne i32 %and, 0
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %do.end.26
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !69
  %41 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.gx_device_color_type_s* %40, %41
  br i1 %cmp29, label %lor.lhs.false.30, label %if.then.36

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.28
  %42 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %42, 1
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %43, 1
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.32
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %44, 1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.32, %lor.lhs.false.30, %lor.lhs.false.28, %do.end.26
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %47 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %48 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %49 = load i64, i64* %id.addr, align 8, !tbaa !65
  %50 = load i32, i32* %x.addr, align 4, !tbaa !5
  %51 = load i32, i32* %y.addr, align 4, !tbaa !5
  %52 = load i32, i32* %w.addr, align 4, !tbaa !5
  %53 = load i32, i32* %h.addr, align 4, !tbaa !5
  %54 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %55 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %56 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %57 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_fill_mask(%struct.gx_device_s* %45, i8* %46, i32 %47, i32 %48, i64 %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.gx_device_color_s* %54, i32 %55, i32 %56, %struct.gx_clip_path_s* %57) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false.34
  %58 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %59 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call38 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %58, %struct.gx_clip_path_s* %59) #7
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %60, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %61 = load i64, i64* %pure, align 8, !tbaa !65
  store i64 %61, i64* %foreground, align 8, !tbaa !65
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %62, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %64 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call42 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %64, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %65) #7
  store i32 %call42, i32* %code, align 4, !tbaa !5
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %66, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.41
  %67 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %68 = load i32, i32* %x.addr, align 4, !tbaa !5
  %69 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call46 = call i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %67, i32 %68, i32 %69) #7
  %70 = load i64, i64* %id.addr, align 8, !tbaa !65
  %cmp47 = icmp ne i64 %70, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %if.end.45
  %71 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %71, 0
  br i1 %cmp48, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %land.lhs.true
  %72 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %73 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call50 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %72, i32 %73) #7
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %74, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.49
  %75 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %76 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %77 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %78 = load i64, i64* %id.addr, align 8, !tbaa !65
  %79 = load i32, i32* %w.addr, align 4, !tbaa !5
  %80 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call54 = call i32 @pclxl_copy_text_char(%struct.gx_device_pclxl_s* %75, i8* %76, i32 %77, i64 %78, i32 %79, i32 %80) #7
  %cmp55 = icmp sge i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true, %if.end.45
  %81 = load i64, i64* %foreground, align 8, !tbaa !65
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 11
  %depth59 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %83 = load i16, i16* %depth59, align 2, !tbaa !66
  %conv = zext i16 %83 to i32
  %shl = shl i32 1, %conv
  %sub60 = sub nsw i32 %shl, 1
  %conv61 = sext i32 %sub60 to i64
  %cmp62 = icmp eq i64 %81, %conv61
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.end.58
  store i32 187, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end.71

if.else:                                          ; preds = %if.end.58
  %84 = load i64, i64* %foreground, align 8, !tbaa !65
  %cmp65 = icmp eq i64 %84, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else
  store i32 136, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end.70

if.else.68:                                       ; preds = %if.else
  %85 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %or69 = or i32 %85, 460
  store i32 %or69, i32* %lop.addr, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.64
  %86 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %87 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call72 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %86, i32 %87) #7
  store i32 %call72, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %88, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.end.71
  %89 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %89, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 2) #7
  %90 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call77 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %90) #7
  store %struct.stream_s* %call77, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pclxl_fill_mask.mi_, i32 0, i32 0), i32 8) #7
  %92 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %93 = load i32, i32* %w.addr, align 4, !tbaa !5
  %94 = load i32, i32* %h.addr, align 4, !tbaa !5
  %95 = load i32, i32* %w.addr, align 4, !tbaa !5
  %96 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_begin_image(%struct.gx_device_pclxl_s* %92, i32 %93, i32 %94, i32 %95, i32 %96) #7
  %97 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %98 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %99 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %100 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %102 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data(%struct.gx_device_pclxl_s* %97, i8* %98, i32 %99, i32 %100, i32 %101, i32 0, i32 %102) #7
  %103 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_write_end_image(%struct.gx_device_pclxl_s* %103) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.75, %if.then.56, %if.then.52, %if.then.44, %if.then.40, %if.then.36, %if.then.23
  %104 = bitcast i64* %foreground to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare i32 @gdev_vector_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gdev_vector_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gdev_vector_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pie = alloca %struct.pclxl_image_enum_s*, align 8
  %row_data = alloca i8*, align 8
  %num_rows = alloca i32, align 4
  %row_raster = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %s91 = alloca %struct.stream_s*, align 8
  %tmpf = alloca float, align 4
  %s114 = alloca %struct.stream_s*, align 8
  %tmpf151 = alloca float, align 4
  %s152 = alloca %struct.stream_s*, align 8
  %lop = alloca i32, align 4
  %palette = alloca i8*, align 8
  %foreground = alloca i64, align 8
  %bpc = alloca i32, align 4
  %num_components246 = alloca i32, align 4
  %sample_max = alloca i32, align 4
  %palette252 = alloca [768 x i8], align 16
  %i = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %cv = alloca i32, align 4
  %j = alloca i32, align 4
  %ci = alloca i64, align 8
  %ppal = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !56
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %5, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %7, i32 0, i32 9
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !87
  store %struct.gs_color_space_s* %8, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8** %row_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %row_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 10
  %15 = load i32, i32* %ImageMask, align 4, !tbaa !89
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %16, i32 0, i32 4
  %17 = load i32, i32* %BitsPerComponent, align 4, !tbaa !90
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %18) #7
  %mul = mul nsw i32 %17, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %mul, %cond.false ]
  store i32 %cond, i32* %bits_per_pixel, align 4, !tbaa !5
  %19 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %21, i32 0, i32 1
  %call1 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mat) #7
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 5
  %23 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call2 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %23, %struct.gs_matrix_s* %mat) #7
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %24 = load float, float* %xx, align 4, !tbaa !91
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %25 = load float, float* %yy, align 4, !tbaa !92
  %mul3 = fmul float %24, %25
  %cmp = fcmp une float %mul3, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true.7

land.lhs.true:                                    ; preds = %cond.end
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %26 = load float, float* %xy, align 4, !tbaa !93
  %cmp4 = fcmp oeq float %26, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.5, label %land.lhs.true.7

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %27 = load float, float* %yx, align 4, !tbaa !94
  %cmp6 = fcmp oeq float %27, 0.000000e+00
  br i1 %cmp6, label %lor.lhs.false, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.5, %land.lhs.true, %cond.end
  %xx8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %28 = load float, float* %xx8, align 4, !tbaa !91
  %cmp9 = fcmp oeq float %28, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true.10, label %if.then

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %yy11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %29 = load float, float* %yy11, align 4, !tbaa !92
  %cmp12 = fcmp oeq float %29, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %xy14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %30 = load float, float* %xy14, align 4, !tbaa !93
  %yx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %31 = load float, float* %yx15, align 4, !tbaa !94
  %mul16 = fmul float %30, %31
  %cmp17 = fcmp une float %mul16, 0.000000e+00
  br i1 %cmp17, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %land.lhs.true.5
  %32 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask18 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %32, i32 0, i32 10
  %33 = load i32, i32* %ImageMask18, align 4, !tbaa !89
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %lor.lhs.false
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %34, i32 0, i32 0
  %35 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !69
  %36 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.gx_device_color_type_s* %35, %36
  br i1 %cmp21, label %lor.lhs.false.22, label %if.then

lor.lhs.false.22:                                 ; preds = %cond.true.20
  %37 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %37, i32 0, i32 8
  %38 = load i32, i32* %CombineWithColor, align 4, !tbaa !95
  %tobool23 = icmp ne i32 %38, 0
  br i1 %tobool23, label %if.then, label %lor.lhs.false.36

cond.false.24:                                    ; preds = %lor.lhs.false
  %39 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace25 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %39, i32 0, i32 9
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace25, align 8, !tbaa !87
  %call26 = call i32 @pclxl_can_handle_color_space(%struct.gs_color_space_s* %40) #7
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then

lor.lhs.false.28:                                 ; preds = %cond.false.24
  %41 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp29 = icmp ne i32 %41, 1
  br i1 %cmp29, label %land.lhs.true.30, label %lor.lhs.false.36

land.lhs.true.30:                                 ; preds = %lor.lhs.false.28
  %42 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp31 = icmp ne i32 %42, 4
  br i1 %cmp31, label %land.lhs.true.32, label %lor.lhs.false.36

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %43 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp33 = icmp ne i32 %43, 8
  br i1 %cmp33, label %land.lhs.true.34, label %lor.lhs.false.36

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %44 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %44, 24
  br i1 %cmp35, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.34, %land.lhs.true.32, %land.lhs.true.30, %lor.lhs.false.28, %lor.lhs.false.22
  %45 = load i32, i32* %format.addr, align 4, !tbaa !56
  %cmp37 = icmp ne i32 %45, 0
  br i1 %cmp37, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.36
  %46 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %46, i32 0, i32 6
  %47 = load i32, i32* %Interpolate, align 4, !tbaa !96
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %if.then, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.38
  %48 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool41 = icmp ne %struct.gs_int_rect_s* %48, null
  br i1 %tobool41, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.40, %lor.lhs.false.38, %lor.lhs.false.36, %land.lhs.true.34, %cond.false.24, %lor.lhs.false.22, %cond.true.20, %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.7
  br label %use_default

if.end:                                           ; preds = %lor.lhs.false.40
  %49 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %50 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %50, i32 0, i32 2
  %51 = load i32, i32* %Width, align 4, !tbaa !97
  %mul42 = mul nsw i32 %49, %51
  %add = add nsw i32 %mul42, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %row_raster, align 4, !tbaa !5
  %52 = load i32, i32* %row_raster, align 4, !tbaa !5
  %div = udiv i32 500000, %52
  store i32 %div, i32* %num_rows, align 4, !tbaa !5
  %53 = load i32, i32* %num_rows, align 4, !tbaa !5
  %54 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %54, i32 0, i32 3
  %55 = load i32, i32* %Height, align 4, !tbaa !98
  %cmp43 = icmp sgt i32 %53, %55
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end
  %56 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height45 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %56, i32 0, i32 3
  %57 = load i32, i32* %Height45, align 4, !tbaa !98
  store i32 %57, i32* %num_rows, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end
  %58 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp47 = icmp sle i32 %58, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  store i32 1, i32* %num_rows, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %60 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !99
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call50 = call i8* %60(%struct.gs_memory_s* %61, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_pclxl_image_enum to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #7
  %62 = bitcast i8* %call50 to %struct.pclxl_image_enum_s*
  store %struct.pclxl_image_enum_s* %62, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 7
  %64 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !102
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %66 = load i32, i32* %num_rows, align 4, !tbaa !5
  %67 = load i32, i32* %row_raster, align 4, !tbaa !5
  %mul52 = mul i32 %66, %67
  %call53 = call i8* %64(%struct.gs_memory_s* %65, i32 %mul52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #7
  store i8* %call53, i8** %row_data, align 8, !tbaa !1
  %68 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.pclxl_image_enum_s* %68, null
  br i1 %cmp54, label %if.then.57, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %if.end.49
  %69 = load i8*, i8** %row_data, align 8, !tbaa !1
  %cmp56 = icmp eq i8* %69, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.55, %if.end.49
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %fail

if.end.58:                                        ; preds = %lor.lhs.false.55
  %70 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %71 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %72 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %73 = load i32, i32* %format.addr, align 4, !tbaa !56
  %74 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %75 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %76 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %78 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %79 = bitcast %struct.pclxl_image_enum_s* %78 to %struct.gdev_vector_image_enum_s*
  %call59 = call i32 @gdev_vector_begin_image(%struct.gx_device_vector_s* %70, %struct.gs_imager_state_s* %71, %struct.gs_image1_s* %72, i32 %73, %struct.gs_int_rect_s* %74, %struct.gx_device_color_s* %75, %struct.gx_clip_path_s* %76, %struct.gs_memory_s* %77, %struct.gx_image_enum_procs_s* @pclxl_image_enum_procs, %struct.gdev_vector_image_enum_s* %79) #7
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %80, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.62:                                        ; preds = %if.end.58
  %82 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %flipped = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %82, i32 0, i32 18
  store i32 0, i32* %flipped, align 4, !tbaa !103
  %xx63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %83 = load float, float* %xx63, align 4, !tbaa !91
  %yy64 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %84 = load float, float* %yy64, align 4, !tbaa !92
  %mul65 = fmul float %83, %84
  %cmp66 = fcmp ogt float %mul65, 0.000000e+00
  br i1 %cmp66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.end.62
  %xx68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %85 = load float, float* %xx68, align 4, !tbaa !91
  %cmp69 = fcmp olt float %85, 0.000000e+00
  br i1 %cmp69, label %if.then.70, label %if.end.81

if.then.70:                                       ; preds = %if.then.67
  %86 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #2
  %87 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call71 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %87) #7
  store %struct.stream_s* %call71, %struct.stream_s** %s, align 8, !tbaa !1
  %xx72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %88 = load float, float* %xx72, align 4, !tbaa !91
  %sub = fsub float -0.000000e+00, %88
  %xx73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %sub, float* %xx73, align 4, !tbaa !91
  %yy74 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %89 = load float, float* %yy74, align 4, !tbaa !92
  %sub75 = fsub float -0.000000e+00, %89
  %yy76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %sub75, float* %yy76, align 4, !tbaa !92
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %90 = load float, float* %tx, align 4, !tbaa !106
  %sub77 = fsub float -0.000000e+00, %90
  %tx78 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %sub77, float* %tx78, align 4, !tbaa !106
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %91 = load float, float* %ty, align 4, !tbaa !107
  %sub79 = fsub float -0.000000e+00, %91
  %ty80 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %sub79, float* %ty80, align 4, !tbaa !107
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %92, i32 180) #7
  %93 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %93, i32 0, i32 86
  store i32 2, i32* %state_rotated, align 4, !tbaa !108
  %94 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %94, i32 41, i32 118) #7
  %95 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.70, %if.then.67
  br label %if.end.187

if.else:                                          ; preds = %if.end.62
  %xx82 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %96 = load float, float* %xx82, align 4, !tbaa !91
  %yy83 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %97 = load float, float* %yy83, align 4, !tbaa !92
  %mul84 = fmul float %96, %97
  %cmp85 = fcmp olt float %mul84, 0.000000e+00
  br i1 %cmp85, label %if.then.86, label %if.else.108

if.then.86:                                       ; preds = %if.else
  %98 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %flipped87 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %98, i32 0, i32 18
  store i32 1, i32* %flipped87, align 4, !tbaa !103
  %xx88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %99 = load float, float* %xx88, align 4, !tbaa !91
  %cmp89 = fcmp olt float %99, 0.000000e+00
  br i1 %cmp89, label %if.then.90, label %if.else.100

if.then.90:                                       ; preds = %if.then.86
  %100 = bitcast %struct.stream_s** %s91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call92 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %101) #7
  store %struct.stream_s* %call92, %struct.stream_s** %s91, align 8, !tbaa !1
  %xx93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %102 = load float, float* %xx93, align 4, !tbaa !91
  %sub94 = fsub float -0.000000e+00, %102
  %xx95 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %sub94, float* %xx95, align 4, !tbaa !91
  %tx96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %103 = load float, float* %tx96, align 4, !tbaa !106
  %sub97 = fsub float -0.000000e+00, %103
  %tx98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %sub97, float* %tx98, align 4, !tbaa !106
  %104 = load %struct.stream_s*, %struct.stream_s** %s91, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %104, i32 180) #7
  %105 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated99 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %105, i32 0, i32 86
  store i32 2, i32* %state_rotated99, align 4, !tbaa !108
  %106 = load %struct.stream_s*, %struct.stream_s** %s91, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %106, i32 41, i32 118) #7
  %107 = bitcast %struct.stream_s** %s91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  br label %if.end.107

if.else.100:                                      ; preds = %if.then.86
  %yy101 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %108 = load float, float* %yy101, align 4, !tbaa !92
  %sub102 = fsub float -0.000000e+00, %108
  %yy103 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %sub102, float* %yy103, align 4, !tbaa !92
  %ty104 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %109 = load float, float* %ty104, align 4, !tbaa !107
  %sub105 = fsub float -0.000000e+00, %109
  %ty106 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %sub105, float* %ty106, align 4, !tbaa !107
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.100, %if.then.90
  br label %if.end.186

if.else.108:                                      ; preds = %if.else
  %xy109 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %110 = load float, float* %xy109, align 4, !tbaa !93
  %yx110 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %111 = load float, float* %yx110, align 4, !tbaa !94
  %mul111 = fmul float %110, %111
  %cmp112 = fcmp olt float %mul111, 0.000000e+00
  br i1 %cmp112, label %if.then.113, label %if.else.145

if.then.113:                                      ; preds = %if.else.108
  %112 = bitcast float* %tmpf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = bitcast %struct.stream_s** %s114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #2
  %114 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call115 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %114) #7
  store %struct.stream_s* %call115, %struct.stream_s** %s114, align 8, !tbaa !1
  %xy116 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %115 = load float, float* %xy116, align 4, !tbaa !93
  %cmp117 = fcmp ogt float %115, 0.000000e+00
  br i1 %cmp117, label %if.then.118, label %if.else.130

if.then.118:                                      ; preds = %if.then.113
  %xy119 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %116 = load float, float* %xy119, align 4, !tbaa !93
  %xx120 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %116, float* %xx120, align 4, !tbaa !91
  %yx121 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %117 = load float, float* %yx121, align 4, !tbaa !94
  %sub122 = fsub float -0.000000e+00, %117
  %yy123 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %sub122, float* %yy123, align 4, !tbaa !92
  %tx124 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %118 = load float, float* %tx124, align 4, !tbaa !106
  store float %118, float* %tmpf, align 4, !tbaa !109
  %ty125 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %119 = load float, float* %ty125, align 4, !tbaa !107
  %tx126 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %119, float* %tx126, align 4, !tbaa !106
  %120 = load float, float* %tmpf, align 4, !tbaa !109
  %sub127 = fsub float -0.000000e+00, %120
  %ty128 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %sub127, float* %ty128, align 4, !tbaa !107
  %121 = load %struct.stream_s*, %struct.stream_s** %s114, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %121, i32 -90) #7
  %122 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated129 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %122, i32 0, i32 86
  store i32 -1, i32* %state_rotated129, align 4, !tbaa !108
  br label %if.end.142

if.else.130:                                      ; preds = %if.then.113
  %xy131 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %123 = load float, float* %xy131, align 4, !tbaa !93
  %sub132 = fsub float -0.000000e+00, %123
  %xx133 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %sub132, float* %xx133, align 4, !tbaa !91
  %yx134 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %124 = load float, float* %yx134, align 4, !tbaa !94
  %yy135 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %124, float* %yy135, align 4, !tbaa !92
  %tx136 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %125 = load float, float* %tx136, align 4, !tbaa !106
  store float %125, float* %tmpf, align 4, !tbaa !109
  %ty137 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %126 = load float, float* %ty137, align 4, !tbaa !107
  %sub138 = fsub float -0.000000e+00, %126
  %tx139 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %sub138, float* %tx139, align 4, !tbaa !106
  %127 = load float, float* %tmpf, align 4, !tbaa !109
  %ty140 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %127, float* %ty140, align 4, !tbaa !107
  %128 = load %struct.stream_s*, %struct.stream_s** %s114, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %128, i32 90) #7
  %129 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated141 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %129, i32 0, i32 86
  store i32 1, i32* %state_rotated141, align 4, !tbaa !108
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.130, %if.then.118
  %yx143 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  store float 0.000000e+00, float* %yx143, align 4, !tbaa !94
  %xy144 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  store float 0.000000e+00, float* %xy144, align 4, !tbaa !93
  %130 = load %struct.stream_s*, %struct.stream_s** %s114, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %130, i32 41, i32 118) #7
  %131 = bitcast %struct.stream_s** %s114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = bitcast float* %tmpf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  br label %if.end.185

if.else.145:                                      ; preds = %if.else.108
  %xy146 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %133 = load float, float* %xy146, align 4, !tbaa !93
  %yx147 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %134 = load float, float* %yx147, align 4, !tbaa !94
  %mul148 = fmul float %133, %134
  %cmp149 = fcmp ogt float %mul148, 0.000000e+00
  br i1 %cmp149, label %if.then.150, label %if.end.184

if.then.150:                                      ; preds = %if.else.145
  %135 = bitcast float* %tmpf151 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  %136 = bitcast %struct.stream_s** %s152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #2
  %137 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call153 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %137) #7
  store %struct.stream_s* %call153, %struct.stream_s** %s152, align 8, !tbaa !1
  %138 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %flipped154 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %138, i32 0, i32 18
  store i32 1, i32* %flipped154, align 4, !tbaa !103
  %xy155 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %139 = load float, float* %xy155, align 4, !tbaa !93
  %cmp156 = fcmp ogt float %139, 0.000000e+00
  br i1 %cmp156, label %if.then.157, label %if.else.167

if.then.157:                                      ; preds = %if.then.150
  %xy158 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %140 = load float, float* %xy158, align 4, !tbaa !93
  %xx159 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %140, float* %xx159, align 4, !tbaa !91
  %yx160 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %141 = load float, float* %yx160, align 4, !tbaa !94
  %yy161 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %141, float* %yy161, align 4, !tbaa !92
  %tx162 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %142 = load float, float* %tx162, align 4, !tbaa !106
  store float %142, float* %tmpf151, align 4, !tbaa !109
  %ty163 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %143 = load float, float* %ty163, align 4, !tbaa !107
  %tx164 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %143, float* %tx164, align 4, !tbaa !106
  %144 = load float, float* %tmpf151, align 4, !tbaa !109
  %ty165 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %144, float* %ty165, align 4, !tbaa !107
  %145 = load %struct.stream_s*, %struct.stream_s** %s152, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %145, i32 -90) #7
  %146 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated166 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %146, i32 0, i32 86
  store i32 -1, i32* %state_rotated166, align 4, !tbaa !108
  br label %if.end.181

if.else.167:                                      ; preds = %if.then.150
  %xy168 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %147 = load float, float* %xy168, align 4, !tbaa !93
  %sub169 = fsub float -0.000000e+00, %147
  %xx170 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  store float %sub169, float* %xx170, align 4, !tbaa !91
  %yx171 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %148 = load float, float* %yx171, align 4, !tbaa !94
  %sub172 = fsub float -0.000000e+00, %148
  %yy173 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  store float %sub172, float* %yy173, align 4, !tbaa !92
  %tx174 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %149 = load float, float* %tx174, align 4, !tbaa !106
  store float %149, float* %tmpf151, align 4, !tbaa !109
  %ty175 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %150 = load float, float* %ty175, align 4, !tbaa !107
  %sub176 = fsub float -0.000000e+00, %150
  %tx177 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  store float %sub176, float* %tx177, align 4, !tbaa !106
  %151 = load float, float* %tmpf151, align 4, !tbaa !109
  %sub178 = fsub float -0.000000e+00, %151
  %ty179 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  store float %sub178, float* %ty179, align 4, !tbaa !107
  %152 = load %struct.stream_s*, %struct.stream_s** %s152, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %152, i32 90) #7
  %153 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated180 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %153, i32 0, i32 86
  store i32 1, i32* %state_rotated180, align 4, !tbaa !108
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.167, %if.then.157
  %yx182 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  store float 0.000000e+00, float* %yx182, align 4, !tbaa !94
  %xy183 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  store float 0.000000e+00, float* %xy183, align 4, !tbaa !93
  %154 = load %struct.stream_s*, %struct.stream_s** %s152, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %154, i32 41, i32 118) #7
  %155 = bitcast %struct.stream_s** %s152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast float* %tmpf151 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.181, %if.else.145
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.142
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.107
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.81
  %157 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %mat188 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %157, i32 0, i32 16
  %158 = bitcast %struct.gs_matrix_s* %mat188 to i8*
  %159 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 24, i32 4, i1 false), !tbaa.struct !110
  %160 = load i8*, i8** %row_data, align 8, !tbaa !1
  %161 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %161, i32 0, i32 17
  %data = getelementptr inbounds %struct.ir_, %struct.ir_* %rows, i32 0, i32 0
  store i8* %160, i8** %data, align 8, !tbaa !111
  %162 = load i32, i32* %num_rows, align 4, !tbaa !5
  %163 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows189 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %163, i32 0, i32 17
  %num_rows190 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows189, i32 0, i32 1
  store i32 %162, i32* %num_rows190, align 4, !tbaa !112
  %164 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows191 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %164, i32 0, i32 17
  %first_y = getelementptr inbounds %struct.ir_, %struct.ir_* %rows191, i32 0, i32 2
  store i32 0, i32* %first_y, align 4, !tbaa !113
  %165 = load i32, i32* %row_raster, align 4, !tbaa !5
  %166 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows192 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %166, i32 0, i32 17
  %raster = getelementptr inbounds %struct.ir_, %struct.ir_* %rows192, i32 0, i32 3
  store i32 %165, i32* %raster, align 4, !tbaa !114
  %167 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %168 = bitcast %struct.pclxl_image_enum_s* %167 to %struct.gx_image_enum_common_s*
  %169 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %168, %struct.gx_image_enum_common_s** %169, align 8, !tbaa !1
  %170 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #2
  %171 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %171, i32 0, i32 10
  %172 = load i32, i32* %log_op, align 4, !tbaa !115
  store i32 %172, i32* %lop, align 4, !tbaa !5
  %173 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask193 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %173, i32 0, i32 10
  %174 = load i32, i32* %ImageMask193, align 4, !tbaa !89
  %tobool194 = icmp ne i32 %174, 0
  br i1 %tobool194, label %if.then.195, label %if.else.220

if.then.195:                                      ; preds = %if.end.187
  %175 = bitcast i8** %palette to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #2
  %176 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %176, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %177 = load float, float* %arrayidx, align 4, !tbaa !109
  %tobool196 = fcmp une float %177, 0.000000e+00
  %cond197 = select i1 %tobool196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)
  store i8* %cond197, i8** %palette, align 8, !tbaa !1
  %178 = bitcast i64* %foreground to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #2
  %179 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %179, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %180 = load i64, i64* %pure, align 8, !tbaa !65
  store i64 %180, i64* %foreground, align 8, !tbaa !65
  %181 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %182 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call198 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %181, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %182) #7
  store i32 %call198, i32* %code, align 4, !tbaa !5
  %183 = load i32, i32* %code, align 4, !tbaa !5
  %cmp199 = icmp slt i32 %183, 0
  br i1 %cmp199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.then.195
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.201:                                       ; preds = %if.then.195
  %184 = load i64, i64* %foreground, align 8, !tbaa !65
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %185, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %186 = load i16, i16* %depth, align 2, !tbaa !66
  %conv = zext i16 %186 to i32
  %shl = shl i32 1, %conv
  %sub202 = sub nsw i32 %shl, 1
  %conv203 = sext i32 %sub202 to i64
  %cmp204 = icmp eq i64 %184, %conv203
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %if.end.201
  store i32 187, i32* %lop, align 4, !tbaa !5
  br label %if.end.213

if.else.207:                                      ; preds = %if.end.201
  %187 = load i64, i64* %foreground, align 8, !tbaa !65
  %cmp208 = icmp eq i64 %187, 0
  br i1 %cmp208, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %if.else.207
  store i32 136, i32* %lop, align 4, !tbaa !5
  br label %if.end.212

if.else.211:                                      ; preds = %if.else.207
  %188 = load i32, i32* %lop, align 4, !tbaa !5
  %or = or i32 %188, 460
  store i32 %or, i32* %lop, align 4, !tbaa !5
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.211, %if.then.210
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.206
  %189 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %190 = load i32, i32* %lop, align 4, !tbaa !5
  %call214 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %189, i32 %190) #7
  store i32 %call214, i32* %code, align 4, !tbaa !5
  %191 = load i32, i32* %code, align 4, !tbaa !5
  %cmp215 = icmp slt i32 %191, 0
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.213
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.218:                                       ; preds = %if.end.213
  %192 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %193 = load i8*, i8** %palette, align 8, !tbaa !1
  call void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %192, i32 1, i8* %193, i32 2) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.217, %if.then.200, %if.end.218
  %194 = bitcast i64* %foreground to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast i8** %palette to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.356 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.355

if.else.220:                                      ; preds = %if.end.187
  %196 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp221 = icmp eq i32 %196, 24
  br i1 %cmp221, label %if.then.223, label %if.else.244

if.then.223:                                      ; preds = %if.else.220
  %197 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %198 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor224 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %198, i32 0, i32 8
  %199 = load i32, i32* %CombineWithColor224, align 4, !tbaa !95
  %tobool225 = icmp ne i32 %199, 0
  br i1 %tobool225, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %if.then.223
  %200 = load i32, i32* %lop, align 4, !tbaa !5
  br label %cond.end.231

cond.false.227:                                   ; preds = %if.then.223
  %201 = load i32, i32* %lop, align 4, !tbaa !5
  %and = and i32 %201, 15
  %shl228 = shl i32 %and, 4
  %202 = load i32, i32* %lop, align 4, !tbaa !5
  %and229 = and i32 %202, -241
  %or230 = or i32 %shl228, %and229
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.227, %cond.true.226
  %cond232 = phi i32 [ %200, %cond.true.226 ], [ %or230, %cond.false.227 ]
  %call233 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %197, i32 %cond232) #7
  store i32 %call233, i32* %code, align 4, !tbaa !5
  %203 = load i32, i32* %code, align 4, !tbaa !5
  %cmp234 = icmp slt i32 %203, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %cond.end.231
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.356

if.end.237:                                       ; preds = %cond.end.231
  %204 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info238 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %204, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info238, i32 0, i32 1
  %205 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp239 = icmp eq i32 %205, 1
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %if.end.237
  %206 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %206, i32 1) #7
  br label %if.end.243

if.else.242:                                      ; preds = %if.end.237
  %207 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %207, i32 2) #7
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.242, %if.then.241
  br label %if.end.354

if.else.244:                                      ; preds = %if.else.220
  %208 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208) #2
  %209 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent245 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %209, i32 0, i32 4
  %210 = load i32, i32* %BitsPerComponent245, align 4, !tbaa !90
  store i32 %210, i32* %bpc, align 4, !tbaa !5
  %211 = bitcast i32* %num_components246 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #2
  %212 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %212, i32 0, i32 7
  %arrayidx247 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %213 = load i32, i32* %arrayidx247, align 4, !tbaa !5
  %214 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %214, i32 0, i32 6
  %215 = load i32, i32* %num_planes, align 4, !tbaa !116
  %mul248 = mul nsw i32 %213, %215
  %216 = load i32, i32* %bpc, align 4, !tbaa !5
  %div249 = sdiv i32 %mul248, %216
  store i32 %div249, i32* %num_components246, align 4, !tbaa !5
  %217 = bitcast i32* %sample_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #2
  %218 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl250 = shl i32 1, %218
  %sub251 = sub nsw i32 %shl250, 1
  store i32 %sub251, i32* %sample_max, align 4, !tbaa !5
  %219 = bitcast [768 x i8]* %palette252 to i8*
  call void @llvm.lifetime.start(i64 768, i8* %219) #2
  %220 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %220) #2
  %221 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %222 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor253 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %222, i32 0, i32 8
  %223 = load i32, i32* %CombineWithColor253, align 4, !tbaa !95
  %tobool254 = icmp ne i32 %223, 0
  br i1 %tobool254, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %if.else.244
  %224 = load i32, i32* %lop, align 4, !tbaa !5
  br label %cond.end.261

cond.false.256:                                   ; preds = %if.else.244
  %225 = load i32, i32* %lop, align 4, !tbaa !5
  %and257 = and i32 %225, 15
  %shl258 = shl i32 %and257, 4
  %226 = load i32, i32* %lop, align 4, !tbaa !5
  %and259 = and i32 %226, -241
  %or260 = or i32 %shl258, %and259
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.256, %cond.true.255
  %cond262 = phi i32 [ %224, %cond.true.255 ], [ %or260, %cond.false.256 ]
  %call263 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %221, i32 %cond262) #7
  store i32 %call263, i32* %code, align 4, !tbaa !5
  %227 = load i32, i32* %code, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %227, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %cond.end.261
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end.267:                                       ; preds = %cond.end.261
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.335, %if.end.267
  %228 = load i32, i32* %i, align 4, !tbaa !5
  %229 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %shl268 = shl i32 1, %229
  %cmp269 = icmp slt i32 %228, %shl268
  br i1 %cmp269, label %for.body, label %for.end.336

for.body:                                         ; preds = %for.cond
  %230 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %230) #2
  %231 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %231) #2
  %232 = bitcast i32* %cv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %232) #2
  %233 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %233, i32* %cv, align 4, !tbaa !5
  %234 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %234) #2
  %235 = bitcast i64* %ci to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #2
  %236 = load i32, i32* %num_components246, align 4, !tbaa !5
  %sub271 = sub nsw i32 %236, 1
  store i32 %sub271, i32* %j, align 4, !tbaa !5
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc, %for.body
  %237 = load i32, i32* %j, align 4, !tbaa !5
  %cmp273 = icmp sge i32 %237, 0
  br i1 %cmp273, label %for.body.275, label %for.end

for.body.275:                                     ; preds = %for.cond.272
  %238 = load i32, i32* %j, align 4, !tbaa !5
  %mul276 = mul nsw i32 %238, 2
  %idxprom = sext i32 %mul276 to i64
  %239 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode277 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %239, i32 0, i32 5
  %arrayidx278 = getelementptr inbounds [130 x float], [130 x float]* %Decode277, i32 0, i64 %idxprom
  %240 = load float, float* %arrayidx278, align 4, !tbaa !109
  %241 = load i32, i32* %cv, align 4, !tbaa !5
  %242 = load i32, i32* %sample_max, align 4, !tbaa !5
  %and279 = and i32 %241, %242
  %conv280 = sitofp i32 %and279 to float
  %243 = load i32, i32* %j, align 4, !tbaa !5
  %mul281 = mul nsw i32 %243, 2
  %add282 = add nsw i32 %mul281, 1
  %idxprom283 = sext i32 %add282 to i64
  %244 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode284 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %244, i32 0, i32 5
  %arrayidx285 = getelementptr inbounds [130 x float], [130 x float]* %Decode284, i32 0, i64 %idxprom283
  %245 = load float, float* %arrayidx285, align 4, !tbaa !109
  %246 = load i32, i32* %j, align 4, !tbaa !5
  %mul286 = mul nsw i32 %246, 2
  %idxprom287 = sext i32 %mul286 to i64
  %247 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode288 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %247, i32 0, i32 5
  %arrayidx289 = getelementptr inbounds [130 x float], [130 x float]* %Decode288, i32 0, i64 %idxprom287
  %248 = load float, float* %arrayidx289, align 4, !tbaa !109
  %sub290 = fsub float %245, %248
  %mul291 = fmul float %conv280, %sub290
  %249 = load i32, i32* %sample_max, align 4, !tbaa !5
  %conv292 = sitofp i32 %249 to float
  %div293 = fdiv float %mul291, %conv292
  %add294 = fadd float %240, %div293
  %250 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom295 = sext i32 %250 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom295
  store float %add294, float* %arrayidx296, align 4, !tbaa !109
  br label %for.inc

for.inc:                                          ; preds = %for.body.275
  %251 = load i32, i32* %bpc, align 4, !tbaa !5
  %252 = load i32, i32* %cv, align 4, !tbaa !5
  %shr297 = ashr i32 %252, %251
  store i32 %shr297, i32* %cv, align 4, !tbaa !5
  %253 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %253, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.272

for.end:                                          ; preds = %for.cond.272
  %254 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type298 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %254, i32 0, i32 0
  %255 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type298, align 8, !tbaa !117
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %255, i32 0, i32 10
  %256 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !119
  %257 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %258 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call299 = call i32 %256(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %257, %struct.gx_device_color_s* %devc, %struct.gs_imager_state_s* %258, %struct.gx_device_s* %259, i32 1) #7
  %type300 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  %260 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type300, align 8, !tbaa !69
  %261 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp301 = icmp eq %struct.gx_device_color_type_s* %260, %261
  br i1 %cmp301, label %if.end.304, label %if.then.303

if.then.303:                                      ; preds = %for.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.328

if.end.304:                                       ; preds = %for.end
  %colors305 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure306 = bitcast %union._c* %colors305 to i64*
  %262 = load i64, i64* %pure306, align 8, !tbaa !65
  store i64 %262, i64* %ci, align 8, !tbaa !65
  %263 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info307 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %263, i32 0, i32 11
  %num_components308 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info307, i32 0, i32 1
  %264 = load i32, i32* %num_components308, align 4, !tbaa !74
  %cmp309 = icmp eq i32 %264, 1
  br i1 %cmp309, label %if.then.311, label %if.else.315

if.then.311:                                      ; preds = %if.end.304
  %265 = load i64, i64* %ci, align 8, !tbaa !65
  %conv312 = trunc i64 %265 to i8
  %266 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom313 = sext i32 %266 to i64
  %arrayidx314 = getelementptr inbounds [768 x i8], [768 x i8]* %palette252, i32 0, i64 %idxprom313
  store i8 %conv312, i8* %arrayidx314, align 1, !tbaa !56
  br label %if.end.327

if.else.315:                                      ; preds = %if.end.304
  %267 = bitcast i8** %ppal to i8*
  call void @llvm.lifetime.start(i64 8, i8* %267) #2
  %268 = load i32, i32* %i, align 4, !tbaa !5
  %mul316 = mul nsw i32 %268, 3
  %idxprom317 = sext i32 %mul316 to i64
  %arrayidx318 = getelementptr inbounds [768 x i8], [768 x i8]* %palette252, i32 0, i64 %idxprom317
  store i8* %arrayidx318, i8** %ppal, align 8, !tbaa !1
  %269 = load i64, i64* %ci, align 8, !tbaa !65
  %shr319 = lshr i64 %269, 16
  %conv320 = trunc i64 %shr319 to i8
  %270 = load i8*, i8** %ppal, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i8, i8* %270, i64 0
  store i8 %conv320, i8* %arrayidx321, align 1, !tbaa !56
  %271 = load i64, i64* %ci, align 8, !tbaa !65
  %shr322 = lshr i64 %271, 8
  %conv323 = trunc i64 %shr322 to i8
  %272 = load i8*, i8** %ppal, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i8, i8* %272, i64 1
  store i8 %conv323, i8* %arrayidx324, align 1, !tbaa !56
  %273 = load i64, i64* %ci, align 8, !tbaa !65
  %conv325 = trunc i64 %273 to i8
  %274 = load i8*, i8** %ppal, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds i8, i8* %274, i64 2
  store i8 %conv325, i8* %arrayidx326, align 1, !tbaa !56
  %275 = bitcast i8** %ppal to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.315, %if.then.311
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.328

cleanup.328:                                      ; preds = %if.end.327, %if.then.303
  %276 = bitcast i64* %ci to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  %277 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast i32* %cv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %279) #2
  %280 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %280) #2
  %cleanup.dest.333 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.333, label %cleanup.347 [
    i32 0, label %cleanup.cont.334
  ]

cleanup.cont.334:                                 ; preds = %cleanup.328
  br label %for.inc.335

for.inc.335:                                      ; preds = %cleanup.cont.334
  %281 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %281, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.336:                                      ; preds = %for.cond
  %282 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info337 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %282, i32 0, i32 11
  %num_components338 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info337, i32 0, i32 1
  %283 = load i32, i32* %num_components338, align 4, !tbaa !74
  %cmp339 = icmp eq i32 %283, 1
  br i1 %cmp339, label %if.then.341, label %if.else.343

if.then.341:                                      ; preds = %for.end.336
  %284 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %palette252, i32 0, i32 0
  %285 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %shl342 = shl i32 1, %285
  call void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %284, i32 1, i8* %arraydecay, i32 %shl342) #7
  br label %if.end.346

if.else.343:                                      ; preds = %for.end.336
  %286 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %arraydecay344 = getelementptr inbounds [768 x i8], [768 x i8]* %palette252, i32 0, i32 0
  %287 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %shl345 = shl i32 3, %287
  call void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %286, i32 2, i8* %arraydecay344, i32 %shl345) #7
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.343, %if.then.341
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.347

cleanup.347:                                      ; preds = %if.then.266, %if.end.346, %cleanup.328
  %288 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = bitcast [768 x i8]* %palette252 to i8*
  call void @llvm.lifetime.end(i64 768, i8* %289) #2
  %290 = bitcast i32* %sample_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #2
  %291 = bitcast i32* %num_components246 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #2
  %292 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #2
  %cleanup.dest.352 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.352, label %cleanup.356 [
    i32 0, label %cleanup.cont.353
  ]

cleanup.cont.353:                                 ; preds = %cleanup.347
  br label %if.end.354

if.end.354:                                       ; preds = %cleanup.cont.353, %if.end.243
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.356

cleanup.356:                                      ; preds = %if.then.236, %if.end.355, %cleanup.347, %cleanup
  %293 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #2
  %cleanup.dest.357 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.357, label %cleanup.370 [
    i32 0, label %cleanup.cont.358
    i32 3, label %fail
  ]

cleanup.cont.358:                                 ; preds = %cleanup.356
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

fail:                                             ; preds = %cleanup.356, %if.then.57
  %294 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs359 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %294, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs359, i32 0, i32 2
  %295 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !121
  %296 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %297 = load i8*, i8** %row_data, align 8, !tbaa !1
  call void %295(%struct.gs_memory_s* %296, i8* %297, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #7
  %298 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs360 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %298, i32 0, i32 1
  %free_object361 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs360, i32 0, i32 2
  %299 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object361, align 8, !tbaa !121
  %300 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %301 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %302 = bitcast %struct.pclxl_image_enum_s* %301 to i8*
  call void %299(%struct.gs_memory_s* %300, i8* %302, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #7
  br label %use_default

use_default:                                      ; preds = %fail, %if.then
  %303 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info362 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %303, i32 0, i32 11
  %num_components363 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info362, i32 0, i32 1
  %304 = load i32, i32* %num_components363, align 4, !tbaa !74
  %cmp364 = icmp eq i32 %304, 1
  br i1 %cmp364, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %use_default
  %305 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %305, i32 1) #7
  br label %if.end.368

if.else.367:                                      ; preds = %use_default
  %306 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %306, i32 2) #7
  br label %if.end.368

if.end.368:                                       ; preds = %if.else.367, %if.then.366
  %307 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %308 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %309 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %310 = load i32, i32* %format.addr, align 4, !tbaa !56
  %311 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %312 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %313 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %314 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %315 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call369 = call i32 @gx_default_begin_image(%struct.gx_device_s* %307, %struct.gs_imager_state_s* %308, %struct.gs_image1_s* %309, i32 %310, %struct.gs_int_rect_s* %311, %struct.gx_device_color_s* %312, %struct.gx_clip_path_s* %313, %struct.gs_memory_s* %314, %struct.gx_image_enum_common_s** %315) #7
  store i32 %call369, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

cleanup.370:                                      ; preds = %if.end.368, %cleanup.cont.358, %cleanup.356, %if.then.61
  %316 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %317) #2
  %318 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast i32* %row_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #2
  %320 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #2
  %321 = bitcast i8** %row_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #2
  %322 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #2
  %323 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #2
  %324 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #2
  %325 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #2
  %326 = load i32, i32* %retval
  ret i32 %326
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %shl = shl i32 %0, 1
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %xor = xor i32 %shl, %1
  %and = and i32 %xor, 170
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %4 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %5 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %6 = load i64, i64* %id.addr, align 8, !tbaa !65
  %7 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %9 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %width.addr, align 4, !tbaa !5
  %13 = load i32, i32* %height.addr, align 4, !tbaa !5
  %14 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_strip_copy_rop(%struct.gx_device_s* %2, i8* %3, i32 %4, i32 %5, i64 %6, i64* %7, %struct.gx_strip_bitmap_s* %8, i64* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16) #7
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pclxl_page_init(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_pclxl_s* %0 to %struct.gx_device_vector_s*
  call void @gdev_vector_init(%struct.gx_device_vector_s* %1) #7
  %2 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %2, i32 0, i32 63
  store i32 0, i32* %in_page, align 4, !tbaa !57
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %fill_rule = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %3, i32 0, i32 79
  store i32 0, i32* %fill_rule, align 4, !tbaa !122
  %4 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %clip_rule = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %4, i32 0, i32 80
  store i32 0, i32* %clip_rule, align 4, !tbaa !123
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 81
  store i32 0, i32* %color_space, align 4, !tbaa !124
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 82
  %size = getelementptr inbounds %struct.pal_, %struct.pal_* %palette, i32 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !125
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %font_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 85
  store i32 0, i32* %font_set, align 4, !tbaa !126
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %state_rotated = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %8, i32 0, i32 86
  store i32 0, i32* %state_rotated, align 4, !tbaa !108
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 88
  store i32 0, i32* %scaled, align 4, !tbaa !127
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %x_scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %10, i32 0, i32 89
  store double 1.000000e+00, double* %x_scale, align 8, !tbaa !128
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %y_scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 90
  store double 1.000000e+00, double* %y_scale, align 8, !tbaa !129
  %12 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %pen_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %12, i32 0, i32 91
  store i32 0, i32* %pen_null, align 4, !tbaa !130
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %brush_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 92
  store i32 0, i32* %brush_null, align 4, !tbaa !131
  ret void
}

declare i32 @px_write_file_header(%struct.stream_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_beginpage(%struct.gx_device_vector_s* %vdev) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %media_source = alloca i8, align 1
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 47
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !44
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %media_source) #2
  store i8 1, i8* %media_source, align 1, !tbaa !56
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 76
  %7 = load i32, i32* %page, align 4, !tbaa !84
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %page, align 4, !tbaa !84
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_vector_s* %9 to %struct.gx_device_s*
  %call = call i32 @px_write_page_header(%struct.stream_s* %8, %struct.gx_device_s* %10) #7
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %ManualFeed_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 69
  %12 = load i32, i32* %ManualFeed_set, align 4, !tbaa !132
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %ManualFeed = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 68
  %14 = load i32, i32* %ManualFeed, align 4, !tbaa !133
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 2, i8* %media_source, align 1, !tbaa !56
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %entry
  %15 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %15, i32 0, i32 72
  %16 = load i32, i32* %MediaPosition_set, align 4, !tbaa !52
  %tobool2 = icmp ne i32 %16, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %if.else
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %17, i32 0, i32 71
  %18 = load i32, i32* %MediaPosition, align 4, !tbaa !55
  %cmp = icmp sge i32 %18, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true.3
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaPosition5 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %19, i32 0, i32 71
  %20 = load i32, i32* %MediaPosition5, align 4, !tbaa !55
  %conv = trunc i32 %20 to i8
  store i8 %conv, i8* %media_source, align 1, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true.3, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_vector_s* %22 to %struct.gx_device_s*
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %media_size = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 67
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %page7 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 76
  %26 = load i32, i32* %page7, align 4, !tbaa !84
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %27, i32 0, i32 77
  %28 = load i32, i32* %Duplex, align 4, !tbaa !83
  %29 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %Tumble = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %29, i32 0, i32 78
  %30 = load i32, i32* %Tumble, align 4, !tbaa !85
  %31 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %31, i32 0, i32 75
  %32 = load i32, i32* %MediaType_set, align 4, !tbaa !53
  %33 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %MediaType = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %33, i32 0, i32 74
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %MediaType, i32 0, i32 0
  %call8 = call i32 @px_write_select_media(%struct.stream_s* %21, %struct.gx_device_s* %23, i32* %media_size, i8* %media_source, i32 %26, i32 %28, i32 %30, i32 %32, i8* %arraydecay) #7
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %34, i8 zeroext 67) #7
  call void @llvm.lifetime.end(i64 1, i8* %media_source) #2
  %35 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setlinewidth(%struct.gx_device_vector_s* %vdev, double %width) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %width.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !134
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load double, double* %width.addr, align 8, !tbaa !134
  %add = fadd double %3, 5.000000e-01
  %conv = fptoui double %add to i32
  call void @px_put_us(%struct.stream_s* %2, i32 %conv) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %4, i32 75, i32 122) #7
  %5 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setlinecap(%struct.gx_device_vector_s* %vdev, i32 %cap) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %cap.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !56
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load i32, i32* %cap.addr, align 4, !tbaa !56
  %conv = trunc i32 %3 to i8
  call void @px_put_ub(%struct.stream_s* %2, i8 zeroext %conv) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %4, i32 71, i32 113) #7
  %5 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setlinejoin(%struct.gx_device_vector_s* %vdev, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %join.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp = icmp ult i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp1 = icmp ugt i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !135
  %call2 = call i8* @gs_program_name() #7
  %call3 = call i64 @gs_revision_number() #7
  call void @emprintf_program_ident(%struct.gs_memory_s* %5, i8* %call2, i64 %call3) #7
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !135
  %8 = load i32, i32* %join.addr, align 4, !tbaa !56
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %8) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load i32, i32* %join.addr, align 4, !tbaa !56
  %conv = trunc i32 %10 to i8
  call void @px_put_ub(%struct.stream_s* %9, i8 zeroext %conv) #7
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %11, i32 72, i32 114) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setmiterlimit(%struct.gx_device_vector_s* %vdev, double %limit) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %limit.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %i_limit = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !134
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %i_limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load double, double* %limit.addr, align 8, !tbaa !134
  %add = fadd double %3, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %i_limit, align 4, !tbaa !5
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load i32, i32* %i_limit, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %i_limit, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 1, %cond.false ]
  call void @px_put_u(%struct.stream_s* %4, i32 %cond) #7
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %7, i32 73, i32 115) #7
  %8 = bitcast i32* %i_limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setdash(%struct.gx_device_vector_s* %vdev, float* %pattern, i32 %count, double %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pattern.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store double %offset, double* %offset.addr, align 8, !tbaa !134
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @pclxl_setdash.nac_, i32 0, i32 0), i32 4) #7
  br label %if.end.13

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %4, 255
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.3:                                        ; preds = %if.else
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call4 = call i32 @spputc(%struct.stream_s* %6, i8 zeroext -55) #7
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = trunc i32 %8 to i8
  call void @px_put_ub(%struct.stream_s* %7, i8 zeroext %conv) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.3
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* %count.addr, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %12 to i64
  %13 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %13, i64 %idxprom
  %14 = load float, float* %arrayidx, align 4, !tbaa !109
  %conv7 = fptoui float %14 to i32
  call void @px_put_s(%struct.stream_s* %11, i32 %conv7) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_a(%struct.stream_s* %16, i32 74) #7
  %17 = load double, double* %offset.addr, align 8, !tbaa !134
  %cmp8 = fcmp une double %17, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.end
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %19 = load double, double* %offset.addr, align 8, !tbaa !134
  %conv11 = fptoui double %19 to i32
  call void @px_put_usa(%struct.stream_s* %18, i32 %conv11, i32 67) #7
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.end
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call14 = call i32 @spputc(%struct.stream_s* %21, i8 zeroext 112) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.2
  %22 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gdev_vector_setflat(%struct.gx_device_vector_s*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setlogop(%struct.gx_device_vector_s* %vdev, i32 %lop, i32 %diff) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %lop.addr = alloca i32, align 4
  %diff.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load i32, i32* %diff.addr, align 4, !tbaa !5
  %and = and i32 %2, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and1 = and i32 %4, 256
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  call void @px_put_ub(%struct.stream_s* %3, i8 zeroext %conv) #7
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %5, i32 45, i32 124) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %diff.addr, align 4, !tbaa !5
  %and3 = and i32 %6, 512
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and6 = and i32 %8, 512
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 1, i32 0
  %conv9 = trunc i32 %cond8 to i8
  call void @px_put_ub(%struct.stream_s* %7, i8 zeroext %conv9) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %9, i32 45, i32 120) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %10 = load i32, i32* %diff.addr, align 4, !tbaa !5
  %and11 = and i32 %10, 255
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and14 = and i32 %12, 255
  %conv15 = trunc i32 %and14 to i8
  call void @px_put_ub(%struct.stream_s* %11, i8 zeroext %conv15) #7
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %13, i32 44, i32 123) #7
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_can_handle_hl_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setfillcolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 @pclxl_set_color(%struct.gx_device_pclxl_s* %3, %struct.gx_device_color_s* %4, i32 4, i32 99) #7
  %5 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_setstrokecolor(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdc) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %call = call i32 @pclxl_set_color(%struct.gx_device_pclxl_s* %3, %struct.gx_device_color_s* %4, i32 5, i32 121) #7
  %5 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 %call
}

declare i32 @gdev_vector_dopath(%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %6, 16777216
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %8, 16777216
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %9 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %9, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %10 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %10, 16777216
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %11 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %11, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %12, 16777216
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.12
  %13 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and = and i32 %13, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %14 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %15 = load i32, i32* %type.addr, align 4, !tbaa !56
  call void @pclxl_set_paints(%struct.gx_device_pclxl_s* %14, i32 %15) #7
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %18 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %19 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %20 = load i32, i32* %y1.addr, align 4, !tbaa !5
  call void @px_put_usq_fixed(%struct.stream_s* %16, i32 %17, i32 %18, i32 %19, i32 %20) #7
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %21, i32 66, i32 160) #7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %22 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and16 = and i32 %22, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %24 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %25 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %26 = load i32, i32* %x1.addr, align 4, !tbaa !5
  %27 = load i32, i32* %y1.addr, align 4, !tbaa !5
  call void @px_put_usq_fixed(%struct.stream_s* %23, i32 %24, i32 %25, i32 %26, i32 %27) #7
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @pclxl_dorect.cr_, i32 0, i32 0), i32 7) #7
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then
  %29 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_beginpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %5, i8 zeroext -123) #7
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 83
  %type2 = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 1
  store i32 0, i32* %type2, align 4, !tbaa !136
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 83
  %count = getelementptr inbounds %struct.pts_, %struct.pts_* %points3, i32 0, i32 2
  store i32 0, i32* %count, align 4, !tbaa !137
  %8 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_moveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !134
  store double %y0, double* %y0.addr, align 8, !tbaa !134
  store double %x, double* %x.addr, align 8, !tbaa !134
  store double %y, double* %y.addr, align 8, !tbaa !134
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call = call i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %4) #7
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
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %8 = load double, double* %x.addr, align 8, !tbaa !134
  %add = fadd double %8, 5.000000e-01
  %conv = fptosi double %add to i32
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 83
  %current = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4, !tbaa !138
  %10 = load double, double* %y.addr, align 8, !tbaa !134
  %add2 = fadd double %10, 5.000000e-01
  %conv3 = fptosi double %add2 to i32
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 83
  %current5 = getelementptr inbounds %struct.pts_, %struct.pts_* %points4, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current5, i32 0, i32 1
  store i32 %conv3, i32* %y6, align 4, !tbaa !139
  %call7 = call i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %7, i32 %conv, i32 %conv3) #7
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_lineto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ppt = alloca %struct.gs_int_point_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !134
  store double %y0, double* %y0.addr, align 8, !tbaa !134
  store double %x, double* %x.addr, align 8, !tbaa !134
  store double %y, double* %y.addr, align 8, !tbaa !134
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %3, i32 0, i32 83
  %type1 = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 1
  %4 = load i32, i32* %type1, align 4, !tbaa !136
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 83
  %count = getelementptr inbounds %struct.pts_, %struct.pts_* %points2, i32 0, i32 2
  %6 = load i32, i32* %count, align 4, !tbaa !137
  %cmp3 = icmp sge i32 %6, 40
  br i1 %cmp3, label %if.then, label %if.end.20

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 83
  %type5 = getelementptr inbounds %struct.pts_, %struct.pts_* %points4, i32 0, i32 1
  %8 = load i32, i32* %type5, align 4, !tbaa !136
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call = call i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %10) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %if.then
  %14 = load double, double* %x0.addr, align 8, !tbaa !134
  %add = fadd double %14, 5.000000e-01
  %conv = fptosi double %add to i32
  %15 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points11 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %15, i32 0, i32 83
  %current = getelementptr inbounds %struct.pts_, %struct.pts_* %points11, i32 0, i32 0
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current, i32 0, i32 0
  store i32 %conv, i32* %x12, align 4, !tbaa !138
  %16 = load double, double* %y0.addr, align 8, !tbaa !134
  %add13 = fadd double %16, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points15 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %17, i32 0, i32 83
  %current16 = getelementptr inbounds %struct.pts_, %struct.pts_* %points15, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current16, i32 0, i32 1
  store i32 %conv14, i32* %y17, align 4, !tbaa !139
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points18 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 83
  %type19 = getelementptr inbounds %struct.pts_, %struct.pts_* %points18, i32 0, i32 1
  store i32 1, i32* %type19, align 4, !tbaa !136
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.10, %lor.lhs.false
  %19 = bitcast %struct.gs_int_point_s** %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points21 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %20, i32 0, i32 83
  %count22 = getelementptr inbounds %struct.pts_, %struct.pts_* %points21, i32 0, i32 2
  %21 = load i32, i32* %count22, align 4, !tbaa !137
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %count22, align 4, !tbaa !137
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points23 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %22, i32 0, i32 83
  %data = getelementptr inbounds %struct.pts_, %struct.pts_* %points23, i32 0, i32 3
  %arrayidx = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data, i32 0, i64 %idxprom
  store %struct.gs_int_point_s* %arrayidx, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %23 = load double, double* %x.addr, align 8, !tbaa !134
  %add24 = fadd double %23, 5.000000e-01
  %conv25 = fptosi double %add24 to i32
  %24 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %24, i32 0, i32 0
  store i32 %conv25, i32* %x26, align 4, !tbaa !140
  %25 = load double, double* %y.addr, align 8, !tbaa !134
  %add27 = fadd double %25, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  %26 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %26, i32 0, i32 1
  store i32 %conv28, i32* %y29, align 4, !tbaa !141
  %27 = bitcast %struct.gs_int_point_s** %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.20, %cleanup
  %28 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_curveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %type) #0 {
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
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ppt = alloca %struct.gs_int_point_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !134
  store double %y0, double* %y0.addr, align 8, !tbaa !134
  store double %x1, double* %x1.addr, align 8, !tbaa !134
  store double %y1, double* %y1.addr, align 8, !tbaa !134
  store double %x2, double* %x2.addr, align 8, !tbaa !134
  store double %y2, double* %y2.addr, align 8, !tbaa !134
  store double %x3, double* %x3.addr, align 8, !tbaa !134
  store double %y3, double* %y3.addr, align 8, !tbaa !134
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %3, i32 0, i32 83
  %type1 = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 1
  %4 = load i32, i32* %type1, align 4, !tbaa !136
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 83
  %count = getelementptr inbounds %struct.pts_, %struct.pts_* %points2, i32 0, i32 2
  %6 = load i32, i32* %count, align 4, !tbaa !137
  %cmp3 = icmp sge i32 %6, 38
  br i1 %cmp3, label %if.then, label %if.end.18

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 83
  %type5 = getelementptr inbounds %struct.pts_, %struct.pts_* %points4, i32 0, i32 1
  %8 = load i32, i32* %type5, align 4, !tbaa !136
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call = call i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %10) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %if.then
  %14 = load double, double* %x0.addr, align 8, !tbaa !134
  %add = fadd double %14, 5.000000e-01
  %conv = fptosi double %add to i32
  %15 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points11 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %15, i32 0, i32 83
  %current = getelementptr inbounds %struct.pts_, %struct.pts_* %points11, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current, i32 0, i32 0
  store i32 %conv, i32* %x, align 4, !tbaa !138
  %16 = load double, double* %y0.addr, align 8, !tbaa !134
  %add12 = fadd double %16, 5.000000e-01
  %conv13 = fptosi double %add12 to i32
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points14 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %17, i32 0, i32 83
  %current15 = getelementptr inbounds %struct.pts_, %struct.pts_* %points14, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current15, i32 0, i32 1
  store i32 %conv13, i32* %y, align 4, !tbaa !139
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points16 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 83
  %type17 = getelementptr inbounds %struct.pts_, %struct.pts_* %points16, i32 0, i32 1
  store i32 2, i32* %type17, align 4, !tbaa !136
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.10, %lor.lhs.false
  %19 = bitcast %struct.gs_int_point_s** %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points19 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %20, i32 0, i32 83
  %count20 = getelementptr inbounds %struct.pts_, %struct.pts_* %points19, i32 0, i32 2
  %21 = load i32, i32* %count20, align 4, !tbaa !137
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points21 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %22, i32 0, i32 83
  %data = getelementptr inbounds %struct.pts_, %struct.pts_* %points21, i32 0, i32 3
  %arrayidx = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data, i32 0, i64 %idxprom
  store %struct.gs_int_point_s* %arrayidx, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %23 = load double, double* %x1.addr, align 8, !tbaa !134
  %add22 = fadd double %23, 5.000000e-01
  %conv23 = fptosi double %add22 to i32
  %24 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %x24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %24, i32 0, i32 0
  store i32 %conv23, i32* %x24, align 4, !tbaa !140
  %25 = load double, double* %y1.addr, align 8, !tbaa !134
  %add25 = fadd double %25, 5.000000e-01
  %conv26 = fptosi double %add25 to i32
  %26 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %26, i32 0, i32 1
  store i32 %conv26, i32* %y27, align 4, !tbaa !141
  %27 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %27, i32 1
  store %struct.gs_int_point_s* %incdec.ptr, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %28 = load double, double* %x2.addr, align 8, !tbaa !134
  %add28 = fadd double %28, 5.000000e-01
  %conv29 = fptosi double %add28 to i32
  %29 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %x30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %29, i32 0, i32 0
  store i32 %conv29, i32* %x30, align 4, !tbaa !140
  %30 = load double, double* %y2.addr, align 8, !tbaa !134
  %add31 = fadd double %30, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  %31 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %31, i32 0, i32 1
  store i32 %conv32, i32* %y33, align 4, !tbaa !141
  %32 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %32, i32 1
  store %struct.gs_int_point_s* %incdec.ptr34, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %33 = load double, double* %x3.addr, align 8, !tbaa !134
  %add35 = fadd double %33, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  %34 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %x37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %34, i32 0, i32 0
  store i32 %conv36, i32* %x37, align 4, !tbaa !140
  %35 = load double, double* %y3.addr, align 8, !tbaa !134
  %add38 = fadd double %35, 5.000000e-01
  %conv39 = fptosi double %add38 to i32
  %36 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt, align 8, !tbaa !1
  %y40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %36, i32 0, i32 1
  store i32 %conv39, i32* %y40, align 4, !tbaa !141
  %37 = bitcast %struct.gs_int_point_s** %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points41 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %38, i32 0, i32 83
  %count42 = getelementptr inbounds %struct.pts_, %struct.pts_* %points41, i32 0, i32 2
  %39 = load i32, i32* %count42, align 4, !tbaa !137
  %add43 = add nsw i32 %39, 3
  store i32 %add43, i32* %count42, align 4, !tbaa !137
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %if.end.18, %cleanup
  %40 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_closepath(%struct.gx_device_vector_s* %vdev, double %x, double %y, double %x_start, double %y_start, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %x_start.addr = alloca double, align 8
  %y_start.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !134
  store double %y, double* %y.addr, align 8, !tbaa !134
  store double %x_start, double* %x_start.addr, align 8, !tbaa !134
  store double %y_start, double* %y_start.addr, align 8, !tbaa !134
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call1 = call i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %6) #7
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %9, i8 zeroext -124) #7
  %10 = load double, double* %x_start.addr, align 8, !tbaa !134
  %add = fadd double %10, 5.000000e-01
  %conv = fptosi double %add to i32
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 83
  %current = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current, i32 0, i32 0
  store i32 %conv, i32* %x3, align 4, !tbaa !138
  %12 = load double, double* %y_start.addr, align 8, !tbaa !134
  %add4 = fadd double %12, 5.000000e-01
  %conv5 = fptosi double %add4 to i32
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %points6 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 83
  %current7 = getelementptr inbounds %struct.pts_, %struct.pts_* %points6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current7, i32 0, i32 1
  store i32 %conv5, i32* %y8, align 4, !tbaa !139
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_endpath(%struct.gx_device_vector_s* %vdev, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %rule = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %2, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call1 = call i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %6) #7
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %rule to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and = and i32 %8, 8
  store i32 %and, i32* %rule, align 4, !tbaa !56
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and2 = and i32 %11, 3
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %rule, align 4, !tbaa !56
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %fill_rule = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 79
  %14 = load i32, i32* %fill_rule, align 4, !tbaa !122
  %cmp4 = icmp ne i32 %12, %14
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then.3
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load i32, i32* %rule, align 4, !tbaa !56
  %cmp6 = icmp eq i32 %16, 8
  %cond = select i1 %cmp6, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  call void @px_put_ub(%struct.stream_s* %15, i8 zeroext %conv) #7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %17, i32 70, i32 110) #7
  %18 = load i32, i32* %rule, align 4, !tbaa !56
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %fill_rule7 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %19, i32 0, i32 79
  store i32 %18, i32* %fill_rule7, align 4, !tbaa !122
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.then.3
  %20 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %21 = load i32, i32* %type.addr, align 4, !tbaa !56
  call void @pclxl_set_paints(%struct.gx_device_pclxl_s* %20, i32 %21) #7
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %22, i8 zeroext -122) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %if.end
  %23 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and11 = and i32 %23, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.10
  %24 = load i32, i32* %rule, align 4, !tbaa !56
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %clip_rule = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 80
  %26 = load i32, i32* %clip_rule, align 4, !tbaa !123
  %cmp14 = icmp ne i32 %24, %26
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.then.13
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %28 = load i32, i32* %rule, align 4, !tbaa !56
  %cmp17 = icmp eq i32 %28, 8
  %cond19 = select i1 %cmp17, i32 1, i32 0
  %conv20 = trunc i32 %cond19 to i8
  call void @px_put_ub(%struct.stream_s* %27, i8 zeroext %conv20) #7
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %29, i32 84, i32 127) #7
  %30 = load i32, i32* %rule, align 4, !tbaa !56
  %31 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %clip_rule21 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %31, i32 0, i32 80
  store i32 %30, i32* %clip_rule21, align 4, !tbaa !123
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %if.then.13
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pclxl_endpath.scr_, i32 0, i32 0), i32 5) #7
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %33 = bitcast i32* %rule to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @px_write_page_header(%struct.stream_s*, %struct.gx_device_s*) #1

declare i32 @px_write_select_media(%struct.stream_s*, %struct.gx_device_s*, i32*, i8*, i32, i32, i32, i32, i8*) #1

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #1

declare %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s*) #1

declare void @px_put_us(%struct.stream_s*, i32) #1

declare void @px_put_ac(%struct.stream_s*, i32, i32) #1

declare void @px_put_ub(%struct.stream_s*, i8 zeroext) #1

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #1

declare i8* @gs_program_name() #1

declare i64 @gs_revision_number() #1

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

declare void @px_put_u(%struct.stream_s*, i32) #1

declare void @px_put_bytes(%struct.stream_s*, i8*, i32) #1

declare void @px_put_s(%struct.stream_s*, i32) #1

declare void @px_put_a(%struct.stream_s*, i32) #1

declare void @px_put_usa(%struct.stream_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_set_color(%struct.gx_device_pclxl_s* %xdev, %struct.gx_device_color_s* %pdc, i32 %null_source, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %null_source.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %color = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store i32 %null_source, i32* %null_source.addr, align 4, !tbaa !56
  store i32 %op, i32* %op.addr, align 4, !tbaa !56
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !69
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_color_type_s* %3, %4
  br i1 %cmp, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %5 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %7 = load i64, i64* %pure, align 8, !tbaa !65
  store i64 %7, i64* %color, align 8, !tbaa !65
  %8 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp1 = icmp eq i32 %8, 121
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %pen_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 91
  store i32 0, i32* %pen_null, align 4, !tbaa !130
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp3 = icmp eq i32 %10, 99
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %brush_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 92
  store i32 0, i32* %brush_null, align 4, !tbaa !131
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !142
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %14 = load i64, i64* %color, align 8, !tbaa !65
  %shr = lshr i64 %14, 8
  %15 = load i64, i64* %color, align 8, !tbaa !65
  %and = and i64 %15, 65535
  %cmp7 = icmp eq i64 %shr, %and
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  %16 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %16, i32 1) #7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i64, i64* %color, align 8, !tbaa !65
  %conv = trunc i64 %18 to i8
  call void @px_put_uba(%struct.stream_s* %17, i8 zeroext %conv, i32 9) #7
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %19, i32 2) #7
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext -56) #7
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ub(%struct.stream_s* %21, i8 zeroext 3) #7
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load i64, i64* %color, align 8, !tbaa !65
  %shr10 = lshr i64 %23, 16
  %conv11 = trunc i64 %shr10 to i8
  %call12 = call i32 @spputc(%struct.stream_s* %22, i8 zeroext %conv11) #7
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load i64, i64* %color, align 8, !tbaa !65
  %shr13 = lshr i64 %25, 8
  %conv14 = trunc i64 %shr13 to i8
  %call15 = call i32 @spputc(%struct.stream_s* %24, i8 zeroext %conv14) #7
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %27 = load i64, i64* %color, align 8, !tbaa !65
  %conv16 = trunc i64 %27 to i8
  %call17 = call i32 @spputc(%struct.stream_s* %26, i8 zeroext %conv16) #7
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_a(%struct.stream_s* %28, i32 11) #7
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.8
  %29 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  br label %if.end.39

if.else.19:                                       ; preds = %entry
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type20 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %30, i32 0, i32 0
  %31 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type20, align 8, !tbaa !69
  %32 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_null, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.gx_device_color_type_s* %31, %32
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.19
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 0
  %34 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type24, align 8, !tbaa !69
  %35 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_none, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.gx_device_color_type_s* %34, %35
  br i1 %cmp25, label %if.else.37, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.23, %if.else.19
  %36 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp28 = icmp eq i32 %36, 121
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.then.27
  %37 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp31 = icmp eq i32 %37, 99
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.27
  %38 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %39 = load i32, i32* %null_source.addr, align 4, !tbaa !56
  %40 = load i32, i32* %op.addr, align 4, !tbaa !56
  %call34 = call i32 @pclxl_set_cached_nulls(%struct.gx_device_pclxl_s* %38, i32 %39, i32 %40) #7
  store i32 %call34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.35:                                       ; preds = %lor.lhs.false.30
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %42 = load i32, i32* %null_source.addr, align 4, !tbaa !56
  call void @px_put_uba(%struct.stream_s* %41, i8 zeroext 0, i32 %42) #7
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false.23
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.18
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %44 = load i32, i32* %op.addr, align 4, !tbaa !56
  %conv40 = trunc i32 %44 to i8
  %call41 = call i32 @spputc(%struct.stream_s* %43, i8 zeroext %conv40) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.else.37, %if.then.33
  %45 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %xdev) #4 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_pclxl_s* %0 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  ret %struct.stream_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_color_space(%struct.gx_device_pclxl_s* %xdev, i32 %color_space) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %color_space.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %color_space, i32* %color_space.addr, align 4, !tbaa !56
  %0 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_space1 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %0, i32 0, i32 81
  %1 = load i32, i32* %color_space1, align 4, !tbaa !124
  %2 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %4) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %conv = trunc i32 %6 to i8
  call void @px_put_ub(%struct.stream_s* %5, i8 zeroext %conv) #7
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %7, i32 3, i32 106) #7
  %8 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_space2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 81
  store i32 %8, i32* %color_space2, align 4, !tbaa !124
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %10, i32 0, i32 82
  %size = getelementptr inbounds %struct.pal_, %struct.pal_* %palette, i32 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !125
  %11 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @px_put_uba(%struct.stream_s*, i8 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_set_cached_nulls(%struct.gx_device_pclxl_s* %xdev, i32 %null_source, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %null_source.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %null_source, i32* %null_source.addr, align 4, !tbaa !56
  store i32 %op, i32* %op.addr, align 4, !tbaa !56
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp = icmp eq i32 %2, 121
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %pen_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %3, i32 0, i32 91
  %4 = load i32, i32* %pen_null, align 4, !tbaa !130
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %pen_null2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 91
  store i32 1, i32* %pen_null2, align 4, !tbaa !130
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* %op.addr, align 4, !tbaa !56
  %cmp4 = icmp eq i32 %6, 99
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %brush_null = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 92
  %8 = load i32, i32* %brush_null, align 4, !tbaa !131
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.8:                                        ; preds = %if.then.5
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %brush_null9 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 92
  store i32 1, i32* %brush_null9, align 4, !tbaa !131
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.3
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load i32, i32* %null_source.addr, align 4, !tbaa !56
  %conv = trunc i32 %11 to i8
  %conv12 = zext i8 %conv to i32
  call void @px_put_uba(%struct.stream_s* %10, i8 zeroext 0, i32 %conv12) #7
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load i32, i32* %op.addr, align 4, !tbaa !56
  %conv13 = trunc i32 %13 to i8
  %call14 = call i32 @spputc(%struct.stream_s* %12, i8 zeroext %conv13) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.7, %if.then.1
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_paints(%struct.gx_device_pclxl_s* %xdev, i32 %type) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %rule = alloca i32, align 4
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %rule to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and = and i32 %3, 8
  store i32 %and, i32* %rule, align 4, !tbaa !56
  %4 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and1 = and i32 %4, 1
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.end.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 56
  %saved_dev_color = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_fill_color, i32 0, i32 4
  %type2 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color, i32 0, i32 0
  %6 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type2, align 8, !tbaa !143
  %7 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_none, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_type_s* %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_fill_color3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %8, i32 0, i32 56
  %saved_dev_color4 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_fill_color3, i32 0, i32 4
  %type5 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color4, i32 0, i32 0
  %9 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type5, align 8, !tbaa !143
  %10 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_null, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_device_color_type_s* %9, %10
  br i1 %cmp6, label %if.end.15, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call7 = call i32 @pclxl_set_cached_nulls(%struct.gx_device_pclxl_s* %11, i32 4, i32 99) #7
  %12 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_null, align 8, !tbaa !1
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_fill_color8 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 56
  %saved_dev_color9 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_fill_color8, i32 0, i32 4
  %type10 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color9, i32 0, i32 0
  store %struct.gx_device_color_type_s* %12, %struct.gx_device_color_type_s** %type10, align 8, !tbaa !143
  %14 = load i32, i32* %rule, align 4, !tbaa !56
  %15 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %fill_rule = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %15, i32 0, i32 79
  %16 = load i32, i32* %fill_rule, align 4, !tbaa !122
  %cmp11 = icmp ne i32 %14, %16
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i32, i32* %rule, align 4, !tbaa !56
  %cmp13 = icmp eq i32 %18, 8
  %cond = select i1 %cmp13, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  call void @px_put_ub(%struct.stream_s* %17, i8 zeroext %conv) #7
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %19, i32 70, i32 110) #7
  %20 = load i32, i32* %rule, align 4, !tbaa !56
  %21 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %fill_rule14 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %21, i32 0, i32 79
  store i32 %20, i32* %fill_rule14, align 4, !tbaa !122
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false, %entry
  %22 = load i32, i32* %type.addr, align 4, !tbaa !56
  %and16 = and i32 %22, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end.34, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.end.15
  %23 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %23, i32 0, i32 57
  %saved_dev_color19 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32 0, i32 4
  %type20 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color19, i32 0, i32 0
  %24 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type20, align 8, !tbaa !143
  %25 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_none, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.gx_device_color_type_s* %24, %25
  br i1 %cmp21, label %if.then.29, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.18
  %26 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_stroke_color24 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %26, i32 0, i32 57
  %saved_dev_color25 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_stroke_color24, i32 0, i32 4
  %type26 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color25, i32 0, i32 0
  %27 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type26, align 8, !tbaa !143
  %28 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_null, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.gx_device_color_type_s* %27, %28
  br i1 %cmp27, label %if.end.34, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.23, %land.lhs.true.18
  %29 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call30 = call i32 @pclxl_set_cached_nulls(%struct.gx_device_pclxl_s* %29, i32 5, i32 121) #7
  %30 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_null, align 8, !tbaa !1
  %31 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %saved_stroke_color31 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %31, i32 0, i32 57
  %saved_dev_color32 = getelementptr inbounds %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s* %saved_stroke_color31, i32 0, i32 4
  %type33 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %saved_dev_color32, i32 0, i32 0
  store %struct.gx_device_color_type_s* %30, %struct.gx_device_color_type_s** %type33, align 8, !tbaa !143
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %lor.lhs.false.23, %if.end.15
  %32 = bitcast i32* %rule to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret void
}

declare void @px_put_usq_fixed(%struct.stream_s*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_flush_points(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %count = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %op = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %uor = alloca i32, align 4
  %sor = alloca i32, align 4
  %data_type = alloca i32, align 4
  %i = alloca i32, align 4
  %di = alloca i32, align 4
  %diffs = alloca [80 x i8], align 16
  %x_scale = alloca double, align 8
  %y_scale = alloca double, align 8
  %temp_origin_x = alloca i32, align 4
  %temp_origin_y = alloca i32, align 4
  %count_smalls = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %dx278 = alloca i32, align 4
  %dy286 = alloca i32, align 4
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %1, i32 0, i32 83
  %count1 = getelementptr inbounds %struct.pts_, %struct.pts_* %points, i32 0, i32 2
  %2 = load i32, i32* %count1, align 4, !tbaa !137
  store i32 %2, i32* %count, align 4, !tbaa !5
  %3 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.394

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %5) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i32* %op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %8, i32 0, i32 83
  %current = getelementptr inbounds %struct.pts_, %struct.pts_* %points2, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current, i32 0, i32 0
  %9 = load i32, i32* %x3, align 4, !tbaa !138
  store i32 %9, i32* %x, align 4, !tbaa !5
  %10 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 83
  %current5 = getelementptr inbounds %struct.pts_, %struct.pts_* %points4, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %current5, i32 0, i32 1
  %12 = load i32, i32* %y6, align 4, !tbaa !139
  store i32 %12, i32* %y, align 4, !tbaa !5
  %13 = bitcast i32* %uor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %uor, align 4, !tbaa !5
  %14 = bitcast i32* %sor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %sor, align 4, !tbaa !5
  %15 = bitcast i32* %data_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast [80 x i8]* %diffs to i8*
  call void @llvm.lifetime.start(i64 80, i8* %18) #2
  %19 = bitcast double* %x_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store double 1.000000e+00, double* %x_scale, align 8, !tbaa !134
  %20 = bitcast double* %y_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  store double 1.000000e+00, double* %y_scale, align 8, !tbaa !134
  %21 = bitcast i32* %temp_origin_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  store i32 0, i32* %temp_origin_x, align 4, !tbaa !5
  %22 = bitcast i32* %temp_origin_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 0, i32* %temp_origin_y, align 4, !tbaa !5
  %23 = bitcast i32* %count_smalls to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 0, i32* %count_smalls, align 4, !tbaa !5
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points7 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 83
  %type = getelementptr inbounds %struct.pts_, %struct.pts_* %points7, i32 0, i32 1
  %25 = load i32, i32* %type, align 4, !tbaa !136
  %cmp = icmp ne i32 %25, 0
  br i1 %cmp, label %if.then.8, label %if.end.164

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %count, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points10 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %29, i32 0, i32 83
  %data = getelementptr inbounds %struct.pts_, %struct.pts_* %points10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data, i32 0, i64 %idxprom
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx, i32 0, i32 0
  %30 = load i32, i32* %x11, align 4, !tbaa !140
  %call12 = call i32 @abs(i32 %30) #10
  %cmp13 = icmp sgt i32 %call12, 32767
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %31 to i64
  %32 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points15 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %32, i32 0, i32 83
  %data16 = getelementptr inbounds %struct.pts_, %struct.pts_* %points15, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data16, i32 0, i64 %idxprom14
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx17, i32 0, i32 1
  %33 = load i32, i32* %y18, align 4, !tbaa !141
  %call19 = call i32 @abs(i32 %33) #10
  %cmp20 = icmp sgt i32 %call19, 32767
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %lor.lhs.false, %for.body
  %34 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %34, i32 0, i32 88
  store i32 1, i32* %scaled, align 4, !tbaa !127
  br label %if.end

if.end:                                           ; preds = %if.then.21, %lor.lhs.false
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points23 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %36, i32 0, i32 83
  %data24 = getelementptr inbounds %struct.pts_, %struct.pts_* %points23, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data24, i32 0, i64 %idxprom22
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx25, i32 0, i32 0
  %37 = load i32, i32* %x26, align 4, !tbaa !140
  %call27 = call i32 @abs(i32 %37) #10
  %cmp28 = icmp slt i32 %call27, 32768
  br i1 %cmp28, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points30 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %39, i32 0, i32 83
  %data31 = getelementptr inbounds %struct.pts_, %struct.pts_* %points30, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data31, i32 0, i64 %idxprom29
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx32, i32 0, i32 1
  %40 = load i32, i32* %y33, align 4, !tbaa !141
  %call34 = call i32 @abs(i32 %40) #10
  %cmp35 = icmp slt i32 %call34, 32768
  br i1 %cmp35, label %if.then.36, label %if.end.62

if.then.36:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %42 to i64
  %43 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points38 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %43, i32 0, i32 83
  %data39 = getelementptr inbounds %struct.pts_, %struct.pts_* %points38, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data39, i32 0, i64 %idxprom37
  %x41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx40, i32 0, i32 0
  %44 = load i32, i32* %x41, align 4, !tbaa !140
  %cmp42 = icmp ne i32 %41, %44
  br i1 %cmp42, label %if.then.50, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.then.36
  %45 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points45 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %47, i32 0, i32 83
  %data46 = getelementptr inbounds %struct.pts_, %struct.pts_* %points45, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data46, i32 0, i64 %idxprom44
  %y48 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx47, i32 0, i32 1
  %48 = load i32, i32* %y48, align 4, !tbaa !141
  %cmp49 = icmp ne i32 %45, %48
  br i1 %cmp49, label %if.then.50, label %if.end.61

if.then.50:                                       ; preds = %lor.lhs.false.43, %if.then.36
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %49 to i64
  %50 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points52 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %50, i32 0, i32 83
  %data53 = getelementptr inbounds %struct.pts_, %struct.pts_* %points52, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data53, i32 0, i64 %idxprom51
  %x55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx54, i32 0, i32 0
  %51 = load i32, i32* %x55, align 4, !tbaa !140
  store i32 %51, i32* %temp_origin_x, align 4, !tbaa !5
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %52 to i64
  %53 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points57 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %53, i32 0, i32 83
  %data58 = getelementptr inbounds %struct.pts_, %struct.pts_* %points57, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data58, i32 0, i64 %idxprom56
  %y60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx59, i32 0, i32 1
  %54 = load i32, i32* %y60, align 4, !tbaa !141
  store i32 %54, i32* %temp_origin_y, align 4, !tbaa !5
  %55 = load i32, i32* %count_smalls, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %count_smalls, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.50, %lor.lhs.false.43
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %56, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled64 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %57, i32 0, i32 88
  %58 = load i32, i32* %scaled64, align 4, !tbaa !127
  %tobool65 = icmp ne i32 %58, 0
  br i1 %tobool65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %for.end
  %59 = load i32, i32* %count_smalls, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %59, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.66
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %61 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %62 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  call void @pclxl_set_page_origin(%struct.stream_s* %60, i32 %61, i32 %62) #7
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.66
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.114, %if.end.69
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %64 = load i32, i32* %count, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %63, %64
  br i1 %cmp71, label %for.body.72, label %for.end.116

for.body.72:                                      ; preds = %for.cond.70
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %65 to i64
  %66 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points74 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %66, i32 0, i32 83
  %data75 = getelementptr inbounds %struct.pts_, %struct.pts_* %points74, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data75, i32 0, i64 %idxprom73
  %x77 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx76, i32 0, i32 0
  %67 = load i32, i32* %x77, align 4, !tbaa !140
  %68 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub = sub nsw i32 %67, %68
  %call78 = call i32 @abs(i32 %sub) #10
  %conv = sitofp i32 %call78 to double
  %div = fdiv double %conv, 3.276700e+04
  %69 = load double, double* %x_scale, align 8, !tbaa !134
  %cmp79 = fcmp ogt double %div, %69
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.72
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %70 to i64
  %71 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points82 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %71, i32 0, i32 83
  %data83 = getelementptr inbounds %struct.pts_, %struct.pts_* %points82, i32 0, i32 3
  %arrayidx84 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data83, i32 0, i64 %idxprom81
  %x85 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx84, i32 0, i32 0
  %72 = load i32, i32* %x85, align 4, !tbaa !140
  %73 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub86 = sub nsw i32 %72, %73
  %call87 = call i32 @abs(i32 %sub86) #10
  %conv88 = sitofp i32 %call87 to double
  %div89 = fdiv double %conv88, 3.276700e+04
  br label %cond.end

cond.false:                                       ; preds = %for.body.72
  %74 = load double, double* %x_scale, align 8, !tbaa !134
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div89, %cond.true ], [ %74, %cond.false ]
  store double %cond, double* %x_scale, align 8, !tbaa !134
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %75 to i64
  %76 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points91 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %76, i32 0, i32 83
  %data92 = getelementptr inbounds %struct.pts_, %struct.pts_* %points91, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data92, i32 0, i64 %idxprom90
  %y94 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx93, i32 0, i32 1
  %77 = load i32, i32* %y94, align 4, !tbaa !141
  %78 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub95 = sub nsw i32 %77, %78
  %call96 = call i32 @abs(i32 %sub95) #10
  %conv97 = sitofp i32 %call96 to double
  %div98 = fdiv double %conv97, 3.276700e+04
  %79 = load double, double* %y_scale, align 8, !tbaa !134
  %cmp99 = fcmp ogt double %div98, %79
  br i1 %cmp99, label %cond.true.101, label %cond.false.111

cond.true.101:                                    ; preds = %cond.end
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %80 to i64
  %81 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points103 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %81, i32 0, i32 83
  %data104 = getelementptr inbounds %struct.pts_, %struct.pts_* %points103, i32 0, i32 3
  %arrayidx105 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data104, i32 0, i64 %idxprom102
  %y106 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx105, i32 0, i32 1
  %82 = load i32, i32* %y106, align 4, !tbaa !141
  %83 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub107 = sub nsw i32 %82, %83
  %call108 = call i32 @abs(i32 %sub107) #10
  %conv109 = sitofp i32 %call108 to double
  %div110 = fdiv double %conv109, 3.276700e+04
  br label %cond.end.112

cond.false.111:                                   ; preds = %cond.end
  %84 = load double, double* %y_scale, align 8, !tbaa !134
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.101
  %cond113 = phi double [ %div110, %cond.true.101 ], [ %84, %cond.false.111 ]
  store double %cond113, double* %y_scale, align 8, !tbaa !134
  br label %for.inc.114

for.inc.114:                                      ; preds = %cond.end.112
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %inc115 = add nsw i32 %85, 1
  store i32 %inc115, i32* %i, align 4, !tbaa !5
  br label %for.cond.70

for.end.116:                                      ; preds = %for.cond.70
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.150, %for.end.116
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %87 = load i32, i32* %count, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %86, %87
  br i1 %cmp118, label %for.body.120, label %for.end.152

for.body.120:                                     ; preds = %for.cond.117
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %88 to i64
  %89 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points122 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %89, i32 0, i32 83
  %data123 = getelementptr inbounds %struct.pts_, %struct.pts_* %points122, i32 0, i32 3
  %arrayidx124 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data123, i32 0, i64 %idxprom121
  %x125 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx124, i32 0, i32 0
  %90 = load i32, i32* %x125, align 4, !tbaa !140
  %91 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub126 = sub nsw i32 %90, %91
  %conv127 = sitofp i32 %sub126 to double
  %92 = load double, double* %x_scale, align 8, !tbaa !134
  %div128 = fdiv double %conv127, %92
  %add = fadd double %div128, 5.000000e-01
  %conv129 = fptosi double %add to i32
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %93 to i64
  %94 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points131 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %94, i32 0, i32 83
  %data132 = getelementptr inbounds %struct.pts_, %struct.pts_* %points131, i32 0, i32 3
  %arrayidx133 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data132, i32 0, i64 %idxprom130
  %x134 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx133, i32 0, i32 0
  store i32 %conv129, i32* %x134, align 4, !tbaa !140
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %95 to i64
  %96 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points136 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %96, i32 0, i32 83
  %data137 = getelementptr inbounds %struct.pts_, %struct.pts_* %points136, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data137, i32 0, i64 %idxprom135
  %y139 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx138, i32 0, i32 1
  %97 = load i32, i32* %y139, align 4, !tbaa !141
  %98 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub140 = sub nsw i32 %97, %98
  %conv141 = sitofp i32 %sub140 to double
  %99 = load double, double* %y_scale, align 8, !tbaa !134
  %div142 = fdiv double %conv141, %99
  %add143 = fadd double %div142, 5.000000e-01
  %conv144 = fptosi double %add143 to i32
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom145 = sext i32 %100 to i64
  %101 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points146 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %101, i32 0, i32 83
  %data147 = getelementptr inbounds %struct.pts_, %struct.pts_* %points146, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data147, i32 0, i64 %idxprom145
  %y149 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx148, i32 0, i32 1
  store i32 %conv144, i32* %y149, align 4, !tbaa !141
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.120
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %inc151 = add nsw i32 %102, 1
  store i32 %inc151, i32* %i, align 4, !tbaa !5
  br label %for.cond.117

for.end.152:                                      ; preds = %for.cond.117
  %103 = load i32, i32* %x, align 4, !tbaa !5
  %104 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub153 = sub nsw i32 %103, %104
  %conv154 = sitofp i32 %sub153 to double
  %105 = load double, double* %x_scale, align 8, !tbaa !134
  %div155 = fdiv double %conv154, %105
  %add156 = fadd double %div155, 5.000000e-01
  %conv157 = fptosi double %add156 to i32
  store i32 %conv157, i32* %x, align 4, !tbaa !5
  %106 = load i32, i32* %y, align 4, !tbaa !5
  %107 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub158 = sub nsw i32 %106, %107
  %conv159 = sitofp i32 %sub158 to double
  %108 = load double, double* %y_scale, align 8, !tbaa !134
  %div160 = fdiv double %conv159, %108
  %add161 = fadd double %div160, 5.000000e-01
  %conv162 = fptosi double %add161 to i32
  store i32 %conv162, i32* %y, align 4, !tbaa !5
  %109 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %110 = load double, double* %x_scale, align 8, !tbaa !134
  %111 = load double, double* %y_scale, align 8, !tbaa !134
  call void @pclxl_set_page_scale(%struct.gx_device_pclxl_s* %109, double %110, double %111) #7
  br label %if.end.163

if.else:                                          ; preds = %for.end
  store i32 0, i32* %count_smalls, align 4, !tbaa !5
  br label %if.end.163

if.end.163:                                       ; preds = %if.else, %for.end.152
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then
  %112 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points165 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %112, i32 0, i32 83
  %type166 = getelementptr inbounds %struct.pts_, %struct.pts_* %points165, i32 0, i32 1
  %113 = load i32, i32* %type166, align 4, !tbaa !136
  switch i32 %113, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.167
    i32 2, label %sw.bb.247
  ]

sw.bb:                                            ; preds = %if.end.164
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.167:                                        ; preds = %if.end.164
  store i32 155, i32* %op, align 4, !tbaa !56
  %114 = load i32, i32* %count, align 4, !tbaa !5
  %cmp168 = icmp slt i32 %114, 3
  br i1 %cmp168, label %if.then.170, label %if.end.195

if.then.170:                                      ; preds = %sw.bb.167
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.187, %if.then.170
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %116 = load i32, i32* %count, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %115, %116
  br i1 %cmp172, label %for.body.174, label %for.end.189

for.body.174:                                     ; preds = %for.cond.171
  %117 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom175 = sext i32 %118 to i64
  %119 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points176 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %119, i32 0, i32 83
  %data177 = getelementptr inbounds %struct.pts_, %struct.pts_* %points176, i32 0, i32 3
  %arrayidx178 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data177, i32 0, i64 %idxprom175
  %x179 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx178, i32 0, i32 0
  %120 = load i32, i32* %x179, align 4, !tbaa !140
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom180 = sext i32 %121 to i64
  %122 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points181 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %122, i32 0, i32 83
  %data182 = getelementptr inbounds %struct.pts_, %struct.pts_* %points181, i32 0, i32 3
  %arrayidx183 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data182, i32 0, i64 %idxprom180
  %y184 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx183, i32 0, i32 1
  %123 = load i32, i32* %y184, align 4, !tbaa !141
  call void @px_put_ssp(%struct.stream_s* %117, i32 %120, i32 %123) #7
  %124 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_a(%struct.stream_s* %124, i32 69) #7
  %125 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %126 = load i32, i32* %op, align 4, !tbaa !56
  %conv185 = trunc i32 %126 to i8
  %call186 = call i32 @spputc(%struct.stream_s* %125, i8 zeroext %conv185) #7
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.174
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %inc188 = add nsw i32 %127, 1
  store i32 %inc188, i32* %i, align 4, !tbaa !5
  br label %for.cond.171

for.end.189:                                      ; preds = %for.cond.171
  %128 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_unset_page_scale(%struct.gx_device_pclxl_s* %128) #7
  %129 = load i32, i32* %count_smalls, align 4, !tbaa !5
  %tobool190 = icmp ne i32 %129, 0
  br i1 %tobool190, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %for.end.189
  %130 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %131 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub192 = sub nsw i32 0, %131
  %132 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub193 = sub nsw i32 0, %132
  call void @pclxl_set_page_origin(%struct.stream_s* %130, i32 %sub192, i32 %sub193) #7
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %for.end.189
  br label %zap

if.end.195:                                       ; preds = %sw.bb.167
  store i32 0, i32* %di, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.226, %if.end.195
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %134 = load i32, i32* %count, align 4, !tbaa !5
  %cmp197 = icmp slt i32 %133, %134
  br i1 %cmp197, label %for.body.199, label %for.end.229

for.body.199:                                     ; preds = %for.cond.196
  %135 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  %136 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom200 = sext i32 %136 to i64
  %137 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points201 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %137, i32 0, i32 83
  %data202 = getelementptr inbounds %struct.pts_, %struct.pts_* %points201, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data202, i32 0, i64 %idxprom200
  %x204 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx203, i32 0, i32 0
  %138 = load i32, i32* %x204, align 4, !tbaa !140
  %139 = load i32, i32* %x, align 4, !tbaa !5
  %sub205 = sub nsw i32 %138, %139
  store i32 %sub205, i32* %dx, align 4, !tbaa !5
  %140 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #2
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom206 = sext i32 %141 to i64
  %142 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points207 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %142, i32 0, i32 83
  %data208 = getelementptr inbounds %struct.pts_, %struct.pts_* %points207, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data208, i32 0, i64 %idxprom206
  %y210 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx209, i32 0, i32 1
  %143 = load i32, i32* %y210, align 4, !tbaa !141
  %144 = load i32, i32* %y, align 4, !tbaa !5
  %sub211 = sub nsw i32 %143, %144
  store i32 %sub211, i32* %dy, align 4, !tbaa !5
  %145 = load i32, i32* %dx, align 4, !tbaa !5
  %conv212 = trunc i32 %145 to i8
  %146 = load i32, i32* %di, align 4, !tbaa !5
  %idxprom213 = sext i32 %146 to i64
  %arrayidx214 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom213
  store i8 %conv212, i8* %arrayidx214, align 1, !tbaa !56
  %147 = load i32, i32* %dy, align 4, !tbaa !5
  %conv215 = trunc i32 %147 to i8
  %148 = load i32, i32* %di, align 4, !tbaa !5
  %add216 = add nsw i32 %148, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom217
  store i8 %conv215, i8* %arrayidx218, align 1, !tbaa !56
  %149 = load i32, i32* %dx, align 4, !tbaa !5
  %150 = load i32, i32* %dy, align 4, !tbaa !5
  %or = or i32 %149, %150
  %151 = load i32, i32* %uor, align 4, !tbaa !5
  %or219 = or i32 %151, %or
  store i32 %or219, i32* %uor, align 4, !tbaa !5
  %152 = load i32, i32* %dx, align 4, !tbaa !5
  %add220 = add nsw i32 %152, 128
  %153 = load i32, i32* %dy, align 4, !tbaa !5
  %add221 = add nsw i32 %153, 128
  %or222 = or i32 %add220, %add221
  %154 = load i32, i32* %sor, align 4, !tbaa !5
  %or223 = or i32 %154, %or222
  store i32 %or223, i32* %sor, align 4, !tbaa !5
  %155 = load i32, i32* %dx, align 4, !tbaa !5
  %156 = load i32, i32* %x, align 4, !tbaa !5
  %add224 = add nsw i32 %156, %155
  store i32 %add224, i32* %x, align 4, !tbaa !5
  %157 = load i32, i32* %dy, align 4, !tbaa !5
  %158 = load i32, i32* %y, align 4, !tbaa !5
  %add225 = add nsw i32 %158, %157
  store i32 %add225, i32* %y, align 4, !tbaa !5
  %159 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %for.inc.226

for.inc.226:                                      ; preds = %for.body.199
  %161 = load i32, i32* %i, align 4, !tbaa !5
  %inc227 = add nsw i32 %161, 1
  store i32 %inc227, i32* %i, align 4, !tbaa !5
  %162 = load i32, i32* %di, align 4, !tbaa !5
  %add228 = add nsw i32 %162, 2
  store i32 %add228, i32* %di, align 4, !tbaa !5
  br label %for.cond.196

for.end.229:                                      ; preds = %for.cond.196
  %163 = load i32, i32* %uor, align 4, !tbaa !5
  %and = and i32 %163, -256
  %tobool230 = icmp ne i32 %and, 0
  br i1 %tobool230, label %if.else.232, label %if.then.231

if.then.231:                                      ; preds = %for.end.229
  store i32 0, i32* %data_type, align 4, !tbaa !56
  br label %if.end.238

if.else.232:                                      ; preds = %for.end.229
  %164 = load i32, i32* %sor, align 4, !tbaa !5
  %and233 = and i32 %164, -256
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.else.236, label %if.then.235

if.then.235:                                      ; preds = %if.else.232
  store i32 1, i32* %data_type, align 4, !tbaa !56
  br label %if.end.237

if.else.236:                                      ; preds = %if.else.232
  br label %sw.epilog

if.end.237:                                       ; preds = %if.then.235
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.231
  store i32 157, i32* %op, align 4, !tbaa !56
  br label %useb

useb:                                             ; preds = %if.end.350, %if.end.238
  %165 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %166 = load i32, i32* %count, align 4, !tbaa !5
  %167 = load i32, i32* %data_type, align 4, !tbaa !56
  call void @px_put_np(%struct.stream_s* %165, i32 %166, i32 %167) #7
  %168 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %169 = load i32, i32* %op, align 4, !tbaa !56
  %conv239 = trunc i32 %169 to i8
  %call240 = call i32 @spputc(%struct.stream_s* %168, i8 zeroext %conv239) #7
  %170 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %171 = load i32, i32* %count, align 4, !tbaa !5
  %mul = mul nsw i32 %171, 2
  call void @px_put_data_length(%struct.stream_s* %170, i32 %mul) #7
  %172 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i32 0
  %173 = load i32, i32* %count, align 4, !tbaa !5
  %mul241 = mul nsw i32 %173, 2
  call void @px_put_bytes(%struct.stream_s* %172, i8* %arraydecay, i32 %mul241) #7
  %174 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_unset_page_scale(%struct.gx_device_pclxl_s* %174) #7
  %175 = load i32, i32* %count_smalls, align 4, !tbaa !5
  %tobool242 = icmp ne i32 %175, 0
  br i1 %tobool242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %useb
  %176 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %177 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub244 = sub nsw i32 0, %177
  %178 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub245 = sub nsw i32 0, %178
  call void @pclxl_set_page_origin(%struct.stream_s* %176, i32 %sub244, i32 %sub245) #7
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %useb
  br label %zap

sw.bb.247:                                        ; preds = %if.end.164
  store i32 147, i32* %op, align 4, !tbaa !56
  store i32 0, i32* %di, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.337, %sw.bb.247
  %179 = load i32, i32* %i, align 4, !tbaa !5
  %180 = load i32, i32* %count, align 4, !tbaa !5
  %cmp249 = icmp slt i32 %179, %180
  br i1 %cmp249, label %for.body.251, label %for.end.340

for.body.251:                                     ; preds = %for.cond.248
  %181 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #2
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom252 = sext i32 %182 to i64
  %183 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points253 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %183, i32 0, i32 83
  %data254 = getelementptr inbounds %struct.pts_, %struct.pts_* %points253, i32 0, i32 3
  %arrayidx255 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data254, i32 0, i64 %idxprom252
  %x256 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx255, i32 0, i32 0
  %184 = load i32, i32* %x256, align 4, !tbaa !140
  %185 = load i32, i32* %x, align 4, !tbaa !5
  %sub257 = sub nsw i32 %184, %185
  store i32 %sub257, i32* %dx1, align 4, !tbaa !5
  %186 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #2
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom258 = sext i32 %187 to i64
  %188 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points259 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %188, i32 0, i32 83
  %data260 = getelementptr inbounds %struct.pts_, %struct.pts_* %points259, i32 0, i32 3
  %arrayidx261 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data260, i32 0, i64 %idxprom258
  %y262 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx261, i32 0, i32 1
  %189 = load i32, i32* %y262, align 4, !tbaa !141
  %190 = load i32, i32* %y, align 4, !tbaa !5
  %sub263 = sub nsw i32 %189, %190
  store i32 %sub263, i32* %dy1, align 4, !tbaa !5
  %191 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #2
  %192 = load i32, i32* %i, align 4, !tbaa !5
  %add264 = add nsw i32 %192, 1
  %idxprom265 = sext i32 %add264 to i64
  %193 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points266 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %193, i32 0, i32 83
  %data267 = getelementptr inbounds %struct.pts_, %struct.pts_* %points266, i32 0, i32 3
  %arrayidx268 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data267, i32 0, i64 %idxprom265
  %x269 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx268, i32 0, i32 0
  %194 = load i32, i32* %x269, align 4, !tbaa !140
  %195 = load i32, i32* %x, align 4, !tbaa !5
  %sub270 = sub nsw i32 %194, %195
  store i32 %sub270, i32* %dx2, align 4, !tbaa !5
  %196 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #2
  %197 = load i32, i32* %i, align 4, !tbaa !5
  %add271 = add nsw i32 %197, 1
  %idxprom272 = sext i32 %add271 to i64
  %198 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points273 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %198, i32 0, i32 83
  %data274 = getelementptr inbounds %struct.pts_, %struct.pts_* %points273, i32 0, i32 3
  %arrayidx275 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data274, i32 0, i64 %idxprom272
  %y276 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx275, i32 0, i32 1
  %199 = load i32, i32* %y276, align 4, !tbaa !141
  %200 = load i32, i32* %y, align 4, !tbaa !5
  %sub277 = sub nsw i32 %199, %200
  store i32 %sub277, i32* %dy2, align 4, !tbaa !5
  %201 = bitcast i32* %dx278 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #2
  %202 = load i32, i32* %i, align 4, !tbaa !5
  %add279 = add nsw i32 %202, 2
  %idxprom280 = sext i32 %add279 to i64
  %203 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points281 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %203, i32 0, i32 83
  %data282 = getelementptr inbounds %struct.pts_, %struct.pts_* %points281, i32 0, i32 3
  %arrayidx283 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data282, i32 0, i64 %idxprom280
  %x284 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx283, i32 0, i32 0
  %204 = load i32, i32* %x284, align 4, !tbaa !140
  %205 = load i32, i32* %x, align 4, !tbaa !5
  %sub285 = sub nsw i32 %204, %205
  store i32 %sub285, i32* %dx278, align 4, !tbaa !5
  %206 = bitcast i32* %dy286 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #2
  %207 = load i32, i32* %i, align 4, !tbaa !5
  %add287 = add nsw i32 %207, 2
  %idxprom288 = sext i32 %add287 to i64
  %208 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points289 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %208, i32 0, i32 83
  %data290 = getelementptr inbounds %struct.pts_, %struct.pts_* %points289, i32 0, i32 3
  %arrayidx291 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data290, i32 0, i64 %idxprom288
  %y292 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx291, i32 0, i32 1
  %209 = load i32, i32* %y292, align 4, !tbaa !141
  %210 = load i32, i32* %y, align 4, !tbaa !5
  %sub293 = sub nsw i32 %209, %210
  store i32 %sub293, i32* %dy286, align 4, !tbaa !5
  %211 = load i32, i32* %dx1, align 4, !tbaa !5
  %conv294 = trunc i32 %211 to i8
  %212 = load i32, i32* %di, align 4, !tbaa !5
  %idxprom295 = sext i32 %212 to i64
  %arrayidx296 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom295
  store i8 %conv294, i8* %arrayidx296, align 1, !tbaa !56
  %213 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv297 = trunc i32 %213 to i8
  %214 = load i32, i32* %di, align 4, !tbaa !5
  %add298 = add nsw i32 %214, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom299
  store i8 %conv297, i8* %arrayidx300, align 1, !tbaa !56
  %215 = load i32, i32* %dx2, align 4, !tbaa !5
  %conv301 = trunc i32 %215 to i8
  %216 = load i32, i32* %di, align 4, !tbaa !5
  %add302 = add nsw i32 %216, 2
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom303
  store i8 %conv301, i8* %arrayidx304, align 1, !tbaa !56
  %217 = load i32, i32* %dy2, align 4, !tbaa !5
  %conv305 = trunc i32 %217 to i8
  %218 = load i32, i32* %di, align 4, !tbaa !5
  %add306 = add nsw i32 %218, 3
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom307
  store i8 %conv305, i8* %arrayidx308, align 1, !tbaa !56
  %219 = load i32, i32* %dx278, align 4, !tbaa !5
  %conv309 = trunc i32 %219 to i8
  %220 = load i32, i32* %di, align 4, !tbaa !5
  %add310 = add nsw i32 %220, 4
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom311
  store i8 %conv309, i8* %arrayidx312, align 1, !tbaa !56
  %221 = load i32, i32* %dy286, align 4, !tbaa !5
  %conv313 = trunc i32 %221 to i8
  %222 = load i32, i32* %di, align 4, !tbaa !5
  %add314 = add nsw i32 %222, 5
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds [80 x i8], [80 x i8]* %diffs, i32 0, i64 %idxprom315
  store i8 %conv313, i8* %arrayidx316, align 1, !tbaa !56
  %223 = load i32, i32* %dx1, align 4, !tbaa !5
  %224 = load i32, i32* %dy1, align 4, !tbaa !5
  %or317 = or i32 %223, %224
  %225 = load i32, i32* %dx2, align 4, !tbaa !5
  %or318 = or i32 %or317, %225
  %226 = load i32, i32* %dy2, align 4, !tbaa !5
  %or319 = or i32 %or318, %226
  %227 = load i32, i32* %dx278, align 4, !tbaa !5
  %or320 = or i32 %or319, %227
  %228 = load i32, i32* %dy286, align 4, !tbaa !5
  %or321 = or i32 %or320, %228
  %229 = load i32, i32* %uor, align 4, !tbaa !5
  %or322 = or i32 %229, %or321
  store i32 %or322, i32* %uor, align 4, !tbaa !5
  %230 = load i32, i32* %dx1, align 4, !tbaa !5
  %add323 = add nsw i32 %230, 128
  %231 = load i32, i32* %dy1, align 4, !tbaa !5
  %add324 = add nsw i32 %231, 128
  %or325 = or i32 %add323, %add324
  %232 = load i32, i32* %dx2, align 4, !tbaa !5
  %add326 = add nsw i32 %232, 128
  %or327 = or i32 %or325, %add326
  %233 = load i32, i32* %dy2, align 4, !tbaa !5
  %add328 = add nsw i32 %233, 128
  %or329 = or i32 %or327, %add328
  %234 = load i32, i32* %dx278, align 4, !tbaa !5
  %add330 = add nsw i32 %234, 128
  %or331 = or i32 %or329, %add330
  %235 = load i32, i32* %dy286, align 4, !tbaa !5
  %add332 = add nsw i32 %235, 128
  %or333 = or i32 %or331, %add332
  %236 = load i32, i32* %sor, align 4, !tbaa !5
  %or334 = or i32 %236, %or333
  store i32 %or334, i32* %sor, align 4, !tbaa !5
  %237 = load i32, i32* %dx278, align 4, !tbaa !5
  %238 = load i32, i32* %x, align 4, !tbaa !5
  %add335 = add nsw i32 %238, %237
  store i32 %add335, i32* %x, align 4, !tbaa !5
  %239 = load i32, i32* %dy286, align 4, !tbaa !5
  %240 = load i32, i32* %y, align 4, !tbaa !5
  %add336 = add nsw i32 %240, %239
  store i32 %add336, i32* %y, align 4, !tbaa !5
  %241 = bitcast i32* %dy286 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i32* %dx278 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #2
  %244 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  %245 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #2
  %246 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  br label %for.inc.337

for.inc.337:                                      ; preds = %for.body.251
  %247 = load i32, i32* %i, align 4, !tbaa !5
  %add338 = add nsw i32 %247, 3
  store i32 %add338, i32* %i, align 4, !tbaa !5
  %248 = load i32, i32* %di, align 4, !tbaa !5
  %add339 = add nsw i32 %248, 6
  store i32 %add339, i32* %di, align 4, !tbaa !5
  br label %for.cond.248

for.end.340:                                      ; preds = %for.cond.248
  %249 = load i32, i32* %uor, align 4, !tbaa !5
  %and341 = and i32 %249, -256
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.else.344, label %if.then.343

if.then.343:                                      ; preds = %for.end.340
  store i32 0, i32* %data_type, align 4, !tbaa !56
  br label %if.end.350

if.else.344:                                      ; preds = %for.end.340
  %250 = load i32, i32* %sor, align 4, !tbaa !5
  %and345 = and i32 %250, -256
  %tobool346 = icmp ne i32 %and345, 0
  br i1 %tobool346, label %if.else.348, label %if.then.347

if.then.347:                                      ; preds = %if.else.344
  store i32 1, i32* %data_type, align 4, !tbaa !56
  br label %if.end.349

if.else.348:                                      ; preds = %if.else.344
  br label %sw.epilog

if.end.349:                                       ; preds = %if.then.347
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.343
  store i32 149, i32* %op, align 4, !tbaa !56
  br label %useb

sw.default:                                       ; preds = %if.end.164
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.else.348, %if.else.236
  %251 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %252 = load i32, i32* %count, align 4, !tbaa !5
  call void @px_put_np(%struct.stream_s* %251, i32 %252, i32 3) #7
  %253 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %254 = load i32, i32* %op, align 4, !tbaa !56
  %conv351 = trunc i32 %254 to i8
  %call352 = call i32 @spputc(%struct.stream_s* %253, i8 zeroext %conv351) #7
  %255 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %256 = load i32, i32* %count, align 4, !tbaa !5
  %mul353 = mul nsw i32 %256, 4
  call void @px_put_data_length(%struct.stream_s* %255, i32 %mul353) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.368, %sw.epilog
  %257 = load i32, i32* %i, align 4, !tbaa !5
  %258 = load i32, i32* %count, align 4, !tbaa !5
  %cmp355 = icmp slt i32 %257, %258
  br i1 %cmp355, label %for.body.357, label %for.end.370

for.body.357:                                     ; preds = %for.cond.354
  %259 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %260 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom358 = sext i32 %260 to i64
  %261 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points359 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %261, i32 0, i32 83
  %data360 = getelementptr inbounds %struct.pts_, %struct.pts_* %points359, i32 0, i32 3
  %arrayidx361 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data360, i32 0, i64 %idxprom358
  %x362 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx361, i32 0, i32 0
  %262 = load i32, i32* %x362, align 4, !tbaa !140
  call void @px_put_s(%struct.stream_s* %259, i32 %262) #7
  %263 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %264 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom363 = sext i32 %264 to i64
  %265 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points364 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %265, i32 0, i32 83
  %data365 = getelementptr inbounds %struct.pts_, %struct.pts_* %points364, i32 0, i32 3
  %arrayidx366 = getelementptr inbounds [40 x %struct.gs_int_point_s], [40 x %struct.gs_int_point_s]* %data365, i32 0, i64 %idxprom363
  %y367 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx366, i32 0, i32 1
  %266 = load i32, i32* %y367, align 4, !tbaa !141
  call void @px_put_s(%struct.stream_s* %263, i32 %266) #7
  br label %for.inc.368

for.inc.368:                                      ; preds = %for.body.357
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %inc369 = add nsw i32 %267, 1
  store i32 %inc369, i32* %i, align 4, !tbaa !5
  br label %for.cond.354

for.end.370:                                      ; preds = %for.cond.354
  %268 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_unset_page_scale(%struct.gx_device_pclxl_s* %268) #7
  %269 = load i32, i32* %count_smalls, align 4, !tbaa !5
  %tobool371 = icmp ne i32 %269, 0
  br i1 %tobool371, label %if.then.372, label %if.end.375

if.then.372:                                      ; preds = %for.end.370
  %270 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %271 = load i32, i32* %temp_origin_x, align 4, !tbaa !5
  %sub373 = sub nsw i32 0, %271
  %272 = load i32, i32* %temp_origin_y, align 4, !tbaa !5
  %sub374 = sub nsw i32 0, %272
  call void @pclxl_set_page_origin(%struct.stream_s* %270, i32 %sub373, i32 %sub374) #7
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.372, %for.end.370
  br label %zap

zap:                                              ; preds = %if.end.375, %if.end.246, %if.end.194
  %273 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points376 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %273, i32 0, i32 83
  %type377 = getelementptr inbounds %struct.pts_, %struct.pts_* %points376, i32 0, i32 1
  store i32 0, i32* %type377, align 4, !tbaa !136
  %274 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %points378 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %274, i32 0, i32 83
  %count379 = getelementptr inbounds %struct.pts_, %struct.pts_* %points378, i32 0, i32 2
  store i32 0, i32* %count379, align 4, !tbaa !137
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %zap, %sw.default, %sw.bb
  %275 = bitcast i32* %count_smalls to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #2
  %276 = bitcast i32* %temp_origin_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %temp_origin_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  %278 = bitcast double* %y_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #2
  %279 = bitcast double* %x_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #2
  %280 = bitcast [80 x i8]* %diffs to i8*
  call void @llvm.lifetime.end(i64 80, i8* %280) #2
  %281 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i32* %data_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast i32* %sor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  %285 = bitcast i32* %uor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #2
  %286 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #2
  %287 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #2
  %288 = bitcast i32* %op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.395 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.394

if.end.394:                                       ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

cleanup.395:                                      ; preds = %if.end.394, %cleanup
  %290 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #2
  %291 = load i32, i32* %retval
  ret i32 %291
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %xdev, i32 %x, i32 %y) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %x_scale = alloca double, align 8
  %y_scale = alloca double, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast double* %x_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store double 1.000000e+00, double* %x_scale, align 8, !tbaa !134
  %3 = bitcast double* %y_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store double 1.000000e+00, double* %y_scale, align 8, !tbaa !134
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %call1 = call i32 @abs(i32 %4) #10
  %cmp = icmp sgt i32 %call1, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %call2 = call i32 @abs(i32 %5) #10
  %conv = sitofp i32 %call2 to double
  %div = fdiv double %conv, 3.276700e+04
  store double %div, double* %x_scale, align 8, !tbaa !134
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, 0
  %cond = select i1 %cmp3, i32 32767, i32 -32767
  store i32 %cond, i32* %x.addr, align 4, !tbaa !5
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 88
  store i32 1, i32* %scaled, align 4, !tbaa !127
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call5 = call i32 @abs(i32 %8) #10
  %cmp6 = icmp sgt i32 %call5, 32767
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %call9 = call i32 @abs(i32 %9) #10
  %conv10 = sitofp i32 %call9 to double
  %div11 = fdiv double %conv10, 3.276700e+04
  store double %div11, double* %y_scale, align 8, !tbaa !134
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %10, 0
  %cond14 = select i1 %cmp12, i32 32767, i32 -32767
  store i32 %cond14, i32* %y.addr, align 4, !tbaa !5
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled15 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 88
  store i32 1, i32* %scaled15, align 4, !tbaa !127
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %if.end
  %12 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %13 = load double, double* %x_scale, align 8, !tbaa !134
  %14 = load double, double* %y_scale, align 8, !tbaa !134
  call void @pclxl_set_page_scale(%struct.gx_device_pclxl_s* %12, double %13, double %14) #7
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @px_put_ssp(%struct.stream_s* %15, i32 %16, i32 %17) #7
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %18, i32 76, i32 107) #7
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_unset_page_scale(%struct.gx_device_pclxl_s* %19) #7
  %20 = bitcast double* %y_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast double* %x_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_page_origin(%struct.stream_s* %s, i32 %x, i32 %y) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @px_put_ssp(%struct.stream_s* %0, i32 %1, i32 %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %3, i32 42, i32 117) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_page_scale(%struct.gx_device_pclxl_s* %xdev, double %x_scale, double %y_scale) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %x_scale.addr = alloca double, align 8
  %y_scale.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store double %x_scale, double* %x_scale.addr, align 8, !tbaa !134
  store double %y_scale, double* %y_scale.addr, align 8, !tbaa !134
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %2, i32 0, i32 88
  %3 = load i32, i32* %scaled, align 4, !tbaa !127
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %x_scale.addr, align 8, !tbaa !134
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %x_scale1 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 89
  store double %4, double* %x_scale1, align 8, !tbaa !128
  %6 = load double, double* %y_scale.addr, align 8, !tbaa !134
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %y_scale2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 90
  store double %6, double* %y_scale2, align 8, !tbaa !129
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load double, double* %x_scale.addr, align 8, !tbaa !134
  %10 = load double, double* %y_scale.addr, align 8, !tbaa !134
  call void @px_put_rp(%struct.stream_s* %8, double %9, double %10) #7
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %11, i32 43, i32 119) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret void
}

declare void @px_put_ssp(%struct.stream_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pclxl_unset_page_scale(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %2, i32 0, i32 88
  %3 = load i32, i32* %scaled, align 4, !tbaa !127
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %x_scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 89
  %6 = load double, double* %x_scale, align 8, !tbaa !128
  %div = fdiv double 1.000000e+00, %6
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %y_scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 90
  %8 = load double, double* %y_scale, align 8, !tbaa !129
  %div1 = fdiv double 1.000000e+00, %8
  call void @px_put_rp(%struct.stream_s* %4, double %div, double %div1) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %9, i32 43, i32 119) #7
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %scaled2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %10, i32 0, i32 88
  store i32 0, i32* %scaled2, align 4, !tbaa !127
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %x_scale3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 89
  store double 1.000000e+00, double* %x_scale3, align 8, !tbaa !128
  %12 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %y_scale4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %12, i32 0, i32 90
  store double 1.000000e+00, double* %y_scale4, align 8, !tbaa !129
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @px_put_np(%struct.stream_s* %s, i32 %count, i32 %dtype) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %count.addr = alloca i32, align 4
  %dtype.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  store i32 %dtype, i32* %dtype.addr, align 4, !tbaa !56
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = trunc i32 %1 to i8
  call void @px_put_uba(%struct.stream_s* %0, i8 zeroext %conv, i32 77) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %dtype.addr, align 4, !tbaa !56
  %conv1 = trunc i32 %3 to i8
  call void @px_put_uba(%struct.stream_s* %2, i8 zeroext %conv1, i32 80) #7
  ret void
}

declare void @px_put_data_length(%struct.stream_s*, i32) #1

declare void @px_put_rp(%struct.stream_s*, double, double) #1

declare void @gdev_vector_init(%struct.gx_device_vector_s*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #1

declare i32 @gx_outputfile_is_separate_pages(i8*, %struct.gs_memory_s*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i32 @px_write_file_trailer(%struct._IO_FILE*) #1

declare i32 @gdev_vector_close_file(%struct.gx_device_vector_s*) #1

declare i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_copy_text_char(%struct.gx_device_pclxl_s* %xdev, i8* %data, i32 %raster, i64 %id, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %data.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %index = alloca i32, align 4
  %ccode = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cc_bytes = alloca [2 x i8], align 1
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %4 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul = mul i32 %3, %4
  store i32 %mul, i32* %size, align 4, !tbaa !5
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %8) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp ugt i32 %9, 5000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %11 = load i64, i64* %id.addr, align 8, !tbaa !65
  %call1 = call i32 @pclxl_char_index(%struct.gx_device_pclxl_s* %10, i64 %11) #7
  store i32 %call1, i32* %index, align 4, !tbaa !5
  %12 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %13, i32 0, i32 84
  %table = getelementptr inbounds %struct.ch_, %struct.ch_* %chars, i32 0, i32 0
  %arrayidx = getelementptr inbounds [600 x i16], [600 x i16]* %table, i32 0, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !144
  %conv = zext i16 %14 to i32
  store i32 %conv, i32* %ccode, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %conv, 2
  br i1 %cmp2, label %if.then.4, label %if.end.59

if.then.4:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then.4
  %15 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars5 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %15, i32 0, i32 84
  %used = getelementptr inbounds %struct.ch_, %struct.ch_* %chars5, i32 0, i32 5
  %16 = load i64, i64* %used, align 8, !tbaa !145
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %conv6 = zext i32 %17 to i64
  %add7 = add i64 %16, %conv6
  %cmp8 = icmp ugt i64 %add7, 500000
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars10 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 84
  %count = getelementptr inbounds %struct.ch_, %struct.ch_* %chars10, i32 0, i32 4
  %19 = load i32, i32* %count, align 4, !tbaa !146
  %cmp11 = icmp sge i32 %19, 398
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %20 = phi i1 [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %21 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars13 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %21, i32 0, i32 84
  %next_out = getelementptr inbounds %struct.ch_, %struct.ch_* %chars13, i32 0, i32 3
  %22 = load i32, i32* %next_out, align 4, !tbaa !50
  store i32 %22, i32* %ccode, align 4, !tbaa !5
  %23 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %24 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom14 = zext i32 %24 to i64
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars15 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 84
  %data16 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [400 x %struct.cd_], [400 x %struct.cd_]* %data16, i32 0, i64 %idxprom14
  %id18 = getelementptr inbounds %struct.cd_, %struct.cd_* %arrayidx17, i32 0, i32 0
  %26 = load i64, i64* %id18, align 8, !tbaa !147
  %call19 = call i32 @pclxl_char_index(%struct.gx_device_pclxl_s* %23, i64 %26) #7
  store i32 %call19, i32* %index, align 4, !tbaa !5
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %28 = load i32, i32* %index, align 4, !tbaa !5
  call void @pclxl_remove_char(%struct.gx_device_pclxl_s* %27, i32 %28) #7
  %29 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %29, 399
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %30 = load i32, i32* %ccode, align 4, !tbaa !5
  %add22 = add i32 %30, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add22, %cond.false ]
  %31 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars23 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %31, i32 0, i32 84
  %next_out24 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars23, i32 0, i32 3
  store i32 %cond, i32* %next_out24, align 4, !tbaa !50
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %32 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %33 = load i64, i64* %id.addr, align 8, !tbaa !65
  %call25 = call i32 @pclxl_char_index(%struct.gx_device_pclxl_s* %32, i64 %33) #7
  store i32 %call25, i32* %index, align 4, !tbaa !5
  %34 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars26 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %34, i32 0, i32 84
  %next_in = getelementptr inbounds %struct.ch_, %struct.ch_* %chars26, i32 0, i32 2
  %35 = load i32, i32* %next_in, align 4, !tbaa !51
  store i32 %35, i32* %ccode, align 4, !tbaa !5
  %36 = load i64, i64* %id.addr, align 8, !tbaa !65
  %37 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom27 = zext i32 %37 to i64
  %38 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars28 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %38, i32 0, i32 84
  %data29 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [400 x %struct.cd_], [400 x %struct.cd_]* %data29, i32 0, i64 %idxprom27
  %id31 = getelementptr inbounds %struct.cd_, %struct.cd_* %arrayidx30, i32 0, i32 0
  store i64 %36, i64* %id31, align 8, !tbaa !147
  %39 = load i32, i32* %size, align 4, !tbaa !5
  %40 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom32 = zext i32 %40 to i64
  %41 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars33 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %41, i32 0, i32 84
  %data34 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [400 x %struct.cd_], [400 x %struct.cd_]* %data34, i32 0, i64 %idxprom32
  %size36 = getelementptr inbounds %struct.cd_, %struct.cd_* %arrayidx35, i32 0, i32 1
  store i32 %39, i32* %size36, align 4, !tbaa !149
  %42 = load i32, i32* %ccode, align 4, !tbaa !5
  %conv37 = trunc i32 %42 to i16
  %43 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom38 = sext i32 %43 to i64
  %44 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars39 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %44, i32 0, i32 84
  %table40 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [600 x i16], [600 x i16]* %table40, i32 0, i64 %idxprom38
  store i16 %conv37, i16* %arrayidx41, align 2, !tbaa !144
  %45 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %45, 399
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %while.end
  br label %cond.end.47

cond.false.45:                                    ; preds = %while.end
  %46 = load i32, i32* %ccode, align 4, !tbaa !5
  %add46 = add i32 %46, 1
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i32 [ 2, %cond.true.44 ], [ %add46, %cond.false.45 ]
  %47 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars49 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %47, i32 0, i32 84
  %next_in50 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars49, i32 0, i32 2
  store i32 %cond48, i32* %next_in50, align 4, !tbaa !51
  %48 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars51 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %48, i32 0, i32 84
  %count52 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars51, i32 0, i32 4
  %49 = load i32, i32* %count52, align 4, !tbaa !146
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %count52, align 4, !tbaa !146
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %cond.end.47
  %50 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_write_font_name(%struct.gx_device_pclxl_s* %50) #7
  %51 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_define_bitmap_font(%struct.gx_device_pclxl_s* %51) #7
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %cond.end.47
  %52 = load i32, i32* %size, align 4, !tbaa !5
  %conv55 = zext i32 %52 to i64
  %53 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars56 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %53, i32 0, i32 84
  %used57 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars56, i32 0, i32 5
  %54 = load i64, i64* %used57, align 8, !tbaa !145
  %add58 = add i64 %54, %conv55
  store i64 %add58, i64* %used57, align 8, !tbaa !145
  %55 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_write_font_name(%struct.gx_device_pclxl_s* %55) #7
  %56 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %57 = load i32, i32* %ccode, align 4, !tbaa !5
  %58 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %59 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %60 = load i32, i32* %w.addr, align 4, !tbaa !5
  %61 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @pclxl_define_bitmap_char(%struct.gx_device_pclxl_s* %56, i32 %57, i8* %58, i32 %59, i32 %60, i32 %61) #7
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.54, %if.end
  %62 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %font_set = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %62, i32 0, i32 85
  %63 = load i32, i32* %font_set, align 4, !tbaa !126
  %tobool60 = icmp ne i32 %63, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %64 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_write_font_name(%struct.gx_device_pclxl_s* %64) #7
  %65 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  call void @pclxl_set_font(%struct.gx_device_pclxl_s* %65) #7
  %66 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %font_set62 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %66, i32 0, i32 85
  store i32 1, i32* %font_set62, align 4, !tbaa !126
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  %67 = bitcast [2 x i8]* %cc_bytes to i8*
  call void @llvm.lifetime.start(i64 2, i8* %67) #2
  %68 = load i32, i32* %ccode, align 4, !tbaa !5
  %conv64 = trunc i32 %68 to i8
  %arrayidx65 = getelementptr inbounds [2 x i8], [2 x i8]* %cc_bytes, i32 0, i64 0
  store i8 %conv64, i8* %arrayidx65, align 1, !tbaa !56
  %69 = load i32, i32* %ccode, align 4, !tbaa !5
  %shr66 = lshr i32 %69, 8
  %conv67 = trunc i32 %shr66 to i8
  %arrayidx68 = getelementptr inbounds [2 x i8], [2 x i8]* %cc_bytes, i32 0, i64 1
  store i8 %conv67, i8* %arrayidx68, align 1, !tbaa !56
  %70 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %cc_bytes, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x i8], [2 x i8]* %cc_bytes, i32 0, i64 1
  %71 = load i8, i8* %arrayidx69, align 1, !tbaa !56
  %conv70 = zext i8 %71 to i32
  %cmp71 = icmp ne i32 %conv70, 0
  %conv72 = zext i1 %cmp71 to i32
  call void @px_put_string(%struct.stream_s* %70, i8* %arraydecay, i32 1, i32 %conv72) #7
  %72 = bitcast [2 x i8]* %cc_bytes to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #2
  %73 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %73, i32 171, i32 168) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then
  %74 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_color_palette(%struct.gx_device_pclxl_s* %xdev, i32 %color_space, i8* %palette, i32 %palette_size) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %color_space.addr = alloca i32, align 4
  %palette.addr = alloca i8*, align 8
  %palette_size.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %color_space, i32* %color_space.addr, align 4, !tbaa !56
  store i8* %palette, i8** %palette.addr, align 8, !tbaa !1
  store i32 %palette_size, i32* %palette_size.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_space1 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %0, i32 0, i32 81
  %1 = load i32, i32* %color_space1, align 4, !tbaa !124
  %2 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %3, i32 0, i32 82
  %size = getelementptr inbounds %struct.pal_, %struct.pal_* %palette2, i32 0, i32 0
  %4 = load i32, i32* %size, align 4, !tbaa !125
  %5 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette5 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 82
  %data = getelementptr inbounds %struct.pal_, %struct.pal_* %palette5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %data, i32 0, i32 0
  %7 = load i8*, i8** %palette.addr, align 8, !tbaa !1
  %8 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  %conv = zext i32 %8 to i64
  %call = call i32 @memcmp(i8* %arraydecay, i8* %7, i64 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %9 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call6 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %10) #7
  store %struct.stream_s* %call6, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %conv7 = trunc i32 %12 to i8
  call void @px_put_ub(%struct.stream_s* %11, i8 zeroext %conv7) #7
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @pclxl_set_color_palette.csp_, i32 0, i32 0), i32 7) #7
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  call void @px_put_u(%struct.stream_s* %14, i32 %15) #7
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load i8*, i8** %palette.addr, align 8, !tbaa !1
  %18 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %16, i8* %17, i32 %18) #7
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %19, i32 6, i32 106) #7
  %20 = load i32, i32* %color_space.addr, align 4, !tbaa !56
  %21 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %color_space8 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %21, i32 0, i32 81
  store i32 %20, i32* %color_space8, align 4, !tbaa !124
  %22 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette9 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %23, i32 0, i32 82
  %size10 = getelementptr inbounds %struct.pal_, %struct.pal_* %palette9, i32 0, i32 0
  store i32 %22, i32* %size10, align 4, !tbaa !125
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %palette11 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 82
  %data12 = getelementptr inbounds %struct.pal_, %struct.pal_* %palette11, i32 0, i32 1
  %arraydecay13 = getelementptr inbounds [768 x i8], [768 x i8]* %data12, i32 0, i32 0
  %25 = load i8*, i8** %palette.addr, align 8, !tbaa !1
  %26 = load i32, i32* %palette_size.addr, align 4, !tbaa !5
  %conv14 = zext i32 %26 to i64
  %call15 = call i8* @memcpy(i8* %arraydecay13, i8* %25, i64 %conv14) #8
  %27 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_begin_image(%struct.gx_device_pclxl_s* %xdev, i32 %width, i32 %height, i32 %dest_width, i32 %dest_height) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %dest_width, i32* %dest_width.addr, align 4, !tbaa !5
  store i32 %dest_height, i32* %dest_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = load i32, i32* %width.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %2, i32 %3, i32 108) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %4, i32 %5, i32 107) #7
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %8 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  call void @px_put_usp(%struct.stream_s* %6, i32 %7, i32 %8) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %9, i32 103, i32 176) #7
  %10 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_image_data(%struct.gx_device_pclxl_s* %xdev, i8* %data, i32 %data_bit, i32 %raster, i32 %width_bits, i32 %y, i32 %height) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_bit.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_bit, i32* %data_bit.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %4 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %5 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data_RLE(%struct.gx_device_pclxl_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #7
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %CompressMode = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %8, i32 0, i32 87
  %9 = load i32, i32* %CompressMode, align 4, !tbaa !86
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %14 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data_DeltaRow(%struct.gx_device_pclxl_s* %10, i8* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16) #7
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.1
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %21 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data_RLE(%struct.gx_device_pclxl_s* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_end_image(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %0, i32 0, i32 47
  %1 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !58
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext -78) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_char_index(%struct.gx_device_pclxl_s* %xdev, i64 %id) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %id.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %i_empty = alloca i32, align 4
  %ccode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i_empty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 -1, i32* %i_empty, align 4, !tbaa !5
  %2 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i64, i64* %id.addr, align 8, !tbaa !65
  %mul = mul i64 %3, 247
  %rem = urem i64 %mul, 600
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cond.end.32, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %5, i32 0, i32 84
  %table = getelementptr inbounds %struct.ch_, %struct.ch_* %chars, i32 0, i32 0
  %arrayidx = getelementptr inbounds [600 x i16], [600 x i16]* %table, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !144
  %conv1 = zext i16 %6 to i32
  store i32 %conv1, i32* %ccode, align 4, !tbaa !5
  %7 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %8 = load i32, i32* %i_empty, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %i_empty, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.cond
  %11 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %if.then.7, label %if.else.16

if.then.7:                                        ; preds = %if.else
  %12 = load i32, i32* %i_empty, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %12, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.7
  %13 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %13, i32* %i_empty, align 4, !tbaa !5
  br label %if.end.15

if.else.11:                                       ; preds = %if.then.7
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %i_empty, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %14, %15
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else.11
  %16 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.10
  br label %if.end.25

if.else.16:                                       ; preds = %if.else
  %17 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom17 = zext i32 %17 to i64
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars18 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 84
  %data = getelementptr inbounds %struct.ch_, %struct.ch_* %chars18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [400 x %struct.cd_], [400 x %struct.cd_]* %data, i32 0, i64 %idxprom17
  %id20 = getelementptr inbounds %struct.cd_, %struct.cd_* %arrayidx19, i32 0, i32 0
  %19 = load i64, i64* %id20, align 8, !tbaa !147
  %20 = load i64, i64* %id.addr, align 8, !tbaa !65
  %cmp21 = icmp eq i64 %19, %20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else.16
  %21 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.else.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %for.inc
  br label %cond.end.32

cond.false.30:                                    ; preds = %for.inc
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %conv31 = sext i32 %23 to i64
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi i64 [ 600, %cond.true.29 ], [ %conv31, %cond.false.30 ]
  %sub = sub i64 %cond33, 1
  %conv34 = trunc i64 %sub to i32
  store i32 %conv34, i32* %i, align 4, !tbaa !5
  br label %for.cond

cleanup:                                          ; preds = %if.then.23, %if.then.14, %cond.end
  %24 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %i_empty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_remove_char(%struct.gx_device_pclxl_s* %xdev, i32 %index) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %index.addr = alloca i32, align 4
  %ccode = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %2, i32 0, i32 84
  %table = getelementptr inbounds %struct.ch_, %struct.ch_* %chars, i32 0, i32 0
  %arrayidx = getelementptr inbounds [600 x i16], [600 x i16]* %table, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !144
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %ccode, align 4, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %ccode, align 4, !tbaa !5
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %6, i32 0, i32 84
  %count = getelementptr inbounds %struct.ch_, %struct.ch_* %chars2, i32 0, i32 4
  %7 = load i32, i32* %count, align 4, !tbaa !146
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %count, align 4, !tbaa !146
  %8 = load i32, i32* %ccode, align 4, !tbaa !5
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %9, i32 0, i32 84
  %data = getelementptr inbounds %struct.ch_, %struct.ch_* %chars4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [400 x %struct.cd_], [400 x %struct.cd_]* %data, i32 0, i64 %idxprom3
  %size = getelementptr inbounds %struct.cd_, %struct.cd_* %arrayidx5, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !149
  %conv6 = zext i32 %10 to i64
  %11 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars7 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %11, i32 0, i32 84
  %used = getelementptr inbounds %struct.ch_, %struct.ch_* %chars7, i32 0, i32 5
  %12 = load i64, i64* %used, align 8, !tbaa !145
  %sub = sub i64 %12, %conv6
  store i64 %sub, i64* %used, align 8, !tbaa !145
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars9 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %14, i32 0, i32 84
  %table10 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [600 x i16], [600 x i16]* %table10, i32 0, i64 %idxprom8
  store i16 1, i16* %arrayidx11, align 2, !tbaa !144
  %15 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, i32* %index.addr, align 4, !tbaa !5
  %conv14 = sext i32 %16 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 600, %cond.true ], [ %conv14, %cond.false ]
  %sub15 = sub i64 %cond, 1
  %conv16 = trunc i64 %sub15 to i32
  store i32 %conv16, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %17 to i64
  %18 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars18 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %18, i32 0, i32 84
  %table19 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [600 x i16], [600 x i16]* %table19, i32 0, i64 %idxprom17
  %19 = load i16, i16* %arrayidx20, align 2, !tbaa !144
  %conv21 = zext i16 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %cond.end
  %20 = load i32, i32* %index.addr, align 4, !tbaa !5
  store i32 %20, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cond.end.41, %if.then.24
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars26 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %22, i32 0, i32 84
  %table27 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [600 x i16], [600 x i16]* %table27, i32 0, i64 %idxprom25
  %23 = load i16, i16* %arrayidx28, align 2, !tbaa !144
  %conv29 = zext i16 %23 to i32
  %cmp30 = icmp eq i32 %conv29, 1
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %chars33 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 84
  %table34 = getelementptr inbounds %struct.ch_, %struct.ch_* %chars33, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [600 x i16], [600 x i16]* %table34, i32 0, i64 %idxprom32
  store i16 0, i16* %arrayidx35, align 2, !tbaa !144
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %conv36 = sext i32 %26 to i64
  %cmp37 = icmp eq i64 %conv36, 599
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %for.inc
  br label %cond.end.41

cond.false.40:                                    ; preds = %for.inc
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %27, 1
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ 0, %cond.true.39 ], [ %add, %cond.false.40 ]
  store i32 %cond42, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %ccode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_font_name(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_string(%struct.stream_s* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 0) #7
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_define_bitmap_font(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @pclxl_define_bitmap_font.bfh_, i32 0, i32 0), i32 29) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %4 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !109
  %conv = fpext float %5 to double
  %add = fadd double %conv, 5.000000e-01
  %conv1 = fptoui double %add to i32
  call void @px_put_us_be(%struct.stream_s* %3, i32 %conv1) #7
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %8 = load float, float* %arrayidx3, align 4, !tbaa !109
  %conv4 = fpext float %8 to double
  %add5 = fadd double %conv4, 5.000000e-01
  %conv6 = fptoui double %add5 to i32
  call void @px_put_us_be(%struct.stream_s* %6, i32 %conv6) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @pclxl_define_bitmap_font.efh_, i32 0, i32 0), i32 7) #7
  %10 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_define_bitmap_char(%struct.gx_device_pclxl_s* %xdev, i32 %ccode, i8* %data, i32 %raster, i32 %width_bits, i32 %height) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %ccode.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %width_bytes = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i32 %ccode, i32* %ccode.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %add = add i32 %3, 7
  %shr = lshr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %5, %6
  %add1 = add i32 10, %mul
  store i32 %add1, i32* %size, align 4, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %8, i32 168, i32 82) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load i32, i32* %ccode.addr, align 4, !tbaa !5
  call void @px_put_u(%struct.stream_s* %9, i32 %10) #7
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_a(%struct.stream_s* %11, i32 162) #7
  %12 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp ugt i32 %12, 65535
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call2 = call i32 @spputc(%struct.stream_s* %13, i8 zeroext -62) #7
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %15 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %15 to i64
  call void @px_put_l(%struct.stream_s* %14, i64 %conv) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load i32, i32* %size, align 4, !tbaa !5
  call void @px_put_us(%struct.stream_s* %16, i32 %17) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %18, i32 163, i32 83) #7
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i32, i32* %size, align 4, !tbaa !5
  call void @px_put_data_length(%struct.stream_s* %19, i32 %20) #7
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 6) #7
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %23 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  call void @px_put_us_be(%struct.stream_s* %22, i32 %23) #7
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @px_put_us_be(%struct.stream_s* %24, i32 %25) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %26, %27
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul5 = mul i32 %30, %31
  %idx.ext = zext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %32 = load i32, i32* %width_bytes, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %28, i8* %add.ptr, i32 %32) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call6 = call i32 @spputc(%struct.stream_s* %34, i8 zeroext 84) #7
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_set_font(%struct.gx_device_pclxl_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @pclxl_set_font.sf_, i32 0, i32 0), i32 12) #7
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @px_put_string(%struct.stream_s* %s, i8* %data, i32 %len, i32 %wide) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %wide.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i32 %wide, i32* %wide.addr, align 4, !tbaa !5
  %0 = load i32, i32* %wide.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext -55) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @px_put_u(%struct.stream_s* %2, i32 %3) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  %mul = mul i32 %6, 2
  call void @px_put_bytes(%struct.stream_s* %4, i8* %5, i32 %mul) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %7, i8 zeroext -56) #7
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @px_put_u(%struct.stream_s* %8, i32 %9) #7
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %10, i8* %11, i32 %12) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @px_put_us_be(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext %conv) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %3 to i8
  %call2 = call i32 @spputc(%struct.stream_s* %2, i8 zeroext %conv1) #7
  ret void
}

declare void @px_put_l(%struct.stream_s*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @px_put_usp(%struct.stream_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_image_data_RLE(%struct.gx_device_pclxl_s* %xdev, i8* %base, i32 %data_bit, i32 %raster, i32 %width_bits, i32 %y, i32 %height) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %base.addr = alloca i8*, align 8
  %data_bit.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %width_bytes = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %compress = alloca i32, align 4
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %data = alloca i8*, align 8
  %rlstate = alloca %struct.stream_RLE_state_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %r = alloca %struct.stream_cursor_read_s, align 8
  %buf = alloca i8*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %data_bit, i32* %data_bit.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %add = add i32 %3, 7
  %shr = lshr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %4 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %add1 = add i32 %5, 3
  %and = and i32 %add1, -4
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul i32 %and, %6
  store i32 %mul, i32* %num_bytes, align 4, !tbaa !5
  %7 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %cmp = icmp uge i32 %8, 8
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %compress, align 4, !tbaa !5
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %shr2 = ashr i32 %11, 3
  store i32 %shr2, i32* %offset, align 4, !tbaa !5
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %14 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %15, i32 %16, i32 109) #7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %17, i32 %18, i32 99) #7
  %19 = load i32, i32* %compress, align 4, !tbaa !5
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %20 = bitcast %struct.stream_RLE_state_s* %rlstate to i8*
  call void @llvm.lifetime.start(i64 136, i8* %20) #2
  %21 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #2
  %22 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #2
  %23 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 43
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !150
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !102
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory3 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %27, i32 0, i32 43
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory3, align 8, !tbaa !150
  %29 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call4 = call i8* %26(%struct.gs_memory_s* %28, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7
  store i8* %call4, i8** %buf, align 8, !tbaa !1
  %30 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %30, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %EndOfData = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !151
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 6
  store i64 0, i64* %record_size, align 8, !tbaa !153
  %EndOfData8 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 5
  store i32 0, i32* %EndOfData8, align 4, !tbaa !151
  %record_size9 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 6
  %31 = load i64, i64* %record_size9, align 8, !tbaa !153
  %cmp10 = icmp eq i64 %31, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %record_size12 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 6
  store i64 4294967295, i64* %record_size12, align 8, !tbaa !153
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %record_size13 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 6
  %32 = load i64, i64* %record_size13, align 8, !tbaa !153
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %32, %cond.false ]
  %record_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 7
  store i64 %cond, i64* %record_left, align 8, !tbaa !154
  %copy_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %rlstate, i32 0, i32 8
  store i32 0, i32* %copy_left, align 4, !tbaa !155
  %33 = load i8*, i8** %buf, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr14, i8** %ptr, align 8, !tbaa !156
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %34 = load i8*, i8** %ptr15, align 8, !tbaa !156
  %35 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %idx.ext16 = zext i32 %35 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %34, i64 %idx.ext16
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr17, i8** %limit, align 8, !tbaa !158
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %37 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %36, %37
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i8*, i8** %data, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %40 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul20 = mul i32 %39, %40
  %idx.ext21 = zext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %38, i64 %idx.ext21
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr22, i64 -1
  %ptr24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr23, i8** %ptr24, align 8, !tbaa !159
  %ptr25 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %41 = load i8*, i8** %ptr25, align 8, !tbaa !159
  %42 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %idx.ext26 = zext i32 %42 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %41, i64 %idx.ext26
  %limit28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr27, i8** %limit28, align 8, !tbaa !161
  %43 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_RLE_template, i32 0, i32 2), align 8, !tbaa !162
  %44 = bitcast %struct.stream_RLE_state_s* %rlstate to %struct.stream_state_s*
  %call29 = call i32 %43(%struct.stream_state_s* %44, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #7
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %ptr32 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %45 = load i8*, i8** %ptr32, align 8, !tbaa !159
  %limit33 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %46 = load i8*, i8** %limit33, align 8, !tbaa !161
  %cmp34 = icmp ne i8* %45, %46
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false, %for.body
  br label %ncfree

if.end.37:                                        ; preds = %lor.lhs.false
  %ptr38 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %ptr38, align 8, !tbaa !159
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %47 = load i8*, i8** %ptr39, align 8, !tbaa !159
  %48 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %sub = sub nsw i32 0, %48
  %and40 = and i32 %sub, 3
  %idx.ext41 = sext i32 %and40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %47, i64 %idx.ext41
  %limit43 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr42, i8** %limit43, align 8, !tbaa !161
  %49 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_RLE_template, i32 0, i32 2), align 8, !tbaa !162
  %50 = bitcast %struct.stream_RLE_state_s* %rlstate to %struct.stream_state_s*
  %call44 = call i32 %49(%struct.stream_state_s* %50, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #7
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.37
  %ptr48 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %51 = load i8*, i8** %ptr48, align 8, !tbaa !159
  %limit49 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %52 = load i8*, i8** %limit49, align 8, !tbaa !161
  %cmp50 = icmp ne i8* %51, %52
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.47, %if.end.37
  br label %ncfree

if.end.53:                                        ; preds = %lor.lhs.false.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %limit54 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %54 = load i8*, i8** %limit54, align 8, !tbaa !161
  %ptr55 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %54, i8** %ptr55, align 8, !tbaa !159
  %55 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_RLE_template, i32 0, i32 2), align 8, !tbaa !162
  %56 = bitcast %struct.stream_RLE_state_s* %rlstate to %struct.stream_state_s*
  %call56 = call i32 %55(%struct.stream_state_s* %56, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #7
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  br label %ncfree

if.end.60:                                        ; preds = %for.end
  %57 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %ptr61 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %58 = load i8*, i8** %ptr61, align 8, !tbaa !156
  %add.ptr62 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv63 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv63, i32* %count, align 4, !tbaa !5
  %60 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ub(%struct.stream_s* %60, i8 zeroext 1) #7
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %61, i32 101, i32 177) #7
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %63 = load i32, i32* %count, align 4, !tbaa !5
  call void @px_put_data_length(%struct.stream_s* %62, i32 %63) #7
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %65 = load i8*, i8** %buf, align 8, !tbaa !1
  %66 = load i32, i32* %count, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %64, i8* %65, i32 %66) #7
  %67 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory64 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %68, i32 0, i32 43
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory64, align 8, !tbaa !150
  %procs65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs65, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !121
  %71 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory66 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %71, i32 0, i32 43
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory66, align 8, !tbaa !150
  %73 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %70(%struct.gs_memory_s* %72, i8* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

ncfree:                                           ; preds = %if.then.59, %if.then.52, %if.then.36
  %74 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory67 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %74, i32 0, i32 43
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory67, align 8, !tbaa !150
  %procs68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object69 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs68, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object69, align 8, !tbaa !121
  %77 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory70 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %77, i32 0, i32 43
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory70, align 8, !tbaa !150
  %79 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %76(%struct.gs_memory_s* %78, i8* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.7, %ncfree, %if.end.60
  %80 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #2
  %82 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %82) #2
  %83 = bitcast %struct.stream_RLE_state_s* %rlstate to i8*
  call void @llvm.lifetime.end(i64 136, i8* %83) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.87 [
    i32 0, label %cleanup.cont
    i32 2, label %nc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %entry
  br label %nc

nc:                                               ; preds = %if.end.74, %cleanup
  %84 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ub(%struct.stream_s* %84, i8 zeroext 0) #7
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %85, i32 101, i32 177) #7
  %86 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %87 = load i32, i32* %num_bytes, align 4, !tbaa !5
  call void @px_put_data_length(%struct.stream_s* %86, i32 %87) #7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.84, %nc
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %89 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %88, %89
  br i1 %cmp76, label %for.body.78, label %for.end.86

for.body.78:                                      ; preds = %for.cond.75
  %90 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %91 = load i8*, i8** %data, align 8, !tbaa !1
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %93 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul79 = mul i32 %92, %93
  %idx.ext80 = zext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %91, i64 %idx.ext80
  %94 = load i32, i32* %width_bytes, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %90, i8* %add.ptr81, i32 %94) #7
  %95 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %96 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %sub82 = sub nsw i32 0, %96
  %and83 = and i32 %sub82, 3
  call void @px_put_bytes(%struct.stream_s* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %and83) #7
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.78
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %97, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !5
  br label %for.cond.75

for.end.86:                                       ; preds = %for.cond.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %for.end.86, %cleanup
  %98 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %cleanup.dest.94 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.94, label %unreachable [
    i32 0, label %cleanup.cont.95
    i32 1, label %cleanup.cont.95
  ]

cleanup.cont.95:                                  ; preds = %cleanup.87, %cleanup.87
  ret void

unreachable:                                      ; preds = %cleanup.87
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_write_image_data_DeltaRow(%struct.gx_device_pclxl_s* %xdev, i8* %base, i32 %data_bit, i32 %raster, i32 %width_bits, i32 %y, i32 %height) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_pclxl_s*, align 8
  %base.addr = alloca i8*, align 8
  %data_bit.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %width_bytes = alloca i32, align 4
  %worst_case_comp_size = alloca i32, align 4
  %cdata = alloca i8*, align 8
  %prow = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  %data = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %compressed_size = alloca i32, align 4
  store %struct.gx_device_pclxl_s* %xdev, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %data_bit, i32* %data_bit.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %add = add i32 %3, 7
  %shr = lshr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !5
  %4 = bitcast i32* %worst_case_comp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %6 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %div = udiv i32 %6, 8
  %add1 = add i32 %5, %div
  %add2 = add i32 %add1, 1
  store i32 %add2, i32* %worst_case_comp_size, align 4, !tbaa !5
  %7 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store i8* null, i8** %cdata, align 8, !tbaa !1
  %8 = bitcast i8** %prow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i8* null, i8** %prow, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %shr3 = ashr i32 %12, 3
  store i32 %shr3, i32* %offset, align 4, !tbaa !5
  %13 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %15 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %16 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %17, i32 0, i32 43
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !150
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !102
  %20 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %20, i32 0, i32 43
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory4, align 8, !tbaa !150
  %22 = load i32, i32* %worst_case_comp_size, align 4, !tbaa !5
  %add5 = add nsw i32 %22, 2
  %23 = load i32, i32* %height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %add5, %23
  %call6 = call i8* %19(%struct.gs_memory_s* %21, i32 %mul, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)) #7
  store i8* %call6, i8** %buf, align 8, !tbaa !1
  %24 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory7 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %24, i32 0, i32 43
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory7, align 8, !tbaa !150
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes9, align 8, !tbaa !102
  %27 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory10 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %27, i32 0, i32 43
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory10, align 8, !tbaa !150
  %29 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %call11 = call i8* %26(%struct.gs_memory_s* %28, i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)) #7
  store i8* %call11, i8** %prow, align 8, !tbaa !1
  %30 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp = icmp eq i8* %30, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %31 = load i8*, i8** %prow, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %31, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %32 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %data, align 8, !tbaa !1
  %34 = load i32, i32* %data_bit.addr, align 4, !tbaa !5
  %35 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %36 = load i32, i32* %width_bits.addr, align 4, !tbaa !5
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %38 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @pclxl_write_image_data_RLE(%struct.gx_device_pclxl_s* %32, i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %39 = load i8*, i8** %prow, align 8, !tbaa !1
  %40 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %conv = zext i32 %40 to i64
  %call13 = call i8* @memset(i8* %39, i32 0, i64 %conv) #8
  %41 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %41, i8** %cdata, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %43 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %42, %43
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = bitcast i32* %compressed_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load i32, i32* %width_bytes, align 4, !tbaa !5
  %46 = load i8*, i8** %data, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %48 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul16 = mul i32 %47, %48
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %46, i64 %idx.ext17
  %49 = load i8*, i8** %prow, align 8, !tbaa !1
  %50 = load i8*, i8** %cdata, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %50, i64 2
  %call20 = call i32 @gdev_pcl_mode3compress(i32 %45, i8* %add.ptr18, i8* %49, i8* %add.ptr19) #7
  store i32 %call20, i32* %compressed_size, align 4, !tbaa !5
  %51 = load i32, i32* %compressed_size, align 4, !tbaa !5
  %and = and i32 %51, 255
  %conv21 = trunc i32 %and to i8
  %52 = load i8*, i8** %cdata, align 8, !tbaa !1
  store i8 %conv21, i8* %52, align 1, !tbaa !56
  %53 = load i32, i32* %compressed_size, align 4, !tbaa !5
  %shr22 = ashr i32 %53, 8
  %conv23 = trunc i32 %shr22 to i8
  %54 = load i8*, i8** %cdata, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %conv23, i8* %add.ptr24, align 1, !tbaa !56
  %55 = load i32, i32* %compressed_size, align 4, !tbaa !5
  %add25 = add nsw i32 %55, 2
  %56 = load i8*, i8** %cdata, align 8, !tbaa !1
  %idx.ext26 = sext i32 %add25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %56, i64 %idx.ext26
  store i8* %add.ptr27, i8** %cdata, align 8, !tbaa !1
  %57 = bitcast i32* %compressed_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %60 = load i32, i32* %y.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %59, i32 %60, i32 109) #7
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %62 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @px_put_usa(%struct.stream_s* %61, i32 %62, i32 99) #7
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ub(%struct.stream_s* %63, i8 zeroext 3) #7
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %64, i32 101, i32 177) #7
  %65 = load i8*, i8** %cdata, align 8, !tbaa !1
  %66 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv28 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv28, i32* %count, align 4, !tbaa !5
  %67 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %68 = load i32, i32* %count, align 4, !tbaa !5
  call void @px_put_data_length(%struct.stream_s* %67, i32 %68) #7
  %69 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %70 = load i8*, i8** %buf, align 8, !tbaa !1
  %71 = load i32, i32* %count, align 4, !tbaa !5
  call void @px_put_bytes(%struct.stream_s* %69, i8* %70, i32 %71) #7
  %72 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory29 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %72, i32 0, i32 43
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory29, align 8, !tbaa !150
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %74 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !121
  %75 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory31 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %75, i32 0, i32 43
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory31, align 8, !tbaa !150
  %77 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %74(%struct.gs_memory_s* %76, i8* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)) #7
  %78 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory32 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %78, i32 0, i32 43
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory32, align 8, !tbaa !150
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %80 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !121
  %81 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev.addr, align 8, !tbaa !1
  %v_memory35 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %81, i32 0, i32 43
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory35, align 8, !tbaa !150
  %83 = load i8*, i8** %prow, align 8, !tbaa !1
  call void %80(%struct.gs_memory_s* %82, i8* %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %84 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i8** %prow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i32* %worst_case_comp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  ret void
}

declare i32 @gdev_pcl_mode3compress(i32, i8*, i8*, i8*) #1

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_can_handle_color_space(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #7
  store i32 %call, i32* %index, align 4, !tbaa !56
  %2 = load i32, i32* %index, align 4, !tbaa !56
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %4 = load i32, i32* %use_proc, align 4, !tbaa !164
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %5) #7
  %call3 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %call2) #7
  store i32 %call3, i32* %index, align 4, !tbaa !56
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %index, align 4, !tbaa !56
  %cmp4 = icmp eq i32 %6, 12
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 6
  %8 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !166
  %call6 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %8) #7
  store i32 %call6, i32* %index, align 4, !tbaa !56
  %9 = load i32, i32* %index, align 4, !tbaa !56
  %cmp7 = icmp ult i32 %9, 3
  %cond = select i1 %cmp7, i32 1, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %10 = load i32, i32* %index, align 4, !tbaa !56
  %cmp10 = icmp eq i32 %10, 9
  br i1 %cmp10, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %11 = load i32, i32* %index, align 4, !tbaa !56
  %cmp11 = icmp eq i32 %11, 11
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %index, align 4, !tbaa !56
  %cmp12 = icmp eq i32 %12, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end.9
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end.9 ], [ %cmp12, %lor.rhs ]
  %lnot = xor i1 %13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then.5, %if.then.1
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gdev_vector_begin_image(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_procs_s*, %struct.gdev_vector_image_enum_s*) #1

declare void @px_put_ss(%struct.stream_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #1

declare %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s*) #1

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %pie = alloca %struct.pclxl_image_enum_s*, align 8
  %data_bit = alloca i32, align 4
  %width_bits = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.pclxl_image_enum_s*
  store %struct.pclxl_image_enum_s* %2, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %3 = bitcast i32* %data_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %4, i64 0
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %data_x, align 4, !tbaa !167
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %6, i32 0, i32 7
  %arrayidx1 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %7 = load i32, i32* %arrayidx1, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %7
  store i32 %mul, i32* %data_bit, align 4, !tbaa !5
  %8 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %9, i32 0, i32 11
  %10 = load i32, i32* %width, align 4, !tbaa !169
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %plane_depths2 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %11, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths2, i32 0, i64 0
  %12 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %mul4 = mul nsw i32 %10, %12
  store i32 %mul4, i32* %width_bits, align 4, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %width_bits, align 4, !tbaa !5
  %15 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_row = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %15, i32 0, i32 14
  %16 = load i32, i32* %bits_per_row, align 4, !tbaa !170
  %cmp = icmp ne i32 %14, %16
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %data_bit, align 4, !tbaa !5
  %and = and i32 %17, 7
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  %19 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %height6 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %19, i32 0, i32 12
  %20 = load i32, i32* %height6, align 4, !tbaa !171
  %21 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %21, i32 0, i32 15
  %22 = load i32, i32* %y, align 4, !tbaa !172
  %sub = sub nsw i32 %20, %22
  %cmp7 = icmp sgt i32 %18, %sub
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %23 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %23, i32 0, i32 12
  %24 = load i32, i32* %height9, align 4, !tbaa !171
  %25 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %25, i32 0, i32 15
  %26 = load i32, i32* %y10, align 4, !tbaa !172
  %sub11 = sub nsw i32 %24, %26
  store i32 %sub11, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %27, %28
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y14 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %29, i32 0, i32 15
  %30 = load i32, i32* %y14, align 4, !tbaa !172
  %31 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %31, i32 0, i32 17
  %first_y = getelementptr inbounds %struct.ir_, %struct.ir_* %rows, i32 0, i32 2
  %32 = load i32, i32* %first_y, align 4, !tbaa !113
  %sub15 = sub nsw i32 %30, %32
  %33 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows16 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %33, i32 0, i32 17
  %num_rows = getelementptr inbounds %struct.ir_, %struct.ir_* %rows16, i32 0, i32 1
  %34 = load i32, i32* %num_rows, align 4, !tbaa !112
  %cmp17 = icmp eq i32 %sub15, %34
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %for.body
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %call = call i32 @pclxl_image_write_rows(%struct.pclxl_image_enum_s* %36) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %37, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.18
  %39 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y22 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %39, i32 0, i32 15
  %40 = load i32, i32* %y22, align 4, !tbaa !172
  %41 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows23 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %41, i32 0, i32 17
  %first_y24 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows23, i32 0, i32 2
  store i32 %40, i32* %first_y24, align 4, !tbaa !113
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %for.body
  %43 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows26 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %43, i32 0, i32 17
  %data = getelementptr inbounds %struct.ir_, %struct.ir_* %rows26, i32 0, i32 0
  %44 = load i8*, i8** %data, align 8, !tbaa !111
  %45 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows27 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %45, i32 0, i32 17
  %raster = getelementptr inbounds %struct.ir_, %struct.ir_* %rows27, i32 0, i32 3
  %46 = load i32, i32* %raster, align 4, !tbaa !114
  %47 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %flipped = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %47, i32 0, i32 18
  %48 = load i32, i32* %flipped, align 4, !tbaa !103
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %49 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows28 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %49, i32 0, i32 17
  %num_rows29 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows28, i32 0, i32 1
  %50 = load i32, i32* %num_rows29, align 4, !tbaa !112
  %51 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y30 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %51, i32 0, i32 15
  %52 = load i32, i32* %y30, align 4, !tbaa !172
  %53 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows31 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %53, i32 0, i32 17
  %first_y32 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows31, i32 0, i32 2
  %54 = load i32, i32* %first_y32, align 4, !tbaa !113
  %sub33 = sub nsw i32 %52, %54
  %sub34 = sub nsw i32 %50, %sub33
  %sub35 = sub nsw i32 %sub34, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %55 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y36 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %55, i32 0, i32 15
  %56 = load i32, i32* %y36, align 4, !tbaa !172
  %57 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows37 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %57, i32 0, i32 17
  %first_y38 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows37, i32 0, i32 2
  %58 = load i32, i32* %first_y38, align 4, !tbaa !113
  %sub39 = sub nsw i32 %56, %58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub35, %cond.true ], [ %sub39, %cond.false ]
  %mul40 = mul i32 %46, %cond
  %idx.ext = zext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %59 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %59, i64 0
  %data42 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx41, i32 0, i32 0
  %60 = load i8*, i8** %data42, align 8, !tbaa !173
  %61 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %61, i64 0
  %raster44 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx43, i32 0, i32 2
  %62 = load i32, i32* %raster44, align 4, !tbaa !174
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %mul45 = mul i32 %62, %63
  %idx.ext46 = zext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %60, i64 %idx.ext46
  %64 = load i32, i32* %data_bit, align 4, !tbaa !5
  %shr = ashr i32 %64, 3
  %idx.ext48 = sext i32 %shr to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr47, i64 %idx.ext48
  %65 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows50 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %65, i32 0, i32 17
  %raster51 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows50, i32 0, i32 3
  %66 = load i32, i32* %raster51, align 4, !tbaa !114
  %conv = zext i32 %66 to i64
  %call52 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr49, i64 %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %67 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y53 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %67, i32 0, i32 15
  %68 = load i32, i32* %y53, align 4, !tbaa !172
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %y53, align 4, !tbaa !172
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %69, 1
  store i32 %inc54, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %height.addr, align 4, !tbaa !5
  %71 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %70, i32* %71, align 4, !tbaa !5
  %72 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y55 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %72, i32 0, i32 15
  %73 = load i32, i32* %y55, align 4, !tbaa !172
  %74 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %height56 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %74, i32 0, i32 12
  %75 = load i32, i32* %height56, align 4, !tbaa !171
  %cmp57 = icmp sge i32 %73, %75
  %conv58 = zext i1 %cmp57 to i32
  store i32 %conv58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %for.end, %cleanup, %if.then
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %data_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %pie = alloca %struct.pclxl_image_enum_s*, align 8
  %code = alloca i32, align 4
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.pclxl_image_enum_s*
  store %struct.pclxl_image_enum_s* %2, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %4, i32 0, i32 15
  %5 = load i32, i32* %y, align 4, !tbaa !172
  %6 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %6, i32 0, i32 17
  %first_y = getelementptr inbounds %struct.ir_, %struct.ir_* %rows, i32 0, i32 2
  %7 = load i32, i32* %first_y, align 4, !tbaa !113
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %call = call i32 @pclxl_image_write_rows(%struct.pclxl_image_enum_s* %9) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %11 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !175
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %14, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %15 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call3 = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %16) #7
  store %struct.stream_s* %call3, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %17, i32 0, i32 86
  %18 = load i32, i32* %state_rotated, align 4, !tbaa !108
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb.5
    i32 2, label %sw.bb.7
    i32 0, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then.2
  %19 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated4 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %19, i32 0, i32 86
  store i32 0, i32* %state_rotated4, align 4, !tbaa !108
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %20, i32 -90) #7
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %21, i32 41, i32 118) #7
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then.2
  %22 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated6 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %22, i32 0, i32 86
  store i32 0, i32* %state_rotated6, align 4, !tbaa !108
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %23, i32 90) #7
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %24, i32 41, i32 118) #7
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.2
  %25 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %state_rotated8 = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %25, i32 0, i32 86
  store i32 0, i32* %state_rotated8, align 4, !tbaa !108
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ss(%struct.stream_s* %26, i32 -180) #7
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_ac(%struct.stream_s* %27, i32 41, i32 118) #7
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then.2
  br label %sw.default

sw.default:                                       ; preds = %if.then.2, %sw.bb.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.5, %sw.bb
  %28 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  br label %if.end.10

if.end.10:                                        ; preds = %sw.epilog, %if.end
  %30 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !177
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !121
  %33 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !177
  %35 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie, align 8, !tbaa !1
  %rows12 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %35, i32 0, i32 17
  %data = getelementptr inbounds %struct.ir_, %struct.ir_* %rows12, i32 0, i32 0
  %36 = load i8*, i8** %data, align 8, !tbaa !111
  call void %32(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #7
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #7
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.pclxl_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_image_write_rows(%struct.pclxl_image_enum_s* %pie) #0 {
entry:
  %retval = alloca i32, align 4
  %pie.addr = alloca %struct.pclxl_image_enum_s*, align 8
  %xdev = alloca %struct.gx_device_pclxl_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %xo = alloca i32, align 4
  %yo = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  %rows_raster = alloca i32, align 4
  %offset_lastflippedstrip = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.pclxl_image_enum_s* %pie, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !178
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pclxl_s*
  store %struct.gx_device_pclxl_s* %3, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %4 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @pclxl_stream(%struct.gx_device_pclxl_s* %5) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %7, i32 0, i32 17
  %first_y = getelementptr inbounds %struct.ir_, %struct.ir_* %rows, i32 0, i32 2
  %8 = load i32, i32* %first_y, align 4, !tbaa !113
  store i32 %8, i32* %y, align 4, !tbaa !5
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %10, i32 0, i32 15
  %11 = load i32, i32* %y1, align 4, !tbaa !172
  %12 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %h, align 4, !tbaa !5
  %13 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %call2 = call i32 @image_transform_x(%struct.pclxl_image_enum_s* %14, i32 0) #7
  store i32 %call2, i32* %xo, align 4, !tbaa !5
  %15 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %call3 = call i32 @image_transform_y(%struct.pclxl_image_enum_s* %16, i32 %17) #7
  store i32 %call3, i32* %yo, align 4, !tbaa !5
  %18 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %20 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %20, i32 0, i32 11
  %21 = load i32, i32* %width, align 4, !tbaa !169
  %call4 = call i32 @image_transform_x(%struct.pclxl_image_enum_s* %19, i32 %21) #7
  %22 = load i32, i32* %xo, align 4, !tbaa !5
  %sub5 = sub nsw i32 %call4, %22
  store i32 %sub5, i32* %dw, align 4, !tbaa !5
  %23 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %26 = load i32, i32* %h, align 4, !tbaa !5
  %add = add nsw i32 %25, %26
  %call6 = call i32 @image_transform_y(%struct.pclxl_image_enum_s* %24, i32 %add) #7
  %27 = load i32, i32* %yo, align 4, !tbaa !5
  %sub7 = sub nsw i32 %call6, %27
  store i32 %sub7, i32* %dh, align 4, !tbaa !5
  %28 = bitcast i32* %rows_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows8 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %29, i32 0, i32 17
  %raster = getelementptr inbounds %struct.ir_, %struct.ir_* %rows8, i32 0, i32 3
  %30 = load i32, i32* %raster, align 4, !tbaa !114
  store i32 %30, i32* %rows_raster, align 4, !tbaa !5
  %31 = bitcast i32* %offset_lastflippedstrip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  store i32 0, i32* %offset_lastflippedstrip, align 4, !tbaa !5
  %32 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %flipped = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %32, i32 0, i32 18
  %33 = load i32, i32* %flipped, align 4, !tbaa !103
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %34 = load i32, i32* %yo, align 4, !tbaa !5
  %sub9 = sub nsw i32 0, %34
  %35 = load i32, i32* %dh, align 4, !tbaa !5
  %sub10 = sub nsw i32 %sub9, %35
  store i32 %sub10, i32* %yo, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %flipped11 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %36, i32 0, i32 18
  %37 = load i32, i32* %flipped11, align 4, !tbaa !103
  %tobool12 = icmp ne i32 %37, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  %38 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows14 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %38, i32 0, i32 17
  %raster15 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows14, i32 0, i32 3
  %39 = load i32, i32* %raster15, align 4, !tbaa !114
  %40 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows16 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %40, i32 0, i32 17
  %num_rows = getelementptr inbounds %struct.ir_, %struct.ir_* %rows16, i32 0, i32 1
  %41 = load i32, i32* %num_rows, align 4, !tbaa !112
  %42 = load i32, i32* %h, align 4, !tbaa !5
  %sub17 = sub nsw i32 %41, %42
  %mul = mul i32 %39, %sub17
  store i32 %mul, i32* %offset_lastflippedstrip, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end
  %43 = load i32, i32* %dw, align 4, !tbaa !5
  %cmp = icmp sle i32 %43, 0
  br i1 %cmp, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %44 = load i32, i32* %dh, align 4, !tbaa !5
  %cmp19 = icmp sle i32 %44, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false
  %45 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %46 = load i32, i32* %xo, align 4, !tbaa !5
  %47 = load i32, i32* %yo, align 4, !tbaa !5
  %call22 = call i32 @pclxl_set_cursor(%struct.gx_device_pclxl_s* %45, i32 %46, i32 %47) #7
  %48 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_pixel = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %48, i32 0, i32 13
  %49 = load i32, i32* %bits_per_pixel, align 4, !tbaa !179
  %cmp23 = icmp eq i32 %49, 24
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %51 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @eBit_values, i32 0, i64 8), align 1, !tbaa !56
  call void @px_put_ub(%struct.stream_s* %50, i8 zeroext %51) #7
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pclxl_image_write_rows.ci_, i32 0, i32 0), i32 6) #7
  %53 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %53, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %54 = load i16, i16* %depth, align 2, !tbaa !180
  %conv = zext i16 %54 to i32
  %cmp25 = icmp eq i32 %conv, 8
  br i1 %cmp25, label %if.then.27, label %if.end.57

if.then.27:                                       ; preds = %if.then.24
  %55 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows28 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %56, i32 0, i32 17
  %data = getelementptr inbounds %struct.ir_, %struct.ir_* %rows28, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8, !tbaa !111
  %58 = load i32, i32* %offset_lastflippedstrip, align 4, !tbaa !5
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %in, align 8, !tbaa !1
  %59 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows29 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %60, i32 0, i32 17
  %data30 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows29, i32 0, i32 0
  %61 = load i8*, i8** %data30, align 8, !tbaa !111
  %62 = load i32, i32* %offset_lastflippedstrip, align 4, !tbaa !5
  %idx.ext31 = sext i32 %62 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %61, i64 %idx.ext31
  store i8* %add.ptr32, i8** %out, align 8, !tbaa !1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i32, i32* %rows_raster, align 4, !tbaa !5
  %div = sdiv i32 %65, 3
  store i32 %div, i32* %rows_raster, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %if.then.27
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %h, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %66, %67
  br i1 %cmp33, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %69 = load i32, i32* %rows_raster, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %68, %69
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %70 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %add.ptr39, align 1, !tbaa !56
  %conv40 = zext i8 %71 to i64
  %mul41 = mul i64 %conv40, 30
  %72 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %add.ptr42, align 1, !tbaa !56
  %conv43 = zext i8 %73 to i64
  %mul44 = mul i64 %conv43, 59
  %add45 = add i64 %mul41, %mul44
  %74 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds i8, i8* %74, i64 2
  %75 = load i8, i8* %add.ptr46, align 1, !tbaa !56
  %conv47 = zext i8 %75 to i64
  %mul48 = mul i64 %conv47, 11
  %add49 = add i64 %add45, %mul48
  %add50 = add i64 %add49, 50
  %div51 = udiv i64 %add50, 100
  %conv52 = trunc i64 %div51 to i8
  %76 = load i8*, i8** %out, align 8, !tbaa !1
  store i8 %conv52, i8* %76, align 1, !tbaa !56
  %77 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %77, i64 3
  store i8* %add.ptr53, i8** %in, align 8, !tbaa !1
  %78 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %out, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %inc55 = add nsw i32 %80, 1
  store i32 %inc55, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  %81 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  br label %if.end.57

if.end.57:                                        ; preds = %for.end.56, %if.then.24
  br label %if.end.59

if.else:                                          ; preds = %if.end.21
  %85 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %86 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_pixel58 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %86, i32 0, i32 13
  %87 = load i32, i32* %bits_per_pixel58, align 4, !tbaa !179
  %idxprom = sext i32 %87 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @eBit_values, i32 0, i64 %idxprom
  %88 = load i8, i8* %arrayidx, align 1, !tbaa !56
  call void @px_put_ub(%struct.stream_s* %85, i8 zeroext %88) #7
  %89 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pclxl_image_write_rows.ii_, i32 0, i32 0), i32 6) #7
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.end.57
  %90 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %91 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %width60 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %91, i32 0, i32 11
  %92 = load i32, i32* %width60, align 4, !tbaa !169
  %93 = load i32, i32* %h, align 4, !tbaa !5
  %94 = load i32, i32* %dw, align 4, !tbaa !5
  %95 = load i32, i32* %dh, align 4, !tbaa !5
  call void @pclxl_write_begin_image(%struct.gx_device_pclxl_s* %90, i32 %92, i32 %93, i32 %94, i32 %95) #7
  %96 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  %97 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %rows61 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %97, i32 0, i32 17
  %data62 = getelementptr inbounds %struct.ir_, %struct.ir_* %rows61, i32 0, i32 0
  %98 = load i8*, i8** %data62, align 8, !tbaa !111
  %99 = load i32, i32* %offset_lastflippedstrip, align 4, !tbaa !5
  %idx.ext63 = sext i32 %99 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %98, i64 %idx.ext63
  %100 = load i32, i32* %rows_raster, align 4, !tbaa !5
  %101 = load i32, i32* %rows_raster, align 4, !tbaa !5
  %shl = shl i32 %101, 3
  %102 = load i32, i32* %h, align 4, !tbaa !5
  call void @pclxl_write_image_data(%struct.gx_device_pclxl_s* %96, i8* %add.ptr64, i32 0, i32 %100, i32 %shl, i32 0, i32 %102) #7
  %103 = load %struct.gx_device_pclxl_s*, %struct.gx_device_pclxl_s** %xdev, align 8, !tbaa !1
  call void @pclxl_write_end_image(%struct.gx_device_pclxl_s* %103) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.20
  %104 = bitcast i32* %offset_lastflippedstrip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %rows_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %yo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %xo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast %struct.gx_device_pclxl_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @image_transform_x(%struct.pclxl_image_enum_s* %pie, i32 %sx) #0 {
entry:
  %pie.addr = alloca %struct.pclxl_image_enum_s*, align 8
  %sx.addr = alloca i32, align 4
  store %struct.pclxl_image_enum_s* %pie, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %sx, i32* %sx.addr, align 4, !tbaa !5
  %0 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %0, i32 0, i32 16
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %1 = load float, float* %tx, align 4, !tbaa !181
  %2 = load i32, i32* %sx.addr, align 4, !tbaa !5
  %conv = sitofp i32 %2 to float
  %3 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %mat1 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %3, i32 0, i32 16
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat1, i32 0, i32 0
  %4 = load float, float* %xx, align 4, !tbaa !182
  %mul = fmul float %conv, %4
  %add = fadd float %1, %mul
  %conv2 = fpext float %add to double
  %add3 = fadd double %conv2, 5.000000e-01
  %5 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !178
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_pclxl_s*
  %scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 62
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !183
  %div = fdiv double %add3, %8
  %conv4 = fptosi double %div to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define internal i32 @image_transform_y(%struct.pclxl_image_enum_s* %pie, i32 %sy) #0 {
entry:
  %pie.addr = alloca %struct.pclxl_image_enum_s*, align 8
  %sy.addr = alloca i32, align 4
  store %struct.pclxl_image_enum_s* %pie, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !5
  %0 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %0, i32 0, i32 16
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %1 = load float, float* %ty, align 4, !tbaa !184
  %2 = load i32, i32* %sy.addr, align 4, !tbaa !5
  %conv = sitofp i32 %2 to float
  %3 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %mat1 = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %3, i32 0, i32 16
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat1, i32 0, i32 3
  %4 = load float, float* %yy, align 4, !tbaa !185
  %mul = fmul float %conv, %4
  %add = fadd float %1, %mul
  %conv2 = fpext float %add to double
  %add3 = fadd double %conv2, 5.000000e-01
  %5 = load %struct.pclxl_image_enum_s*, %struct.pclxl_image_enum_s** %pie.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pclxl_image_enum_s, %struct.pclxl_image_enum_s* %5, i32 0, i32 2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !178
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_pclxl_s*
  %scale = getelementptr inbounds %struct.gx_device_pclxl_s, %struct.gx_device_pclxl_s* %7, i32 0, i32 62
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 1
  %8 = load double, double* %y, align 8, !tbaa !186
  %div = fdiv double %add3, %8
  %conv4 = fptosi double %div to i32
  ret i32 %conv4
}

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #1

declare i32 @gdev_vector_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #1

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @gdev_vector_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

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
!44 = !{!24, !2, i64 5848}
!45 = !{!46, !3, i64 8848}
!46 = !{!"gx_device_pclxl_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !25, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !38, i64 7512, !38, i64 8144, !13, i64 8776, !13, i64 8784, !3, i64 8792, !3, i64 8796, !31, i64 8800, !6, i64 8816, !2, i64 8824, !13, i64 8832, !13, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !6, i64 8868, !3, i64 8872, !3, i64 8936, !6, i64 9000, !6, i64 9004, !6, i64 9008, !6, i64 9012, !3, i64 9016, !3, i64 9020, !3, i64 9024, !47, i64 9028, !48, i64 9800, !49, i64 10136, !6, i64 17760, !6, i64 17764, !6, i64 17768, !6, i64 17772, !32, i64 17776, !32, i64 17784, !6, i64 17792, !6, i64 17796}
!47 = !{!"pal_", !6, i64 0, !3, i64 4}
!48 = !{!"pts_", !42, i64 0, !3, i64 8, !6, i64 12, !3, i64 16}
!49 = !{!"ch_", !3, i64 0, !3, i64 1200, !6, i64 7600, !6, i64 7604, !6, i64 7608, !13, i64 7616}
!50 = !{!46, !6, i64 17740}
!51 = !{!46, !6, i64 17736}
!52 = !{!46, !6, i64 8868}
!53 = !{!46, !6, i64 9000}
!54 = !{!46, !6, i64 8860}
!55 = !{!46, !6, i64 8864}
!56 = !{!3, !3, i64 0}
!57 = !{!46, !6, i64 8816}
!58 = !{!46, !2, i64 5848}
!59 = !{!60, !2, i64 208}
!60 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !15, i64 152, !3, i64 154, !3, i64 155, !61, i64 160, !13, i64 176, !62, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !15, i64 264, !15, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !63, i64 312, !6, i64 328, !13, i64 336, !13, i64 344}
!61 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!62 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!63 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!64 = !{!46, !2, i64 5840}
!65 = !{!13, !13, i64 0}
!66 = !{!11, !15, i64 108}
!67 = !{!11, !6, i64 832}
!68 = !{!11, !6, i64 836}
!69 = !{!70, !2, i64 0}
!70 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !42, i64 352, !6, i64 360, !39, i64 368, !71, i64 632}
!71 = !{!"_mask", !72, i64 0, !13, i64 8, !2, i64 16}
!72 = !{!"mp_", !6, i64 0, !6, i64 4}
!73 = !{!70, !6, i64 360}
!74 = !{!11, !6, i64 100}
!75 = !{!76, !2, i64 0}
!76 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!77 = !{!76, !6, i64 8}
!78 = !{!76, !6, i64 12}
!79 = !{!80, !2, i64 0}
!80 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!81 = !{!82, !2, i64 56}
!82 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!83 = !{!46, !6, i64 9008}
!84 = !{!46, !6, i64 9004}
!85 = !{!46, !6, i64 9012}
!86 = !{!46, !6, i64 17768}
!87 = !{!88, !2, i64 576}
!88 = !{!"gs_image1_s", !2, i64 0, !28, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!89 = !{!88, !6, i64 584}
!90 = !{!88, !6, i64 40}
!91 = !{!28, !27, i64 0}
!92 = !{!28, !27, i64 12}
!93 = !{!28, !27, i64 4}
!94 = !{!28, !27, i64 8}
!95 = !{!88, !6, i64 572}
!96 = !{!88, !6, i64 564}
!97 = !{!88, !6, i64 32}
!98 = !{!88, !6, i64 36}
!99 = !{!100, !2, i64 72}
!100 = !{!"gs_memory_s", !2, i64 0, !101, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!101 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!102 = !{!100, !2, i64 64}
!103 = !{!104, !6, i64 656}
!104 = !{!"pclxl_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !6, i64 584, !6, i64 588, !6, i64 592, !6, i64 596, !6, i64 600, !28, i64 604, !105, i64 632, !6, i64 656}
!105 = !{!"ir_", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!106 = !{!28, !27, i64 16}
!107 = !{!28, !27, i64 20}
!108 = !{!46, !6, i64 17764}
!109 = !{!27, !27, i64 0}
!110 = !{i64 0, i64 4, !109, i64 4, i64 4, !109, i64 8, i64 4, !109, i64 12, i64 4, !109, i64 16, i64 4, !109, i64 20, i64 4, !109}
!111 = !{!104, !2, i64 632}
!112 = !{!104, !6, i64 640}
!113 = !{!104, !6, i64 644}
!114 = !{!104, !6, i64 648}
!115 = !{!25, !6, i64 212}
!116 = !{!104, !6, i64 44}
!117 = !{!118, !2, i64 0}
!118 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !13, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!119 = !{!120, !2, i64 72}
!120 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!121 = !{!100, !2, i64 24}
!122 = !{!46, !3, i64 9016}
!123 = !{!46, !3, i64 9020}
!124 = !{!46, !3, i64 9024}
!125 = !{!46, !6, i64 9028}
!126 = !{!46, !6, i64 17760}
!127 = !{!46, !6, i64 17772}
!128 = !{!46, !32, i64 17776}
!129 = !{!46, !32, i64 17784}
!130 = !{!46, !6, i64 17792}
!131 = !{!46, !6, i64 17796}
!132 = !{!46, !6, i64 8856}
!133 = !{!46, !6, i64 8852}
!134 = !{!32, !32, i64 0}
!135 = !{!24, !2, i64 24}
!136 = !{!46, !3, i64 9808}
!137 = !{!46, !6, i64 9812}
!138 = !{!46, !6, i64 9800}
!139 = !{!46, !6, i64 9804}
!140 = !{!42, !6, i64 0}
!141 = !{!42, !6, i64 4}
!142 = !{!46, !6, i64 100}
!143 = !{!41, !2, i64 0}
!144 = !{!15, !15, i64 0}
!145 = !{!46, !13, i64 17752}
!146 = !{!46, !6, i64 17744}
!147 = !{!148, !13, i64 0}
!148 = !{!"cd_", !13, i64 0, !6, i64 8}
!149 = !{!148, !6, i64 8}
!150 = !{!46, !2, i64 1728}
!151 = !{!152, !6, i64 108}
!152 = !{!"stream_RLE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !13, i64 112, !13, i64 120, !6, i64 128}
!153 = !{!152, !13, i64 112}
!154 = !{!152, !13, i64 120}
!155 = !{!152, !6, i64 128}
!156 = !{!157, !2, i64 8}
!157 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!158 = !{!157, !2, i64 16}
!159 = !{!160, !2, i64 0}
!160 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!161 = !{!160, !2, i64 8}
!162 = !{!163, !2, i64 16}
!163 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!164 = !{!165, !6, i64 24}
!165 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!166 = !{!118, !2, i64 64}
!167 = !{!168, !6, i64 8}
!168 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!169 = !{!104, !6, i64 584}
!170 = !{!104, !6, i64 596}
!171 = !{!104, !6, i64 588}
!172 = !{!104, !6, i64 600}
!173 = !{!168, !2, i64 0}
!174 = !{!168, !6, i64 12}
!175 = !{!176, !2, i64 16}
!176 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!177 = !{!104, !2, i64 24}
!178 = !{!104, !2, i64 16}
!179 = !{!104, !6, i64 592}
!180 = !{!46, !15, i64 108}
!181 = !{!104, !27, i64 620}
!182 = !{!104, !27, i64 604}
!183 = !{!46, !32, i64 8800}
!184 = !{!104, !27, i64 624}
!185 = !{!104, !27, i64 616}
!186 = !{!46, !32, i64 8808}
