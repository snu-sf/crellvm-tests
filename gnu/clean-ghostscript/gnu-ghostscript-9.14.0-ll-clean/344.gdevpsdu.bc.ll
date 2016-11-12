; ModuleID = './gdevpsdu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.psdf_set_color_commands_s = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.gx_device_color_type_s = type opaque
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, {}*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, {}*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, {}*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
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
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.stream_A85E_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%union._jd = type { %struct.jpeg_stream_data_s* }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon.1, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon.1 = type { [8 x i32], [48 x i8] }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"gx_device_psdf\00", align 1
@device_psdf_data = internal constant %struct.gc_struct_data_s { i16 14, i16 0, %struct.gs_memory_struct_type_s* @st_device_vector, %struct.gc_ptr_element_s* getelementptr inbounds ([14 x %struct.gc_ptr_element_s], [14 x %struct.gc_ptr_element_s]* @device_psdf_ptrs, i32 0, i32 0) }, align 8
@st_device_psdf = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 9360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_psdf_data to i8*) }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"psdf_binary_writer\00", align 1
@psdf_binary_writer_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @psdf_binary_writer_enum_ptrs, i32 0, i32 0) }, align 8
@st_psdf_binary_writer = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @psdf_binary_writer_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"scn\00", align 1
@psdf_set_fill_color_commands = constant %struct.psdf_set_color_commands_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"SCN\00", align 1
@psdf_set_stroke_color_commands = constant %struct.psdf_set_color_commands_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%d J\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Unknown line cap enumerator %d, substituting butt\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%d j\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Unknown line join enumerator %d, substituting miter\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%g M\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"] %g d\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%g i\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%g %g %g %g re\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"%g %g %g %g v\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"%g %g %g %g y\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"%g %g %g %g\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%g %g %g\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"psdf_begin_binary(buf)\00", align 1
@s_A85E_template = external constant %struct.stream_template_s, align 8
@.str.36 = private unnamed_addr constant [32 x i8] c"psdf_begin_binary(stream_state)\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"psdf_begin_binary(stream)\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Rows\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@st_jpeg_compress_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"zDCTE\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@.str.42 = private unnamed_addr constant [24 x i8] c"setup_image_compression\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@.str.43 = private unnamed_addr constant [16 x i8] c"psdf_CFE_binary\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"Can't set GraphicsAlphaBits > 1 with a vector device %s.\0A\00", align 1
@st_device_vector = external constant %struct.gs_memory_struct_type_s, align 8
@device_psdf_ptrs = internal constant [14 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 9032 }, %struct.gc_ptr_element_s { i16 0, i16 9056 }, %struct.gc_ptr_element_s { i16 2, i16 8944 }, %struct.gc_ptr_element_s { i16 2, i16 8960 }, %struct.gc_ptr_element_s { i16 2, i16 8976 }, %struct.gc_ptr_element_s { i16 2, i16 8992 }, %struct.gc_ptr_element_s { i16 0, i16 9120 }, %struct.gc_ptr_element_s { i16 0, i16 9144 }, %struct.gc_ptr_element_s { i16 0, i16 9200 }, %struct.gc_ptr_element_s { i16 0, i16 9224 }, %struct.gc_ptr_element_s { i16 0, i16 9280 }, %struct.gc_ptr_element_s { i16 0, i16 9296 }, %struct.gc_ptr_element_s { i16 2, i16 9328 }, %struct.gc_ptr_element_s { i16 0, i16 9344 }], align 16
@psdf_binary_writer_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_setlinewidth(%struct.gx_device_vector_s* %vdev, double %width) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %width.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %width, double* %width.addr, align 8, !tbaa !5
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %1 = load double, double* %width.addr, align 8, !tbaa !5
  %call1 = call i8* @pprintg1(%struct.stream_s* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), double %1) #4
  ret i32 0
}

declare i8* @pprintg1(%struct.stream_s*, i8*, double) #0

declare %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_setlinecap(%struct.gx_device_vector_s* %vdev, i32 %cap) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %cap.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !7
  %0 = load i32, i32* %cap.addr, align 4, !tbaa !7
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #4
  %2 = load i32, i32* %cap.addr, align 4, !tbaa !7
  %call1 = call i8* @pprintd1(%struct.stream_s* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %2) #4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call3 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #4
  %call4 = call i8* @pprintd1(%struct.stream_s* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 1) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %call5 = call i8* @gs_program_name() #4
  %call6 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %5, i8* %call5, i64 %call6) #4
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !8
  %8 = load i32, i32* %cap.addr, align 4, !tbaa !7
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i32 %8) #4
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call9 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %9) #4
  %call10 = call i8* @pprintd1(%struct.stream_s* %call9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret i32 0
}

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_setlinejoin(%struct.gx_device_vector_s* %vdev, i32 %join) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %join.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !7
  %0 = load i32, i32* %join.addr, align 4, !tbaa !7
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #4
  %2 = load i32, i32* %join.addr, align 4, !tbaa !7
  %call1 = call i8* @pprintd1(%struct.stream_s* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %2) #4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call3 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #4
  %call4 = call i8* @pprintd1(%struct.stream_s* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 2) #4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call6 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %4) #4
  %call7 = call i8* @pprintd1(%struct.stream_s* %call6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %call8 = call i8* @gs_program_name() #4
  %call9 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %6, i8* %call8, i64 %call9) #4
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !8
  %9 = load i32, i32* %join.addr, align 4, !tbaa !7
  %call11 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i32 %9) #4
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call12 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %10) #4
  %call13 = call i8* @pprintd1(%struct.stream_s* %call12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.2, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_setmiterlimit(%struct.gx_device_vector_s* %vdev, double %limit) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %limit.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %limit, double* %limit.addr, align 8, !tbaa !5
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %1 = load double, double* %limit.addr, align 8, !tbaa !5
  %call1 = call i8* @pprintg1(%struct.stream_s* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), double %1) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_setdash(%struct.gx_device_vector_s* %vdev, float* %pattern, i32 %count, double %offset) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pattern.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store float* %pattern, float** %pattern.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !39
  store double %offset, double* %offset.addr, align 8, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #4
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #4
  store i32 0, i32* %i, align 4, !tbaa !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !39
  %5 = load i32, i32* %count.addr, align 4, !tbaa !39
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !39
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %pattern.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx, align 4, !tbaa !40
  %conv = fpext float %9 to double
  %call2 = call i8* @pprintg1(%struct.stream_s* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), double %conv) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !39
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !39
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %12 = load double, double* %offset.addr, align 8, !tbaa !5
  %call3 = call i8* @pprintg1(%struct.stream_s* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), double %12) #4
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @psdf_setflat(%struct.gx_device_vector_s* %vdev, double %flatness) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %flatness.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %flatness, double* %flatness.addr, align 8, !tbaa !5
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %1 = load double, double* %flatness.addr, align 8, !tbaa !5
  %call1 = call i8* @pprintg1(%struct.stream_s* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), double %1) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_setlogop(%struct.gx_device_vector_s* %vdev, i32 %lop, i32 %diff) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %lop.addr = alloca i32, align 4
  %diff.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !39
  store i32 %diff, i32* %diff.addr, align 4, !tbaa !39
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !39
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !39
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !39
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !39
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %1, i32 0, i32 44
  %2 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !41
  %beginpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %2, i32 0, i32 13
  %3 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %beginpath, align 8, !tbaa !42
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call = call i32 %3(%struct.gx_device_vector_s* %4, i32 %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !39
  %6 = load i32, i32* %code, align 4, !tbaa !39
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call1 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %8) #4
  %9 = load i32, i32* %x0.addr, align 4, !tbaa !39
  %conv = sitofp i32 %9 to double
  %mul = fmul double %conv, 3.906250e-03
  %10 = load i32, i32* %y0.addr, align 4, !tbaa !39
  %conv2 = sitofp i32 %10 to double
  %mul3 = fmul double %conv2, 3.906250e-03
  %11 = load i32, i32* %x1.addr, align 4, !tbaa !39
  %12 = load i32, i32* %x0.addr, align 4, !tbaa !39
  %sub = sub nsw i32 %11, %12
  %conv4 = sitofp i32 %sub to double
  %mul5 = fmul double %conv4, 3.906250e-03
  %13 = load i32, i32* %y1.addr, align 4, !tbaa !39
  %14 = load i32, i32* %y0.addr, align 4, !tbaa !39
  %sub6 = sub nsw i32 %13, %14
  %conv7 = sitofp i32 %sub6 to double
  %mul8 = fmul double %conv7, 3.906250e-03
  %call9 = call i8* @pprintg4(%struct.stream_s* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), double %mul, double %mul3, double %mul5, double %mul8) #4
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs10 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 44
  %16 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs10, align 8, !tbaa !41
  %endpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %16, i32 0, i32 18
  %17 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %endpath, align 8, !tbaa !44
  %18 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %19 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call11 = call i32 %17(%struct.gx_device_vector_s* %18, i32 %19) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_beginpath(%struct.gx_device_vector_s* %vdev, i32 %type) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_moveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !5
  store double %y0, double* %y0.addr, align 8, !tbaa !5
  store double %x, double* %x.addr, align 8, !tbaa !5
  store double %y, double* %y.addr, align 8, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %1 = load double, double* %x.addr, align 8, !tbaa !5
  %2 = load double, double* %y.addr, align 8, !tbaa !5
  %call1 = call i8* @pprintg2(%struct.stream_s* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), double %1, double %2) #4
  ret i32 0
}

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_lineto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !5
  store double %y0, double* %y0.addr, align 8, !tbaa !5
  store double %x, double* %x.addr, align 8, !tbaa !5
  store double %y, double* %y.addr, align 8, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %1 = load double, double* %x.addr, align 8, !tbaa !5
  %2 = load double, double* %y.addr, align 8, !tbaa !5
  %call1 = call i8* @pprintg2(%struct.stream_s* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %1, double %2) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @psdf_curveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %type) #1 {
entry:
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
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !5
  store double %y0, double* %y0.addr, align 8, !tbaa !5
  store double %x1, double* %x1.addr, align 8, !tbaa !5
  store double %y1, double* %y1.addr, align 8, !tbaa !5
  store double %x2, double* %x2.addr, align 8, !tbaa !5
  store double %y2, double* %y2.addr, align 8, !tbaa !5
  store double %x3, double* %x3.addr, align 8, !tbaa !5
  store double %y3, double* %y3.addr, align 8, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = load double, double* %x1.addr, align 8, !tbaa !5
  %1 = load double, double* %x0.addr, align 8, !tbaa !5
  %cmp = fcmp oeq double %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load double, double* %y1.addr, align 8, !tbaa !5
  %3 = load double, double* %y0.addr, align 8, !tbaa !5
  %cmp1 = fcmp oeq double %2, %3
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load double, double* %x2.addr, align 8, !tbaa !5
  %5 = load double, double* %x3.addr, align 8, !tbaa !5
  %cmp3 = fcmp oeq double %4, %5
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %6 = load double, double* %y2.addr, align 8, !tbaa !5
  %7 = load double, double* %y3.addr, align 8, !tbaa !5
  %cmp5 = fcmp oeq double %6, %7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %8) #4
  %9 = load double, double* %x3.addr, align 8, !tbaa !5
  %10 = load double, double* %y3.addr, align 8, !tbaa !5
  %call6 = call i8* @pprintg2(%struct.stream_s* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), double %9, double %10) #4
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %11 = load double, double* %x1.addr, align 8, !tbaa !5
  %12 = load double, double* %x0.addr, align 8, !tbaa !5
  %cmp7 = fcmp oeq double %11, %12
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.13

land.lhs.true.8:                                  ; preds = %if.else
  %13 = load double, double* %y1.addr, align 8, !tbaa !5
  %14 = load double, double* %y0.addr, align 8, !tbaa !5
  %cmp9 = fcmp oeq double %13, %14
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %land.lhs.true.8
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call11 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %15) #4
  %16 = load double, double* %x2.addr, align 8, !tbaa !5
  %17 = load double, double* %y2.addr, align 8, !tbaa !5
  %18 = load double, double* %x3.addr, align 8, !tbaa !5
  %19 = load double, double* %y3.addr, align 8, !tbaa !5
  %call12 = call i8* @pprintg4(%struct.stream_s* %call11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), double %16, double %17, double %18, double %19) #4
  br label %if.end.23

if.else.13:                                       ; preds = %land.lhs.true.8, %if.else
  %20 = load double, double* %x3.addr, align 8, !tbaa !5
  %21 = load double, double* %x2.addr, align 8, !tbaa !5
  %cmp14 = fcmp oeq double %20, %21
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.20

land.lhs.true.15:                                 ; preds = %if.else.13
  %22 = load double, double* %y3.addr, align 8, !tbaa !5
  %23 = load double, double* %y2.addr, align 8, !tbaa !5
  %cmp16 = fcmp oeq double %22, %23
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %land.lhs.true.15
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call18 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %24) #4
  %25 = load double, double* %x1.addr, align 8, !tbaa !5
  %26 = load double, double* %y1.addr, align 8, !tbaa !5
  %27 = load double, double* %x2.addr, align 8, !tbaa !5
  %28 = load double, double* %y2.addr, align 8, !tbaa !5
  %call19 = call i8* @pprintg4(%struct.stream_s* %call18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), double %25, double %26, double %27, double %28) #4
  br label %if.end

if.else.20:                                       ; preds = %land.lhs.true.15, %if.else.13
  %29 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call21 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %29) #4
  %30 = load double, double* %x1.addr, align 8, !tbaa !5
  %31 = load double, double* %y1.addr, align 8, !tbaa !5
  %32 = load double, double* %x2.addr, align 8, !tbaa !5
  %33 = load double, double* %y2.addr, align 8, !tbaa !5
  %34 = load double, double* %x3.addr, align 8, !tbaa !5
  %35 = load double, double* %y3.addr, align 8, !tbaa !5
  %call22 = call i8* @pprintg6(%struct.stream_s* %call21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), double %30, double %31, double %32, double %33, double %34, double %35) #4
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.10
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  ret i32 0
}

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_closepath(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x_start, double %y_start, i32 %type) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x_start.addr = alloca double, align 8
  %y_start.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !5
  store double %y0, double* %y0.addr, align 8, !tbaa !5
  store double %x_start, double* %x_start.addr, align 8, !tbaa !5
  store double %y_start, double* %y_start.addr, align 8, !tbaa !5
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %0) #4
  %call1 = call i32 @stream_puts(%struct.stream_s* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @psdf_adjust_color_index(%struct.gx_device_vector_s* %vdev, i64 %color) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %color.addr = alloca i64, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !45
  %0 = load i64, i64* %color.addr, align 8, !tbaa !45
  %cmp = icmp eq i64 %0, -2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %color.addr, align 8, !tbaa !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define double @psdf_round(double %v, i32 %precision, i32 %radix) #1 {
entry:
  %retval = alloca double, align 8
  %v.addr = alloca double, align 8
  %precision.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %mul = alloca double, align 8
  %w = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %v, double* %v.addr, align 8, !tbaa !5
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !39
  store i32 %radix, i32* %radix.addr, align 4, !tbaa !39
  %0 = bitcast double* %mul to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store double 1.000000e+00, double* %mul, align 8, !tbaa !5
  %1 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load double, double* %v.addr, align 8, !tbaa !5
  store double %2, double* %w, align 8, !tbaa !5
  %3 = load double, double* %w, align 8, !tbaa !5
  %cmp = fcmp ole double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %w, align 8, !tbaa !5
  store double %4, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load double, double* %w, align 8, !tbaa !5
  %6 = load i32, i32* %precision.addr, align 4, !tbaa !39
  %conv = sitofp i32 %6 to double
  %cmp1 = fcmp olt double %5, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %radix.addr, align 4, !tbaa !39
  %conv3 = sitofp i32 %7 to double
  %8 = load double, double* %w, align 8, !tbaa !5
  %mul4 = fmul double %8, %conv3
  store double %mul4, double* %w, align 8, !tbaa !5
  %9 = load i32, i32* %radix.addr, align 4, !tbaa !39
  %conv5 = sitofp i32 %9 to double
  %10 = load double, double* %mul, align 8, !tbaa !5
  %mul6 = fmul double %10, %conv5
  store double %mul6, double* %mul, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load double, double* %w, align 8, !tbaa !5
  %add = fadd double %11, 5.000000e-01
  %conv7 = fptosi double %add to i32
  %conv8 = sitofp i32 %conv7 to double
  %12 = load double, double* %mul, align 8, !tbaa !5
  %div = fdiv double %conv8, %12
  store double %div, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %13 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast double* %mul to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define i32 @psdf_set_color(%struct.gx_device_vector_s* %vdev, %struct.gx_device_color_s* %pdc, %struct.psdf_set_color_commands_s* %ppscc, i32 %UseOldColor) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %ppscc.addr = alloca %struct.psdf_set_color_commands_s*, align 8
  %UseOldColor.addr = alloca i32, align 4
  %setcolor = alloca i8*, align 8
  %num_des_comps = alloca i32, align 4
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %color = alloca i64, align 8
  %v3 = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.psdf_set_color_commands_s* %ppscc, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  store i32 %UseOldColor, i32* %UseOldColor.addr, align 4, !tbaa !39
  %0 = bitcast i8** %setcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %UseOldColor.addr, align 4, !tbaa !39
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %5, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !46
  store i32 %6, i32* %num_des_comps, align 4, !tbaa !39
  br label %if.end.3

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_vector_s* %7 to %struct.gx_device_s*
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %9 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !47
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_vector_s* %10 to %struct.gx_device_s*
  %call = call i32 %9(%struct.gx_device_s* %11, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call, i32* %code, align 4, !tbaa !39
  %12 = load i32, i32* %code, align 4, !tbaa !39
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %13 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end:                                           ; preds = %if.else
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call2 = call i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s* %14) #4
  store i32 %call2, i32* %num_des_comps, align 4, !tbaa !39
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 0
  %16 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !49
  %17 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gx_device_color_type_s* %16, %17
  br i1 %cmp4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.6:                                         ; preds = %if.end.3
  %18 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call7 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %19) #4
  store %struct.stream_s* %call7, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %22, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %23 = load i64, i64* %pure, align 8, !tbaa !45
  %call8 = call i64 @psdf_adjust_color_index(%struct.gx_device_vector_s* %21, i64 %23) #4
  store i64 %call8, i64* %color, align 8, !tbaa !45
  %24 = bitcast double* %v3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i64, i64* %color, align 8, !tbaa !45
  %and = and i64 %25, 255
  %call9 = call double @round_byte_color(i64 %and) #4
  store double %call9, double* %v3, align 8, !tbaa !5
  %26 = load i32, i32* %num_des_comps, align 4, !tbaa !39
  switch i32 %26, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.23
    i32 1, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end.6
  %27 = load i64, i64* %color, align 8, !tbaa !45
  %and10 = and i64 %27, 4294967040
  %cmp11 = icmp eq i64 %and10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %sw.bb
  %28 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %setgray, align 8, !tbaa !53
  %cmp12 = icmp ne i8* %29, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  %30 = load double, double* %v3, align 8, !tbaa !5
  %sub = fsub double 1.000000e+00, %30
  store double %sub, double* %v3, align 8, !tbaa !5
  br label %g

if.end.14:                                        ; preds = %land.lhs.true, %sw.bb
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %32 = load i64, i64* %color, align 8, !tbaa !45
  %shr = lshr i64 %32, 24
  %call15 = call double @round_byte_color(i64 %shr) #4
  %33 = load i64, i64* %color, align 8, !tbaa !45
  %shr16 = lshr i64 %33, 16
  %and17 = and i64 %shr16, 255
  %call18 = call double @round_byte_color(i64 %and17) #4
  %34 = load i64, i64* %color, align 8, !tbaa !45
  %shr19 = lshr i64 %34, 8
  %and20 = and i64 %shr19, 255
  %call21 = call double @round_byte_color(i64 %and20) #4
  %35 = load double, double* %v3, align 8, !tbaa !5
  %call22 = call i8* @pprintg4(%struct.stream_s* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), double %call15, double %call18, double %call21, double %35) #4
  %36 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setcmykcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %36, i32 0, i32 2
  %37 = load i8*, i8** %setcmykcolor, align 8, !tbaa !55
  store i8* %37, i8** %setcolor, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.6
  %38 = load i64, i64* %color, align 8, !tbaa !45
  %39 = load i64, i64* %color, align 8, !tbaa !45
  %shr24 = lshr i64 %39, 8
  %xor = xor i64 %38, %shr24
  %and25 = and i64 %xor, 65535
  %tobool26 = icmp ne i64 %and25, 0
  br i1 %tobool26, label %if.end.31, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %sw.bb.23
  %40 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray28 = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %40, i32 0, i32 0
  %41 = load i8*, i8** %setgray28, align 8, !tbaa !53
  %cmp29 = icmp ne i8* %41, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  br label %g

if.end.31:                                        ; preds = %land.lhs.true.27, %sw.bb.23
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %43 = load i64, i64* %color, align 8, !tbaa !45
  %shr32 = lshr i64 %43, 16
  %and33 = and i64 %shr32, 255
  %call34 = call double @round_byte_color(i64 %and33) #4
  %44 = load i64, i64* %color, align 8, !tbaa !45
  %shr35 = lshr i64 %44, 8
  %and36 = and i64 %shr35, 255
  %call37 = call double @round_byte_color(i64 %and36) #4
  %45 = load double, double* %v3, align 8, !tbaa !5
  %call38 = call i8* @pprintg3(%struct.stream_s* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), double %call34, double %call37, double %45) #4
  %46 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setrgbcolor = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %46, i32 0, i32 1
  %47 = load i8*, i8** %setrgbcolor, align 8, !tbaa !56
  store i8* %47, i8** %setcolor, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.6
  br label %g

g:                                                ; preds = %sw.bb.39, %if.then.30, %if.then.13
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %49 = load double, double* %v3, align 8, !tbaa !5
  %call40 = call i8* @pprintg1(%struct.stream_s* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), double %49) #4
  %50 = load %struct.psdf_set_color_commands_s*, %struct.psdf_set_color_commands_s** %ppscc.addr, align 8, !tbaa !1
  %setgray41 = getelementptr inbounds %struct.psdf_set_color_commands_s, %struct.psdf_set_color_commands_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %setgray41, align 8, !tbaa !53
  store i8* %51, i8** %setcolor, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %g, %if.end.31, %if.end.14
  %52 = load i8*, i8** %setcolor, align 8, !tbaa !1
  %tobool42 = icmp ne i8* %52, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %sw.epilog
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %54 = load i8*, i8** %setcolor, align 8, !tbaa !1
  %call44 = call i8* @pprints1(%struct.stream_s* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* %54) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %sw.default
  %55 = bitcast double* %v3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %cleanup.cont, %cleanup, %if.then.5, %if.then.1
  %58 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %num_des_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i8** %setcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare i32 @gsicc_get_device_profile_comps(%struct.cmm_dev_profile_s*) #0

; Function Attrs: inlinehint nounwind uwtable
define internal double @round_byte_color(i64 %cv) #3 {
entry:
  %cv.addr = alloca i64, align 8
  store i64 %cv, i64* %cv.addr, align 8, !tbaa !45
  %0 = load i64, i64* %cv.addr, align 8, !tbaa !45
  %conv = trunc i64 %0 to i32
  %conv1 = uitofp i32 %conv to double
  %mul = fmul double %conv1, 0x400F5F5F5F5F5F5F
  %add = fadd double %mul, 5.000000e-01
  %conv2 = fptosi double %add to i32
  %conv3 = sitofp i32 %conv2 to double
  %div = fdiv double %conv3, 1.000000e+03
  ret double %div
}

declare i8* @pprintg3(%struct.stream_s*, i8*, double, double, double) #0

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_begin_binary(%struct.gx_device_psdf_s* %pdev, %struct.psdf_binary_writer_s* %pbw) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %buf = alloca i8*, align 8
  %ss = alloca %struct.stream_A85E_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %1, i32 0, i32 43
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !57
  %3 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %3, i32 0, i32 0
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %memory, align 8, !tbaa !64
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %4, i32 0, i32 47
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !66
  %6 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %6, i32 0, i32 1
  store %struct.stream_s* %5, %struct.stream_s** %target, align 8, !tbaa !67
  %7 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %8 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %8, i32 0, i32 3
  store %struct.gx_device_psdf_s* %7, %struct.gx_device_psdf_s** %dev, align 8, !tbaa !68
  %9 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %9, i32 0, i32 2
  store %struct.stream_s* null, %struct.stream_s** %strm1, align 8, !tbaa !69
  %10 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %10, i32 0, i32 68
  %11 = load i32, i32* %binary_ok, align 4, !tbaa !70
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %12 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !71
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %14(%struct.gs_memory_s* %15, i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #4
  store i8* %call, i8** %buf, align 8, !tbaa !1
  %16 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_A85E_template, i32 0, i32 0), align 8, !tbaa !74
  %call2 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0)) #4
  %19 = bitcast %struct.stream_state_s* %call2 to %struct.stream_A85E_state_s*
  store %struct.stream_A85E_state_s* %19, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %20 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call3 = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0)) #4
  store %struct.stream_s* %call3, %struct.stream_s** %s, align 8, !tbaa !1
  %22 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp = icmp eq i8* %22, null
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.stream_A85E_state_s* %23, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.stream_s* %24, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false, %if.then
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %29 = bitcast %struct.stream_s* %28 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0)) #4
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %free_object10 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %31 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object10, align 8, !tbaa !76
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %33 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %34 = bitcast %struct.stream_A85E_state_s* %33 to i8*
  call void %31(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0)) #4
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !76
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %38 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %36(%struct.gs_memory_s* %37, i8* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %39 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %39, i32 0, i32 0
  store %struct.stream_template_s* @s_A85E_template, %struct.stream_template_s** %templat, align 8, !tbaa !77
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %42 = bitcast %struct.stream_A85E_state_s* %41 to %struct.stream_state_s*
  %43 = load i8*, i8** %buf, align 8, !tbaa !1
  %44 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %strm13 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %44, i32 0, i32 47
  %45 = load %struct.stream_s*, %struct.stream_s** %strm13, align 8, !tbaa !66
  %call14 = call i32 @s_init_filter(%struct.stream_s* %40, %struct.stream_state_s* %42, i8* %43, i32 100, %struct.stream_s* %45) #4
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %47 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm15 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %47, i32 0, i32 2
  store %struct.stream_s* %46, %struct.stream_s** %strm15, align 8, !tbaa !69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %48 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20

if.else:                                          ; preds = %entry
  %51 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %strm18 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %51, i32 0, i32 47
  %52 = load %struct.stream_s*, %struct.stream_s** %strm18, align 8, !tbaa !66
  %53 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm19 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %53, i32 0, i32 2
  store %struct.stream_s* %52, %struct.stream_s** %strm19, align 8, !tbaa !69
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.20, %cleanup
  %54 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #0

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #0

declare i32 @s_init_filter(%struct.stream_s*, %struct.stream_state_s*, i8*, i32, %struct.stream_s*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %pbw, %struct.stream_template_s* %templat, %struct.stream_state_s* %ss) #1 {
entry:
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %ss.addr = alloca %struct.stream_state_s*, align 8
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %0, i32 0, i32 2
  %1 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %3 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %3, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !64
  %call = call %struct.stream_s* @s_add_filter(%struct.stream_s** %strm, %struct.stream_template_s* %1, %struct.stream_state_s* %2, %struct.gs_memory_s* %4) #4
  %cmp = icmp eq %struct.stream_s* %call, null
  %cond = select i1 %cmp, i32 -25, i32 0
  ret i32 %cond
}

declare %struct.stream_s* @s_add_filter(%struct.stream_s**, %struct.stream_template_s*, %struct.stream_state_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_DCT_filter(%struct.gs_param_list_s* %plist, %struct.stream_state_s* %st, i32 %Columns, i32 %Rows, i32 %Colors, %struct.psdf_binary_writer_s* %pbw) #1 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %Columns.addr = alloca i32, align 4
  %Rows.addr = alloca i32, align 4
  %Colors.addr = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %ss = alloca %struct.stream_DCT_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %rcc_list = alloca %struct.gs_c_param_list_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i32 %Columns, i32* %Columns.addr, align 4, !tbaa !39
  store i32 %Rows, i32* %Rows.addr, align 4, !tbaa !39
  store i32 %Colors, i32* %Colors.addr, align 4, !tbaa !39
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_DCT_state_s*
  store %struct.stream_DCT_state_s* %2, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !79
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_c_param_list_s* %rcc_list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %rcc_list, %struct.gs_memory_s* %9) #4
  %10 = bitcast %struct.gs_c_param_list_s* %rcc_list to %struct.gs_param_list_s*
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32* %Rows.addr) #4
  store i32 %call, i32* %code, align 4, !tbaa !39
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = bitcast %struct.gs_c_param_list_s* %rcc_list to %struct.gs_param_list_s*
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32* %Columns.addr) #4
  store i32 %call1, i32* %code, align 4, !tbaa !39
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %12 = bitcast %struct.gs_c_param_list_s* %rcc_list to %struct.gs_param_list_s*
  %call4 = call i32 @param_write_int(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32* %Colors.addr) #4
  store i32 %call4, i32* %code, align 4, !tbaa !39
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %rcc_fail

if.end:                                           ; preds = %lor.lhs.false.3
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %rcc_list) #4
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_param_list_s* %13, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  call void @gs_c_param_list_set_target(%struct.gs_c_param_list_s* %rcc_list, %struct.gs_param_list_s* %14) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %16 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !81
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call8 = call i8* %16(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* @st_jpeg_compress_data, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #4
  %18 = bitcast i8* %call8 to %struct.jpeg_compress_data_s*
  store %struct.jpeg_compress_data_s* %18, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %19 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.jpeg_compress_data_s* %19, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %20 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %21 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %21, i32 0, i32 10
  %compress = bitcast %union._jd* %data to %struct.jpeg_compress_data_s**
  store %struct.jpeg_compress_data_s* %20, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %23, i32 0, i32 9
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !82
  %24 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %24, i32 0, i32 3
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory12, align 8, !tbaa !84
  %25 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call13 = call i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s* %25) #4
  store i32 %call13, i32* %code, align 4, !tbaa !39
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  br label %dcte_fail

if.end.16:                                        ; preds = %if.end.11
  %26 = bitcast %struct.gs_c_param_list_s* %rcc_list to %struct.gs_param_list_s*
  %27 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call17 = call i32 @s_DCTE_put_params(%struct.gs_param_list_s* %26, %struct.stream_DCT_state_s* %27) #4
  store i32 %call17, i32* %code, align 4, !tbaa !39
  %28 = load i32, i32* %code, align 4, !tbaa !39
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %29 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %30 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %30, i32 0, i32 0
  %31 = bitcast %struct.stream_template_s* %templat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast (%struct.stream_template_s* @s_DCTE_template to i8*), i64 56, i32 8, i1 false), !tbaa.struct !90
  %32 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %32, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 9
  %33 = load i32, i32* %input_components, align 4, !tbaa !91
  %34 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo21 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %34, i32 0, i32 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo21, i32 0, i32 7
  %35 = load i32, i32* %image_width, align 4, !tbaa !92
  %mul = mul i32 %33, %35
  %36 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %36, i32 0, i32 14
  store i32 %mul, i32* %scan_line_size, align 4, !tbaa !93
  %37 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %icc_profile = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %37, i32 0, i32 11
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !94
  %38 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !95
  %39 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size22 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %39, i32 0, i32 14
  %40 = load i32, i32* %scan_line_size22, align 4, !tbaa !93
  %cmp23 = icmp ugt i32 %38, %40
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %41 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !95
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %42 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %scan_line_size24 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %42, i32 0, i32 14
  %43 = load i32, i32* %scan_line_size24, align 4, !tbaa !93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %43, %cond.false ]
  %44 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat25 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %44, i32 0, i32 0
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat25, i32 0, i32 3
  store i32 %cond, i32* %min_in_size, align 4, !tbaa !96
  %45 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !97
  %46 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %46, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 1
  %47 = load i32, i32* %size, align 4, !tbaa !98
  %cmp26 = icmp ugt i32 %45, %47
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end
  %48 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !97
  br label %cond.end.31

cond.false.28:                                    ; preds = %cond.end
  %49 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %Markers29 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %49, i32 0, i32 5
  %size30 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers29, i32 0, i32 1
  %50 = load i32, i32* %size30, align 4, !tbaa !98
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.27
  %cond32 = phi i32 [ %48, %cond.true.27 ], [ %50, %cond.false.28 ]
  %51 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat33 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %51, i32 0, i32 0
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat33, i32 0, i32 4
  store i32 %cond32, i32* %min_out_size, align 4, !tbaa !99
  %52 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %tobool34 = icmp ne %struct.psdf_binary_writer_s* %52, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.end.31
  %53 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %54 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat36 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %54, i32 0, i32 0
  %55 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call37 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %53, %struct.stream_template_s* %templat36, %struct.stream_state_s* %55) #4
  store i32 %call37, i32* %code, align 4, !tbaa !39
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %cond.end.31
  %56 = load i32, i32* %code, align 4, !tbaa !39
  %cmp39 = icmp sge i32 %56, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %rcc_list) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.38
  br label %dcte_fail

dcte_fail:                                        ; preds = %if.end.41, %if.then.15
  %57 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %call42 = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %57) #4
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %61 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %62 = bitcast %struct.jpeg_compress_data_s* %61 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0)) #4
  %63 = load %struct.stream_DCT_state_s*, %struct.stream_DCT_state_s** %ss, align 8, !tbaa !1
  %data44 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %63, i32 0, i32 10
  %compress45 = bitcast %union._jd* %data44 to %struct.jpeg_compress_data_s**
  store %struct.jpeg_compress_data_s* null, %struct.jpeg_compress_data_s** %compress45, align 8, !tbaa !1
  br label %rcc_fail

rcc_fail:                                         ; preds = %dcte_fail, %if.then
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %rcc_list) #4
  %64 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %rcc_fail, %if.then.40, %if.then.19, %if.then.10
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast %struct.gs_c_param_list_s* %rcc_list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %66) #2
  %67 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast %struct.stream_DCT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #0

declare void @gs_c_param_list_set_target(%struct.gs_c_param_list_s*, %struct.gs_param_list_s*) #0

declare i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s*) #0

declare i32 @s_DCTE_put_params(%struct.gs_param_list_s*, %struct.stream_DCT_state_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #0

declare i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s* %pbw, i32 %w, i32 %h, i32 %invert) #1 {
entry:
  %retval = alloca i32, align 4
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %st = alloca %struct.stream_CFE_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !39
  store i32 %h, i32* %h.addr, align 4, !tbaa !39
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !39
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !64
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct.stream_template_s* @s_CFE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %4 = bitcast %struct.stream_CFE_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !100
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !74
  %call = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)) #4
  %10 = bitcast i8* %call to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %10, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_CFE_state_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %13, i32 0, i32 6
  %14 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !101
  %15 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %16 = bitcast %struct.stream_CFE_state_s* %15 to %struct.stream_state_s*
  call void %14(%struct.stream_state_s* %16) #4
  %17 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %17, i32 0, i32 9
  store i32 -1, i32* %K, align 4, !tbaa !102
  %18 = load i32, i32* %w.addr, align 4, !tbaa !39
  %19 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %19, i32 0, i32 12
  store i32 %18, i32* %Columns, align 4, !tbaa !104
  %20 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %20, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !105
  %21 = load i32, i32* %invert.addr, align 4, !tbaa !39
  %tobool = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %22 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %22, i32 0, i32 15
  store i32 %lnot.ext, i32* %BlackIs1, align 4, !tbaa !106
  %23 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %23, i32 0, i32 2
  %24 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !69
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 18
  %25 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !107
  %templat1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %25, i32 0, i32 0
  %26 = load %struct.stream_template_s*, %struct.stream_template_s** %templat1, align 8, !tbaa !111
  %cmp2 = icmp ne %struct.stream_template_s* %26, @s_A85E_template
  %conv = zext i1 %cmp2 to i32
  %27 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %27, i32 0, i32 14
  store i32 %conv, i32* %EndOfBlock, align 4, !tbaa !112
  %28 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %29 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %30 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %31 = bitcast %struct.stream_CFE_state_s* %30 to %struct.stream_state_s*
  %call3 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %28, %struct.stream_template_s* %29, %struct.stream_state_s* %31) #4
  store i32 %call3, i32* %code, align 4, !tbaa !39
  %32 = load i32, i32* %code, align 4, !tbaa !39
  %cmp4 = icmp slt i32 %32, 0
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !76
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %36 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %st, align 8, !tbaa !1
  %37 = bitcast %struct.stream_CFE_state_s* %36 to i8*
  call void %34(%struct.gs_memory_s* %35, i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %38 = load i32, i32* %code, align 4, !tbaa !39
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.stream_CFE_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @psdf_end_binary(%struct.psdf_binary_writer_s* %pbw) #1 {
entry:
  %pbw.addr = alloca %struct.psdf_binary_writer_s*, align 8
  %status = alloca i32, align 4
  store %struct.psdf_binary_writer_s* %pbw, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %1, i32 0, i32 2
  %2 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %pbw.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %2, i32 0, i32 1
  %3 = load %struct.stream_s*, %struct.stream_s** %target, align 8, !tbaa !67
  %call = call i32 @s_close_filters(%struct.stream_s** %strm, %struct.stream_s* %3) #4
  store i32 %call, i32* %status, align 4, !tbaa !39
  %4 = load i32, i32* %status, align 4, !tbaa !39
  %cmp = icmp sge i32 %4, 0
  %cond = select i1 %cmp, i32 0, i32 -12
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret i32 %cond
}

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #0

; Function Attrs: nounwind uwtable
define i32 @psdf_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %data, i8** %actual_data) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !39
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 20
  %1 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !113
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.gx_device_s* %2, i32 1) #4
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !114
  %call1 = call i8* @gs_program_name() #4
  %call2 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %4, i8* %call1, i64 %call2) #4
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !114
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %dname, align 8, !tbaa !115
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i32 0, i32 0), i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 -28
}

; Function Attrs: nounwind uwtable
define i32 @psdf_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  ret i32 -28
}

; Function Attrs: nounwind uwtable
define i32 @psdf_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pct, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem, %struct.gx_device_s* %cdev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %call = call i32 @gs_is_overprint_compositor(%struct.gs_composite_s* %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %1, %struct.gx_device_s** %2, align 8, !tbaa !1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_default_create_compositor(%struct.gx_device_s* %3, %struct.gx_device_s** %4, %struct.gs_composite_s* %5, %struct.gs_imager_state_s* %6, %struct.gs_memory_s* %7, %struct.gx_device_s* %8) #4
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @gs_is_overprint_compositor(%struct.gs_composite_s*) #0

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 24}
!9 = !{!"gx_device_vector_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !13, i64 96, !16, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !10, i64 1052, !10, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !10, i64 5864, !10, i64 5868, !22, i64 5872, !2, i64 7488, !10, i64 7496, !10, i64 7500, !10, i64 7504, !34, i64 7512, !34, i64 8144, !12, i64 8776, !12, i64 8784, !3, i64 8792, !3, i64 8796, !28, i64 8800, !10, i64 8816, !2, i64 8824, !12, i64 8832, !12, i64 8840}
!10 = !{!"int", !3, i64 0}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !10, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !10, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gs_imager_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !10, i64 128, !27, i64 132, !10, i64 168, !28, i64 176, !28, i64 192, !10, i64 208, !10, i64 212, !14, i64 216, !3, i64 220, !29, i64 224, !29, i64 228, !30, i64 232, !12, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !24, i64 296, !31, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !24, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !32, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !33, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !33, i64 1336}
!23 = !{!"gx_line_params_s", !24, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !10, i64 36, !25, i64 40, !26, i64 64}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!26 = !{!"gx_dash_params_s", !2, i64 0, !10, i64 8, !24, i64 12, !10, i64 16, !24, i64 20, !10, i64 24, !10, i64 28, !24, i64 32}
!27 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!28 = !{!"gs_point_s", !6, i64 0, !6, i64 8}
!29 = !{!"gs_transparency_source_s", !24, i64 0}
!30 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!31 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!32 = !{!"gx_transfer_s", !10, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !10, i64 32, !2, i64 40, !10, i64 48, !2, i64 56}
!33 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !3, i64 24}
!34 = !{!"gx_hl_saved_color_s", !12, i64 0, !12, i64 8, !10, i64 16, !35, i64 24, !37, i64 288}
!35 = !{!"gs_client_color_s", !2, i64 0, !36, i64 8}
!36 = !{!"gs_paint_color_s", !3, i64 0}
!37 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !38, i64 336}
!38 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!39 = !{!10, !10, i64 0}
!40 = !{!24, !24, i64 0}
!41 = !{!9, !2, i64 1736}
!42 = !{!43, !2, i64 104}
!43 = !{!"gx_device_vector_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144}
!44 = !{!43, !2, i64 144}
!45 = !{!12, !12, i64 0}
!46 = !{!9, !10, i64 100}
!47 = !{!48, !2, i64 1680}
!48 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !13, i64 96, !16, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !10, i64 1052, !10, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!49 = !{!50, !2, i64 0}
!50 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !38, i64 352, !10, i64 360, !35, i64 368, !51, i64 632}
!51 = !{!"_mask", !52, i64 0, !12, i64 8, !2, i64 16}
!52 = !{!"mp_", !10, i64 0, !10, i64 4}
!53 = !{!54, !2, i64 0}
!54 = !{!"psdf_set_color_commands_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!55 = !{!54, !2, i64 16}
!56 = !{!54, !2, i64 8}
!57 = !{!58, !2, i64 1728}
!58 = !{!"gx_device_psdf_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !13, i64 96, !16, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !10, i64 1052, !10, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !10, i64 5864, !10, i64 5868, !22, i64 5872, !2, i64 7488, !10, i64 7496, !10, i64 7500, !10, i64 7504, !34, i64 7512, !34, i64 8144, !12, i64 8776, !12, i64 8784, !3, i64 8792, !3, i64 8796, !28, i64 8800, !10, i64 8816, !2, i64 8824, !12, i64 8832, !12, i64 8840, !3, i64 8848, !10, i64 8852, !10, i64 8856, !10, i64 8860, !10, i64 8864, !6, i64 8872, !59, i64 8880}
!59 = !{!"psdf_distiller_params_s", !10, i64 0, !3, i64 4, !3, i64 8, !10, i64 12, !3, i64 16, !10, i64 20, !10, i64 24, !12, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !60, i64 64, !60, i64 80, !60, i64 96, !60, i64 112, !3, i64 128, !10, i64 132, !10, i64 136, !3, i64 140, !3, i64 144, !61, i64 152, !10, i64 232, !10, i64 236, !61, i64 240, !61, i64 320, !62, i64 400, !62, i64 416, !3, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !63, i64 448, !62, i64 464}
!60 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!61 = !{!"psdf_image_params_s", !2, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !2, i64 24, !10, i64 32, !24, i64 36, !3, i64 40, !10, i64 44, !2, i64 48, !10, i64 56, !2, i64 64, !2, i64 72}
!62 = !{!"gs_param_string_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!63 = !{!"gs_param_string_s", !2, i64 0, !10, i64 8, !10, i64 12}
!64 = !{!65, !2, i64 0}
!65 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!66 = !{!58, !2, i64 5848}
!67 = !{!65, !2, i64 8}
!68 = !{!65, !2, i64 24}
!69 = !{!65, !2, i64 16}
!70 = !{!58, !10, i64 8852}
!71 = !{!72, !2, i64 64}
!72 = !{!"gs_memory_s", !2, i64 0, !73, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!73 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!74 = !{!75, !2, i64 0}
!75 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !10, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!76 = !{!72, !2, i64 24}
!77 = !{!78, !2, i64 0}
!78 = !{!"stream_A85E_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !10, i64 108, !10, i64 112}
!79 = !{!80, !2, i64 8}
!80 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28}
!81 = !{!72, !2, i64 80}
!82 = !{!83, !2, i64 144}
!83 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !60, i64 112, !24, i64 128, !10, i64 132, !10, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !12, i64 176, !10, i64 184, !10, i64 188}
!84 = !{!85, !2, i64 432}
!85 = !{!"jpeg_compress_data_s", !75, i64 0, !86, i64 56, !87, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !10, i64 456, !10, i64 460, !88, i64 464, !89, i64 1048, !3, i64 1088, !10, i64 1188, !10, i64 1192}
!86 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !3, i64 44, !10, i64 124, !12, i64 128, !2, i64 136, !10, i64 144, !2, i64 152, !10, i64 160, !10, i64 164}
!87 = !{!"", !3, i64 0}
!88 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !10, i64 36, !2, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !3, i64 60, !6, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !10, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !10, i64 308, !3, i64 312, !10, i64 316, !10, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !14, i64 332, !14, i64 334, !3, i64 336, !3, i64 340, !10, i64 344, !3, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !3, i64 376, !10, i64 408, !10, i64 412, !10, i64 416, !3, i64 420, !10, i64 460, !10, i64 464, !10, i64 468, !10, i64 472, !10, i64 476, !2, i64 480, !10, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !10, i64 576}
!89 = !{!"jpeg_destination_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!90 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!91 = !{!85, !10, i64 520}
!92 = !{!85, !10, i64 512}
!93 = !{!83, !10, i64 184}
!94 = !{!83, !2, i64 160}
!95 = !{!75, !10, i64 24}
!96 = !{!85, !10, i64 24}
!97 = !{!75, !10, i64 28}
!98 = !{!83, !10, i64 120}
!99 = !{!85, !10, i64 28}
!100 = !{!72, !2, i64 72}
!101 = !{!75, !2, i64 40}
!102 = !{!103, !10, i64 124}
!103 = !{!"stream_CFE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !2, i64 168, !2, i64 176, !10, i64 184, !10, i64 188, !2, i64 192, !10, i64 200, !10, i64 204, !10, i64 208}
!104 = !{!103, !10, i64 136}
!105 = !{!103, !10, i64 140}
!106 = !{!103, !10, i64 148}
!107 = !{!108, !2, i64 256}
!108 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !10, i64 144, !10, i64 148, !14, i64 152, !3, i64 154, !3, i64 155, !109, i64 160, !12, i64 176, !110, i64 184, !2, i64 240, !10, i64 248, !10, i64 252, !2, i64 256, !14, i64 264, !14, i64 266, !2, i64 272, !2, i64 280, !10, i64 288, !10, i64 292, !2, i64 296, !2, i64 304, !60, i64 312, !10, i64 328, !12, i64 336, !12, i64 344}
!109 = !{!"gs_string_s", !2, i64 0, !10, i64 8}
!110 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!111 = !{!80, !2, i64 0}
!112 = !{!103, !10, i64 144}
!113 = !{!48, !2, i64 1304}
!114 = !{!48, !2, i64 24}
!115 = !{!48, !2, i64 16}
