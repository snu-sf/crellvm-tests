; ModuleID = './gximage4.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_device_clip_s = type opaque
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }

@st_gs_image4 = internal constant %struct.gs_memory_struct_type_s { i32 1112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image4_reloc_ptrs to i8*) }, align 8
@gs_image_type_4 = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* @st_gs_image4, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image4, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_data_image_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image4_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image4_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image4_release, i32 4 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"gs_image4_t\00", align 1
@image4_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_gs_pixel_image, %struct.gc_ptr_element_s* null }, align 8
@st_gs_pixel_image = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gx_begin_image4\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_begin_image4(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %pim = alloca %struct.gs_image4_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %opaque = alloca i32, align 4
  %max_value = alloca i32, align 4
  %spp = alloca i32, align 4
  %i = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image_common_s* %2 to %struct.gs_image4_s*
  store %struct.gs_image4_s* %3, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %6 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_enum_alloc(%struct.gs_image_common_s* %5, %struct.gs_int_rect_s* %6, %struct.gs_memory_s* %7, %struct.gx_image_enum_s** %penum) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 15
  store i32 0, i32* %alpha, align 4, !tbaa !7
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %masked = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 19
  store i8 0, i8* %masked, align 1, !tbaa !30
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 45
  store i32 0, i32* %adjust, align 4, !tbaa !31
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 78
  store i32 4, i32* %image_parent_type, align 4, !tbaa !32
  %14 = bitcast i32* %opaque to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %opaque, align 4, !tbaa !5
  %15 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %16, i32 0, i32 4
  %17 = load i32, i32* %BitsPerComponent, align 4, !tbaa !33
  %shl = shl i32 1, %17
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %max_value, align 4, !tbaa !5
  %18 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %19, i32 0, i32 9
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !35
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 0
  %21 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !36
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %21, i32 0, i32 4
  %22 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !39
  %23 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %ColorSpace1 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %23, i32 0, i32 9
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1, align 8, !tbaa !35
  %call2 = call i32 %22(%struct.gs_color_space_s* %24) #3
  store i32 %call2, i32* %spp, align 4, !tbaa !5
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %spp, align 4, !tbaa !5
  %mul = mul nsw i32 %27, 2
  %cmp3 = icmp slt i32 %26, %mul
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %30, i32 0, i32 10
  %31 = load i32, i32* %MaskColor_is_range, align 4, !tbaa !41
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %33, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 %idxprom
  %34 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %34, i32* %c0, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %35, 1
  %idxprom5 = sext i32 %add to i64
  %36 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor6 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %36, i32 0, i32 11
  %arrayidx7 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor6, i32 0, i64 %idxprom5
  %37 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  store i32 %37, i32* %c1, align 4, !tbaa !5
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %38, 1
  %idxprom8 = sext i32 %shr to i64
  %39 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor9 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %39, i32 0, i32 11
  %arrayidx10 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor9, i32 0, i64 %idxprom8
  %40 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  store i32 %40, i32* %c1, align 4, !tbaa !5
  store i32 %40, i32* %c0, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.4
  %41 = load i32, i32* %c0, align 4, !tbaa !5
  %42 = load i32, i32* %c1, align 4, !tbaa !5
  %or = or i32 %41, %42
  %43 = load i32, i32* %max_value, align 4, !tbaa !5
  %cmp12 = icmp ugt i32 %or, %43
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %48 = bitcast %struct.gx_image_enum_s* %47 to i8*
  call void %45(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.11
  %49 = load i32, i32* %c0, align 4, !tbaa !5
  %50 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp15 = icmp ugt i32 %49, %50
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* %opaque, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.14
  %51 = load i32, i32* %c0, align 4, !tbaa !5
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %52 to i64
  %53 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %53, i32 0, i32 16
  %values = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [130 x i32], [130 x i32]* %values, i32 0, i64 %idxprom18
  store i32 %51, i32* %arrayidx19, align 4, !tbaa !5
  %54 = load i32, i32* %c1, align 4, !tbaa !5
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %add20 = add nsw i32 %55, 1
  %idxprom21 = sext i32 %add20 to i64
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %mask_color22 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 16
  %values23 = getelementptr inbounds %struct.mc_, %struct.mc_* %mask_color22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [130 x i32], [130 x i32]* %values23, i32 0, i64 %idxprom21
  store i32 %54, i32* %arrayidx24, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.13
  %57 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.28 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %add26 = add nsw i32 %59, 2
  store i32 %add26, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %60 = load i32, i32* %opaque, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %60, 0
  %lnot = xor i1 %tobool27, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %61 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %61, i32 0, i32 17
  store i8 %conv, i8* %use_mask_color, align 1, !tbaa !45
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end, %cleanup
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %opaque to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %cleanup.dest.32 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.32, label %cleanup.39 [
    i32 0, label %cleanup.cont.33
  ]

cleanup.cont.33:                                  ; preds = %cleanup.28
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %67 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %69 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %71 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %call34 = call i32 @gx_image_enum_begin(%struct.gx_device_s* %66, %struct.gs_imager_state_s* %67, %struct.gs_matrix_s* %68, %struct.gs_image_common_s* %69, %struct.gx_device_color_s* %70, %struct.gx_clip_path_s* %71, %struct.gs_memory_s* %72, %struct.gx_image_enum_s* %73) #3
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %74 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp sge i32 %74, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cleanup.cont.33
  %75 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %76 = bitcast %struct.gx_image_enum_s* %75 to %struct.gx_image_enum_common_s*
  %77 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %76, %struct.gx_image_enum_common_s** %77, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %cleanup.cont.33
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %cleanup.28, %if.then
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @gx_data_image_source_size(%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_image4_sput(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s** %ppcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %pim = alloca %struct.gs_image4_s*, align 8
  %is_range = alloca i32, align 4
  %code = alloca i32, align 4
  %num_values = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image4_s*
  store %struct.gs_image4_s* %2, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %is_range to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %4, i32 0, i32 10
  %5 = load i32, i32* %MaskColor_is_range, align 4, !tbaa !41
  store i32 %5, i32* %is_range, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %8 = bitcast %struct.gs_image4_s* %7 to %struct.gs_pixel_image_s*
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  %11 = load i32, i32* %is_range, align 4, !tbaa !5
  %call = call i32 @gx_pixel_image_sput(%struct.gs_pixel_image_s* %8, %struct.stream_s* %9, %struct.gs_color_space_s** %10, i32 %11) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %13, i32 0, i32 9
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !35
  %call1 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %14) #3
  %15 = load i32, i32* %is_range, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %mul = mul nsw i32 %call1, %cond
  store i32 %mul, i32* %num_values, align 4, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %num_values, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %19, %20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %23, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4, !tbaa !5
  call void @sput_variable_uint(%struct.stream_s* %21, i32 %24) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %ColorSpace3 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %26, i32 0, i32 9
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace3, align 8, !tbaa !35
  %28 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %27, %struct.gs_color_space_s** %28, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %is_range to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image4_sget(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pim = alloca %struct.gs_image4_s*, align 8
  %num_values = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image4_s*
  store %struct.gs_image4_s* %2, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %7 = bitcast %struct.gs_image4_s* %6 to %struct.gs_pixel_image_s*
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gx_pixel_image_sget(%struct.gs_pixel_image_s* %7, %struct.stream_s* %8, %struct.gs_color_space_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %12, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_4 to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !46
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %14 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %14, i32 0, i32 10
  store i32 %13, i32* %MaskColor_is_range, align 4, !tbaa !41
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %15) #3
  %16 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor_is_range2 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %16, i32 0, i32 10
  %17 = load i32, i32* %MaskColor_is_range2, align 4, !tbaa !41
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %mul = mul nsw i32 %call1, %cond
  store i32 %mul, i32* %num_values, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %num_values, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %18, %19
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %22, i32 0, i32 11
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 %idxprom
  %call4 = call i32 @sget_variable_uint(%struct.stream_s* %20, i32* %arrayidx) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %23, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %26, i32 0, i32 12
  store i32 4, i32* %image_parent_type, align 4, !tbaa !47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gs_image4_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @gx_image4_release(%struct.gs_image_common_s* %pic, %struct.gs_memory_s* %mem) #0 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image_common_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_pixel_image_release(%struct.gs_pixel_image_s* %1, %struct.gs_memory_s* %2) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_image4_t_init(%struct.gs_image4_s* %pim, %struct.gs_color_space_s* %color_space) #0 {
entry:
  %pim.addr = alloca %struct.gs_image4_s*, align 8
  %color_space.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_image4_s* %pim, %struct.gs_image4_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %color_space, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image4_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  call void @gs_pixel_image_t_init(%struct.gs_pixel_image_s* %1, %struct.gs_color_space_s* %2) #3
  %3 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %3, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_4 to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !46
  %4 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim.addr, align 8, !tbaa !1
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %4, i32 0, i32 10
  store i32 0, i32* %MaskColor_is_range, align 4, !tbaa !41
  %5 = load %struct.gs_image4_s*, %struct.gs_image4_s** %pim.addr, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %5, i32 0, i32 12
  store i32 4, i32* %image_parent_type, align 4, !tbaa !47
  ret void
}

declare void @gs_pixel_image_t_init(%struct.gs_pixel_image_s*, %struct.gs_color_space_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_image_enum_alloc(%struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gs_memory_s*, %struct.gx_image_enum_s**) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_image_enum_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_s*) #1

declare i32 @gx_pixel_image_sput(%struct.gs_pixel_image_s*, %struct.stream_s*, %struct.gs_color_space_s**, i32) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare void @sput_variable_uint(%struct.stream_s*, i32) #1

declare i32 @gx_pixel_image_sget(%struct.gs_pixel_image_s*, %struct.stream_s*, %struct.gs_color_space_s*) #1

declare i32 @sget_variable_uint(%struct.stream_s*, i32*) #1

declare void @gx_pixel_image_release(%struct.gs_pixel_image_s*, %struct.gs_memory_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 580}
!8 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !10, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !11, i64 1120, !13, i64 1144, !14, i64 1160, !6, i64 1176, !6, i64 1180, !15, i64 1184, !15, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !16, i64 1272, !16, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !17, i64 1348, !15, i64 1356, !15, i64 1364, !18, i64 1372, !6, i64 1492, !6, i64 1496, !17, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !23, i64 23120, !23, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !28, i64 24504, !29, i64 24792, !6, i64 24808}
!9 = !{!"long", !3, i64 0}
!10 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!15 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"gs_fixed_rect_s", !15, i64 0, !15, i64 8}
!17 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"dd_", !19, i64 0, !19, i64 40, !19, i64 80}
!19 = !{!"gx_dda_fixed_point_s", !20, i64 0, !20, i64 20}
!20 = !{!"gx_dda_fixed_s", !21, i64 0, !22, i64 8}
!21 = !{!"_a", !6, i64 0, !6, i64 4}
!22 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!23 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !17, i64 352, !6, i64 360, !24, i64 368, !26, i64 632}
!24 = !{!"gs_client_color_s", !2, i64 0, !25, i64 8}
!25 = !{!"gs_paint_color_s", !3, i64 0}
!26 = !{!"_mask", !27, i64 0, !9, i64 8, !2, i64 16}
!27 = !{!"mp_", !6, i64 0, !6, i64 4}
!28 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!29 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!30 = !{!8, !3, i64 1118}
!31 = !{!8, !6, i64 1308}
!32 = !{!8, !3, i64 24500}
!33 = !{!34, !6, i64 40}
!34 = !{!"gs_image4_s", !2, i64 0, !11, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !3, i64 588, !3, i64 1108}
!35 = !{!34, !2, i64 576}
!36 = !{!37, !2, i64 0}
!37 = !{!"gs_color_space_s", !2, i64 0, !38, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!38 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!39 = !{!40, !2, i64 24}
!40 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!41 = !{!34, !6, i64 584}
!42 = !{!43, !2, i64 24}
!43 = !{!"gs_memory_s", !2, i64 0, !44, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!44 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!45 = !{!8, !3, i64 1116}
!46 = !{!34, !2, i64 0}
!47 = !{!34, !3, i64 1108}
