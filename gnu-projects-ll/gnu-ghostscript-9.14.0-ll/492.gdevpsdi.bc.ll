; ModuleID = './gdevpsdi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
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
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
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
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.stream_C2R_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_imager_state_s* }
%struct.stream_Downsample_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, float, float, i32, i32, i32, i32, i32 }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.stream_PNGP_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i8, i32, i8*, i32, i64, [512 x i8] }
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.stream_1248_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }
%struct.stream_compr_chooser_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64 }
%struct.stream_image_colors_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], [64 x i32], [128 x i32], [128 x float], %struct.gs_color_space_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, i32 (%struct.stream_image_colors_state_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"FlateEncode\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"psdf_setup_image_filters\00", align 1
@s_C2R_template = external constant %struct.stream_template_s, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"C2R state\00", align 1
@s_zlibE_template = external constant %struct.stream_template_s, align 8
@s_compr_chooser_template = external constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"psdf_setup_compression_chooser\00", align 1
@s__image_colors_template = external constant %struct.stream_template_s, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"psdf_setup_image_colors_filter\00", align 1
@s_Subsample_template = external constant %struct.stream_template_s, align 8
@s_Average_template = external constant %struct.stream_template_s, align 8
@s_Bicubic_template = external constant %struct.stream_template_s, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported downsample type %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"setup_downsampling\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"setup_image_compression\00", align 1
@s_LZWE_template = external constant %struct.stream_template_s, align 8
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@s_CFE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"ColorTransform\00", align 1
@choose_DCT_params.v = internal constant [4 x i8] c"\01\01\01\01", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"HSamples\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"VSamples\00", align 1
@pixel_resize.exts = internal constant [17 x %struct.stream_template_s*] [%struct.stream_template_s* null, %struct.stream_template_s* @s_1_8_template, %struct.stream_template_s* @s_2_8_template, %struct.stream_template_s* null, %struct.stream_template_s* @s_4_8_template, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* @s_12_8_template, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* null, %struct.stream_template_s* @s_16_8_template], align 16
@s_1_8_template = external constant %struct.stream_template_s, align 8
@s_2_8_template = external constant %struct.stream_template_s, align 8
@s_4_8_template = external constant %struct.stream_template_s, align 8
@s_12_8_template = external constant %struct.stream_template_s, align 8
@s_16_8_template = external constant %struct.stream_template_s, align 8
@pixel_resize.rets = internal constant [5 x %struct.stream_template_s*] [%struct.stream_template_s* null, %struct.stream_template_s* @s_8_1_template, %struct.stream_template_s* @s_8_2_template, %struct.stream_template_s* null, %struct.stream_template_s* @s_8_4_template], align 16
@s_8_1_template = external constant %struct.stream_template_s, align 8
@s_8_2_template = external constant %struct.stream_template_s, align 8
@s_8_4_template = external constant %struct.stream_template_s, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"pixel_resize state\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psdf_is_converting_image_to_RGB(%struct.gx_device_psdf_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gs_pixel_image_s* %pim) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %0, i32 0, i32 73
  %ConvertCMYKImagesToRGB = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 23
  %1 = load i32, i32* %ConvertCMYKImagesToRGB, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %land.end.12

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_imager_state_s* %2, null
  br i1 %cmp, label %land.lhs.true.1, label %land.end.12

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %3 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %3, i32 0, i32 9
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  %tobool2 = icmp ne %struct.gs_color_space_s* %4, null
  br i1 %tobool2, label %land.rhs, label %land.end.12

land.rhs:                                         ; preds = %land.lhs.true.1
  %5 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace3 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %5, i32 0, i32 9
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace3, align 8, !tbaa !42
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %6) #6
  %cmp4 = icmp eq i32 %call, 2
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace5 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %7, i32 0, i32 9
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace5, align 8, !tbaa !42
  %call6 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %8) #6
  %cmp7 = icmp eq i32 %call6, 12
  br i1 %cmp7, label %land.rhs.8, label %land.end

land.rhs.8:                                       ; preds = %lor.rhs
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace9 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %9, i32 0, i32 9
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace9, align 8, !tbaa !42
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 6
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !44
  %call10 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %11) #6
  %cmp11 = icmp eq i32 %call10, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs.8, %lor.rhs
  %12 = phi i1 [ false, %lor.rhs ], [ %cmp11, %land.rhs.8 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %12, %land.end ]
  br label %land.end.12

land.end.12:                                      ; preds = %lor.end, %land.lhs.true.1, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %13, %lor.end ]
  %land.ext = zext i1 %14 to i32
  ret i32 %land.ext
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #1

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #1

; Function Attrs: nounwind uwtable
define i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw, %struct.gs_pixel_image_s* %pim, %struct.gs_matrix_s* %pctm, %struct.gs_imager_state_s* %pis, i32 %lossless, i32 %in_line) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %lossless.addr = alloca i32, align 4
  %in_line.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %params = alloca %struct.psdf_image_params_s, align 8
  %bpc = alloca i32, align 4
  %bpc_out = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %resolution = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %cmyk_to_rgb = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %mem154 = alloca %struct.gs_memory_s*, align 8
  %ss = alloca %struct.stream_C2R_state_s*, align 8
  %code157 = alloca i32, align 4
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %lossless, i32* %lossless.addr, align 4, !tbaa !46
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !46
  %1 = bitcast %struct.psdf_image_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #2
  %2 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %3, i32 0, i32 4
  %4 = load i32, i32* %BitsPerComponent, align 4, !tbaa !47
  store i32 %4, i32* %bpc, align 4, !tbaa !46
  %5 = bitcast i32* %bpc_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %bpc, align 4, !tbaa !46
  %cmp = icmp slt i32 %6, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %bpc, align 4, !tbaa !46
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 8, %cond.false ]
  %8 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent1 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %8, i32 0, i32 4
  store i32 %cond, i32* %BitsPerComponent1, align 4, !tbaa !47
  store i32 %cond, i32* %bpc_out, align 4, !tbaa !46
  %9 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast double* %resolution to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %11, i32 0, i32 9
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  %cmp2 = icmp eq %struct.gs_color_space_s* %12, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %13, i32 0, i32 73
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 26
  %14 = bitcast %struct.psdf_image_params_s* %params to i8*
  %15 = bitcast %struct.psdf_image_params_s* %MonoImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 80, i32 8, i1 false), !tbaa.struct !48
  %Depth = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 1, i32* %Depth, align 4, !tbaa !51
  store i32 1, i32* %ncomp, align 4, !tbaa !46
  br label %if.end.28

if.else:                                          ; preds = %cond.end
  %16 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace4 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %16, i32 0, i32 9
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace4, align 8, !tbaa !42
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %17) #6
  store i32 %call, i32* %ncomp, align 4, !tbaa !46
  %18 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace5 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %18, i32 0, i32 9
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace5, align 8, !tbaa !42
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !52
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 0
  %21 = load i32, i32* %index, align 4, !tbaa !53
  %cmp6 = icmp eq i32 %21, 10
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %22 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %22, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params8, i32 0, i32 22
  %23 = bitcast %struct.psdf_image_params_s* %params to i8*
  %24 = bitcast %struct.psdf_image_params_s* %ColorImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 80, i32 8, i1 false), !tbaa.struct !48
  %AutoFilter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 2
  store i32 0, i32* %AutoFilter, align 4, !tbaa !55
  %Filter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter, align 8, !tbaa !56
  br label %if.end.27

if.else.9:                                        ; preds = %if.else
  %25 = load i32, i32* %ncomp, align 4, !tbaa !46
  %cmp10 = icmp eq i32 %25, 1
  br i1 %cmp10, label %if.then.11, label %if.else.23

if.then.11:                                       ; preds = %if.else.9
  %26 = load i32, i32* %bpc, align 4, !tbaa !46
  %cmp12 = icmp eq i32 %26, 1
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.then.11
  %27 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %27, i32 0, i32 73
  %MonoImage15 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params14, i32 0, i32 26
  %28 = bitcast %struct.psdf_image_params_s* %params to i8*
  %29 = bitcast %struct.psdf_image_params_s* %MonoImage15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end

if.else.16:                                       ; preds = %if.then.11
  %30 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %30, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params17, i32 0, i32 25
  %31 = bitcast %struct.psdf_image_params_s* %params to i8*
  %32 = bitcast %struct.psdf_image_params_s* %GrayImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.13
  %Depth18 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %33 = load i32, i32* %Depth18, align 4, !tbaa !51
  %cmp19 = icmp eq i32 %33, -1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %34 = load i32, i32* %bpc, align 4, !tbaa !46
  %Depth21 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 %34, i32* %Depth21, align 4, !tbaa !51
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end
  br label %if.end.26

if.else.23:                                       ; preds = %if.else.9
  %35 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %35, i32 0, i32 73
  %ColorImage25 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params24, i32 0, i32 22
  %36 = bitcast %struct.psdf_image_params_s* %params to i8*
  %37 = bitcast %struct.psdf_image_params_s* %ColorImage25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.7
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.gs_matrix_s* %38, null
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.28
  store double -1.000000e+00, double* %resolution, align 8, !tbaa !57
  br label %if.end.56

if.else.31:                                       ; preds = %if.end.28
  %39 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #2
  %40 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %40, i32 0, i32 1
  %call32 = call i32 @gs_distance_transform_inverse(double 1.000000e+00, double 0.000000e+00, %struct.gs_matrix_s* %ImageMatrix, %struct.gs_point_s* %pt) #6
  store i32 %call32, i32* %code, align 4, !tbaa !46
  %41 = load i32, i32* %code, align 4, !tbaa !46
  %cmp33 = icmp slt i32 %41, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.31
  %42 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.else.31
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %43 = load double, double* %x, align 8, !tbaa !58
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %44 = load double, double* %y, align 8, !tbaa !59
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call36 = call i32 @gs_distance_transform(double %43, double %44, %struct.gs_matrix_s* %45, %struct.gs_point_s* %pt) #6
  %x37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %46 = load double, double* %x37, align 8, !tbaa !58
  %47 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %47, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %48 = load float, float* %arrayidx, align 4, !tbaa !49
  %conv = fpext float %48 to double
  %div = fdiv double %46, %conv
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %49 = load double, double* %x38, align 8, !tbaa !58
  %50 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution39 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %50, i32 0, i32 22
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution39, i32 0, i64 0
  %51 = load float, float* %arrayidx40, align 4, !tbaa !49
  %conv41 = fpext float %51 to double
  %div42 = fdiv double %49, %conv41
  %mul = fmul double %div, %div42
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %52 = load double, double* %y43, align 8, !tbaa !59
  %53 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution44 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %53, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 1
  %54 = load float, float* %arrayidx45, align 4, !tbaa !49
  %conv46 = fpext float %54 to double
  %div47 = fdiv double %52, %conv46
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %55 = load double, double* %y48, align 8, !tbaa !59
  %56 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution49 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %56, i32 0, i32 22
  %arrayidx50 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution49, i32 0, i64 1
  %57 = load float, float* %arrayidx50, align 4, !tbaa !49
  %conv51 = fpext float %57 to double
  %div52 = fdiv double %55, %conv51
  %mul53 = fmul double %div47, %div52
  %add = fadd double %mul, %mul53
  %call54 = call double @sqrt(double %add) #7
  %div55 = fdiv double 1.000000e+00, %call54
  store double %div55, double* %resolution, align 8, !tbaa !57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34
  %58 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.190 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %if.then.30
  %59 = load i32, i32* %ncomp, align 4, !tbaa !46
  %cmp57 = icmp eq i32 %59, 1
  br i1 %cmp57, label %land.lhs.true, label %if.else.116

land.lhs.true:                                    ; preds = %if.end.56
  %60 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace59 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %60, i32 0, i32 9
  %61 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace59, align 8, !tbaa !42
  %tobool = icmp ne %struct.gs_color_space_s* %61, null
  br i1 %tobool, label %land.lhs.true.60, label %if.else.116

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %62 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace61 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %62, i32 0, i32 9
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace61, align 8, !tbaa !42
  %type62 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %63, i32 0, i32 0
  %64 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type62, align 8, !tbaa !52
  %index63 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %64, i32 0, i32 0
  %65 = load i32, i32* %index63, align 4, !tbaa !53
  %cmp64 = icmp ne i32 %65, 10
  br i1 %cmp64, label %if.then.66, label %if.else.116

if.then.66:                                       ; preds = %land.lhs.true.60
  %66 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %67 = load double, double* %resolution, align 8, !tbaa !57
  %call67 = call i32 @do_downsample(%struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %66, double %67) #6
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.105

if.then.69:                                       ; preds = %if.then.66
  %Depth70 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %68 = load i32, i32* %Depth70, align 4, !tbaa !51
  %cmp71 = icmp eq i32 %68, 1
  br i1 %cmp71, label %if.then.73, label %if.else.87

if.then.73:                                       ; preds = %if.then.69
  %69 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %69, i32 0, i32 73
  %MonoImage75 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params74, i32 0, i32 26
  %Filter76 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage75, i32 0, i32 9
  %70 = load i8*, i8** %Filter76, align 8, !tbaa !60
  %Filter77 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* %70, i8** %Filter77, align 8, !tbaa !56
  %71 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %71, i32 0, i32 73
  %MonoImage79 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params78, i32 0, i32 26
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage79, i32 0, i32 12
  %72 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template, align 8, !tbaa !61
  %filter_template80 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 12
  store %struct.stream_template_s* %72, %struct.stream_template_s** %filter_template80, align 8, !tbaa !62
  %73 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params81 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %73, i32 0, i32 73
  %MonoImage82 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params81, i32 0, i32 26
  %Dict = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage82, i32 0, i32 4
  %74 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict, align 8, !tbaa !63
  %Dict83 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 4
  store %struct.gs_c_param_list_s* %74, %struct.gs_c_param_list_s** %Dict83, align 8, !tbaa !64
  %75 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %76 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %76, i32 0, i32 73
  %MonoImage85 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params84, i32 0, i32 26
  %Dict86 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage85, i32 0, i32 4
  %77 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict86, align 8, !tbaa !63
  %78 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %79 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy_mono(%struct.gx_device_psdf_s* %75, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %77, %struct.gs_pixel_image_s* %78, i32 %79) #6
  br label %if.end.103

if.else.87:                                       ; preds = %if.then.69
  %80 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params88 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %80, i32 0, i32 73
  %GrayImage89 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params88, i32 0, i32 25
  %Filter90 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage89, i32 0, i32 9
  %81 = load i8*, i8** %Filter90, align 8, !tbaa !65
  %Filter91 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* %81, i8** %Filter91, align 8, !tbaa !56
  %82 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params92 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %82, i32 0, i32 73
  %GrayImage93 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params92, i32 0, i32 25
  %filter_template94 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage93, i32 0, i32 12
  %83 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template94, align 8, !tbaa !66
  %filter_template95 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 12
  store %struct.stream_template_s* %83, %struct.stream_template_s** %filter_template95, align 8, !tbaa !62
  %84 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params96 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %84, i32 0, i32 73
  %GrayImage97 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params96, i32 0, i32 25
  %Dict98 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage97, i32 0, i32 4
  %85 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict98, align 8, !tbaa !67
  %Dict99 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 4
  store %struct.gs_c_param_list_s* %85, %struct.gs_c_param_list_s** %Dict99, align 8, !tbaa !64
  %86 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %87, i32 0, i32 73
  %GrayImage101 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params100, i32 0, i32 25
  %Dict102 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage101, i32 0, i32 4
  %88 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict102, align 8, !tbaa !67
  %89 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %90 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %86, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %88, %struct.gs_pixel_image_s* %89, i32 %90) #6
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.87, %if.then.73
  %91 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %92 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %94 = load double, double* %resolution, align 8, !tbaa !57
  %95 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call104 = call i32 @setup_downsampling(%struct.psdf_binary_writer_s* %91, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %92, %struct.gs_imager_state_s* %93, double %94, i32 %95) #6
  store i32 %call104, i32* %code, align 4, !tbaa !46
  br label %if.end.110

if.else.105:                                      ; preds = %if.then.66
  %96 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %97 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params106 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %97, i32 0, i32 73
  %GrayImage107 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params106, i32 0, i32 25
  %Dict108 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage107, i32 0, i32 4
  %98 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict108, align 8, !tbaa !67
  %99 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %100 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %96, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %98, %struct.gs_pixel_image_s* %99, i32 %100) #6
  %101 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %102 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %104 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call109 = call i32 @setup_image_compression(%struct.psdf_binary_writer_s* %101, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %102, %struct.gs_imager_state_s* %103, i32 %104) #6
  store i32 %call109, i32* %code, align 4, !tbaa !46
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.105, %if.end.103
  %105 = load i32, i32* %code, align 4, !tbaa !46
  %cmp111 = icmp slt i32 %105, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  %106 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

if.end.114:                                       ; preds = %if.end.110
  %107 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %108 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %108, i32 0, i32 2
  %109 = load i32, i32* %Width, align 4, !tbaa !68
  %110 = load i32, i32* %ncomp, align 4, !tbaa !46
  %111 = load i32, i32* %bpc, align 4, !tbaa !46
  %112 = load i32, i32* %bpc_out, align 4, !tbaa !46
  %call115 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %107, i32 %109, i32 %110, i32 %111, i32 %112) #6
  store i32 %call115, i32* %code, align 4, !tbaa !46
  br label %if.end.189

if.else.116:                                      ; preds = %land.lhs.true.60, %land.lhs.true, %if.end.56
  %113 = bitcast i32* %cmyk_to_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #2
  %114 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %116 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %call117 = call i32 @psdf_is_converting_image_to_RGB(%struct.gx_device_psdf_s* %114, %struct.gs_imager_state_s* %115, %struct.gs_pixel_image_s* %116) #6
  store i32 %call117, i32* %cmyk_to_rgb, align 4, !tbaa !46
  %117 = load i32, i32* %cmyk_to_rgb, align 4, !tbaa !46
  %tobool118 = icmp ne i32 %117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %if.else.116
  %118 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #2
  %119 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %119, i32 0, i32 43
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !69
  store %struct.gs_memory_s* %120, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %121 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace120 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %121, i32 0, i32 9
  %122 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace120, align 8, !tbaa !42
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)) #6
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call121 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s* %123) #6
  %124 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace122 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %124, i32 0, i32 9
  store %struct.gs_color_space_s* %call121, %struct.gs_color_space_s** %ColorSpace122, align 8, !tbaa !42
  %125 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %if.else.116
  %Depth124 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %126 = load i32, i32* %Depth124, align 4, !tbaa !51
  %cmp125 = icmp eq i32 %126, -1
  br i1 %cmp125, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.end.123
  %127 = load i32, i32* %cmyk_to_rgb, align 4, !tbaa !46
  %tobool128 = icmp ne i32 %127, 0
  br i1 %tobool128, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %if.then.127
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.then.127
  %128 = load i32, i32* %bpc_out, align 4, !tbaa !46
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i32 [ 8, %cond.true.129 ], [ %128, %cond.false.130 ]
  %Depth133 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 %cond132, i32* %Depth133, align 4, !tbaa !51
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.131, %if.end.123
  %129 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %130 = load double, double* %resolution, align 8, !tbaa !57
  %call135 = call i32 @do_downsample(%struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %129, double %130) #6
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.else.142

if.then.137:                                      ; preds = %if.end.134
  %131 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %132 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %132, i32 0, i32 73
  %ColorImage139 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params138, i32 0, i32 22
  %Dict140 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage139, i32 0, i32 4
  %133 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict140, align 8, !tbaa !70
  %134 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %135 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %131, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %133, %struct.gs_pixel_image_s* %134, i32 %135) #6
  %136 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %137 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %139 = load double, double* %resolution, align 8, !tbaa !57
  %140 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call141 = call i32 @setup_downsampling(%struct.psdf_binary_writer_s* %136, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %137, %struct.gs_imager_state_s* %138, double %139, i32 %140) #6
  store i32 %call141, i32* %code, align 4, !tbaa !46
  br label %if.end.147

if.else.142:                                      ; preds = %if.end.134
  %141 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %142 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params143 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %142, i32 0, i32 73
  %ColorImage144 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params143, i32 0, i32 22
  %Dict145 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage144, i32 0, i32 4
  %143 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict145, align 8, !tbaa !70
  %144 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %145 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %141, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %143, %struct.gs_pixel_image_s* %144, i32 %145) #6
  %146 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %147 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %148 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %149 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call146 = call i32 @setup_image_compression(%struct.psdf_binary_writer_s* %146, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %147, %struct.gs_imager_state_s* %148, i32 %149) #6
  store i32 %call146, i32* %code, align 4, !tbaa !46
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.then.137
  %150 = load i32, i32* %code, align 4, !tbaa !46
  %cmp148 = icmp slt i32 %150, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  %151 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.186

if.end.151:                                       ; preds = %if.end.147
  %152 = load i32, i32* %cmyk_to_rgb, align 4, !tbaa !46
  %tobool152 = icmp ne i32 %152, 0
  br i1 %tobool152, label %if.then.153, label %if.else.178

if.then.153:                                      ; preds = %if.end.151
  %153 = bitcast %struct.gs_memory_s** %mem154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #2
  %154 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory155 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %154, i32 0, i32 43
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory155, align 8, !tbaa !69
  store %struct.gs_memory_s* %155, %struct.gs_memory_s** %mem154, align 8, !tbaa !1
  %156 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #2
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem154, align 8, !tbaa !1
  %158 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_C2R_template, i32 0, i32 0), align 8, !tbaa !71
  %call156 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %157, %struct.gs_memory_struct_type_s* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #6
  %159 = bitcast %struct.stream_state_s* %call156 to %struct.stream_C2R_state_s*
  store %struct.stream_C2R_state_s* %159, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %160 = bitcast i32* %code157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #2
  %161 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %162 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width158 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %162, i32 0, i32 2
  %163 = load i32, i32* %Width158, align 4, !tbaa !68
  %164 = load i32, i32* %bpc_out, align 4, !tbaa !46
  %call159 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %161, i32 %163, i32 3, i32 8, i32 %164) #6
  store i32 %call159, i32* %code157, align 4, !tbaa !46
  %165 = load i32, i32* %code157, align 4, !tbaa !46
  %cmp160 = icmp slt i32 %165, 0
  br i1 %cmp160, label %if.then.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.153
  %166 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %167 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %168 = bitcast %struct.stream_C2R_state_s* %167 to %struct.stream_state_s*
  %call162 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %166, %struct.stream_template_s* @s_C2R_template, %struct.stream_state_s* %168) #6
  store i32 %call162, i32* %code157, align 4, !tbaa !46
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %if.then.170, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false
  %169 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %170 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width166 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %170, i32 0, i32 2
  %171 = load i32, i32* %Width166, align 4, !tbaa !68
  %172 = load i32, i32* %bpc, align 4, !tbaa !46
  %call167 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %169, i32 %171, i32 4, i32 %172, i32 8) #6
  store i32 %call167, i32* %code157, align 4, !tbaa !46
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %lor.lhs.false.165, %lor.lhs.false, %if.then.153
  %173 = load i32, i32* %code157, align 4, !tbaa !46
  store i32 %173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.171:                                       ; preds = %lor.lhs.false.165
  %174 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %175 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call172 = call i32 @s_C2R_init(%struct.stream_C2R_state_s* %174, %struct.gs_imager_state_s* %175) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.173

cleanup.173:                                      ; preds = %if.end.171, %if.then.170
  %176 = bitcast i32* %code157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast %struct.gs_memory_s** %mem154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %cleanup.dest.176 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.176, label %cleanup.186 [
    i32 0, label %cleanup.cont.177
  ]

cleanup.cont.177:                                 ; preds = %cleanup.173
  br label %if.end.185

if.else.178:                                      ; preds = %if.end.151
  %179 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %180 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width179 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %180, i32 0, i32 2
  %181 = load i32, i32* %Width179, align 4, !tbaa !68
  %182 = load i32, i32* %ncomp, align 4, !tbaa !46
  %183 = load i32, i32* %bpc, align 4, !tbaa !46
  %184 = load i32, i32* %bpc_out, align 4, !tbaa !46
  %call180 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %179, i32 %181, i32 %182, i32 %183, i32 %184) #6
  store i32 %call180, i32* %code, align 4, !tbaa !46
  %185 = load i32, i32* %code, align 4, !tbaa !46
  %cmp181 = icmp slt i32 %185, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.else.178
  %186 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.186

if.end.184:                                       ; preds = %if.else.178
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %cleanup.cont.177
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.186

cleanup.186:                                      ; preds = %if.end.185, %if.then.183, %cleanup.173, %if.then.150
  %187 = bitcast i32* %cmyk_to_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %cleanup.dest.187 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.187, label %cleanup.190 [
    i32 0, label %cleanup.cont.188
  ]

cleanup.cont.188:                                 ; preds = %cleanup.186
  br label %if.end.189

if.end.189:                                       ; preds = %cleanup.cont.188, %if.end.114
  %188 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

cleanup.190:                                      ; preds = %if.end.189, %cleanup.186, %if.then.113, %cleanup
  %189 = bitcast double* %resolution to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %bpc_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast %struct.psdf_image_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 80, i8* %193) #2
  %194 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = load i32, i32* %retval
  ret i32 %195
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_downsample(%struct.psdf_image_params_s* %pdip, %struct.gs_pixel_image_s* %pim, double %resolution) #0 {
entry:
  %pdip.addr = alloca %struct.psdf_image_params_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %resolution.addr = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.psdf_image_params_s* %pdip, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store double %resolution, double* %resolution.addr, align 8, !tbaa !57
  %0 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load double, double* %resolution.addr, align 8, !tbaa !57
  %2 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Resolution = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %2, i32 0, i32 10
  %3 = load i32, i32* %Resolution, align 4, !tbaa !73
  %conv = sitofp i32 %3 to double
  %div = fdiv double %1, %conv
  store double %div, double* %factor, align 8, !tbaa !57
  %4 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Downsample = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %4, i32 0, i32 5
  %5 = load i32, i32* %Downsample, align 4, !tbaa !74
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = load double, double* %factor, align 8, !tbaa !57
  %7 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %DownsampleThreshold = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %7, i32 0, i32 6
  %8 = load float, float* %DownsampleThreshold, align 4, !tbaa !75
  %conv1 = fpext float %8 to double
  %cmp = fcmp oge double %6, %conv1
  br i1 %cmp, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load double, double* %factor, align 8, !tbaa !57
  %10 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %10, i32 0, i32 2
  %11 = load i32, i32* %Width, align 4, !tbaa !68
  %conv4 = sitofp i32 %11 to double
  %cmp5 = fcmp ole double %9, %conv4
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %12 = load double, double* %factor, align 8, !tbaa !57
  %13 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %13, i32 0, i32 3
  %14 = load i32, i32* %Height, align 4, !tbaa !76
  %conv7 = sitofp i32 %14 to double
  %cmp8 = fcmp ole double %12, %conv7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %entry
  %15 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  %16 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @adjust_auto_filter_strategy_mono(%struct.gx_device_psdf_s* %pdev, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %plist, %struct.gs_pixel_image_s* %pim, i32 %in_line) #4 {
entry:
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %params.addr = alloca %struct.psdf_image_params_s*, align 8
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %in_line.addr = alloca i32, align 4
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %params, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %pdev, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %plist, %struct.gs_pixel_image_s* %pim, i32 %in_line) #4 {
entry:
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %params.addr = alloca %struct.psdf_image_params_s*, align 8
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %in_line.addr = alloca i32, align 4
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %params, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @setup_downsampling(%struct.psdf_binary_writer_s* %pbw, %struct.psdf_image_params_s* %pdip, %struct.gs_pixel_image_s* %pim, %struct.gs_imager_state_s* %pis, double %resolution, i32 %lossless) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pdip.addr = alloca %struct.psdf_image_params_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %resolution.addr = alloca double, align 8
  %lossless.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_psdf_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %factor = alloca float, align 4
  %orig_bpc = alloca i32, align 4
  %orig_width = alloca i32, align 4
  %orig_height = alloca i32, align 4
  %st = alloca %struct.stream_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rfactor = alloca float, align 4
  %ss = alloca %struct.stream_Downsample_state_s*, align 8
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %pdip, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store double %resolution, double* %resolution.addr, align 8, !tbaa !57
  store i32 %lossless, i32* %lossless.addr, align 4, !tbaa !46
  %0 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %1, i32 0, i32 3
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  store %struct.gx_device_psdf_s* %2, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct.stream_template_s* @s_Subsample_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %4 = bitcast float* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load double, double* %resolution.addr, align 8, !tbaa !57
  %6 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Resolution = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %6, i32 0, i32 10
  %7 = load i32, i32* %Resolution, align 4, !tbaa !73
  %conv = sitofp i32 %7 to double
  %div = fdiv double %5, %conv
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %factor, align 4, !tbaa !49
  %8 = bitcast i32* %orig_bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %9, i32 0, i32 4
  %10 = load i32, i32* %BitsPerComponent, align 4, !tbaa !47
  store i32 %10, i32* %orig_bpc, align 4, !tbaa !46
  %11 = bitcast i32* %orig_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %12, i32 0, i32 2
  %13 = load i32, i32* %Width, align 4, !tbaa !68
  store i32 %13, i32* %orig_width, align 4, !tbaa !46
  %14 = bitcast i32* %orig_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %15, i32 0, i32 3
  %16 = load i32, i32* %Height, align 4, !tbaa !76
  store i32 %16, i32* %orig_height, align 4, !tbaa !46
  %17 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %DownsampleType = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %19, i32 0, i32 7
  %20 = load i32, i32* %DownsampleType, align 4, !tbaa !79
  switch i32 %20, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store %struct.stream_template_s* @s_Subsample_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store %struct.stream_template_s* @s_Average_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store %struct.stream_template_s* @s_Bicubic_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %21, i32 0, i32 43
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !69
  %23 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %DownsampleType4 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %23, i32 0, i32 7
  %24 = load i32, i32* %DownsampleType4, align 4, !tbaa !79
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 %24) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.2, %sw.bb
  %25 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %DownsampleType5 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %25, i32 0, i32 7
  %26 = load i32, i32* %DownsampleType5, align 4, !tbaa !79
  %cmp = icmp ne i32 %26, 1
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %sw.epilog
  %27 = bitcast float* %rfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load float, float* %factor, align 4, !tbaa !49
  %conv7 = fpext float %28 to double
  %add = fadd double %conv7, 5.000000e-01
  %call8 = call double @floor(double %add) #8
  %conv9 = fptrunc double %call8 to float
  store float %conv9, float* %rfactor, align 4, !tbaa !49
  %29 = load float, float* %rfactor, align 4, !tbaa !49
  %30 = load float, float* %factor, align 4, !tbaa !49
  %sub = fsub float %29, %30
  %conv10 = fpext float %sub to double
  %call11 = call double @fabs(double %conv10) #8
  %cmp12 = fcmp olt double %call11, 1.000000e-01
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %31 = load float, float* %rfactor, align 4, !tbaa !49
  store float %31, float* %factor, align 4, !tbaa !49
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.stream_template_s* @s_Bicubic_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  %32 = bitcast float* %rfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %sw.epilog
  %33 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory16 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %33, i32 0, i32 43
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory16, align 8, !tbaa !69
  %35 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %35, i32 0, i32 0
  %36 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !71
  %call17 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %34, %struct.gs_memory_struct_type_s* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call17, %struct.stream_state_s** %st, align 8, !tbaa !1
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.stream_state_s* %37, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.21:                                        ; preds = %if.end.15
  %38 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %38, i32 0, i32 6
  %39 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !80
  %tobool = icmp ne void (%struct.stream_state_s*)* %39, null
  br i1 %tobool, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.21
  %40 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults23 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %40, i32 0, i32 6
  %41 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults23, align 8, !tbaa !80
  %42 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  call void %41(%struct.stream_state_s* %42) #6
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.21
  %43 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %45 = bitcast %struct.stream_state_s* %44 to %struct.stream_Downsample_state_s*
  store %struct.stream_Downsample_state_s* %45, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %46 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %46, i32 0, i32 9
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  %cmp25 = icmp eq %struct.gs_color_space_s* %47, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %48 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace27 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %48, i32 0, i32 9
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace27, align 8, !tbaa !42
  %call28 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %49) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call28, %cond.false ]
  %50 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %50, i32 0, i32 5
  store i32 %cond, i32* %Colors, align 4, !tbaa !81
  %51 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width29 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %51, i32 0, i32 2
  %52 = load i32, i32* %Width29, align 4, !tbaa !68
  %53 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %53, i32 0, i32 6
  store i32 %52, i32* %WidthIn, align 4, !tbaa !83
  %54 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height30 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %54, i32 0, i32 3
  %55 = load i32, i32* %Height30, align 4, !tbaa !76
  %56 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %HeightIn = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %56, i32 0, i32 7
  store i32 %55, i32* %HeightIn, align 4, !tbaa !84
  %57 = load float, float* %factor, align 4, !tbaa !49
  %58 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %YFactor = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %58, i32 0, i32 9
  store float %57, float* %YFactor, align 4, !tbaa !85
  %59 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %59, i32 0, i32 8
  store float %57, float* %XFactor, align 4, !tbaa !86
  %60 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %AntiAlias = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %60, i32 0, i32 1
  %61 = load i32, i32* %AntiAlias, align 4, !tbaa !87
  %62 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %AntiAlias31 = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %62, i32 0, i32 10
  store i32 %61, i32* %AntiAlias31, align 4, !tbaa !88
  %63 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padY = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %63, i32 0, i32 12
  store i32 0, i32* %padY, align 4, !tbaa !89
  %64 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padX = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %64, i32 0, i32 11
  store i32 0, i32* %padX, align 4, !tbaa !90
  %65 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %65, i32 0, i32 1
  %66 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !91
  %tobool32 = icmp ne i32 (%struct.stream_state_s*)* %66, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %cond.end
  %67 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %init34 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %67, i32 0, i32 1
  %68 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init34, align 8, !tbaa !91
  %69 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call35 = call i32 %68(%struct.stream_state_s* %69) #6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %cond.end
  %70 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width37 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %70, i32 0, i32 2
  %71 = load i32, i32* %Width37, align 4, !tbaa !68
  %72 = load float, float* %factor, align 4, !tbaa !49
  %73 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padX38 = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %73, i32 0, i32 11
  %74 = load i32, i32* %padX38, align 4, !tbaa !90
  %call39 = call i32 @s_Downsample_size_out(i32 %71, float %72, i32 %74) #6
  %75 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width40 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %75, i32 0, i32 2
  store i32 %call39, i32* %Width40, align 4, !tbaa !68
  %76 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height41 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %76, i32 0, i32 3
  %77 = load i32, i32* %Height41, align 4, !tbaa !76
  %78 = load float, float* %factor, align 4, !tbaa !49
  %79 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padY42 = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %79, i32 0, i32 12
  %80 = load i32, i32* %padY42, align 4, !tbaa !89
  %call43 = call i32 @s_Downsample_size_out(i32 %77, float %78, i32 %80) #6
  %81 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height44 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %81, i32 0, i32 3
  store i32 %call43, i32* %Height44, align 4, !tbaa !76
  %82 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Depth = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %82, i32 0, i32 3
  %83 = load i32, i32* %Depth, align 4, !tbaa !51
  %84 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent45 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %84, i32 0, i32 4
  store i32 %83, i32* %BitsPerComponent45, align 4, !tbaa !47
  %85 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %85, i32 0, i32 1
  %86 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width46 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %86, i32 0, i32 2
  %87 = load i32, i32* %Width46, align 4, !tbaa !68
  %conv47 = sitofp i32 %87 to double
  %88 = load i32, i32* %orig_width, align 4, !tbaa !46
  %conv48 = sitofp i32 %88 to double
  %div49 = fdiv double %conv47, %conv48
  %89 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height50 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %89, i32 0, i32 3
  %90 = load i32, i32* %Height50, align 4, !tbaa !76
  %conv51 = sitofp i32 %90 to double
  %91 = load i32, i32* %orig_height, align 4, !tbaa !46
  %conv52 = sitofp i32 %91 to double
  %div53 = fdiv double %conv51, %conv52
  %92 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix54 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %92, i32 0, i32 1
  %call55 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %ImageMatrix, double %div49, double %div53, %struct.gs_matrix_s* %ImageMatrix54) #6
  %93 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %94 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %95 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %97 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call56 = call i32 @setup_image_compression(%struct.psdf_binary_writer_s* %93, %struct.psdf_image_params_s* %94, %struct.gs_pixel_image_s* %95, %struct.gs_imager_state_s* %96, i32 %97) #6
  store i32 %call56, i32* %code, align 4, !tbaa !46
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %98 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %99 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width59 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %99, i32 0, i32 2
  %100 = load i32, i32* %Width59, align 4, !tbaa !68
  %101 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %Colors60 = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %101, i32 0, i32 5
  %102 = load i32, i32* %Colors60, align 4, !tbaa !81
  %103 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Depth61 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %103, i32 0, i32 3
  %104 = load i32, i32* %Depth61, align 4, !tbaa !51
  %call62 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %98, i32 %100, i32 %102, i32 8, i32 %104) #6
  store i32 %call62, i32* %code, align 4, !tbaa !46
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.74, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false
  %105 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %106 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %107 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call66 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %105, %struct.stream_template_s* %106, %struct.stream_state_s* %107) #6
  store i32 %call66, i32* %code, align 4, !tbaa !46
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.74, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.65
  %108 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %109 = load i32, i32* %orig_width, align 4, !tbaa !46
  %110 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %Colors70 = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %110, i32 0, i32 5
  %111 = load i32, i32* %Colors70, align 4, !tbaa !81
  %112 = load i32, i32* %orig_bpc, align 4, !tbaa !46
  %call71 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %108, i32 %109, i32 %111, i32 %112, i32 8) #6
  store i32 %call71, i32* %code, align 4, !tbaa !46
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.65, %lor.lhs.false, %if.end.36
  %113 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory75 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %113, i32 0, i32 43
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory75, align 8, !tbaa !69
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %115 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !92
  %116 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory76 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %116, i32 0, i32 43
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory76, align 8, !tbaa !69
  %118 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %119 = bitcast %struct.stream_state_s* %118 to i8*
  call void %115(%struct.gs_memory_s* %117, i8* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #6
  %120 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %lor.lhs.false.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.74
  %121 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %cleanup.cont, %cleanup, %if.then.20, %sw.default
  %122 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast i32* %orig_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %orig_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %orig_bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast float* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal i32 @setup_image_compression(%struct.psdf_binary_writer_s* %pbw, %struct.psdf_image_params_s* %pdip, %struct.gs_pixel_image_s* %pim, %struct.gs_imager_state_s* %pis, i32 %lossless) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pdip.addr = alloca %struct.psdf_image_params_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %lossless.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_psdf_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %lossless_template = alloca %struct.stream_template_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %Colors = alloca i32, align 4
  %Indexed = alloca i32, align 4
  %dict = alloca %struct.gs_c_param_list_s*, align 8
  %st = alloca %struct.stream_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  %ss120 = alloca %struct.stream_PNGP_state_s*, align 8
  %list = alloca %struct.gs_c_param_list_s, align 8
  %param = alloca %struct.gs_c_param_list_s*, align 8
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %pdip, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %lossless, i32* %lossless.addr, align 4, !tbaa !46
  %0 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %1, i32 0, i32 3
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  store %struct.gx_device_psdf_s* %2, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !69
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %7, i32 0, i32 12
  %8 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template, align 8, !tbaa !62
  store %struct.stream_template_s* %8, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %9 = bitcast %struct.stream_template_s** %lossless_template to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %10, i32 0, i32 73
  %UseFlateCompression = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 12
  %11 = load i32, i32* %UseFlateCompression, align 4, !tbaa !95
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %12 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %12, i32 0, i32 67
  %13 = load i32, i32* %version, align 4, !tbaa !96
  %cmp = icmp uge i32 %13, 3010
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %14 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %cond = select i1 %14, %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s* @s_LZWE_template
  store %struct.stream_template_s* %cond, %struct.stream_template_s** %lossless_template, align 8, !tbaa !1
  %15 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %16, i32 0, i32 9
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  store %struct.gs_color_space_s* %17, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %18 = bitcast i32* %Colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_color_space_s* %19, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %20) #6
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ %call, %cond.true ], [ 1, %cond.false ]
  store i32 %cond2, i32* %Colors, align 4, !tbaa !46
  %21 = bitcast i32* %Indexed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gs_color_space_s* %22, null
  br i1 %cmp3, label %land.rhs.4, label %land.end.7

land.rhs.4:                                       ; preds = %cond.end
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call5 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %23) #6
  %cmp6 = icmp eq i32 %call5, 10
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.4, %cond.end
  %24 = phi i1 [ false, %cond.end ], [ %cmp6, %land.rhs.4 ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %Indexed, align 4, !tbaa !46
  %25 = bitcast %struct.gs_c_param_list_s** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Dict = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %26, i32 0, i32 4
  %27 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict, align 8, !tbaa !64
  store %struct.gs_c_param_list_s* %27, %struct.gs_c_param_list_s** %dict, align 8, !tbaa !1
  %28 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Encode = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %30, i32 0, i32 8
  %31 = load i32, i32* %Encode, align 4, !tbaa !97
  %tobool8 = icmp ne i32 %31, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.end.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end:                                           ; preds = %land.end.7
  %32 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %AutoFilter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %32, i32 0, i32 2
  %33 = load i32, i32* %AutoFilter, align 4, !tbaa !55
  %tobool9 = icmp ne i32 %33, 0
  br i1 %tobool9, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.end
  %34 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %tobool11 = icmp ne i32 %34, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %35 = load %struct.stream_template_s*, %struct.stream_template_s** %lossless_template, align 8, !tbaa !1
  store %struct.stream_template_s* %35, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.19

if.else:                                          ; preds = %if.then.10
  %36 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.stream_template_s* %36, null
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %37 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.stream_template_s* %37, @s_zlibE_template
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %38 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.stream_template_s* %38, @s_LZWE_template
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %if.else
  store %struct.stream_template_s* @s_DCTE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %lor.lhs.false.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %39 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %ACSDict = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %39, i32 0, i32 0
  %40 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %ACSDict, align 8, !tbaa !98
  store %struct.gs_c_param_list_s* %40, %struct.gs_c_param_list_s** %dict, align 8, !tbaa !1
  br label %if.end.24

if.else.20:                                       ; preds = %if.end
  %41 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %tobool21 = icmp ne i32 %41, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.else.20
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.23:                                        ; preds = %if.else.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.19
  %42 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %version25 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %42, i32 0, i32 67
  %43 = load i32, i32* %version25, align 4, !tbaa !96
  %cmp26 = icmp ult i32 %43, 3010
  br i1 %cmp26, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.24
  %44 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.stream_template_s* %44, @s_zlibE_template
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %45 = load %struct.stream_template_s*, %struct.stream_template_s** %lossless_template, align 8, !tbaa !1
  store %struct.stream_template_s* %45, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.24
  %46 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dict, align 8, !tbaa !1
  %cmp30 = icmp ne %struct.gs_c_param_list_s* %46, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %47 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dict, align 8, !tbaa !1
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %47) #6
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %48 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.stream_template_s* %48, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.35:                                        ; preds = %if.end.32
  %49 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %49, i32 0, i32 2
  %50 = load i32, i32* %Width, align 4, !tbaa !68
  %cmp36 = icmp slt i32 %50, 200
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.47

land.lhs.true.37:                                 ; preds = %if.end.35
  %51 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %51, i32 0, i32 3
  %52 = load i32, i32* %Height, align 4, !tbaa !76
  %cmp38 = icmp slt i32 %52, 200
  br i1 %cmp38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %land.lhs.true.37
  %53 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width40 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %53, i32 0, i32 2
  %54 = load i32, i32* %Width40, align 4, !tbaa !68
  %55 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height41 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %55, i32 0, i32 3
  %56 = load i32, i32* %Height41, align 4, !tbaa !76
  %mul = mul nsw i32 %54, %56
  %57 = load i32, i32* %Colors, align 4, !tbaa !46
  %mul42 = mul nsw i32 %mul, %57
  %58 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %58, i32 0, i32 4
  %59 = load i32, i32* %BitsPerComponent, align 4, !tbaa !47
  %mul43 = mul nsw i32 %mul42, %59
  %cmp44 = icmp sle i32 %mul43, 160
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.46:                                        ; preds = %if.then.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.37, %if.end.35
  %60 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.stream_template_s* %60, @s_DCTE_template
  br i1 %cmp48, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %if.end.47
  %61 = load i32, i32* %Indexed, align 4, !tbaa !46
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %if.then.64, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.then.49
  %62 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Downsample = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %62, i32 0, i32 5
  %63 = load i32, i32* %Downsample, align 4, !tbaa !74
  %tobool52 = icmp ne i32 %63, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.61

cond.true.53:                                     ; preds = %lor.lhs.false.51
  %64 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Depth = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %64, i32 0, i32 3
  %65 = load i32, i32* %Depth, align 4, !tbaa !51
  %cmp54 = icmp eq i32 %65, 8
  br i1 %cmp54, label %if.end.65, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %cond.true.53
  %66 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Depth56 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %66, i32 0, i32 3
  %67 = load i32, i32* %Depth56, align 4, !tbaa !51
  %cmp57 = icmp eq i32 %67, -1
  br i1 %cmp57, label %land.lhs.true.58, label %if.then.64

land.lhs.true.58:                                 ; preds = %lor.lhs.false.55
  %68 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent59 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %68, i32 0, i32 4
  %69 = load i32, i32* %BitsPerComponent59, align 4, !tbaa !47
  %cmp60 = icmp eq i32 %69, 8
  br i1 %cmp60, label %if.end.65, label %if.then.64

cond.false.61:                                    ; preds = %lor.lhs.false.51
  %70 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent62 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %70, i32 0, i32 4
  %71 = load i32, i32* %BitsPerComponent62, align 4, !tbaa !47
  %cmp63 = icmp eq i32 %71, 8
  br i1 %cmp63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %cond.false.61, %land.lhs.true.58, %lor.lhs.false.55, %if.then.49
  %72 = load %struct.stream_template_s*, %struct.stream_template_s** %lossless_template, align 8, !tbaa !1
  store %struct.stream_template_s* %72, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %cond.false.61, %land.lhs.true.58, %cond.true.53
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.47
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %74 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %74, i32 0, i32 0
  %75 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !71
  %call67 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %73, %struct.gs_memory_struct_type_s* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call67, %struct.stream_state_s** %st, align 8, !tbaa !1
  %76 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp68 = icmp eq %struct.stream_state_s* %76, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.70:                                        ; preds = %if.end.66
  %77 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %78 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat71 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %78, i32 0, i32 0
  store %struct.stream_template_s* %77, %struct.stream_template_s** %templat71, align 8, !tbaa !99
  %79 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %79, i32 0, i32 6
  %80 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !80
  %tobool72 = icmp ne void (%struct.stream_state_s*)* %80, null
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.70
  %81 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults74 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %81, i32 0, i32 6
  %82 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults74, align 8, !tbaa !80
  %83 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  call void %82(%struct.stream_state_s* %83) #6
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.70
  %84 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp76 = icmp eq %struct.stream_template_s* %84, @s_CFE_template
  br i1 %cmp76, label %if.then.77, label %if.else.95

if.then.77:                                       ; preds = %if.end.75
  %85 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %87 = bitcast %struct.stream_state_s* %86 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %87, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %88 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Dict78 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %88, i32 0, i32 4
  %89 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict78, align 8, !tbaa !64
  %cmp79 = icmp ne %struct.gs_c_param_list_s* %89, null
  br i1 %cmp79, label %land.lhs.true.80, label %if.else.86

land.lhs.true.80:                                 ; preds = %if.then.77
  %90 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %filter_template81 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %90, i32 0, i32 12
  %91 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template81, align 8, !tbaa !62
  %92 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp82 = icmp eq %struct.stream_template_s* %91, %92
  br i1 %cmp82, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %land.lhs.true.80
  %93 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %pdip.addr, align 8, !tbaa !1
  %Dict84 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %93, i32 0, i32 4
  %94 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict84, align 8, !tbaa !64
  %95 = bitcast %struct.gs_c_param_list_s* %94 to %struct.gs_param_list_s*
  %96 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %97 = bitcast %struct.stream_CFE_state_s* %96 to %struct.stream_CF_state_s*
  %call85 = call i32 @s_CF_put_params(%struct.gs_param_list_s* %95, %struct.stream_CF_state_s* %97) #6
  br label %if.end.87

if.else.86:                                       ; preds = %land.lhs.true.80, %if.then.77
  %98 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %98, i32 0, i32 9
  store i32 -1, i32* %K, align 4, !tbaa !101
  %99 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %99, i32 0, i32 15
  store i32 1, i32* %BlackIs1, align 4, !tbaa !103
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.83
  %100 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width88 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %100, i32 0, i32 2
  %101 = load i32, i32* %Width88, align 4, !tbaa !68
  %102 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %102, i32 0, i32 12
  store i32 %101, i32* %Columns, align 4, !tbaa !104
  %103 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %103, i32 0, i32 14
  %104 = load i32, i32* %EndOfBlock, align 4, !tbaa !105
  %tobool89 = icmp ne i32 %104, 0
  br i1 %tobool89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.end.87
  br label %cond.end.93

cond.false.91:                                    ; preds = %if.end.87
  %105 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height92 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %105, i32 0, i32 3
  %106 = load i32, i32* %Height92, align 4, !tbaa !76
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %cond94 = phi i32 [ 0, %cond.true.90 ], [ %106, %cond.false.91 ]
  %107 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %107, i32 0, i32 13
  store i32 %cond94, i32* %Rows, align 4, !tbaa !106
  %108 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  br label %if.end.143

if.else.95:                                       ; preds = %if.end.75
  %109 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp96 = icmp eq %struct.stream_template_s* %109, @s_LZWE_template
  br i1 %cmp96, label %land.lhs.true.99, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.else.95
  %110 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp98 = icmp eq %struct.stream_template_s* %110, @s_zlibE_template
  br i1 %cmp98, label %land.lhs.true.99, label %if.else.125

land.lhs.true.99:                                 ; preds = %lor.lhs.false.97, %if.else.95
  %111 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %version100 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %111, i32 0, i32 67
  %112 = load i32, i32* %version100, align 4, !tbaa !96
  %cmp101 = icmp uge i32 %112, 3010
  br i1 %cmp101, label %if.then.102, label %if.else.125

if.then.102:                                      ; preds = %land.lhs.true.99
  %113 = load i32, i32* %Indexed, align 4, !tbaa !46
  %tobool103 = icmp ne i32 %113, 0
  br i1 %tobool103, label %if.end.124, label %if.then.104

if.then.104:                                      ; preds = %if.then.102
  %114 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %115 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %116 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call105 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %114, %struct.stream_template_s* %115, %struct.stream_state_s* %116) #6
  store i32 %call105, i32* %code, align 4, !tbaa !46
  %117 = load i32, i32* %code, align 4, !tbaa !46
  %cmp106 = icmp slt i32 %117, 0
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.104
  br label %fail

if.end.108:                                       ; preds = %if.then.104
  store %struct.stream_template_s* @s_PNGPE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %119 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype109 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %119, i32 0, i32 0
  %120 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype109, align 8, !tbaa !71
  %call110 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %118, %struct.gs_memory_struct_type_s* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call110, %struct.stream_state_s** %st, align 8, !tbaa !1
  %121 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp111 = icmp eq %struct.stream_state_s* %121, null
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.108
  store i32 -25, i32* %code, align 4, !tbaa !46
  br label %fail

if.end.113:                                       ; preds = %if.end.108
  %122 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %123 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat114 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %123, i32 0, i32 0
  store %struct.stream_template_s* %122, %struct.stream_template_s** %templat114, align 8, !tbaa !99
  %124 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults115 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %124, i32 0, i32 6
  %125 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults115, align 8, !tbaa !80
  %tobool116 = icmp ne void (%struct.stream_state_s*)* %125, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.113
  %126 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults118 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %126, i32 0, i32 6
  %127 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults118, align 8, !tbaa !80
  %128 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  call void %127(%struct.stream_state_s* %128) #6
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.113
  %129 = bitcast %struct.stream_PNGP_state_s** %ss120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #2
  %130 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %131 = bitcast %struct.stream_state_s* %130 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %131, %struct.stream_PNGP_state_s** %ss120, align 8, !tbaa !1
  %132 = load i32, i32* %Colors, align 4, !tbaa !46
  %133 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss120, align 8, !tbaa !1
  %Colors121 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %133, i32 0, i32 5
  store i32 %132, i32* %Colors121, align 4, !tbaa !107
  %134 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width122 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %134, i32 0, i32 2
  %135 = load i32, i32* %Width122, align 4, !tbaa !68
  %136 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss120, align 8, !tbaa !1
  %Columns123 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %136, i32 0, i32 7
  store i32 %135, i32* %Columns123, align 4, !tbaa !109
  %137 = bitcast %struct.stream_PNGP_state_s** %ss120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.119, %if.then.102
  br label %if.end.142

if.else.125:                                      ; preds = %land.lhs.true.99, %lor.lhs.false.97
  %138 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %cmp126 = icmp eq %struct.stream_template_s* %138, @s_DCTE_template
  br i1 %cmp126, label %if.then.127, label %if.else.140

if.then.127:                                      ; preds = %if.else.125
  %139 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %139) #2
  %140 = bitcast %struct.gs_c_param_list_s** %param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #2
  %141 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dict, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %141, %struct.gs_c_param_list_s** %param, align 8, !tbaa !1
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %list, %struct.gs_memory_s* %142) #6
  %143 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev128 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %143, i32 0, i32 3
  %144 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %dev128, align 8, !tbaa !77
  %145 = bitcast %struct.gx_device_psdf_s* %144 to %struct.gx_device_s*
  %146 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %147 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %148 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call129 = call i32 @choose_DCT_params(%struct.gx_device_s* %145, %struct.gs_color_space_s* %146, %struct.gs_imager_state_s* %147, %struct.gs_c_param_list_s* %list, %struct.gs_c_param_list_s** %param, %struct.stream_state_s* %148) #6
  store i32 %call129, i32* %code, align 4, !tbaa !46
  %149 = load i32, i32* %code, align 4, !tbaa !46
  %cmp130 = icmp slt i32 %149, 0
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.127
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %list) #6
  %150 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.then.127
  %151 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %param, align 8, !tbaa !1
  %152 = bitcast %struct.gs_c_param_list_s* %151 to %struct.gs_param_list_s*
  %153 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %154 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width133 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %154, i32 0, i32 2
  %155 = load i32, i32* %Width133, align 4, !tbaa !68
  %156 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height134 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %156, i32 0, i32 3
  %157 = load i32, i32* %Height134, align 4, !tbaa !76
  %158 = load i32, i32* %Colors, align 4, !tbaa !46
  %159 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %call135 = call i32 @psdf_DCT_filter(%struct.gs_param_list_s* %152, %struct.stream_state_s* %153, i32 %155, i32 %157, i32 %158, %struct.psdf_binary_writer_s* %159) #6
  store i32 %call135, i32* %code, align 4, !tbaa !46
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %list) #6
  %160 = load i32, i32* %code, align 4, !tbaa !46
  %cmp136 = icmp slt i32 %160, 0
  br i1 %cmp136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.132
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.138:                                       ; preds = %if.end.132
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.137, %if.end.138, %if.then.131
  %161 = bitcast %struct.gs_c_param_list_s** %param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %162) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 2, label %fail
  ]

if.else.140:                                      ; preds = %if.else.125
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.124
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %cond.end.93
  %163 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %164 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %165 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call144 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %163, %struct.stream_template_s* %164, %struct.stream_state_s* %165) #6
  store i32 %call144, i32* %code, align 4, !tbaa !46
  %166 = load i32, i32* %code, align 4, !tbaa !46
  %cmp145 = icmp sge i32 %166, 0
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.143
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.147:                                       ; preds = %if.end.143
  br label %fail

fail:                                             ; preds = %if.end.147, %cleanup, %if.then.112, %if.then.107
  %167 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %167, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %168 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !92
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %170 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %171 = bitcast %struct.stream_state_s* %170 to i8*
  call void %168(%struct.gs_memory_s* %169, i8* %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #6
  %172 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %fail, %cleanup, %if.then.146, %if.then.69, %if.then.45, %if.then.34, %if.then.22, %if.then
  %173 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast %struct.gs_c_param_list_s** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i32* %Indexed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %Colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast %struct.stream_template_s** %lossless_template to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = load i32, i32* %retval
  ret i32 %183
}

; Function Attrs: nounwind uwtable
define internal i32 @pixel_resize(%struct.psdf_binary_writer_s* %pbw, i32 %width, i32 %num_components, i32 %bpc_in, i32 %bpc_out) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %width.addr = alloca i32, align 4
  %num_components.addr = alloca i32, align 4
  %bpc_in.addr = alloca i32, align 4
  %bpc_out.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %st = alloca %struct.stream_1248_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !46
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !46
  store i32 %bpc_in, i32* %bpc_in.addr, align 4, !tbaa !46
  store i32 %bpc_out, i32* %bpc_out.addr, align 4, !tbaa !46
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %1, i32 0, i32 3
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %2, i32 0, i32 43
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !69
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.stream_1248_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %bpc_out.addr, align 4, !tbaa !46
  %8 = load i32, i32* %bpc_in.addr, align 4, !tbaa !46
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %bpc_in.addr, align 4, !tbaa !46
  %cmp1 = icmp ne i32 %9, 8
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load i32, i32* %bpc_in.addr, align 4, !tbaa !46
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.stream_template_s*], [17 x %struct.stream_template_s*]* @pixel_resize.exts, i32 0, i64 %idxprom
  %11 = load %struct.stream_template_s*, %struct.stream_template_s** %arrayidx, align 8, !tbaa !1
  store %struct.stream_template_s* %11, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %bpc_out.addr, align 4, !tbaa !46
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [5 x %struct.stream_template_s*], [5 x %struct.stream_template_s*]* @pixel_resize.rets, i32 0, i64 %idxprom3
  %13 = load %struct.stream_template_s*, %struct.stream_template_s** %arrayidx4, align 8, !tbaa !1
  store %struct.stream_template_s* %13, %struct.stream_template_s** %templat, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !71
  %call = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)) #6
  %17 = bitcast %struct.stream_state_s* %call to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %17, %struct.stream_1248_state_s** %st, align 8, !tbaa !1
  %18 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %st, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.stream_1248_state_s* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %19 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %20 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %21 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %st, align 8, !tbaa !1
  %22 = bitcast %struct.stream_1248_state_s* %21 to %struct.stream_state_s*
  %call9 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %19, %struct.stream_template_s* %20, %struct.stream_state_s* %22) #6
  store i32 %call9, i32* %code, align 4, !tbaa !46
  %23 = load i32, i32* %code, align 4, !tbaa !46
  %cmp10 = icmp slt i32 %23, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !92
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %st, align 8, !tbaa !1
  %28 = bitcast %struct.stream_1248_state_s* %27 to i8*
  call void %25(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)) #6
  %29 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %30 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %st, align 8, !tbaa !1
  %31 = load i32, i32* %width.addr, align 4, !tbaa !46
  %32 = load i32, i32* %num_components.addr, align 4, !tbaa !46
  %call13 = call i32 @s_1248_init(%struct.stream_1248_state_s* %30, i32 %31, i32 %32) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.stream_1248_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #1

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceRGB(%struct.gs_memory_s*) #1

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #1

declare i32 @psdf_encode_binary(%struct.psdf_binary_writer_s*, %struct.stream_template_s*, %struct.stream_state_s*) #1

declare i32 @s_C2R_init(%struct.stream_C2R_state_s*, %struct.gs_imager_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @psdf_setup_lossless_filters(%struct.gx_device_psdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw, %struct.gs_pixel_image_s* %pim, i32 %in_line) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %in_line.addr = alloca i32, align 4
  %ipdev = alloca %struct.gx_device_psdf_s, align 8
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  %0 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  call void @llvm.lifetime.start(i64 9360, i8* %0) #2
  %1 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  %3 = bitcast %struct.gx_device_psdf_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 9360, i32 8, i1 false), !tbaa.struct !110
  %params = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 22
  %AutoFilter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage, i32 0, i32 2
  store i32 0, i32* %AutoFilter, align 4, !tbaa !113
  %params1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage2 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1, i32 0, i32 22
  %Downsample = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage2, i32 0, i32 5
  store i32 0, i32* %Downsample, align 4, !tbaa !114
  %params3 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage4 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 22
  %Filter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage4, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter, align 8, !tbaa !115
  %params5 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage6 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params5, i32 0, i32 22
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage6, i32 0, i32 12
  store %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s** %filter_template, align 8, !tbaa !116
  %params7 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ConvertCMYKImagesToRGB = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params7, i32 0, i32 23
  store i32 0, i32* %ConvertCMYKImagesToRGB, align 4, !tbaa !5
  %params8 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params8, i32 0, i32 25
  %AutoFilter9 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage, i32 0, i32 2
  store i32 0, i32* %AutoFilter9, align 4, !tbaa !117
  %params10 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage11 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params10, i32 0, i32 25
  %Downsample12 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage11, i32 0, i32 5
  store i32 0, i32* %Downsample12, align 4, !tbaa !118
  %params13 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage14 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params13, i32 0, i32 25
  %Filter15 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage14, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter15, align 8, !tbaa !65
  %params16 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage17 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params16, i32 0, i32 25
  %filter_template18 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage17, i32 0, i32 12
  store %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s** %filter_template18, align 8, !tbaa !66
  %4 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %5 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %6 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  %call = call i32 @psdf_setup_image_filters(%struct.gx_device_psdf_s* %ipdev, %struct.psdf_binary_writer_s* %4, %struct.gs_pixel_image_s* %5, %struct.gs_matrix_s* null, %struct.gs_imager_state_s* null, i32 1, i32 %6) #6
  %7 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  call void @llvm.lifetime.end(i64 9360, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psdf_setup_compression_chooser(%struct.psdf_binary_writer_s* %pbw, %struct.gx_device_psdf_s* %pdev, i32 %width, i32 %height, i32 %depth, i32 %bits_per_sample) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %ss = alloca %struct.stream_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !46
  store i32 %height, i32* %height.addr, align 4, !tbaa !46
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !46
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !46
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !119
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_compr_chooser_template, i32 0, i32 0), align 8, !tbaa !71
  %call = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %5 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 0
  store %struct.stream_template_s* @s_compr_chooser_template, %struct.stream_template_s** %templat, align 8, !tbaa !99
  %7 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !119
  %9 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %9, i32 0, i32 0
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory2, align 8, !tbaa !120
  %10 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %10, i32 0, i32 47
  %11 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !121
  %12 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm3 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %12, i32 0, i32 2
  store %struct.stream_s* %11, %struct.stream_s** %strm3, align 8, !tbaa !122
  %13 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %14 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %14, i32 0, i32 3
  store %struct.gx_device_psdf_s* %13, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  %15 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %15, i32 0, i32 2
  %16 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !122
  %17 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %17, i32 0, i32 1
  store %struct.stream_s* %16, %struct.stream_s** %target, align 8, !tbaa !123
  %18 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %19 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %call5 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %18, %struct.stream_template_s* @s_compr_chooser_template, %struct.stream_state_s* %19) #6
  store i32 %call5, i32* %code, align 4, !tbaa !46
  %20 = load i32, i32* %code, align 4, !tbaa !46
  %cmp6 = icmp slt i32 %20, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %22 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %23 = bitcast %struct.stream_state_s* %22 to %struct.stream_compr_chooser_state_s*
  %24 = load i32, i32* %width.addr, align 4, !tbaa !46
  %25 = load i32, i32* %height.addr, align 4, !tbaa !46
  %26 = load i32, i32* %depth.addr, align 4, !tbaa !46
  %27 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !46
  %call9 = call i32 @s_compr_chooser_set_dimensions(%struct.stream_compr_chooser_state_s* %23, i32 %24, i32 %25, i32 %26, i32 %27) #6
  store i32 %call9, i32* %code, align 4, !tbaa !46
  %28 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %29 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @s_compr_chooser_set_dimensions(%struct.stream_compr_chooser_state_s*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @psdf_setup_image_to_mask_filter(%struct.psdf_binary_writer_s* %pbw, %struct.gx_device_psdf_s* %pdev, i32 %width, i32 %height, i32 %depth, i32 %bits_per_sample, i32* %MaskColor) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  %MaskColor.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %ss = alloca %struct.stream_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !46
  store i32 %height, i32* %height.addr, align 4, !tbaa !46
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !46
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !46
  store i32* %MaskColor, i32** %MaskColor.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !119
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s__image_colors_template, i32 0, i32 0), align 8, !tbaa !71
  %call = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %5 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !119
  %8 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %8, i32 0, i32 0
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory2, align 8, !tbaa !120
  %9 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %10, i32 0, i32 3
  store %struct.gx_device_psdf_s* %9, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  %11 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %12 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %call3 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %11, %struct.stream_template_s* @s__image_colors_template, %struct.stream_state_s* %12) #6
  store i32 %call3, i32* %code, align 4, !tbaa !46
  %13 = load i32, i32* %code, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %15 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %16 = bitcast %struct.stream_state_s* %15 to %struct.stream_image_colors_state_s*
  %17 = load i32, i32* %width.addr, align 4, !tbaa !46
  %18 = load i32, i32* %height.addr, align 4, !tbaa !46
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !46
  %20 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !46
  call void @s_image_colors_set_dimensions(%struct.stream_image_colors_state_s* %16, i32 %17, i32 %18, i32 %19, i32 %20) #6
  %21 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %22 = bitcast %struct.stream_state_s* %21 to %struct.stream_image_colors_state_s*
  %23 = load i32*, i32** %MaskColor.addr, align 8, !tbaa !1
  call void @s_image_colors_set_mask_colors(%struct.stream_image_colors_state_s* %22, i32* %23) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare void @s_image_colors_set_dimensions(%struct.stream_image_colors_state_s*, i32, i32, i32, i32) #1

declare void @s_image_colors_set_mask_colors(%struct.stream_image_colors_state_s*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @psdf_setup_image_colors_filter(%struct.psdf_binary_writer_s* %pbw, %struct.gx_device_psdf_s* %pdev, %struct.gs_pixel_image_s* %pim, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %ss = alloca %struct.stream_state_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !119
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s__image_colors_template, i32 0, i32 0), align 8, !tbaa !71
  %call = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #6
  store %struct.stream_state_s* %call, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !119
  %9 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %9, i32 0, i32 0
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory2, align 8, !tbaa !120
  %10 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %11, i32 0, i32 3
  store %struct.gx_device_psdf_s* %10, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !77
  %12 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %call3 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %12, %struct.stream_template_s* @s__image_colors_template, %struct.stream_state_s* %13) #6
  store i32 %call3, i32* %code, align 4, !tbaa !46
  %14 = load i32, i32* %code, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %17 = bitcast %struct.stream_state_s* %16 to %struct.stream_image_colors_state_s*
  %18 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %18, i32 0, i32 2
  %19 = load i32, i32* %Width, align 4, !tbaa !68
  %20 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %20, i32 0, i32 3
  %21 = load i32, i32* %Height, align 4, !tbaa !76
  %22 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %22, i32 0, i32 9
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  %call7 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %23) #6
  %24 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %24, i32 0, i32 4
  %25 = load i32, i32* %BitsPerComponent, align 4, !tbaa !47
  call void @s_image_colors_set_dimensions(%struct.stream_image_colors_state_s* %17, i32 %19, i32 %21, i32 %call7, i32 %25) #6
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %27 = bitcast %struct.stream_state_s* %26 to %struct.stream_image_colors_state_s*
  %28 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_psdf_s* %28 to %struct.gx_device_s*
  %30 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace8 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %30, i32 0, i32 9
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace8, align 8, !tbaa !42
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %33 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %33, i32 0, i32 5
  %arraydecay = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i32 0
  call void @s_image_colors_set_color_space(%struct.stream_image_colors_state_s* %27, %struct.gx_device_s* %29, %struct.gs_color_space_s* %31, %struct.gs_imager_state_s* %32, float* %arraydecay) #6
  %34 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %34, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 12
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 0
  %35 = load i8, i8* %arrayidx, align 1, !tbaa !50
  %conv = zext i8 %35 to i32
  %36 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent9 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %36, i32 0, i32 4
  store i32 %conv, i32* %BitsPerComponent9, align 4, !tbaa !47
  store i32 0, i32* %i, align 4, !tbaa !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %37 = load i32, i32* %i, align 4, !tbaa !46
  %38 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %38, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 1
  %39 = load i32, i32* %num_components, align 4, !tbaa !124
  %cmp11 = icmp slt i32 %37, %39
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4, !tbaa !46
  %mul = mul nsw i32 %40, 2
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %41 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %41, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [130 x float], [130 x float]* %Decode13, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx14, align 4, !tbaa !49
  %42 = load i32, i32* %i, align 4, !tbaa !46
  %mul15 = mul nsw i32 %42, 2
  %add16 = add nsw i32 %mul15, 1
  %idxprom17 = sext i32 %add16 to i64
  %43 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode18 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %43, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [130 x float], [130 x float]* %Decode18, i32 0, i64 %idxprom17
  store float 1.000000e+00, float* %arrayidx19, align 4, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !46
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !46
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare void @s_image_colors_set_color_space(%struct.stream_image_colors_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_imager_state_s*, float*) #1

; Function Attrs: nounwind uwtable
define i32 @new_setup_image_filters(%struct.gx_device_psdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw, %struct.gs_pixel_image_s* %pim, %struct.gs_matrix_s* %pctm, %struct.gs_imager_state_s* %pis, i32 %lossless, i32 %in_line, i32 %colour_conversion) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pctm.addr = alloca %struct.gs_matrix_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %lossless.addr = alloca i32, align 4
  %in_line.addr = alloca i32, align 4
  %colour_conversion.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %params = alloca %struct.psdf_image_params_s, align 8
  %bpc = alloca i32, align 4
  %bpc_out = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %resolution = alloca double, align 8
  %pt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pctm, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %lossless, i32* %lossless.addr, align 4, !tbaa !46
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  store i32 %colour_conversion, i32* %colour_conversion.addr, align 4, !tbaa !46
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !46
  %1 = bitcast %struct.psdf_image_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #2
  %2 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %3, i32 0, i32 4
  %4 = load i32, i32* %BitsPerComponent, align 4, !tbaa !47
  store i32 %4, i32* %bpc, align 4, !tbaa !46
  %5 = bitcast i32* %bpc_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %bpc, align 4, !tbaa !46
  %cmp = icmp slt i32 %6, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %bpc, align 4, !tbaa !46
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 8, %cond.false ]
  %8 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent1 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %8, i32 0, i32 4
  store i32 %cond, i32* %BitsPerComponent1, align 4, !tbaa !47
  store i32 %cond, i32* %bpc_out, align 4, !tbaa !46
  %9 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast double* %resolution to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %11, i32 0, i32 9
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !42
  %cmp2 = icmp eq %struct.gs_color_space_s* %12, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %13, i32 0, i32 73
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 26
  %14 = bitcast %struct.psdf_image_params_s* %params to i8*
  %15 = bitcast %struct.psdf_image_params_s* %MonoImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 80, i32 8, i1 false), !tbaa.struct !48
  %Depth = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 1, i32* %Depth, align 4, !tbaa !51
  store i32 1, i32* %ncomp, align 4, !tbaa !46
  br label %if.end.28

if.else:                                          ; preds = %cond.end
  %16 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace4 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %16, i32 0, i32 9
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace4, align 8, !tbaa !42
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %17) #6
  store i32 %call, i32* %ncomp, align 4, !tbaa !46
  %18 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace5 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %18, i32 0, i32 9
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace5, align 8, !tbaa !42
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !52
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 0
  %21 = load i32, i32* %index, align 4, !tbaa !53
  %cmp6 = icmp eq i32 %21, 10
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %22 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %22, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params8, i32 0, i32 22
  %23 = bitcast %struct.psdf_image_params_s* %params to i8*
  %24 = bitcast %struct.psdf_image_params_s* %ColorImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 80, i32 8, i1 false), !tbaa.struct !48
  %AutoFilter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 2
  store i32 0, i32* %AutoFilter, align 4, !tbaa !55
  %Filter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter, align 8, !tbaa !56
  br label %if.end.27

if.else.9:                                        ; preds = %if.else
  %25 = load i32, i32* %ncomp, align 4, !tbaa !46
  %cmp10 = icmp eq i32 %25, 1
  br i1 %cmp10, label %if.then.11, label %if.else.23

if.then.11:                                       ; preds = %if.else.9
  %26 = load i32, i32* %bpc, align 4, !tbaa !46
  %cmp12 = icmp eq i32 %26, 1
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.then.11
  %27 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %27, i32 0, i32 73
  %MonoImage15 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params14, i32 0, i32 26
  %28 = bitcast %struct.psdf_image_params_s* %params to i8*
  %29 = bitcast %struct.psdf_image_params_s* %MonoImage15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end

if.else.16:                                       ; preds = %if.then.11
  %30 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %30, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params17, i32 0, i32 25
  %31 = bitcast %struct.psdf_image_params_s* %params to i8*
  %32 = bitcast %struct.psdf_image_params_s* %GrayImage to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.13
  %Depth18 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %33 = load i32, i32* %Depth18, align 4, !tbaa !51
  %cmp19 = icmp eq i32 %33, -1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %34 = load i32, i32* %bpc, align 4, !tbaa !46
  %Depth21 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 %34, i32* %Depth21, align 4, !tbaa !51
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end
  br label %if.end.26

if.else.23:                                       ; preds = %if.else.9
  %35 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %35, i32 0, i32 73
  %ColorImage25 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params24, i32 0, i32 22
  %36 = bitcast %struct.psdf_image_params_s* %params to i8*
  %37 = bitcast %struct.psdf_image_params_s* %ColorImage25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 80, i32 8, i1 false), !tbaa.struct !48
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.7
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.gs_matrix_s* %38, null
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.28
  store double -1.000000e+00, double* %resolution, align 8, !tbaa !57
  br label %if.end.56

if.else.31:                                       ; preds = %if.end.28
  %39 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #2
  %40 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %40, i32 0, i32 1
  %call32 = call i32 @gs_distance_transform_inverse(double 1.000000e+00, double 0.000000e+00, %struct.gs_matrix_s* %ImageMatrix, %struct.gs_point_s* %pt) #6
  store i32 %call32, i32* %code, align 4, !tbaa !46
  %41 = load i32, i32* %code, align 4, !tbaa !46
  %cmp33 = icmp slt i32 %41, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.31
  %42 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.else.31
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %43 = load double, double* %x, align 8, !tbaa !58
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %44 = load double, double* %y, align 8, !tbaa !59
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pctm.addr, align 8, !tbaa !1
  %call36 = call i32 @gs_distance_transform(double %43, double %44, %struct.gs_matrix_s* %45, %struct.gs_point_s* %pt) #6
  %x37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %46 = load double, double* %x37, align 8, !tbaa !58
  %47 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %47, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %48 = load float, float* %arrayidx, align 4, !tbaa !49
  %conv = fpext float %48 to double
  %div = fdiv double %46, %conv
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %49 = load double, double* %x38, align 8, !tbaa !58
  %50 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution39 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %50, i32 0, i32 22
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution39, i32 0, i64 0
  %51 = load float, float* %arrayidx40, align 4, !tbaa !49
  %conv41 = fpext float %51 to double
  %div42 = fdiv double %49, %conv41
  %mul = fmul double %div, %div42
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %52 = load double, double* %y43, align 8, !tbaa !59
  %53 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution44 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %53, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 1
  %54 = load float, float* %arrayidx45, align 4, !tbaa !49
  %conv46 = fpext float %54 to double
  %div47 = fdiv double %52, %conv46
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %55 = load double, double* %y48, align 8, !tbaa !59
  %56 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution49 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %56, i32 0, i32 22
  %arrayidx50 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution49, i32 0, i64 1
  %57 = load float, float* %arrayidx50, align 4, !tbaa !49
  %conv51 = fpext float %57 to double
  %div52 = fdiv double %55, %conv51
  %mul53 = fmul double %div47, %div52
  %add = fadd double %mul, %mul53
  %call54 = call double @sqrt(double %add) #7
  %div55 = fdiv double 1.000000e+00, %call54
  store double %div55, double* %resolution, align 8, !tbaa !57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34
  %58 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.152 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont, %if.then.30
  %59 = load i32, i32* %ncomp, align 4, !tbaa !46
  %cmp57 = icmp eq i32 %59, 1
  br i1 %cmp57, label %land.lhs.true, label %if.else.116

land.lhs.true:                                    ; preds = %if.end.56
  %60 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace59 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %60, i32 0, i32 9
  %61 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace59, align 8, !tbaa !42
  %tobool = icmp ne %struct.gs_color_space_s* %61, null
  br i1 %tobool, label %land.lhs.true.60, label %if.else.116

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %62 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace61 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %62, i32 0, i32 9
  %63 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace61, align 8, !tbaa !42
  %type62 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %63, i32 0, i32 0
  %64 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type62, align 8, !tbaa !52
  %index63 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %64, i32 0, i32 0
  %65 = load i32, i32* %index63, align 4, !tbaa !53
  %cmp64 = icmp ne i32 %65, 10
  br i1 %cmp64, label %if.then.66, label %if.else.116

if.then.66:                                       ; preds = %land.lhs.true.60
  %66 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %67 = load double, double* %resolution, align 8, !tbaa !57
  %call67 = call i32 @do_downsample(%struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %66, double %67) #6
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.105

if.then.69:                                       ; preds = %if.then.66
  %Depth70 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %68 = load i32, i32* %Depth70, align 4, !tbaa !51
  %cmp71 = icmp eq i32 %68, 1
  br i1 %cmp71, label %if.then.73, label %if.else.87

if.then.73:                                       ; preds = %if.then.69
  %69 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %69, i32 0, i32 73
  %MonoImage75 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params74, i32 0, i32 26
  %Filter76 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage75, i32 0, i32 9
  %70 = load i8*, i8** %Filter76, align 8, !tbaa !60
  %Filter77 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* %70, i8** %Filter77, align 8, !tbaa !56
  %71 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %71, i32 0, i32 73
  %MonoImage79 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params78, i32 0, i32 26
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage79, i32 0, i32 12
  %72 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template, align 8, !tbaa !61
  %filter_template80 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 12
  store %struct.stream_template_s* %72, %struct.stream_template_s** %filter_template80, align 8, !tbaa !62
  %73 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params81 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %73, i32 0, i32 73
  %MonoImage82 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params81, i32 0, i32 26
  %Dict = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage82, i32 0, i32 4
  %74 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict, align 8, !tbaa !63
  %Dict83 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 4
  store %struct.gs_c_param_list_s* %74, %struct.gs_c_param_list_s** %Dict83, align 8, !tbaa !64
  %75 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %76 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %76, i32 0, i32 73
  %MonoImage85 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params84, i32 0, i32 26
  %Dict86 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage85, i32 0, i32 4
  %77 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict86, align 8, !tbaa !63
  %78 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %79 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy_mono(%struct.gx_device_psdf_s* %75, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %77, %struct.gs_pixel_image_s* %78, i32 %79) #6
  br label %if.end.103

if.else.87:                                       ; preds = %if.then.69
  %80 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params88 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %80, i32 0, i32 73
  %GrayImage89 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params88, i32 0, i32 25
  %Filter90 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage89, i32 0, i32 9
  %81 = load i8*, i8** %Filter90, align 8, !tbaa !65
  %Filter91 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 9
  store i8* %81, i8** %Filter91, align 8, !tbaa !56
  %82 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params92 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %82, i32 0, i32 73
  %GrayImage93 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params92, i32 0, i32 25
  %filter_template94 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage93, i32 0, i32 12
  %83 = load %struct.stream_template_s*, %struct.stream_template_s** %filter_template94, align 8, !tbaa !66
  %filter_template95 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 12
  store %struct.stream_template_s* %83, %struct.stream_template_s** %filter_template95, align 8, !tbaa !62
  %84 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params96 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %84, i32 0, i32 73
  %GrayImage97 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params96, i32 0, i32 25
  %Dict98 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage97, i32 0, i32 4
  %85 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict98, align 8, !tbaa !67
  %Dict99 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 4
  store %struct.gs_c_param_list_s* %85, %struct.gs_c_param_list_s** %Dict99, align 8, !tbaa !64
  %86 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %87, i32 0, i32 73
  %GrayImage101 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params100, i32 0, i32 25
  %Dict102 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage101, i32 0, i32 4
  %88 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict102, align 8, !tbaa !67
  %89 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %90 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %86, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %88, %struct.gs_pixel_image_s* %89, i32 %90) #6
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.87, %if.then.73
  %91 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %92 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %94 = load double, double* %resolution, align 8, !tbaa !57
  %95 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call104 = call i32 @setup_downsampling(%struct.psdf_binary_writer_s* %91, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %92, %struct.gs_imager_state_s* %93, double %94, i32 %95) #6
  store i32 %call104, i32* %code, align 4, !tbaa !46
  br label %if.end.110

if.else.105:                                      ; preds = %if.then.66
  %96 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %97 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params106 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %97, i32 0, i32 73
  %GrayImage107 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params106, i32 0, i32 25
  %Dict108 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage107, i32 0, i32 4
  %98 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict108, align 8, !tbaa !67
  %99 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %100 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %96, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %98, %struct.gs_pixel_image_s* %99, i32 %100) #6
  %101 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %102 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %104 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call109 = call i32 @setup_image_compression(%struct.psdf_binary_writer_s* %101, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %102, %struct.gs_imager_state_s* %103, i32 %104) #6
  store i32 %call109, i32* %code, align 4, !tbaa !46
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.105, %if.end.103
  %105 = load i32, i32* %code, align 4, !tbaa !46
  %cmp111 = icmp slt i32 %105, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  %106 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.114:                                       ; preds = %if.end.110
  %107 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %108 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %108, i32 0, i32 2
  %109 = load i32, i32* %Width, align 4, !tbaa !68
  %110 = load i32, i32* %ncomp, align 4, !tbaa !46
  %111 = load i32, i32* %bpc, align 4, !tbaa !46
  %112 = load i32, i32* %bpc_out, align 4, !tbaa !46
  %call115 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %107, i32 %109, i32 %110, i32 %111, i32 %112) #6
  store i32 %call115, i32* %code, align 4, !tbaa !46
  br label %if.end.151

if.else.116:                                      ; preds = %land.lhs.true.60, %land.lhs.true, %if.end.56
  %Depth117 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  %113 = load i32, i32* %Depth117, align 4, !tbaa !51
  %cmp118 = icmp eq i32 %113, -1
  br i1 %cmp118, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %if.else.116
  %114 = load i32, i32* %colour_conversion.addr, align 4, !tbaa !46
  %tobool121 = icmp ne i32 %114, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.then.120
  br label %cond.end.124

cond.false.123:                                   ; preds = %if.then.120
  %115 = load i32, i32* %bpc_out, align 4, !tbaa !46
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ 8, %cond.true.122 ], [ %115, %cond.false.123 ]
  %Depth126 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %params, i32 0, i32 3
  store i32 %cond125, i32* %Depth126, align 4, !tbaa !51
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end.124, %if.else.116
  %116 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %117 = load double, double* %resolution, align 8, !tbaa !57
  %call128 = call i32 @do_downsample(%struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %116, double %117) #6
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %if.end.127
  %118 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %119 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params131 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %119, i32 0, i32 73
  %ColorImage132 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params131, i32 0, i32 22
  %Dict133 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage132, i32 0, i32 4
  %120 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict133, align 8, !tbaa !70
  %121 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %122 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %118, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %120, %struct.gs_pixel_image_s* %121, i32 %122) #6
  %123 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %124 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %125 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %126 = load double, double* %resolution, align 8, !tbaa !57
  %127 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call134 = call i32 @setup_downsampling(%struct.psdf_binary_writer_s* %123, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %124, %struct.gs_imager_state_s* %125, double %126, i32 %127) #6
  store i32 %call134, i32* %code, align 4, !tbaa !46
  br label %if.end.140

if.else.135:                                      ; preds = %if.end.127
  %128 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %129 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %params136 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %129, i32 0, i32 73
  %ColorImage137 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params136, i32 0, i32 22
  %Dict138 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage137, i32 0, i32 4
  %130 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict138, align 8, !tbaa !70
  %131 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %132 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  call void @adjust_auto_filter_strategy(%struct.gx_device_psdf_s* %128, %struct.psdf_image_params_s* %params, %struct.gs_c_param_list_s* %130, %struct.gs_pixel_image_s* %131, i32 %132) #6
  %133 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %134 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %135 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %136 = load i32, i32* %lossless.addr, align 4, !tbaa !46
  %call139 = call i32 @setup_image_compression(%struct.psdf_binary_writer_s* %133, %struct.psdf_image_params_s* %params, %struct.gs_pixel_image_s* %134, %struct.gs_imager_state_s* %135, i32 %136) #6
  store i32 %call139, i32* %code, align 4, !tbaa !46
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.135, %if.then.130
  %137 = load i32, i32* %code, align 4, !tbaa !46
  %cmp141 = icmp slt i32 %137, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  %138 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.144:                                       ; preds = %if.end.140
  %139 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %140 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width145 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %140, i32 0, i32 2
  %141 = load i32, i32* %Width145, align 4, !tbaa !68
  %142 = load i32, i32* %ncomp, align 4, !tbaa !46
  %143 = load i32, i32* %bpc, align 4, !tbaa !46
  %144 = load i32, i32* %bpc_out, align 4, !tbaa !46
  %call146 = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %139, i32 %141, i32 %142, i32 %143, i32 %144) #6
  store i32 %call146, i32* %code, align 4, !tbaa !46
  %145 = load i32, i32* %code, align 4, !tbaa !46
  %cmp147 = icmp slt i32 %145, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.144
  %146 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.150:                                       ; preds = %if.end.144
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.114
  %147 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.151, %if.then.149, %if.then.143, %if.then.113, %cleanup
  %148 = bitcast double* %resolution to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %bpc_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast %struct.psdf_image_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 80, i8* %152) #2
  %153 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define i32 @new_setup_lossless_filters(%struct.gx_device_psdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw, %struct.gs_pixel_image_s* %pim, i32 %in_line, i32 %colour_conversion) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %in_line.addr = alloca i32, align 4
  %colour_conversion.addr = alloca i32, align 4
  %ipdev = alloca %struct.gx_device_psdf_s, align 8
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %in_line, i32* %in_line.addr, align 4, !tbaa !46
  store i32 %colour_conversion, i32* %colour_conversion.addr, align 4, !tbaa !46
  %0 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  call void @llvm.lifetime.start(i64 9360, i8* %0) #2
  %1 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  %3 = bitcast %struct.gx_device_psdf_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 9360, i32 8, i1 false), !tbaa.struct !110
  %params = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 22
  %AutoFilter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage, i32 0, i32 2
  store i32 0, i32* %AutoFilter, align 4, !tbaa !113
  %params1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage2 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1, i32 0, i32 22
  %Downsample = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage2, i32 0, i32 5
  store i32 0, i32* %Downsample, align 4, !tbaa !114
  %params3 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage4 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 22
  %Filter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage4, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter, align 8, !tbaa !115
  %params5 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ColorImage6 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params5, i32 0, i32 22
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage6, i32 0, i32 12
  store %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s** %filter_template, align 8, !tbaa !116
  %params7 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %ConvertCMYKImagesToRGB = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params7, i32 0, i32 23
  store i32 0, i32* %ConvertCMYKImagesToRGB, align 4, !tbaa !5
  %params8 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params8, i32 0, i32 25
  %AutoFilter9 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage, i32 0, i32 2
  store i32 0, i32* %AutoFilter9, align 4, !tbaa !117
  %params10 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage11 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params10, i32 0, i32 25
  %Downsample12 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage11, i32 0, i32 5
  store i32 0, i32* %Downsample12, align 4, !tbaa !118
  %params13 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage14 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params13, i32 0, i32 25
  %Filter15 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage14, i32 0, i32 9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %Filter15, align 8, !tbaa !65
  %params16 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %ipdev, i32 0, i32 73
  %GrayImage17 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params16, i32 0, i32 25
  %filter_template18 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage17, i32 0, i32 12
  store %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s** %filter_template18, align 8, !tbaa !66
  %4 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %5 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %6 = load i32, i32* %in_line.addr, align 4, !tbaa !46
  %7 = load i32, i32* %colour_conversion.addr, align 4, !tbaa !46
  %call = call i32 @new_setup_image_filters(%struct.gx_device_psdf_s* %ipdev, %struct.psdf_binary_writer_s* %4, %struct.gs_pixel_image_s* %5, %struct.gs_matrix_s* null, %struct.gs_imager_state_s* null, i32 1, i32 %6, i32 %7) #6
  %8 = bitcast %struct.gx_device_psdf_s* %ipdev to i8*
  call void @llvm.lifetime.end(i64 9360, i8* %8) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @new_resize_input(%struct.psdf_binary_writer_s* %pbw, i32 %width, i32 %num_comps, i32 %bpc_in, i32 %bpc_out) #0 {
entry:
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %width.addr = alloca i32, align 4
  %num_comps.addr = alloca i32, align 4
  %bpc_in.addr = alloca i32, align 4
  %bpc_out.addr = alloca i32, align 4
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !46
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !46
  store i32 %bpc_in, i32* %bpc_in.addr, align 4, !tbaa !46
  store i32 %bpc_out, i32* %bpc_out.addr, align 4, !tbaa !46
  %0 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %1 = load i32, i32* %width.addr, align 4, !tbaa !46
  %2 = load i32, i32* %num_comps.addr, align 4, !tbaa !46
  %3 = load i32, i32* %bpc_in.addr, align 4, !tbaa !46
  %4 = load i32, i32* %bpc_out.addr, align 4, !tbaa !46
  %call = call i32 @pixel_resize(%struct.psdf_binary_writer_s* %0, i32 %1, i32 %2, i32 %3, i32 %4) #6
  ret i32 %call
}

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @s_Downsample_size_out(i32, float, i32) #1

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #1

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #1

declare i32 @s_CF_put_params(%struct.gs_param_list_s*, %struct.stream_CF_state_s*) #1

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @choose_DCT_params(%struct.gx_device_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis, %struct.gs_c_param_list_s* %list, %struct.gs_c_param_list_s** %param, %struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %list.addr = alloca %struct.gs_c_param_list_s*, align 8
  %param.addr = alloca %struct.gs_c_param_list_s**, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %code = alloca i32, align 4
  %c = alloca [4 x [3 x float]], align 16
  %MIN_FLOAT = alloca float, align 4
  %domination = alloca float, align 4
  %one = alloca i32, align 4
  %zero = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %a = alloca %struct.gs_param_string_s, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %list, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s** %param, %struct.gs_c_param_list_s*** %param.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %0) #2
  %1 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast [4 x [3 x float]]* %c to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast float* %MIN_FLOAT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store float 0xC7EFFFFFE0000000, float* %MIN_FLOAT, align 4, !tbaa !49
  %5 = bitcast float* %domination to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store float 2.500000e-01, float* %domination, align 4, !tbaa !49
  %6 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 1, i32* %one, align 4, !tbaa !46
  %7 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %zero, align 4, !tbaa !46
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 0
  %9 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !52
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %9, i32 0, i32 4
  %10 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !125
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gs_color_space_s* %11) #6
  %cmp = icmp ne i32 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %param.addr, align 8, !tbaa !1
  %13 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %12, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_c_param_list_s* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %14 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_c_param_list_s* %14 to %struct.gs_param_list_s*
  %16 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %param.addr, align 8, !tbaa !1
  %17 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %16, align 8, !tbaa !1
  %18 = bitcast %struct.gs_c_param_list_s* %17 to %struct.gs_param_list_s*
  %call3 = call i32 @param_list_copy(%struct.gs_param_list_s* %15, %struct.gs_param_list_s* %18) #6
  store i32 %call3, i32* %code, align 4, !tbaa !46
  %19 = load i32, i32* %code, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %20 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %21 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %22 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %param.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %21, %struct.gs_c_param_list_s** %22, align 8, !tbaa !1
  %call8 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 24) #6
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !126
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s* %call8, %struct.gs_memory_s* %24, i32 0, %struct.gx_device_s* null) #6
  %25 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %25, i32 1) #6
  %26 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %26) #6
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !128
  %27 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %call9 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %27, i8* null, i32 0) #6
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_imager_state_s* %28, null
  br i1 %tobool, label %if.then.10, label %if.end.417

if.then.10:                                       ; preds = %if.end.7
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 2
  store float 0xC7EFFFFFE0000000, float* %arrayidx, align 4, !tbaa !49
  %paint11 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values12 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x float], [64 x float]* %values12, i32 0, i64 1
  store float 0xC7EFFFFFE0000000, float* %arrayidx13, align 4, !tbaa !49
  %paint14 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values15 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [64 x float], [64 x float]* %values15, i32 0, i64 0
  store float 0xC7EFFFFFE0000000, float* %arrayidx16, align 4, !tbaa !49
  %29 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %arrayidx17, i32 0, i32 0
  %call18 = call i32 @convert_color(%struct.gx_device_s* %29, %struct.gs_color_space_s* %30, %struct.gs_imager_state_s* %31, %struct.gs_client_color_s* %cc, float* %arraydecay) #6
  store i32 %call18, i32* %code, align 4, !tbaa !46
  %32 = load i32, i32* %code, align 4, !tbaa !46
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.10
  %33 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.21:                                        ; preds = %if.then.10
  %paint22 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values23 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [64 x float], [64 x float]* %values23, i32 0, i64 0
  store float 0x47EFFFFFE0000000, float* %arrayidx24, align 4, !tbaa !49
  %paint25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x float], [64 x float]* %values26, i32 0, i64 1
  store float 0xC7EFFFFFE0000000, float* %arrayidx27, align 4, !tbaa !49
  %paint28 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values29 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [64 x float], [64 x float]* %values29, i32 0, i64 2
  store float 0xC7EFFFFFE0000000, float* %arrayidx30, align 4, !tbaa !49
  %34 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arraydecay32 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx31, i32 0, i32 0
  %call33 = call i32 @convert_color(%struct.gx_device_s* %34, %struct.gs_color_space_s* %35, %struct.gs_imager_state_s* %36, %struct.gs_client_color_s* %cc, float* %arraydecay32) #6
  store i32 %call33, i32* %code, align 4, !tbaa !46
  %37 = load i32, i32* %code, align 4, !tbaa !46
  %cmp34 = icmp slt i32 %37, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.21
  %38 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.36:                                        ; preds = %if.end.21
  %paint37 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values38 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x float], [64 x float]* %values38, i32 0, i64 0
  store float 0xC7EFFFFFE0000000, float* %arrayidx39, align 4, !tbaa !49
  %paint40 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values41 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [64 x float], [64 x float]* %values41, i32 0, i64 1
  store float 0x47EFFFFFE0000000, float* %arrayidx42, align 4, !tbaa !49
  %paint43 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values44 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x float], [64 x float]* %values44, i32 0, i64 2
  store float 0xC7EFFFFFE0000000, float* %arrayidx45, align 4, !tbaa !49
  %39 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arraydecay47 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx46, i32 0, i32 0
  %call48 = call i32 @convert_color(%struct.gx_device_s* %39, %struct.gs_color_space_s* %40, %struct.gs_imager_state_s* %41, %struct.gs_client_color_s* %cc, float* %arraydecay47) #6
  store i32 %call48, i32* %code, align 4, !tbaa !46
  %42 = load i32, i32* %code, align 4, !tbaa !46
  %cmp49 = icmp slt i32 %42, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.36
  %43 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.51:                                        ; preds = %if.end.36
  %paint52 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values53 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [64 x float], [64 x float]* %values53, i32 0, i64 0
  store float 0xC7EFFFFFE0000000, float* %arrayidx54, align 4, !tbaa !49
  %paint55 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values56 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [64 x float], [64 x float]* %values56, i32 0, i64 1
  store float 0xC7EFFFFFE0000000, float* %arrayidx57, align 4, !tbaa !49
  %paint58 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values59 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [64 x float], [64 x float]* %values59, i32 0, i64 2
  store float 0x47EFFFFFE0000000, float* %arrayidx60, align 4, !tbaa !49
  %44 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arraydecay62 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx61, i32 0, i32 0
  %call63 = call i32 @convert_color(%struct.gx_device_s* %44, %struct.gs_color_space_s* %45, %struct.gs_imager_state_s* %46, %struct.gs_client_color_s* %cc, float* %arraydecay62) #6
  store i32 %call63, i32* %code, align 4, !tbaa !46
  %47 = load i32, i32* %code, align 4, !tbaa !46
  %cmp64 = icmp slt i32 %47, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.51
  %48 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.66:                                        ; preds = %if.end.51
  %arrayidx67 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx68 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx67, i32 0, i64 0
  %49 = load float, float* %arrayidx68, align 4, !tbaa !49
  %arrayidx69 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx70 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx69, i32 0, i64 0
  %50 = load float, float* %arrayidx70, align 4, !tbaa !49
  %sub = fsub float %50, %49
  store float %sub, float* %arrayidx70, align 4, !tbaa !49
  %arrayidx71 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx72 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx71, i32 0, i64 1
  %51 = load float, float* %arrayidx72, align 4, !tbaa !49
  %arrayidx73 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx73, i32 0, i64 1
  %52 = load float, float* %arrayidx74, align 4, !tbaa !49
  %sub75 = fsub float %52, %51
  store float %sub75, float* %arrayidx74, align 4, !tbaa !49
  %arrayidx76 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx77 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx76, i32 0, i64 2
  %53 = load float, float* %arrayidx77, align 4, !tbaa !49
  %arrayidx78 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx79 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx78, i32 0, i64 2
  %54 = load float, float* %arrayidx79, align 4, !tbaa !49
  %sub80 = fsub float %54, %53
  store float %sub80, float* %arrayidx79, align 4, !tbaa !49
  %arrayidx81 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx82 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx81, i32 0, i64 0
  %55 = load float, float* %arrayidx82, align 4, !tbaa !49
  %arrayidx83 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx84 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx83, i32 0, i64 0
  %56 = load float, float* %arrayidx84, align 4, !tbaa !49
  %sub85 = fsub float %56, %55
  store float %sub85, float* %arrayidx84, align 4, !tbaa !49
  %arrayidx86 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx87 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx86, i32 0, i64 1
  %57 = load float, float* %arrayidx87, align 4, !tbaa !49
  %arrayidx88 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx89 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx88, i32 0, i64 1
  %58 = load float, float* %arrayidx89, align 4, !tbaa !49
  %sub90 = fsub float %58, %57
  store float %sub90, float* %arrayidx89, align 4, !tbaa !49
  %arrayidx91 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx92 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx91, i32 0, i64 2
  %59 = load float, float* %arrayidx92, align 4, !tbaa !49
  %arrayidx93 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx94 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx93, i32 0, i64 2
  %60 = load float, float* %arrayidx94, align 4, !tbaa !49
  %sub95 = fsub float %60, %59
  store float %sub95, float* %arrayidx94, align 4, !tbaa !49
  %arrayidx96 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx97 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx96, i32 0, i64 0
  %61 = load float, float* %arrayidx97, align 4, !tbaa !49
  %arrayidx98 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx99 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx98, i32 0, i64 0
  %62 = load float, float* %arrayidx99, align 4, !tbaa !49
  %sub100 = fsub float %62, %61
  store float %sub100, float* %arrayidx99, align 4, !tbaa !49
  %arrayidx101 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx102 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx101, i32 0, i64 1
  %63 = load float, float* %arrayidx102, align 4, !tbaa !49
  %arrayidx103 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx104 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx103, i32 0, i64 1
  %64 = load float, float* %arrayidx104, align 4, !tbaa !49
  %sub105 = fsub float %64, %63
  store float %sub105, float* %arrayidx104, align 4, !tbaa !49
  %arrayidx106 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 3
  %arrayidx107 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx106, i32 0, i64 2
  %65 = load float, float* %arrayidx107, align 4, !tbaa !49
  %arrayidx108 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx109 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx108, i32 0, i64 2
  %66 = load float, float* %arrayidx109, align 4, !tbaa !49
  %sub110 = fsub float %66, %65
  store float %sub110, float* %arrayidx109, align 4, !tbaa !49
  %arrayidx111 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx112 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx111, i32 0, i64 0
  %67 = load float, float* %arrayidx112, align 4, !tbaa !49
  %cmp113 = fcmp olt float %67, 0.000000e+00
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %arrayidx114 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx115 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx114, i32 0, i64 0
  %68 = load float, float* %arrayidx115, align 4, !tbaa !49
  %sub116 = fsub float -0.000000e+00, %68
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  %arrayidx117 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx118 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx117, i32 0, i64 0
  %69 = load float, float* %arrayidx118, align 4, !tbaa !49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub116, %cond.true ], [ %69, %cond.false ]
  %arrayidx119 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx120 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx119, i32 0, i64 0
  store float %cond, float* %arrayidx120, align 4, !tbaa !49
  %arrayidx121 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx122 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx121, i32 0, i64 1
  %70 = load float, float* %arrayidx122, align 4, !tbaa !49
  %cmp123 = fcmp olt float %70, 0.000000e+00
  br i1 %cmp123, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %cond.end
  %arrayidx125 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx126 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx125, i32 0, i64 1
  %71 = load float, float* %arrayidx126, align 4, !tbaa !49
  %sub127 = fsub float -0.000000e+00, %71
  br label %cond.end.131

cond.false.128:                                   ; preds = %cond.end
  %arrayidx129 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx130 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx129, i32 0, i64 1
  %72 = load float, float* %arrayidx130, align 4, !tbaa !49
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.128, %cond.true.124
  %cond132 = phi float [ %sub127, %cond.true.124 ], [ %72, %cond.false.128 ]
  %arrayidx133 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx134 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx133, i32 0, i64 1
  store float %cond132, float* %arrayidx134, align 4, !tbaa !49
  %arrayidx135 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx136 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx135, i32 0, i64 2
  %73 = load float, float* %arrayidx136, align 4, !tbaa !49
  %cmp137 = fcmp olt float %73, 0.000000e+00
  br i1 %cmp137, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %cond.end.131
  %arrayidx139 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx140 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx139, i32 0, i64 2
  %74 = load float, float* %arrayidx140, align 4, !tbaa !49
  %sub141 = fsub float -0.000000e+00, %74
  br label %cond.end.145

cond.false.142:                                   ; preds = %cond.end.131
  %arrayidx143 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx144 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx143, i32 0, i64 2
  %75 = load float, float* %arrayidx144, align 4, !tbaa !49
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.142, %cond.true.138
  %cond146 = phi float [ %sub141, %cond.true.138 ], [ %75, %cond.false.142 ]
  %arrayidx147 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx148 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx147, i32 0, i64 2
  store float %cond146, float* %arrayidx148, align 4, !tbaa !49
  %arrayidx149 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx150 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx149, i32 0, i64 0
  %76 = load float, float* %arrayidx150, align 4, !tbaa !49
  %cmp151 = fcmp olt float %76, 0.000000e+00
  br i1 %cmp151, label %cond.true.152, label %cond.false.156

cond.true.152:                                    ; preds = %cond.end.145
  %arrayidx153 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx154 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx153, i32 0, i64 0
  %77 = load float, float* %arrayidx154, align 4, !tbaa !49
  %sub155 = fsub float -0.000000e+00, %77
  br label %cond.end.159

cond.false.156:                                   ; preds = %cond.end.145
  %arrayidx157 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx158 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx157, i32 0, i64 0
  %78 = load float, float* %arrayidx158, align 4, !tbaa !49
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.156, %cond.true.152
  %cond160 = phi float [ %sub155, %cond.true.152 ], [ %78, %cond.false.156 ]
  %arrayidx161 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx162 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx161, i32 0, i64 0
  store float %cond160, float* %arrayidx162, align 4, !tbaa !49
  %arrayidx163 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx164 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx163, i32 0, i64 1
  %79 = load float, float* %arrayidx164, align 4, !tbaa !49
  %cmp165 = fcmp olt float %79, 0.000000e+00
  br i1 %cmp165, label %cond.true.166, label %cond.false.170

cond.true.166:                                    ; preds = %cond.end.159
  %arrayidx167 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx168 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx167, i32 0, i64 1
  %80 = load float, float* %arrayidx168, align 4, !tbaa !49
  %sub169 = fsub float -0.000000e+00, %80
  br label %cond.end.173

cond.false.170:                                   ; preds = %cond.end.159
  %arrayidx171 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx172 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx171, i32 0, i64 1
  %81 = load float, float* %arrayidx172, align 4, !tbaa !49
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.170, %cond.true.166
  %cond174 = phi float [ %sub169, %cond.true.166 ], [ %81, %cond.false.170 ]
  %arrayidx175 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx176 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx175, i32 0, i64 1
  store float %cond174, float* %arrayidx176, align 4, !tbaa !49
  %arrayidx177 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx178 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx177, i32 0, i64 2
  %82 = load float, float* %arrayidx178, align 4, !tbaa !49
  %cmp179 = fcmp olt float %82, 0.000000e+00
  br i1 %cmp179, label %cond.true.180, label %cond.false.184

cond.true.180:                                    ; preds = %cond.end.173
  %arrayidx181 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx182 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx181, i32 0, i64 2
  %83 = load float, float* %arrayidx182, align 4, !tbaa !49
  %sub183 = fsub float -0.000000e+00, %83
  br label %cond.end.187

cond.false.184:                                   ; preds = %cond.end.173
  %arrayidx185 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx186 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx185, i32 0, i64 2
  %84 = load float, float* %arrayidx186, align 4, !tbaa !49
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.true.180
  %cond188 = phi float [ %sub183, %cond.true.180 ], [ %84, %cond.false.184 ]
  %arrayidx189 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx190 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx189, i32 0, i64 2
  store float %cond188, float* %arrayidx190, align 4, !tbaa !49
  %arrayidx191 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx192 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx191, i32 0, i64 0
  %85 = load float, float* %arrayidx192, align 4, !tbaa !49
  %cmp193 = fcmp olt float %85, 0.000000e+00
  br i1 %cmp193, label %cond.true.194, label %cond.false.198

cond.true.194:                                    ; preds = %cond.end.187
  %arrayidx195 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx196 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx195, i32 0, i64 0
  %86 = load float, float* %arrayidx196, align 4, !tbaa !49
  %sub197 = fsub float -0.000000e+00, %86
  br label %cond.end.201

cond.false.198:                                   ; preds = %cond.end.187
  %arrayidx199 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx200 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx199, i32 0, i64 0
  %87 = load float, float* %arrayidx200, align 4, !tbaa !49
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.198, %cond.true.194
  %cond202 = phi float [ %sub197, %cond.true.194 ], [ %87, %cond.false.198 ]
  %arrayidx203 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx204 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx203, i32 0, i64 0
  store float %cond202, float* %arrayidx204, align 4, !tbaa !49
  %arrayidx205 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx206 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx205, i32 0, i64 1
  %88 = load float, float* %arrayidx206, align 4, !tbaa !49
  %cmp207 = fcmp olt float %88, 0.000000e+00
  br i1 %cmp207, label %cond.true.208, label %cond.false.212

cond.true.208:                                    ; preds = %cond.end.201
  %arrayidx209 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx210 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx209, i32 0, i64 1
  %89 = load float, float* %arrayidx210, align 4, !tbaa !49
  %sub211 = fsub float -0.000000e+00, %89
  br label %cond.end.215

cond.false.212:                                   ; preds = %cond.end.201
  %arrayidx213 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx214 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx213, i32 0, i64 1
  %90 = load float, float* %arrayidx214, align 4, !tbaa !49
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.212, %cond.true.208
  %cond216 = phi float [ %sub211, %cond.true.208 ], [ %90, %cond.false.212 ]
  %arrayidx217 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx218 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx217, i32 0, i64 1
  store float %cond216, float* %arrayidx218, align 4, !tbaa !49
  %arrayidx219 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx220 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx219, i32 0, i64 2
  %91 = load float, float* %arrayidx220, align 4, !tbaa !49
  %cmp221 = fcmp olt float %91, 0.000000e+00
  br i1 %cmp221, label %cond.true.222, label %cond.false.226

cond.true.222:                                    ; preds = %cond.end.215
  %arrayidx223 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx224 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx223, i32 0, i64 2
  %92 = load float, float* %arrayidx224, align 4, !tbaa !49
  %sub225 = fsub float -0.000000e+00, %92
  br label %cond.end.229

cond.false.226:                                   ; preds = %cond.end.215
  %arrayidx227 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx228 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx227, i32 0, i64 2
  %93 = load float, float* %arrayidx228, align 4, !tbaa !49
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.226, %cond.true.222
  %cond230 = phi float [ %sub225, %cond.true.222 ], [ %93, %cond.false.226 ]
  %arrayidx231 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx232 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx231, i32 0, i64 2
  store float %cond230, float* %arrayidx232, align 4, !tbaa !49
  %arrayidx233 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx234 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx233, i32 0, i64 0
  %94 = load float, float* %arrayidx234, align 4, !tbaa !49
  %mul = fmul float %94, 2.500000e-01
  %arrayidx235 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx236 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx235, i32 0, i64 1
  %95 = load float, float* %arrayidx236, align 4, !tbaa !49
  %cmp237 = fcmp ogt float %mul, %95
  br i1 %cmp237, label %land.lhs.true, label %if.end.277

land.lhs.true:                                    ; preds = %cond.end.229
  %arrayidx238 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx239 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx238, i32 0, i64 0
  %96 = load float, float* %arrayidx239, align 4, !tbaa !49
  %mul240 = fmul float %96, 2.500000e-01
  %arrayidx241 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx242 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx241, i32 0, i64 2
  %97 = load float, float* %arrayidx242, align 4, !tbaa !49
  %cmp243 = fcmp ogt float %mul240, %97
  br i1 %cmp243, label %land.lhs.true.244, label %if.end.277

land.lhs.true.244:                                ; preds = %land.lhs.true
  %arrayidx245 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx246 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx245, i32 0, i64 1
  %98 = load float, float* %arrayidx246, align 4, !tbaa !49
  %mul247 = fmul float %98, 2.500000e-01
  %arrayidx248 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx249 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx248, i32 0, i64 0
  %99 = load float, float* %arrayidx249, align 4, !tbaa !49
  %cmp250 = fcmp ogt float %mul247, %99
  br i1 %cmp250, label %land.lhs.true.251, label %if.end.277

land.lhs.true.251:                                ; preds = %land.lhs.true.244
  %arrayidx252 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx253 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx252, i32 0, i64 1
  %100 = load float, float* %arrayidx253, align 4, !tbaa !49
  %mul254 = fmul float %100, 2.500000e-01
  %arrayidx255 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx256 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx255, i32 0, i64 2
  %101 = load float, float* %arrayidx256, align 4, !tbaa !49
  %cmp257 = fcmp ogt float %mul254, %101
  br i1 %cmp257, label %land.lhs.true.258, label %if.end.277

land.lhs.true.258:                                ; preds = %land.lhs.true.251
  %arrayidx259 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx260 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx259, i32 0, i64 2
  %102 = load float, float* %arrayidx260, align 4, !tbaa !49
  %mul261 = fmul float %102, 2.500000e-01
  %arrayidx262 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx263 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx262, i32 0, i64 0
  %103 = load float, float* %arrayidx263, align 4, !tbaa !49
  %cmp264 = fcmp ogt float %mul261, %103
  br i1 %cmp264, label %land.lhs.true.265, label %if.end.277

land.lhs.true.265:                                ; preds = %land.lhs.true.258
  %arrayidx266 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx267 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx266, i32 0, i64 2
  %104 = load float, float* %arrayidx267, align 4, !tbaa !49
  %mul268 = fmul float %104, 2.500000e-01
  %arrayidx269 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx270 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx269, i32 0, i64 1
  %105 = load float, float* %arrayidx270, align 4, !tbaa !49
  %cmp271 = fcmp ogt float %mul268, %105
  br i1 %cmp271, label %if.then.272, label %if.end.277

if.then.272:                                      ; preds = %land.lhs.true.265
  %106 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %107 = bitcast %struct.gs_c_param_list_s* %106 to %struct.gs_param_list_s*
  %call273 = call i32 @param_write_int(%struct.gs_param_list_s* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32* %one) #6
  store i32 %call273, i32* %code, align 4, !tbaa !46
  %108 = load i32, i32* %code, align 4, !tbaa !46
  %cmp274 = icmp slt i32 %108, 0
  br i1 %cmp274, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.then.272
  br label %error

if.end.276:                                       ; preds = %if.then.272
  br label %done

if.end.277:                                       ; preds = %land.lhs.true.265, %land.lhs.true.258, %land.lhs.true.251, %land.lhs.true.244, %land.lhs.true, %cond.end.229
  %paint278 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values279 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [64 x float], [64 x float]* %values279, i32 0, i64 0
  store float 0x47EFFFFFE0000000, float* %arrayidx280, align 4, !tbaa !49
  %paint281 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values282 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [64 x float], [64 x float]* %values282, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx283, align 4, !tbaa !49
  %paint284 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values285 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [64 x float], [64 x float]* %values285, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx286, align 4, !tbaa !49
  %109 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %110 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arraydecay288 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx287, i32 0, i32 0
  %call289 = call i32 @convert_color(%struct.gx_device_s* %109, %struct.gs_color_space_s* %110, %struct.gs_imager_state_s* %111, %struct.gs_client_color_s* %cc, float* %arraydecay288) #6
  %paint290 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values291 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint290, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [64 x float], [64 x float]* %values291, i32 0, i64 0
  %112 = load float, float* %arrayidx292, align 4, !tbaa !49
  %div = fdiv float %112, 2.000000e+00
  store float %div, float* %arrayidx292, align 4, !tbaa !49
  %113 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %114 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %115 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arraydecay294 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx293, i32 0, i32 0
  %call295 = call i32 @convert_color(%struct.gx_device_s* %113, %struct.gs_color_space_s* %114, %struct.gs_imager_state_s* %115, %struct.gs_client_color_s* %cc, float* %arraydecay294) #6
  %paint296 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values297 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [64 x float], [64 x float]* %values297, i32 0, i64 0
  %116 = load float, float* %arrayidx298, align 4, !tbaa !49
  %div299 = fdiv float %116, 2.000000e+00
  store float %div299, float* %arrayidx298, align 4, !tbaa !49
  %117 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %118 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %119 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arraydecay301 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx300, i32 0, i32 0
  %call302 = call i32 @convert_color(%struct.gx_device_s* %117, %struct.gs_color_space_s* %118, %struct.gs_imager_state_s* %119, %struct.gs_client_color_s* %cc, float* %arraydecay301) #6
  %arrayidx303 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx304 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx303, i32 0, i64 0
  %120 = load float, float* %arrayidx304, align 4, !tbaa !49
  %arrayidx305 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx306 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx305, i32 0, i64 1
  %121 = load float, float* %arrayidx306, align 4, !tbaa !49
  %sub307 = fsub float %121, %120
  store float %sub307, float* %arrayidx306, align 4, !tbaa !49
  %arrayidx308 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx309 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx308, i32 0, i64 0
  %122 = load float, float* %arrayidx309, align 4, !tbaa !49
  %arrayidx310 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx311 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx310, i32 0, i64 2
  %123 = load float, float* %arrayidx311, align 4, !tbaa !49
  %sub312 = fsub float %123, %122
  store float %sub312, float* %arrayidx311, align 4, !tbaa !49
  %arrayidx313 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx314 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx313, i32 0, i64 0
  %124 = load float, float* %arrayidx314, align 4, !tbaa !49
  %arrayidx315 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx316 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx315, i32 0, i64 1
  %125 = load float, float* %arrayidx316, align 4, !tbaa !49
  %sub317 = fsub float %125, %124
  store float %sub317, float* %arrayidx316, align 4, !tbaa !49
  %arrayidx318 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx319 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx318, i32 0, i64 0
  %126 = load float, float* %arrayidx319, align 4, !tbaa !49
  %arrayidx320 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx321 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx320, i32 0, i64 2
  %127 = load float, float* %arrayidx321, align 4, !tbaa !49
  %sub322 = fsub float %127, %126
  store float %sub322, float* %arrayidx321, align 4, !tbaa !49
  %arrayidx323 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx324 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx323, i32 0, i64 0
  %128 = load float, float* %arrayidx324, align 4, !tbaa !49
  %arrayidx325 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx326 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx325, i32 0, i64 1
  %129 = load float, float* %arrayidx326, align 4, !tbaa !49
  %sub327 = fsub float %129, %128
  store float %sub327, float* %arrayidx326, align 4, !tbaa !49
  %arrayidx328 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx329 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx328, i32 0, i64 0
  %130 = load float, float* %arrayidx329, align 4, !tbaa !49
  %arrayidx330 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx331 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx330, i32 0, i64 2
  %131 = load float, float* %arrayidx331, align 4, !tbaa !49
  %sub332 = fsub float %131, %130
  store float %sub332, float* %arrayidx331, align 4, !tbaa !49
  %arrayidx333 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx334 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx333, i32 0, i64 1
  %132 = load float, float* %arrayidx334, align 4, !tbaa !49
  %cmp335 = fcmp olt float %132, 0.000000e+00
  br i1 %cmp335, label %cond.true.336, label %cond.false.340

cond.true.336:                                    ; preds = %if.end.277
  %arrayidx337 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx338 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx337, i32 0, i64 1
  %133 = load float, float* %arrayidx338, align 4, !tbaa !49
  %sub339 = fsub float -0.000000e+00, %133
  br label %cond.end.343

cond.false.340:                                   ; preds = %if.end.277
  %arrayidx341 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx342 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx341, i32 0, i64 1
  %134 = load float, float* %arrayidx342, align 4, !tbaa !49
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.340, %cond.true.336
  %cond344 = phi float [ %sub339, %cond.true.336 ], [ %134, %cond.false.340 ]
  %arrayidx345 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx346 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx345, i32 0, i64 1
  store float %cond344, float* %arrayidx346, align 4, !tbaa !49
  %arrayidx347 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx348 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx347, i32 0, i64 2
  %135 = load float, float* %arrayidx348, align 4, !tbaa !49
  %cmp349 = fcmp olt float %135, 0.000000e+00
  br i1 %cmp349, label %cond.true.350, label %cond.false.354

cond.true.350:                                    ; preds = %cond.end.343
  %arrayidx351 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx352 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx351, i32 0, i64 2
  %136 = load float, float* %arrayidx352, align 4, !tbaa !49
  %sub353 = fsub float -0.000000e+00, %136
  br label %cond.end.357

cond.false.354:                                   ; preds = %cond.end.343
  %arrayidx355 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx356 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx355, i32 0, i64 2
  %137 = load float, float* %arrayidx356, align 4, !tbaa !49
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.354, %cond.true.350
  %cond358 = phi float [ %sub353, %cond.true.350 ], [ %137, %cond.false.354 ]
  %arrayidx359 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx360 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx359, i32 0, i64 2
  store float %cond358, float* %arrayidx360, align 4, !tbaa !49
  %arrayidx361 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx362 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx361, i32 0, i64 1
  %138 = load float, float* %arrayidx362, align 4, !tbaa !49
  %cmp363 = fcmp olt float %138, 0.000000e+00
  br i1 %cmp363, label %cond.true.364, label %cond.false.368

cond.true.364:                                    ; preds = %cond.end.357
  %arrayidx365 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx366 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx365, i32 0, i64 1
  %139 = load float, float* %arrayidx366, align 4, !tbaa !49
  %sub367 = fsub float -0.000000e+00, %139
  br label %cond.end.371

cond.false.368:                                   ; preds = %cond.end.357
  %arrayidx369 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx370 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx369, i32 0, i64 1
  %140 = load float, float* %arrayidx370, align 4, !tbaa !49
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.368, %cond.true.364
  %cond372 = phi float [ %sub367, %cond.true.364 ], [ %140, %cond.false.368 ]
  %arrayidx373 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx374 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx373, i32 0, i64 1
  store float %cond372, float* %arrayidx374, align 4, !tbaa !49
  %arrayidx375 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx376 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx375, i32 0, i64 2
  %141 = load float, float* %arrayidx376, align 4, !tbaa !49
  %cmp377 = fcmp olt float %141, 0.000000e+00
  br i1 %cmp377, label %cond.true.378, label %cond.false.382

cond.true.378:                                    ; preds = %cond.end.371
  %arrayidx379 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx380 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx379, i32 0, i64 2
  %142 = load float, float* %arrayidx380, align 4, !tbaa !49
  %sub381 = fsub float -0.000000e+00, %142
  br label %cond.end.385

cond.false.382:                                   ; preds = %cond.end.371
  %arrayidx383 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx384 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx383, i32 0, i64 2
  %143 = load float, float* %arrayidx384, align 4, !tbaa !49
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.382, %cond.true.378
  %cond386 = phi float [ %sub381, %cond.true.378 ], [ %143, %cond.false.382 ]
  %arrayidx387 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx388 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx387, i32 0, i64 2
  store float %cond386, float* %arrayidx388, align 4, !tbaa !49
  %arrayidx389 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx390 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx389, i32 0, i64 1
  %144 = load float, float* %arrayidx390, align 4, !tbaa !49
  %cmp391 = fcmp olt float %144, 0.000000e+00
  br i1 %cmp391, label %cond.true.392, label %cond.false.396

cond.true.392:                                    ; preds = %cond.end.385
  %arrayidx393 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx394 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx393, i32 0, i64 1
  %145 = load float, float* %arrayidx394, align 4, !tbaa !49
  %sub395 = fsub float -0.000000e+00, %145
  br label %cond.end.399

cond.false.396:                                   ; preds = %cond.end.385
  %arrayidx397 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx398 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx397, i32 0, i64 1
  %146 = load float, float* %arrayidx398, align 4, !tbaa !49
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.396, %cond.true.392
  %cond400 = phi float [ %sub395, %cond.true.392 ], [ %146, %cond.false.396 ]
  %arrayidx401 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx402 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx401, i32 0, i64 1
  store float %cond400, float* %arrayidx402, align 4, !tbaa !49
  %arrayidx403 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx404 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx403, i32 0, i64 2
  %147 = load float, float* %arrayidx404, align 4, !tbaa !49
  %cmp405 = fcmp olt float %147, 0.000000e+00
  br i1 %cmp405, label %cond.true.406, label %cond.false.410

cond.true.406:                                    ; preds = %cond.end.399
  %arrayidx407 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx408 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx407, i32 0, i64 2
  %148 = load float, float* %arrayidx408, align 4, !tbaa !49
  %sub409 = fsub float -0.000000e+00, %148
  br label %cond.end.413

cond.false.410:                                   ; preds = %cond.end.399
  %arrayidx411 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx412 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx411, i32 0, i64 2
  %149 = load float, float* %arrayidx412, align 4, !tbaa !49
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.410, %cond.true.406
  %cond414 = phi float [ %sub409, %cond.true.406 ], [ %149, %cond.false.410 ]
  %arrayidx415 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx416 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx415, i32 0, i64 2
  store float %cond414, float* %arrayidx416, align 4, !tbaa !49
  br label %if.end.417

if.end.417:                                       ; preds = %cond.end.413, %if.end.7
  %150 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %tobool418 = icmp ne %struct.gs_imager_state_s* %150, null
  br i1 %tobool418, label %land.lhs.true.419, label %if.else

land.lhs.true.419:                                ; preds = %if.end.417
  %arrayidx420 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx421 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx420, i32 0, i64 0
  %151 = load float, float* %arrayidx421, align 4, !tbaa !49
  %mul422 = fmul float %151, 2.500000e-01
  %arrayidx423 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx424 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx423, i32 0, i64 1
  %152 = load float, float* %arrayidx424, align 4, !tbaa !49
  %cmp425 = fcmp ogt float %mul422, %152
  br i1 %cmp425, label %land.lhs.true.426, label %if.else

land.lhs.true.426:                                ; preds = %land.lhs.true.419
  %arrayidx427 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx428 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx427, i32 0, i64 0
  %153 = load float, float* %arrayidx428, align 4, !tbaa !49
  %mul429 = fmul float %153, 2.500000e-01
  %arrayidx430 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 0
  %arrayidx431 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx430, i32 0, i64 2
  %154 = load float, float* %arrayidx431, align 4, !tbaa !49
  %cmp432 = fcmp ogt float %mul429, %154
  br i1 %cmp432, label %land.lhs.true.433, label %if.else

land.lhs.true.433:                                ; preds = %land.lhs.true.426
  %arrayidx434 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx435 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx434, i32 0, i64 0
  %155 = load float, float* %arrayidx435, align 4, !tbaa !49
  %mul436 = fmul float %155, 2.500000e-01
  %arrayidx437 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx438 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx437, i32 0, i64 1
  %156 = load float, float* %arrayidx438, align 4, !tbaa !49
  %cmp439 = fcmp ogt float %mul436, %156
  br i1 %cmp439, label %land.lhs.true.440, label %if.else

land.lhs.true.440:                                ; preds = %land.lhs.true.433
  %arrayidx441 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx442 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx441, i32 0, i64 0
  %157 = load float, float* %arrayidx442, align 4, !tbaa !49
  %mul443 = fmul float %157, 2.500000e-01
  %arrayidx444 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 1
  %arrayidx445 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx444, i32 0, i64 2
  %158 = load float, float* %arrayidx445, align 4, !tbaa !49
  %cmp446 = fcmp ogt float %mul443, %158
  br i1 %cmp446, label %land.lhs.true.447, label %if.else

land.lhs.true.447:                                ; preds = %land.lhs.true.440
  %arrayidx448 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx449 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx448, i32 0, i64 0
  %159 = load float, float* %arrayidx449, align 4, !tbaa !49
  %mul450 = fmul float %159, 2.500000e-01
  %arrayidx451 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx452 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx451, i32 0, i64 1
  %160 = load float, float* %arrayidx452, align 4, !tbaa !49
  %cmp453 = fcmp ogt float %mul450, %160
  br i1 %cmp453, label %land.lhs.true.454, label %if.else

land.lhs.true.454:                                ; preds = %land.lhs.true.447
  %arrayidx455 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx456 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx455, i32 0, i64 0
  %161 = load float, float* %arrayidx456, align 4, !tbaa !49
  %mul457 = fmul float %161, 2.500000e-01
  %arrayidx458 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %c, i32 0, i64 2
  %arrayidx459 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx458, i32 0, i64 2
  %162 = load float, float* %arrayidx459, align 4, !tbaa !49
  %cmp460 = fcmp ogt float %mul457, %162
  br i1 %cmp460, label %if.then.461, label %if.else

if.then.461:                                      ; preds = %land.lhs.true.454
  %163 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %164 = bitcast %struct.gs_c_param_list_s* %163 to %struct.gs_param_list_s*
  %call462 = call i32 @param_write_int(%struct.gs_param_list_s* %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32* %zero) #6
  store i32 %call462, i32* %code, align 4, !tbaa !46
  %165 = load i32, i32* %code, align 4, !tbaa !46
  %cmp463 = icmp slt i32 %165, 0
  br i1 %cmp463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.then.461
  br label %error

if.end.465:                                       ; preds = %if.then.461
  br label %if.end.474

if.else:                                          ; preds = %land.lhs.true.454, %land.lhs.true.447, %land.lhs.true.440, %land.lhs.true.433, %land.lhs.true.426, %land.lhs.true.419, %if.end.417
  %166 = bitcast %struct.gs_param_string_s* %a to i8*
  call void @llvm.lifetime.start(i64 16, i8* %166) #2
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %a, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @choose_DCT_params.v, i32 0, i32 0), i8** %data, align 8, !tbaa !136
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %a, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !137
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %a, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !138
  %167 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %168 = bitcast %struct.gs_c_param_list_s* %167 to %struct.gs_param_list_s*
  %call466 = call i32 @param_write_string(%struct.gs_param_list_s* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %a) #6
  store i32 %call466, i32* %code, align 4, !tbaa !46
  %169 = load i32, i32* %code, align 4, !tbaa !46
  %cmp467 = icmp slt i32 %169, 0
  br i1 %cmp467, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.469:                                       ; preds = %if.else
  %170 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  %171 = bitcast %struct.gs_c_param_list_s* %170 to %struct.gs_param_list_s*
  %call470 = call i32 @param_write_string(%struct.gs_param_list_s* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %a) #6
  store i32 %call470, i32* %code, align 4, !tbaa !46
  %172 = load i32, i32* %code, align 4, !tbaa !46
  %cmp471 = icmp slt i32 %172, 0
  br i1 %cmp471, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %if.end.469
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.473:                                       ; preds = %if.end.469
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.472, %if.then.468, %if.end.473
  %173 = bitcast %struct.gs_param_string_s* %a to i8*
  call void @llvm.lifetime.end(i64 16, i8* %173) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.477 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.474

if.end.474:                                       ; preds = %cleanup.cont, %if.end.465
  br label %done

done:                                             ; preds = %if.end.474, %if.end.276
  %174 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %list.addr, align 8, !tbaa !1
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %174) #6
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory475 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %175, i32 0, i32 3
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory475, align 8, !tbaa !126
  %177 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @gx_device_finalize(%struct.gs_memory_s* %176, i8* %177) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

error:                                            ; preds = %cleanup, %if.then.464, %if.then.275
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory476 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %178, i32 0, i32 3
  %179 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory476, align 8, !tbaa !126
  %180 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @gx_device_finalize(%struct.gs_memory_s* %179, i8* %180) #6
  %181 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %181, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

cleanup.477:                                      ; preds = %error, %done, %cleanup, %if.then.65, %if.then.50, %if.then.35, %if.then.20, %if.then.5, %if.then
  %182 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast float* %domination to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast float* %MIN_FLOAT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast [4 x [3 x float]]* %c to i8*
  call void @llvm.lifetime.end(i64 48, i8* %186) #2
  %187 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %188) #2
  %189 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %189) #2
  %190 = load i32, i32* %retval
  ret i32 %190
}

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #1

declare i32 @psdf_DCT_filter(%struct.gs_param_list_s*, %struct.stream_state_s*, i32, i32, i32, %struct.psdf_binary_writer_s*) #1

declare i32 @param_list_copy(%struct.gs_param_list_s*, %struct.gs_param_list_s*) #1

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #1

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #1

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #1

declare i32 @gsicc_init_device_profile_struct(%struct.gx_device_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @convert_color(%struct.gx_device_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis, %struct.gs_client_color_s* %cc, float* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %cc.addr = alloca %struct.gs_client_color_s*, align 8
  %c.addr = alloca float*, align 8
  %code = alloca i32, align 4
  %dc = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %cc, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  store float* %c, float** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %1) #2
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 0
  %3 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !52
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %3, i32 0, i32 6
  %4 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !139
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  call void %4(%struct.gs_client_color_s* %5, %struct.gs_color_space_s* %6) #6
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 0
  %8 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type1, align 8, !tbaa !52
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %8, i32 0, i32 10
  %9 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !140
  %10 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gs_client_color_s* %10, %struct.gs_color_space_s* %11, %struct.gx_device_color_s* %dc, %struct.gs_imager_state_s* %12, %struct.gx_device_s* %13, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !46
  %14 = load i32, i32* %code, align 4, !tbaa !46
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !46
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %16 = load i64, i64* %pure, align 8, !tbaa !111
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 11
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !50
  %conv = zext i8 %18 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = lshr i64 %16, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 12
  %arrayidx4 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 0
  %20 = load i8, i8* %arrayidx4, align 1, !tbaa !50
  %conv5 = zext i8 %20 to i32
  %shl = shl i32 1, %conv5
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %conv2, %sub
  %conv6 = sitofp i32 %and to float
  %21 = load float*, float** %c.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %21, i64 0
  store float %conv6, float* %arrayidx7, align 4, !tbaa !49
  %colors8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure9 = bitcast %union._c* %colors8 to i64*
  %22 = load i64, i64* %pure9, align 8, !tbaa !111
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %comp_shift11 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 11
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift11, i32 0, i64 1
  %24 = load i8, i8* %arrayidx12, align 1, !tbaa !50
  %conv13 = zext i8 %24 to i32
  %sh_prom14 = zext i32 %conv13 to i64
  %shr15 = lshr i64 %22, %sh_prom14
  %conv16 = trunc i64 %shr15 to i32
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %comp_bits18 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 12
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits18, i32 0, i64 1
  %26 = load i8, i8* %arrayidx19, align 1, !tbaa !50
  %conv20 = zext i8 %26 to i32
  %shl21 = shl i32 1, %conv20
  %sub22 = sub nsw i32 %shl21, 1
  %and23 = and i32 %conv16, %sub22
  %conv24 = sitofp i32 %and23 to float
  %27 = load float*, float** %c.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %27, i64 1
  store float %conv24, float* %arrayidx25, align 4, !tbaa !49
  %colors26 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure27 = bitcast %union._c* %colors26 to i64*
  %28 = load i64, i64* %pure27, align 8, !tbaa !111
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %comp_shift29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info28, i32 0, i32 11
  %arrayidx30 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift29, i32 0, i64 2
  %30 = load i8, i8* %arrayidx30, align 1, !tbaa !50
  %conv31 = zext i8 %30 to i32
  %sh_prom32 = zext i32 %conv31 to i64
  %shr33 = lshr i64 %28, %sh_prom32
  %conv34 = trunc i64 %shr33 to i32
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 11
  %comp_bits36 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 12
  %arrayidx37 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits36, i32 0, i64 2
  %32 = load i8, i8* %arrayidx37, align 1, !tbaa !50
  %conv38 = zext i8 %32 to i32
  %shl39 = shl i32 1, %conv38
  %sub40 = sub nsw i32 %shl39, 1
  %and41 = and i32 %conv34, %sub40
  %conv42 = sitofp i32 %and41 to float
  %33 = load float*, float** %c.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds float, float* %33, i64 2
  store float %conv42, float* %arrayidx43, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %34 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #1

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

declare i32 @s_1248_init(%struct.stream_1248_state_s*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 9112}
!6 = !{!"gx_device_psdf_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !19, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !32, i64 7512, !32, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !25, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !26, i64 8872, !37, i64 8880}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !25, i64 176, !25, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !21, i64 296, !29, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !21, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !30, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !31, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !31, i64 1336}
!20 = !{!"gx_line_params_s", !21, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !7, i64 36, !22, i64 40, !23, i64 64}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!23 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !21, i64 12, !7, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!24 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!25 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !3, i64 0}
!27 = !{!"gs_transparency_source_s", !21, i64 0}
!28 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!29 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!30 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!31 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!32 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !7, i64 16, !33, i64 24, !35, i64 288}
!33 = !{!"gs_client_color_s", !2, i64 0, !34, i64 8}
!34 = !{!"gs_paint_color_s", !3, i64 0}
!35 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !36, i64 336}
!36 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!37 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !38, i64 64, !38, i64 80, !38, i64 96, !38, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !39, i64 152, !7, i64 232, !7, i64 236, !39, i64 240, !39, i64 320, !40, i64 400, !40, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !41, i64 448, !40, i64 464}
!38 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!39 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !21, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!40 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!41 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!42 = !{!43, !2, i64 576}
!43 = !{!"gs_pixel_image_s", !2, i64 0, !22, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576}
!44 = !{!45, !2, i64 64}
!45 = !{!"gs_color_space_s", !2, i64 0, !8, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!46 = !{!7, !7, i64 0}
!47 = !{!43, !7, i64 40}
!48 = !{i64 0, i64 8, !1, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 24, i64 8, !1, i64 32, i64 4, !46, i64 36, i64 4, !49, i64 40, i64 4, !50, i64 44, i64 4, !46, i64 48, i64 8, !1, i64 56, i64 4, !46, i64 64, i64 8, !1, i64 72, i64 8, !1}
!49 = !{!21, !21, i64 0}
!50 = !{!3, !3, i64 0}
!51 = !{!39, !7, i64 16}
!52 = !{!45, !2, i64 0}
!53 = !{!54, !3, i64 0}
!54 = !{!"gs_color_space_type_s", !3, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!55 = !{!39, !7, i64 12}
!56 = !{!39, !2, i64 48}
!57 = !{!26, !26, i64 0}
!58 = !{!25, !26, i64 0}
!59 = !{!25, !26, i64 8}
!60 = !{!6, !2, i64 9248}
!61 = !{!6, !2, i64 9272}
!62 = !{!39, !2, i64 72}
!63 = !{!6, !2, i64 9224}
!64 = !{!39, !2, i64 24}
!65 = !{!6, !2, i64 9168}
!66 = !{!6, !2, i64 9192}
!67 = !{!6, !2, i64 9144}
!68 = !{!43, !7, i64 32}
!69 = !{!6, !2, i64 1728}
!70 = !{!6, !2, i64 9056}
!71 = !{!72, !2, i64 0}
!72 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!73 = !{!39, !7, i64 56}
!74 = !{!39, !7, i64 32}
!75 = !{!39, !21, i64 36}
!76 = !{!43, !7, i64 36}
!77 = !{!78, !2, i64 24}
!78 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!79 = !{!39, !3, i64 40}
!80 = !{!72, !2, i64 40}
!81 = !{!82, !7, i64 108}
!82 = !{!"stream_Downsample_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !21, i64 120, !21, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144}
!83 = !{!82, !7, i64 112}
!84 = !{!82, !7, i64 116}
!85 = !{!82, !21, i64 124}
!86 = !{!82, !21, i64 120}
!87 = !{!39, !7, i64 8}
!88 = !{!82, !7, i64 128}
!89 = !{!82, !7, i64 136}
!90 = !{!82, !7, i64 132}
!91 = !{!72, !2, i64 8}
!92 = !{!93, !2, i64 24}
!93 = !{!"gs_memory_s", !2, i64 0, !94, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!94 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!95 = !{!6, !7, i64 8936}
!96 = !{!6, !3, i64 8848}
!97 = !{!39, !7, i64 44}
!98 = !{!39, !2, i64 0}
!99 = !{!100, !2, i64 0}
!100 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!101 = !{!102, !7, i64 124}
!102 = !{!"stream_CFE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !2, i64 168, !2, i64 176, !7, i64 184, !7, i64 188, !2, i64 192, !7, i64 200, !7, i64 204, !7, i64 208}
!103 = !{!102, !7, i64 148}
!104 = !{!102, !7, i64 136}
!105 = !{!102, !7, i64 144}
!106 = !{!102, !7, i64 140}
!107 = !{!108, !7, i64 108}
!108 = !{!"stream_PNGP_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !3, i64 128, !7, i64 132, !2, i64 136, !7, i64 144, !9, i64 152, !3, i64 160}
!109 = !{!108, !7, i64 116}
!110 = !{i64 0, i64 4, !46, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !46, i64 48, i64 8, !1, i64 56, i64 8, !111, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !46, i64 84, i64 4, !46, i64 88, i64 4, !46, i64 96, i64 4, !46, i64 100, i64 4, !46, i64 104, i64 4, !50, i64 108, i64 2, !112, i64 110, i64 1, !50, i64 112, i64 4, !46, i64 116, i64 4, !46, i64 120, i64 4, !46, i64 124, i64 4, !46, i64 128, i64 4, !46, i64 132, i64 4, !46, i64 136, i64 4, !50, i64 140, i64 64, !50, i64 204, i64 64, !50, i64 272, i64 512, !50, i64 784, i64 8, !1, i64 792, i64 4, !50, i64 800, i64 8, !111, i64 808, i64 4, !46, i64 816, i64 8, !111, i64 824, i64 8, !111, i64 832, i64 4, !46, i64 836, i64 4, !46, i64 840, i64 4, !46, i64 844, i64 4, !46, i64 848, i64 4, !46, i64 852, i64 4, !46, i64 856, i64 8, !50, i64 864, i64 16, !50, i64 880, i64 4, !46, i64 884, i64 8, !50, i64 892, i64 8, !50, i64 900, i64 8, !50, i64 908, i64 16, !50, i64 928, i64 8, !111, i64 936, i64 8, !111, i64 944, i64 4, !46, i64 948, i64 4, !46, i64 952, i64 4, !46, i64 956, i64 4, !46, i64 960, i64 4, !46, i64 968, i64 8, !111, i64 976, i64 8, !111, i64 984, i64 4, !46, i64 988, i64 32, !50, i64 1020, i64 32, !50, i64 1052, i64 4, !46, i64 1056, i64 4, !46, i64 1064, i64 8, !111, i64 1072, i64 8, !111, i64 1080, i64 4, !46, i64 1084, i64 4, !46, i64 1088, i64 8, !111, i64 1096, i64 4, !46, i64 1100, i64 4, !50, i64 1104, i64 8, !1, i64 1112, i64 4, !50, i64 1120, i64 8, !1, i64 1128, i64 8, !1, i64 1136, i64 8, !1, i64 1144, i64 8, !1, i64 1152, i64 8, !1, i64 1160, i64 8, !1, i64 1168, i64 8, !1, i64 1176, i64 8, !1, i64 1184, i64 8, !1, i64 1192, i64 8, !1, i64 1200, i64 8, !1, i64 1208, i64 8, !1, i64 1216, i64 8, !1, i64 1224, i64 8, !1, i64 1232, i64 8, !1, i64 1240, i64 8, !1, i64 1248, i64 8, !1, i64 1256, i64 8, !1, i64 1264, i64 8, !1, i64 1272, i64 8, !1, i64 1280, i64 8, !1, i64 1288, i64 8, !1, i64 1296, i64 8, !1, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 8, !1, i64 1344, i64 8, !1, i64 1352, i64 8, !1, i64 1360, i64 8, !1, i64 1368, i64 8, !1, i64 1376, i64 8, !1, i64 1384, i64 8, !1, i64 1392, i64 8, !1, i64 1400, i64 8, !1, i64 1408, i64 8, !1, i64 1416, i64 8, !1, i64 1424, i64 8, !1, i64 1432, i64 8, !1, i64 1440, i64 8, !1, i64 1448, i64 8, !1, i64 1456, i64 8, !1, i64 1464, i64 8, !1, i64 1472, i64 8, !1, i64 1480, i64 8, !1, i64 1488, i64 8, !1, i64 1496, i64 8, !1, i64 1504, i64 8, !1, i64 1512, i64 8, !1, i64 1520, i64 8, !1, i64 1528, i64 8, !1, i64 1536, i64 8, !1, i64 1544, i64 8, !1, i64 1552, i64 8, !1, i64 1560, i64 8, !1, i64 1568, i64 8, !1, i64 1576, i64 8, !1, i64 1584, i64 8, !1, i64 1592, i64 8, !1, i64 1600, i64 8, !1, i64 1608, i64 8, !1, i64 1616, i64 8, !1, i64 1624, i64 8, !1, i64 1632, i64 8, !1, i64 1640, i64 8, !1, i64 1648, i64 8, !1, i64 1656, i64 8, !1, i64 1664, i64 8, !1, i64 1672, i64 8, !1, i64 1680, i64 8, !1, i64 1688, i64 8, !1, i64 1696, i64 8, !1, i64 1704, i64 8, !1, i64 1712, i64 8, !1, i64 1720, i64 8, !1, i64 1728, i64 8, !1, i64 1736, i64 8, !1, i64 1744, i64 4096, !50, i64 5840, i64 8, !1, i64 5848, i64 8, !1, i64 5856, i64 8, !1, i64 5864, i64 4, !46, i64 5868, i64 4, !46, i64 5872, i64 4, !46, i64 5880, i64 8, !1, i64 5888, i64 8, !1, i64 5896, i64 4, !49, i64 5900, i64 4, !50, i64 5904, i64 4, !50, i64 5908, i64 4, !50, i64 5912, i64 4, !50, i64 5916, i64 4, !46, i64 5920, i64 4, !49, i64 5924, i64 4, !49, i64 5928, i64 4, !49, i64 5932, i64 4, !46, i64 5936, i64 4, !49, i64 5940, i64 4, !49, i64 5944, i64 4, !49, i64 5948, i64 4, !49, i64 5952, i64 4, !49, i64 5956, i64 4, !49, i64 5960, i64 8, !1, i64 5968, i64 4, !46, i64 5972, i64 4, !49, i64 5976, i64 4, !46, i64 5980, i64 4, !49, i64 5984, i64 4, !46, i64 5988, i64 4, !46, i64 5992, i64 4, !49, i64 6000, i64 4, !46, i64 6004, i64 4, !49, i64 6008, i64 4, !49, i64 6012, i64 4, !49, i64 6016, i64 4, !49, i64 6020, i64 4, !49, i64 6024, i64 4, !49, i64 6028, i64 4, !46, i64 6032, i64 4, !46, i64 6036, i64 4, !46, i64 6040, i64 4, !46, i64 6048, i64 8, !57, i64 6056, i64 8, !57, i64 6064, i64 8, !57, i64 6072, i64 8, !57, i64 6080, i64 4, !46, i64 6084, i64 4, !46, i64 6088, i64 2, !112, i64 6092, i64 4, !50, i64 6096, i64 4, !49, i64 6100, i64 4, !49, i64 6104, i64 4, !46, i64 6108, i64 4, !46, i64 6112, i64 8, !111, i64 6120, i64 4, !46, i64 6124, i64 4, !46, i64 6128, i64 4, !46, i64 6136, i64 8, !1, i64 6144, i64 4, !46, i64 6148, i64 4, !46, i64 6152, i64 4, !46, i64 6156, i64 4, !46, i64 6160, i64 4, !46, i64 6164, i64 4, !46, i64 6168, i64 4, !49, i64 6172, i64 4, !46, i64 6176, i64 4, !46, i64 6180, i64 4, !46, i64 6184, i64 4, !46, i64 6188, i64 4, !46, i64 6192, i64 4, !49, i64 6196, i64 4, !46, i64 6200, i64 4, !46, i64 6208, i64 8, !1, i64 6216, i64 8, !1, i64 6224, i64 8, !1, i64 6232, i64 8, !1, i64 6240, i64 8, !1, i64 6248, i64 16, !50, i64 6264, i64 8, !1, i64 6272, i64 8, !1, i64 6280, i64 4, !46, i64 6288, i64 8, !1, i64 6296, i64 8, !1, i64 6304, i64 4, !46, i64 6312, i64 8, !1, i64 6320, i64 4, !46, i64 6328, i64 8, !1, i64 6336, i64 4, !46, i64 6344, i64 8, !1, i64 6352, i64 4, !46, i64 6360, i64 8, !1, i64 6368, i64 512, !50, i64 6880, i64 8, !1, i64 6888, i64 8, !1, i64 6896, i64 4, !46, i64 6900, i64 4, !50, i64 6904, i64 4, !46, i64 6908, i64 4, !46, i64 6912, i64 8, !111, i64 6920, i64 256, !50, i64 7176, i64 8, !1, i64 7184, i64 8, !1, i64 7192, i64 8, !1, i64 7200, i64 8, !1, i64 7208, i64 4, !46, i64 7212, i64 4, !50, i64 7216, i64 4, !46, i64 7220, i64 4, !46, i64 7224, i64 8, !111, i64 7232, i64 256, !50, i64 7488, i64 8, !1, i64 7496, i64 4, !46, i64 7500, i64 4, !46, i64 7504, i64 4, !46, i64 7512, i64 8, !111, i64 7520, i64 8, !111, i64 7528, i64 4, !46, i64 7536, i64 8, !1, i64 7544, i64 256, !50, i64 7800, i64 8, !1, i64 7808, i64 8, !111, i64 7808, i64 16, !50, i64 7824, i64 4, !46, i64 7828, i64 4, !46, i64 7808, i64 64, !50, i64 7872, i64 256, !50, i64 8128, i64 2, !112, i64 7808, i64 128, !50, i64 7808, i64 8, !111, i64 7816, i64 4, !46, i64 7820, i64 4, !46, i64 7808, i64 8, !111, i64 7816, i64 4, !46, i64 8136, i64 4, !46, i64 8140, i64 4, !46, i64 8144, i64 8, !111, i64 8152, i64 8, !111, i64 8160, i64 4, !46, i64 8168, i64 8, !1, i64 8176, i64 256, !50, i64 8432, i64 8, !1, i64 8440, i64 8, !111, i64 8440, i64 16, !50, i64 8456, i64 4, !46, i64 8460, i64 4, !46, i64 8440, i64 64, !50, i64 8504, i64 256, !50, i64 8760, i64 2, !112, i64 8440, i64 128, !50, i64 8440, i64 8, !111, i64 8448, i64 4, !46, i64 8452, i64 4, !46, i64 8440, i64 8, !111, i64 8448, i64 4, !46, i64 8768, i64 4, !46, i64 8772, i64 4, !46, i64 8776, i64 8, !111, i64 8784, i64 8, !111, i64 8792, i64 4, !50, i64 8796, i64 4, !50, i64 8800, i64 8, !57, i64 8808, i64 8, !57, i64 8816, i64 4, !46, i64 8824, i64 8, !1, i64 8832, i64 8, !111, i64 8840, i64 8, !111, i64 8848, i64 4, !50, i64 8852, i64 4, !46, i64 8856, i64 4, !46, i64 8860, i64 4, !46, i64 8864, i64 4, !46, i64 8872, i64 8, !57, i64 8880, i64 4, !46, i64 8884, i64 4, !50, i64 8888, i64 4, !50, i64 8892, i64 4, !46, i64 8896, i64 4, !50, i64 8900, i64 4, !46, i64 8904, i64 4, !46, i64 8912, i64 8, !111, i64 8920, i64 4, !46, i64 8924, i64 4, !46, i64 8928, i64 4, !46, i64 8932, i64 4, !46, i64 8936, i64 4, !46, i64 8944, i64 8, !1, i64 8952, i64 4, !46, i64 8960, i64 8, !1, i64 8968, i64 4, !46, i64 8976, i64 8, !1, i64 8984, i64 4, !46, i64 8992, i64 8, !1, i64 9000, i64 4, !46, i64 9008, i64 4, !50, i64 9012, i64 4, !46, i64 9016, i64 4, !46, i64 9020, i64 4, !50, i64 9024, i64 4, !50, i64 9032, i64 8, !1, i64 9040, i64 4, !46, i64 9044, i64 4, !46, i64 9048, i64 4, !46, i64 9056, i64 8, !1, i64 9064, i64 4, !46, i64 9068, i64 4, !49, i64 9072, i64 4, !50, i64 9076, i64 4, !46, i64 9080, i64 8, !1, i64 9088, i64 4, !46, i64 9096, i64 8, !1, i64 9104, i64 8, !1, i64 9112, i64 4, !46, i64 9116, i64 4, !46, i64 9120, i64 8, !1, i64 9128, i64 4, !46, i64 9132, i64 4, !46, i64 9136, i64 4, !46, i64 9144, i64 8, !1, i64 9152, i64 4, !46, i64 9156, i64 4, !49, i64 9160, i64 4, !50, i64 9164, i64 4, !46, i64 9168, i64 8, !1, i64 9176, i64 4, !46, i64 9184, i64 8, !1, i64 9192, i64 8, !1, i64 9200, i64 8, !1, i64 9208, i64 4, !46, i64 9212, i64 4, !46, i64 9216, i64 4, !46, i64 9224, i64 8, !1, i64 9232, i64 4, !46, i64 9236, i64 4, !49, i64 9240, i64 4, !50, i64 9244, i64 4, !46, i64 9248, i64 8, !1, i64 9256, i64 4, !46, i64 9264, i64 8, !1, i64 9272, i64 8, !1, i64 9280, i64 8, !1, i64 9288, i64 4, !46, i64 9292, i64 4, !46, i64 9296, i64 8, !1, i64 9304, i64 4, !46, i64 9308, i64 4, !46, i64 9312, i64 4, !50, i64 9316, i64 4, !46, i64 9320, i64 4, !46, i64 9324, i64 4, !46, i64 9328, i64 8, !1, i64 9336, i64 4, !46, i64 9340, i64 4, !46, i64 9344, i64 8, !1, i64 9352, i64 4, !46, i64 9356, i64 4, !46}
!111 = !{!9, !9, i64 0}
!112 = !{!11, !11, i64 0}
!113 = !{!6, !7, i64 9044}
!114 = !{!6, !7, i64 9064}
!115 = !{!6, !2, i64 9080}
!116 = !{!6, !2, i64 9104}
!117 = !{!6, !7, i64 9132}
!118 = !{!6, !7, i64 9152}
!119 = !{!6, !2, i64 24}
!120 = !{!78, !2, i64 0}
!121 = !{!6, !2, i64 5848}
!122 = !{!78, !2, i64 16}
!123 = !{!78, !2, i64 8}
!124 = !{!6, !7, i64 100}
!125 = !{!54, !2, i64 24}
!126 = !{!127, !2, i64 24}
!127 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!128 = !{!129, !3, i64 136}
!129 = !{!"gx_device_memory_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !7, i64 1736, !2, i64 1744, !2, i64 1752, !7, i64 1760, !2, i64 1768, !7, i64 1776, !3, i64 1780, !22, i64 2548, !2, i64 2576, !38, i64 2584, !130, i64 2600, !131, i64 2624, !132, i64 2656, !133, i64 2680, !134, i64 2720, !135, i64 2736, !7, i64 2744, !7, i64 2748, !7, i64 2752, !7, i64 2756, !7, i64 2760, !9, i64 2768, !2, i64 2776, !7, i64 2784, !7, i64 2788}
!130 = !{!"_c24", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!131 = !{!"_c40", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!132 = !{!"_c48", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!133 = !{!"_c56", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!134 = !{!"_c64", !9, i64 0, !7, i64 8, !7, i64 12}
!135 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!136 = !{!41, !2, i64 0}
!137 = !{!41, !7, i64 8}
!138 = !{!41, !7, i64 12}
!139 = !{!54, !2, i64 40}
!140 = !{!54, !2, i64 72}
