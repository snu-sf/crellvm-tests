; ModuleID = './gximage.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }

@.str = private unnamed_addr constant [18 x i8] c"gs_image_common_t\00", align 1
@st_gs_image_common = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gs_data_image_t\00", align 1
@st_gs_data_image = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@pixel_image_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pixel_image_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_pixel_image = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 584, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pixel_image_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"gx_image_default_release\00", align 1
@pixel_image_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 576 }], align 2

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_image_common_t_init(%struct.gs_image_common_s* %pic) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %0, i32 0, i32 1
  call void @gs_make_identity(%struct.gs_matrix_s* %ImageMatrix) #4
  ret void
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_data_image_t_init(%struct.gs_data_image_s* %pim, i32 %num_components) #1 {
entry:
  %pim.addr = alloca %struct.gs_data_image_s*, align 8
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_data_image_s* %pim, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_data_image_s* %1 to %struct.gs_image_common_s*
  call void @gs_image_common_t_init(%struct.gs_image_common_s* %2) #4
  %3 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %3, i32 0, i32 3
  store i32 0, i32* %Height, align 4, !tbaa !7
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %4, i32 0, i32 2
  store i32 0, i32* %Width, align 4, !tbaa !11
  %5 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %5, i32 0, i32 4
  store i32 1, i32* %BitsPerComponent, align 4, !tbaa !12
  %6 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, 2
  %cmp1 = icmp slt i32 %7, %mul
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %10, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !13
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %idxprom2 = sext i32 %add to i64
  %12 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode3 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %12, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [130 x float], [130 x float]* %Decode3, i32 0, i64 %idxprom2
  store float 1.000000e+00, float* %arrayidx4, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %add5 = add nsw i32 %13, 2
  store i32 %add5, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.17, %if.else
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul7 = mul nsw i32 %15, -2
  %cmp8 = icmp slt i32 %14, %mul7
  br i1 %cmp8, label %for.body.9, label %for.end.19

for.body.9:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode11 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %17, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [130 x float], [130 x float]* %Decode11, i32 0, i64 %idxprom10
  store float 1.000000e+00, float* %arrayidx12, align 4, !tbaa !13
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %add13 = add nsw i32 %18, 1
  %idxprom14 = sext i32 %add13 to i64
  %19 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode15 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %19, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [130 x float], [130 x float]* %Decode15, i32 0, i64 %idxprom14
  store float 0.000000e+00, float* %arrayidx16, align 4, !tbaa !13
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.9
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %add18 = add nsw i32 %20, 2
  store i32 %add18, i32* %i, align 4, !tbaa !5
  br label %for.cond.6

for.end.19:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.19, %for.end
  %21 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %21, i32 0, i32 6
  store i32 0, i32* %Interpolate, align 4, !tbaa !14
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gs_pixel_image_t_init(%struct.gs_pixel_image_s* %pim, %struct.gs_color_space_s* %color_space) #1 {
entry:
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %color_space.addr = alloca %struct.gs_color_space_s*, align 8
  %num_components = alloca i32, align 4
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %color_space, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %2) #4
  store i32 %call, i32* %num_components, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %num_components, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_pixel_image_s* %3 to %struct.gs_data_image_s*
  %5 = load i32, i32* %num_components, align 4, !tbaa !5
  call void @gs_data_image_t_init(%struct.gs_data_image_s* %4, i32 %5) #4
  %6 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %6, i32 0, i32 7
  store i32 0, i32* %format, align 4, !tbaa !15
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %8 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %8, i32 0, i32 9
  store %struct.gs_color_space_s* %7, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !17
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %9, i32 0, i32 8
  store i32 0, i32* %CombineWithColor, align 4, !tbaa !18
  %10 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret void
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %piec, %struct.gs_data_image_s* %pic, %struct.gx_image_enum_procs_s* %piep, %struct.gx_device_s* %dev, i32 %num_components, i32 %format) #1 {
entry:
  %retval = alloca i32, align 4
  %piec.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %pic.addr = alloca %struct.gs_data_image_s*, align 8
  %piep.addr = alloca %struct.gx_image_enum_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_components.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %bpc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %piec, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  store %struct.gs_data_image_s* %pic, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_procs_s* %piep, %struct.gx_image_enum_procs_s** %piep.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  store i32 %format, i32* %format.addr, align 4, !tbaa !19
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %1, i32 0, i32 4
  %2 = load i32, i32* %BitsPerComponent, align 4, !tbaa !12
  store i32 %2, i32* %bpc, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %4, i32 0, i32 0
  %5 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !20
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %image_type = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %6, i32 0, i32 0
  store %struct.gx_image_type_s* %5, %struct.gx_image_type_s** %image_type, align 8, !tbaa !21
  %7 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %piep.addr, align 8, !tbaa !1
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %8, i32 0, i32 1
  store %struct.gx_image_enum_procs_s* %7, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !24
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %10, i32 0, i32 2
  store %struct.gx_device_s* %9, %struct.gx_device_s** %dev1, align 8, !tbaa !25
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %12, i32 1) #4
  %13 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %13, i32 0, i32 4
  store i64 %call, i64* %id, align 8, !tbaa !38
  %14 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %skipping = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %14, i32 0, i32 5
  store i32 0, i32* %skipping, align 4, !tbaa !39
  %15 = load i32, i32* %format.addr, align 4, !tbaa !19
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %16 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %16, i32 0, i32 6
  store i32 1, i32* %num_planes, align 4, !tbaa !40
  %17 = load i32, i32* %bpc, align 4, !tbaa !5
  %18 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %18
  %19 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %19, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  store i32 %mul, i32* %arrayidx, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %20 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %21 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %num_planes3 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %21, i32 0, i32 6
  store i32 %20, i32* %num_planes3, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.2
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %bpc, align 4, !tbaa !5
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %plane_depths4 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %26, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths4, i32 0, i64 %idxprom
  store i32 %24, i32* %arrayidx5, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %28 = load i32, i32* %bpc, align 4, !tbaa !5
  %29 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul7 = mul nsw i32 %28, %29
  %30 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %num_planes8 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %30, i32 0, i32 6
  store i32 %mul7, i32* %num_planes8, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %sw.bb.6
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %num_planes10 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %32, i32 0, i32 6
  %33 = load i32, i32* %num_planes10, align 4, !tbaa !40
  %cmp11 = icmp slt i32 %31, %33
  br i1 %cmp11, label %for.body.12, label %for.end.18

for.body.12:                                      ; preds = %for.cond.9
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %34 to i64
  %35 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %plane_depths14 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %35, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths14, i32 0, i64 %idxprom13
  store i32 1, i32* %arrayidx15, align 4, !tbaa !5
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.12
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %36, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !5
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.end.18, %for.end, %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.25, %sw.epilog
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %38 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %num_planes20 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %38, i32 0, i32 6
  %39 = load i32, i32* %num_planes20, align 4, !tbaa !40
  %cmp21 = icmp slt i32 %37, %39
  br i1 %cmp21, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %40 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pic.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %40, i32 0, i32 2
  %41 = load i32, i32* %Width, align 4, !tbaa !11
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %42 to i64
  %43 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %piec.addr, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %43, i32 0, i32 8
  %arrayidx24 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i64 %idxprom23
  store i32 %41, i32* %arrayidx24, align 4, !tbaa !5
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %44, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !5
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.27, %sw.default
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_data_image_source_size(%struct.gs_imager_state_s* %pis, %struct.gs_image_common_s* %pim, %struct.gs_int_point_s* %psize) #1 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image_common_s*, align 8
  %psize.addr = alloca %struct.gs_int_point_s*, align 8
  %pdi = alloca %struct.gs_data_image_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pim, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %psize, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_data_image_s** %pdi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_data_image_s*
  store %struct.gs_data_image_s* %2, %struct.gs_data_image_s** %pdi, align 8, !tbaa !1
  %3 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pdi, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %3, i32 0, i32 2
  %4 = load i32, i32* %Width, align 4, !tbaa !11
  %5 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %5, i32 0, i32 0
  store i32 %4, i32* %x, align 4, !tbaa !41
  %6 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pdi, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %6, i32 0, i32 3
  %7 = load i32, i32* %Height, align 4, !tbaa !7
  %8 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %8, i32 0, i32 1
  store i32 %7, i32* %y, align 4, !tbaa !43
  %9 = bitcast %struct.gs_data_image_s** %pdi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %height_used) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %height_used.addr = alloca i32*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %height_used, i32** %height_used.addr, align 8, !tbaa !1
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define i32 @gx_ignore_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_data(%struct.gx_image_enum_common_s* %info, i8** %plane_data, i32 %data_x, i32 %raster, i32 %height) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %plane_data.addr = alloca i8**, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %planes = alloca [65 x %struct.gx_image_plane_s], align 16
  %i = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8** %plane_data, i8*** %plane_data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 6
  %2 = load i32, i32* %num_planes1, align 4, !tbaa !40
  store i32 %2, i32* %num_planes, align 4, !tbaa !5
  %3 = bitcast [65 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %plane_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom2
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx3, i32 0, i32 0
  store i8* %9, i8** %data, align 8, !tbaa !44
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom4
  %data_x6 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx5, i32 0, i32 1
  store i32 %11, i32* %data_x6, align 4, !tbaa !46
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %planes, i32 0, i64 %idxprom7
  %raster9 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx8, i32 0, i32 2
  store i32 %13, i32* %raster9, align 4, !tbaa !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [65 x %struct.gx_image_plane_s], [65 x %struct.gx_image_plane_s]* %planes, i32 0, i32 0
  %17 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 @gx_image_plane_data(%struct.gx_image_enum_common_s* %16, %struct.gx_image_plane_s* %arraydecay, i32 %17) #4
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast [65 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %19) #2
  %20 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %ignore_rows_used = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ignore_rows_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %3 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %1, %struct.gx_image_plane_s* %2, i32 %3, i32* %ignore_rows_used) #4
  %4 = bitcast i32* %ignore_rows_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %0, i32 0, i32 1
  %1 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !24
  %plane_data = getelementptr inbounds %struct.gx_image_enum_procs_s, %struct.gx_image_enum_procs_s* %1, i32 0, i32 0
  %2 = load i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)** %plane_data, align 8, !tbaa !48
  %3 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %4 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %6 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_image_enum_common_s* %3, %struct.gx_image_plane_s* %4, i32 %5, i32* %6) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_flush(%struct.gx_image_enum_common_s* %info) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %flush = alloca i32 (%struct.gx_image_enum_common_s*)*, align 8
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_image_enum_common_s*)** %flush to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 1
  %2 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !24
  %flush1 = getelementptr inbounds %struct.gx_image_enum_procs_s, %struct.gx_image_enum_procs_s* %2, i32 0, i32 2
  %3 = load i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*)** %flush1, align 8, !tbaa !50
  store i32 (%struct.gx_image_enum_common_s*)* %3, i32 (%struct.gx_image_enum_common_s*)** %flush, align 8, !tbaa !1
  %4 = load i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*)** %flush, align 8, !tbaa !1
  %tobool = icmp ne i32 (%struct.gx_image_enum_common_s*)* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*)** %flush, align 8, !tbaa !1
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gx_image_enum_common_s* %6) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %7 = bitcast i32 (%struct.gx_image_enum_common_s*)** %flush to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_planes_wanted(%struct.gx_image_enum_common_s* %info, i8* %wanted) #1 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %wanted.addr = alloca i8*, align 8
  %planes_wanted = alloca i32 (%struct.gx_image_enum_common_s*, i8*)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8* %wanted, i8** %wanted.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 1
  %2 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !24
  %planes_wanted1 = getelementptr inbounds %struct.gx_image_enum_procs_s, %struct.gx_image_enum_procs_s* %2, i32 0, i32 3
  %3 = load i32 (%struct.gx_image_enum_common_s*, i8*)*, i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted1, align 8, !tbaa !51
  store i32 (%struct.gx_image_enum_common_s*, i8*)* %3, i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted, align 8, !tbaa !1
  %4 = load i32 (%struct.gx_image_enum_common_s*, i8*)*, i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted, align 8, !tbaa !1
  %tobool = icmp ne i32 (%struct.gx_image_enum_common_s*, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32 (%struct.gx_image_enum_common_s*, i8*)*, i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted, align 8, !tbaa !1
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gx_image_enum_common_s* %6, i8* %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %9 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %9, i32 0, i32 6
  %10 = load i32, i32* %num_planes, align 4, !tbaa !40
  %conv = sext i32 %10 to i64
  %call2 = call i8* @memset(i8* %8, i32 255, i64 %conv) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %11 = bitcast i32 (%struct.gx_image_enum_common_s*, i8*)** %planes_wanted to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gx_image_end(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #1 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %0, i32 0, i32 1
  %1 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %procs, align 8, !tbaa !24
  %end_image = getelementptr inbounds %struct.gx_image_enum_procs_s, %struct.gx_image_enum_procs_s* %1, i32 0, i32 1
  %2 = load i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*, i32)** %end_image, align 8, !tbaa !52
  %3 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %4 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %call = call i32 %2(%struct.gx_image_enum_common_s* %3, i32 %4) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_no_sput(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s** %ppcs) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_no_sget(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define void @gx_image_default_release(%struct.gs_image_common_s* %pic, %struct.gs_memory_s* %mem) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !53
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_image_common_s* %3 to i8*
  call void %1(%struct.gs_memory_s* %2, i8* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_image_matrix_is_default(%struct.gs_data_image_s* %pid) #1 {
entry:
  %pid.addr = alloca %struct.gs_data_image_s*, align 8
  store %struct.gs_data_image_s* %pid, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %0 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %0, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 1
  %1 = load float, float* %xy, align 4, !tbaa !56
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix2 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %2, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix2, i32 0, i32 2
  %3 = load float, float* %yx, align 4, !tbaa !57
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix7 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %4, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix7, i32 0, i32 0
  %5 = load float, float* %xx, align 4, !tbaa !58
  %6 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %6, i32 0, i32 2
  %7 = load i32, i32* %Width, align 4, !tbaa !11
  %conv8 = sitofp i32 %7 to float
  %cmp9 = fcmp oeq float %5, %conv8
  br i1 %cmp9, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %8 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix12 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %8, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix12, i32 0, i32 3
  %9 = load float, float* %yy, align 4, !tbaa !59
  %10 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %10, i32 0, i32 3
  %11 = load i32, i32* %Height, align 4, !tbaa !7
  %sub = sub nsw i32 0, %11
  %conv13 = sitofp i32 %sub to float
  %cmp14 = fcmp oeq float %9, %conv13
  br i1 %cmp14, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %12 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix17 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %12, i32 0, i32 1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix17, i32 0, i32 4
  %13 = load float, float* %tx, align 4, !tbaa !60
  %conv18 = fpext float %13 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %14 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix21 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %14, i32 0, i32 1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix21, i32 0, i32 5
  %15 = load float, float* %ty, align 4, !tbaa !61
  %16 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Height22 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %16, i32 0, i32 3
  %17 = load i32, i32* %Height22, align 4, !tbaa !7
  %conv23 = sitofp i32 %17 to float
  %cmp24 = fcmp oeq float %15, %conv23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %entry
  %18 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @sput_variable_uint(%struct.stream_s* %s, i32 %w) #1 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %w.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 127
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %w1 = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w1, i32 0, i32 1
  %2 = load i8*, i8** %ptr, align 8, !tbaa !62
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %4 = load i8*, i8** %limit, align 8, !tbaa !64
  %cmp4 = icmp uge i8* %2, %4
  br i1 %cmp4, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %w6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_write_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w6, i32 0, i32 1
  %6 = load i8*, i8** %ptr7, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !62
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %or = or i32 %7, 128
  %conv = trunc i32 %or to i8
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 1
  %9 = load i8*, i8** %ptr10, align 8, !tbaa !62
  store i8 %conv, i8* %9, align 1, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %or11 = or i32 %11, 128
  %conv12 = trunc i32 %or11 to i8
  %call = call i32 @spputc(%struct.stream_s* %10, i8 zeroext %conv12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr = lshr i32 %12, 7
  store i32 %shr, i32* %w.addr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %14 = load i8*, i8** %ptr15, align 8, !tbaa !62
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 5
  %w17 = bitcast %union.stream_cursor_s* %cursor16 to %struct.stream_cursor_write_s*
  %limit18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w17, i32 0, i32 2
  %16 = load i8*, i8** %limit18, align 8, !tbaa !64
  %cmp19 = icmp uge i8* %14, %16
  br i1 %cmp19, label %cond.false.30, label %cond.true.21

cond.true.21:                                     ; preds = %for.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 5
  %w23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_write_s*
  %ptr24 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w23, i32 0, i32 1
  %18 = load i8*, i8** %ptr24, align 8, !tbaa !62
  %incdec.ptr25 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr25, i8** %ptr24, align 8, !tbaa !62
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv26 = trunc i32 %19 to i8
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %21 = load i8*, i8** %ptr29, align 8, !tbaa !62
  store i8 %conv26, i8* %21, align 1, !tbaa !19
  br label %cond.end.33

cond.false.30:                                    ; preds = %for.end
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv31 = trunc i32 %23 to i8
  %call32 = call i32 @spputc(%struct.stream_s* %22, i8 zeroext %conv31) #4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.21
  %cond34 = phi i32 [ 0, %cond.true.21 ], [ %call32, %cond.false.30 ]
  ret void
}

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #0

; Function Attrs: nounwind uwtable
define i32 @gx_pixel_image_sput(%struct.gs_pixel_image_s* %pim, %struct.stream_s* %s, %struct.gs_color_space_s** %ppcs, i32 %extra) #1 {
entry:
  %retval = alloca i32, align 4
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %extra.addr = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %bpc = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_decode = alloca i32, align 4
  %control = alloca i32, align 4
  %decode_default_1 = alloca float, align 4
  %i = alloca i32, align 4
  %ignore = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i46 = alloca i32, align 4
  %dflags = alloca i32, align 4
  %decode = alloca [8 x float], align 16
  %di = alloca i32, align 4
  %u = alloca float, align 4
  %v = alloca float, align 4
  %dv = alloca float, align 4
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store i32 %extra, i32* %extra.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %1, i32 0, i32 9
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !17
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %4, i32 0, i32 4
  %5 = load i32, i32* %BitsPerComponent, align 4, !tbaa !65
  store i32 %5, i32* %bpc, align 4, !tbaa !5
  %6 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %7) #4
  store i32 %call, i32* %num_components, align 4, !tbaa !5
  %8 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %extra.addr, align 4, !tbaa !5
  %shl = shl i32 %10, 10
  store i32 %shl, i32* %control, align 4, !tbaa !5
  %11 = bitcast float* %decode_default_1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store float 1.000000e+00, float* %decode_default_1, align 4, !tbaa !13
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_pixel_image_s* %14 to %struct.gs_data_image_s*
  %call1 = call i32 @gx_image_matrix_is_default(%struct.gs_data_image_s* %15) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %control, align 4, !tbaa !5
  %or = or i32 %16, 1
  store i32 %or, i32* %control, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %17, i32 0, i32 7
  %18 = load i32, i32* %format, align 4, !tbaa !15
  switch i32 %18, label %sw.epilog.7 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %19 = load i32, i32* %bpc, align 4, !tbaa !5
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 8, label %sw.bb.2
    i32 12, label %sw.bb.2
    i32 16, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2
  br label %sw.epilog.7

sw.bb.3:                                          ; preds = %if.end
  %20 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 1
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.3
  %21 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %21, 8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %sw.bb.3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %if.end.6, %if.end, %sw.epilog
  %22 = load i32, i32* %bpc, align 4, !tbaa !5
  %sub = sub nsw i32 %22, 1
  %shl8 = shl i32 %sub, 1
  %23 = load i32, i32* %control, align 4, !tbaa !5
  %or9 = or i32 %23, %shl8
  store i32 %or9, i32* %control, align 4, !tbaa !5
  %24 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %format10 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %24, i32 0, i32 7
  %25 = load i32, i32* %format10, align 4, !tbaa !15
  %shl11 = shl i32 %25, 5
  %26 = load i32, i32* %control, align 4, !tbaa !5
  %or12 = or i32 %26, %shl11
  store i32 %or12, i32* %control, align 4, !tbaa !5
  %27 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %27, 2
  store i32 %mul, i32* %num_decode, align 4, !tbaa !5
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call13 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %28) #4
  %cmp14 = icmp eq i32 %call13, 10
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.epilog.7
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %30 = load i32, i32* %hival, align 4, !tbaa !66
  %conv = sitofp i32 %30 to float
  store float %conv, float* %decode_default_1, align 4, !tbaa !13
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.epilog.7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %num_decode, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %31, %32
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %34, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 %idxprom
  %35 = load float, float* %arrayidx, align 4, !tbaa !13
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %36, 1
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %37 = load float, float* %decode_default_1, align 4, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %38, 1
  %conv21 = sitofp i32 %and to float
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %37, %cond.true ], [ %conv21, %cond.false ]
  %cmp22 = fcmp une float %35, %cond
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %cond.end
  %39 = load i32, i32* %control, align 4, !tbaa !5
  %or25 = or i32 %39, 128
  store i32 %or25, i32* %control, align 4, !tbaa !5
  br label %for.end

if.end.26:                                        ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  %41 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %41, i32 0, i32 6
  %42 = load i32, i32* %Interpolate, align 4, !tbaa !68
  %tobool27 = icmp ne i32 %42, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  %43 = load i32, i32* %control, align 4, !tbaa !5
  %or29 = or i32 %43, 256
  store i32 %or29, i32* %control, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.end
  %44 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %44, i32 0, i32 8
  %45 = load i32, i32* %CombineWithColor, align 4, !tbaa !18
  %tobool31 = icmp ne i32 %45, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %46 = load i32, i32* %control, align 4, !tbaa !5
  %or33 = or i32 %46, 512
  store i32 %or33, i32* %control, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  br label %do.body

do.body:                                          ; preds = %if.end.34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %48 = load i32, i32* %control, align 4, !tbaa !5
  call void @sput_variable_uint(%struct.stream_s* %47, i32 %48) #4
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %50 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %50, i32 0, i32 2
  %51 = load i32, i32* %Width, align 4, !tbaa !69
  call void @sput_variable_uint(%struct.stream_s* %49, i32 %51) #4
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %53 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %53, i32 0, i32 3
  %54 = load i32, i32* %Height, align 4, !tbaa !70
  call void @sput_variable_uint(%struct.stream_s* %52, i32 %54) #4
  %55 = load i32, i32* %control, align 4, !tbaa !5
  %and35 = and i32 %55, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %do.end
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %57 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %57, i32 0, i32 1
  %call41 = call i32 @sput_matrix(%struct.stream_s* %56, %struct.gs_matrix_s* %ImageMatrix) #4
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.40, %do.end
  %58 = load i32, i32* %control, align 4, !tbaa !5
  %and43 = and i32 %58, 128
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.164

if.then.45:                                       ; preds = %if.end.42
  %59 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = bitcast i32* %dflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  store i32 1, i32* %dflags, align 4, !tbaa !5
  %61 = bitcast [8 x float]* %decode to i8*
  call void @llvm.lifetime.start(i64 32, i8* %61) #2
  %62 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  store i32 0, i32* %di, align 4, !tbaa !5
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.45
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  store i32 0, i32* %i46, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.128, %do.end.49
  %63 = load i32, i32* %i46, align 4, !tbaa !5
  %64 = load i32, i32* %num_decode, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %63, %64
  br i1 %cmp51, label %for.body.53, label %for.end.130

for.body.53:                                      ; preds = %for.cond.50
  %65 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load i32, i32* %i46, align 4, !tbaa !5
  %idxprom54 = sext i32 %66 to i64
  %67 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode55 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %67, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [130 x float], [130 x float]* %Decode55, i32 0, i64 %idxprom54
  %68 = load float, float* %arrayidx56, align 4, !tbaa !13
  store float %68, float* %u, align 4, !tbaa !13
  %69 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i32, i32* %i46, align 4, !tbaa !5
  %add = add nsw i32 %70, 1
  %idxprom57 = sext i32 %add to i64
  %71 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode58 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %71, i32 0, i32 5
  %arrayidx59 = getelementptr inbounds [130 x float], [130 x float]* %Decode58, i32 0, i64 %idxprom57
  %72 = load float, float* %arrayidx59, align 4, !tbaa !13
  store float %72, float* %v, align 4, !tbaa !13
  %73 = bitcast float* %dv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load i32, i32* %i46, align 4, !tbaa !5
  %add60 = add nsw i32 %74, 1
  %cmp61 = icmp eq i32 %add60, 1
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %for.body.53
  %75 = load float, float* %decode_default_1, align 4, !tbaa !13
  br label %cond.end.68

cond.false.64:                                    ; preds = %for.body.53
  %76 = load i32, i32* %i46, align 4, !tbaa !5
  %add65 = add nsw i32 %76, 1
  %and66 = and i32 %add65, 1
  %conv67 = sitofp i32 %and66 to float
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.64, %cond.true.63
  %cond69 = phi float [ %75, %cond.true.63 ], [ %conv67, %cond.false.64 ]
  store float %cond69, float* %dv, align 4, !tbaa !13
  %77 = load i32, i32* %dflags, align 4, !tbaa !5
  %cmp70 = icmp uge i32 %77, 256
  br i1 %cmp70, label %if.then.72, label %if.end.96

if.then.72:                                       ; preds = %cond.end.68
  %78 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %78, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %79 = load i8*, i8** %ptr, align 8, !tbaa !62
  %80 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor73 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 5
  %w74 = bitcast %union.stream_cursor_s* %cursor73 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w74, i32 0, i32 2
  %81 = load i8*, i8** %limit, align 8, !tbaa !64
  %cmp75 = icmp uge i8* %79, %81
  br i1 %cmp75, label %cond.false.86, label %cond.true.77

cond.true.77:                                     ; preds = %if.then.72
  %82 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 5
  %w79 = bitcast %union.stream_cursor_s* %cursor78 to %struct.stream_cursor_write_s*
  %ptr80 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w79, i32 0, i32 1
  %83 = load i8*, i8** %ptr80, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr, i8** %ptr80, align 8, !tbaa !62
  %84 = load i32, i32* %dflags, align 4, !tbaa !5
  %and81 = and i32 %84, 255
  %conv82 = trunc i32 %and81 to i8
  %85 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor83 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %85, i32 0, i32 5
  %w84 = bitcast %union.stream_cursor_s* %cursor83 to %struct.stream_cursor_write_s*
  %ptr85 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w84, i32 0, i32 1
  %86 = load i8*, i8** %ptr85, align 8, !tbaa !62
  store i8 %conv82, i8* %86, align 1, !tbaa !19
  br label %cond.end.90

cond.false.86:                                    ; preds = %if.then.72
  %87 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %88 = load i32, i32* %dflags, align 4, !tbaa !5
  %and87 = and i32 %88, 255
  %conv88 = trunc i32 %and87 to i8
  %call89 = call i32 @spputc(%struct.stream_s* %87, i8 zeroext %conv88) #4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.86, %cond.true.77
  %cond91 = phi i32 [ 0, %cond.true.77 ], [ %call89, %cond.false.86 ]
  %89 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x float], [8 x float]* %decode, i32 0, i32 0
  %90 = bitcast float* %arraydecay to i8*
  %91 = load i32, i32* %di, align 4, !tbaa !5
  %conv92 = sext i32 %91 to i64
  %mul93 = mul i64 %conv92, 4
  %conv94 = trunc i64 %mul93 to i32
  %call95 = call i32 @sputs(%struct.stream_s* %89, i8* %90, i32 %conv94, i32* %ignore) #4
  store i32 1, i32* %dflags, align 4, !tbaa !5
  store i32 0, i32* %di, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %cond.end.90, %cond.end.68
  %92 = load i32, i32* %dflags, align 4, !tbaa !5
  %shl97 = shl i32 %92, 2
  store i32 %shl97, i32* %dflags, align 4, !tbaa !5
  %93 = load float, float* %u, align 4, !tbaa !13
  %cmp98 = fcmp oeq float %93, 0.000000e+00
  br i1 %cmp98, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.96
  %94 = load float, float* %v, align 4, !tbaa !13
  %95 = load float, float* %dv, align 4, !tbaa !13
  %cmp100 = fcmp oeq float %94, %95
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %land.lhs.true
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  br label %do.cond.104

do.cond.104:                                      ; preds = %do.body.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  br label %if.end.127

if.else:                                          ; preds = %land.lhs.true, %if.end.96
  %96 = load float, float* %u, align 4, !tbaa !13
  %97 = load float, float* %dv, align 4, !tbaa !13
  %cmp106 = fcmp oeq float %96, %97
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.113

land.lhs.true.108:                                ; preds = %if.else
  %98 = load float, float* %v, align 4, !tbaa !13
  %cmp109 = fcmp oeq float %98, 0.000000e+00
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %land.lhs.true.108
  %99 = load i32, i32* %dflags, align 4, !tbaa !5
  %add112 = add i32 %99, 1
  store i32 %add112, i32* %dflags, align 4, !tbaa !5
  br label %if.end.126

if.else.113:                                      ; preds = %land.lhs.true.108, %if.else
  %100 = load float, float* %u, align 4, !tbaa !13
  %cmp114 = fcmp une float %100, 0.000000e+00
  br i1 %cmp114, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.else.113
  %101 = load i32, i32* %dflags, align 4, !tbaa !5
  %inc117 = add i32 %101, 1
  store i32 %inc117, i32* %dflags, align 4, !tbaa !5
  %102 = load float, float* %u, align 4, !tbaa !13
  %103 = load i32, i32* %di, align 4, !tbaa !5
  %inc118 = add nsw i32 %103, 1
  store i32 %inc118, i32* %di, align 4, !tbaa !5
  %idxprom119 = sext i32 %103 to i64
  %arrayidx120 = getelementptr inbounds [8 x float], [8 x float]* %decode, i32 0, i64 %idxprom119
  store float %102, float* %arrayidx120, align 4, !tbaa !13
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %if.else.113
  %104 = load i32, i32* %dflags, align 4, !tbaa !5
  %add122 = add i32 %104, 2
  store i32 %add122, i32* %dflags, align 4, !tbaa !5
  %105 = load float, float* %v, align 4, !tbaa !13
  %106 = load i32, i32* %di, align 4, !tbaa !5
  %inc123 = add nsw i32 %106, 1
  store i32 %inc123, i32* %di, align 4, !tbaa !5
  %idxprom124 = sext i32 %106 to i64
  %arrayidx125 = getelementptr inbounds [8 x float], [8 x float]* %decode, i32 0, i64 %idxprom124
  store float %105, float* %arrayidx125, align 4, !tbaa !13
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.121, %if.then.111
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %do.end.105
  %107 = bitcast float* %dv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %110 = load i32, i32* %i46, align 4, !tbaa !5
  %add129 = add nsw i32 %110, 2
  store i32 %add129, i32* %i46, align 4, !tbaa !5
  br label %for.cond.50

for.end.130:                                      ; preds = %for.cond.50
  %111 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor131 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %111, i32 0, i32 5
  %w132 = bitcast %union.stream_cursor_s* %cursor131 to %struct.stream_cursor_write_s*
  %ptr133 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w132, i32 0, i32 1
  %112 = load i8*, i8** %ptr133, align 8, !tbaa !62
  %113 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor134 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %113, i32 0, i32 5
  %w135 = bitcast %union.stream_cursor_s* %cursor134 to %struct.stream_cursor_write_s*
  %limit136 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w135, i32 0, i32 2
  %114 = load i8*, i8** %limit136, align 8, !tbaa !64
  %cmp137 = icmp uge i8* %112, %114
  br i1 %cmp137, label %cond.false.151, label %cond.true.139

cond.true.139:                                    ; preds = %for.end.130
  %115 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor140 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %115, i32 0, i32 5
  %w141 = bitcast %union.stream_cursor_s* %cursor140 to %struct.stream_cursor_write_s*
  %ptr142 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w141, i32 0, i32 1
  %116 = load i8*, i8** %ptr142, align 8, !tbaa !62
  %incdec.ptr143 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr143, i8** %ptr142, align 8, !tbaa !62
  %117 = load i32, i32* %dflags, align 4, !tbaa !5
  %118 = load i32, i32* %num_decode, align 4, !tbaa !5
  %sub144 = sub nsw i32 8, %118
  %shl145 = shl i32 %117, %sub144
  %and146 = and i32 %shl145, 255
  %conv147 = trunc i32 %and146 to i8
  %119 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor148 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %119, i32 0, i32 5
  %w149 = bitcast %union.stream_cursor_s* %cursor148 to %struct.stream_cursor_write_s*
  %ptr150 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w149, i32 0, i32 1
  %120 = load i8*, i8** %ptr150, align 8, !tbaa !62
  store i8 %conv147, i8* %120, align 1, !tbaa !19
  br label %cond.end.157

cond.false.151:                                   ; preds = %for.end.130
  %121 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %122 = load i32, i32* %dflags, align 4, !tbaa !5
  %123 = load i32, i32* %num_decode, align 4, !tbaa !5
  %sub152 = sub nsw i32 8, %123
  %shl153 = shl i32 %122, %sub152
  %and154 = and i32 %shl153, 255
  %conv155 = trunc i32 %and154 to i8
  %call156 = call i32 @spputc(%struct.stream_s* %121, i8 zeroext %conv155) #4
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.151, %cond.true.139
  %cond158 = phi i32 [ 0, %cond.true.139 ], [ %call156, %cond.false.151 ]
  %124 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay159 = getelementptr inbounds [8 x float], [8 x float]* %decode, i32 0, i32 0
  %125 = bitcast float* %arraydecay159 to i8*
  %126 = load i32, i32* %di, align 4, !tbaa !5
  %conv160 = sext i32 %126 to i64
  %mul161 = mul i64 %conv160, 4
  %conv162 = trunc i64 %mul161 to i32
  %call163 = call i32 @sputs(%struct.stream_s* %124, i8* %125, i32 %conv162, i32* %ignore) #4
  %127 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast [8 x float]* %decode to i8*
  call void @llvm.lifetime.end(i64 32, i8* %128) #2
  %129 = bitcast i32* %dflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  br label %if.end.164

if.end.164:                                       ; preds = %cond.end.157, %if.end.42
  %131 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %132 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %131, %struct.gs_color_space_s** %132, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.164, %if.then.5, %sw.default
  %133 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast float* %decode_default_1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = load i32, i32* %retval
  ret i32 %141
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

declare i32 @sput_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

; Function Attrs: nounwind uwtable
define void @gx_image_matrix_set_default(%struct.gs_data_image_s* %pid) #1 {
entry:
  %pid.addr = alloca %struct.gs_data_image_s*, align 8
  store %struct.gs_data_image_s* %pid, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %0 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %0, i32 0, i32 2
  %1 = load i32, i32* %Width, align 4, !tbaa !11
  %conv = sitofp i32 %1 to float
  %2 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %2, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 0
  store float %conv, float* %xx, align 4, !tbaa !58
  %3 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix1 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %3, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix1, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !71
  %4 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix2 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %4, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix2, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !72
  %5 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %5, i32 0, i32 3
  %6 = load i32, i32* %Height, align 4, !tbaa !7
  %sub = sub nsw i32 0, %6
  %conv3 = sitofp i32 %sub to float
  %7 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix4 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %7, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix4, i32 0, i32 3
  store float %conv3, float* %yy, align 4, !tbaa !59
  %8 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix5 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %8, i32 0, i32 1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix5, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !60
  %9 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %Height6 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %9, i32 0, i32 3
  %10 = load i32, i32* %Height6, align 4, !tbaa !7
  %conv7 = sitofp i32 %10 to float
  %11 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pid.addr, align 8, !tbaa !1
  %ImageMatrix8 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %11, i32 0, i32 1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix8, i32 0, i32 5
  store float %conv7, float* %ty, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sget_variable_uint(%struct.stream_s* %s, i32* %pw) #1 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pw.addr = alloca i32*, align 8
  %w = alloca i32, align 4
  %shift = alloca i32, align 4
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32* %pw, i32** %pw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %w, align 4, !tbaa !5
  %1 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %shift, align 4, !tbaa !5
  %2 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %4 = load i8*, i8** %limit, align 8, !tbaa !73
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !75
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r4, i32 0, i32 0
  %8 = load i8*, i8** %ptr5, align 8, !tbaa !75
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !75
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %r7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_read_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r7, i32 0, i32 0
  %10 = load i8*, i8** %ptr8, align 8, !tbaa !75
  %11 = load i8, i8* %10, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spgetcc(%struct.stream_s* %12, i32 1) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %ch, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %cond, 128
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %13 = load i32, i32* %ch, align 4, !tbaa !5
  %and = and i32 %13, 127
  %14 = load i32, i32* %shift, align 4, !tbaa !5
  %shl = shl i32 %and, %14
  %15 = load i32, i32* %w, align 4, !tbaa !5
  %add = add i32 %15, %shl
  store i32 %add, i32* %w, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %shift, align 4, !tbaa !5
  %add11 = add nsw i32 %16, 7
  store i32 %add11, i32* %shift, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %17 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %18 = load i32, i32* %w, align 4, !tbaa !5
  %19 = load i32, i32* %ch, align 4, !tbaa !5
  %20 = load i32, i32* %shift, align 4, !tbaa !5
  %shl14 = shl i32 %19, %20
  %add15 = add i32 %18, %shl14
  %21 = load i32*, i32** %pw.addr, align 8, !tbaa !1
  store i32 %add15, i32* %21, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @spgetcc(%struct.stream_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_pixel_image_sget(%struct.gs_pixel_image_s* %pim, %struct.stream_s* %s, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %retval = alloca i32, align 4
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %control = alloca i32, align 4
  %decode_default_1 = alloca float, align 4
  %num_components = alloca i32, align 4
  %num_decode = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %ignore = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dflags = alloca i32, align 4
  %dp = alloca float*, align 8
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %decode_default_1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store float 1.000000e+00, float* %decode_default_1, align 4, !tbaa !13
  %2 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @sget_variable_uint(%struct.stream_s* %7, i32* %control) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %9 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %9, i32 0, i32 2
  %call1 = call i32 @sget_variable_uint(%struct.stream_s* %8, i32* %Width) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %11, i32 0, i32 3
  %call4 = call i32 @sget_variable_uint(%struct.stream_s* %10, i32* %Height) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end:                                           ; preds = %lor.lhs.false.3
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %control, align 4, !tbaa !5
  %and = and i32 %13, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %15, i32 0, i32 1
  %call7 = call i32 @sget_matrix(%struct.stream_s* %14, %struct.gs_matrix_s* %ImageMatrix) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.10:                                        ; preds = %if.then.6
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.body.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %if.end.14

if.else:                                          ; preds = %do.end
  %17 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_pixel_image_s* %17 to %struct.gs_data_image_s*
  call void @gx_image_matrix_set_default(%struct.gs_data_image_s* %18) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %do.end.13
  %19 = load i32, i32* %control, align 4, !tbaa !5
  %shr = lshr i32 %19, 1
  %and15 = and i32 %shr, 15
  %add = add i32 %and15, 1
  %20 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %20, i32 0, i32 4
  store i32 %add, i32* %BitsPerComponent, align 4, !tbaa !65
  %21 = load i32, i32* %control, align 4, !tbaa !5
  %shr16 = lshr i32 %21, 5
  %and17 = and i32 %shr16, 3
  %22 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %22, i32 0, i32 7
  store i32 %and17, i32* %format, align 4, !tbaa !15
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %24 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %24, i32 0, i32 9
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !17
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call18 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %25) #4
  store i32 %call18, i32* %num_components, align 4, !tbaa !5
  %26 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %26, 2
  store i32 %mul, i32* %num_decode, align 4, !tbaa !5
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call19 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %27) #4
  %cmp20 = icmp eq i32 %call19, 10
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.14
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 0
  %29 = load i32, i32* %hival, align 4, !tbaa !66
  %conv = sitofp i32 %29 to float
  store float %conv, float* %decode_default_1, align 4, !tbaa !13
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.14
  %30 = load i32, i32* %control, align 4, !tbaa !5
  %and23 = and i32 %30, 128
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.93

if.then.25:                                       ; preds = %if.end.22
  %31 = bitcast i32* %dflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  store i32 65536, i32* %dflags, align 4, !tbaa !5
  %32 = bitcast float** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %33, i32 0, i32 5
  %arraydecay = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i32 0
  store float* %arraydecay, float** %dp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %num_decode, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %34, %35
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %dflags, align 4, !tbaa !5
  %cmp28 = icmp uge i32 %36, 65536
  br i1 %cmp28, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %for.body
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %38 = load i8*, i8** %limit, align 8, !tbaa !73
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %r32 = bitcast %union.stream_cursor_s* %cursor31 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r32, i32 0, i32 0
  %40 = load i8*, i8** %ptr, align 8, !tbaa !75
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp33 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 5
  %r36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_read_s*
  %ptr37 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r36, i32 0, i32 0
  %42 = load i8*, i8** %ptr37, align 8, !tbaa !75
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %ptr37, align 8, !tbaa !75
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 5
  %r39 = bitcast %union.stream_cursor_s* %cursor38 to %struct.stream_cursor_read_s*
  %ptr40 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r39, i32 0, i32 0
  %44 = load i8*, i8** %ptr40, align 8, !tbaa !75
  %45 = load i8, i8* %44, align 1, !tbaa !19
  %conv41 = zext i8 %45 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %46 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call42 = call i32 @spgetcc(%struct.stream_s* %46, i32 1) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv41, %cond.true ], [ %call42, %cond.false ]
  %add43 = add nsw i32 %cond, 256
  store i32 %add43, i32* %dflags, align 4, !tbaa !5
  %47 = load i32, i32* %dflags, align 4, !tbaa !5
  %cmp44 = icmp ult i32 %47, 256
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %cond.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body
  %48 = load i32, i32* %dflags, align 4, !tbaa !5
  %and49 = and i32 %48, 192
  switch i32 %and49, label %sw.epilog [
    i32 0, label %sw.bb
    i32 64, label %sw.bb.61
    i32 128, label %sw.bb.74
    i32 192, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %if.end.48
  %49 = load float*, float** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %49, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !13
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %add50 = add nsw i32 %50, 1
  %cmp51 = icmp eq i32 %add50, 1
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %sw.bb
  %51 = load float, float* %decode_default_1, align 4, !tbaa !13
  br label %cond.end.58

cond.false.54:                                    ; preds = %sw.bb
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %add55 = add nsw i32 %52, 1
  %and56 = and i32 %add55, 1
  %conv57 = sitofp i32 %and56 to float
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi float [ %51, %cond.true.53 ], [ %conv57, %cond.false.54 ]
  %53 = load float*, float** %dp, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds float, float* %53, i64 1
  store float %cond59, float* %arrayidx60, align 4, !tbaa !13
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.48
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %add62 = add nsw i32 %54, 1
  %cmp63 = icmp eq i32 %add62, 1
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %sw.bb.61
  %55 = load float, float* %decode_default_1, align 4, !tbaa !13
  br label %cond.end.70

cond.false.66:                                    ; preds = %sw.bb.61
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %add67 = add nsw i32 %56, 1
  %and68 = and i32 %add67, 1
  %conv69 = sitofp i32 %and68 to float
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.66, %cond.true.65
  %cond71 = phi float [ %55, %cond.true.65 ], [ %conv69, %cond.false.66 ]
  %57 = load float*, float** %dp, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds float, float* %57, i64 0
  store float %cond71, float* %arrayidx72, align 4, !tbaa !13
  %58 = load float*, float** %dp, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds float, float* %58, i64 1
  store float 0.000000e+00, float* %arrayidx73, align 4, !tbaa !13
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.48
  %59 = load float*, float** %dp, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds float, float* %59, i64 0
  store float 0.000000e+00, float* %arrayidx75, align 4, !tbaa !13
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %61 = load float*, float** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %61, i64 1
  %62 = bitcast float* %add.ptr to i8*
  %call76 = call i32 @sgets(%struct.stream_s* %60, i8* %62, i32 4, i32* %ignore) #4
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %sw.bb.74
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %sw.bb.74
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.48
  %63 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %64 = load float*, float** %dp, align 8, !tbaa !1
  %65 = bitcast float* %64 to i8*
  %call82 = call i32 @sgets(%struct.stream_s* %63, i8* %65, i32 8, i32* %ignore) #4
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %sw.bb.81
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %sw.bb.81
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.48, %if.end.86, %if.end.80, %cond.end.70, %cond.end.58
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %add87 = add nsw i32 %66, 2
  store i32 %add87, i32* %i, align 4, !tbaa !5
  %67 = load float*, float** %dp, align 8, !tbaa !1
  %add.ptr88 = getelementptr inbounds float, float* %67, i64 2
  store float* %add.ptr88, float** %dp, align 8, !tbaa !1
  %68 = load i32, i32* %dflags, align 4, !tbaa !5
  %shl = shl i32 %68, 2
  store i32 %shl, i32* %dflags, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.89

do.body.89:                                       ; preds = %for.end
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.91, %if.then.85, %if.then.79, %if.then.46
  %69 = bitcast float** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i32* %dflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.118 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.110

if.else.93:                                       ; preds = %if.end.22
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.108, %if.else.93
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %72 = load i32, i32* %num_decode, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %71, %72
  br i1 %cmp95, label %for.body.97, label %for.end.109

for.body.97:                                      ; preds = %for.cond.94
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %73, 1
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %for.body.97
  %74 = load float, float* %decode_default_1, align 4, !tbaa !13
  br label %cond.end.104

cond.false.101:                                   ; preds = %for.body.97
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %and102 = and i32 %75, 1
  %conv103 = sitofp i32 %and102 to float
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.101, %cond.true.100
  %cond105 = phi float [ %74, %cond.true.100 ], [ %conv103, %cond.false.101 ]
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %76 to i64
  %77 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Decode106 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %77, i32 0, i32 5
  %arrayidx107 = getelementptr inbounds [130 x float], [130 x float]* %Decode106, i32 0, i64 %idxprom
  store float %cond105, float* %arrayidx107, align 4, !tbaa !13
  br label %for.inc.108

for.inc.108:                                      ; preds = %cond.end.104
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.94

for.end.109:                                      ; preds = %for.cond.94
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %cleanup.cont
  %79 = load i32, i32* %control, align 4, !tbaa !5
  %and111 = and i32 %79, 256
  %cmp112 = icmp ne i32 %and111, 0
  %conv113 = zext i1 %cmp112 to i32
  %80 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %80, i32 0, i32 6
  store i32 %conv113, i32* %Interpolate, align 4, !tbaa !68
  %81 = load i32, i32* %control, align 4, !tbaa !5
  %and114 = and i32 %81, 512
  %cmp115 = icmp ne i32 %and114, 0
  %conv116 = zext i1 %cmp115 to i32
  %82 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %82, i32 0, i32 8
  store i32 %conv116, i32* %CombineWithColor, align 4, !tbaa !18
  %83 = load i32, i32* %control, align 4, !tbaa !5
  %shr117 = lshr i32 %83, 10
  store i32 %shr117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %if.end.110, %cleanup, %if.then.9, %if.then
  %84 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast float* %decode_default_1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare i32 @sget_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #0

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #0

; Function Attrs: nounwind uwtable
define void @gx_pixel_image_release(%struct.gs_pixel_image_s* %pic, %struct.gs_memory_s* %mem) #1 {
entry:
  %pic.addr = alloca %struct.gs_pixel_image_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_pixel_image_s* %pic, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pic.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_pixel_image_s* %0 to %struct.gs_image_common_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_image_default_release(%struct.gs_image_common_s* %1, %struct.gs_memory_s* %2) #4
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 36}
!8 = !{!"gs_data_image_s", !2, i64 0, !9, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564}
!9 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!10 = !{!"float", !3, i64 0}
!11 = !{!8, !6, i64 32}
!12 = !{!8, !6, i64 40}
!13 = !{!10, !10, i64 0}
!14 = !{!8, !6, i64 564}
!15 = !{!16, !3, i64 568}
!16 = !{!"gs_pixel_image_s", !2, i64 0, !9, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576}
!17 = !{!16, !2, i64 576}
!18 = !{!16, !6, i64 572}
!19 = !{!3, !3, i64 0}
!20 = !{!8, !2, i64 0}
!21 = !{!22, !2, i64 0}
!22 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !23, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!23 = !{!"long", !3, i64 0}
!24 = !{!22, !2, i64 8}
!25 = !{!22, !2, i64 16}
!26 = !{!27, !2, i64 24}
!27 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !28, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !29, i64 96, !32, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !23, i64 928, !23, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !23, i64 968, !23, i64 976, !33, i64 984, !6, i64 1052, !6, i64 1056, !34, i64 1064, !2, i64 1104, !3, i64 1112, !36, i64 1120, !37, i64 1144}
!28 = !{!"rc_header_s", !23, i64 0, !2, i64 8, !2, i64 16}
!29 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !30, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !31, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !23, i64 704, !6, i64 712}
!30 = !{!"short", !3, i64 0}
!31 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!32 = !{!"gx_device_cached_colors_s", !23, i64 0, !23, i64 8}
!33 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!34 = !{!"gdev_space_params_s", !23, i64 0, !23, i64 8, !35, i64 16, !6, i64 32, !3, i64 36}
!35 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !23, i64 8}
!36 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!38 = !{!22, !23, i64 32}
!39 = !{!22, !6, i64 40}
!40 = !{!22, !6, i64 44}
!41 = !{!42, !6, i64 0}
!42 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!43 = !{!42, !6, i64 4}
!44 = !{!45, !2, i64 0}
!45 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!45, !6, i64 8}
!47 = !{!45, !6, i64 12}
!48 = !{!49, !2, i64 0}
!49 = !{!"gx_image_enum_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!50 = !{!49, !2, i64 16}
!51 = !{!49, !2, i64 24}
!52 = !{!49, !2, i64 8}
!53 = !{!54, !2, i64 24}
!54 = !{!"gs_memory_s", !2, i64 0, !55, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!55 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!56 = !{!9, !10, i64 4}
!57 = !{!9, !10, i64 8}
!58 = !{!8, !10, i64 8}
!59 = !{!8, !10, i64 20}
!60 = !{!8, !10, i64 24}
!61 = !{!8, !10, i64 28}
!62 = !{!63, !2, i64 8}
!63 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!64 = !{!63, !2, i64 16}
!65 = !{!16, !6, i64 40}
!66 = !{!67, !6, i64 0}
!67 = !{!"gs_indexed_params_s", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 24}
!68 = !{!16, !6, i64 564}
!69 = !{!16, !6, i64 32}
!70 = !{!16, !6, i64 36}
!71 = !{!8, !10, i64 12}
!72 = !{!8, !10, i64 16}
!73 = !{!74, !2, i64 8}
!74 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!75 = !{!74, !2, i64 0}
