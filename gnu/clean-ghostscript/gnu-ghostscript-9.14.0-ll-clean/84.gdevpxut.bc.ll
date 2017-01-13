; ModuleID = './gdevpxut.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8*, float, float }
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }

@px_write_file_header.enter_pjl_header = internal constant i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [30 x i8] c"\1B%-12345X@PJL SET RENDERMODE=\00", align 1
@px_write_file_header.rendermode_gray = internal constant i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@px_write_file_header.rendermode_color = internal constant i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@px_write_file_header.pjl_resolution = internal constant i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A@PJL SET RESOLUTION=\00", align 1
@px_write_file_header.resolution_150 = internal constant i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"150\00", align 1
@px_write_file_header.resolution_300 = internal constant i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"300\00", align 1
@px_write_file_header.resolution_600 = internal constant i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"600\00", align 1
@px_write_file_header.resolution_1200 = internal constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"1200\00", align 1
@px_write_file_header.resolution_2400 = internal constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"2400\00", align 1
@px_write_file_header.file_header = internal constant i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.9, i32 0, i32 0), align 8
@.str.9 = private unnamed_addr constant [92 x i8] c"\0A@PJL ENTER LANGUAGE = PCLXL\0A) HP-PCL XL;1;1;Comment Copyright Artifex Sofware, Inc. 2005\00\0A\00", align 1
@px_write_file_header.stream_header = internal constant [20 x i8] c"\F8\89\C0\00\F8\86\C0\03\F8\8FA\C0\00\F8\88\C0\01\F8\82H", align 16
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@px_write_select_media.media_sizes = internal constant [44 x %struct.anon] [%struct.anon { i32 96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), float 1.000000e+00, float 1.000000e+00 }, %struct.anon { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), float 8.500000e+00, float 1.100000e+01 }, %struct.anon { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), float 8.500000e+00, float 1.400000e+01 }, %struct.anon { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), float 0x4020888880000000, float 0x40276147A0000000 }, %struct.anon { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), float 7.250000e+00, float 1.050000e+01 }, %struct.anon { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), float 1.100000e+01, float 1.700000e+01 }, %struct.anon { i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), float 0x40276147A0000000, float 0x4030888880000000 }, %struct.anon { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), float 0x40107E4B20000000, float 9.500000e+00 }, %struct.anon { i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), float 0x400EFC9620000000, float 7.500000e+00 }, %struct.anon { i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), float 0x401981B4E0000000, float 0x402206D3A0000000 }, %struct.anon { i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), float 0x401151EB80000000, float 0x402151EB80000000 }, %struct.anon { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), float 0x40243BBBC0000000, float 0x402CA8F5C0000000 }, %struct.anon { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), float 0x40243BBBC0000000, float 0x402CA8F5C0000000 }, %struct.anon { i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), float 0x401CAAAAA0000000, float 0x40243BBBC0000000 }, %struct.anon { i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), float 0x401CAAAAA0000000, float 0x40243BBBC0000000 }, %struct.anon { i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), float 0x401BB4E820000000, float 0x4023AE1480000000 }, %struct.anon { i32 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), float 0x401CAAAAA0000000, float 0x40243BBBC0000000 }, %struct.anon { i32 14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), float 0x400F7E4B20000000, float 0x40174E81C0000000 }, %struct.anon { i32 15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), float 0x401F7E4B20000000, float 0x40174E81C0000000 }, %struct.anon { i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), float 0x40174E81C0000000, float 0x4020888880000000 }, %struct.anon { i32 17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), float 0x4010888880000000, float 0x40174E81C0000000 }, %struct.anon { i32 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), float 0x401428F5C0000000, float 0x401CAAAAA0000000 }, %struct.anon { i32 19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), float 0x402506D3A0000000, float 0x402EB4E820000000 }, %struct.anon { i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), float 0x401EB4E820000000, float 0x402506D3A0000000 }, %struct.anon { i32 21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), float 0x402101B4E0000000, float 0x4029FC9620000000 }, %struct.anon { i32 201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), float 0x401428F5C0000000, float 0x401CAAAAA0000000 }, %struct.anon { i32 202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), float 0x4011EEEEE0000000, float 0x40197E4B20000000 }, %struct.anon { i32 203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), float 0x402506D3A0000000, float 0x402EB851E0000000 }, %struct.anon { i32 204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), float 0x401EB851E0000000, float 0x402506D3A0000000 }, %struct.anon { i32 205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), float 1.200000e+01, float 1.800000e+01 }, %struct.anon { i32 212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), float 1.300000e+01, float 0x4033317E40000000 }, %struct.anon { i32 213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), float 1.300000e+01, float 1.900000e+01 }, %struct.anon { i32 214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), float 0x4029317E40000000, float 0x4033317E40000000 }, %struct.anon { i32 215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), float 0x4029317E40000000, float 1.850000e+01 }, %struct.anon { i32 216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), float 1.300000e+01, float 1.800000e+01 }, %struct.anon { i32 217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), float 0x4029317E40000000, float 0x4031B851E0000000 }, %struct.anon { i32 218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), float 0x4021B851E0000000, float 0x4029317E40000000 }, %struct.anon { i32 219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), float 0x4021CCCCC0000000, float 0x402869D040000000 }, %struct.anon { i32 220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), float 0x402869D040000000, float 0x40310369E0000000 }, %struct.anon { i32 221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), float 8.000000e+00, float 1.000000e+01 }, %struct.anon { i32 222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), float 1.100000e+01, float 1.400000e+01 }, %struct.anon { i32 223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), float 1.100000e+01, float 1.500000e+01 }, %struct.anon { i32 224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), float 1.000000e+01, float 1.400000e+01 }, %struct.anon { i32 225, i8* null, float 0.000000e+00, float 0.000000e+00 }], align 16
@.str.11 = private unnamed_addr constant [13 x i8] c"defaultpaper\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"executive\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ledger\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"com10\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"monarch\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"c5\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"jisb4\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"jis b4\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"jisb5\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"jis b5\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"b5paper\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"jpost\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"jpostd\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"jisb6\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"jis8K\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"jis16K\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"jisexec\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"B6 (JIS)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"8Kai\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"16Kai\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"12x18\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"13x19.2\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"13x19\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"12.6x19.2\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"12.6x18.5\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"13x18\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"SRA3\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"SRA4\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"226x310\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"310x432\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"EngQuatro\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"11x14\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"11x15\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@px_write_file_trailer.file_trailer = internal constant [11 x i8] c"IB\1B%-12345X", align 1

; Function Attrs: nounwind uwtable
define i32 @px_write_file_header(%struct.stream_s* %s, %struct.gx_device_s* %dev) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** @px_write_file_header.enter_pjl_header, align 8, !tbaa !1
  %2 = load i8*, i8** @px_write_file_header.enter_pjl_header, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  call void @px_put_bytes(%struct.stream_s* %0, i8* %1, i32 %conv) #7
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load i8*, i8** @px_write_file_header.rendermode_gray, align 8, !tbaa !1
  %7 = load i8*, i8** @px_write_file_header.rendermode_gray, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %7) #6
  %conv3 = trunc i64 %call2 to i32
  call void @px_put_bytes(%struct.stream_s* %5, i8* %6, i32 %conv3) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load i8*, i8** @px_write_file_header.rendermode_color, align 8, !tbaa !1
  %10 = load i8*, i8** @px_write_file_header.rendermode_color, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %10) #6
  %conv5 = trunc i64 %call4 to i32
  call void @px_put_bytes(%struct.stream_s* %8, i8* %9, i32 %conv5) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i8*, i8** @px_write_file_header.pjl_resolution, align 8, !tbaa !1
  %13 = load i8*, i8** @px_write_file_header.pjl_resolution, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %13) #6
  %conv7 = trunc i64 %call6 to i32
  call void @px_put_bytes(%struct.stream_s* %11, i8* %12, i32 %conv7) #7
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !19
  %conv8 = fpext float %15 to double
  %add = fadd double %conv8, 5.000000e-01
  %conv9 = fptoui double %add to i32
  %cmp10 = icmp eq i32 %conv9, 150
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load i8*, i8** @px_write_file_header.resolution_150, align 8, !tbaa !1
  %18 = load i8*, i8** @px_write_file_header.resolution_150, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %18) #6
  %conv14 = trunc i64 %call13 to i32
  call void @px_put_bytes(%struct.stream_s* %16, i8* %17, i32 %conv14) #7
  br label %if.end.54

if.else.15:                                       ; preds = %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 0
  %20 = load float, float* %arrayidx17, align 4, !tbaa !19
  %conv18 = fpext float %20 to double
  %add19 = fadd double %conv18, 5.000000e-01
  %conv20 = fptoui double %add19 to i32
  %cmp21 = icmp eq i32 %conv20, 300
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.else.15
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load i8*, i8** @px_write_file_header.resolution_300, align 8, !tbaa !1
  %23 = load i8*, i8** @px_write_file_header.resolution_300, align 8, !tbaa !1
  %call24 = call i64 @strlen(i8* %23) #6
  %conv25 = trunc i64 %call24 to i32
  call void @px_put_bytes(%struct.stream_s* %21, i8* %22, i32 %conv25) #7
  br label %if.end.53

if.else.26:                                       ; preds = %if.else.15
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 22
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution27, i32 0, i64 0
  %25 = load float, float* %arrayidx28, align 4, !tbaa !19
  %conv29 = fpext float %25 to double
  %add30 = fadd double %conv29, 5.000000e-01
  %conv31 = fptoui double %add30 to i32
  %cmp32 = icmp eq i32 %conv31, 1200
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else.26
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %27 = load i8*, i8** @px_write_file_header.resolution_1200, align 8, !tbaa !1
  %28 = load i8*, i8** @px_write_file_header.resolution_1200, align 8, !tbaa !1
  %call35 = call i64 @strlen(i8* %28) #6
  %conv36 = trunc i64 %call35 to i32
  call void @px_put_bytes(%struct.stream_s* %26, i8* %27, i32 %conv36) #7
  br label %if.end.52

if.else.37:                                       ; preds = %if.else.26
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 22
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution38, i32 0, i64 0
  %30 = load float, float* %arrayidx39, align 4, !tbaa !19
  %conv40 = fpext float %30 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %conv42 = fptoui double %add41 to i32
  %cmp43 = icmp eq i32 %conv42, 2400
  br i1 %cmp43, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.else.37
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %32 = load i8*, i8** @px_write_file_header.resolution_2400, align 8, !tbaa !1
  %33 = load i8*, i8** @px_write_file_header.resolution_2400, align 8, !tbaa !1
  %call46 = call i64 @strlen(i8* %33) #6
  %conv47 = trunc i64 %call46 to i32
  call void @px_put_bytes(%struct.stream_s* %31, i8* %32, i32 %conv47) #7
  br label %if.end.51

if.else.48:                                       ; preds = %if.else.37
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %35 = load i8*, i8** @px_write_file_header.resolution_600, align 8, !tbaa !1
  %36 = load i8*, i8** @px_write_file_header.resolution_600, align 8, !tbaa !1
  %call49 = call i64 @strlen(i8* %36) #6
  %conv50 = trunc i64 %call49 to i32
  call void @px_put_bytes(%struct.stream_s* %34, i8* %35, i32 %conv50) #7
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.34
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.23
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.12
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 22
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution55, i32 0, i64 1
  %38 = load float, float* %arrayidx56, align 4, !tbaa !19
  %conv57 = fpext float %38 to double
  %add58 = fadd double %conv57, 5.000000e-01
  %conv59 = fptoui double %add58 to i32
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 22
  %arrayidx61 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution60, i32 0, i64 0
  %40 = load float, float* %arrayidx61, align 4, !tbaa !19
  %conv62 = fpext float %40 to double
  %add63 = fadd double %conv62, 5.000000e-01
  %conv64 = fptoui double %add63 to i32
  %cmp65 = icmp ne i32 %conv59, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.120

if.then.67:                                       ; preds = %if.end.54
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call68 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %conv69 = trunc i64 %call68 to i32
  call void @px_put_bytes(%struct.stream_s* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 %conv69) #7
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution70 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 22
  %arrayidx71 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution70, i32 0, i64 1
  %43 = load float, float* %arrayidx71, align 4, !tbaa !19
  %conv72 = fpext float %43 to double
  %add73 = fadd double %conv72, 5.000000e-01
  %conv74 = fptoui double %add73 to i32
  %cmp75 = icmp eq i32 %conv74, 150
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.then.67
  %44 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %45 = load i8*, i8** @px_write_file_header.resolution_150, align 8, !tbaa !1
  %46 = load i8*, i8** @px_write_file_header.resolution_150, align 8, !tbaa !1
  %call78 = call i64 @strlen(i8* %46) #6
  %conv79 = trunc i64 %call78 to i32
  call void @px_put_bytes(%struct.stream_s* %44, i8* %45, i32 %conv79) #7
  br label %if.end.119

if.else.80:                                       ; preds = %if.then.67
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution81 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 22
  %arrayidx82 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution81, i32 0, i64 1
  %48 = load float, float* %arrayidx82, align 4, !tbaa !19
  %conv83 = fpext float %48 to double
  %add84 = fadd double %conv83, 5.000000e-01
  %conv85 = fptoui double %add84 to i32
  %cmp86 = icmp eq i32 %conv85, 300
  br i1 %cmp86, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %if.else.80
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %50 = load i8*, i8** @px_write_file_header.resolution_300, align 8, !tbaa !1
  %51 = load i8*, i8** @px_write_file_header.resolution_300, align 8, !tbaa !1
  %call89 = call i64 @strlen(i8* %51) #6
  %conv90 = trunc i64 %call89 to i32
  call void @px_put_bytes(%struct.stream_s* %49, i8* %50, i32 %conv90) #7
  br label %if.end.118

if.else.91:                                       ; preds = %if.else.80
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution92 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 22
  %arrayidx93 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution92, i32 0, i64 1
  %53 = load float, float* %arrayidx93, align 4, !tbaa !19
  %conv94 = fpext float %53 to double
  %add95 = fadd double %conv94, 5.000000e-01
  %conv96 = fptoui double %add95 to i32
  %cmp97 = icmp eq i32 %conv96, 1200
  br i1 %cmp97, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %if.else.91
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %55 = load i8*, i8** @px_write_file_header.resolution_1200, align 8, !tbaa !1
  %56 = load i8*, i8** @px_write_file_header.resolution_1200, align 8, !tbaa !1
  %call100 = call i64 @strlen(i8* %56) #6
  %conv101 = trunc i64 %call100 to i32
  call void @px_put_bytes(%struct.stream_s* %54, i8* %55, i32 %conv101) #7
  br label %if.end.117

if.else.102:                                      ; preds = %if.else.91
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution103 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 22
  %arrayidx104 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution103, i32 0, i64 1
  %58 = load float, float* %arrayidx104, align 4, !tbaa !19
  %conv105 = fpext float %58 to double
  %add106 = fadd double %conv105, 5.000000e-01
  %conv107 = fptoui double %add106 to i32
  %cmp108 = icmp eq i32 %conv107, 2400
  br i1 %cmp108, label %if.then.110, label %if.else.113

if.then.110:                                      ; preds = %if.else.102
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %60 = load i8*, i8** @px_write_file_header.resolution_2400, align 8, !tbaa !1
  %61 = load i8*, i8** @px_write_file_header.resolution_2400, align 8, !tbaa !1
  %call111 = call i64 @strlen(i8* %61) #6
  %conv112 = trunc i64 %call111 to i32
  call void @px_put_bytes(%struct.stream_s* %59, i8* %60, i32 %conv112) #7
  br label %if.end.116

if.else.113:                                      ; preds = %if.else.102
  %62 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %63 = load i8*, i8** @px_write_file_header.resolution_600, align 8, !tbaa !1
  %64 = load i8*, i8** @px_write_file_header.resolution_600, align 8, !tbaa !1
  %call114 = call i64 @strlen(i8* %64) #6
  %conv115 = trunc i64 %call114 to i32
  call void @px_put_bytes(%struct.stream_s* %62, i8* %63, i32 %conv115) #7
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.110
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.99
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.88
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.77
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.54
  %65 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %66 = load i8*, i8** @px_write_file_header.file_header, align 8, !tbaa !1
  %67 = load i8*, i8** @px_write_file_header.file_header, align 8, !tbaa !1
  %call121 = call i64 @strlen(i8* %67) #6
  %add122 = add i64 %call121, 2
  %conv123 = trunc i64 %add122 to i32
  call void @px_put_bytes(%struct.stream_s* %65, i8* %66, i32 %conv123) #7
  %68 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 22
  %arrayidx125 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution124, i32 0, i64 0
  %70 = load float, float* %arrayidx125, align 4, !tbaa !19
  %conv126 = fpext float %70 to double
  %add127 = fadd double %conv126, 5.000000e-01
  %conv128 = fptoui double %add127 to i32
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution129 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 22
  %arrayidx130 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution129, i32 0, i64 1
  %72 = load float, float* %arrayidx130, align 4, !tbaa !19
  %conv131 = fpext float %72 to double
  %add132 = fadd double %conv131, 5.000000e-01
  %conv133 = fptoui double %add132 to i32
  call void @px_put_usp(%struct.stream_s* %68, i32 %conv128, i32 %conv133) #7
  %73 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_bytes(%struct.stream_s* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @px_write_file_header.stream_header, i32 0, i32 0), i32 20) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @px_put_bytes(%struct.stream_s* %s, i8* %data, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !21
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !21
  %call = call i32 @sputs(%struct.stream_s* %1, i8* %2, i32 %3, i32* %used) #7
  %4 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @px_put_usp(%struct.stream_s* %s, i32 %ix, i32 %iy) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ix.addr = alloca i32, align 4
  %iy.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %ix, i32* %ix.addr, align 4, !tbaa !21
  store i32 %iy, i32* %iy.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext -47) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i32, i32* %ix.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %1, i32 %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i32, i32* %iy.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %3, i32 %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @px_write_page_header(%struct.stream_s* %s, %struct.gx_device_s* %dev) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @px_write_select_media(%struct.stream_s* %s, %struct.gx_device_s* %dev, i32* %pms, i8* %media_source, i32 %page, i32 %Duplex, i32 %Tumble, i32 %media_type_set, i8* %media_type) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pms.addr = alloca i32*, align 8
  %media_source.addr = alloca i8*, align 8
  %page.addr = alloca i32, align 4
  %Duplex.addr = alloca i32, align 4
  %Tumble.addr = alloca i32, align 4
  %media_type_set.addr = alloca i32, align 4
  %media_type.addr = alloca i8*, align 8
  %w = alloca float, align 4
  %h = alloca float, align 4
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %tray = alloca i8, align 1
  %orientation = alloca i8, align 1
  %match_found = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %pms, i32** %pms.addr, align 8, !tbaa !1
  store i8* %media_source, i8** %media_source.addr, align 8, !tbaa !1
  store i32 %page, i32* %page.addr, align 4, !tbaa !21
  store i32 %Duplex, i32* %Duplex.addr, align 4, !tbaa !21
  store i32 %Tumble, i32* %Tumble.addr, align 4, !tbaa !21
  store i32 %media_type_set, i32* %media_type_set.addr, align 4, !tbaa !21
  store i8* %media_type, i8** %media_type.addr, align 8, !tbaa !1
  %0 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !22
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !19
  %div = fdiv float %conv, %4
  store float %div, float* %w, align 4, !tbaa !19
  %5 = bitcast float* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !23
  %conv1 = sitofp i32 %7 to float
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !19
  %div4 = fdiv float %conv1, %9
  store float %div4, float* %h, align 4, !tbaa !19
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 96, i32* %size, align 4, !tbaa !24
  call void @llvm.lifetime.start(i64 1, i8* %tray) #2
  store i8 1, i8* %tray, align 1, !tbaa !24
  call void @llvm.lifetime.start(i64 1, i8* %orientation) #2
  store i8 0, i8* %orientation, align 1, !tbaa !24
  %12 = bitcast i32* %match_found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %match_found, align 4, !tbaa !21
  store i32 42, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !21
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom
  %width7 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 2
  %15 = load float, float* %width7, align 4, !tbaa !25
  %16 = load float, float* %w, align 4, !tbaa !19
  %sub = fsub float %15, %16
  %conv8 = fpext float %sub to double
  %call = call double @fabs(double %conv8) #8
  %cmp9 = fcmp olt double %call, 5.000000e-02
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom11
  %height13 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx12, i32 0, i32 3
  %18 = load float, float* %height13, align 4, !tbaa !27
  %19 = load float, float* %h, align 4, !tbaa !19
  %sub14 = fsub float %18, %19
  %conv15 = fpext float %sub14 to double
  %call16 = call double @fabs(double %conv15) #8
  %cmp17 = fcmp olt double %call16, 5.000000e-02
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom20
  %ms = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 0
  %21 = load i32, i32* %ms, align 4, !tbaa !28
  %cmp22 = icmp ult i32 %21, 22
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.19
  store i32 1, i32* %match_found, align 4, !tbaa !21
  %22 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom24
  %ms26 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx25, i32 0, i32 0
  %23 = load i32, i32* %ms26, align 4, !tbaa !28
  store i32 %23, i32* %size, align 4, !tbaa !24
  br label %for.end

if.else:                                          ; preds = %land.lhs.true.19, %land.lhs.true, %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom27
  %height29 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx28, i32 0, i32 3
  %25 = load float, float* %height29, align 4, !tbaa !27
  %26 = load float, float* %w, align 4, !tbaa !19
  %sub30 = fsub float %25, %26
  %conv31 = fpext float %sub30 to double
  %call32 = call double @fabs(double %conv31) #8
  %cmp33 = fcmp olt double %call32, 5.000000e-02
  br i1 %cmp33, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %if.else
  %27 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom36
  %width38 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx37, i32 0, i32 2
  %28 = load float, float* %width38, align 4, !tbaa !25
  %29 = load float, float* %h, align 4, !tbaa !19
  %sub39 = fsub float %28, %29
  %conv40 = fpext float %sub39 to double
  %call41 = call double @fabs(double %conv40) #8
  %cmp42 = fcmp olt double %call41, 5.000000e-02
  br i1 %cmp42, label %land.lhs.true.44, label %if.end

land.lhs.true.44:                                 ; preds = %land.lhs.true.35
  %30 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom45
  %ms47 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx46, i32 0, i32 0
  %31 = load i32, i32* %ms47, align 4, !tbaa !28
  %cmp48 = icmp ult i32 %31, 22
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %match_found, align 4, !tbaa !21
  %32 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @px_write_select_media.media_sizes, i32 0, i64 %idxprom51
  %ms53 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx52, i32 0, i32 0
  %33 = load i32, i32* %ms53, align 4, !tbaa !28
  store i32 %33, i32* %size, align 4, !tbaa !24
  store i8 1, i8* %orientation, align 1, !tbaa !24
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.44, %land.lhs.true.35, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %34 = load i32, i32* %i, align 4, !tbaa !21
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then.50, %if.then, %for.cond
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %36 = load i8, i8* %orientation, align 1, !tbaa !24
  call void @px_put_uba(%struct.stream_s* %35, i8 zeroext %36, i32 40) #7
  %37 = load i32, i32* %match_found, align 4, !tbaa !21
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %for.end
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %39 = load i32, i32* %size, align 4, !tbaa !24
  %conv56 = trunc i32 %39 to i8
  call void @px_put_uba(%struct.stream_s* %38, i8 zeroext %conv56, i32 37) #7
  br label %if.end.60

if.else.57:                                       ; preds = %for.end
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %41 = load float, float* %w, align 4, !tbaa !19
  %conv58 = fpext float %41 to double
  %42 = load float, float* %h, align 4, !tbaa !19
  %conv59 = fpext float %42 to double
  call void @px_put_rpa(%struct.stream_s* %40, double %conv58, double %conv59, i32 47) #7
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %43, i8 zeroext 0, i32 48) #7
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.55
  %44 = load i8*, i8** %media_source.addr, align 8, !tbaa !1
  %cmp61 = icmp ne i8* %44, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %45 = load i8*, i8** %media_source.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !24
  store i8 %46, i8* %tray, align 1, !tbaa !24
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.60
  %47 = load i32, i32* %media_type_set.addr, align 4, !tbaa !21
  %tobool65 = icmp ne i32 %47, 0
  br i1 %tobool65, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %if.end.64
  %48 = load i8, i8* %tray, align 1, !tbaa !24
  %conv66 = zext i8 %48 to i32
  %cmp67 = icmp ne i32 %conv66, 1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false, %if.end.64
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %50 = load i8, i8* %tray, align 1, !tbaa !24
  call void @px_put_uba(%struct.stream_s* %49, i8 zeroext %50, i32 38) #7
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %lor.lhs.false
  %51 = load i32, i32* %media_type_set.addr, align 4, !tbaa !21
  %tobool71 = icmp ne i32 %51, 0
  br i1 %tobool71, label %if.then.72, label %if.end.83

if.then.72:                                       ; preds = %if.end.70
  %52 = load i8, i8* %tray, align 1, !tbaa !24
  %conv73 = zext i8 %52 to i32
  %cmp74 = icmp eq i32 %conv73, 1
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.then.72
  %53 = load i8*, i8** %media_type.addr, align 8, !tbaa !1
  %call77 = call i64 @strlen(i8* %53) #6
  %tobool78 = icmp ne i64 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %lor.lhs.false.76, %if.then.72
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %media_type.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %media_type.addr, align 8, !tbaa !1
  %call80 = call i64 @strlen(i8* %56) #6
  %conv81 = trunc i64 %call80 to i32
  call void @px_put_ubaa(%struct.stream_s* %54, i8* %55, i32 %conv81, i32 39) #7
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %lor.lhs.false.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.70
  br label %do.body

do.body:                                          ; preds = %if.end.83
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load i32, i32* %Duplex.addr, align 4, !tbaa !21
  %tobool84 = icmp ne i32 %57, 0
  br i1 %tobool84, label %if.then.85, label %if.else.94

if.then.85:                                       ; preds = %do.end
  %58 = load i32, i32* %Tumble.addr, align 4, !tbaa !21
  %tobool86 = icmp ne i32 %58, 0
  br i1 %tobool86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.then.85
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %59, i8 zeroext 0, i32 53) #7
  br label %if.end.89

if.else.88:                                       ; preds = %if.then.85
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %60, i8 zeroext 1, i32 53) #7
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.then.87
  %61 = load i32, i32* %page.addr, align 4, !tbaa !21
  %and = and i32 %61, 1
  %tobool90 = icmp ne i32 %and, 0
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.end.89
  %62 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %62, i8 zeroext 0, i32 54) #7
  br label %if.end.93

if.else.92:                                       ; preds = %if.end.89
  %63 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %63, i8 zeroext 1, i32 54) #7
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.else.94:                                       ; preds = %do.end
  %64 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @px_put_uba(%struct.stream_s* %64, i8 zeroext 0, i32 52) #7
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.end.93
  %65 = load i32*, i32** %pms.addr, align 8, !tbaa !1
  %tobool96 = icmp ne i32* %65, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.95
  %66 = load i32, i32* %size, align 4, !tbaa !24
  %67 = load i32*, i32** %pms.addr, align 8, !tbaa !1
  store i32 %66, i32* %67, align 4, !tbaa !24
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.95
  %68 = bitcast i32* %match_found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  call void @llvm.lifetime.end(i64 1, i8* %orientation) #2
  call void @llvm.lifetime.end(i64 1, i8* %tray) #2
  %69 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast float* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define void @px_put_uba(%struct.stream_s* %s, i8 zeroext %b, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %b.addr = alloca i8, align 1
  %a.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8 %b, i8* %b.addr, align 1, !tbaa !24
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %b.addr, align 1, !tbaa !24
  call void @px_put_ub(%struct.stream_s* %0, i8 zeroext %1) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %a.addr, align 4, !tbaa !24
  call void @px_put_a(%struct.stream_s* %2, i32 %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_rpa(%struct.stream_s* %s, double %rx, double %ry, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %rx.addr = alloca double, align 8
  %ry.addr = alloca double, align 8
  %a.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store double %rx, double* %rx.addr, align 8, !tbaa !29
  store double %ry, double* %ry.addr, align 8, !tbaa !29
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load double, double* %rx.addr, align 8, !tbaa !29
  %2 = load double, double* %ry.addr, align 8, !tbaa !29
  call void @px_put_rp(%struct.stream_s* %0, double %1, double %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i32, i32* %a.addr, align 4, !tbaa !24
  call void @px_put_a(%struct.stream_s* %3, i32 %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_ubaa(%struct.stream_s* %s, i8* %data, i32 %count, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !21
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  %0 = load i32, i32* %count.addr, align 4, !tbaa !21
  %cmp = icmp ult i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext -56) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !21
  call void @px_put_us(%struct.stream_s* %2, i32 %3) #7
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %count.addr, align 4, !tbaa !21
  call void @px_put_bytes(%struct.stream_s* %4, i8* %5, i32 %6) #7
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a.addr, align 4, !tbaa !24
  call void @px_put_a(%struct.stream_s* %7, i32 %8) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @px_write_file_trailer(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @px_write_file_trailer.file_trailer, i32 0, i32 0), i64 1, i64 11, %struct._IO_FILE* %0) #7
  ret i32 0
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #4

; Function Attrs: nounwind uwtable
define void @px_put_a(%struct.stream_s* %s, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %a.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %7 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 -8, i8* %7, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %8, i8 zeroext -8) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %10 = load i8*, i8** %ptr11, align 8, !tbaa !31
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_write_s*
  %limit14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w13, i32 0, i32 2
  %12 = load i8*, i8** %limit14, align 8, !tbaa !33
  %cmp15 = icmp uge i8* %10, %12
  br i1 %cmp15, label %cond.false.24, label %cond.true.16

cond.true.16:                                     ; preds = %cond.end
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %ptr19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 1
  %14 = load i8*, i8** %ptr19, align 8, !tbaa !31
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr20, i8** %ptr19, align 8, !tbaa !31
  %15 = load i32, i32* %a.addr, align 4, !tbaa !24
  %conv = trunc i32 %15 to i8
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_write_s*
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w22, i32 0, i32 1
  %17 = load i8*, i8** %ptr23, align 8, !tbaa !31
  store i8 %conv, i8* %17, align 1, !tbaa !24
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.end
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i32, i32* %a.addr, align 4, !tbaa !24
  %conv25 = trunc i32 %19 to i8
  %call26 = call i32 @spputc(%struct.stream_s* %18, i8 zeroext %conv25) #7
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.16
  %cond28 = phi i32 [ 0, %cond.true.16 ], [ %call26, %cond.false.24 ]
  ret void
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #4

; Function Attrs: nounwind uwtable
define void @px_put_ac(%struct.stream_s* %s, i32 %a, i32 %op) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %a.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  store i32 %op, i32* %op.addr, align 4, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %a.addr, align 4, !tbaa !24
  call void @px_put_a(%struct.stream_s* %0, i32 %1) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %3 = load i8*, i8** %ptr, align 8, !tbaa !31
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %5 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %3, %5
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %7 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %8 = load i32, i32* %op.addr, align 4, !tbaa !24
  %conv = trunc i32 %8 to i8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %10 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 %conv, i8* %10, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i32, i32* %op.addr, align 4, !tbaa !24
  %conv9 = trunc i32 %12 to i8
  %call = call i32 @spputc(%struct.stream_s* %11, i8 zeroext %conv9) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_ub(%struct.stream_s* %s, i8 zeroext %b) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %b.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8 %b, i8* %b.addr, align 1, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %7 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 -64, i8* %7, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %8, i8 zeroext -64) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_write_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w10, i32 0, i32 1
  %10 = load i8*, i8** %ptr11, align 8, !tbaa !31
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_write_s*
  %limit14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w13, i32 0, i32 2
  %12 = load i8*, i8** %limit14, align 8, !tbaa !33
  %cmp15 = icmp uge i8* %10, %12
  br i1 %cmp15, label %cond.false.24, label %cond.true.16

cond.true.16:                                     ; preds = %cond.end
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %ptr19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 1
  %14 = load i8*, i8** %ptr19, align 8, !tbaa !31
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr20, i8** %ptr19, align 8, !tbaa !31
  %15 = load i8, i8* %b.addr, align 1, !tbaa !24
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_write_s*
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w22, i32 0, i32 1
  %17 = load i8*, i8** %ptr23, align 8, !tbaa !31
  store i8 %15, i8* %17, align 1, !tbaa !24
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load i8, i8* %b.addr, align 1, !tbaa !24
  %call25 = call i32 @spputc(%struct.stream_s* %18, i8 zeroext %19) #7
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.16
  %cond27 = phi i32 [ 0, %cond.true.16 ], [ %call25, %cond.false.24 ]
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_s(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load i32, i32* %i.addr, align 4, !tbaa !21
  %conv = trunc i32 %6 to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 %conv, i8* %8, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i.addr, align 4, !tbaa !21
  %conv9 = trunc i32 %10 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv9) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load i32, i32* %i.addr, align 4, !tbaa !21
  %cmp10 = icmp slt i32 %11, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %i.addr, align 4, !tbaa !21
  %or = or i32 %12, 32768
  store i32 %or, i32* %i.addr, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_write_s*
  %ptr14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w13, i32 0, i32 1
  %14 = load i8*, i8** %ptr14, align 8, !tbaa !31
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_write_s*
  %limit17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w16, i32 0, i32 2
  %16 = load i8*, i8** %limit17, align 8, !tbaa !33
  %cmp18 = icmp uge i8* %14, %16
  br i1 %cmp18, label %cond.false.29, label %cond.true.20

cond.true.20:                                     ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w22 = bitcast %union.stream_cursor_s* %cursor21 to %struct.stream_cursor_write_s*
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w22, i32 0, i32 1
  %18 = load i8*, i8** %ptr23, align 8, !tbaa !31
  %incdec.ptr24 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr24, i8** %ptr23, align 8, !tbaa !31
  %19 = load i32, i32* %i.addr, align 4, !tbaa !21
  %shr = ashr i32 %19, 8
  %conv25 = trunc i32 %shr to i8
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_write_s*
  %ptr28 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w27, i32 0, i32 1
  %21 = load i8*, i8** %ptr28, align 8, !tbaa !31
  store i8 %conv25, i8* %21, align 1, !tbaa !24
  br label %cond.end.33

cond.false.29:                                    ; preds = %if.end
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i.addr, align 4, !tbaa !21
  %shr30 = ashr i32 %23, 8
  %conv31 = trunc i32 %shr30 to i8
  %call32 = call i32 @spputc(%struct.stream_s* %22, i8 zeroext %conv31) #7
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.20
  %cond34 = phi i32 [ 0, %cond.true.20 ], [ %call32, %cond.false.29 ]
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_us(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %7 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 -63, i8* %7, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %8, i8 zeroext -63) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %9, i32 %10) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_usa(%struct.stream_s* %s, i32 %i, i32 %a) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  store i32 %a, i32* %a.addr, align 4, !tbaa !24
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !21
  call void @px_put_us(%struct.stream_s* %0, i32 %1) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %a.addr, align 4, !tbaa !24
  call void @px_put_a(%struct.stream_s* %2, i32 %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_u(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  %0 = load i32, i32* %i.addr, align 4, !tbaa !21
  %cmp = icmp ule i32 %0, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i32, i32* %i.addr, align 4, !tbaa !21
  %conv = trunc i32 %2 to i8
  call void @px_put_ub(%struct.stream_s* %1, i8 zeroext %conv) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i.addr, align 4, !tbaa !21
  call void @px_put_us(%struct.stream_s* %3, i32 %4) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_usq_fixed(%struct.stream_s* %s, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !21
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !21
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !21
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext -31) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i32, i32* %x0.addr, align 4, !tbaa !21
  %shr = ashr i32 %2, 8
  call void @px_put_s(%struct.stream_s* %1, i32 %shr) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !21
  %shr1 = ashr i32 %4, 8
  call void @px_put_s(%struct.stream_s* %3, i32 %shr1) #7
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load i32, i32* %x1.addr, align 4, !tbaa !21
  %shr2 = ashr i32 %6, 8
  call void @px_put_s(%struct.stream_s* %5, i32 %shr2) #7
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %8 = load i32, i32* %y1.addr, align 4, !tbaa !21
  %shr3 = ashr i32 %8, 8
  call void @px_put_s(%struct.stream_s* %7, i32 %shr3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_ss(%struct.stream_s* %s, i32 %i) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %i.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %7 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 -61, i8* %7, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %8, i8 zeroext -61) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %9, i32 %10) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_ssp(%struct.stream_s* %s, i32 %ix, i32 %iy) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ix.addr = alloca i32, align 4
  %iy.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %ix, i32* %ix.addr, align 4, !tbaa !21
  store i32 %iy, i32* %iy.addr, align 4, !tbaa !21
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %7 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 -45, i8* %7, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %8, i8 zeroext -45) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ix.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %9, i32 %10) #7
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i32, i32* %iy.addr, align 4, !tbaa !21
  call void @px_put_s(%struct.stream_s* %11, i32 %12) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_l(%struct.stream_s* %s, i64 %l) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %l.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %l, i64* %l.addr, align 8, !tbaa !34
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w2, i32 0, i32 2
  %3 = load i8*, i8** %limit, align 8, !tbaa !33
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w4, i32 0, i32 1
  %5 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !31
  %6 = load i64, i64* %l.addr, align 8, !tbaa !34
  %conv = trunc i64 %6 to i8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !31
  store i8 %conv, i8* %8, align 1, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i64, i64* %l.addr, align 8, !tbaa !34
  %conv9 = trunc i64 %10 to i8
  %call = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv9) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  %w11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_write_s*
  %ptr12 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w11, i32 0, i32 1
  %12 = load i8*, i8** %ptr12, align 8, !tbaa !31
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %limit15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 2
  %14 = load i8*, i8** %limit15, align 8, !tbaa !33
  %cmp16 = icmp uge i8* %12, %14
  br i1 %cmp16, label %cond.false.27, label %cond.true.18

cond.true.18:                                     ; preds = %cond.end
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_write_s*
  %ptr21 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w20, i32 0, i32 1
  %16 = load i8*, i8** %ptr21, align 8, !tbaa !31
  %incdec.ptr22 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr22, i8** %ptr21, align 8, !tbaa !31
  %17 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr = lshr i64 %17, 8
  %conv23 = trunc i64 %shr to i8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %w25 = bitcast %union.stream_cursor_s* %cursor24 to %struct.stream_cursor_write_s*
  %ptr26 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w25, i32 0, i32 1
  %19 = load i8*, i8** %ptr26, align 8, !tbaa !31
  store i8 %conv23, i8* %19, align 1, !tbaa !24
  br label %cond.end.31

cond.false.27:                                    ; preds = %cond.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr28 = lshr i64 %21, 8
  %conv29 = trunc i64 %shr28 to i8
  %call30 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv29) #7
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.18
  %cond32 = phi i32 [ 0, %cond.true.18 ], [ %call30, %cond.false.27 ]
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %w34 = bitcast %union.stream_cursor_s* %cursor33 to %struct.stream_cursor_write_s*
  %ptr35 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w34, i32 0, i32 1
  %23 = load i8*, i8** %ptr35, align 8, !tbaa !31
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor36 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %w37 = bitcast %union.stream_cursor_s* %cursor36 to %struct.stream_cursor_write_s*
  %limit38 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w37, i32 0, i32 2
  %25 = load i8*, i8** %limit38, align 8, !tbaa !33
  %cmp39 = icmp uge i8* %23, %25
  br i1 %cmp39, label %cond.false.51, label %cond.true.41

cond.true.41:                                     ; preds = %cond.end.31
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor42 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %w43 = bitcast %union.stream_cursor_s* %cursor42 to %struct.stream_cursor_write_s*
  %ptr44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w43, i32 0, i32 1
  %27 = load i8*, i8** %ptr44, align 8, !tbaa !31
  %incdec.ptr45 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr45, i8** %ptr44, align 8, !tbaa !31
  %28 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr46 = lshr i64 %28, 16
  %conv47 = trunc i64 %shr46 to i8
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor48 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w49 = bitcast %union.stream_cursor_s* %cursor48 to %struct.stream_cursor_write_s*
  %ptr50 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w49, i32 0, i32 1
  %30 = load i8*, i8** %ptr50, align 8, !tbaa !31
  store i8 %conv47, i8* %30, align 1, !tbaa !24
  br label %cond.end.55

cond.false.51:                                    ; preds = %cond.end.31
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %32 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr52 = lshr i64 %32, 16
  %conv53 = trunc i64 %shr52 to i8
  %call54 = call i32 @spputc(%struct.stream_s* %31, i8 zeroext %conv53) #7
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.51, %cond.true.41
  %cond56 = phi i32 [ 0, %cond.true.41 ], [ %call54, %cond.false.51 ]
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %w58 = bitcast %union.stream_cursor_s* %cursor57 to %struct.stream_cursor_write_s*
  %ptr59 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w58, i32 0, i32 1
  %34 = load i8*, i8** %ptr59, align 8, !tbaa !31
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor60 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %w61 = bitcast %union.stream_cursor_s* %cursor60 to %struct.stream_cursor_write_s*
  %limit62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w61, i32 0, i32 2
  %36 = load i8*, i8** %limit62, align 8, !tbaa !33
  %cmp63 = icmp uge i8* %34, %36
  br i1 %cmp63, label %cond.false.75, label %cond.true.65

cond.true.65:                                     ; preds = %cond.end.55
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %w67 = bitcast %union.stream_cursor_s* %cursor66 to %struct.stream_cursor_write_s*
  %ptr68 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w67, i32 0, i32 1
  %38 = load i8*, i8** %ptr68, align 8, !tbaa !31
  %incdec.ptr69 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr69, i8** %ptr68, align 8, !tbaa !31
  %39 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr70 = lshr i64 %39, 24
  %conv71 = trunc i64 %shr70 to i8
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor72 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %w73 = bitcast %union.stream_cursor_s* %cursor72 to %struct.stream_cursor_write_s*
  %ptr74 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w73, i32 0, i32 1
  %41 = load i8*, i8** %ptr74, align 8, !tbaa !31
  store i8 %conv71, i8* %41, align 1, !tbaa !24
  br label %cond.end.79

cond.false.75:                                    ; preds = %cond.end.55
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %43 = load i64, i64* %l.addr, align 8, !tbaa !34
  %shr76 = lshr i64 %43, 24
  %conv77 = trunc i64 %shr76 to i8
  %call78 = call i32 @spputc(%struct.stream_s* %42, i8 zeroext %conv77) #7
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.75, %cond.true.65
  %cond80 = phi i32 [ 0, %cond.true.65 ], [ %call78, %cond.false.75 ]
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_r(%struct.stream_s* %s, double %r) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %r.addr = alloca double, align 8
  %exp = alloca i32, align 4
  %mantissa = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store double %r, double* %r.addr, align 8, !tbaa !29
  %0 = bitcast i32* %exp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load double, double* %r.addr, align 8, !tbaa !29
  %call = call double @frexp(double %2, i32* %exp) #9
  %mul = fmul double %call, 0x4170000000000000
  %conv = fptosi double %mul to i64
  store i64 %conv, i64* %mantissa, align 8, !tbaa !34
  %3 = load i32, i32* %exp, align 4, !tbaa !21
  %cmp = icmp slt i32 %3, -126
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %mantissa, align 8, !tbaa !34
  store i32 0, i32* %exp, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %mantissa, align 8, !tbaa !34
  %cmp2 = icmp slt i64 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %exp, align 4, !tbaa !21
  %add = add nsw i32 %5, 128
  store i32 %add, i32* %exp, align 4, !tbaa !21
  %6 = load i64, i64* %mantissa, align 8, !tbaa !34
  %sub = sub nsw i64 0, %6
  store i64 %sub, i64* %mantissa, align 8, !tbaa !34
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %8 = load i64, i64* %mantissa, align 8, !tbaa !34
  %conv6 = trunc i64 %8 to i8
  %call7 = call i32 @spputc(%struct.stream_s* %7, i8 zeroext %conv6) #7
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i64, i64* %mantissa, align 8, !tbaa !34
  %shr = ashr i64 %10, 8
  %conv8 = trunc i64 %shr to i8
  %call9 = call i32 @spputc(%struct.stream_s* %9, i8 zeroext %conv8) #7
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load i32, i32* %exp, align 4, !tbaa !21
  %add10 = add nsw i32 %12, 126
  %shl = shl i32 %add10, 7
  %conv11 = sext i32 %shl to i64
  %13 = load i64, i64* %mantissa, align 8, !tbaa !34
  %shr12 = ashr i64 %13, 16
  %and = and i64 %shr12, 127
  %add13 = add nsw i64 %conv11, %and
  %conv14 = trunc i64 %add13 to i8
  %call15 = call i32 @spputc(%struct.stream_s* %11, i8 zeroext %conv14) #7
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load i32, i32* %exp, align 4, !tbaa !21
  %add16 = add nsw i32 %15, 126
  %shr17 = ashr i32 %add16, 1
  %conv18 = trunc i32 %shr17 to i8
  %call19 = call i32 @spputc(%struct.stream_s* %14, i8 zeroext %conv18) #7
  %16 = bitcast i64* %mantissa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast i32* %exp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  ret void
}

; Function Attrs: nounwind
declare double @frexp(double, i32*) #5

; Function Attrs: nounwind uwtable
define void @px_put_rl(%struct.stream_s* %s, double %r) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %r.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store double %r, double* %r.addr, align 8, !tbaa !29
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext -59) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load double, double* %r.addr, align 8, !tbaa !29
  call void @px_put_r(%struct.stream_s* %1, double %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_rp(%struct.stream_s* %s, double %rx, double %ry) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %rx.addr = alloca double, align 8
  %ry.addr = alloca double, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store double %rx, double* %rx.addr, align 8, !tbaa !29
  store double %ry, double* %ry.addr, align 8, !tbaa !29
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %0, i8 zeroext -43) #7
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load double, double* %rx.addr, align 8, !tbaa !29
  call void @px_put_r(%struct.stream_s* %1, double %2) #7
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load double, double* %ry.addr, align 8, !tbaa !29
  call void @px_put_r(%struct.stream_s* %3, double %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @px_put_data_length(%struct.stream_s* %s, i32 %num_bytes) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %num_bytes.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !21
  %0 = load i32, i32* %num_bytes.addr, align 4, !tbaa !21
  %cmp = icmp ugt i32 %0, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spputc(%struct.stream_s* %1, i8 zeroext -6) #7
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %num_bytes.addr, align 4, !tbaa !21
  %conv = zext i32 %3 to i64
  call void @px_put_l(%struct.stream_s* %2, i64 %conv) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @spputc(%struct.stream_s* %4, i8 zeroext -5) #7
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load i32, i32* %num_bytes.addr, align 4, !tbaa !21
  %conv2 = trunc i32 %6 to i8
  %call3 = call i32 @spputc(%struct.stream_s* %5, i8 zeroext %conv2) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readnone }
attributes #9 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 100}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
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
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !3, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!6, !7, i64 832}
!23 = !{!6, !7, i64 836}
!24 = !{!3, !3, i64 0}
!25 = !{!26, !20, i64 16}
!26 = !{!"", !3, i64 0, !2, i64 8, !20, i64 16, !20, i64 20}
!27 = !{!26, !20, i64 20}
!28 = !{!26, !3, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !3, i64 0}
!31 = !{!32, !2, i64 8}
!32 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!32, !2, i64 16}
!34 = !{!9, !9, i64 0}
