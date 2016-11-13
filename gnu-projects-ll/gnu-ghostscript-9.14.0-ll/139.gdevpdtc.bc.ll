; ModuleID = './gdevpdtc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.cached_char_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.pdf_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, %struct.gs_text_enum_s*, %struct.gs_fixed_point_s, i32, i32, [10 x double], %struct.pdf_char_glyph_pairs_s*, i64 }
%struct.pdf_char_glyph_pairs_s = type { i32, i32, i32, [1 x %struct.pdf_char_glyph_pair_s] }
%struct.pdf_char_glyph_pair_s = type { i64, i64 }
%struct.pdf_text_process_state_s = type { %struct.pdf_text_state_values_s, %struct.gs_font_s* }
%struct.pdf_text_state_values_s = type { float, %struct.pdf_font_resource_s*, double, %struct.gs_matrix_s, i32, float }
%struct.pdf_font_resource_s = type { %struct.pdf_font_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s*, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*)*, %struct.gs_string_s, %struct.pdf_font_descriptor_s*, %struct.pdf_base_font_s*, i32, double*, i8*, %struct.pdf_resource_s*, %struct.gs_cmap_s*, i32 (%struct.gs_memory_s*, i64, i8*)*, i8*, %union.anon.1 }
%struct.cos_object_s = type opaque
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
%struct.cos_array_s = type opaque
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.cos_dict_s = type opaque
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_font_descriptor_s = type opaque
%struct.pdf_base_font_s = type { %struct.gs_font_base_s*, %struct.gs_font_base_s*, i32, i32, i32, i8*, i32, %struct.gs_string_s, i32, %struct.cos_dict_s* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, %struct.pdf_encoding_element_s*, %struct.gs_point_s*, i32, %union.anon.4 }
%struct.pdf_encoding_element_s = type { i64, %struct.gs_const_string_s, i32 }
%union.anon.4 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_rect_s, %struct.gs_matrix_s, %struct.pdf_char_proc_ownership_s*, i32, i32, %struct.cos_dict_s*, i8* }
%struct.pdf_char_proc_ownership_s = type opaque
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.pdf_glyph_widths_s = type { %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s, i32, i32, %struct.gs_rect_s }
%struct.pdf_glyph_width_s = type { double, %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.anon.2 = type { i64, i16*, i32, i64, double*, double*, i8*, %struct.pdf_font_resource_s* }
%struct.anon = type { %struct.pdf_font_resource_s*, [27 x i8], %struct.gs_const_string_s, i32, i32, i32 }

@.str = private unnamed_addr constant [94 x i8] c"Missing glyph CID=%d, glyph=%04x in the font %s . The output PDF may fail with some viewers.\0A\00", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@standard_cmap_names = internal constant [65 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [30 x i8] c"pdf_font_resource_t(CMapName)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/Identity-V\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/Identity-H\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"UniGB-UTF16-H\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"UniGB-UTF16-V\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"GBKp-EUC-H\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"GBKp-EUC-V\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"HKscs-B5-H\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"HKscs-B5-V\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"UniCNS-UTF16-H\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"UniCNS-UTF16-V\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"UniJIS-UTF16-H\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"UniJIS-UTF16-V\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"UniKS-UTF16-H\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"UniKS-UTF16-V\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"GBK2K-H\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"GBK2K-V\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"GBpc-EUC-V\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"GBK-EUC-H\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"GBK-EUC-V\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"UniGB-UCS2-H\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"UniGB-UCS2-V\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ETenms-B5-H\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ETenms-B5-V\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"UniCNS-UCS2-H\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"UniCNS-UCS2-V\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"90msp-RKSJ-H\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"90msp-RKSJ-V\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"EUC-H\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"EUC-V\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"UniJIS-UCS2-H\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"UniJIS-UCS2-V\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"UniJIS-UCS2-HW-H\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"UniJIS-UCS2-HW-V\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"KSCms-UHC-HW-H\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"KSCms-UHC-HW-V\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"UniKS-UCS2-H\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"UniKS-UCS2-V\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"GB-EUC-H\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"GB-EUC-V\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"GBpc-EUC-HB5pc-H\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"B5pc-V\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"ETen-B5-H\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"ETen-B5-V\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"CNS-EUC-H\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"CNS-EUC-V\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"83pv-RKSJ-H\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"90ms-RKSJ-H\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"90ms-RKSJ-V\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"90pv-RKSJ-H\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Add-RKSJ-H\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Add-RKSJ-V\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Ext-RKSJ-H\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Ext-RKSJ-V\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"KSC-EUC-H\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"KSC-EUC-V\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"KSCms-UHC-H\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"KSCms-UHC-V\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"KSCpc-EUC-H\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Identity-H\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Identity-V\00", align 1

; Function Attrs: nounwind uwtable
define i32 @process_composite_text(%struct.gs_text_enum_s* %pte, i8* %vbuf, i32 %bsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %vbuf.addr = alloca i8*, align 8
  %bsize.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %penum = alloca %struct.pdf_text_enum_s*, align 8
  %code = alloca i32, align 4
  %str = alloca %struct.gs_string_s, align 8
  %text_state = alloca %struct.pdf_text_process_state_s, align 8
  %curr = alloca %struct.pdf_text_enum_s, align 8
  %prev = alloca %struct.pdf_text_enum_s, align 8
  %out = alloca %struct.pdf_text_enum_s, align 8
  %total_width = alloca %struct.gs_point_s, align 8
  %psmat = alloca %struct.gs_matrix_s*, align 8
  %prev_font = alloca %struct.gs_font_s*, align 8
  %chr = alloca i64, align 8
  %char_code = alloca i64, align 8
  %space_char = alloca i64, align 8
  %buf_index = alloca i32, align 4
  %return_width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %font_code = alloca i32, align 4
  %new_font = alloca %struct.gs_font_s*, align 8
  %glyph = alloca i64, align 8
  %fmat = alloca %struct.gs_matrix_s, align 4
  %glyph81 = alloca i64, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %vbuf, i8** %vbuf.addr, align 8, !tbaa !1
  store i32 %bsize, i32* %bsize.addr, align 4, !tbaa !5
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  store i8* %1, i8** %buf, align 8, !tbaa !1
  %2 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_text_enum_s* %3 to %struct.pdf_text_enum_s*
  store %struct.pdf_text_enum_s* %4, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %6 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast %struct.pdf_text_enum_s* %curr to i8*
  call void @llvm.lifetime.start(i64 568, i8* %8) #1
  %9 = bitcast %struct.pdf_text_enum_s* %prev to i8*
  call void @llvm.lifetime.start(i64 568, i8* %9) #1
  %10 = bitcast %struct.pdf_text_enum_s* %out to i8*
  call void @llvm.lifetime.start(i64 568, i8* %10) #1
  %11 = bitcast %struct.gs_point_s* %total_width to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.gs_matrix_s* null, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_s** %prev_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %14 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %char_code to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 195948557, i64* %char_code, align 8, !tbaa !7
  %16 = bitcast i64* %space_char to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 -1, i64* %space_char, align 8, !tbaa !7
  %17 = bitcast i32* %buf_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %buf_index, align 4, !tbaa !5
  %18 = bitcast i32* %return_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %19, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %20 = load i32, i32* %operation, align 4, !tbaa !9
  %and = and i32 %20, 131072
  store i32 %and, i32* %return_width, align 4, !tbaa !5
  %21 = load i8*, i8** %buf, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 0
  store i8* %21, i8** %data, align 8, !tbaa !19
  %22 = load i32, i32* %return_width, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %23 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %23, i32 0, i32 5
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !21
  %25 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %25, i32 0, i32 30
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %24, %struct.gs_fixed_point_s* %origin) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %26, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %28 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text3 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %28, i32 0, i32 0
  %operation4 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text3, i32 0, i32 0
  %29 = load i32, i32* %operation4, align 4, !tbaa !22
  %and5 = and i32 %29, 60
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.2
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.8:                                         ; preds = %if.end.2
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text9 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 0
  %operation10 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text9, i32 0, i32 0
  %31 = load i32, i32* %operation10, align 4, !tbaa !22
  %and11 = and i32 %31, 65536
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.14:                                        ; preds = %if.end.8
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !24
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !25
  %32 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %33 = bitcast %struct.pdf_text_enum_s* %curr to i8*
  %34 = bitcast %struct.pdf_text_enum_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 568, i32 8, i1 false), !tbaa.struct !26
  %35 = bitcast %struct.pdf_text_enum_s* %prev to i8*
  %36 = bitcast %struct.pdf_text_enum_s* %curr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 568, i32 8, i1 false), !tbaa.struct !26
  %37 = bitcast %struct.pdf_text_enum_s* %out to i8*
  %38 = bitcast %struct.pdf_text_enum_s* %curr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 568, i32 8, i1 false), !tbaa.struct !26
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 12
  store %struct.gs_font_s* null, %struct.gs_font_s** %current_font, align 8, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.161, %if.end.14
  %39 = bitcast i32* %font_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_font_s** %new_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %new_font, align 8, !tbaa !1
  %41 = bitcast %struct.pdf_text_enum_s* %out to %struct.gs_text_enum_s*
  %42 = bitcast %struct.pdf_text_enum_s* %curr to %struct.gs_text_enum_s*
  call void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %41, %struct.gs_text_enum_s* %42, i32 0) #5
  br label %for.cond.15

for.cond.15:                                      ; preds = %cleanup, %for.cond
  %43 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast %struct.pdf_text_enum_s* %prev to %struct.gs_text_enum_s*
  %45 = bitcast %struct.pdf_text_enum_s* %curr to %struct.gs_text_enum_s*
  call void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %44, %struct.gs_text_enum_s* %45, i32 0) #5
  %46 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %46, i32 0, i32 4
  %47 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !30
  %procs = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %47, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %48 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !31
  %49 = bitcast %struct.pdf_text_enum_s* %curr to %struct.gs_text_enum_s*
  %call16 = call i32 %48(%struct.gs_text_enum_s* %49, i64* %chr, i64* %glyph) #5
  store i32 %call16, i32* %font_code, align 4, !tbaa !5
  %50 = load i32, i32* %font_code, align 4, !tbaa !5
  switch i32 %50, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.cond.15, %for.cond.15
  %51 = load i64, i64* %chr, align 8, !tbaa !7
  %returned = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 28
  %current_char = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 0
  store i64 %51, i64* %current_char, align 8, !tbaa !38
  %52 = bitcast %struct.pdf_text_enum_s* %curr to %struct.gs_text_enum_s*
  %call17 = call i32 @gx_current_char(%struct.gs_text_enum_s* %52) #5
  %conv = sext i32 %call17 to i64
  store i64 %conv, i64* %char_code, align 8, !tbaa !7
  %fstack = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %53 = load i32, i32* %depth, align 4, !tbaa !39
  %idxprom = sext i32 %53 to i64
  %fstack18 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !40
  store %struct.gs_font_s* %54, %struct.gs_font_s** %new_font, align 8, !tbaa !1
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %new_font, align 8, !tbaa !1
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %cmp19 = icmp ne %struct.gs_font_s* %55, %56
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.22:                                        ; preds = %sw.bb
  %57 = load i64, i64* %chr, align 8, !tbaa !7
  %58 = load i64, i64* %chr, align 8, !tbaa !7
  %conv23 = trunc i64 %58 to i8
  %conv24 = zext i8 %conv23 to i64
  %cmp25 = icmp ne i64 %57, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.22
  %59 = load i32, i32* %buf_index, align 4, !tbaa !5
  %60 = load i32, i32* %bsize.addr, align 4, !tbaa !5
  %cmp29 = icmp uge i32 %59, %60
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %61 = load i64, i64* %chr, align 8, !tbaa !7
  %conv33 = trunc i64 %61 to i8
  %62 = load i32, i32* %buf_index, align 4, !tbaa !5
  %idxprom34 = sext i32 %62 to i64
  %63 = load i8*, i8** %buf, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %63, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !28
  %64 = load i32, i32* %buf_index, align 4, !tbaa !5
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %buf_index, align 4, !tbaa !5
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %new_font, align 8, !tbaa !1
  store %struct.gs_font_s* %65, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %fstack36 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %depth37 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack36, i32 0, i32 0
  %66 = load i32, i32* %depth37, align 4, !tbaa !39
  %sub = sub nsw i32 %66, 1
  %idxprom38 = sext i32 %sub to i64
  %fstack39 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %items40 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack39, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items40, i32 0, i64 %idxprom38
  %font42 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx41, i32 0, i32 0
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %font42, align 8, !tbaa !40
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %68 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text43 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %68, i32 0, i32 0
  %operation44 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text43, i32 0, i32 0
  %69 = load i32, i32* %operation44, align 4, !tbaa !22
  %and45 = and i32 %69, 128
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.32
  %70 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text47 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %70, i32 0, i32 0
  %space = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text47, i32 0, i32 5
  %s_char = bitcast %union.s_* %space to i64*
  %71 = load i64, i64* %s_char, align 8, !tbaa !7
  %72 = load i64, i64* %char_code, align 8, !tbaa !7
  %cmp48 = icmp eq i64 %71, %72
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  %73 = load i64, i64* %chr, align 8, !tbaa !7
  store i64 %73, i64* %space_char, align 8, !tbaa !7
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true, %if.end.32
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %for.cond.15
  %74 = load i32, i32* %font_code, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.cond.15, %if.then.21
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.51, %if.then.31, %if.then.27
  %75 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.158 [
    i32 5, label %for.cond.15
    i32 4, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %76 = load i32, i32* %buf_index, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  store i32 %76, i32* %size, align 4, !tbaa !42
  %77 = load i32, i32* %buf_index, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %77, 0
  br i1 %tobool52, label %if.then.53, label %if.end.132

if.then.53:                                       ; preds = %for.end
  %78 = bitcast %struct.gs_matrix_s* %fmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %78) #1
  %fstack54 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 19
  %depth55 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack54, i32 0, i32 0
  store i32 0, i32* %depth55, align 4, !tbaa !39
  %79 = load %struct.gs_font_s*, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %current_font56 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 12
  store %struct.gs_font_s* %79, %struct.gs_font_s** %current_font56, align 8, !tbaa !29
  %fstack57 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 19
  %depth58 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack57, i32 0, i32 0
  %80 = load i32, i32* %depth58, align 4, !tbaa !39
  %idxprom59 = sext i32 %80 to i64
  %fstack60 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 19
  %items61 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack60, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items61, i32 0, i64 %idxprom59
  %font63 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx62, i32 0, i32 0
  store %struct.gs_font_s* %79, %struct.gs_font_s** %font63, align 8, !tbaa !40
  %81 = load %struct.gs_font_s*, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %82 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font64 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %82, i32 0, i32 12
  store %struct.gs_font_s* %81, %struct.gs_font_s** %current_font64, align 8, !tbaa !43
  %83 = load i64, i64* %space_char, align 8, !tbaa !7
  %text65 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 0
  %space66 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text65, i32 0, i32 5
  %s_char67 = bitcast %union.s_* %space66 to i64*
  store i64 %83, i64* %s_char67, align 8, !tbaa !7
  %84 = load %struct.gs_font_s*, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  %FontMatrix68 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %84, i32 0, i32 9
  %85 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %call69 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix68, %struct.gs_matrix_s* %85, %struct.gs_matrix_s* %fmat) #5
  %index = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 17
  store i32 0, i32* %index, align 4, !tbaa !44
  %call70 = call i32 @pdf_process_string_aux(%struct.pdf_text_enum_s* %out, %struct.gs_string_s* %str, i64* null, %struct.gs_matrix_s* %fmat, %struct.pdf_text_process_state_s* %text_state) #5
  store i32 %call70, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %86, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.53
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end.74:                                        ; preds = %if.then.53
  %xy_index = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 18
  %88 = load i32, i32* %xy_index, align 4, !tbaa !45
  %xy_index75 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 18
  store i32 %88, i32* %xy_index75, align 4, !tbaa !45
  %index76 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 17
  %89 = load i32, i32* %index76, align 4, !tbaa !44
  %size77 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str, i32 0, i32 1
  %90 = load i32, i32* %size77, align 4, !tbaa !42
  %cmp78 = icmp ult i32 %89, %90
  br i1 %cmp78, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %if.end.74
  %91 = bitcast i64* %glyph81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.80
  %index82 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 17
  %92 = load i32, i32* %index82, align 4, !tbaa !44
  %dec = add i32 %92, -1
  store i32 %dec, i32* %index82, align 4, !tbaa !44
  %tobool83 = icmp ne i32 %92, 0
  br i1 %tobool83, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %93 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font84 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %93, i32 0, i32 4
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font84, align 8, !tbaa !30
  %procs85 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %94, i32 0, i32 20
  %next_char_glyph86 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs85, i32 0, i32 11
  %95 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph86, align 8, !tbaa !31
  %96 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call87 = call i32 %95(%struct.gs_text_enum_s* %96, i64* %chr, i64* %glyph81) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 2, i32* %font_code, align 4, !tbaa !5
  %97 = bitcast i64* %glyph81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %if.end.88

if.else:                                          ; preds = %if.end.74
  %98 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %99 = bitcast %struct.pdf_text_enum_s* %prev to %struct.gs_text_enum_s*
  call void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s* %98, %struct.gs_text_enum_s* %99, i32 1) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %while.end
  %xy_index89 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 18
  %100 = load i32, i32* %xy_index89, align 4, !tbaa !45
  %101 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index90 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %101, i32 0, i32 18
  store i32 %100, i32* %xy_index90, align 4, !tbaa !46
  %102 = load i32, i32* %return_width, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %102, 0
  br i1 %tobool91, label %if.then.92, label %if.end.129

if.then.92:                                       ; preds = %if.end.88
  %103 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text93 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %103, i32 0, i32 0
  %operation94 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text93, i32 0, i32 0
  %104 = load i32, i32* %operation94, align 4, !tbaa !22
  %and95 = and i32 %104, 512
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.112

if.then.97:                                       ; preds = %if.then.92
  %returned98 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 28
  %total_width99 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width99, i32 0, i32 0
  %105 = load double, double* %x100, align 8, !tbaa !47
  %x101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  store double %105, double* %x101, align 8, !tbaa !25
  %106 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned102 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %106, i32 0, i32 28
  %total_width103 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned102, i32 0, i32 2
  %x104 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width103, i32 0, i32 0
  store double %105, double* %x104, align 8, !tbaa !48
  %returned105 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 28
  %total_width106 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned105, i32 0, i32 2
  %y107 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width106, i32 0, i32 1
  %107 = load double, double* %y107, align 8, !tbaa !49
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 1
  store double %107, double* %y108, align 8, !tbaa !24
  %108 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned109 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %108, i32 0, i32 28
  %total_width110 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned109, i32 0, i32 2
  %y111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width110, i32 0, i32 1
  store double %107, double* %y111, align 8, !tbaa !50
  br label %if.end.128

if.else.112:                                      ; preds = %if.then.92
  %returned113 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 28
  %total_width114 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned113, i32 0, i32 2
  %x115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width114, i32 0, i32 0
  %109 = load double, double* %x115, align 8, !tbaa !47
  %x116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 0
  %110 = load double, double* %x116, align 8, !tbaa !25
  %add = fadd double %110, %109
  store double %add, double* %x116, align 8, !tbaa !25
  %111 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned117 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %111, i32 0, i32 28
  %total_width118 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned117, i32 0, i32 2
  %x119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width118, i32 0, i32 0
  store double %add, double* %x119, align 8, !tbaa !48
  %returned120 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %out, i32 0, i32 28
  %total_width121 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned120, i32 0, i32 2
  %y122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width121, i32 0, i32 1
  %112 = load double, double* %y122, align 8, !tbaa !49
  %y123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 1
  %113 = load double, double* %y123, align 8, !tbaa !24
  %add124 = fadd double %113, %112
  store double %add124, double* %y123, align 8, !tbaa !24
  %114 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned125 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %114, i32 0, i32 28
  %total_width126 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned125, i32 0, i32 2
  %y127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width126, i32 0, i32 1
  store double %add124, double* %y127, align 8, !tbaa !50
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.112, %if.then.97
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.88
  %115 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  call void @pdf_text_release_cgp(%struct.pdf_text_enum_s* %115) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.130

cleanup.130:                                      ; preds = %if.end.129, %if.then.73
  %116 = bitcast %struct.gs_matrix_s* %fmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %116) #1
  %cleanup.dest.131 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.131, label %cleanup.158 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.130
  br label %if.end.132

if.end.132:                                       ; preds = %cleanup.cont, %for.end
  %117 = load i32, i32* %font_code, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %117, 2
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.158

if.end.136:                                       ; preds = %if.end.132
  %118 = load i64, i64* %chr, align 8, !tbaa !7
  %conv137 = trunc i64 %118 to i8
  %119 = load i8*, i8** %buf, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %conv137, i8* %arrayidx138, align 1, !tbaa !28
  store i32 1, i32* %buf_index, align 4, !tbaa !5
  %120 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text139 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %120, i32 0, i32 0
  %operation140 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text139, i32 0, i32 0
  %121 = load i32, i32* %operation140, align 4, !tbaa !22
  %and141 = and i32 %121, 128
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %land.lhs.true.143, label %cond.false

land.lhs.true.143:                                ; preds = %if.end.136
  %122 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text144 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %122, i32 0, i32 0
  %space145 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text144, i32 0, i32 5
  %s_char146 = bitcast %union.s_* %space145 to i64*
  %123 = load i64, i64* %s_char146, align 8, !tbaa !7
  %124 = load i64, i64* %char_code, align 8, !tbaa !7
  %cmp147 = icmp eq i64 %123, %124
  br i1 %cmp147, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.143
  %125 = load i64, i64* %chr, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.143, %if.end.136
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %125, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %space_char, align 8, !tbaa !7
  %fstack149 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %depth150 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack149, i32 0, i32 0
  %126 = load i32, i32* %depth150, align 4, !tbaa !39
  %sub151 = sub nsw i32 %126, 1
  %idxprom152 = sext i32 %sub151 to i64
  %fstack153 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %curr, i32 0, i32 19
  %items154 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack153, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items154, i32 0, i64 %idxprom152
  %font156 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx155, i32 0, i32 0
  %127 = load %struct.gs_font_s*, %struct.gs_font_s** %font156, align 8, !tbaa !40
  %FontMatrix157 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %127, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix157, %struct.gs_matrix_s** %psmat, align 8, !tbaa !1
  %128 = load %struct.gs_font_s*, %struct.gs_font_s** %new_font, align 8, !tbaa !1
  store %struct.gs_font_s* %128, %struct.gs_font_s** %prev_font, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.158

cleanup.158:                                      ; preds = %cond.end, %if.then.135, %cleanup.130, %cleanup
  %129 = bitcast %struct.gs_font_s** %new_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32* %font_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %cleanup.dest.160 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.160, label %cleanup.167 [
    i32 0, label %cleanup.cont.161
    i32 2, label %for.end.162
  ]

cleanup.cont.161:                                 ; preds = %cleanup.158
  br label %for.cond

for.end.162:                                      ; preds = %cleanup.158
  %131 = load i32, i32* %return_width, align 4, !tbaa !5
  %tobool163 = icmp ne i32 %131, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %for.end.162
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.165:                                       ; preds = %for.end.162
  %132 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %call166 = call i32 @pdf_shift_text_currentpoint(%struct.pdf_text_enum_s* %132, %struct.gs_point_s* %total_width) #5
  store i32 %call166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

cleanup.167:                                      ; preds = %if.end.165, %if.then.164, %cleanup.158, %if.then.13, %if.then.7, %if.then.1
  %133 = bitcast i32* %return_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %buf_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i64* %space_char to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i64* %char_code to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct.gs_font_s** %prev_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast %struct.gs_matrix_s** %psmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast %struct.gs_point_s* %total_width to i8*
  call void @llvm.lifetime.end(i64 16, i8* %140) #1
  %141 = bitcast %struct.pdf_text_enum_s* %out to i8*
  call void @llvm.lifetime.end(i64 568, i8* %141) #1
  %142 = bitcast %struct.pdf_text_enum_s* %prev to i8*
  call void @llvm.lifetime.end(i64 568, i8* %142) #1
  %143 = bitcast %struct.pdf_text_enum_s* %curr to i8*
  call void @llvm.lifetime.end(i64 568, i8* %143) #1
  %144 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.end(i64 64, i8* %144) #1
  %145 = bitcast %struct.gs_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %145) #1
  %146 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = load i32, i32* %retval
  ret i32 %149
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_text_enum_copy_dynamic(%struct.gs_text_enum_s*, %struct.gs_text_enum_s*, i32) #2

declare i32 @gx_current_char(%struct.gs_text_enum_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @pdf_process_string_aux(%struct.pdf_text_enum_s*, %struct.gs_string_s*, i64*, %struct.gs_matrix_s*, %struct.pdf_text_process_state_s*) #2

declare void @pdf_text_release_cgp(%struct.pdf_text_enum_s*) #2

declare i32 @pdf_shift_text_currentpoint(%struct.pdf_text_enum_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @process_cmap_text(%struct.gs_text_enum_s* %penum, i8* %vbuf, i32 %bsize) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %vbuf.addr = alloca i8*, align 8
  %bsize.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pte = alloca %struct.pdf_text_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store i8* %vbuf, i8** %vbuf.addr, align 8, !tbaa !1
  store i32 %bsize, i32* %bsize.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.pdf_text_enum_s** %pte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s* %2 to %struct.pdf_text_enum_s*
  store %struct.pdf_text_enum_s* %3, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %4 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %4, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %5 = load i32, i32* %operation, align 4, !tbaa !9
  %and = and i32 %5, 60
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %6, i32 0, i32 0
  %operation2 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 0
  %7 = load i32, i32* %operation2, align 4, !tbaa !9
  %and3 = and i32 %7, 65536
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %9 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  %call = call i32 @scan_cmap_text(%struct.pdf_text_enum_s* %8, i8* %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %11 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %11, i32 0, i32 32
  store i32 1, i32* %cdevproc_callout, align 4, !tbaa !51
  br label %if.end.9

if.else:                                          ; preds = %if.end.6
  %12 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte, align 8, !tbaa !1
  %cdevproc_callout8 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %12, i32 0, i32 32
  store i32 0, i32* %cdevproc_callout8, align 4, !tbaa !51
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.5, %if.then
  %14 = bitcast %struct.pdf_text_enum_s** %pte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_cmap_text(%struct.pdf_text_enum_s* %pte, i8* %vbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.pdf_text_enum_s*, align 8
  %vbuf.addr = alloca i8*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %font = alloca %struct.gs_font_type0_s*, align 8
  %scan = alloca %struct.gs_text_enum_s, align 8
  %wmode = alloca i32, align 4
  %code = alloca i32, align 4
  %rcode = alloca i32, align 4
  %pdsubf0 = alloca %struct.pdf_font_resource_s*, align 8
  %subfont0 = alloca %struct.gs_font_s*, align 8
  %saved_subfont = alloca %struct.gs_font_s*, align 8
  %index = alloca i32, align 4
  %xy_index = alloca i32, align 4
  %start_index = alloca i32, align 4
  %font_index0 = alloca i32, align 4
  %done = alloca i32, align 4
  %p = alloca %struct.pdf_char_glyph_pairs_s, align 8
  %type1_glyphs = alloca i64*, align 8
  %num_type1_glyphs = alloca i32, align 4
  %break_index = alloca i32, align 4
  %break_xy_index = alloca i32, align 4
  %font_index = alloca i32, align 4
  %str = alloca %struct.gs_const_string_s, align 8
  %text_state = alloca %struct.pdf_text_process_state_s, align 8
  %pdsubf = alloca %struct.pdf_font_resource_s*, align 8
  %subfont = alloca %struct.gs_font_s*, align 8
  %wxy = alloca %struct.gs_point_s, align 8
  %font_change = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %chr = alloca i64, align 8
  %glyph = alloca i64, align 8
  %pfd = alloca %struct.pdf_font_descriptor_s*, align 8
  %glyph_usage = alloca i8*, align 8
  %real_widths = alloca double*, align 8
  %w = alloca double*, align 8
  %v = alloca double*, align 8
  %w0 = alloca double*, align 8
  %char_cache_size = alloca i32, align 4
  %width_cache_size = alloca i32, align 4
  %cid = alloca i64, align 8
  %str1 = alloca %struct.gs_string_s, align 8
  %pdfont = alloca %struct.pdf_font_resource_s*, align 8
  %notdef_subst = alloca i32, align 4
  %buf = alloca [48 x i8], align 16
  %l = alloca i32, align 4
  %widths = alloca %struct.pdf_glyph_widths_s, align 8
  %widths266 = alloca %struct.pdf_glyph_widths_s, align 8
  %subfont2 = alloca %struct.gs_font_cid2_s*, align 8
  %pdfont398 = alloca %struct.pdf_font_resource_s*, align 8
  %m3 = alloca %struct.gs_matrix_s, align 4
  %xy_index_step = alloca i32, align 4
  %save_text = alloca %struct.gs_text_params_s, align 8
  %save_op = alloca i32, align 4
  %save_font = alloca %struct.gs_font_s*, align 8
  %save_data = alloca i64*, align 8
  %f = alloca %struct.gs_font_s*, align 8
  %text_bbox = alloca %struct.gs_rect_s, align 8
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  store %struct.pdf_text_enum_s* %pte, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %vbuf, i8** %vbuf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !52
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_type0_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %5, i32 0, i32 4
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font, align 8, !tbaa !53
  %7 = bitcast %struct.gs_font_s* %6 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %7, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %8 = bitcast %struct.gs_text_enum_s* %scan to i8*
  call void @llvm.lifetime.start(i64 448, i8* %8) #1
  %9 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %10 = bitcast %struct.pdf_text_enum_s* %9 to %struct.gs_text_enum_s*
  %11 = bitcast %struct.gs_text_enum_s* %scan to i8*
  %12 = bitcast %struct.gs_text_enum_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 448, i32 8, i1 false), !tbaa.struct !54
  %13 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %14, i32 0, i32 16
  %15 = load i32, i32* %WMode, align 4, !tbaa !55
  store i32 %15, i32* %wmode, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %rcode, align 4, !tbaa !5
  %18 = bitcast %struct.pdf_font_resource_s** %pdsubf0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.pdf_font_resource_s* null, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %19 = bitcast %struct.gs_font_s** %subfont0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %20 = bitcast %struct.gs_font_s** %saved_subfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %saved_subfont, align 8, !tbaa !1
  %21 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %index1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %22 = load i32, i32* %index1, align 4, !tbaa !59
  store i32 %22, i32* %index, align 4, !tbaa !5
  %23 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %xy_index2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 18
  %24 = load i32, i32* %xy_index2, align 4, !tbaa !46
  store i32 %24, i32* %xy_index, align 4, !tbaa !5
  %25 = bitcast i32* %start_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %26, i32* %start_index, align 4, !tbaa !5
  %27 = bitcast i32* %font_index0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 2074996749, i32* %font_index0, align 4, !tbaa !5
  %28 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %done, align 4, !tbaa !5
  %29 = bitcast %struct.pdf_char_glyph_pairs_s* %p to i8*
  call void @llvm.lifetime.start(i64 32, i8* %29) #1
  %30 = bitcast i64** %type1_glyphs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %type1_glyphs, align 8, !tbaa !1
  %33 = bitcast i32* %num_type1_glyphs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %num_type1_glyphs, align 4, !tbaa !5
  %num_all_chars = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %p, i32 0, i32 0
  store i32 1, i32* %num_all_chars, align 4, !tbaa !60
  %num_unused_chars = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %p, i32 0, i32 1
  store i32 1, i32* %num_unused_chars, align 4, !tbaa !62
  %unused_offset = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %p, i32 0, i32 2
  store i32 0, i32* %unused_offset, align 4, !tbaa !63
  %34 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %34, i32 0, i32 28
  %total_width = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !49
  %35 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned3 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %35, i32 0, i32 28
  %total_width4 = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned3, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %total_width4, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !47
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.745, %entry
  %36 = bitcast i32* %break_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %break_xy_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 2074996749, i32* %font_index, align 4, !tbaa !5
  %39 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  %41 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %43 = bitcast %struct.gs_point_s* %wxy to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %font_change to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* %font_change, align 4, !tbaa !5
  %45 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %45, i32 0, i32 5
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !21
  %47 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %47, i32 0, i32 30
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %46, %struct.gs_fixed_point_s* %origin) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %48, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %49 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end:                                           ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %50 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast double** %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast double** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast double** %w0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %index5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %61 = load i32, i32* %index5, align 4, !tbaa !59
  store i32 %61, i32* %break_index, align 4, !tbaa !5
  %xy_index6 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 18
  %62 = load i32, i32* %xy_index6, align 4, !tbaa !46
  store i32 %62, i32* %break_xy_index, align 4, !tbaa !5
  %63 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %63, i32 0, i32 20
  %next_char_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 11
  %64 = load i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)** %next_char_glyph, align 8, !tbaa !64
  %call7 = call i32 %64(%struct.gs_text_enum_s* %scan, i64* %chr, i64* %glyph) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %65, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  store i32 1, i32* %done, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.10:                                        ; preds = %do.body
  %66 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %66, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.13:                                        ; preds = %if.end.10
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %68 = load i32, i32* %depth, align 4, !tbaa !65
  %idxprom = sext i32 %68 to i64
  %fstack14 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font15 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font15, align 8, !tbaa !40
  store %struct.gs_font_s* %69, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %fstack16 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %depth17 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack16, i32 0, i32 0
  %70 = load i32, i32* %depth17, align 4, !tbaa !65
  %sub = sub nsw i32 %70, 1
  %idxprom18 = sext i32 %sub to i64
  %fstack19 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 19
  %items20 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items20, i32 0, i64 %idxprom18
  %index22 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx21, i32 0, i32 1
  %71 = load i32, i32* %index22, align 4, !tbaa !66
  store i32 %71, i32* %font_index, align 4, !tbaa !5
  %xy_index23 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 18
  %72 = load i32, i32* %xy_index23, align 4, !tbaa !46
  %inc = add i32 %72, 1
  store i32 %inc, i32* %xy_index23, align 4, !tbaa !46
  %73 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp24 = icmp eq i64 %73, 2147483647
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.13
  store i64 2147483648, i64* %glyph, align 8, !tbaa !7
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.13
  %74 = load i64, i64* %glyph, align 8, !tbaa !7
  %sub27 = sub i64 %74, 2147483648
  store i64 %sub27, i64* %cid, align 8, !tbaa !7
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %75, i32 0, i32 11
  %76 = load i32, i32* %FontType, align 4, !tbaa !67
  switch i32 %76, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 9, label %sw.bb.36
    i32 11, label %sw.bb.36
    i32 3, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.26, %if.end.26
  %77 = load i64, i64* %glyph, align 8, !tbaa !7
  %cmp28 = icmp eq i64 %77, 2147483648
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %sw.bb
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %78, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs30, i32 0, i32 4
  %79 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !68
  %80 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %81 = load i64, i64* %chr, align 8, !tbaa !7
  %call31 = call i64 %79(%struct.gs_font_s* %80, i64 %81, i32 0) #5
  store i64 %call31, i64* %glyph, align 8, !tbaa !7
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %sw.bb
  %82 = load i64, i64* %glyph, align 8, !tbaa !7
  %83 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %idxprom33 = sext i32 %83 to i64
  %84 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i64, i64* %84, i64 %idxprom33
  store i64 %82, i64* %arrayidx34, align 8, !tbaa !7
  %85 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %inc35 = add nsw i32 %85, 1
  store i32 %inc35, i32* %num_type1_glyphs, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.26, %if.end.26
  %86 = load i64, i64* %glyph, align 8, !tbaa !7
  %s = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %p, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [1 x %struct.pdf_char_glyph_pair_s], [1 x %struct.pdf_char_glyph_pair_s]* %s, i32 0, i64 0
  %glyph38 = getelementptr inbounds %struct.pdf_char_glyph_pair_s, %struct.pdf_char_glyph_pair_s* %arrayidx37, i32 0, i32 1
  store i64 %86, i64* %glyph38, align 8, !tbaa !69
  %87 = load i64, i64* %cid, align 8, !tbaa !7
  %s39 = getelementptr inbounds %struct.pdf_char_glyph_pairs_s, %struct.pdf_char_glyph_pairs_s* %p, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [1 x %struct.pdf_char_glyph_pair_s], [1 x %struct.pdf_char_glyph_pair_s]* %s39, i32 0, i64 0
  %chr41 = getelementptr inbounds %struct.pdf_char_glyph_pair_s, %struct.pdf_char_glyph_pair_s* %arrayidx40, i32 0, i32 0
  store i64 %87, i64* %chr41, align 8, !tbaa !71
  %88 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %89 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %call42 = call i32 @pdf_obtain_cidfont_resource(%struct.gx_device_pdf_s* %88, %struct.gs_font_s* %89, %struct.pdf_font_resource_s** %pdsubf, %struct.pdf_char_glyph_pairs_s* %p) #5
  store i32 %call42, i32* %code, align 4, !tbaa !5
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %90, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.36
  %91 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.45:                                        ; preds = %sw.bb.36
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.26
  %92 = bitcast %struct.gs_string_s* %str1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %92) #1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str1, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !19
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %str1, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !42
  %93 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %94 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %94, i32 0, i32 12
  store %struct.gs_font_s* %93, %struct.gs_font_s** %current_font, align 8, !tbaa !29
  %95 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call47 = call i32 @pdf_obtain_font_resource(%struct.pdf_text_enum_s* %95, %struct.gs_string_s* %str1, %struct.pdf_font_resource_s** %pdsubf) #5
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %96, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %sw.bb.46
  %97 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %sw.bb.46
  %98 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %99 = load i64, i64* %glyph, align 8, !tbaa !7
  %call51 = call i64 @pdf_find_glyph(%struct.pdf_font_resource_s* %98, i64 %99) #5
  store i64 %call51, i64* %cid, align 8, !tbaa !7
  %100 = load i64, i64* %cid, align 8, !tbaa !7
  %cmp52 = icmp eq i64 %100, -1
  br i1 %cmp52, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %if.end.50
  %101 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %102 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %call54 = call i32 @pdf_make_font3_resource(%struct.gx_device_pdf_s* %101, %struct.gs_font_s* %102, %struct.pdf_font_resource_s** %pdsubf) #5
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %103 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %103, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  %104 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.then.53
  %105 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %106 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %107 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %call58 = call i32 @pdf_attach_font_resource(%struct.gx_device_pdf_s* %105, %struct.gs_font_s* %106, %struct.pdf_font_resource_s* %107) #5
  store i32 %call58, i32* %code, align 4, !tbaa !5
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %108, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.57
  store i64 0, i64* %cid, align 8, !tbaa !7
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.50
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.60, %if.then.56, %if.then.49
  %110 = bitcast %struct.gs_string_s* %str1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.381 [
    i32 6, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end.26
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

sw.epilog:                                        ; preds = %cleanup, %if.end.45, %if.end.32
  %111 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %112 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %call63 = call i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s* %111, %struct.gs_font_s* %112, %struct.pdf_font_resource_s** %pdsubf, i8** %glyph_usage, double** %real_widths, i32* %char_cache_size, i32* %width_cache_size) #5
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %113, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.epilog
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.66:                                        ; preds = %sw.epilog
  %115 = load i32, i32* %break_index, align 4, !tbaa !5
  %116 = load i32, i32* %start_index, align 4, !tbaa !5
  %cmp67 = icmp ugt i32 %115, %116
  br i1 %cmp67, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.66
  %117 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_just_accumulated = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %117, i32 0, i32 214
  %118 = load i32, i32* %charproc_just_accumulated, align 4, !tbaa !72
  %tobool = icmp ne i32 %118, 0
  br i1 %tobool, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.69:                                        ; preds = %land.lhs.true, %if.end.66
  %119 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType70 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %119, i32 0, i32 11
  %120 = load i32, i32* %FontType70, align 4, !tbaa !67
  %cmp71 = icmp eq i32 %120, 3
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.84

land.lhs.true.72:                                 ; preds = %if.end.69
  %121 = load i32, i32* %break_index, align 4, !tbaa !5
  %122 = load i32, i32* %start_index, align 4, !tbaa !5
  %cmp73 = icmp ugt i32 %121, %122
  br i1 %cmp73, label %land.lhs.true.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.72
  %123 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %charproc_just_accumulated74 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %123, i32 0, i32 214
  %124 = load i32, i32* %charproc_just_accumulated74, align 4, !tbaa !72
  %tobool75 = icmp ne i32 %124, 0
  br i1 %tobool75, label %if.end.84, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %lor.lhs.false, %land.lhs.true.72
  %125 = load i64, i64* %cid, align 8, !tbaa !7
  %shr = lshr i64 %125, 3
  %126 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %126, i32 0, i32 20
  %simple = bitcast %union.anon.1* %u to %struct.anon.3*
  %s77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %simple, i32 0, i32 7
  %type3 = bitcast %union.anon.4* %s77 to %struct.anon.7*
  %cached = getelementptr inbounds %struct.anon.7, %struct.anon.7* %type3, i32 0, i32 6
  %127 = load i8*, i8** %cached, align 8, !tbaa !107
  %arrayidx78 = getelementptr inbounds i8, i8* %127, i64 %shr
  %128 = load i8, i8* %arrayidx78, align 1, !tbaa !28
  %conv = zext i8 %128 to i32
  %129 = load i64, i64* %cid, align 8, !tbaa !7
  %and = and i64 %129, 7
  %sh_prom = trunc i64 %and to i32
  %shr79 = ashr i32 128, %sh_prom
  %and80 = and i32 %conv, %shr79
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.end.84, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.76
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %131 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font83 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %131, i32 0, i32 12
  store %struct.gs_font_s* %130, %struct.gs_font_s** %current_font83, align 8, !tbaa !29
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.84:                                        ; preds = %land.lhs.true.76, %lor.lhs.false, %if.end.69
  %132 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType85 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %132, i32 0, i32 11
  %133 = load i32, i32* %FontType85, align 4, !tbaa !67
  %cmp86 = icmp eq i32 %133, 1
  br i1 %cmp86, label %if.then.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.end.84
  %134 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType89 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %134, i32 0, i32 11
  %135 = load i32, i32* %FontType89, align 4, !tbaa !67
  %cmp90 = icmp eq i32 %135, 2
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %lor.lhs.false.88, %if.end.84
  %136 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %137 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %cmp93 = icmp ne %struct.gs_font_s* %136, %137
  br i1 %cmp93, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.92
  %138 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %cmp95 = icmp ne %struct.gs_font_s* %138, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.92
  %139 = phi i1 [ false, %if.then.92 ], [ %cmp95, %land.rhs ]
  %land.ext = zext i1 %139 to i32
  store i32 %land.ext, i32* %font_change, align 4, !tbaa !5
  %140 = load i32, i32* %font_change, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %140, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.end
  %141 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  store %struct.gs_font_s* %141, %struct.gs_font_s** %saved_subfont, align 8, !tbaa !1
  %142 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  store %struct.gs_font_s* %142, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %143 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %dec = add nsw i32 %143, -1
  store i32 %dec, i32* %num_type1_glyphs, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %land.end
  br label %if.end.107

if.else:                                          ; preds = %lor.lhs.false.88
  %144 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %145 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %cmp100 = icmp ne %struct.pdf_font_resource_s* %144, %145
  br i1 %cmp100, label %land.rhs.102, label %land.end.105

land.rhs.102:                                     ; preds = %if.else
  %146 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %cmp103 = icmp ne %struct.pdf_font_resource_s* %146, null
  br label %land.end.105

land.end.105:                                     ; preds = %land.rhs.102, %if.else
  %147 = phi i1 [ false, %if.else ], [ %cmp103, %land.rhs.102 ]
  %land.ext106 = zext i1 %147 to i32
  store i32 %land.ext106, i32* %font_change, align 4, !tbaa !5
  br label %if.end.107

if.end.107:                                       ; preds = %land.end.105, %if.end.99
  %148 = load i32, i32* %font_change, align 4, !tbaa !5
  %tobool108 = icmp ne i32 %148, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %if.end.107
  %149 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %149, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %150 = load i32, i32* %font_index, align 4, !tbaa !5
  store i32 %150, i32* %font_index0, align 4, !tbaa !5
  %151 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  store %struct.gs_font_s* %151, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.107
  %152 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType111 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %152, i32 0, i32 11
  %153 = load i32, i32* %FontType111, align 4, !tbaa !67
  %cmp112 = icmp ne i32 %153, 1
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.374

land.lhs.true.114:                                ; preds = %if.end.110
  %154 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType115 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %154, i32 0, i32 11
  %155 = load i32, i32* %FontType115, align 4, !tbaa !67
  %cmp116 = icmp ne i32 %155, 2
  br i1 %cmp116, label %if.then.118, label %if.end.374

if.then.118:                                      ; preds = %land.lhs.true.114
  %156 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontDescriptor = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %156, i32 0, i32 11
  %157 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %FontDescriptor, align 8, !tbaa !109
  store %struct.pdf_font_descriptor_s* %157, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %158 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %159 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %160 = load i64, i64* %cid, align 8, !tbaa !7
  %add = add i64 %160, 1
  %conv119 = trunc i64 %add to i32
  %call120 = call i32 @pdf_resize_resource_arrays(%struct.gx_device_pdf_s* %158, %struct.pdf_font_resource_s* %159, i32 %conv119) #5
  store i32 %call120, i32* %code, align 4, !tbaa !5
  %161 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %161, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.118
  %162 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %162, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.124:                                       ; preds = %if.then.118
  %163 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType125 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %163, i32 0, i32 11
  %164 = load i32, i32* %FontType125, align 4, !tbaa !67
  %cmp126 = icmp eq i32 %164, 9
  br i1 %cmp126, label %if.then.132, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.end.124
  %165 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType129 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %165, i32 0, i32 11
  %166 = load i32, i32* %FontType129, align 4, !tbaa !67
  %cmp130 = icmp eq i32 %166, 11
  br i1 %cmp130, label %if.then.132, label %if.end.138

if.then.132:                                      ; preds = %lor.lhs.false.128, %if.end.124
  %167 = load i64, i64* %cid, align 8, !tbaa !7
  %168 = load i32, i32* %width_cache_size, align 4, !tbaa !5
  %conv133 = sext i32 %168 to i64
  %cmp134 = icmp uge i64 %167, %conv133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.132
  store i64 0, i64* %cid, align 8, !tbaa !7
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.then.132
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %lor.lhs.false.128
  %169 = load i64, i64* %cid, align 8, !tbaa !7
  %170 = load i32, i32* %char_cache_size, align 4, !tbaa !5
  %conv139 = sext i32 %170 to i64
  %cmp140 = icmp uge i64 %169, %conv139
  br i1 %cmp140, label %if.then.146, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.138
  %171 = load i64, i64* %cid, align 8, !tbaa !7
  %172 = load i32, i32* %width_cache_size, align 4, !tbaa !5
  %conv143 = sext i32 %172 to i64
  %cmp144 = icmp uge i64 %171, %conv143
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %lor.lhs.false.142, %if.end.138
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.147:                                       ; preds = %lor.lhs.false.142
  %173 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType148 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %173, i32 0, i32 8
  %174 = load i32, i32* %FontType148, align 4, !tbaa !111
  %cmp149 = icmp eq i32 %174, 3
  br i1 %cmp149, label %if.then.159, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.147
  %175 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType152 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %175, i32 0, i32 8
  %176 = load i32, i32* %FontType152, align 4, !tbaa !111
  %cmp153 = icmp eq i32 %176, 1
  br i1 %cmp153, label %if.then.159, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.151
  %177 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType156 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %177, i32 0, i32 8
  %178 = load i32, i32* %FontType156, align 4, !tbaa !111
  %cmp157 = icmp eq i32 %178, 2
  br i1 %cmp157, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %lor.lhs.false.155, %lor.lhs.false.151, %if.end.147
  br label %if.end.364

if.else.160:                                      ; preds = %lor.lhs.false.155
  %179 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %180 = bitcast i32* %notdef_subst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  store i32 0, i32* %notdef_subst, align 4, !tbaa !5
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %182 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %183 = load i32, i32* %wmode, align 4, !tbaa !5
  %call161 = call i32 @pdf_obtain_cidfont_widths_arrays(%struct.gx_device_pdf_s* %181, %struct.pdf_font_resource_s* %182, i32 %183, double** %w, double** %w0, double** %v) #5
  store i32 %call161, i32* %code, align 4, !tbaa !5
  %184 = load i32, i32* %code, align 4, !tbaa !5
  %cmp162 = icmp slt i32 %184, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.else.160
  %185 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.end.165:                                       ; preds = %if.else.160
  %186 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %187 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %188 = load i32, i32* %font_index, align 4, !tbaa !5
  %189 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %data166 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %189, i32 0, i32 23
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data166, i32 0, i32 11
  %190 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap, align 8, !tbaa !112
  %CMapName = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %190, i32 0, i32 2
  %call167 = call i32 @pdf_obtain_parent_type0_font_resource(%struct.gx_device_pdf_s* %186, %struct.pdf_font_resource_s* %187, i32 %188, %struct.gs_const_string_s* %CMapName, %struct.pdf_font_resource_s** %pdfont) #5
  store i32 %call167, i32* %code, align 4, !tbaa !5
  %191 = load i32, i32* %code, align 4, !tbaa !5
  %cmp168 = icmp slt i32 %191, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.165
  %192 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %192, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.end.171:                                       ; preds = %if.end.165
  %193 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %call172 = call i32 @pdf_is_CID_font(%struct.gs_font_s* %193) #5
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.else.187

if.then.174:                                      ; preds = %if.end.171
  %194 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %procs175 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %194, i32 0, i32 20
  %decode_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs175, i32 0, i32 5
  %195 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %decode_glyph, align 8, !tbaa !113
  %196 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %197 = load i64, i64* %glyph, align 8, !tbaa !7
  %call176 = call i64 %195(%struct.gs_font_s* %196, i64 %197, i32 -1) #5
  %cmp177 = icmp ne i64 %call176, -1
  br i1 %cmp177, label %if.then.179, label %if.else.182

if.then.179:                                      ; preds = %if.then.174
  %198 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %199 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %200 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %201 = load i64, i64* %chr, align 8, !tbaa !7
  %add180 = add i64 %201, 2147483648
  %202 = load i64, i64* %chr, align 8, !tbaa !7
  %call181 = call i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s* %198, %struct.gs_font_s* %199, %struct.pdf_font_resource_s* %200, i64 %add180, i64 %202, %struct.gs_const_string_s* null) #5
  store i32 %call181, i32* %code, align 4, !tbaa !5
  br label %if.end.186

if.else.182:                                      ; preds = %if.then.174
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %204 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font183 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %204, i32 0, i32 4
  %205 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font183, align 8, !tbaa !53
  %206 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %207 = load i64, i64* %chr, align 8, !tbaa !7
  %add184 = add i64 %207, 2147483648
  %208 = load i64, i64* %chr, align 8, !tbaa !7
  %call185 = call i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s* %203, %struct.gs_font_s* %205, %struct.pdf_font_resource_s* %206, i64 %add184, i64 %208, %struct.gs_const_string_s* null) #5
  store i32 %call185, i32* %code, align 4, !tbaa !5
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.182, %if.then.179
  br label %if.end.189

if.else.187:                                      ; preds = %if.end.171
  %209 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %210 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %211 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont, align 8, !tbaa !1
  %212 = load i64, i64* %glyph, align 8, !tbaa !7
  %213 = load i64, i64* %cid, align 8, !tbaa !7
  %call188 = call i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s* %209, %struct.gs_font_s* %210, %struct.pdf_font_resource_s* %211, i64 %212, i64 %213, %struct.gs_const_string_s* null) #5
  store i32 %call188, i32* %code, align 4, !tbaa !5
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.end.186
  %214 = load i32, i32* %code, align 4, !tbaa !5
  %cmp190 = icmp slt i32 %214, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.189
  %215 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %215, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.end.193:                                       ; preds = %if.end.189
  %216 = load %struct.pdf_font_descriptor_s*, %struct.pdf_font_descriptor_s** %pfd, align 8, !tbaa !1
  %217 = load i64, i64* %glyph, align 8, !tbaa !7
  %218 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %219 = bitcast %struct.gs_font_s* %218 to %struct.gs_font_base_s*
  %call194 = call i32 @pdf_font_used_glyph(%struct.pdf_font_descriptor_s* %216, i64 %217, %struct.gs_font_base_s* %219) #5
  store i32 %call194, i32* %code, align 4, !tbaa !5
  %220 = load i32, i32* %code, align 4, !tbaa !5
  %cmp195 = icmp eq i32 %220, -15
  br i1 %cmp195, label %if.then.197, label %if.else.250

if.then.197:                                      ; preds = %if.end.193
  %221 = load i64, i64* %cid, align 8, !tbaa !7
  %shr198 = lshr i64 %221, 3
  %222 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %222, i32 0, i32 15
  %223 = load i8*, i8** %used, align 8, !tbaa !114
  %arrayidx199 = getelementptr inbounds i8, i8* %223, i64 %shr198
  %224 = load i8, i8* %arrayidx199, align 1, !tbaa !28
  %conv200 = zext i8 %224 to i32
  %225 = load i64, i64* %cid, align 8, !tbaa !7
  %and201 = and i64 %225, 7
  %sh_prom202 = trunc i64 %and201 to i32
  %shr203 = ashr i32 128, %sh_prom202
  %and204 = and i32 %conv200, %shr203
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.end.237, label %if.then.206

if.then.206:                                      ; preds = %if.then.197
  %226 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 48, i8* %226) #1
  %227 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %228, i32 0, i32 22
  %size207 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %229 = load i32, i32* %size207, align 4, !tbaa !115
  %conv208 = zext i32 %229 to i64
  %cmp209 = icmp ult i64 47, %conv208
  br i1 %cmp209, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.206
  br label %cond.end

cond.false:                                       ; preds = %if.then.206
  %230 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %font_name211 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %230, i32 0, i32 22
  %size212 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name211, i32 0, i32 1
  %231 = load i32, i32* %size212, align 4, !tbaa !115
  %conv213 = zext i32 %231 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 47, %cond.true ], [ %conv213, %cond.false ]
  %conv214 = trunc i64 %cond to i32
  store i32 %conv214, i32* %l, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %232 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %font_name215 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %232, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name215, i32 0, i32 0
  %arraydecay216 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %233 = load i32, i32* %l, align 4, !tbaa !5
  %conv217 = sext i32 %233 to i64
  %call218 = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay216, i64 %conv217) #6
  %234 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom219 = sext i32 %234 to i64
  %arrayidx220 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i64 %idxprom219
  store i8 0, i8* %arrayidx220, align 1, !tbaa !28
  %235 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %235, i32 0, i32 3
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !116
  %call221 = call i8* @gs_program_name() #5
  %call222 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %236, i8* %call221, i64 %call222) #5
  %237 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory223 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %237, i32 0, i32 3
  %238 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory223, align 8, !tbaa !116
  %239 = load i64, i64* %cid, align 8, !tbaa !7
  %conv224 = trunc i64 %239 to i32
  %240 = load i64, i64* %glyph, align 8, !tbaa !7
  %sub225 = sub i64 %240, 2147483648
  %conv226 = trunc i64 %sub225 to i32
  %arraydecay227 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %call228 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %238, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i32 0, i32 0), i32 %conv224, i32 %conv226, i8* %arraydecay227) #5
  %241 = load i64, i64* %cid, align 8, !tbaa !7
  %and229 = and i64 %241, 7
  %sh_prom230 = trunc i64 %and229 to i32
  %shr231 = ashr i32 128, %sh_prom230
  %242 = load i64, i64* %cid, align 8, !tbaa !7
  %shr232 = lshr i64 %242, 3
  %243 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %used233 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %243, i32 0, i32 15
  %244 = load i8*, i8** %used233, align 8, !tbaa !114
  %arrayidx234 = getelementptr inbounds i8, i8* %244, i64 %shr232
  %245 = load i8, i8* %arrayidx234, align 1, !tbaa !28
  %conv235 = zext i8 %245 to i32
  %or = or i32 %conv235, %shr231
  %conv236 = trunc i32 %or to i8
  store i8 %conv236, i8* %arrayidx234, align 1, !tbaa !28
  %246 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 48, i8* %247) #1
  br label %if.end.237

if.end.237:                                       ; preds = %cond.end, %if.then.197
  store i64 0, i64* %cid, align 8, !tbaa !7
  store i32 1, i32* %code, align 4, !tbaa !5
  store i32 1, i32* %notdef_subst, align 4, !tbaa !5
  %248 = load i64, i64* %cid, align 8, !tbaa !7
  %249 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %Widths = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %249, i32 0, i32 14
  %250 = load double*, double** %Widths, align 8, !tbaa !117
  %arrayidx238 = getelementptr inbounds double, double* %250, i64 %248
  %251 = load double, double* %arrayidx238, align 8, !tbaa !27
  %cmp239 = fcmp oeq double %251, 0.000000e+00
  br i1 %cmp239, label %if.then.241, label %if.end.249

if.then.241:                                      ; preds = %if.end.237
  %252 = bitcast %struct.pdf_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.start(i64 120, i8* %252) #1
  %253 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %254 = load i32, i32* %wmode, align 4, !tbaa !5
  %255 = load i64, i64* %glyph, align 8, !tbaa !7
  %256 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %257 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %257, i32 0, i32 32
  %258 = load i32, i32* %cdevproc_callout, align 4, !tbaa !51
  %tobool242 = icmp ne i32 %258, 0
  br i1 %tobool242, label %cond.true.243, label %cond.false.245

cond.true.243:                                    ; preds = %if.then.241
  %259 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_result = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %259, i32 0, i32 33
  %arraydecay244 = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result, i32 0, i32 0
  br label %cond.end.246

cond.false.245:                                   ; preds = %if.then.241
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.243
  %cond247 = phi double* [ %arraydecay244, %cond.true.243 ], [ null, %cond.false.245 ]
  %call248 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %253, i32 %254, i64 %255, %struct.gs_font_s* %256, %struct.pdf_glyph_widths_s* %widths, double* %cond247) #5
  store i32 %call248, i32* %code, align 4, !tbaa !5
  %260 = bitcast %struct.pdf_glyph_widths_s* %widths to i8*
  call void @llvm.lifetime.end(i64 120, i8* %260) #1
  br label %if.end.249

if.end.249:                                       ; preds = %cond.end.246, %if.end.237
  br label %if.end.255

if.else.250:                                      ; preds = %if.end.193
  %261 = load i32, i32* %code, align 4, !tbaa !5
  %cmp251 = icmp slt i32 %261, 0
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.else.250
  %262 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %262, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.360

if.end.254:                                       ; preds = %if.else.250
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.end.249
  %263 = load i32, i32* %code, align 4, !tbaa !5
  %cmp256 = icmp eq i32 %263, 0
  br i1 %cmp256, label %land.lhs.true.263, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %if.end.255
  %264 = load i64, i64* %cid, align 8, !tbaa !7
  %265 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %Widths259 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %265, i32 0, i32 14
  %266 = load double*, double** %Widths259, align 8, !tbaa !117
  %arrayidx260 = getelementptr inbounds double, double* %266, i64 %264
  %267 = load double, double* %arrayidx260, align 8, !tbaa !27
  %cmp261 = fcmp oeq double %267, 0.000000e+00
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.346

land.lhs.true.263:                                ; preds = %lor.lhs.false.258, %if.end.255
  %268 = load i32, i32* %notdef_subst, align 4, !tbaa !5
  %tobool264 = icmp ne i32 %268, 0
  br i1 %tobool264, label %if.end.346, label %if.then.265

if.then.265:                                      ; preds = %land.lhs.true.263
  %269 = bitcast %struct.pdf_glyph_widths_s* %widths266 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %269) #1
  %270 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %271 = load i32, i32* %wmode, align 4, !tbaa !5
  %272 = load i64, i64* %glyph, align 8, !tbaa !7
  %273 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %274 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout267 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %274, i32 0, i32 32
  %275 = load i32, i32* %cdevproc_callout267, align 4, !tbaa !51
  %tobool268 = icmp ne i32 %275, 0
  br i1 %tobool268, label %cond.true.269, label %cond.false.272

cond.true.269:                                    ; preds = %if.then.265
  %276 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_result270 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %276, i32 0, i32 33
  %arraydecay271 = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result270, i32 0, i32 0
  br label %cond.end.273

cond.false.272:                                   ; preds = %if.then.265
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.272, %cond.true.269
  %cond274 = phi double* [ %arraydecay271, %cond.true.269 ], [ null, %cond.false.272 ]
  %call275 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %270, i32 %271, i64 %272, %struct.gs_font_s* %273, %struct.pdf_glyph_widths_s* %widths266, double* %cond274) #5
  store i32 %call275, i32* %code, align 4, !tbaa !5
  %277 = load i32, i32* %code, align 4, !tbaa !5
  %cmp276 = icmp slt i32 %277, 0
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %cond.end.273
  %278 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %278, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.344

if.end.279:                                       ; preds = %cond.end.273
  %279 = load i32, i32* %code, align 4, !tbaa !5
  %cmp280 = icmp eq i32 %279, 3
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %if.end.279
  %280 = load i64, i64* %glyph, align 8, !tbaa !7
  %281 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %returned283 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %281, i32 0, i32 28
  %current_glyph = getelementptr inbounds %struct.gs_text_returned_s, %struct.gs_text_returned_s* %returned283, i32 0, i32 1
  store i64 %280, i64* %current_glyph, align 8, !tbaa !118
  %282 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %283 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font284 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %283, i32 0, i32 12
  store %struct.gs_font_s* %282, %struct.gs_font_s** %current_font284, align 8, !tbaa !29
  store i32 3, i32* %rcode, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.344

if.end.285:                                       ; preds = %if.end.279
  %284 = load i32, i32* %code, align 4, !tbaa !5
  %cmp286 = icmp sge i32 %284, 0
  br i1 %cmp286, label %if.then.288, label %if.end.313

if.then.288:                                      ; preds = %if.end.285
  %285 = load i64, i64* %cid, align 8, !tbaa !7
  %286 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %286, i32 0, i32 13
  %287 = load i32, i32* %count, align 4, !tbaa !119
  %conv289 = zext i32 %287 to i64
  %cmp290 = icmp ugt i64 %285, %conv289
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.then.288
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.344

if.end.293:                                       ; preds = %if.then.288
  %Width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %widths266, i32 0, i32 0
  %w294 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width, i32 0, i32 0
  %288 = load double, double* %w294, align 8, !tbaa !120
  %289 = load i64, i64* %cid, align 8, !tbaa !7
  %290 = load double*, double** %w, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds double, double* %290, i64 %289
  store double %288, double* %arrayidx295, align 8, !tbaa !27
  %291 = load double*, double** %v, align 8, !tbaa !1
  %cmp296 = icmp ne double* %291, null
  br i1 %cmp296, label %if.then.298, label %if.end.310

if.then.298:                                      ; preds = %if.end.293
  %Width299 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %widths266, i32 0, i32 0
  %v300 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width299, i32 0, i32 2
  %x301 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v300, i32 0, i32 0
  %292 = load double, double* %x301, align 8, !tbaa !123
  %293 = load i64, i64* %cid, align 8, !tbaa !7
  %mul = mul i64 %293, 2
  %add302 = add i64 %mul, 0
  %294 = load double*, double** %v, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds double, double* %294, i64 %add302
  store double %292, double* %arrayidx303, align 8, !tbaa !27
  %Width304 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %widths266, i32 0, i32 0
  %v305 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width304, i32 0, i32 2
  %y306 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v305, i32 0, i32 1
  %295 = load double, double* %y306, align 8, !tbaa !124
  %296 = load i64, i64* %cid, align 8, !tbaa !7
  %mul307 = mul i64 %296, 2
  %add308 = add i64 %mul307, 1
  %297 = load double*, double** %v, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds double, double* %297, i64 %add308
  store double %295, double* %arrayidx309, align 8, !tbaa !27
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.298, %if.end.293
  %real_width = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %widths266, i32 0, i32 1
  %w311 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %real_width, i32 0, i32 0
  %298 = load double, double* %w311, align 8, !tbaa !125
  %299 = load i64, i64* %cid, align 8, !tbaa !7
  %300 = load double*, double** %real_widths, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds double, double* %300, i64 %299
  store double %298, double* %arrayidx312, align 8, !tbaa !27
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.310, %if.end.285
  %301 = load i32, i32* %wmode, align 4, !tbaa !5
  %tobool314 = icmp ne i32 %301, 0
  br i1 %tobool314, label %if.then.315, label %if.end.332

if.then.315:                                      ; preds = %if.end.313
  %302 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %303 = load i64, i64* %glyph, align 8, !tbaa !7
  %304 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %305 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout316 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %305, i32 0, i32 32
  %306 = load i32, i32* %cdevproc_callout316, align 4, !tbaa !51
  %tobool317 = icmp ne i32 %306, 0
  br i1 %tobool317, label %cond.true.318, label %cond.false.321

cond.true.318:                                    ; preds = %if.then.315
  %307 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_result319 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %307, i32 0, i32 33
  %arraydecay320 = getelementptr inbounds [10 x double], [10 x double]* %cdevproc_result319, i32 0, i32 0
  br label %cond.end.322

cond.false.321:                                   ; preds = %if.then.315
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.318
  %cond323 = phi double* [ %arraydecay320, %cond.true.318 ], [ null, %cond.false.321 ]
  %call324 = call i32 @pdf_glyph_widths(%struct.pdf_font_resource_s* %302, i32 0, i64 %303, %struct.gs_font_s* %304, %struct.pdf_glyph_widths_s* %widths266, double* %cond323) #5
  store i32 %call324, i32* %code, align 4, !tbaa !5
  %308 = load i32, i32* %code, align 4, !tbaa !5
  %cmp325 = icmp slt i32 %308, 0
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %cond.end.322
  %309 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.344

if.end.328:                                       ; preds = %cond.end.322
  %Width329 = getelementptr inbounds %struct.pdf_glyph_widths_s, %struct.pdf_glyph_widths_s* %widths266, i32 0, i32 0
  %w330 = getelementptr inbounds %struct.pdf_glyph_width_s, %struct.pdf_glyph_width_s* %Width329, i32 0, i32 0
  %310 = load double, double* %w330, align 8, !tbaa !120
  %311 = load i64, i64* %cid, align 8, !tbaa !7
  %312 = load double*, double** %w0, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds double, double* %312, i64 %311
  store double %310, double* %arrayidx331, align 8, !tbaa !27
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.328, %if.end.313
  %313 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u333 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %313, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u333 to %struct.anon.2*
  %CIDToGIDMap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 1
  %314 = load i16*, i16** %CIDToGIDMap, align 8, !tbaa !126
  %cmp334 = icmp ne i16* %314, null
  br i1 %cmp334, label %if.then.336, label %if.end.343

if.then.336:                                      ; preds = %if.end.332
  %315 = bitcast %struct.gs_font_cid2_s** %subfont2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  %316 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %317 = bitcast %struct.gs_font_s* %316 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %317, %struct.gs_font_cid2_s** %subfont2, align 8, !tbaa !1
  %318 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %subfont2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %318, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 2
  %319 = load i32 (%struct.gs_font_cid2_s*, i64)*, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !128
  %320 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %subfont2, align 8, !tbaa !1
  %321 = load i64, i64* %glyph, align 8, !tbaa !7
  %call337 = call i32 %319(%struct.gs_font_cid2_s* %320, i64 %321) #5
  %conv338 = trunc i32 %call337 to i16
  %322 = load i64, i64* %cid, align 8, !tbaa !7
  %323 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u339 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %323, i32 0, i32 20
  %cidfont340 = bitcast %union.anon.1* %u339 to %struct.anon.2*
  %CIDToGIDMap341 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont340, i32 0, i32 1
  %324 = load i16*, i16** %CIDToGIDMap341, align 8, !tbaa !126
  %arrayidx342 = getelementptr inbounds i16, i16* %324, i64 %322
  store i16 %conv338, i16* %arrayidx342, align 2, !tbaa !136
  %325 = bitcast %struct.gs_font_cid2_s** %subfont2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.336, %if.end.332
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.344

cleanup.344:                                      ; preds = %if.end.343, %if.then.327, %if.then.292, %if.then.282, %if.then.278
  %326 = bitcast %struct.pdf_glyph_widths_s* %widths266 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %326) #1
  %cleanup.dest.345 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.345, label %cleanup.360 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.344
  br label %if.end.346

if.end.346:                                       ; preds = %cleanup.cont, %land.lhs.true.263, %lor.lhs.false.258
  %327 = load i32, i32* %wmode, align 4, !tbaa !5
  %tobool347 = icmp ne i32 %327, 0
  br i1 %tobool347, label %if.then.348, label %if.end.359

if.then.348:                                      ; preds = %if.end.346
  %328 = load i64, i64* %cid, align 8, !tbaa !7
  %and349 = and i64 %328, 7
  %sh_prom350 = trunc i64 %and349 to i32
  %shr351 = ashr i32 128, %sh_prom350
  %329 = load i64, i64* %cid, align 8, !tbaa !7
  %shr352 = lshr i64 %329, 3
  %330 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u353 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %330, i32 0, i32 20
  %cidfont354 = bitcast %union.anon.1* %u353 to %struct.anon.2*
  %used2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont354, i32 0, i32 6
  %331 = load i8*, i8** %used2, align 8, !tbaa !137
  %arrayidx355 = getelementptr inbounds i8, i8* %331, i64 %shr352
  %332 = load i8, i8* %arrayidx355, align 1, !tbaa !28
  %conv356 = zext i8 %332 to i32
  %or357 = or i32 %conv356, %shr351
  %conv358 = trunc i32 %or357 to i8
  store i8 %conv358, i8* %arrayidx355, align 1, !tbaa !28
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.348, %if.end.346
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.360

cleanup.360:                                      ; preds = %if.end.359, %cleanup.344, %if.then.253, %if.then.192, %if.then.170, %if.then.164
  %333 = bitcast i32* %notdef_subst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast %struct.pdf_font_resource_s** %pdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %cleanup.dest.362 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.362, label %cleanup.381 [
    i32 0, label %cleanup.cont.363
  ]

cleanup.cont.363:                                 ; preds = %cleanup.360
  br label %if.end.364

if.end.364:                                       ; preds = %cleanup.cont.363, %if.then.159
  %335 = load i64, i64* %cid, align 8, !tbaa !7
  %and365 = and i64 %335, 7
  %sh_prom366 = trunc i64 %and365 to i32
  %shr367 = ashr i32 128, %sh_prom366
  %336 = load i64, i64* %cid, align 8, !tbaa !7
  %shr368 = lshr i64 %336, 3
  %337 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %used369 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %337, i32 0, i32 15
  %338 = load i8*, i8** %used369, align 8, !tbaa !114
  %arrayidx370 = getelementptr inbounds i8, i8* %338, i64 %shr368
  %339 = load i8, i8* %arrayidx370, align 1, !tbaa !28
  %conv371 = zext i8 %339 to i32
  %or372 = or i32 %conv371, %shr367
  %conv373 = trunc i32 %or372 to i8
  store i8 %conv373, i8* %arrayidx370, align 1, !tbaa !28
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.364, %land.lhs.true.114, %if.end.110
  %340 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout375 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %340, i32 0, i32 32
  %341 = load i32, i32* %cdevproc_callout375, align 4, !tbaa !51
  %tobool376 = icmp ne i32 %341, 0
  br i1 %tobool376, label %if.then.377, label %if.end.380

if.then.377:                                      ; preds = %if.end.374
  %index378 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %342 = load i32, i32* %index378, align 4, !tbaa !59
  store i32 %342, i32* %break_index, align 4, !tbaa !5
  %xy_index379 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 18
  %343 = load i32, i32* %xy_index379, align 4, !tbaa !46
  store i32 %343, i32* %break_xy_index, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.381

if.end.380:                                       ; preds = %if.end.374
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.381

cleanup.381:                                      ; preds = %if.end.380, %if.then.377, %cleanup.360, %if.then.146, %if.then.123, %if.then.82, %if.then.68, %if.then.65, %sw.default, %cleanup, %if.then.44, %if.then.12, %if.then.9
  %344 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast i32* %width_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i32* %char_cache_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast double** %w0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast double** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast double** %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast double** %real_widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #1
  %351 = bitcast i8** %glyph_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast %struct.pdf_font_descriptor_s** %pfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #1
  %353 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %cleanup.dest.392 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.392, label %cleanup.735 [
    i32 0, label %cleanup.cont.393
    i32 4, label %do.end
  ]

cleanup.cont.393:                                 ; preds = %cleanup.381
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont.393
  %355 = load i32, i32* %font_change, align 4, !tbaa !5
  %tobool394 = icmp ne i32 %355, 0
  %lnot = xor i1 %tobool394, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup.381
  %356 = load i32, i32* %break_index, align 4, !tbaa !5
  %357 = load i32, i32* %index, align 4, !tbaa !5
  %cmp395 = icmp ugt i32 %356, %357
  br i1 %cmp395, label %if.then.397, label %if.end.728

if.then.397:                                      ; preds = %do.end
  %358 = bitcast %struct.pdf_font_resource_s** %pdfont398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %358) #1
  %359 = bitcast %struct.gs_matrix_s* %m3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %359) #1
  %360 = bitcast i32* %xy_index_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %360) #1
  %361 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %361, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %362 = load i32, i32* %operation, align 4, !tbaa !9
  %and399 = and i32 %362, 256
  %tobool400 = icmp ne i32 %and399, 0
  br i1 %tobool400, label %cond.false.402, label %cond.true.401

cond.true.401:                                    ; preds = %if.then.397
  br label %cond.end.408

cond.false.402:                                   ; preds = %if.then.397
  %363 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text403 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %363, i32 0, i32 0
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text403, i32 0, i32 6
  %364 = load float*, float** %x_widths, align 8, !tbaa !138
  %365 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text404 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %365, i32 0, i32 0
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text404, i32 0, i32 7
  %366 = load float*, float** %y_widths, align 8, !tbaa !139
  %cmp405 = icmp eq float* %364, %366
  %cond407 = select i1 %cmp405, i32 2, i32 1
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.402, %cond.true.401
  %cond409 = phi i32 [ 0, %cond.true.401 ], [ %cond407, %cond.false.402 ]
  store i32 %cond409, i32* %xy_index_step, align 4, !tbaa !5
  %367 = bitcast %struct.gs_text_params_s* %save_text to i8*
  call void @llvm.lifetime.start(i64 88, i8* %367) #1
  %368 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %tobool410 = icmp ne %struct.gs_font_s* %368, null
  br i1 %tobool410, label %if.end.415, label %land.lhs.true.411

land.lhs.true.411:                                ; preds = %cond.end.408
  %369 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %cmp412 = icmp ne i32 %369, 0
  br i1 %cmp412, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %land.lhs.true.411
  %370 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  store %struct.gs_font_s* %370, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.414, %land.lhs.true.411, %cond.end.408
  %371 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %tobool416 = icmp ne %struct.gs_font_s* %371, null
  br i1 %tobool416, label %land.lhs.true.417, label %if.end.475

land.lhs.true.417:                                ; preds = %if.end.415
  %372 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType418 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %372, i32 0, i32 11
  %373 = load i32, i32* %FontType418, align 4, !tbaa !67
  %cmp419 = icmp eq i32 %373, 1
  br i1 %cmp419, label %if.then.425, label %lor.lhs.false.421

lor.lhs.false.421:                                ; preds = %land.lhs.true.417
  %374 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType422 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %374, i32 0, i32 11
  %375 = load i32, i32* %FontType422, align 4, !tbaa !67
  %cmp423 = icmp eq i32 %375, 2
  br i1 %cmp423, label %if.then.425, label %if.end.475

if.then.425:                                      ; preds = %lor.lhs.false.421, %land.lhs.true.417
  %376 = bitcast i32* %save_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %376) #1
  %377 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text426 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %377, i32 0, i32 0
  %operation427 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text426, i32 0, i32 0
  %378 = load i32, i32* %operation427, align 4, !tbaa !9
  store i32 %378, i32* %save_op, align 4, !tbaa !5
  %379 = bitcast %struct.gs_font_s** %save_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #1
  %380 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font428 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %380, i32 0, i32 12
  %381 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font428, align 8, !tbaa !29
  store %struct.gs_font_s* %381, %struct.gs_font_s** %save_font, align 8, !tbaa !1
  %382 = bitcast i64** %save_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #1
  %383 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text429 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %383, i32 0, i32 0
  %data430 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text429, i32 0, i32 1
  %glyphs = bitcast %union.sd_* %data430 to i64**
  %384 = load i64*, i64** %glyphs, align 8, !tbaa !1
  store i64* %384, i64** %save_data, align 8, !tbaa !1
  %385 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %386 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font431 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %386, i32 0, i32 12
  store %struct.gs_font_s* %385, %struct.gs_font_s** %current_font431, align 8, !tbaa !29
  %387 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text432 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %387, i32 0, i32 0
  %operation433 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text432, i32 0, i32 0
  %388 = load i32, i32* %operation433, align 4, !tbaa !9
  %or434 = or i32 %388, 8
  store i32 %or434, i32* %operation433, align 4, !tbaa !9
  %389 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %390 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text435 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %390, i32 0, i32 0
  %data436 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text435, i32 0, i32 1
  %glyphs437 = bitcast %union.sd_* %data436 to i64**
  store i64* %389, i64** %glyphs437, align 8, !tbaa !1
  %391 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  %392 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text438 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %392, i32 0, i32 0
  %size439 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text438, i32 0, i32 2
  %393 = load i32, i32* %size439, align 4, !tbaa !140
  %394 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index440 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %394, i32 0, i32 17
  %395 = load i32, i32* %index440, align 4, !tbaa !44
  %sub441 = sub i32 %393, %395
  %conv442 = zext i32 %sub441 to i64
  %mul443 = mul i64 %conv442, 8
  %add.ptr = getelementptr inbounds i8, i8* %391, i64 %mul443
  %data444 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %add.ptr, i8** %data444, align 8, !tbaa !141
  %396 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %size445 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %396, i32* %size445, align 4, !tbaa !142
  %397 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %398 = bitcast %struct.gs_const_string_s* %str to %struct.gs_string_s*
  %399 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %call446 = call i32 @pdf_obtain_font_resource_unencoded(%struct.pdf_text_enum_s* %397, %struct.gs_string_s* %398, %struct.pdf_font_resource_s** %pdsubf0, i64* %399) #5
  store i32 %call446, i32* %code, align 4, !tbaa !5
  %400 = load i32, i32* %code, align 4, !tbaa !5
  %cmp447 = icmp slt i32 %400, 0
  br i1 %cmp447, label %if.then.449, label %if.end.457

if.then.449:                                      ; preds = %if.then.425
  %401 = load %struct.gs_font_s*, %struct.gs_font_s** %save_font, align 8, !tbaa !1
  %402 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font450 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %402, i32 0, i32 12
  store %struct.gs_font_s* %401, %struct.gs_font_s** %current_font450, align 8, !tbaa !29
  %403 = load i32, i32* %save_op, align 4, !tbaa !5
  %404 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text451 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %404, i32 0, i32 0
  %operation452 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text451, i32 0, i32 0
  %405 = load i32, i32* %operation452, align 4, !tbaa !9
  %or453 = or i32 %405, %403
  store i32 %or453, i32* %operation452, align 4, !tbaa !9
  %406 = load i64*, i64** %save_data, align 8, !tbaa !1
  %407 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text454 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %407, i32 0, i32 0
  %data455 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text454, i32 0, i32 1
  %glyphs456 = bitcast %union.sd_* %data455 to i64**
  store i64* %406, i64** %glyphs456, align 8, !tbaa !1
  %408 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %408, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.470

if.end.457:                                       ; preds = %if.then.425
  %text458 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 0
  %data459 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text458, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data459 to i8**
  %409 = load i8*, i8** %bytes, align 8, !tbaa !1
  %data460 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %410 = load i8*, i8** %data460, align 8, !tbaa !141
  %size461 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %411 = load i32, i32* %size461, align 4, !tbaa !142
  %conv462 = zext i32 %411 to i64
  %call463 = call i8* @memcpy(i8* %409, i8* %410, i64 %conv462) #6
  %text464 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 0
  %data465 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text464, i32 0, i32 1
  %bytes466 = bitcast %union.sd_* %data465 to i8**
  %412 = load i8*, i8** %bytes466, align 8, !tbaa !1
  %data467 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %412, i8** %data467, align 8, !tbaa !141
  %413 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %413, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %414 = load i32, i32* %save_op, align 4, !tbaa !5
  %415 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text468 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %415, i32 0, i32 0
  %operation469 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text468, i32 0, i32 0
  store i32 %414, i32* %operation469, align 4, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.470

cleanup.470:                                      ; preds = %if.end.457, %if.then.449
  %416 = bitcast i64** %save_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast %struct.gs_font_s** %save_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %417) #1
  %418 = bitcast i32* %save_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %cleanup.dest.473 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.473, label %cleanup.722 [
    i32 0, label %cleanup.cont.474
  ]

cleanup.cont.474:                                 ; preds = %cleanup.470
  br label %if.end.475

if.end.475:                                       ; preds = %cleanup.cont.474, %lor.lhs.false.421, %if.end.415
  %419 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %420 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font476 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %420, i32 0, i32 12
  store %struct.gs_font_s* %419, %struct.gs_font_s** %current_font476, align 8, !tbaa !29
  %421 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %tobool477 = icmp ne %struct.gs_font_s* %421, null
  br i1 %tobool477, label %lor.lhs.false.478, label %if.then.480

lor.lhs.false.478:                                ; preds = %if.end.475
  %422 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %tobool479 = icmp ne %struct.pdf_font_resource_s* %422, null
  br i1 %tobool479, label %if.end.481, label %if.then.480

if.then.480:                                      ; preds = %lor.lhs.false.478, %if.end.475
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.481:                                       ; preds = %lor.lhs.false.478
  %423 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %423, i32 0, i32 9
  %424 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %FontMatrix482 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %424, i32 0, i32 9
  %call483 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix482, %struct.gs_matrix_s* %m3) #5
  store i32 %call483, i32* %code, align 4, !tbaa !5
  %425 = load i32, i32* %code, align 4, !tbaa !5
  %cmp484 = icmp slt i32 %425, 0
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %if.end.481
  %426 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %426, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.487:                                       ; preds = %if.end.481
  %427 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %FontType488 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %427, i32 0, i32 8
  %428 = load i32, i32* %FontType488, align 4, !tbaa !111
  %cmp489 = icmp eq i32 %428, 3
  br i1 %cmp489, label %if.then.499, label %lor.lhs.false.491

lor.lhs.false.491:                                ; preds = %if.end.487
  %429 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType492 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %429, i32 0, i32 8
  %430 = load i32, i32* %FontType492, align 4, !tbaa !111
  %cmp493 = icmp eq i32 %430, 1
  br i1 %cmp493, label %if.then.499, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %lor.lhs.false.491
  %431 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %FontType496 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %431, i32 0, i32 8
  %432 = load i32, i32* %FontType496, align 4, !tbaa !111
  %cmp497 = icmp eq i32 %432, 2
  br i1 %cmp497, label %if.then.499, label %if.else.500

if.then.499:                                      ; preds = %lor.lhs.false.495, %lor.lhs.false.491, %if.end.487
  %433 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %433, %struct.pdf_font_resource_s** %pdfont398, align 8, !tbaa !1
  br label %if.end.521

if.else.500:                                      ; preds = %lor.lhs.false.495
  %434 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %435 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %436 = load i32, i32* %font_index0, align 4, !tbaa !5
  %437 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %data501 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %437, i32 0, i32 23
  %CMap502 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data501, i32 0, i32 11
  %438 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap502, align 8, !tbaa !112
  %CMapName503 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %438, i32 0, i32 2
  %call504 = call i32 @pdf_obtain_parent_type0_font_resource(%struct.gx_device_pdf_s* %434, %struct.pdf_font_resource_s* %435, i32 %436, %struct.gs_const_string_s* %CMapName503, %struct.pdf_font_resource_s** %pdfont398) #5
  store i32 %call504, i32* %code, align 4, !tbaa !5
  %439 = load i32, i32* %code, align 4, !tbaa !5
  %cmp505 = icmp slt i32 %439, 0
  br i1 %cmp505, label %if.then.507, label %if.end.508

if.then.507:                                      ; preds = %if.else.500
  %440 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %440, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.508:                                       ; preds = %if.else.500
  %441 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont398, align 8, !tbaa !1
  %u509 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %441, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u509 to %struct.anon*
  %Encoding_name = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 1
  %arrayidx510 = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name, i32 0, i64 0
  %442 = load i8, i8* %arrayidx510, align 1, !tbaa !28
  %tobool511 = icmp ne i8 %442, 0
  br i1 %tobool511, label %if.end.520, label %if.then.512

if.then.512:                                      ; preds = %if.end.508
  %443 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %444 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont398, align 8, !tbaa !1
  %445 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %data513 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %445, i32 0, i32 23
  %CMap514 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data513, i32 0, i32 11
  %446 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap514, align 8, !tbaa !112
  %447 = load i32, i32* %font_index0, align 4, !tbaa !5
  %call515 = call i32 @attach_cmap_resource(%struct.gx_device_pdf_s* %443, %struct.pdf_font_resource_s* %444, %struct.gs_cmap_s* %446, i32 %447) #5
  store i32 %call515, i32* %code, align 4, !tbaa !5
  %448 = load i32, i32* %code, align 4, !tbaa !5
  %cmp516 = icmp slt i32 %448, 0
  br i1 %cmp516, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.then.512
  %449 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %449, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.519:                                       ; preds = %if.then.512
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %if.end.508
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.520, %if.then.499
  %450 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %451 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %WMode522 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %451, i32 0, i32 16
  %452 = load i32, i32* %WMode522, align 4, !tbaa !55
  call void @pdf_set_text_wmode(%struct.gx_device_pdf_s* %450, i32 %452) #5
  %453 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %454 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont398, align 8, !tbaa !1
  %call523 = call i32 @pdf_update_text_state(%struct.pdf_text_process_state_s* %text_state, %struct.pdf_text_enum_s* %453, %struct.pdf_font_resource_s* %454, %struct.gs_matrix_s* %m3) #5
  store i32 %call523, i32* %code, align 4, !tbaa !5
  %455 = load i32, i32* %code, align 4, !tbaa !5
  %cmp524 = icmp slt i32 %455, 0
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.521
  %456 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %456, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.527:                                       ; preds = %if.end.521
  %457 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text528 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %457, i32 0, i32 0
  %458 = bitcast %struct.gs_text_params_s* %save_text to i8*
  %459 = bitcast %struct.gs_text_params_s* %text528 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %458, i8* %459, i64 88, i32 8, i1 false), !tbaa.struct !143
  %460 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %tobool529 = icmp ne %struct.gs_font_s* %460, null
  br i1 %tobool529, label %land.lhs.true.530, label %if.end.546

land.lhs.true.530:                                ; preds = %if.end.527
  %461 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType531 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %461, i32 0, i32 11
  %462 = load i32, i32* %FontType531, align 4, !tbaa !67
  %cmp532 = icmp ne i32 %462, 1
  br i1 %cmp532, label %land.lhs.true.534, label %if.end.546

land.lhs.true.534:                                ; preds = %land.lhs.true.530
  %463 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType535 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %463, i32 0, i32 11
  %464 = load i32, i32* %FontType535, align 4, !tbaa !67
  %cmp536 = icmp ne i32 %464, 2
  br i1 %cmp536, label %if.then.538, label %if.end.546

if.then.538:                                      ; preds = %land.lhs.true.534
  %text539 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 0
  %data540 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text539, i32 0, i32 1
  %bytes541 = bitcast %union.sd_* %data540 to i8**
  %465 = load i8*, i8** %bytes541, align 8, !tbaa !1
  %466 = load i32, i32* %index, align 4, !tbaa !5
  %idx.ext = zext i32 %466 to i64
  %add.ptr542 = getelementptr inbounds i8, i8* %465, i64 %idx.ext
  %data543 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %add.ptr542, i8** %data543, align 8, !tbaa !141
  %467 = load i32, i32* %break_index, align 4, !tbaa !5
  %468 = load i32, i32* %index, align 4, !tbaa !5
  %sub544 = sub i32 %467, %468
  %size545 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %sub544, i32* %size545, align 4, !tbaa !142
  br label %if.end.546

if.end.546:                                       ; preds = %if.then.538, %land.lhs.true.534, %land.lhs.true.530, %if.end.527
  %469 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text547 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %469, i32 0, i32 0
  %operation548 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text547, i32 0, i32 0
  %470 = load i32, i32* %operation548, align 4, !tbaa !9
  %and549 = and i32 %470, 256
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %if.then.551, label %if.end.574

if.then.551:                                      ; preds = %if.end.546
  %471 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text552 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %471, i32 0, i32 0
  %x_widths553 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text552, i32 0, i32 6
  %472 = load float*, float** %x_widths553, align 8, !tbaa !138
  %cmp554 = icmp ne float* %472, null
  br i1 %cmp554, label %if.then.556, label %if.end.562

if.then.556:                                      ; preds = %if.then.551
  %473 = load i32, i32* %xy_index, align 4, !tbaa !5
  %474 = load i32, i32* %xy_index_step, align 4, !tbaa !5
  %mul557 = mul i32 %473, %474
  %475 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text558 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %475, i32 0, i32 0
  %x_widths559 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text558, i32 0, i32 6
  %476 = load float*, float** %x_widths559, align 8, !tbaa !138
  %idx.ext560 = zext i32 %mul557 to i64
  %add.ptr561 = getelementptr inbounds float, float* %476, i64 %idx.ext560
  store float* %add.ptr561, float** %x_widths559, align 8, !tbaa !138
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.556, %if.then.551
  %477 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text563 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %477, i32 0, i32 0
  %y_widths564 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text563, i32 0, i32 7
  %478 = load float*, float** %y_widths564, align 8, !tbaa !139
  %cmp565 = icmp ne float* %478, null
  br i1 %cmp565, label %if.then.567, label %if.end.573

if.then.567:                                      ; preds = %if.end.562
  %479 = load i32, i32* %xy_index, align 4, !tbaa !5
  %480 = load i32, i32* %xy_index_step, align 4, !tbaa !5
  %mul568 = mul i32 %479, %480
  %481 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text569 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %481, i32 0, i32 0
  %y_widths570 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text569, i32 0, i32 7
  %482 = load float*, float** %y_widths570, align 8, !tbaa !139
  %idx.ext571 = zext i32 %mul568 to i64
  %add.ptr572 = getelementptr inbounds float, float* %482, i64 %idx.ext571
  store float* %add.ptr572, float** %y_widths570, align 8, !tbaa !139
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.567, %if.end.562
  br label %if.end.574

if.end.574:                                       ; preds = %if.end.573, %if.end.546
  %483 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index575 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %483, i32 0, i32 18
  store i32 0, i32* %xy_index575, align 4, !tbaa !45
  %484 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %tobool576 = icmp ne %struct.gs_font_s* %484, null
  br i1 %tobool576, label %land.lhs.true.577, label %if.else.608

land.lhs.true.577:                                ; preds = %if.end.574
  %485 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType578 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %485, i32 0, i32 11
  %486 = load i32, i32* %FontType578, align 4, !tbaa !67
  %cmp579 = icmp eq i32 %486, 1
  br i1 %cmp579, label %if.then.585, label %lor.lhs.false.581

lor.lhs.false.581:                                ; preds = %land.lhs.true.577
  %487 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %FontType582 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %487, i32 0, i32 11
  %488 = load i32, i32* %FontType582, align 4, !tbaa !67
  %cmp583 = icmp eq i32 %488, 2
  br i1 %cmp583, label %if.then.585, label %if.else.608

if.then.585:                                      ; preds = %lor.lhs.false.581, %land.lhs.true.577
  %489 = bitcast %struct.gs_font_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %489) #1
  %490 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font586 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %490, i32 0, i32 4
  %491 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font586, align 8, !tbaa !53
  store %struct.gs_font_s* %491, %struct.gs_font_s** %f, align 8, !tbaa !1
  %492 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont398, align 8, !tbaa !1
  %data587 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %493 = load i8*, i8** %data587, align 8, !tbaa !141
  %size588 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  %494 = load i32, i32* %size588, align 4, !tbaa !142
  call void @adjust_first_last_char(%struct.pdf_font_resource_s* %492, i8* %493, i32 %494) #5
  %495 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %496 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font589 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %496, i32 0, i32 4
  store %struct.gs_font_s* %495, %struct.gs_font_s** %orig_font589, align 8, !tbaa !53
  %497 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %498 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  %499 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %index590 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %500 = load i32, i32* %index590, align 4, !tbaa !59
  %501 = load i32, i32* %index, align 4, !tbaa !5
  %sub591 = sub i32 %500, %501
  %call592 = call i32 @process_text_modify_width(%struct.pdf_text_enum_s* %497, %struct.gs_font_s* %498, %struct.pdf_text_process_state_s* %text_state, %struct.gs_const_string_s* %str, %struct.gs_point_s* %wxy, i64* %499, i32 0, i32 %sub591) #5
  store i32 %call592, i32* %code, align 4, !tbaa !5
  %502 = load i32, i32* %code, align 4, !tbaa !5
  %cmp593 = icmp slt i32 %502, 0
  br i1 %cmp593, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %if.then.585
  %503 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %503, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.605

if.end.596:                                       ; preds = %if.then.585
  %504 = load i32, i32* %font_change, align 4, !tbaa !5
  %tobool597 = icmp ne i32 %504, 0
  br i1 %tobool597, label %if.then.598, label %if.else.602

if.then.598:                                      ; preds = %if.end.596
  %505 = load i32, i32* %num_type1_glyphs, align 4, !tbaa !5
  %idxprom599 = sext i32 %505 to i64
  %506 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i64, i64* %506, i64 %idxprom599
  %507 = load i64, i64* %arrayidx600, align 8, !tbaa !7
  %508 = load i64*, i64** %type1_glyphs, align 8, !tbaa !1
  %arrayidx601 = getelementptr inbounds i64, i64* %508, i64 0
  store i64 %507, i64* %arrayidx601, align 8, !tbaa !7
  store i32 1, i32* %num_type1_glyphs, align 4, !tbaa !5
  %509 = load %struct.gs_font_s*, %struct.gs_font_s** %saved_subfont, align 8, !tbaa !1
  store %struct.gs_font_s* %509, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  br label %if.end.603

if.else.602:                                      ; preds = %if.end.596
  store i32 0, i32* %num_type1_glyphs, align 4, !tbaa !5
  br label %if.end.603

if.end.603:                                       ; preds = %if.else.602, %if.then.598
  %510 = load %struct.gs_font_s*, %struct.gs_font_s** %f, align 8, !tbaa !1
  %511 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font604 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %511, i32 0, i32 4
  store %struct.gs_font_s* %510, %struct.gs_font_s** %orig_font604, align 8, !tbaa !53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.605

cleanup.605:                                      ; preds = %if.end.603, %if.then.595
  %512 = bitcast %struct.gs_font_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %512) #1
  %cleanup.dest.606 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.606, label %cleanup.722 [
    i32 0, label %cleanup.cont.607
  ]

cleanup.cont.607:                                 ; preds = %cleanup.605
  br label %if.end.612

if.else.608:                                      ; preds = %lor.lhs.false.581, %if.end.574
  %513 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %514 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %515 = bitcast %struct.gs_font_type0_s* %514 to %struct.gs_font_s*
  %index609 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %scan, i32 0, i32 17
  %516 = load i32, i32* %index609, align 4, !tbaa !59
  %517 = load i32, i32* %index, align 4, !tbaa !5
  %sub610 = sub i32 %516, %517
  %call611 = call i32 @process_text_modify_width(%struct.pdf_text_enum_s* %513, %struct.gs_font_s* %515, %struct.pdf_text_process_state_s* %text_state, %struct.gs_const_string_s* %str, %struct.gs_point_s* %wxy, i64* null, i32 1, i32 %sub610) #5
  store i32 %call611, i32* %code, align 4, !tbaa !5
  br label %if.end.612

if.end.612:                                       ; preds = %if.else.608, %cleanup.cont.607
  %518 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text613 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %518, i32 0, i32 0
  %operation614 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text613, i32 0, i32 0
  %519 = load i32, i32* %operation614, align 4, !tbaa !9
  %and615 = and i32 %519, 256
  %tobool616 = icmp ne i32 %and615, 0
  br i1 %tobool616, label %if.then.617, label %if.end.641

if.then.617:                                      ; preds = %if.end.612
  %520 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text618 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %520, i32 0, i32 0
  %x_widths619 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text618, i32 0, i32 6
  %521 = load float*, float** %x_widths619, align 8, !tbaa !138
  %cmp620 = icmp ne float* %521, null
  br i1 %cmp620, label %if.then.622, label %if.end.628

if.then.622:                                      ; preds = %if.then.617
  %522 = load i32, i32* %xy_index, align 4, !tbaa !5
  %523 = load i32, i32* %xy_index_step, align 4, !tbaa !5
  %mul623 = mul i32 %522, %523
  %524 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text624 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %524, i32 0, i32 0
  %x_widths625 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text624, i32 0, i32 6
  %525 = load float*, float** %x_widths625, align 8, !tbaa !138
  %idx.ext626 = zext i32 %mul623 to i64
  %idx.neg = sub i64 0, %idx.ext626
  %add.ptr627 = getelementptr inbounds float, float* %525, i64 %idx.neg
  store float* %add.ptr627, float** %x_widths625, align 8, !tbaa !138
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.622, %if.then.617
  %526 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text629 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %526, i32 0, i32 0
  %y_widths630 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text629, i32 0, i32 7
  %527 = load float*, float** %y_widths630, align 8, !tbaa !139
  %cmp631 = icmp ne float* %527, null
  br i1 %cmp631, label %if.then.633, label %if.end.640

if.then.633:                                      ; preds = %if.end.628
  %528 = load i32, i32* %xy_index, align 4, !tbaa !5
  %529 = load i32, i32* %xy_index_step, align 4, !tbaa !5
  %mul634 = mul i32 %528, %529
  %530 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text635 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %530, i32 0, i32 0
  %y_widths636 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text635, i32 0, i32 7
  %531 = load float*, float** %y_widths636, align 8, !tbaa !139
  %idx.ext637 = zext i32 %mul634 to i64
  %idx.neg638 = sub i64 0, %idx.ext637
  %add.ptr639 = getelementptr inbounds float, float* %531, i64 %idx.neg638
  store float* %add.ptr639, float** %y_widths636, align 8, !tbaa !139
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.633, %if.end.628
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.end.612
  %532 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text642 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %532, i32 0, i32 0
  %533 = bitcast %struct.gs_text_params_s* %text642 to i8*
  %534 = bitcast %struct.gs_text_params_s* %save_text to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %533, i8* %534, i64 88, i32 8, i1 false), !tbaa.struct !143
  %535 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cdevproc_callout643 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %535, i32 0, i32 32
  store i32 0, i32* %cdevproc_callout643, align 4, !tbaa !51
  %536 = load i32, i32* %code, align 4, !tbaa !5
  %cmp644 = icmp slt i32 %536, 0
  br i1 %cmp644, label %if.then.646, label %if.end.649

if.then.646:                                      ; preds = %if.end.641
  %537 = load i32, i32* %index, align 4, !tbaa !5
  %538 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index647 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %538, i32 0, i32 17
  store i32 %537, i32* %index647, align 4, !tbaa !44
  %539 = load i32, i32* %xy_index, align 4, !tbaa !5
  %540 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index648 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %540, i32 0, i32 18
  store i32 %539, i32* %xy_index648, align 4, !tbaa !45
  %541 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %541, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.649:                                       ; preds = %if.end.641
  %542 = load i32, i32* %break_index, align 4, !tbaa !5
  %543 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index650 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %543, i32 0, i32 17
  store i32 %542, i32* %index650, align 4, !tbaa !44
  %544 = load i32, i32* %break_xy_index, align 4, !tbaa !5
  %545 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index651 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %545, i32 0, i32 18
  store i32 %544, i32* %xy_index651, align 4, !tbaa !45
  %546 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Eps2Write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %546, i32 0, i32 100
  %547 = load i32, i32* %Eps2Write, align 4, !tbaa !144
  %tobool652 = icmp ne i32 %547, 0
  br i1 %tobool652, label %if.then.653, label %if.end.716

if.then.653:                                      ; preds = %if.end.649
  %548 = bitcast %struct.gs_rect_s* %text_bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %548) #1
  %549 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %549) #1
  %550 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %550) #1
  %551 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %551) #1
  %552 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %552) #1
  %553 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %553) #1
  %554 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %554) #1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y654 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  store double 0.000000e+00, double* %y654, align 8, !tbaa !145
  %p655 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y656 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p655, i32 0, i32 1
  store double 0.000000e+00, double* %y656, align 8, !tbaa !146
  %q657 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x658 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q657, i32 0, i32 0
  store double 0.000000e+00, double* %x658, align 8, !tbaa !147
  %555 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %556 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font, align 8, !tbaa !1
  %557 = bitcast %struct.gs_font_type0_s* %556 to %struct.gs_font_base_s*
  %call659 = call i32 @estimate_fontbbox(%struct.pdf_text_enum_s* %555, %struct.gs_font_base_s* %557, %struct.gs_matrix_s* null, %struct.gs_rect_s* %text_bbox) #5
  %558 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %origin660 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %558, i32 0, i32 30
  %x661 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin660, i32 0, i32 0
  %559 = load i32, i32* %x661, align 4, !tbaa !148
  %conv662 = sitofp i32 %559 to double
  %mul663 = fmul double %conv662, 3.906250e-03
  %p664 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x665 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p664, i32 0, i32 0
  store double %mul663, double* %x665, align 8, !tbaa !149
  %p666 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x667 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p666, i32 0, i32 0
  %560 = load double, double* %x667, align 8, !tbaa !149
  %x668 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wxy, i32 0, i32 0
  %561 = load double, double* %x668, align 8, !tbaa !25
  %add669 = fadd double %560, %561
  %q670 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x671 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q670, i32 0, i32 0
  store double %add669, double* %x671, align 8, !tbaa !147
  %p672 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x673 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p672, i32 0, i32 0
  %562 = load double, double* %x673, align 8, !tbaa !149
  %mul674 = fmul double %562, 2.560000e+02
  %conv675 = fptosi double %mul674 to i32
  store i32 %conv675, i32* %x0, align 4, !tbaa !5
  %p676 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y677 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p676, i32 0, i32 1
  %563 = load double, double* %y677, align 8, !tbaa !146
  %mul678 = fmul double %563, 2.560000e+02
  %conv679 = fptosi double %mul678 to i32
  store i32 %conv679, i32* %y0, align 4, !tbaa !5
  %q680 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x681 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q680, i32 0, i32 0
  %564 = load double, double* %x681, align 8, !tbaa !147
  %mul682 = fmul double %564, 2.560000e+02
  %conv683 = fptosi double %mul682 to i32
  %565 = load i32, i32* %x0, align 4, !tbaa !5
  %sub684 = sub nsw i32 %conv683, %565
  store i32 %sub684, i32* %bx2, align 4, !tbaa !5
  %q685 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y686 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q685, i32 0, i32 1
  %566 = load double, double* %y686, align 8, !tbaa !145
  %mul687 = fmul double %566, 2.560000e+02
  %conv688 = fptosi double %mul687 to i32
  %567 = load i32, i32* %y0, align 4, !tbaa !5
  %sub689 = sub nsw i32 %conv688, %567
  store i32 %sub689, i32* %by2, align 4, !tbaa !5
  %568 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %568, i32 0, i32 128
  %569 = load i32, i32* %AccumulatingBBox, align 4, !tbaa !150
  %inc690 = add nsw i32 %569, 1
  store i32 %inc690, i32* %AccumulatingBBox, align 4, !tbaa !150
  %570 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pcpath = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %570, i32 0, i32 7
  %571 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath, align 8, !tbaa !151
  %572 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %573 = bitcast %struct.gx_device_pdf_s* %572 to %struct.gx_device_s*
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %571, %struct.gx_device_s* %573) #5
  %574 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %575 = bitcast %struct.gx_device_pdf_s* %574 to %struct.gx_device_s*
  %call691 = call i64 @gx_device_black(%struct.gx_device_s* %575) #5
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %call691, i64* %pure, align 8, !tbaa !7
  %576 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* %576, %struct.gx_device_color_type_s** %type, align 8, !tbaa !152
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !156
  %577 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %578 = bitcast %struct.gx_device_pdf_s* %577 to %struct.gx_device_s*
  %579 = load i32, i32* %x0, align 4, !tbaa !5
  %580 = load i32, i32* %y0, align 4, !tbaa !5
  %p692 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %x693 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p692, i32 0, i32 0
  %581 = load double, double* %x693, align 8, !tbaa !149
  %mul694 = fmul double %581, 2.560000e+02
  %conv695 = fptosi double %mul694 to i32
  %582 = load i32, i32* %x0, align 4, !tbaa !5
  %sub696 = sub nsw i32 %conv695, %582
  %q697 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %y698 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q697, i32 0, i32 1
  %583 = load double, double* %y698, align 8, !tbaa !145
  %mul699 = fmul double %583, 2.560000e+02
  %conv700 = fptosi double %mul699 to i32
  %584 = load i32, i32* %y0, align 4, !tbaa !5
  %sub701 = sub nsw i32 %conv700, %584
  %585 = load i32, i32* %bx2, align 4, !tbaa !5
  %586 = load i32, i32* %by2, align 4, !tbaa !5
  %call702 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %578, i32 %579, i32 %580, i32 %sub696, i32 %sub701, i32 %585, i32 %586, %struct.gx_device_color_s* %devc, i32 252) #5
  %587 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %588 = load i32, i32* %x0, align 4, !tbaa !5
  %589 = load i32, i32* %y0, align 4, !tbaa !5
  %q703 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 1
  %x704 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q703, i32 0, i32 0
  %590 = load double, double* %x704, align 8, !tbaa !147
  %mul705 = fmul double %590, 2.560000e+02
  %conv706 = fptosi double %mul705 to i32
  %591 = load i32, i32* %x0, align 4, !tbaa !5
  %sub707 = sub nsw i32 %conv706, %591
  %p708 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %text_bbox, i32 0, i32 0
  %y709 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p708, i32 0, i32 1
  %592 = load double, double* %y709, align 8, !tbaa !146
  %mul710 = fmul double %592, 2.560000e+02
  %conv711 = fptosi double %mul710 to i32
  %593 = load i32, i32* %y0, align 4, !tbaa !5
  %sub712 = sub nsw i32 %conv711, %593
  %594 = load i32, i32* %bx2, align 4, !tbaa !5
  %595 = load i32, i32* %by2, align 4, !tbaa !5
  %call713 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %587, i32 %588, i32 %589, i32 %sub707, i32 %sub712, i32 %594, i32 %595, %struct.gx_device_color_s* %devc, i32 252) #5
  %596 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AccumulatingBBox714 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %596, i32 0, i32 128
  %597 = load i32, i32* %AccumulatingBBox714, align 4, !tbaa !150
  %dec715 = add nsw i32 %597, -1
  store i32 %dec715, i32* %AccumulatingBBox714, align 4, !tbaa !150
  %598 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %598) #1
  %599 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %599) #1
  %600 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %600) #1
  %601 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  %602 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %602) #1
  %603 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %603) #1
  %604 = bitcast %struct.gs_rect_s* %text_bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %604) #1
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.653, %if.end.649
  %605 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call717 = call i32 @pdf_shift_text_currentpoint(%struct.pdf_text_enum_s* %605, %struct.gs_point_s* %wxy) #5
  store i32 %call717, i32* %code, align 4, !tbaa !5
  %606 = load i32, i32* %code, align 4, !tbaa !5
  %cmp718 = icmp slt i32 %606, 0
  br i1 %cmp718, label %if.then.720, label %if.end.721

if.then.720:                                      ; preds = %if.end.716
  %607 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %607, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.722

if.end.721:                                       ; preds = %if.end.716
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.722

cleanup.722:                                      ; preds = %if.end.721, %if.then.720, %if.then.646, %cleanup.605, %if.then.526, %if.then.518, %if.then.507, %if.then.486, %if.then.480, %cleanup.470
  %608 = bitcast %struct.gs_text_params_s* %save_text to i8*
  call void @llvm.lifetime.end(i64 88, i8* %608) #1
  %609 = bitcast i32* %xy_index_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast %struct.gs_matrix_s* %m3 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %610) #1
  %611 = bitcast %struct.pdf_font_resource_s** %pdfont398 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %611) #1
  %cleanup.dest.726 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.726, label %cleanup.735 [
    i32 0, label %cleanup.cont.727
  ]

cleanup.cont.727:                                 ; preds = %cleanup.722
  br label %if.end.728

if.end.728:                                       ; preds = %cleanup.cont.727, %do.end
  %612 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  call void @pdf_text_release_cgp(%struct.pdf_text_enum_s* %612) #5
  %613 = load i32, i32* %break_index, align 4, !tbaa !5
  store i32 %613, i32* %index, align 4, !tbaa !5
  %614 = load i32, i32* %break_xy_index, align 4, !tbaa !5
  store i32 %614, i32* %xy_index, align 4, !tbaa !5
  %615 = load i32, i32* %done, align 4, !tbaa !5
  %tobool729 = icmp ne i32 %615, 0
  br i1 %tobool729, label %if.then.733, label %lor.lhs.false.730

lor.lhs.false.730:                                ; preds = %if.end.728
  %616 = load i32, i32* %rcode, align 4, !tbaa !5
  %cmp731 = icmp ne i32 %616, 0
  br i1 %cmp731, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %lor.lhs.false.730, %if.end.728
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.734:                                       ; preds = %lor.lhs.false.730
  %617 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %617, %struct.pdf_font_resource_s** %pdsubf0, align 8, !tbaa !1
  %618 = load i32, i32* %font_index, align 4, !tbaa !5
  store i32 %618, i32* %font_index0, align 4, !tbaa !5
  %619 = load %struct.gs_font_s*, %struct.gs_font_s** %subfont, align 8, !tbaa !1
  store %struct.gs_font_s* %619, %struct.gs_font_s** %subfont0, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.735

cleanup.735:                                      ; preds = %if.end.734, %if.then.733, %cleanup.722, %cleanup.381, %if.then
  %620 = bitcast i32* %font_change to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #1
  %621 = bitcast %struct.gs_point_s* %wxy to i8*
  call void @llvm.lifetime.end(i64 16, i8* %621) #1
  %622 = bitcast %struct.gs_font_s** %subfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %622) #1
  %623 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %623) #1
  %624 = bitcast %struct.pdf_text_process_state_s* %text_state to i8*
  call void @llvm.lifetime.end(i64 64, i8* %624) #1
  %625 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %625) #1
  %626 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #1
  %627 = bitcast i32* %break_xy_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %628 = bitcast i32* %break_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %628) #1
  %cleanup.dest.744 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.744, label %cleanup.748 [
    i32 0, label %cleanup.cont.745
    i32 2, label %for.end
  ]

cleanup.cont.745:                                 ; preds = %cleanup.735
  br label %for.cond

for.end:                                          ; preds = %cleanup.735
  %629 = load i32, i32* %index, align 4, !tbaa !5
  %630 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index746 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %630, i32 0, i32 17
  store i32 %629, i32* %index746, align 4, !tbaa !44
  %631 = load i32, i32* %xy_index, align 4, !tbaa !5
  %632 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %xy_index747 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %632, i32 0, i32 18
  store i32 %631, i32* %xy_index747, align 4, !tbaa !45
  %633 = load i32, i32* %rcode, align 4, !tbaa !5
  store i32 %633, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.748

cleanup.748:                                      ; preds = %for.end, %cleanup.735
  %634 = bitcast i32* %num_type1_glyphs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #1
  %635 = bitcast i64** %type1_glyphs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %635) #1
  %636 = bitcast %struct.pdf_char_glyph_pairs_s* %p to i8*
  call void @llvm.lifetime.end(i64 32, i8* %636) #1
  %637 = bitcast i32* %done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %637) #1
  %638 = bitcast i32* %font_index0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %638) #1
  %639 = bitcast i32* %start_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %639) #1
  %640 = bitcast i32* %xy_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %640) #1
  %641 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %641) #1
  %642 = bitcast %struct.gs_font_s** %saved_subfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %642) #1
  %643 = bitcast %struct.gs_font_s** %subfont0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %643) #1
  %644 = bitcast %struct.pdf_font_resource_s** %pdsubf0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %644) #1
  %645 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %646 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  %647 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast %struct.gs_text_enum_s* %scan to i8*
  call void @llvm.lifetime.end(i64 448, i8* %648) #1
  %649 = bitcast %struct.gs_font_type0_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %649) #1
  %650 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %650) #1
  %651 = load i32, i32* %retval
  ret i32 %651
}

; Function Attrs: nounwind uwtable
define i32 @process_cid_text(%struct.gs_text_enum_s* %pte, i8* %vbuf, i32 %bsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %vbuf.addr = alloca i8*, align 8
  %bsize.addr = alloca i32, align 4
  %penum = alloca %struct.pdf_text_enum_s*, align 8
  %operation = alloca i32, align 4
  %save = alloca %struct.gs_text_enum_s, align 8
  %scaled_font = alloca %struct.gs_font_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %glyphs = alloca i64*, align 8
  %scale_matrix = alloca %struct.gs_matrix_s, align 4
  %pdsubf = alloca %struct.pdf_font_resource_s*, align 8
  %font0 = alloca %struct.gs_font_type0_s*, align 8
  %size = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %pchars = alloca i8*, align 8
  %gnum = alloca i64, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i8* %vbuf, i8** %vbuf.addr, align 8, !tbaa !1
  store i32 %bsize, i32* %bsize.addr, align 4, !tbaa !5
  %0 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_text_enum_s* %1 to %struct.pdf_text_enum_s*
  store %struct.pdf_text_enum_s* %2, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 0
  %operation1 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %5 = load i32, i32* %operation1, align 4, !tbaa !22
  store i32 %5, i32* %operation, align 4, !tbaa !5
  %6 = bitcast %struct.gs_text_enum_s* %save to i8*
  call void @llvm.lifetime.start(i64 448, i8* %6) #1
  %7 = bitcast %struct.gs_font_s** %scaled_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %8, i32 0, i32 12
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font, align 8, !tbaa !43
  store %struct.gs_font_s* %9, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  %10 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64** %glyphs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_matrix_s* %scale_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_font_type0_s** %font0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.gs_font_type0_s* null, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %15 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %operation, align 4, !tbaa !5
  %and = and i32 %17, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %18, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text2, i32 0, i32 1
  %glyphs3 = bitcast %union.sd_* %data to i64**
  %19 = load i64*, i64** %glyphs3, align 8, !tbaa !1
  store i64* %19, i64** %glyphs, align 8, !tbaa !1
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text4 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %20, i32 0, i32 0
  %size5 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text4, i32 0, i32 2
  %21 = load i32, i32* %size5, align 4, !tbaa !157
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 17
  %23 = load i32, i32* %index, align 4, !tbaa !59
  %sub = sub i32 %21, %23
  store i32 %sub, i32* %size, align 4, !tbaa !5
  br label %if.end.17

if.else:                                          ; preds = %entry
  %24 = load i32, i32* %operation, align 4, !tbaa !5
  %and6 = and i32 %24, 32
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %25 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text9 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %25, i32 0, i32 0
  %data10 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text9, i32 0, i32 1
  %d_glyph = bitcast %union.sd_* %data10 to i64*
  store i64* %d_glyph, i64** %glyphs, align 8, !tbaa !1
  store i32 1, i32* %size, align 4, !tbaa !5
  br label %if.end.16

if.else.11:                                       ; preds = %if.else
  %26 = load i32, i32* %operation, align 4, !tbaa !5
  %and12 = and i32 %26, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  %27 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %outer_CID = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %27, i32 0, i32 13
  store i64* %outer_CID, i64** %glyphs, align 8, !tbaa !1
  store i32 1, i32* %size, align 4, !tbaa !5
  br label %if.end

if.else.15:                                       ; preds = %if.else.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end:                                           ; preds = %if.then.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %28 = load i32, i32* %bsize.addr, align 4, !tbaa !5
  %29 = load i32, i32* %size, align 4, !tbaa !5
  %mul = mul i32 %29, 2
  %cmp = icmp ult i32 %28, %mul
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.17
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.19:                                        ; preds = %if.end.17
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  store i8* %32, i8** %pchars, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load i32, i32* %size, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %33, %34
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = bitcast i64* %gnum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %37 = load i64*, i64** %glyphs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %37, i64 %idxprom
  %38 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %sub21 = sub i64 %38, 2147483648
  store i64 %sub21, i64* %gnum, align 8, !tbaa !7
  %39 = load i64, i64* %gnum, align 8, !tbaa !7
  %and22 = and i64 %39, -65536
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.body
  %40 = load i64, i64* %gnum, align 8, !tbaa !7
  %shr = lshr i64 %40, 8
  %conv = trunc i64 %shr to i8
  %41 = load i8*, i8** %pchars, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %pchars, align 8, !tbaa !1
  store i8 %conv, i8* %41, align 1, !tbaa !28
  %42 = load i64, i64* %gnum, align 8, !tbaa !7
  %conv26 = trunc i64 %42 to i8
  %43 = load i8*, i8** %pchars, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr27, i8** %pchars, align 8, !tbaa !1
  store i8 %conv26, i8* %43, align 1, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24
  %44 = bitcast i64* %gnum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end, %cleanup
  %46 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %cleanup.dest.30 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.30, label %cleanup.88 [
    i32 0, label %cleanup.cont.31
  ]

cleanup.cont.31:                                  ; preds = %cleanup.28
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  store %struct.gs_font_s* %48, %struct.gs_font_s** %font, align 8, !tbaa !1
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.body.35, %cleanup.cont.31
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %49, i32 0, i32 7
  %50 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !158
  %51 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %cmp33 = icmp ne %struct.gs_font_s* %50, %51
  br i1 %cmp33, label %for.body.35, label %for.end.37

for.body.35:                                      ; preds = %for.cond.32
  %52 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %base36 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %52, i32 0, i32 7
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %base36, align 8, !tbaa !158
  store %struct.gs_font_s* %53, %struct.gs_font_s** %font, align 8, !tbaa !1
  br label %for.cond.32

for.end.37:                                       ; preds = %for.cond.32
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %54, i32 0, i32 9
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %scale_matrix) #5
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  %FontMatrix38 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %55, i32 0, i32 9
  %call39 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %scale_matrix, %struct.gs_matrix_s* %FontMatrix38, %struct.gs_matrix_s* %scale_matrix) #5
  %56 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %penum, align 8, !tbaa !1
  %call40 = call i32 @pdf_obtain_font_resource(%struct.pdf_text_enum_s* %56, %struct.gs_string_s* null, %struct.pdf_font_resource_s** %pdsubf) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %57, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end.37
  %58 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.44:                                        ; preds = %for.end.37
  %59 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %59, i32 0, i32 20
  %cidfont = bitcast %union.anon.1* %u to %struct.anon.2*
  %glyphshow_font_id = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont, i32 0, i32 3
  %60 = load i64, i64* %glyphshow_font_id, align 8, !tbaa !159
  %cmp45 = icmp ne i64 %60, 0
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.end.44
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 3
  %62 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !160
  %63 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u48 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %63, i32 0, i32 20
  %cidfont49 = bitcast %union.anon.1* %u48 to %struct.anon.2*
  %glyphshow_font_id50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont49, i32 0, i32 3
  %64 = load i64, i64* %glyphshow_font_id50, align 8, !tbaa !159
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  %FontMatrix51 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %65, i32 0, i32 9
  %call52 = call %struct.gs_font_s* @gs_find_font_by_id(%struct.gs_font_dir_s* %62, i64 %64, %struct.gs_matrix_s* %FontMatrix51) #5
  %66 = bitcast %struct.gs_font_s* %call52 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %66, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %if.end.44
  %67 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.gs_font_type0_s* %67, null
  br i1 %cmp54, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %if.end.53
  %68 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %69, i32 0, i32 16
  %70 = load i32, i32* %WMode, align 4, !tbaa !161
  %71 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %71, i32 0, i32 2
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !162
  %call57 = call i32 @gs_font_type0_from_cidfont(%struct.gs_font_type0_s** %font0, %struct.gs_font_s* %68, i32 %70, %struct.gs_matrix_s* %scale_matrix, %struct.gs_memory_s* %72) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %73 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %73, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.56
  %74 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.61:                                        ; preds = %if.then.56
  %75 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %75, i32 0, i32 6
  %76 = load i64, i64* %id, align 8, !tbaa !163
  %77 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdsubf, align 8, !tbaa !1
  %u62 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %77, i32 0, i32 20
  %cidfont63 = bitcast %union.anon.1* %u62 to %struct.anon.2*
  %glyphshow_font_id64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %cidfont63, i32 0, i32 3
  store i64 %76, i64* %glyphshow_font_id64, align 8, !tbaa !159
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.61, %if.end.53
  %78 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %79 = bitcast %struct.gs_text_enum_s* %save to i8*
  %80 = bitcast %struct.gs_text_enum_s* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 448, i32 8, i1 false), !tbaa.struct !54
  %81 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %font0, align 8, !tbaa !1
  %82 = bitcast %struct.gs_font_type0_s* %81 to %struct.gs_font_s*
  %83 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %83, i32 0, i32 4
  store %struct.gs_font_s* %82, %struct.gs_font_s** %orig_font, align 8, !tbaa !30
  %84 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font66 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %84, i32 0, i32 12
  store %struct.gs_font_s* %82, %struct.gs_font_s** %current_font66, align 8, !tbaa !43
  %85 = load i32, i32* %operation, align 4, !tbaa !5
  %and67 = and i32 %85, -64
  %or = or i32 %and67, 2
  %86 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text68 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %86, i32 0, i32 0
  %operation69 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text68, i32 0, i32 0
  store i32 %or, i32* %operation69, align 4, !tbaa !22
  %87 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  %88 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text70 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %88, i32 0, i32 0
  %data71 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text70, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data71 to i8**
  store i8* %87, i8** %bytes, align 8, !tbaa !1
  %89 = load i32, i32* %size, align 4, !tbaa !5
  %mul72 = mul i32 %89, 2
  %90 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text73 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %90, i32 0, i32 0
  %size74 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text73, i32 0, i32 2
  store i32 %mul72, i32* %size74, align 4, !tbaa !157
  %91 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index75 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %91, i32 0, i32 17
  store i32 0, i32* %index75, align 4, !tbaa !59
  %92 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %93 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font76 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %93, i32 0, i32 12
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %current_font76, align 8, !tbaa !43
  %call77 = call i32 @gs_type0_init_fstack(%struct.gs_text_enum_s* %92, %struct.gs_font_s* %94) #5
  %95 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %96 = load i8*, i8** %vbuf.addr, align 8, !tbaa !1
  %97 = load i32, i32* %bsize.addr, align 4, !tbaa !5
  %call78 = call i32 @process_cmap_text(%struct.gs_text_enum_s* %95, i8* %96, i32 %97) #5
  store i32 %call78, i32* %code, align 4, !tbaa !5
  %98 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  %99 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %current_font79 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %99, i32 0, i32 12
  store %struct.gs_font_s* %98, %struct.gs_font_s** %current_font79, align 8, !tbaa !43
  %orig_font80 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %save, i32 0, i32 4
  %100 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_font80, align 8, !tbaa !30
  %101 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %orig_font81 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %101, i32 0, i32 4
  store %struct.gs_font_s* %100, %struct.gs_font_s** %orig_font81, align 8, !tbaa !30
  %102 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text82 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %102, i32 0, i32 0
  %text83 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %save, i32 0, i32 0
  %103 = bitcast %struct.gs_text_params_s* %text82 to i8*
  %104 = bitcast %struct.gs_text_params_s* %text83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 88, i32 8, i1 false), !tbaa.struct !143
  %index84 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %save, i32 0, i32 17
  %105 = load i32, i32* %index84, align 4, !tbaa !59
  %106 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index85 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %106, i32 0, i32 17
  %107 = load i32, i32* %index85, align 4, !tbaa !59
  %div = udiv i32 %107, 2
  %add = add i32 %105, %div
  %108 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index86 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %108, i32 0, i32 17
  store i32 %add, i32* %index86, align 4, !tbaa !59
  %109 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %109, i32 0, i32 19
  %fstack87 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %save, i32 0, i32 19
  %110 = bitcast %struct.gx_font_stack_s* %fstack to i8*
  %111 = bitcast %struct.gx_font_stack_s* %fstack87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 104, i32 8, i1 false), !tbaa.struct !164
  %112 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

cleanup.88:                                       ; preds = %if.end.65, %if.then.60, %if.then.43, %cleanup.28, %if.then.18, %if.else.15
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.gs_font_type0_s** %font0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.pdf_font_resource_s** %pdsubf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.gs_matrix_s* %scale_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %117) #1
  %118 = bitcast i64** %glyphs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast %struct.gs_font_s** %scaled_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %struct.gs_text_enum_s* %save to i8*
  call void @llvm.lifetime.end(i64 448, i8* %121) #1
  %122 = bitcast i32* %operation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast %struct.pdf_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = load i32, i32* %retval
  ret i32 %124
}

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @pdf_obtain_font_resource(%struct.pdf_text_enum_s*, %struct.gs_string_s*, %struct.pdf_font_resource_s**) #2

declare %struct.gs_font_s* @gs_find_font_by_id(%struct.gs_font_dir_s*, i64, %struct.gs_matrix_s*) #2

declare i32 @gs_font_type0_from_cidfont(%struct.gs_font_type0_s**, %struct.gs_font_s*, i32, %struct.gs_matrix_s*, %struct.gs_memory_s*) #2

declare i32 @gs_type0_init_fstack(%struct.gs_text_enum_s*, %struct.gs_font_s*) #2

declare i32 @pdf_obtain_cidfont_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**, %struct.pdf_char_glyph_pairs_s*) #2

declare i64 @pdf_find_glyph(%struct.pdf_font_resource_s*, i64) #2

declare i32 @pdf_make_font3_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**) #2

declare i32 @pdf_attach_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s*) #2

declare i32 @pdf_attached_font_resource(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s**, i8**, double**, i32*, i32*) #2

declare i32 @pdf_resize_resource_arrays(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i32) #2

declare i32 @pdf_obtain_cidfont_widths_arrays(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i32, double**, double**, double**) #2

declare i32 @pdf_obtain_parent_type0_font_resource(%struct.gx_device_pdf_s*, %struct.pdf_font_resource_s*, i32, %struct.gs_const_string_s*, %struct.pdf_font_resource_s**) #2

declare i32 @pdf_is_CID_font(%struct.gs_font_s*) #2

declare i32 @pdf_add_ToUnicode(%struct.gx_device_pdf_s*, %struct.gs_font_s*, %struct.pdf_font_resource_s*, i64, i64, %struct.gs_const_string_s*) #2

declare i32 @pdf_font_used_glyph(%struct.pdf_font_descriptor_s*, i64, %struct.gs_font_base_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @pdf_glyph_widths(%struct.pdf_font_resource_s*, i32, i64, %struct.gs_font_s*, %struct.pdf_glyph_widths_s*, double*) #2

declare i32 @pdf_obtain_font_resource_unencoded(%struct.pdf_text_enum_s*, %struct.gs_string_s*, %struct.pdf_font_resource_s**, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @attach_cmap_resource(%struct.gx_device_pdf_s* %pdev, %struct.pdf_font_resource_s* %pdfont, %struct.gs_cmap_s* %pcmap, i32 %font_index_only) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pdfont.addr = alloca %struct.pdf_font_resource_s*, align 8
  %pcmap.addr = alloca %struct.gs_cmap_s*, align 8
  %font_index_only.addr = alloca i32, align 4
  %pcmn = alloca i8**, align 8
  %is_identity = alloca i32, align 4
  %pcmres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %renum = alloca %struct.gs_cmap_ranges_enum_s, align 8
  %pidcmap = alloca %struct.gs_cmap_s*, align 8
  %size87 = alloca i32, align 4
  %chars = alloca i8*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pdf_font_resource_s* %pdfont, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  store %struct.gs_cmap_s* %pcmap, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  store i32 %font_index_only, i32* %font_index_only.addr, align 4, !tbaa !5
  %0 = bitcast i8*** %pcmn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 75
  %2 = load double, double* %CompatibilityLevel, align 8, !tbaa !165
  %cmp = fcmp olt double %2, 1.300000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 75
  %4 = load double, double* %CompatibilityLevel1, align 8, !tbaa !165
  %cmp2 = fcmp olt double %4, 1.400000e+00
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %CompatibilityLevel5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 75
  %6 = load double, double* %CompatibilityLevel5, align 8, !tbaa !165
  %cmp6 = fcmp olt double %6, 1.500000e+00
  %cond = select i1 %cmp6, i32 12, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond7 = phi i32 [ 18, %cond.true.3 ], [ %cond, %cond.false.4 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ 39, %cond.true ], [ %cond7, %cond.end ]
  %idx.ext = sext i32 %cond9 to i64
  %add.ptr = getelementptr inbounds i8*, i8** getelementptr inbounds ([65 x i8*], [65 x i8*]* @standard_cmap_names, i32 0, i32 0), i64 %idx.ext
  store i8** %add.ptr, i8*** %pcmn, align 8, !tbaa !1
  %7 = bitcast i32* %is_identity to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %is_identity, align 4, !tbaa !5
  %8 = bitcast %struct.pdf_resource_s** %pcmres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pcmres, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %tobool = icmp ne i8** %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end:                                           ; preds = %cond.end.8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %cmp10 = icmp ne i8* %12, null
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %13, i32 0, i32 2
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !166
  %conv = zext i32 %14 to i64
  %15 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %16) #7
  %cmp11 = icmp eq i64 %conv, %call
  br i1 %cmp11, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %17 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %18 = load i8*, i8** %17, align 8, !tbaa !1
  %19 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName13 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %19, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName13, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8, !tbaa !168
  %21 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName14 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %21, i32 0, i32 2
  %size15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName14, i32 0, i32 1
  %22 = load i32, i32* %size15, align 4, !tbaa !166
  %conv16 = zext i32 %22 to i64
  %call17 = call i32 @memcmp(i8* %18, i8* %20, i64 %conv16) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.20:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %23 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %incdec.ptr, i8*** %pcmn, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  %24 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %25 = load i8*, i8** %24, align 8, !tbaa !1
  %cmp21 = icmp eq i8* %25, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %26 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %27 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call24 = call i32 @gs_cmap_is_identity(%struct.gs_cmap_s* %26, i32 %27) #5
  store i32 %call24, i32* %is_identity, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  %28 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %29 = load i8*, i8** %28, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %29, null
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %if.end.25
  %30 = load i32, i32* %is_identity, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %30, 0
  br i1 %tobool29, label %if.end.42, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %32 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %32, i32 0, i32 1
  %33 = load i64, i64* %id, align 8, !tbaa !169
  %34 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %conv31 = sext i32 %34 to i64
  %add = add i64 %33, %conv31
  %call32 = call %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s* %31, i32 9, i64 %add) #5
  store %struct.pdf_resource_s* %call32, %struct.pdf_resource_s** %pcmres, align 8, !tbaa !1
  %35 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pcmres, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.pdf_resource_s* %35, null
  br i1 %cmp33, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.then.30
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %37 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %38 = load i32, i32* %font_index_only.addr, align 4, !tbaa !5
  %call36 = call i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s* %36, %struct.gs_cmap_s* %37, %struct.pdf_resource_s** %pcmres, i32 %38) #5
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %39, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.40:                                        ; preds = %if.then.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.28, %if.end.25
  %41 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %from_Unicode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %41, i32 0, i32 9
  %42 = load i32, i32* %from_Unicode, align 4, !tbaa !170
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.83

if.then.44:                                       ; preds = %if.end.42
  %43 = bitcast %struct.gs_cmap_ranges_enum_s* %renum to i8*
  call void @llvm.lifetime.start(i64 40, i8* %43) #1
  %44 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  call void @gs_cmap_ranges_enum_init(%struct.gs_cmap_s* %44, %struct.gs_cmap_ranges_enum_s* %renum) #5
  %call45 = call i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s* %renum) #5
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.79

land.lhs.true.48:                                 ; preds = %if.then.44
  %range = getelementptr inbounds %struct.gs_cmap_ranges_enum_s, %struct.gs_cmap_ranges_enum_s* %renum, i32 0, i32 0
  %size49 = getelementptr inbounds %struct.gx_code_space_range_s, %struct.gx_code_space_range_s* %range, i32 0, i32 2
  %45 = load i32, i32* %size49, align 4, !tbaa !171
  %cmp50 = icmp eq i32 %45, 2
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.79

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %call53 = call i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s* %renum) #5
  %cmp54 = icmp eq i32 %call53, 1
  br i1 %cmp54, label %if.then.56, label %if.end.79

if.then.56:                                       ; preds = %land.lhs.true.52
  %46 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %46, i32 0, i32 8
  %47 = load i32, i32* %WMode, align 4, !tbaa !174
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Identity_ToUnicode_CMaps = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %48, i32 0, i32 167
  %arrayidx = getelementptr inbounds [2 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*]* %Identity_ToUnicode_CMaps, i32 0, i64 %idxprom
  %49 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %arrayidx, align 8, !tbaa !1
  %tobool57 = icmp ne %struct.pdf_resource_s* %49, null
  br i1 %tobool57, label %if.end.74, label %if.then.58

if.then.58:                                       ; preds = %if.then.56
  %50 = bitcast %struct.gs_cmap_s** %pidcmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode59 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %51, i32 0, i32 8
  %52 = load i32, i32* %WMode59, align 4, !tbaa !174
  %53 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !116
  %call60 = call i32 @gs_cmap_create_char_identity(%struct.gs_cmap_s** %pidcmap, i32 2, i32 %52, %struct.gs_memory_s* %54) #5
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %55, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.58
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.then.58
  %57 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pidcmap, align 8, !tbaa !1
  %CMapType = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %57, i32 0, i32 0
  store i32 2, i32* %CMapType, align 4, !tbaa !175
  %58 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pidcmap, align 8, !tbaa !1
  %ToUnicode = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %58, i32 0, i32 10
  store i32 1, i32* %ToUnicode, align 4, !tbaa !176
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %60 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pidcmap, align 8, !tbaa !1
  %61 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode65 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %61, i32 0, i32 8
  %62 = load i32, i32* %WMode65, align 4, !tbaa !174
  %idxprom66 = sext i32 %62 to i64
  %63 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Identity_ToUnicode_CMaps67 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %63, i32 0, i32 167
  %arrayidx68 = getelementptr inbounds [2 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*]* %Identity_ToUnicode_CMaps67, i32 0, i64 %idxprom66
  %call69 = call i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s* %59, %struct.gs_cmap_s* %60, %struct.pdf_resource_s** %arrayidx68, i32 -1) #5
  store i32 %call69, i32* %code, align 4, !tbaa !5
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %64, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.64
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72, %if.then.63
  %66 = bitcast %struct.gs_cmap_s** %pidcmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %if.then.56
  %67 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode75 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %67, i32 0, i32 8
  %68 = load i32, i32* %WMode75, align 4, !tbaa !174
  %idxprom76 = sext i32 %68 to i64
  %69 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Identity_ToUnicode_CMaps77 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %69, i32 0, i32 167
  %arrayidx78 = getelementptr inbounds [2 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*]* %Identity_ToUnicode_CMaps77, i32 0, i64 %idxprom76
  %70 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %arrayidx78, align 8, !tbaa !1
  %71 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %res_ToUnicode = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %71, i32 0, i32 16
  store %struct.pdf_resource_s* %70, %struct.pdf_resource_s** %res_ToUnicode, align 8, !tbaa !177
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.74, %land.lhs.true.52, %land.lhs.true.48, %if.then.44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %if.end.79, %cleanup
  %72 = bitcast %struct.gs_cmap_ranges_enum_s* %renum to i8*
  call void @llvm.lifetime.end(i64 40, i8* %72) #1
  %cleanup.dest.81 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.81, label %cleanup.151 [
    i32 0, label %cleanup.cont.82
  ]

cleanup.cont.82:                                  ; preds = %cleanup.80
  br label %if.end.83

if.end.83:                                        ; preds = %cleanup.cont.82, %if.end.42
  %73 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pcmres, align 8, !tbaa !1
  %tobool84 = icmp ne %struct.pdf_resource_s* %73, null
  br i1 %tobool84, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.83
  %74 = load i32, i32* %is_identity, align 4, !tbaa !5
  %tobool85 = icmp ne i32 %74, 0
  br i1 %tobool85, label %if.then.86, label %if.else.125

if.then.86:                                       ; preds = %lor.lhs.false, %if.end.83
  %75 = bitcast i32* %size87 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName88 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %76, i32 0, i32 2
  %size89 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName88, i32 0, i32 1
  %77 = load i32, i32* %size89, align 4, !tbaa !166
  store i32 %77, i32* %size87, align 4, !tbaa !5
  %78 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %79, i32 0, i32 43
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !178
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %81 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !179
  %82 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %v_memory90 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %82, i32 0, i32 43
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory90, align 8, !tbaa !178
  %84 = load i32, i32* %size87, align 4, !tbaa !5
  %call91 = call i8* %81(%struct.gs_memory_s* %83, i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %call91, i8** %chars, align 8, !tbaa !1
  %85 = load i8*, i8** %chars, align 8, !tbaa !1
  %cmp92 = icmp eq i8* %85, null
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.86
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.95:                                        ; preds = %if.then.86
  %86 = load i8*, i8** %chars, align 8, !tbaa !1
  %87 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %CMapName96 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %87, i32 0, i32 2
  %data97 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName96, i32 0, i32 0
  %88 = load i8*, i8** %data97, align 8, !tbaa !168
  %89 = load i32, i32* %size87, align 4, !tbaa !5
  %conv98 = zext i32 %89 to i64
  %call99 = call i8* @memcpy(i8* %86, i8* %88, i64 %conv98) #6
  %90 = load i32, i32* %is_identity, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %90, 0
  br i1 %tobool100, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %if.end.95
  %91 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %91, i32 0, i32 20
  %type0 = bitcast %union.anon.1* %u to %struct.anon*
  %Encoding_name = getelementptr inbounds %struct.anon, %struct.anon* %type0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name, i32 0, i32 0
  %92 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode102 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %92, i32 0, i32 8
  %93 = load i32, i32* %WMode102, align 4, !tbaa !174
  %tobool103 = icmp ne i32 %93, 0
  %cond104 = select i1 %tobool103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)
  %call105 = call i8* @strcpy(i8* %arraydecay, i8* %cond104) #6
  br label %if.end.112

if.else:                                          ; preds = %if.end.95
  %94 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u106 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %94, i32 0, i32 20
  %type0107 = bitcast %union.anon.1* %u106 to %struct.anon*
  %Encoding_name108 = getelementptr inbounds %struct.anon, %struct.anon* %type0107, i32 0, i32 1
  %arraydecay109 = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name108, i32 0, i32 0
  %95 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pcmres, align 8, !tbaa !1
  %call110 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %95) #5
  %call111 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %call110) #5
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %if.then.101
  %96 = load i8*, i8** %chars, align 8, !tbaa !1
  %97 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u113 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %97, i32 0, i32 20
  %type0114 = bitcast %union.anon.1* %u113 to %struct.anon*
  %CMapName115 = getelementptr inbounds %struct.anon, %struct.anon* %type0114, i32 0, i32 2
  %data116 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName115, i32 0, i32 0
  store i8* %96, i8** %data116, align 8, !tbaa !182
  %98 = load i32, i32* %size87, align 4, !tbaa !5
  %99 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u117 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %99, i32 0, i32 20
  %type0118 = bitcast %union.anon.1* %u117 to %struct.anon*
  %CMapName119 = getelementptr inbounds %struct.anon, %struct.anon* %type0118, i32 0, i32 2
  %size120 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName119, i32 0, i32 1
  store i32 %98, i32* %size120, align 4, !tbaa !184
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %if.end.112, %if.then.94
  %100 = bitcast i8** %chars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %size87 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %cleanup.dest.123 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.123, label %cleanup.151 [
    i32 0, label %cleanup.cont.124
  ]

cleanup.cont.124:                                 ; preds = %cleanup.121
  br label %if.end.146

if.else.125:                                      ; preds = %lor.lhs.false
  %102 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %103 = load i8*, i8** %102, align 8, !tbaa !1
  %tobool126 = icmp ne i8* %103, null
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %if.else.125
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.128:                                       ; preds = %if.else.125
  %104 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u129 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %104, i32 0, i32 20
  %type0130 = bitcast %union.anon.1* %u129 to %struct.anon*
  %Encoding_name131 = getelementptr inbounds %struct.anon, %struct.anon* %type0130, i32 0, i32 1
  %arraydecay132 = getelementptr inbounds [27 x i8], [27 x i8]* %Encoding_name131, i32 0, i32 0
  %105 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %106 = load i8*, i8** %105, align 8, !tbaa !1
  %call133 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %106) #5
  %107 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %108 = load i8*, i8** %107, align 8, !tbaa !1
  %109 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u134 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %109, i32 0, i32 20
  %type0135 = bitcast %union.anon.1* %u134 to %struct.anon*
  %CMapName136 = getelementptr inbounds %struct.anon, %struct.anon* %type0135, i32 0, i32 2
  %data137 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName136, i32 0, i32 0
  store i8* %108, i8** %data137, align 8, !tbaa !182
  %110 = load i8**, i8*** %pcmn, align 8, !tbaa !1
  %111 = load i8*, i8** %110, align 8, !tbaa !1
  %call138 = call i64 @strlen(i8* %111) #7
  %conv139 = trunc i64 %call138 to i32
  %112 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u140 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %112, i32 0, i32 20
  %type0141 = bitcast %union.anon.1* %u140 to %struct.anon*
  %CMapName142 = getelementptr inbounds %struct.anon, %struct.anon* %type0141, i32 0, i32 2
  %size143 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %CMapName142, i32 0, i32 1
  store i32 %conv139, i32* %size143, align 4, !tbaa !184
  %113 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u144 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %113, i32 0, i32 20
  %type0145 = bitcast %union.anon.1* %u144 to %struct.anon*
  %cmap_is_standard = getelementptr inbounds %struct.anon, %struct.anon* %type0145, i32 0, i32 4
  store i32 1, i32* %cmap_is_standard, align 4, !tbaa !185
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.128, %cleanup.cont.124
  %114 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %pcmap.addr, align 8, !tbaa !1
  %WMode147 = getelementptr inbounds %struct.gs_cmap_s, %struct.gs_cmap_s* %114, i32 0, i32 8
  %115 = load i32, i32* %WMode147, align 4, !tbaa !174
  %116 = load %struct.pdf_font_resource_s*, %struct.pdf_font_resource_s** %pdfont.addr, align 8, !tbaa !1
  %u148 = getelementptr inbounds %struct.pdf_font_resource_s, %struct.pdf_font_resource_s* %116, i32 0, i32 20
  %type0149 = bitcast %union.anon.1* %u148 to %struct.anon*
  %WMode150 = getelementptr inbounds %struct.anon, %struct.anon* %type0149, i32 0, i32 5
  store i32 %115, i32* %WMode150, align 4, !tbaa !186
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.end.146, %if.then.127, %cleanup.121, %cleanup.80, %if.then.39, %if.then
  %117 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.pdf_resource_s** %pcmres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i32* %is_identity to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i8*** %pcmn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = load i32, i32* %retval
  ret i32 %121
}

declare void @pdf_set_text_wmode(%struct.gx_device_pdf_s*, i32) #2

declare i32 @pdf_update_text_state(%struct.pdf_text_process_state_s*, %struct.pdf_text_enum_s*, %struct.pdf_font_resource_s*, %struct.gs_matrix_s*) #2

declare void @adjust_first_last_char(%struct.pdf_font_resource_s*, i8*, i32) #2

declare i32 @process_text_modify_width(%struct.pdf_text_enum_s*, %struct.gs_font_s*, %struct.pdf_text_process_state_s*, %struct.gs_const_string_s*, %struct.gs_point_s*, i64*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @estimate_fontbbox(%struct.pdf_text_enum_s* %pte, %struct.gs_font_base_s* %font, %struct.gs_matrix_s* %pfmat, %struct.gs_rect_s* %text_bbox) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.pdf_text_enum_s*, align 8
  %font.addr = alloca %struct.gs_font_base_s*, align 8
  %pfmat.addr = alloca %struct.gs_matrix_s*, align 8
  %text_bbox.addr = alloca %struct.gs_rect_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %p2 = alloca %struct.gs_point_s, align 8
  %p3 = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pdf_text_enum_s* %pte, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %font, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pfmat, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %text_bbox, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %6 = load double, double* %x, align 8, !tbaa !187
  %7 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox1, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %8 = load double, double* %x2, align 8, !tbaa !189
  %cmp = fcmp oeq double %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox3 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 23
  %p4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p4, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !190
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 23
  %q6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox5, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q6, i32 0, i32 1
  %12 = load double, double* %y7, align 8, !tbaa !191
  %cmp8 = fcmp oeq double %10, %12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gs_matrix_s* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %14, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %15 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %15, i32 0, i32 3
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !192
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 5
  %17 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %18 = bitcast %struct.gs_matrix_s* %m to i8*
  %19 = bitcast %struct.gs_matrix_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 4, i1 false), !tbaa.struct !193
  %20 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %20, i32 0, i32 30
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %21 = load i32, i32* %x12, align 4, !tbaa !148
  %conv = sitofp i32 %21 to double
  %mul = fmul double %conv, 3.906250e-03
  %conv13 = fptrunc double %mul to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv13, float* %tx, align 4, !tbaa !195
  %22 = load %struct.pdf_text_enum_s*, %struct.pdf_text_enum_s** %pte.addr, align 8, !tbaa !1
  %origin14 = getelementptr inbounds %struct.pdf_text_enum_s, %struct.pdf_text_enum_s* %22, i32 0, i32 30
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin14, i32 0, i32 1
  %23 = load i32, i32* %y15, align 4, !tbaa !196
  %conv16 = sitofp i32 %23 to double
  %mul17 = fmul double %conv16, 3.906250e-03
  %conv18 = fptrunc double %mul17 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv18, float* %ty, align 4, !tbaa !197
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pfmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %24, %struct.gs_matrix_s* %m, %struct.gs_matrix_s* %m) #5
  %25 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox19 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %25, i32 0, i32 23
  %p20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox19, i32 0, i32 0
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p20, i32 0, i32 0
  %26 = load double, double* %x21, align 8, !tbaa !187
  %27 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox22 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %27, i32 0, i32 23
  %p23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox22, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p23, i32 0, i32 1
  %28 = load double, double* %y24, align 8, !tbaa !190
  %call25 = call i32 @gs_point_transform(double %26, double %28, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p0) #5
  %29 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox26 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %29, i32 0, i32 23
  %p27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox26, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p27, i32 0, i32 0
  %30 = load double, double* %x28, align 8, !tbaa !187
  %31 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox29 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %31, i32 0, i32 23
  %q30 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox29, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q30, i32 0, i32 1
  %32 = load double, double* %y31, align 8, !tbaa !191
  %call32 = call i32 @gs_point_transform(double %30, double %32, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p1) #5
  %33 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox33 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %33, i32 0, i32 23
  %q34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox33, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q34, i32 0, i32 0
  %34 = load double, double* %x35, align 8, !tbaa !189
  %35 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox36 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %35, i32 0, i32 23
  %p37 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox36, i32 0, i32 0
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p37, i32 0, i32 1
  %36 = load double, double* %y38, align 8, !tbaa !190
  %call39 = call i32 @gs_point_transform(double %34, double %36, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p2) #5
  %37 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox40 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %37, i32 0, i32 23
  %q41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox40, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q41, i32 0, i32 0
  %38 = load double, double* %x42, align 8, !tbaa !189
  %39 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %font.addr, align 8, !tbaa !1
  %FontBBox43 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %39, i32 0, i32 23
  %q44 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox43, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q44, i32 0, i32 1
  %40 = load double, double* %y45, align 8, !tbaa !191
  %call46 = call i32 @gs_point_transform(double %38, double %40, %struct.gs_matrix_s* %m, %struct.gs_point_s* %p3) #5
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %41 = load double, double* %x47, align 8, !tbaa !25
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %42 = load double, double* %x48, align 8, !tbaa !25
  %cmp49 = fcmp olt double %41, %42
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %43 = load double, double* %x51, align 8, !tbaa !25
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %x52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %44 = load double, double* %x52, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %43, %cond.true ], [ %44, %cond.false ]
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %45 = load double, double* %x53, align 8, !tbaa !25
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %46 = load double, double* %x54, align 8, !tbaa !25
  %cmp55 = fcmp olt double %45, %46
  br i1 %cmp55, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %cond.end
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %47 = load double, double* %x58, align 8, !tbaa !25
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.end
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %48 = load double, double* %x60, align 8, !tbaa !25
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.57
  %cond62 = phi double [ %47, %cond.true.57 ], [ %48, %cond.false.59 ]
  %cmp63 = fcmp olt double %cond, %cond62
  br i1 %cmp63, label %cond.true.65, label %cond.false.76

cond.true.65:                                     ; preds = %cond.end.61
  %x66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %49 = load double, double* %x66, align 8, !tbaa !25
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %50 = load double, double* %x67, align 8, !tbaa !25
  %cmp68 = fcmp olt double %49, %50
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.true.65
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %51 = load double, double* %x71, align 8, !tbaa !25
  br label %cond.end.74

cond.false.72:                                    ; preds = %cond.true.65
  %x73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %52 = load double, double* %x73, align 8, !tbaa !25
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi double [ %51, %cond.true.70 ], [ %52, %cond.false.72 ]
  br label %cond.end.87

cond.false.76:                                    ; preds = %cond.end.61
  %x77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %53 = load double, double* %x77, align 8, !tbaa !25
  %x78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %54 = load double, double* %x78, align 8, !tbaa !25
  %cmp79 = fcmp olt double %53, %54
  br i1 %cmp79, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.false.76
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %55 = load double, double* %x82, align 8, !tbaa !25
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.false.76
  %x84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %56 = load double, double* %x84, align 8, !tbaa !25
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.81
  %cond86 = phi double [ %55, %cond.true.81 ], [ %56, %cond.false.83 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.74
  %cond88 = phi double [ %cond75, %cond.end.74 ], [ %cond86, %cond.end.85 ]
  %57 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p89 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %57, i32 0, i32 0
  %x90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p89, i32 0, i32 0
  store double %cond88, double* %x90, align 8, !tbaa !149
  %y91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %58 = load double, double* %y91, align 8, !tbaa !24
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %59 = load double, double* %y92, align 8, !tbaa !24
  %cmp93 = fcmp olt double %58, %59
  br i1 %cmp93, label %cond.true.95, label %cond.false.97

cond.true.95:                                     ; preds = %cond.end.87
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %60 = load double, double* %y96, align 8, !tbaa !24
  br label %cond.end.99

cond.false.97:                                    ; preds = %cond.end.87
  %y98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %61 = load double, double* %y98, align 8, !tbaa !24
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.95
  %cond100 = phi double [ %60, %cond.true.95 ], [ %61, %cond.false.97 ]
  %y101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %62 = load double, double* %y101, align 8, !tbaa !24
  %y102 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %63 = load double, double* %y102, align 8, !tbaa !24
  %cmp103 = fcmp olt double %62, %63
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.end.99
  %y106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %64 = load double, double* %y106, align 8, !tbaa !24
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.end.99
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %65 = load double, double* %y108, align 8, !tbaa !24
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi double [ %64, %cond.true.105 ], [ %65, %cond.false.107 ]
  %cmp111 = fcmp olt double %cond100, %cond110
  br i1 %cmp111, label %cond.true.113, label %cond.false.124

cond.true.113:                                    ; preds = %cond.end.109
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %66 = load double, double* %y114, align 8, !tbaa !24
  %y115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %67 = load double, double* %y115, align 8, !tbaa !24
  %cmp116 = fcmp olt double %66, %67
  br i1 %cmp116, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %cond.true.113
  %y119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %68 = load double, double* %y119, align 8, !tbaa !24
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.true.113
  %y121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %69 = load double, double* %y121, align 8, !tbaa !24
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.118
  %cond123 = phi double [ %68, %cond.true.118 ], [ %69, %cond.false.120 ]
  br label %cond.end.135

cond.false.124:                                   ; preds = %cond.end.109
  %y125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %70 = load double, double* %y125, align 8, !tbaa !24
  %y126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %71 = load double, double* %y126, align 8, !tbaa !24
  %cmp127 = fcmp olt double %70, %71
  br i1 %cmp127, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.false.124
  %y130 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %72 = load double, double* %y130, align 8, !tbaa !24
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.false.124
  %y132 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %73 = load double, double* %y132, align 8, !tbaa !24
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.129
  %cond134 = phi double [ %72, %cond.true.129 ], [ %73, %cond.false.131 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.end.122
  %cond136 = phi double [ %cond123, %cond.end.122 ], [ %cond134, %cond.end.133 ]
  %74 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %p137 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %74, i32 0, i32 0
  %y138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p137, i32 0, i32 1
  store double %cond136, double* %y138, align 8, !tbaa !146
  %x139 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %75 = load double, double* %x139, align 8, !tbaa !25
  %x140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %76 = load double, double* %x140, align 8, !tbaa !25
  %cmp141 = fcmp ogt double %75, %76
  br i1 %cmp141, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %cond.end.135
  %x144 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %77 = load double, double* %x144, align 8, !tbaa !25
  br label %cond.end.147

cond.false.145:                                   ; preds = %cond.end.135
  %x146 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %78 = load double, double* %x146, align 8, !tbaa !25
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.143
  %cond148 = phi double [ %77, %cond.true.143 ], [ %78, %cond.false.145 ]
  %x149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %79 = load double, double* %x149, align 8, !tbaa !25
  %x150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %80 = load double, double* %x150, align 8, !tbaa !25
  %cmp151 = fcmp ogt double %79, %80
  br i1 %cmp151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %cond.end.147
  %x154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %81 = load double, double* %x154, align 8, !tbaa !25
  br label %cond.end.157

cond.false.155:                                   ; preds = %cond.end.147
  %x156 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %82 = load double, double* %x156, align 8, !tbaa !25
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.153
  %cond158 = phi double [ %81, %cond.true.153 ], [ %82, %cond.false.155 ]
  %cmp159 = fcmp ogt double %cond148, %cond158
  br i1 %cmp159, label %cond.true.161, label %cond.false.172

cond.true.161:                                    ; preds = %cond.end.157
  %x162 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %83 = load double, double* %x162, align 8, !tbaa !25
  %x163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %84 = load double, double* %x163, align 8, !tbaa !25
  %cmp164 = fcmp ogt double %83, %84
  br i1 %cmp164, label %cond.true.166, label %cond.false.168

cond.true.166:                                    ; preds = %cond.true.161
  %x167 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %85 = load double, double* %x167, align 8, !tbaa !25
  br label %cond.end.170

cond.false.168:                                   ; preds = %cond.true.161
  %x169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %86 = load double, double* %x169, align 8, !tbaa !25
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.168, %cond.true.166
  %cond171 = phi double [ %85, %cond.true.166 ], [ %86, %cond.false.168 ]
  br label %cond.end.183

cond.false.172:                                   ; preds = %cond.end.157
  %x173 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %87 = load double, double* %x173, align 8, !tbaa !25
  %x174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %88 = load double, double* %x174, align 8, !tbaa !25
  %cmp175 = fcmp ogt double %87, %88
  br i1 %cmp175, label %cond.true.177, label %cond.false.179

cond.true.177:                                    ; preds = %cond.false.172
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %89 = load double, double* %x178, align 8, !tbaa !25
  br label %cond.end.181

cond.false.179:                                   ; preds = %cond.false.172
  %x180 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %90 = load double, double* %x180, align 8, !tbaa !25
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.177
  %cond182 = phi double [ %89, %cond.true.177 ], [ %90, %cond.false.179 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end.181, %cond.end.170
  %cond184 = phi double [ %cond171, %cond.end.170 ], [ %cond182, %cond.end.181 ]
  %91 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q185 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %91, i32 0, i32 1
  %x186 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q185, i32 0, i32 0
  store double %cond184, double* %x186, align 8, !tbaa !147
  %y187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %92 = load double, double* %y187, align 8, !tbaa !24
  %y188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %93 = load double, double* %y188, align 8, !tbaa !24
  %cmp189 = fcmp ogt double %92, %93
  br i1 %cmp189, label %cond.true.191, label %cond.false.193

cond.true.191:                                    ; preds = %cond.end.183
  %y192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %94 = load double, double* %y192, align 8, !tbaa !24
  br label %cond.end.195

cond.false.193:                                   ; preds = %cond.end.183
  %y194 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %95 = load double, double* %y194, align 8, !tbaa !24
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.193, %cond.true.191
  %cond196 = phi double [ %94, %cond.true.191 ], [ %95, %cond.false.193 ]
  %y197 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %96 = load double, double* %y197, align 8, !tbaa !24
  %y198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %97 = load double, double* %y198, align 8, !tbaa !24
  %cmp199 = fcmp ogt double %96, %97
  br i1 %cmp199, label %cond.true.201, label %cond.false.203

cond.true.201:                                    ; preds = %cond.end.195
  %y202 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %98 = load double, double* %y202, align 8, !tbaa !24
  br label %cond.end.205

cond.false.203:                                   ; preds = %cond.end.195
  %y204 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %99 = load double, double* %y204, align 8, !tbaa !24
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %cond.true.201
  %cond206 = phi double [ %98, %cond.true.201 ], [ %99, %cond.false.203 ]
  %cmp207 = fcmp ogt double %cond196, %cond206
  br i1 %cmp207, label %cond.true.209, label %cond.false.220

cond.true.209:                                    ; preds = %cond.end.205
  %y210 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %100 = load double, double* %y210, align 8, !tbaa !24
  %y211 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %101 = load double, double* %y211, align 8, !tbaa !24
  %cmp212 = fcmp ogt double %100, %101
  br i1 %cmp212, label %cond.true.214, label %cond.false.216

cond.true.214:                                    ; preds = %cond.true.209
  %y215 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %102 = load double, double* %y215, align 8, !tbaa !24
  br label %cond.end.218

cond.false.216:                                   ; preds = %cond.true.209
  %y217 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %103 = load double, double* %y217, align 8, !tbaa !24
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.214
  %cond219 = phi double [ %102, %cond.true.214 ], [ %103, %cond.false.216 ]
  br label %cond.end.231

cond.false.220:                                   ; preds = %cond.end.205
  %y221 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %104 = load double, double* %y221, align 8, !tbaa !24
  %y222 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %105 = load double, double* %y222, align 8, !tbaa !24
  %cmp223 = fcmp ogt double %104, %105
  br i1 %cmp223, label %cond.true.225, label %cond.false.227

cond.true.225:                                    ; preds = %cond.false.220
  %y226 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %106 = load double, double* %y226, align 8, !tbaa !24
  br label %cond.end.229

cond.false.227:                                   ; preds = %cond.false.220
  %y228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %107 = load double, double* %y228, align 8, !tbaa !24
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.227, %cond.true.225
  %cond230 = phi double [ %106, %cond.true.225 ], [ %107, %cond.false.227 ]
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.end.229, %cond.end.218
  %cond232 = phi double [ %cond219, %cond.end.218 ], [ %cond230, %cond.end.229 ]
  %108 = load %struct.gs_rect_s*, %struct.gs_rect_s** %text_bbox.addr, align 8, !tbaa !1
  %q233 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %108, i32 0, i32 1
  %y234 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q233, i32 0, i32 1
  store double %cond232, double* %y234, align 8, !tbaa !145
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.231, %if.then
  %109 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %109) #1
  %110 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %110) #1
  %111 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %112 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %112) #1
  %113 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %113) #1
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #2

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gs_cmap_is_identity(%struct.gs_cmap_s*, i32) #2

declare %struct.pdf_resource_s* @pdf_find_resource_by_gs_id(%struct.gx_device_pdf_s*, i32, i64) #2

declare i32 @pdf_cmap_alloc(%struct.gx_device_pdf_s*, %struct.gs_cmap_s*, %struct.pdf_resource_s**, i32) #2

declare void @gs_cmap_ranges_enum_init(%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*) #2

declare i32 @gs_cmap_enum_next_range(%struct.gs_cmap_ranges_enum_s*) #2

declare i32 @gs_cmap_create_char_identity(%struct.gs_cmap_s**, i32, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 0}
!10 = !{!"pdf_text_enum_s", !11, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !14, i64 160, !2, i64 184, !2, i64 192, !8, i64 200, !6, i64 208, !15, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !16, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !12, i64 360, !8, i64 376, !6, i64 384, !15, i64 388, !12, i64 400, !17, i64 416, !2, i64 448, !18, i64 456, !6, i64 464, !6, i64 468, !3, i64 472, !2, i64 552, !8, i64 560}
!11 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !12, i64 24, !12, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!12 = !{!"gs_point_s", !13, i64 0, !13, i64 8}
!13 = !{!"double", !3, i64 0}
!14 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!17 = !{!"gs_text_returned_s", !8, i64 0, !8, i64 8, !12, i64 16}
!18 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!19 = !{!20, !2, i64 0}
!20 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!21 = !{!10, !2, i64 120}
!22 = !{!23, !6, i64 0}
!23 = !{!"gs_text_enum_s", !11, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !14, i64 160, !2, i64 184, !2, i64 192, !8, i64 200, !6, i64 208, !15, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !16, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !12, i64 360, !8, i64 376, !6, i64 384, !15, i64 388, !12, i64 400, !17, i64 416}
!24 = !{!12, !13, i64 8}
!25 = !{!12, !13, i64 0}
!26 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !5, i64 24, i64 8, !27, i64 32, i64 8, !27, i64 40, i64 8, !27, i64 48, i64 8, !27, i64 56, i64 8, !7, i64 56, i64 8, !7, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !7, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !7, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 4, !5, i64 224, i64 8, !1, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 4, !5, i64 248, i64 96, !28, i64 344, i64 4, !5, i64 348, i64 4, !5, i64 352, i64 4, !5, i64 360, i64 8, !27, i64 368, i64 8, !27, i64 376, i64 8, !7, i64 384, i64 4, !5, i64 388, i64 4, !5, i64 392, i64 4, !5, i64 400, i64 8, !27, i64 408, i64 8, !27, i64 416, i64 8, !7, i64 424, i64 8, !7, i64 432, i64 8, !27, i64 440, i64 8, !27, i64 448, i64 8, !1, i64 456, i64 4, !5, i64 460, i64 4, !5, i64 464, i64 4, !5, i64 468, i64 4, !5, i64 472, i64 80, !28, i64 552, i64 8, !1, i64 560, i64 8, !7}
!27 = !{!13, !13, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!10, !2, i64 192}
!30 = !{!23, !2, i64 112}
!31 = !{!32, !2, i64 256}
!32 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !33, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !35, i64 156, !6, i64 160, !36, i64 168, !37, i64 272, !37, i64 324}
!33 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!34 = !{!"gs_matrix_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!35 = !{!"float", !3, i64 0}
!36 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!37 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!38 = !{!10, !8, i64 416}
!39 = !{!10, !6, i64 240}
!40 = !{!41, !2, i64 0}
!41 = !{!"gx_font_stack_item_s", !2, i64 0, !6, i64 8}
!42 = !{!20, !6, i64 8}
!43 = !{!23, !2, i64 192}
!44 = !{!10, !6, i64 232}
!45 = !{!10, !6, i64 236}
!46 = !{!23, !6, i64 236}
!47 = !{!10, !13, i64 432}
!48 = !{!23, !13, i64 432}
!49 = !{!10, !13, i64 440}
!50 = !{!23, !13, i64 440}
!51 = !{!10, !6, i64 468}
!52 = !{!10, !2, i64 88}
!53 = !{!10, !2, i64 112}
!54 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !5, i64 24, i64 8, !27, i64 32, i64 8, !27, i64 40, i64 8, !27, i64 48, i64 8, !27, i64 56, i64 8, !7, i64 56, i64 8, !7, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !7, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !7, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 4, !5, i64 224, i64 8, !1, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 4, !5, i64 248, i64 96, !28, i64 344, i64 4, !5, i64 348, i64 4, !5, i64 352, i64 4, !5, i64 360, i64 8, !27, i64 368, i64 8, !27, i64 376, i64 8, !7, i64 384, i64 4, !5, i64 388, i64 4, !5, i64 392, i64 4, !5, i64 400, i64 8, !27, i64 408, i64 8, !27, i64 416, i64 8, !7, i64 424, i64 8, !7, i64 432, i64 8, !27, i64 440, i64 8, !27}
!55 = !{!56, !6, i64 148}
!56 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !33, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !35, i64 156, !6, i64 160, !36, i64 168, !37, i64 272, !37, i64 324, !57, i64 376}
!57 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !58, i64 8, !6, i64 24, !6, i64 28, !2, i64 32, !6, i64 40, !2, i64 48, !6, i64 56, !2, i64 64}
!58 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!59 = !{!23, !6, i64 232}
!60 = !{!61, !6, i64 0}
!61 = !{!"pdf_char_glyph_pairs_s", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 16}
!62 = !{!61, !6, i64 4}
!63 = !{!61, !6, i64 8}
!64 = !{!56, !2, i64 256}
!65 = !{!23, !6, i64 240}
!66 = !{!41, !6, i64 8}
!67 = !{!32, !3, i64 128}
!68 = !{!32, !2, i64 200}
!69 = !{!70, !8, i64 8}
!70 = !{!"pdf_char_glyph_pair_s", !8, i64 0, !8, i64 8}
!71 = !{!70, !8, i64 0}
!72 = !{!73, !6, i64 30560}
!73 = !{!"gx_device_pdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !74, i64 96, !77, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !78, i64 984, !6, i64 1052, !6, i64 1056, !79, i64 1064, !2, i64 1104, !3, i64 1112, !81, i64 1120, !82, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !83, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !91, i64 7512, !91, i64 8144, !8, i64 8776, !8, i64 8784, !3, i64 8792, !3, i64 8796, !12, i64 8800, !6, i64 8816, !2, i64 8824, !8, i64 8832, !8, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !13, i64 8872, !96, i64 8880, !6, i64 9360, !13, i64 9368, !6, i64 9376, !6, i64 9380, !6, i64 9384, !6, i64 9388, !6, i64 9392, !6, i64 9396, !6, i64 9400, !6, i64 9404, !6, i64 9408, !6, i64 9412, !6, i64 9416, !6, i64 9420, !100, i64 9424, !100, i64 9440, !6, i64 9456, !6, i64 9460, !6, i64 9464, !8, i64 9472, !6, i64 9480, !6, i64 9484, !99, i64 9488, !99, i64 9504, !6, i64 9520, !6, i64 9524, !6, i64 9528, !6, i64 9532, !6, i64 9536, !6, i64 9540, !6, i64 9544, !6, i64 9548, !6, i64 9552, !6, i64 9556, !6, i64 9560, !6, i64 9564, !6, i64 9568, !8, i64 9576, !8, i64 9584, !8, i64 9592, !101, i64 9600, !99, i64 9616, !99, i64 9632, !6, i64 9648, !6, i64 9652, !6, i64 9656, !99, i64 9664, !6, i64 9680, !6, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !6, i64 9768, !6, i64 9772, !6, i64 9776, !102, i64 9784, !103, i64 9816, !103, i64 9856, !6, i64 9896, !6, i64 9900, !6, i64 9904, !6, i64 9908, !6, i64 9912, !8, i64 9920, !3, i64 9928, !6, i64 9960, !8, i64 9968, !8, i64 9976, !3, i64 9984, !3, i64 9988, !104, i64 9992, !104, i64 14120, !104, i64 18248, !104, i64 22376, !8, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !8, i64 26536, !6, i64 26544, !6, i64 26548, !8, i64 26552, !3, i64 26560, !8, i64 26568, !8, i64 26576, !3, i64 26584, !2, i64 26592, !105, i64 26600, !2, i64 26648, !6, i64 26656, !8, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !8, i64 28664, !2, i64 28672, !6, i64 28680, !6, i64 28684, !6, i64 28688, !6, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !12, i64 28792, !2, i64 28808, !2, i64 28816, !6, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !6, i64 28856, !6, i64 28860, !6, i64 28864, !106, i64 28872, !6, i64 30384, !6, i64 30388, !6, i64 30392, !2, i64 30400, !6, i64 30408, !6, i64 30412, !6, i64 30416, !34, i64 30420, !2, i64 30448, !3, i64 30456, !6, i64 30460, !6, i64 30464, !2, i64 30472, !2, i64 30480, !86, i64 30488, !6, i64 30524, !102, i64 30528, !6, i64 30560, !6, i64 30564, !6, i64 30568, !2, i64 30576, !6, i64 30584, !6, i64 30588, !8, i64 30592, !6, i64 30600, !6, i64 30604, !6, i64 30608, !34, i64 30612, !13, i64 30640, !2, i64 30648, !58, i64 30656, !6, i64 30672, !2, i64 30680, !6, i64 30688, !6, i64 30692, !6, i64 30696, !6, i64 30700, !6, i64 30704, !6, i64 30708, !6, i64 30712, !6, i64 30716, !6, i64 30720, !6, i64 30724, !6, i64 30728, !6, i64 30732, !6, i64 30736, !6, i64 30740, !6, i64 30744, !6, i64 30748, !6, i64 30752, !6, i64 30756, !6, i64 30760, !6, i64 30764, !6, i64 30768, !6, i64 30772, !2, i64 30776, !6, i64 30784, !6, i64 30788}
!74 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !75, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !76, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!75 = !{!"short", !3, i64 0}
!76 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!77 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!78 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!79 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !80, i64 16, !6, i64 32, !3, i64 36}
!80 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!81 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!82 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!83 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !84, i64 24, !6, i64 128, !86, i64 132, !6, i64 168, !12, i64 176, !12, i64 192, !6, i64 208, !6, i64 212, !75, i64 216, !3, i64 220, !87, i64 224, !87, i64 228, !88, i64 232, !8, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !35, i64 296, !18, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !35, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !89, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !90, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !90, i64 1336}
!84 = !{!"gx_line_params_s", !35, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !6, i64 36, !34, i64 40, !85, i64 64}
!85 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !35, i64 12, !6, i64 16, !35, i64 20, !6, i64 24, !6, i64 28, !35, i64 32}
!86 = !{!"gs_matrix_fixed_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!87 = !{!"gs_transparency_source_s", !35, i64 0}
!88 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!89 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!90 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !8, i64 16, !3, i64 24}
!91 = !{!"gx_hl_saved_color_s", !8, i64 0, !8, i64 8, !6, i64 16, !92, i64 24, !94, i64 288}
!92 = !{!"gs_client_color_s", !2, i64 0, !93, i64 8}
!93 = !{!"gs_paint_color_s", !3, i64 0}
!94 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !95, i64 336}
!95 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!96 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !8, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !58, i64 64, !58, i64 80, !58, i64 96, !58, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !97, i64 152, !6, i64 232, !6, i64 236, !97, i64 240, !97, i64 320, !98, i64 400, !98, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !99, i64 448, !98, i64 464}
!97 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !35, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!98 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!99 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!100 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!101 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!102 = !{!"gs_rect_s", !12, i64 0, !12, i64 16}
!103 = !{!"pdf_page_dsc_info_s", !6, i64 0, !6, i64 4, !102, i64 8}
!104 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!105 = !{!"pdf_text_rotation_s", !3, i64 0, !6, i64 40}
!106 = !{!"pdf_viewer_state_s", !6, i64 0, !3, i64 8, !35, i64 40, !35, i64 44, !3, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !6, i64 80, !35, i64 84, !35, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !91, i64 120, !91, i64 752, !84, i64 1384, !2, i64 1488, !6, i64 1496, !8, i64 1504}
!107 = !{!108, !2, i64 80}
!108 = !{!"", !102, i64 0, !34, i64 32, !2, i64 56, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!109 = !{!110, !2, i64 104}
!110 = !{!"pdf_font_resource_s", !2, i64 0, !2, i64 8, !8, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !8, i64 56, !2, i64 64, !3, i64 72, !2, i64 80, !20, i64 88, !2, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !3, i64 176}
!111 = !{!110, !3, i64 72}
!112 = !{!56, !2, i64 440}
!113 = !{!32, !2, i64 208}
!114 = !{!110, !2, i64 136}
!115 = !{!32, !6, i64 372}
!116 = !{!73, !2, i64 24}
!117 = !{!110, !2, i64 128}
!118 = !{!10, !8, i64 424}
!119 = !{!110, !6, i64 120}
!120 = !{!121, !13, i64 0}
!121 = !{!"pdf_glyph_widths_s", !122, i64 0, !122, i64 40, !6, i64 80, !6, i64 84, !102, i64 88}
!122 = !{!"pdf_glyph_width_s", !13, i64 0, !12, i64 8, !12, i64 24}
!123 = !{!121, !13, i64 24}
!124 = !{!121, !13, i64 32}
!125 = !{!121, !13, i64 40}
!126 = !{!127, !2, i64 8}
!127 = !{!"", !8, i64 0, !2, i64 8, !6, i64 16, !8, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!128 = !{!129, !2, i64 720}
!129 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !33, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !35, i64 156, !6, i64 160, !36, i64 168, !37, i64 272, !37, i64 324, !102, i64 376, !130, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !131, i64 448, !132, i64 656, !2, i64 744}
!130 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!131 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !8, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !8, i64 120, !8, i64 128, !8, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !8, i64 200}
!132 = !{!"gs_font_cid2_data_s", !133, i64 0, !6, i64 56, !2, i64 64, !135, i64 72}
!133 = !{!"gs_font_cid_data_s", !134, i64 0, !6, i64 40, !6, i64 44, !6, i64 48}
!134 = !{!"gs_cid_system_info_s", !58, i64 0, !58, i64 16, !6, i64 32}
!135 = !{!"o_", !2, i64 0, !2, i64 8}
!136 = !{!75, !75, i64 0}
!137 = !{!127, !2, i64 48}
!138 = !{!10, !2, i64 64}
!139 = !{!10, !2, i64 72}
!140 = !{!10, !6, i64 16}
!141 = !{!58, !2, i64 0}
!142 = !{!58, !6, i64 8}
!143 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !5, i64 24, i64 8, !27, i64 32, i64 8, !27, i64 40, i64 8, !27, i64 48, i64 8, !27, i64 56, i64 8, !7, i64 56, i64 8, !7, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !5}
!144 = !{!73, !6, i64 9528}
!145 = !{!102, !13, i64 24}
!146 = !{!102, !13, i64 8}
!147 = !{!102, !13, i64 16}
!148 = !{!10, !6, i64 456}
!149 = !{!102, !13, i64 0}
!150 = !{!73, !6, i64 9776}
!151 = !{!10, !2, i64 136}
!152 = !{!153, !2, i64 0}
!153 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !95, i64 352, !6, i64 360, !92, i64 368, !154, i64 632}
!154 = !{!"_mask", !155, i64 0, !8, i64 8, !2, i64 16}
!155 = !{!"mp_", !6, i64 0, !6, i64 4}
!156 = !{!153, !6, i64 360}
!157 = !{!23, !6, i64 16}
!158 = !{!32, !2, i64 64}
!159 = !{!127, !8, i64 24}
!160 = !{!32, !2, i64 24}
!161 = !{!32, !6, i64 148}
!162 = !{!32, !2, i64 16}
!163 = !{!56, !8, i64 56}
!164 = !{i64 0, i64 4, !5, i64 8, i64 96, !28}
!165 = !{!73, !13, i64 9368}
!166 = !{!167, !6, i64 24}
!167 = !{!"gs_cmap_s", !6, i64 0, !8, i64 8, !58, i64 16, !2, i64 32, !6, i64 40, !35, i64 44, !130, i64 48, !8, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !2, i64 88, !2, i64 96, !2, i64 104}
!168 = !{!167, !2, i64 16}
!169 = !{!167, !8, i64 8}
!170 = !{!167, !6, i64 76}
!171 = !{!172, !6, i64 8}
!172 = !{!"gs_cmap_ranges_enum_s", !173, i64 0, !2, i64 16, !2, i64 24, !6, i64 32}
!173 = !{!"gx_code_space_range_s", !3, i64 0, !3, i64 4, !6, i64 8}
!174 = !{!167, !6, i64 72}
!175 = !{!167, !6, i64 0}
!176 = !{!167, !6, i64 80}
!177 = !{!110, !2, i64 144}
!178 = !{!73, !2, i64 1728}
!179 = !{!180, !2, i64 136}
!180 = !{!"gs_memory_s", !2, i64 0, !181, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!181 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!182 = !{!183, !2, i64 40}
!183 = !{!"", !2, i64 0, !3, i64 8, !58, i64 40, !6, i64 56, !6, i64 60, !6, i64 64}
!184 = !{!183, !6, i64 48}
!185 = !{!183, !6, i64 60}
!186 = !{!183, !6, i64 64}
!187 = !{!188, !13, i64 376}
!188 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !33, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !34, i64 80, !34, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !35, i64 156, !6, i64 160, !36, i64 168, !37, i64 272, !37, i64 324, !102, i64 376, !130, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!189 = !{!188, !13, i64 392}
!190 = !{!188, !13, i64 384}
!191 = !{!188, !13, i64 400}
!192 = !{!10, !2, i64 104}
!193 = !{i64 0, i64 4, !194, i64 4, i64 4, !194, i64 8, i64 4, !194, i64 12, i64 4, !194, i64 16, i64 4, !194, i64 20, i64 4, !194}
!194 = !{!35, !35, i64 0}
!195 = !{!34, !35, i64 16}
!196 = !{!10, !6, i64 460}
!197 = !{!34, !35, i64 20}
