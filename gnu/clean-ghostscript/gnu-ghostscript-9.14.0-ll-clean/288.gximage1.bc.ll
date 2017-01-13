; ModuleID = './gximage1.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }

@.str = private unnamed_addr constant [12 x i8] c"gs_image1_t\00", align 1
@image1_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_gs_pixel_image, %struct.gc_ptr_element_s* null }, align 8
@st_gs_image1 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image1_reloc_ptrs to i8*) }, align 8
@gs_image_type_1 = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_image1 to %struct.gs_memory_struct_type_s*), i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image1, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_data_image_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image1_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image1_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image1_release, i32 1 }, align 8
@gs_image_type_mask1 = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_image1 to %struct.gs_memory_struct_type_s*), i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image1, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_data_image_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image1_mask_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image1_mask_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image_default_release, i32 1 }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"gx_image_free_enum\00", align 1
@st_gs_pixel_image = external constant %struct.gs_memory_struct_type_s, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_begin_image1(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #1 {
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
  %pim = alloca %struct.gs_image1_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
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
  %1 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image_common_s* %2 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %3, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %6 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_enum_alloc(%struct.gs_image_common_s* %5, %struct.gs_int_rect_s* %6, %struct.gs_memory_s* %7, %struct.gx_image_enum_s** %penum) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 12
  %11 = load i32, i32* %Alpha, align 4, !tbaa !7
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 15
  store i32 %11, i32* %alpha, align 4, !tbaa !11
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %use_mask_color = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 17
  store i8 0, i8* %use_mask_color, align 1, !tbaa !32
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 13
  %15 = load i32, i32* %image_parent_type, align 4, !tbaa !33
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %image_parent_type1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 78
  store i32 %15, i32* %image_parent_type1, align 4, !tbaa !34
  %17 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %17, i32 0, i32 10
  %18 = load i32, i32* %ImageMask, align 4, !tbaa !35
  %conv = trunc i32 %18 to i8
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %masked = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 19
  store i8 %conv, i8* %masked, align 1, !tbaa !36
  %20 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMask2 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %20, i32 0, i32 10
  %21 = load i32, i32* %ImageMask2, align 4, !tbaa !35
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %22 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %22, i32 0, i32 11
  %23 = load i32, i32* %adjust, align 4, !tbaa !37
  %tobool3 = icmp ne i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %24 = phi i1 [ false, %if.end ], [ %tobool3, %land.rhs ]
  %cond = select i1 %24, i64 64, i64 0
  %conv4 = trunc i64 %cond to i32
  %25 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %25, i32 0, i32 45
  store i32 %conv4, i32* %adjust5, align 4, !tbaa !38
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %29 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %call6 = call i32 @gx_image_enum_begin(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %27, %struct.gs_matrix_s* %28, %struct.gs_image_common_s* %29, %struct.gx_device_color_s* %30, %struct.gx_clip_path_s* %31, %struct.gs_memory_s* %32, %struct.gx_image_enum_s* %33) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %34, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.end
  %35 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %36 = bitcast %struct.gx_image_enum_s* %35 to %struct.gx_image_enum_common_s*
  %37 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %36, %struct.gx_image_enum_common_s** %37, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.end
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gx_data_image_source_size(%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gx_image1_sput(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s** %ppcs) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ppcs, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %2, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %3 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_image_common_s* %3 to %struct.gs_pixel_image_s*
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %6 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs.addr, align 8, !tbaa !1
  %7 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %7, i32 0, i32 12
  %8 = load i32, i32* %Alpha, align 4, !tbaa !7
  %call = call i32 @gx_pixel_image_sput(%struct.gs_pixel_image_s* %4, %struct.stream_s* %5, %struct.gs_color_space_s** %6, i32 %8) #4
  %9 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image1_sget(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s* %pcs) #1 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %2, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %5 = bitcast %struct.gs_image1_s* %4 to %struct.gs_pixel_image_s*
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gx_pixel_image_sget(%struct.gs_pixel_image_s* %5, %struct.stream_s* %6, %struct.gs_color_space_s* %7) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_1 to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !39
  %11 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %11, i32 0, i32 10
  store i32 0, i32* %ImageMask, align 4, !tbaa !35
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %13 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %13, i32 0, i32 12
  store i32 %12, i32* %Alpha, align 4, !tbaa !7
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 13
  store i32 0, i32* %image_parent_type, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @gx_image1_release(%struct.gs_image_common_s* %pic, %struct.gs_memory_s* %mem) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image_common_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_pixel_image_release(%struct.gs_pixel_image_s* %1, %struct.gs_memory_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image1_mask_sput(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s** %ignore_ppcs) #1 {
entry:
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ignore_ppcs.addr = alloca %struct.gs_color_space_s**, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  %control = alloca i32, align 4
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s** %ignore_ppcs, %struct.gs_color_space_s*** %ignore_ppcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %2, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %5 = bitcast %struct.gs_image1_s* %4 to %struct.gs_data_image_s*
  %call = call i32 @gx_image_matrix_is_default(%struct.gs_data_image_s* %5) #4
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %6 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %6, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !40
  %cmp = fcmp une float %7, 0.000000e+00
  %cond1 = select i1 %cmp, i32 2, i32 0
  %or = or i32 %cond, %cond1
  %8 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %8, i32 0, i32 6
  %9 = load i32, i32* %Interpolate, align 4, !tbaa !41
  %tobool2 = icmp ne i32 %9, 0
  %cond3 = select i1 %tobool2, i32 4, i32 0
  %or4 = or i32 %or, %cond3
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 11
  %11 = load i32, i32* %adjust, align 4, !tbaa !37
  %tobool5 = icmp ne i32 %11, 0
  %cond6 = select i1 %tobool5, i32 8, i32 0
  %or7 = or i32 %or4, %cond6
  %12 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %12, i32 0, i32 12
  %13 = load i32, i32* %Alpha, align 4, !tbaa !7
  %shl = shl i32 %13, 4
  %or8 = or i32 %or7, %shl
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %14, i32 0, i32 4
  %15 = load i32, i32* %BitsPerComponent, align 4, !tbaa !42
  %sub = sub nsw i32 %15, 1
  %shl9 = shl i32 %sub, 6
  %or10 = or i32 %or8, %shl9
  store i32 %or10, i32* %control, align 4, !tbaa !5
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %17 = load i32, i32* %control, align 4, !tbaa !5
  call void @sput_variable_uint(%struct.stream_s* %16, i32 %17) #4
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %19, i32 0, i32 2
  %20 = load i32, i32* %Width, align 4, !tbaa !43
  call void @sput_variable_uint(%struct.stream_s* %18, i32 %20) #4
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %22 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %22, i32 0, i32 3
  %23 = load i32, i32* %Height, align 4, !tbaa !44
  call void @sput_variable_uint(%struct.stream_s* %21, i32 %23) #4
  %24 = load i32, i32* %control, align 4, !tbaa !5
  %and = and i32 %24, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %26 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %26, i32 0, i32 1
  %call12 = call i32 @sput_matrix(%struct.stream_s* %25, %struct.gs_matrix_s* %ImageMatrix) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image1_mask_sget(%struct.gs_image_common_s* %pic, %struct.stream_s* %s, %struct.gs_color_space_s* %ignore_pcs) #1 {
entry:
  %retval = alloca i32, align 4
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %ignore_pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  %code = alloca i32, align 4
  %control = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %ignore_pcs, %struct.gs_color_space_s** %ignore_pcs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %2, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @sget_variable_uint(%struct.stream_s* %5, i32* %control) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %8 = load i32, i32* %control, align 4, !tbaa !5
  %and = and i32 %8, 2
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %7, i32 %conv, i32 1) #4
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 2
  %call2 = call i32 @sget_variable_uint(%struct.stream_s* %9, i32* %Width) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %12 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %12, i32 0, i32 3
  %call5 = call i32 @sget_variable_uint(%struct.stream_s* %11, i32* %Height) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %14 = load i32, i32* %control, align 4, !tbaa !5
  %and10 = and i32 %14, 1
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %16, i32 0, i32 1
  %call12 = call i32 @sget_matrix(%struct.stream_s* %15, %struct.gs_matrix_s* %ImageMatrix) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.11
  br label %if.end.17

if.else:                                          ; preds = %if.end.9
  %18 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %19 = bitcast %struct.gs_image1_s* %18 to %struct.gs_data_image_s*
  call void @gx_image_matrix_set_default(%struct.gs_data_image_s* %19) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16
  %20 = load i32, i32* %control, align 4, !tbaa !5
  %and18 = and i32 %20, 4
  %cmp19 = icmp ne i32 %and18, 0
  %conv20 = zext i1 %cmp19 to i32
  %21 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %21, i32 0, i32 6
  store i32 %conv20, i32* %Interpolate, align 4, !tbaa !41
  %22 = load i32, i32* %control, align 4, !tbaa !5
  %and21 = and i32 %22, 8
  %cmp22 = icmp ne i32 %and21, 0
  %conv23 = zext i1 %cmp22 to i32
  %23 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %23, i32 0, i32 11
  store i32 %conv23, i32* %adjust, align 4, !tbaa !37
  %24 = load i32, i32* %control, align 4, !tbaa !5
  %shr = lshr i32 %24, 4
  %and24 = and i32 %shr, 3
  %25 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %25, i32 0, i32 12
  store i32 %and24, i32* %Alpha, align 4, !tbaa !7
  %26 = load i32, i32* %control, align 4, !tbaa !5
  %shr25 = lshr i32 %26, 6
  %and26 = and i32 %shr25, 15
  %add = add i32 %and26, 1
  %27 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %27, i32 0, i32 4
  store i32 %add, i32* %BitsPerComponent, align 4, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.8, %if.then
  %28 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gx_image_default_release(%struct.gs_image_common_s*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_image_t_init_adjust(%struct.gs_image1_s* %pim, %struct.gs_color_space_s* %color_space, i32 %adjust) #1 {
entry:
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %color_space.addr = alloca %struct.gs_color_space_s*, align 8
  %adjust.addr = alloca i32, align 4
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %color_space, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  store i32 %adjust, i32* %adjust.addr, align 4, !tbaa !5
  %0 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image1_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  call void @gs_pixel_image_t_init(%struct.gs_pixel_image_s* %1, %struct.gs_color_space_s* %2) #4
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %3, null
  %conv = zext i1 %cmp to i32
  %4 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %4, i32 0, i32 10
  store i32 %conv, i32* %ImageMask, align 4, !tbaa !35
  %5 = load i32, i32* %adjust.addr, align 4, !tbaa !5
  %6 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %adjust1 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %6, i32 0, i32 11
  store i32 %5, i32* %adjust1, align 4, !tbaa !37
  %7 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask2 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %7, i32 0, i32 10
  %8 = load i32, i32* %ImageMask2, align 4, !tbaa !35
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_mask1 to %struct.gx_image_type_s*), %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_1 to %struct.gx_image_type_s*)
  %9 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %9, i32 0, i32 0
  store %struct.gx_image_type_s* %cond, %struct.gx_image_type_s** %type, align 8, !tbaa !39
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 12
  store i32 0, i32* %Alpha, align 4, !tbaa !7
  %11 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %11, i32 0, i32 13
  store i32 0, i32* %image_parent_type, align 4, !tbaa !33
  ret void
}

declare void @gs_pixel_image_t_init(%struct.gs_pixel_image_s*, %struct.gs_color_space_s*) #0

; Function Attrs: nounwind uwtable
define void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %pim, i32 %write_1s, i32 %adjust) #1 {
entry:
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %write_1s.addr = alloca i32, align 4
  %adjust.addr = alloca i32, align 4
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %write_1s, i32* %write_1s.addr, align 4, !tbaa !5
  store i32 %adjust, i32* %adjust.addr, align 4, !tbaa !5
  %0 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %0, %struct.gs_color_space_s* null, i32 1) #4
  %1 = load i32, i32* %write_1s.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %2, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !40
  %3 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode1 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %3, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [130 x float], [130 x float]* %Decode1, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx2, align 4, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode3 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %4, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [130 x float], [130 x float]* %Decode3, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx4, align 4, !tbaa !40
  %5 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode5 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %5, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [130 x float], [130 x float]* %Decode5, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx6, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %adjust.addr, align 4, !tbaa !5
  %7 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %adjust7 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %7, i32 0, i32 11
  store i32 %6, i32* %adjust7, align 4, !tbaa !37
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_image_enum_alloc(%struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gs_memory_s*, %struct.gx_image_enum_s**) #0

declare i32 @gx_image_enum_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gx_image_free_enum(%struct.gx_image_enum_common_s** %ppenum) #1 {
entry:
  %ppenum.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %penum = alloca %struct.gx_image_enum_common_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_image_enum_common_s** %ppenum, %struct.gx_image_enum_common_s*** %ppenum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_common_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %ppenum.addr, align 8, !tbaa !1
  %2 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %1, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %2, %struct.gx_image_enum_common_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %penum, align 8, !tbaa !1
  %7 = bitcast %struct.gx_image_enum_common_s* %6 to i8*
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %9 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !47
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %penum, align 8, !tbaa !1
  %12 = bitcast %struct.gx_image_enum_common_s* %11 to i8*
  %call = call i32 %9(%struct.gs_memory_s* %10, i8* %12) #4
  %conv = zext i32 %call to i64
  %call1 = call i8* @memset(i8* %7, i32 0, i64 %conv) #5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !50
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %16 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %penum, align 8, !tbaa !1
  %17 = bitcast %struct.gx_image_enum_common_s* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #4
  %18 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %ppenum.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %18, align 8, !tbaa !1
  %19 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_image_enum_common_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gx_pixel_image_sput(%struct.gs_pixel_image_s*, %struct.stream_s*, %struct.gs_color_space_s**, i32) #0

declare i32 @gx_pixel_image_sget(%struct.gs_pixel_image_s*, %struct.stream_s*, %struct.gs_color_space_s*) #0

declare i32 @gx_image_matrix_is_default(%struct.gs_data_image_s*) #0

declare void @sput_variable_uint(%struct.stream_s*, i32) #0

declare i32 @sput_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #0

declare i32 @sget_variable_uint(%struct.stream_s*, i32*) #0

declare i32 @sget_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #0

declare void @gx_image_matrix_set_default(%struct.gs_data_image_s*) #0

declare void @gx_pixel_image_release(%struct.gs_pixel_image_s*, %struct.gs_memory_s*) #0

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
!7 = !{!8, !3, i64 592}
!8 = !{!"gs_image1_s", !2, i64 0, !9, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!9 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!10 = !{!"float", !3, i64 0}
!11 = !{!12, !3, i64 580}
!12 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !14, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !9, i64 1120, !15, i64 1144, !16, i64 1160, !6, i64 1176, !6, i64 1180, !17, i64 1184, !17, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !18, i64 1272, !18, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !19, i64 1348, !17, i64 1356, !17, i64 1364, !20, i64 1372, !6, i64 1492, !6, i64 1496, !19, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !25, i64 23120, !25, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !30, i64 24504, !31, i64 24792, !6, i64 24808}
!13 = !{!"long", !3, i64 0}
!14 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!15 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!16 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!17 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 8}
!19 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!20 = !{!"dd_", !21, i64 0, !21, i64 40, !21, i64 80}
!21 = !{!"gx_dda_fixed_point_s", !22, i64 0, !22, i64 20}
!22 = !{!"gx_dda_fixed_s", !23, i64 0, !24, i64 8}
!23 = !{!"_a", !6, i64 0, !6, i64 4}
!24 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!25 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !19, i64 352, !6, i64 360, !26, i64 368, !28, i64 632}
!26 = !{!"gs_client_color_s", !2, i64 0, !27, i64 8}
!27 = !{!"gs_paint_color_s", !3, i64 0}
!28 = !{!"_mask", !29, i64 0, !13, i64 8, !2, i64 16}
!29 = !{!"mp_", !6, i64 0, !6, i64 4}
!30 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!31 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!32 = !{!12, !3, i64 1116}
!33 = !{!8, !3, i64 596}
!34 = !{!12, !3, i64 24500}
!35 = !{!8, !6, i64 584}
!36 = !{!12, !3, i64 1118}
!37 = !{!8, !6, i64 588}
!38 = !{!12, !6, i64 1308}
!39 = !{!8, !2, i64 0}
!40 = !{!10, !10, i64 0}
!41 = !{!8, !6, i64 564}
!42 = !{!8, !6, i64 40}
!43 = !{!8, !6, i64 32}
!44 = !{!8, !6, i64 36}
!45 = !{!46, !2, i64 24}
!46 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!47 = !{!48, !2, i64 120}
!48 = !{!"gs_memory_s", !2, i64 0, !49, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!49 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!50 = !{!48, !2, i64 24}
