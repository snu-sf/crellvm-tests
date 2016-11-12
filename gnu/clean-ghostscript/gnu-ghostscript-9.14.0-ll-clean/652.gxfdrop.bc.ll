; ModuleID = './gxfdrop.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.section_s = type { i16, i16, i16, i16 }
%struct.line_list_s = type { %struct.gs_memory_s*, %struct.active_line_s*, %struct.active_line_s*, %struct.active_line_s*, i32, %struct.active_line_s*, %struct.active_line_s*, %struct.active_line_s, %struct.active_line_s*, %struct.active_line_s*, %struct.margin_set_s, %struct.margin_set_s, %struct.margin_s*, i32*, i32, i32, i32, i32, i32, %struct.fill_options_s*, i32, [20 x %struct.active_line_s], [20 x %struct.margin_s], [100 x %struct.section_s], [100 x %struct.section_s], [20 x i32] }
%struct.active_line_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, i32, i32, %struct.segment_s*, i32, i32, i32, %struct.gx_flattened_iterator_s, i32, i32, %struct.active_line_s*, %struct.active_line_s*, %struct.active_line_s* }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_flattened_iterator_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.margin_set_s = type { i32, %struct.margin_s*, %struct.margin_s*, %struct.section_s* }
%struct.margin_s = type { i32, i32, %struct.margin_s*, %struct.margin_s* }
%struct.fill_options_s = type { i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_device_s*, %struct.gs_fixed_rect_s*, i32, i32, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
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
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [8 x i8] c"section\00", align 1
@st_section = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"filling contiguity margin\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@st_margin = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define void @init_section(%struct.section_s* %sect, i32 %i0, i32 %i1) #1 {
entry:
  %sect.addr = alloca %struct.section_s*, align 8
  %i0.addr = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.section_s* %sect, %struct.section_s** %sect.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !5
  store i32 %i1, i32* %i1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %i0.addr, align 4, !tbaa !5
  store i32 %1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.section_s*, %struct.section_s** %sect.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.section_s, %struct.section_s* %5, i64 %idxprom
  %x0 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx, i32 0, i32 2
  store i16 256, i16* %x0, align 2, !tbaa !7
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.section_s*, %struct.section_s** %sect.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.section_s, %struct.section_s* %7, i64 %idxprom1
  %x1 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx2, i32 0, i32 3
  store i16 0, i16* %x1, align 2, !tbaa !10
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.section_s*, %struct.section_s** %sect.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.section_s, %struct.section_s* %9, i64 %idxprom3
  %y1 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx4, i32 0, i32 1
  store i16 -1, i16* %y1, align 2, !tbaa !11
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.section_s*, %struct.section_s** %sect.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.section_s, %struct.section_s* %11, i64 %idxprom5
  %y0 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx6, i32 0, i32 0
  store i16 -1, i16* %y0, align 2, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @free_all_margins(%struct.line_list_s* %ll) #1 {
entry:
  %ll.addr = alloca %struct.line_list_s*, align 8
  %m = alloca %struct.margin_s*, align 8
  %m1 = alloca %struct.margin_s*, align 8
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %0 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %1, i32 0, i32 12
  %2 = load %struct.margin_s*, %struct.margin_s** %free_margin_list, align 8, !tbaa !13
  store %struct.margin_s* %2, %struct.margin_s** %m, align 8, !tbaa !1
  %3 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %3, i32 0, i32 12
  store %struct.margin_s* null, %struct.margin_s** %free_margin_list1, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %cmp = icmp ne %struct.margin_s* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.margin_s, %struct.margin_s* %6, i32 0, i32 3
  %7 = load %struct.margin_s*, %struct.margin_s** %next, align 8, !tbaa !19
  store %struct.margin_s* %7, %struct.margin_s** %m1, align 8, !tbaa !1
  %8 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %9 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margins = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %9, i32 0, i32 22
  %arraydecay = getelementptr inbounds [20 x %struct.margin_s], [20 x %struct.margin_s]* %local_margins, i32 0, i32 0
  %cmp2 = icmp ult %struct.margin_s* %8, %arraydecay
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margins3 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 22
  %arraydecay4 = getelementptr inbounds [20 x %struct.margin_s], [20 x %struct.margin_s]* %local_margins3, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.margin_s, %struct.margin_s* %arraydecay4, i64 20
  %cmp5 = icmp uge %struct.margin_s* %10, %add.ptr
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %12 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %15 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !21
  %17 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %18 = bitcast %struct.margin_s* %17 to i8*
  call void %14(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %19 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  store %struct.margin_s* %19, %struct.margin_s** %m, align 8, !tbaa !1
  %20 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @continue_margin_common(%struct.line_list_s* %ll, %struct.margin_set_s* %set, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %y0, i32 %y1) #1 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %sect = alloca %struct.section_s*, align 8
  %yy0 = alloca i32, align 4
  %yy1 = alloca i32, align 4
  %x00 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x01 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %s = alloca %struct.section_s*, align 8
  %x_pixel = alloca i32, align 4
  %xl = alloca i32, align 4
  %xu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %sect1 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %2, i32 0, i32 3
  %3 = load %struct.section_s*, %struct.section_s** %sect1, align 8, !tbaa !25
  store %struct.section_s* %3, %struct.section_s** %sect, align 8, !tbaa !1
  %4 = bitcast i32* %yy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %6 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !26
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start2 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %9, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2, i32 0, i32 1
  %10 = load i32, i32* %y3, align 4, !tbaa !26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %10, %cond.false ]
  %11 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %11, i32 0, i32 0
  %12 = load i32, i32* %y4, align 4, !tbaa !27
  %cmp5 = icmp sgt i32 %cond, %12
  br i1 %cmp5, label %cond.true.6, label %cond.false.16

cond.true.6:                                      ; preds = %cond.end
  %13 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %14 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start7 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %14, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start7, i32 0, i32 1
  %15 = load i32, i32* %y8, align 4, !tbaa !26
  %cmp9 = icmp sgt i32 %13, %15
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.true.6
  %16 = load i32, i32* %y0.addr, align 4, !tbaa !5
  br label %cond.end.14

cond.false.11:                                    ; preds = %cond.true.6
  %17 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start12 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %17, i32 0, i32 0
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start12, i32 0, i32 1
  %18 = load i32, i32* %y13, align 4, !tbaa !26
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.10
  %cond15 = phi i32 [ %16, %cond.true.10 ], [ %18, %cond.false.11 ]
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.end
  %19 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %y17 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %19, i32 0, i32 0
  %20 = load i32, i32* %y17, align 4, !tbaa !27
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.end.14
  %cond19 = phi i32 [ %cond15, %cond.end.14 ], [ %20, %cond.false.16 ]
  store i32 %cond19, i32* %yy0, align 4, !tbaa !5
  %21 = bitcast i32* %yy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %23 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %24 = load i32, i32* %y20, align 4, !tbaa !28
  %cmp21 = icmp slt i32 %22, %24
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.18
  %25 = load i32, i32* %y1.addr, align 4, !tbaa !5
  br label %cond.end.26

cond.false.23:                                    ; preds = %cond.end.18
  %26 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end24 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %26, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end24, i32 0, i32 1
  %27 = load i32, i32* %y25, align 4, !tbaa !28
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.23, %cond.true.22
  %cond27 = phi i32 [ %25, %cond.true.22 ], [ %27, %cond.false.23 ]
  %conv = sext i32 %cond27 to i64
  %28 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %y28 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %28, i32 0, i32 0
  %29 = load i32, i32* %y28, align 4, !tbaa !27
  %conv29 = sext i32 %29 to i64
  %add = add nsw i64 %conv29, 256
  %cmp30 = icmp slt i64 %conv, %add
  br i1 %cmp30, label %cond.true.32, label %cond.false.44

cond.true.32:                                     ; preds = %cond.end.26
  %30 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %31 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end33 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %31, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end33, i32 0, i32 1
  %32 = load i32, i32* %y34, align 4, !tbaa !28
  %cmp35 = icmp slt i32 %30, %32
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.true.32
  %33 = load i32, i32* %y1.addr, align 4, !tbaa !5
  br label %cond.end.41

cond.false.38:                                    ; preds = %cond.true.32
  %34 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end39 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %34, i32 0, i32 1
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end39, i32 0, i32 1
  %35 = load i32, i32* %y40, align 4, !tbaa !28
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.37
  %cond42 = phi i32 [ %33, %cond.true.37 ], [ %35, %cond.false.38 ]
  %conv43 = sext i32 %cond42 to i64
  br label %cond.end.48

cond.false.44:                                    ; preds = %cond.end.26
  %36 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %y45 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %36, i32 0, i32 0
  %37 = load i32, i32* %y45, align 4, !tbaa !27
  %conv46 = sext i32 %37 to i64
  %add47 = add nsw i64 %conv46, 256
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.end.41
  %cond49 = phi i64 [ %conv43, %cond.end.41 ], [ %add47, %cond.false.44 ]
  %conv50 = trunc i64 %cond49 to i32
  store i32 %conv50, i32* %yy1, align 4, !tbaa !5
  %38 = load i32, i32* %yy0, align 4, !tbaa !5
  %39 = load i32, i32* %yy1, align 4, !tbaa !5
  %cmp51 = icmp sle i32 %38, %39
  br i1 %cmp51, label %if.then, label %if.end.302

if.then:                                          ; preds = %cond.end.48
  %40 = bitcast i32* %x00 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load i32, i32* %yy0, align 4, !tbaa !5
  %42 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %41, %42
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.then
  %43 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %43, i32 0, i32 5
  %44 = load i32, i32* %x_current, align 4, !tbaa !29
  br label %cond.end.88

cond.false.56:                                    ; preds = %if.then
  %45 = load i32, i32* %yy0, align 4, !tbaa !5
  %46 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end57 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %46, i32 0, i32 1
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end57, i32 0, i32 1
  %47 = load i32, i32* %y58, align 4, !tbaa !28
  %cmp59 = icmp eq i32 %45, %47
  br i1 %cmp59, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.false.56
  %48 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end62 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %48, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end62, i32 0, i32 0
  %49 = load i32, i32* %x, align 4, !tbaa !30
  br label %cond.end.86

cond.false.63:                                    ; preds = %cond.false.56
  %50 = load i32, i32* %yy0, align 4, !tbaa !5
  %51 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %51, i32 0, i32 3
  %52 = load i32, i32* %y_fast_max, align 4, !tbaa !31
  %cmp64 = icmp sle i32 %50, %52
  br i1 %cmp64, label %cond.true.66, label %cond.false.73

cond.true.66:                                     ; preds = %cond.false.63
  %53 = load i32, i32* %yy0, align 4, !tbaa !5
  %54 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start67 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %54, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start67, i32 0, i32 1
  %55 = load i32, i32* %y68, align 4, !tbaa !26
  %sub = sub nsw i32 %53, %55
  %56 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %56, i32 0, i32 2
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff, i32 0, i32 0
  %57 = load i32, i32* %x69, align 4, !tbaa !32
  %mul = mul nsw i32 %sub, %57
  %58 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %num_adjust = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %58, i32 0, i32 4
  %59 = load i32, i32* %num_adjust, align 4, !tbaa !33
  %add70 = add nsw i32 %mul, %59
  %60 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff71 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %60, i32 0, i32 2
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff71, i32 0, i32 1
  %61 = load i32, i32* %y72, align 4, !tbaa !34
  %div = sdiv i32 %add70, %61
  br label %cond.end.81

cond.false.73:                                    ; preds = %cond.false.63
  %62 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff74 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %62, i32 0, i32 2
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff74, i32 0, i32 0
  %63 = load i32, i32* %x75, align 4, !tbaa !32
  %64 = load i32, i32* %yy0, align 4, !tbaa !5
  %65 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start76 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %65, i32 0, i32 0
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start76, i32 0, i32 1
  %66 = load i32, i32* %y77, align 4, !tbaa !26
  %sub78 = sub nsw i32 %64, %66
  %67 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff79 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %67, i32 0, i32 2
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff79, i32 0, i32 1
  %68 = load i32, i32* %y80, align 4, !tbaa !34
  %call = call i32 @fixed_mult_quo(i32 %63, i32 %sub78, i32 %68) #4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.73, %cond.true.66
  %cond82 = phi i32 [ %div, %cond.true.66 ], [ %call, %cond.false.73 ]
  %69 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start83 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %69, i32 0, i32 0
  %x84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start83, i32 0, i32 0
  %70 = load i32, i32* %x84, align 4, !tbaa !35
  %add85 = add nsw i32 %cond82, %70
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.81, %cond.true.61
  %cond87 = phi i32 [ %49, %cond.true.61 ], [ %add85, %cond.end.81 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.55
  %cond89 = phi i32 [ %44, %cond.true.55 ], [ %cond87, %cond.end.86 ]
  store i32 %cond89, i32* %x00, align 4, !tbaa !5
  %71 = bitcast i32* %x10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i32, i32* %yy0, align 4, !tbaa !5
  %73 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %72, %73
  br i1 %cmp90, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %cond.end.88
  %74 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_current93 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %74, i32 0, i32 5
  %75 = load i32, i32* %x_current93, align 4, !tbaa !29
  br label %cond.end.134

cond.false.94:                                    ; preds = %cond.end.88
  %76 = load i32, i32* %yy0, align 4, !tbaa !5
  %77 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end95 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %77, i32 0, i32 1
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end95, i32 0, i32 1
  %78 = load i32, i32* %y96, align 4, !tbaa !28
  %cmp97 = icmp eq i32 %76, %78
  br i1 %cmp97, label %cond.true.99, label %cond.false.102

cond.true.99:                                     ; preds = %cond.false.94
  %79 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end100 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %79, i32 0, i32 1
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end100, i32 0, i32 0
  %80 = load i32, i32* %x101, align 4, !tbaa !30
  br label %cond.end.132

cond.false.102:                                   ; preds = %cond.false.94
  %81 = load i32, i32* %yy0, align 4, !tbaa !5
  %82 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %y_fast_max103 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %82, i32 0, i32 3
  %83 = load i32, i32* %y_fast_max103, align 4, !tbaa !31
  %cmp104 = icmp sle i32 %81, %83
  br i1 %cmp104, label %cond.true.106, label %cond.false.118

cond.true.106:                                    ; preds = %cond.false.102
  %84 = load i32, i32* %yy0, align 4, !tbaa !5
  %85 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start107 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %85, i32 0, i32 0
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start107, i32 0, i32 1
  %86 = load i32, i32* %y108, align 4, !tbaa !26
  %sub109 = sub nsw i32 %84, %86
  %87 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff110 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %87, i32 0, i32 2
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff110, i32 0, i32 0
  %88 = load i32, i32* %x111, align 4, !tbaa !32
  %mul112 = mul nsw i32 %sub109, %88
  %89 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %num_adjust113 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %89, i32 0, i32 4
  %90 = load i32, i32* %num_adjust113, align 4, !tbaa !33
  %add114 = add nsw i32 %mul112, %90
  %91 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff115 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %91, i32 0, i32 2
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff115, i32 0, i32 1
  %92 = load i32, i32* %y116, align 4, !tbaa !34
  %div117 = sdiv i32 %add114, %92
  br label %cond.end.127

cond.false.118:                                   ; preds = %cond.false.102
  %93 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff119 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %93, i32 0, i32 2
  %x120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff119, i32 0, i32 0
  %94 = load i32, i32* %x120, align 4, !tbaa !32
  %95 = load i32, i32* %yy0, align 4, !tbaa !5
  %96 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start121 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %96, i32 0, i32 0
  %y122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start121, i32 0, i32 1
  %97 = load i32, i32* %y122, align 4, !tbaa !26
  %sub123 = sub nsw i32 %95, %97
  %98 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff124 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %98, i32 0, i32 2
  %y125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff124, i32 0, i32 1
  %99 = load i32, i32* %y125, align 4, !tbaa !34
  %call126 = call i32 @fixed_mult_quo(i32 %94, i32 %sub123, i32 %99) #4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.118, %cond.true.106
  %cond128 = phi i32 [ %div117, %cond.true.106 ], [ %call126, %cond.false.118 ]
  %100 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start129 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %100, i32 0, i32 0
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start129, i32 0, i32 0
  %101 = load i32, i32* %x130, align 4, !tbaa !35
  %add131 = add nsw i32 %cond128, %101
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.127, %cond.true.99
  %cond133 = phi i32 [ %80, %cond.true.99 ], [ %add131, %cond.end.127 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.92
  %cond135 = phi i32 [ %75, %cond.true.92 ], [ %cond133, %cond.end.132 ]
  store i32 %cond135, i32* %x10, align 4, !tbaa !5
  %102 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #2
  %103 = load i32, i32* %yy1, align 4, !tbaa !5
  %104 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp136 = icmp eq i32 %103, %104
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.end.134
  %105 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %105, i32 0, i32 6
  %106 = load i32, i32* %x_next, align 4, !tbaa !36
  br label %cond.end.179

cond.false.139:                                   ; preds = %cond.end.134
  %107 = load i32, i32* %yy1, align 4, !tbaa !5
  %108 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end140 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %108, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end140, i32 0, i32 1
  %109 = load i32, i32* %y141, align 4, !tbaa !28
  %cmp142 = icmp eq i32 %107, %109
  br i1 %cmp142, label %cond.true.144, label %cond.false.147

cond.true.144:                                    ; preds = %cond.false.139
  %110 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end145 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %110, i32 0, i32 1
  %x146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end145, i32 0, i32 0
  %111 = load i32, i32* %x146, align 4, !tbaa !30
  br label %cond.end.177

cond.false.147:                                   ; preds = %cond.false.139
  %112 = load i32, i32* %yy1, align 4, !tbaa !5
  %113 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %y_fast_max148 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %113, i32 0, i32 3
  %114 = load i32, i32* %y_fast_max148, align 4, !tbaa !31
  %cmp149 = icmp sle i32 %112, %114
  br i1 %cmp149, label %cond.true.151, label %cond.false.163

cond.true.151:                                    ; preds = %cond.false.147
  %115 = load i32, i32* %yy1, align 4, !tbaa !5
  %116 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start152 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %116, i32 0, i32 0
  %y153 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start152, i32 0, i32 1
  %117 = load i32, i32* %y153, align 4, !tbaa !26
  %sub154 = sub nsw i32 %115, %117
  %118 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff155 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %118, i32 0, i32 2
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff155, i32 0, i32 0
  %119 = load i32, i32* %x156, align 4, !tbaa !32
  %mul157 = mul nsw i32 %sub154, %119
  %120 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %num_adjust158 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %120, i32 0, i32 4
  %121 = load i32, i32* %num_adjust158, align 4, !tbaa !33
  %add159 = add nsw i32 %mul157, %121
  %122 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff160 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %122, i32 0, i32 2
  %y161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff160, i32 0, i32 1
  %123 = load i32, i32* %y161, align 4, !tbaa !34
  %div162 = sdiv i32 %add159, %123
  br label %cond.end.172

cond.false.163:                                   ; preds = %cond.false.147
  %124 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff164 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %124, i32 0, i32 2
  %x165 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff164, i32 0, i32 0
  %125 = load i32, i32* %x165, align 4, !tbaa !32
  %126 = load i32, i32* %yy1, align 4, !tbaa !5
  %127 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start166 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %127, i32 0, i32 0
  %y167 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start166, i32 0, i32 1
  %128 = load i32, i32* %y167, align 4, !tbaa !26
  %sub168 = sub nsw i32 %126, %128
  %129 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff169 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %129, i32 0, i32 2
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff169, i32 0, i32 1
  %130 = load i32, i32* %y170, align 4, !tbaa !34
  %call171 = call i32 @fixed_mult_quo(i32 %125, i32 %sub168, i32 %130) #4
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.163, %cond.true.151
  %cond173 = phi i32 [ %div162, %cond.true.151 ], [ %call171, %cond.false.163 ]
  %131 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start174 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %131, i32 0, i32 0
  %x175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start174, i32 0, i32 0
  %132 = load i32, i32* %x175, align 4, !tbaa !35
  %add176 = add nsw i32 %cond173, %132
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.172, %cond.true.144
  %cond178 = phi i32 [ %111, %cond.true.144 ], [ %add176, %cond.end.172 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.138
  %cond180 = phi i32 [ %106, %cond.true.138 ], [ %cond178, %cond.end.177 ]
  store i32 %cond180, i32* %x01, align 4, !tbaa !5
  %133 = bitcast i32* %x11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #2
  %134 = load i32, i32* %yy1, align 4, !tbaa !5
  %135 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp181 = icmp eq i32 %134, %135
  br i1 %cmp181, label %cond.true.183, label %cond.false.185

cond.true.183:                                    ; preds = %cond.end.179
  %136 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_next184 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %136, i32 0, i32 6
  %137 = load i32, i32* %x_next184, align 4, !tbaa !36
  br label %cond.end.225

cond.false.185:                                   ; preds = %cond.end.179
  %138 = load i32, i32* %yy1, align 4, !tbaa !5
  %139 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end186 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %139, i32 0, i32 1
  %y187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end186, i32 0, i32 1
  %140 = load i32, i32* %y187, align 4, !tbaa !28
  %cmp188 = icmp eq i32 %138, %140
  br i1 %cmp188, label %cond.true.190, label %cond.false.193

cond.true.190:                                    ; preds = %cond.false.185
  %141 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end191 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %141, i32 0, i32 1
  %x192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end191, i32 0, i32 0
  %142 = load i32, i32* %x192, align 4, !tbaa !30
  br label %cond.end.223

cond.false.193:                                   ; preds = %cond.false.185
  %143 = load i32, i32* %yy1, align 4, !tbaa !5
  %144 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %y_fast_max194 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %144, i32 0, i32 3
  %145 = load i32, i32* %y_fast_max194, align 4, !tbaa !31
  %cmp195 = icmp sle i32 %143, %145
  br i1 %cmp195, label %cond.true.197, label %cond.false.209

cond.true.197:                                    ; preds = %cond.false.193
  %146 = load i32, i32* %yy1, align 4, !tbaa !5
  %147 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start198 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %147, i32 0, i32 0
  %y199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start198, i32 0, i32 1
  %148 = load i32, i32* %y199, align 4, !tbaa !26
  %sub200 = sub nsw i32 %146, %148
  %149 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff201 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %149, i32 0, i32 2
  %x202 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff201, i32 0, i32 0
  %150 = load i32, i32* %x202, align 4, !tbaa !32
  %mul203 = mul nsw i32 %sub200, %150
  %151 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %num_adjust204 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %151, i32 0, i32 4
  %152 = load i32, i32* %num_adjust204, align 4, !tbaa !33
  %add205 = add nsw i32 %mul203, %152
  %153 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff206 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %153, i32 0, i32 2
  %y207 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff206, i32 0, i32 1
  %154 = load i32, i32* %y207, align 4, !tbaa !34
  %div208 = sdiv i32 %add205, %154
  br label %cond.end.218

cond.false.209:                                   ; preds = %cond.false.193
  %155 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff210 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %155, i32 0, i32 2
  %x211 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff210, i32 0, i32 0
  %156 = load i32, i32* %x211, align 4, !tbaa !32
  %157 = load i32, i32* %yy1, align 4, !tbaa !5
  %158 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start212 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %158, i32 0, i32 0
  %y213 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start212, i32 0, i32 1
  %159 = load i32, i32* %y213, align 4, !tbaa !26
  %sub214 = sub nsw i32 %157, %159
  %160 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff215 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %160, i32 0, i32 2
  %y216 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff215, i32 0, i32 1
  %161 = load i32, i32* %y216, align 4, !tbaa !34
  %call217 = call i32 @fixed_mult_quo(i32 %156, i32 %sub214, i32 %161) #4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.209, %cond.true.197
  %cond219 = phi i32 [ %div208, %cond.true.197 ], [ %call217, %cond.false.209 ]
  %162 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start220 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %162, i32 0, i32 0
  %x221 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start220, i32 0, i32 0
  %163 = load i32, i32* %x221, align 4, !tbaa !35
  %add222 = add nsw i32 %cond219, %163
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.218, %cond.true.190
  %cond224 = phi i32 [ %142, %cond.true.190 ], [ %add222, %cond.end.218 ]
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.end.223, %cond.true.183
  %cond226 = phi i32 [ %137, %cond.true.183 ], [ %cond224, %cond.end.223 ]
  store i32 %cond226, i32* %x11, align 4, !tbaa !5
  %164 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #2
  %165 = load i32, i32* %x00, align 4, !tbaa !5
  %166 = load i32, i32* %x01, align 4, !tbaa !5
  %cmp227 = icmp slt i32 %165, %166
  br i1 %cmp227, label %cond.true.229, label %cond.false.230

cond.true.229:                                    ; preds = %cond.end.225
  %167 = load i32, i32* %x00, align 4, !tbaa !5
  br label %cond.end.231

cond.false.230:                                   ; preds = %cond.end.225
  %168 = load i32, i32* %x01, align 4, !tbaa !5
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.230, %cond.true.229
  %cond232 = phi i32 [ %167, %cond.true.229 ], [ %168, %cond.false.230 ]
  store i32 %cond232, i32* %xmin, align 4, !tbaa !5
  %169 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #2
  %170 = load i32, i32* %x10, align 4, !tbaa !5
  %171 = load i32, i32* %x11, align 4, !tbaa !5
  %cmp233 = icmp sgt i32 %170, %171
  br i1 %cmp233, label %cond.true.235, label %cond.false.236

cond.true.235:                                    ; preds = %cond.end.231
  %172 = load i32, i32* %x10, align 4, !tbaa !5
  br label %cond.end.237

cond.false.236:                                   ; preds = %cond.end.231
  %173 = load i32, i32* %x11, align 4, !tbaa !5
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.236, %cond.true.235
  %cond238 = phi i32 [ %172, %cond.true.235 ], [ %173, %cond.false.236 ]
  store i32 %cond238, i32* %xmax, align 4, !tbaa !5
  %174 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #2
  %175 = load i32, i32* %xmin, align 4, !tbaa !5
  %shr = ashr i32 %175, 8
  %176 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %176, i32 0, i32 15
  %177 = load i32, i32* %bbox_left, align 4, !tbaa !37
  %sub239 = sub nsw i32 %shr, %177
  store i32 %sub239, i32* %i0, align 4, !tbaa !5
  %178 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #2
  %179 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #2
  %180 = load i32, i32* %xmax, align 4, !tbaa !5
  %add240 = add nsw i32 %180, 255
  %shr241 = ashr i32 %add240, 8
  %181 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left242 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %181, i32 0, i32 15
  %182 = load i32, i32* %bbox_left242, align 4, !tbaa !37
  %sub243 = sub nsw i32 %shr241, %182
  store i32 %sub243, i32* %i1, align 4, !tbaa !5
  %183 = load i32, i32* %i0, align 4, !tbaa !5
  store i32 %183, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.237
  %184 = load i32, i32* %i, align 4, !tbaa !5
  %185 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp244 = icmp slt i32 %184, %185
  br i1 %cmp244, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %186 = bitcast %struct.section_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #2
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %187 to i64
  %188 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.section_s, %struct.section_s* %188, i64 %idxprom
  store %struct.section_s* %arrayidx, %struct.section_s** %s, align 8, !tbaa !1
  %189 = bitcast i32* %x_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #2
  %190 = load i32, i32* %i, align 4, !tbaa !5
  %191 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left246 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %191, i32 0, i32 15
  %192 = load i32, i32* %bbox_left246, align 4, !tbaa !37
  %add247 = add nsw i32 %190, %192
  %shl = shl i32 %add247, 8
  store i32 %shl, i32* %x_pixel, align 4, !tbaa !5
  %193 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #2
  %194 = load i32, i32* %xmin, align 4, !tbaa !5
  %195 = load i32, i32* %x_pixel, align 4, !tbaa !5
  %sub248 = sub nsw i32 %194, %195
  %cmp249 = icmp sgt i32 %sub248, 0
  br i1 %cmp249, label %cond.true.251, label %cond.false.253

cond.true.251:                                    ; preds = %for.body
  %196 = load i32, i32* %xmin, align 4, !tbaa !5
  %197 = load i32, i32* %x_pixel, align 4, !tbaa !5
  %sub252 = sub nsw i32 %196, %197
  br label %cond.end.254

cond.false.253:                                   ; preds = %for.body
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.253, %cond.true.251
  %cond255 = phi i32 [ %sub252, %cond.true.251 ], [ 0, %cond.false.253 ]
  store i32 %cond255, i32* %xl, align 4, !tbaa !5
  %198 = bitcast i32* %xu to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #2
  %199 = load i32, i32* %xmax, align 4, !tbaa !5
  %200 = load i32, i32* %x_pixel, align 4, !tbaa !5
  %sub256 = sub nsw i32 %199, %200
  %conv257 = sext i32 %sub256 to i64
  %cmp258 = icmp slt i64 %conv257, 256
  br i1 %cmp258, label %cond.true.260, label %cond.false.263

cond.true.260:                                    ; preds = %cond.end.254
  %201 = load i32, i32* %xmax, align 4, !tbaa !5
  %202 = load i32, i32* %x_pixel, align 4, !tbaa !5
  %sub261 = sub nsw i32 %201, %202
  %conv262 = sext i32 %sub261 to i64
  br label %cond.end.264

cond.false.263:                                   ; preds = %cond.end.254
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.260
  %cond265 = phi i64 [ %conv262, %cond.true.260 ], [ 256, %cond.false.263 ]
  %conv266 = trunc i64 %cond265 to i32
  store i32 %conv266, i32* %xu, align 4, !tbaa !5
  %203 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.section_s, %struct.section_s* %203, i32 0, i32 2
  %204 = load i16, i16* %x0, align 2, !tbaa !7
  %conv267 = sext i16 %204 to i32
  %205 = load i32, i32* %xl, align 4, !tbaa !5
  %cmp268 = icmp slt i32 %conv267, %205
  br i1 %cmp268, label %cond.true.270, label %cond.false.273

cond.true.270:                                    ; preds = %cond.end.264
  %206 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x0271 = getelementptr inbounds %struct.section_s, %struct.section_s* %206, i32 0, i32 2
  %207 = load i16, i16* %x0271, align 2, !tbaa !7
  %conv272 = sext i16 %207 to i32
  br label %cond.end.274

cond.false.273:                                   ; preds = %cond.end.264
  %208 = load i32, i32* %xl, align 4, !tbaa !5
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.270
  %cond275 = phi i32 [ %conv272, %cond.true.270 ], [ %208, %cond.false.273 ]
  %conv276 = trunc i32 %cond275 to i16
  %209 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x0277 = getelementptr inbounds %struct.section_s, %struct.section_s* %209, i32 0, i32 2
  store i16 %conv276, i16* %x0277, align 2, !tbaa !7
  %210 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.section_s, %struct.section_s* %210, i32 0, i32 3
  %211 = load i16, i16* %x1, align 2, !tbaa !10
  %conv278 = sext i16 %211 to i32
  %212 = load i32, i32* %xu, align 4, !tbaa !5
  %cmp279 = icmp sgt i32 %conv278, %212
  br i1 %cmp279, label %cond.true.281, label %cond.false.284

cond.true.281:                                    ; preds = %cond.end.274
  %213 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x1282 = getelementptr inbounds %struct.section_s, %struct.section_s* %213, i32 0, i32 3
  %214 = load i16, i16* %x1282, align 2, !tbaa !10
  %conv283 = sext i16 %214 to i32
  br label %cond.end.285

cond.false.284:                                   ; preds = %cond.end.274
  %215 = load i32, i32* %xu, align 4, !tbaa !5
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.284, %cond.true.281
  %cond286 = phi i32 [ %conv283, %cond.true.281 ], [ %215, %cond.false.284 ]
  %conv287 = trunc i32 %cond286 to i16
  %216 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %x1288 = getelementptr inbounds %struct.section_s, %struct.section_s* %216, i32 0, i32 3
  store i16 %conv287, i16* %x1288, align 2, !tbaa !10
  %217 = load i32, i32* %x_pixel, align 4, !tbaa !5
  %add289 = add nsw i32 %217, 0
  store i32 %add289, i32* %x_pixel, align 4, !tbaa !5
  %218 = bitcast i32* %xu to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #2
  %219 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #2
  %220 = bitcast i32* %x_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %221 = bitcast %struct.section_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.285
  %222 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %222, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %223 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %224 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %225 = load i32, i32* %i0, align 4, !tbaa !5
  %226 = load i32, i32* %i1, align 4, !tbaa !5
  %call290 = call i32 @store_margin(%struct.line_list_s* %223, %struct.margin_set_s* %224, i32 %225, i32 %226) #4
  store i32 %call290, i32* %code, align 4, !tbaa !5
  %227 = load i32, i32* %code, align 4, !tbaa !5
  %cmp291 = icmp slt i32 %227, 0
  br i1 %cmp291, label %if.then.293, label %if.end

if.then.293:                                      ; preds = %for.end
  %228 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %228, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.293
  %229 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i32* %x11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %x10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i32* %x00 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.309 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.302

if.end.302:                                       ; preds = %cleanup.cont, %cond.end.48
  %238 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %239 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %240 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %241 = load i32, i32* %yy0, align 4, !tbaa !5
  %242 = load i32, i32* %yy1, align 4, !tbaa !5
  %243 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %244 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call303 = call i32 @margin_boundary(%struct.line_list_s* %238, %struct.margin_set_s* %239, %struct.active_line_s* %240, i32 0, i32 0, i32 %241, i32 %242, i32 1, i32 %243, i32 %244) #4
  store i32 %call303, i32* %code, align 4, !tbaa !5
  %245 = load i32, i32* %code, align 4, !tbaa !5
  %cmp304 = icmp slt i32 %245, 0
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.302
  %246 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %246, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

if.end.307:                                       ; preds = %if.end.302
  %247 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %248 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %249 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %250 = load i32, i32* %yy0, align 4, !tbaa !5
  %251 = load i32, i32* %yy1, align 4, !tbaa !5
  %252 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %253 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call308 = call i32 @margin_boundary(%struct.line_list_s* %247, %struct.margin_set_s* %248, %struct.active_line_s* %249, i32 0, i32 0, i32 %250, i32 %251, i32 -1, i32 %252, i32 %253) #4
  store i32 %call308, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

cleanup.309:                                      ; preds = %if.end.307, %if.then.306, %cleanup
  %254 = bitcast i32* %yy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  %255 = bitcast i32* %yy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #2
  %257 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = load i32, i32* %retval
  ret i32 %258
}

declare i32 @fixed_mult_quo(i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @store_margin(%struct.line_list_s* %ll, %struct.margin_set_s* %set, i32 %ii0, i32 %ii1) #1 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %ii0.addr = alloca i32, align 4
  %ii1.addr = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %m0 = alloca %struct.margin_s*, align 8
  %m1 = alloca %struct.margin_s*, align 8
  %cleanup.dest.slot = alloca i32
  %m_last = alloca %struct.margin_s*, align 8
  %mb = alloca %struct.margin_s*, align 8
  %me = alloca %struct.margin_s*, align 8
  %mf = alloca %struct.margin_s*, align 8
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store i32 %ii0, i32* %ii0.addr, align 4, !tbaa !5
  store i32 %ii1, i32* %ii1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %ii0.addr, align 4, !tbaa !5
  store i32 %1, i32* %i0, align 4, !tbaa !5
  %2 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %ii1.addr, align 4, !tbaa !5
  store i32 %3, i32* %i1, align 4, !tbaa !5
  %4 = bitcast %struct.margin_s** %m0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_touched = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %5, i32 0, i32 2
  %6 = load %struct.margin_s*, %struct.margin_s** %margin_touched, align 8, !tbaa !38
  store %struct.margin_s* %6, %struct.margin_s** %m0, align 8, !tbaa !1
  %7 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %fo = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %8, i32 0, i32 19
  %9 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !39
  %pseudo_rasterization = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %9, i32 0, i32 0
  %10 = load i32, i32* %pseudo_rasterization, align 4, !tbaa !40
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %ii0.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %ii1.addr, align 4, !tbaa !5
  %13 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_width = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %13, i32 0, i32 16
  %14 = load i32, i32* %bbox_width, align 4, !tbaa !42
  %cmp1 = icmp sgt i32 %12, %14
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.3:                                         ; preds = %lor.lhs.false
  %15 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_touched4 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %15, i32 0, i32 2
  store %struct.margin_s* null, %struct.margin_s** %margin_touched4, align 8, !tbaa !38
  %16 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.margin_s* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.181

if.then.6:                                        ; preds = %if.end.3
  %17 = bitcast %struct.margin_s** %m_last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  store %struct.margin_s* %18, %struct.margin_s** %m_last, align 8, !tbaa !1
  %19 = bitcast %struct.margin_s** %mb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast %struct.margin_s** %me to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %21, i32 0, i32 1
  %22 = load %struct.margin_s*, %struct.margin_s** %margin_list, align 8, !tbaa !43
  %cmp7 = icmp eq %struct.margin_s* %22, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.6
  %23 = load i32, i32* %i1, align 4, !tbaa !5
  %24 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %ibeg = getelementptr inbounds %struct.margin_s, %struct.margin_s* %24, i32 0, i32 0
  %25 = load i32, i32* %ibeg, align 4, !tbaa !44
  %cmp10 = icmp slt i32 %23, %25
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.11
  %26 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.margin_s, %struct.margin_s* %26, i32 0, i32 2
  %27 = load %struct.margin_s*, %struct.margin_s** %prev, align 8, !tbaa !45
  store %struct.margin_s* %27, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.margin_s* %28, null
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %29 = load i32, i32* %i0, align 4, !tbaa !5
  %30 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %iend = getelementptr inbounds %struct.margin_s, %struct.margin_s* %30, i32 0, i32 1
  %31 = load i32, i32* %iend, align 4, !tbaa !46
  %cmp13 = icmp sle i32 %29, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %32 = phi i1 [ false, %do.cond ], [ %cmp13, %land.rhs ]
  br i1 %32, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %33 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.margin_s* %33, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %34 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list15 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %34, i32 0, i32 1
  %35 = load %struct.margin_s*, %struct.margin_s** %margin_list15, align 8, !tbaa !43
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %36 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.margin_s* [ %35, %cond.true ], [ %36, %cond.false ]
  %next = getelementptr inbounds %struct.margin_s, %struct.margin_s* %cond, i32 0, i32 3
  %37 = load %struct.margin_s*, %struct.margin_s** %next, align 8, !tbaa !19
  store %struct.margin_s* %37, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %38 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.margin_s* %38, null
  br i1 %cmp16, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %while.cond
  %39 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %ibeg18 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %39, i32 0, i32 0
  %40 = load i32, i32* %ibeg18, align 4, !tbaa !44
  %41 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp19 = icmp sle i32 %40, %41
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs.17 ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.20
  %43 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  store %struct.margin_s* %43, %struct.margin_s** %m_last, align 8, !tbaa !1
  %44 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %44, i32 0, i32 3
  %45 = load %struct.margin_s*, %struct.margin_s** %next21, align 8, !tbaa !19
  store %struct.margin_s* %45, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end.20
  br label %if.end.69

if.else:                                          ; preds = %if.end.9
  %46 = load i32, i32* %i0, align 4, !tbaa !5
  %47 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %iend22 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %47, i32 0, i32 1
  %48 = load i32, i32* %iend22, align 4, !tbaa !46
  %cmp23 = icmp sgt i32 %46, %48
  br i1 %cmp23, label %if.then.24, label %if.else.49

if.then.24:                                       ; preds = %if.else
  %49 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  store %struct.margin_s* %49, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %do.body.25

do.body.25:                                       ; preds = %land.end.32, %if.then.24
  %50 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  store %struct.margin_s* %50, %struct.margin_s** %m_last, align 8, !tbaa !1
  %51 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %51, i32 0, i32 3
  %52 = load %struct.margin_s*, %struct.margin_s** %next26, align 8, !tbaa !19
  store %struct.margin_s* %52, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.25
  %53 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp28 = icmp ne %struct.margin_s* %53, null
  br i1 %cmp28, label %land.rhs.29, label %land.end.32

land.rhs.29:                                      ; preds = %do.cond.27
  %54 = load i32, i32* %i1, align 4, !tbaa !5
  %55 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %ibeg30 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %55, i32 0, i32 0
  %56 = load i32, i32* %ibeg30, align 4, !tbaa !44
  %cmp31 = icmp sge i32 %54, %56
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.29, %do.cond.27
  %57 = phi i1 [ false, %do.cond.27 ], [ %cmp31, %land.rhs.29 ]
  br i1 %57, label %do.body.25, label %do.end.33

do.end.33:                                        ; preds = %land.end.32
  %58 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.margin_s* %58, null
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %do.end.33
  %59 = load %struct.margin_s*, %struct.margin_s** %m_last, align 8, !tbaa !1
  br label %cond.end.38

cond.false.36:                                    ; preds = %do.end.33
  %60 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %prev37 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %60, i32 0, i32 2
  %61 = load %struct.margin_s*, %struct.margin_s** %prev37, align 8, !tbaa !45
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.35
  %cond39 = phi %struct.margin_s* [ %59, %cond.true.35 ], [ %61, %cond.false.36 ]
  store %struct.margin_s* %cond39, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.46, %cond.end.38
  %62 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp41 = icmp ne %struct.margin_s* %62, null
  br i1 %cmp41, label %land.rhs.42, label %land.end.45

land.rhs.42:                                      ; preds = %while.cond.40
  %63 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %iend43 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %63, i32 0, i32 1
  %64 = load i32, i32* %iend43, align 4, !tbaa !46
  %65 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp44 = icmp sge i32 %64, %65
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.42, %while.cond.40
  %66 = phi i1 [ false, %while.cond.40 ], [ %cmp44, %land.rhs.42 ]
  br i1 %66, label %while.body.46, label %while.end.48

while.body.46:                                    ; preds = %land.end.45
  %67 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %prev47 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %67, i32 0, i32 2
  %68 = load %struct.margin_s*, %struct.margin_s** %prev47, align 8, !tbaa !45
  store %struct.margin_s* %68, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %while.cond.40

while.end.48:                                     ; preds = %land.end.45
  br label %if.end.68

if.else.49:                                       ; preds = %if.else
  %69 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  store %struct.margin_s* %69, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.56, %if.else.49
  %70 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp51 = icmp ne %struct.margin_s* %70, null
  br i1 %cmp51, label %land.rhs.52, label %land.end.55

land.rhs.52:                                      ; preds = %while.cond.50
  %71 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %ibeg53 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %71, i32 0, i32 0
  %72 = load i32, i32* %ibeg53, align 4, !tbaa !44
  %73 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp54 = icmp sle i32 %72, %73
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.52, %while.cond.50
  %74 = phi i1 [ false, %while.cond.50 ], [ %cmp54, %land.rhs.52 ]
  br i1 %74, label %while.body.56, label %while.end.58

while.body.56:                                    ; preds = %land.end.55
  %75 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  store %struct.margin_s* %75, %struct.margin_s** %m_last, align 8, !tbaa !1
  %76 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next57 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %76, i32 0, i32 3
  %77 = load %struct.margin_s*, %struct.margin_s** %next57, align 8, !tbaa !19
  store %struct.margin_s* %77, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %while.cond.50

while.end.58:                                     ; preds = %land.end.55
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.65, %while.end.58
  %78 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp60 = icmp ne %struct.margin_s* %78, null
  br i1 %cmp60, label %land.rhs.61, label %land.end.64

land.rhs.61:                                      ; preds = %while.cond.59
  %79 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %iend62 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %79, i32 0, i32 1
  %80 = load i32, i32* %iend62, align 4, !tbaa !46
  %81 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp63 = icmp sge i32 %80, %81
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.61, %while.cond.59
  %82 = phi i1 [ false, %while.cond.59 ], [ %cmp63, %land.rhs.61 ]
  br i1 %82, label %while.body.65, label %while.end.67

while.body.65:                                    ; preds = %land.end.64
  %83 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %prev66 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %83, i32 0, i32 2
  %84 = load %struct.margin_s*, %struct.margin_s** %prev66, align 8, !tbaa !45
  store %struct.margin_s* %84, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %while.cond.59

while.end.67:                                     ; preds = %land.end.64
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.67, %while.end.48
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %while.end
  %85 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp70 = icmp eq %struct.margin_s* %85, null
  br i1 %cmp70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %if.end.69
  %86 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list72 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %86, i32 0, i32 1
  %87 = load %struct.margin_s*, %struct.margin_s** %margin_list72, align 8, !tbaa !43
  br label %cond.end.75

cond.false.73:                                    ; preds = %if.end.69
  %88 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %next74 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %88, i32 0, i32 3
  %89 = load %struct.margin_s*, %struct.margin_s** %next74, align 8, !tbaa !19
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.71
  %cond76 = phi %struct.margin_s* [ %87, %cond.true.71 ], [ %89, %cond.false.73 ]
  store %struct.margin_s* %cond76, %struct.margin_s** %mb, align 8, !tbaa !1
  %90 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %cmp77 = icmp ne %struct.margin_s* %90, null
  br i1 %cmp77, label %land.lhs.true, label %if.end.132

land.lhs.true:                                    ; preds = %cond.end.75
  %91 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %92 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp78 = icmp ne %struct.margin_s* %91, %92
  br i1 %cmp78, label %if.then.79, label %if.end.132

if.then.79:                                       ; preds = %land.lhs.true
  %93 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp80 = icmp eq %struct.margin_s* %93, null
  br i1 %cmp80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.then.79
  %94 = load %struct.margin_s*, %struct.margin_s** %m_last, align 8, !tbaa !1
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.then.79
  %95 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %prev83 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %95, i32 0, i32 2
  %96 = load %struct.margin_s*, %struct.margin_s** %prev83, align 8, !tbaa !45
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %cond85 = phi %struct.margin_s* [ %94, %cond.true.81 ], [ %96, %cond.false.82 ]
  store %struct.margin_s* %cond85, %struct.margin_s** %me, align 8, !tbaa !1
  %97 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %cmp86 = icmp ne %struct.margin_s* %97, null
  br i1 %cmp86, label %if.then.87, label %if.end.131

if.then.87:                                       ; preds = %cond.end.84
  %98 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %99 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %cmp88 = icmp ne %struct.margin_s* %98, %99
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.130

land.lhs.true.89:                                 ; preds = %if.then.87
  %100 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %prev90 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %100, i32 0, i32 2
  %101 = load %struct.margin_s*, %struct.margin_s** %prev90, align 8, !tbaa !45
  %cmp91 = icmp ne %struct.margin_s* %101, null
  br i1 %cmp91, label %if.then.92, label %if.end.130

if.then.92:                                       ; preds = %land.lhs.true.89
  %102 = bitcast %struct.margin_s** %mf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #2
  %103 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %prev93 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %103, i32 0, i32 2
  %104 = load %struct.margin_s*, %struct.margin_s** %prev93, align 8, !tbaa !45
  store %struct.margin_s* %104, %struct.margin_s** %mf, align 8, !tbaa !1
  %105 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %prev94 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %105, i32 0, i32 2
  %106 = load %struct.margin_s*, %struct.margin_s** %prev94, align 8, !tbaa !45
  %cmp95 = icmp ne %struct.margin_s* %106, null
  br i1 %cmp95, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.then.92
  %107 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %next97 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %107, i32 0, i32 3
  %108 = load %struct.margin_s*, %struct.margin_s** %next97, align 8, !tbaa !19
  %109 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %prev98 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %109, i32 0, i32 2
  %110 = load %struct.margin_s*, %struct.margin_s** %prev98, align 8, !tbaa !45
  %next99 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %110, i32 0, i32 3
  store %struct.margin_s* %108, %struct.margin_s** %next99, align 8, !tbaa !19
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %if.then.92
  %111 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %next101 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %111, i32 0, i32 3
  %112 = load %struct.margin_s*, %struct.margin_s** %next101, align 8, !tbaa !19
  %cmp102 = icmp ne %struct.margin_s* %112, null
  br i1 %cmp102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %if.end.100
  %113 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %prev104 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %113, i32 0, i32 2
  %114 = load %struct.margin_s*, %struct.margin_s** %prev104, align 8, !tbaa !45
  %115 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %next105 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %115, i32 0, i32 3
  %116 = load %struct.margin_s*, %struct.margin_s** %next105, align 8, !tbaa !19
  %prev106 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %116, i32 0, i32 2
  store %struct.margin_s* %114, %struct.margin_s** %prev106, align 8, !tbaa !45
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %if.end.100
  %117 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list108 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %117, i32 0, i32 1
  %118 = load %struct.margin_s*, %struct.margin_s** %margin_list108, align 8, !tbaa !43
  %119 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %cmp109 = icmp eq %struct.margin_s* %118, %119
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.end.107
  %120 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %next111 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %120, i32 0, i32 3
  %121 = load %struct.margin_s*, %struct.margin_s** %next111, align 8, !tbaa !19
  %122 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list112 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %122, i32 0, i32 1
  store %struct.margin_s* %121, %struct.margin_s** %margin_list112, align 8, !tbaa !43
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.end.107
  %123 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %123, i32 0, i32 12
  %124 = load %struct.margin_s*, %struct.margin_s** %free_margin_list, align 8, !tbaa !13
  %125 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %next114 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %125, i32 0, i32 3
  store %struct.margin_s* %124, %struct.margin_s** %next114, align 8, !tbaa !19
  %126 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %127 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list115 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %127, i32 0, i32 12
  store %struct.margin_s* %126, %struct.margin_s** %free_margin_list115, align 8, !tbaa !13
  %128 = load i32, i32* %i0, align 4, !tbaa !5
  %129 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %ibeg116 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %129, i32 0, i32 0
  %130 = load i32, i32* %ibeg116, align 4, !tbaa !44
  %cmp117 = icmp slt i32 %128, %130
  br i1 %cmp117, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %if.end.113
  %131 = load i32, i32* %i0, align 4, !tbaa !5
  br label %cond.end.121

cond.false.119:                                   ; preds = %if.end.113
  %132 = load %struct.margin_s*, %struct.margin_s** %mb, align 8, !tbaa !1
  %ibeg120 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %132, i32 0, i32 0
  %133 = load i32, i32* %ibeg120, align 4, !tbaa !44
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.118
  %cond122 = phi i32 [ %131, %cond.true.118 ], [ %133, %cond.false.119 ]
  store i32 %cond122, i32* %i0, align 4, !tbaa !5
  %134 = load i32, i32* %i1, align 4, !tbaa !5
  %135 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %iend123 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %135, i32 0, i32 1
  %136 = load i32, i32* %iend123, align 4, !tbaa !46
  %cmp124 = icmp sgt i32 %134, %136
  br i1 %cmp124, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.121
  %137 = load i32, i32* %i1, align 4, !tbaa !5
  br label %cond.end.128

cond.false.126:                                   ; preds = %cond.end.121
  %138 = load %struct.margin_s*, %struct.margin_s** %mf, align 8, !tbaa !1
  %iend127 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %138, i32 0, i32 1
  %139 = load i32, i32* %iend127, align 4, !tbaa !46
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.125
  %cond129 = phi i32 [ %137, %cond.true.125 ], [ %139, %cond.false.126 ]
  store i32 %cond129, i32* %i1, align 4, !tbaa !5
  %140 = bitcast %struct.margin_s** %mf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  br label %if.end.130

if.end.130:                                       ; preds = %cond.end.128, %land.lhs.true.89, %if.then.87
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %cond.end.84
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %land.lhs.true, %cond.end.75
  %141 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp133 = icmp eq %struct.margin_s* %141, null
  br i1 %cmp133, label %cond.true.134, label %cond.false.136

cond.true.134:                                    ; preds = %if.end.132
  %142 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list135 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %142, i32 0, i32 1
  %143 = load %struct.margin_s*, %struct.margin_s** %margin_list135, align 8, !tbaa !43
  br label %cond.end.138

cond.false.136:                                   ; preds = %if.end.132
  %144 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %next137 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %144, i32 0, i32 3
  %145 = load %struct.margin_s*, %struct.margin_s** %next137, align 8, !tbaa !19
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.134
  %cond139 = phi %struct.margin_s* [ %143, %cond.true.134 ], [ %145, %cond.false.136 ]
  store %struct.margin_s* %cond139, %struct.margin_s** %me, align 8, !tbaa !1
  %146 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %cmp140 = icmp eq %struct.margin_s* %146, null
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %cond.end.138
  %147 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  store %struct.margin_s* %147, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %if.end.178

if.else.142:                                      ; preds = %cond.end.138
  %148 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %iend143 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %148, i32 0, i32 1
  %149 = load i32, i32* %iend143, align 4, !tbaa !46
  %150 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp144 = icmp slt i32 %149, %150
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.else.142
  %151 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  store %struct.margin_s* %151, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %if.end.177

if.else.146:                                      ; preds = %if.else.142
  %152 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %ibeg147 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %152, i32 0, i32 0
  %153 = load i32, i32* %ibeg147, align 4, !tbaa !44
  %154 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %153, %154
  br i1 %cmp148, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %if.else.146
  %155 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %prev150 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %155, i32 0, i32 2
  %156 = load %struct.margin_s*, %struct.margin_s** %prev150, align 8, !tbaa !45
  store %struct.margin_s* %156, %struct.margin_s** %m0, align 8, !tbaa !1
  br label %if.end.176

if.else.151:                                      ; preds = %if.else.146
  %157 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %iend152 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %157, i32 0, i32 1
  %158 = load i32, i32* %iend152, align 4, !tbaa !46
  %159 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp153 = icmp sge i32 %158, %159
  br i1 %cmp153, label %land.lhs.true.154, label %if.end.175

land.lhs.true.154:                                ; preds = %if.else.151
  %160 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %ibeg155 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %160, i32 0, i32 0
  %161 = load i32, i32* %ibeg155, align 4, !tbaa !44
  %162 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp156 = icmp sle i32 %161, %162
  br i1 %cmp156, label %if.then.157, label %if.end.175

if.then.157:                                      ; preds = %land.lhs.true.154
  %163 = load i32, i32* %i0, align 4, !tbaa !5
  %164 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %ibeg158 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %164, i32 0, i32 0
  %165 = load i32, i32* %ibeg158, align 4, !tbaa !44
  %cmp159 = icmp slt i32 %163, %165
  br i1 %cmp159, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %if.then.157
  %166 = load i32, i32* %i0, align 4, !tbaa !5
  br label %cond.end.163

cond.false.161:                                   ; preds = %if.then.157
  %167 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %ibeg162 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %167, i32 0, i32 0
  %168 = load i32, i32* %ibeg162, align 4, !tbaa !44
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.160
  %cond164 = phi i32 [ %166, %cond.true.160 ], [ %168, %cond.false.161 ]
  %169 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %ibeg165 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %169, i32 0, i32 0
  store i32 %cond164, i32* %ibeg165, align 4, !tbaa !44
  %170 = load i32, i32* %i1, align 4, !tbaa !5
  %171 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %iend166 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %171, i32 0, i32 1
  %172 = load i32, i32* %iend166, align 4, !tbaa !46
  %cmp167 = icmp sgt i32 %170, %172
  br i1 %cmp167, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.end.163
  %173 = load i32, i32* %i1, align 4, !tbaa !5
  br label %cond.end.171

cond.false.169:                                   ; preds = %cond.end.163
  %174 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %iend170 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %174, i32 0, i32 1
  %175 = load i32, i32* %iend170, align 4, !tbaa !46
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.168
  %cond172 = phi i32 [ %173, %cond.true.168 ], [ %175, %cond.false.169 ]
  %176 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %iend173 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %176, i32 0, i32 1
  store i32 %cond172, i32* %iend173, align 4, !tbaa !46
  %177 = load %struct.margin_s*, %struct.margin_s** %me, align 8, !tbaa !1
  %178 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_touched174 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %178, i32 0, i32 2
  store %struct.margin_s* %177, %struct.margin_s** %margin_touched174, align 8, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.175:                                       ; preds = %land.lhs.true.154, %if.else.151
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.149
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.145
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.141
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.178, %cond.end.171, %if.then.8
  %179 = bitcast %struct.margin_s** %me to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast %struct.margin_s** %mb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast %struct.margin_s** %m_last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.212 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.181

if.end.181:                                       ; preds = %cleanup.cont, %if.end.3
  %182 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %call = call %struct.margin_s* @alloc_margin(%struct.line_list_s* %182) #4
  store %struct.margin_s* %call, %struct.margin_s** %m1, align 8, !tbaa !1
  %183 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp182 = icmp eq %struct.margin_s* %183, null
  br i1 %cmp182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.181
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.184:                                       ; preds = %if.end.181
  %184 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %cmp185 = icmp ne %struct.margin_s* %184, null
  br i1 %cmp185, label %if.then.186, label %if.else.197

if.then.186:                                      ; preds = %if.end.184
  %185 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %next187 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %185, i32 0, i32 3
  %186 = load %struct.margin_s*, %struct.margin_s** %next187, align 8, !tbaa !19
  %187 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next188 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %187, i32 0, i32 3
  store %struct.margin_s* %186, %struct.margin_s** %next188, align 8, !tbaa !19
  %188 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %189 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %prev189 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %189, i32 0, i32 2
  store %struct.margin_s* %188, %struct.margin_s** %prev189, align 8, !tbaa !45
  %190 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %191 = load %struct.margin_s*, %struct.margin_s** %m0, align 8, !tbaa !1
  %next190 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %191, i32 0, i32 3
  store %struct.margin_s* %190, %struct.margin_s** %next190, align 8, !tbaa !19
  %192 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next191 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %192, i32 0, i32 3
  %193 = load %struct.margin_s*, %struct.margin_s** %next191, align 8, !tbaa !19
  %cmp192 = icmp ne %struct.margin_s* %193, null
  br i1 %cmp192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.then.186
  %194 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %195 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next194 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %195, i32 0, i32 3
  %196 = load %struct.margin_s*, %struct.margin_s** %next194, align 8, !tbaa !19
  %prev195 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %196, i32 0, i32 2
  store %struct.margin_s* %194, %struct.margin_s** %prev195, align 8, !tbaa !45
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.then.186
  br label %if.end.208

if.else.197:                                      ; preds = %if.end.184
  %197 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list198 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %197, i32 0, i32 1
  %198 = load %struct.margin_s*, %struct.margin_s** %margin_list198, align 8, !tbaa !43
  %199 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next199 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %199, i32 0, i32 3
  store %struct.margin_s* %198, %struct.margin_s** %next199, align 8, !tbaa !19
  %200 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %prev200 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %200, i32 0, i32 2
  store %struct.margin_s* null, %struct.margin_s** %prev200, align 8, !tbaa !45
  %201 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list201 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %201, i32 0, i32 1
  %202 = load %struct.margin_s*, %struct.margin_s** %margin_list201, align 8, !tbaa !43
  %cmp202 = icmp ne %struct.margin_s* %202, null
  br i1 %cmp202, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %if.else.197
  %203 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %204 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list204 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %204, i32 0, i32 1
  %205 = load %struct.margin_s*, %struct.margin_s** %margin_list204, align 8, !tbaa !43
  %prev205 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %205, i32 0, i32 2
  store %struct.margin_s* %203, %struct.margin_s** %prev205, align 8, !tbaa !45
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.203, %if.else.197
  %206 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %207 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_list207 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %207, i32 0, i32 1
  store %struct.margin_s* %206, %struct.margin_s** %margin_list207, align 8, !tbaa !43
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.206, %if.end.196
  %208 = load i32, i32* %i0, align 4, !tbaa !5
  %209 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %ibeg209 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %209, i32 0, i32 0
  store i32 %208, i32* %ibeg209, align 4, !tbaa !44
  %210 = load i32, i32* %i1, align 4, !tbaa !5
  %211 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %iend210 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %211, i32 0, i32 1
  store i32 %210, i32* %iend210, align 4, !tbaa !46
  %212 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %213 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %margin_touched211 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %213, i32 0, i32 2
  store %struct.margin_s* %212, %struct.margin_s** %margin_touched211, align 8, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

cleanup.212:                                      ; preds = %if.end.208, %if.then.183, %cleanup, %if.then.2, %if.then
  %214 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #2
  %215 = bitcast %struct.margin_s** %m0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #2
  %216 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #2
  %217 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #2
  %218 = load i32, i32* %retval
  ret i32 %218
}

; Function Attrs: nounwind uwtable
define internal i32 @margin_boundary(%struct.line_list_s* %ll, %struct.margin_set_s* %set, %struct.active_line_s* %alp, i32 %xx0, i32 %xx1, i32 %yy0, i32 %yy1, i32 %dir, i32 %y0, i32 %y1) #1 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %xx0.addr = alloca i32, align 4
  %xx1.addr = alloca i32, align 4
  %yy0.addr = alloca i32, align 4
  %yy1.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %sect = alloca %struct.section_s*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %xp0 = alloca i32, align 4
  %xp = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.section_s*, align 8
  %y95 = alloca i32, align 4
  %dy = alloca i32, align 4
  %ud = alloca i32, align 4
  %b = alloca i16*, align 8
  %h = alloca i16, align 2
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %xx0, i32* %xx0.addr, align 4, !tbaa !5
  store i32 %xx1, i32* %xx1.addr, align 4, !tbaa !5
  store i32 %yy0, i32* %yy0.addr, align 4, !tbaa !5
  store i32 %yy1, i32* %yy1.addr, align 4, !tbaa !5
  store i32 %dir, i32* %dir.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %sect1 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %1, i32 0, i32 3
  %2 = load %struct.section_s*, %struct.section_s** %sect1, align 8, !tbaa !25
  store %struct.section_s* %2, %struct.section_s** %sect, align 8, !tbaa !1
  %3 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %xp0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %xp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %12 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.active_line_s* %13, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %xx0.addr, align 4, !tbaa !5
  store i32 %14, i32* %x0, align 4, !tbaa !5
  %15 = load i32, i32* %xx1.addr, align 4, !tbaa !5
  store i32 %15, i32* %x1, align 4, !tbaa !5
  br label %if.end.72

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %16, %17
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %18, i32 0, i32 5
  %19 = load i32, i32* %x_current, align 4, !tbaa !29
  br label %cond.end.28

cond.false:                                       ; preds = %if.else
  %20 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %21 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !28
  %cmp5 = icmp eq i32 %20, %22
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %23 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end7 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end7, i32 0, i32 0
  %24 = load i32, i32* %x, align 4, !tbaa !30
  br label %cond.end.26

cond.false.8:                                     ; preds = %cond.false
  %25 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %26 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %26, i32 0, i32 3
  %27 = load i32, i32* %y_fast_max, align 4, !tbaa !31
  %cmp9 = icmp sle i32 %25, %27
  br i1 %cmp9, label %cond.true.10, label %cond.false.15

cond.true.10:                                     ; preds = %cond.false.8
  %28 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %29 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %29, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %30 = load i32, i32* %y11, align 4, !tbaa !26
  %sub = sub nsw i32 %28, %30
  %31 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %31, i32 0, i32 2
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff, i32 0, i32 0
  %32 = load i32, i32* %x12, align 4, !tbaa !32
  %mul = mul nsw i32 %sub, %32
  %33 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %num_adjust = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %33, i32 0, i32 4
  %34 = load i32, i32* %num_adjust, align 4, !tbaa !33
  %add = add nsw i32 %mul, %34
  %35 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff13 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %35, i32 0, i32 2
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff13, i32 0, i32 1
  %36 = load i32, i32* %y14, align 4, !tbaa !34
  %div = sdiv i32 %add, %36
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false.8
  %37 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff16 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %37, i32 0, i32 2
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff16, i32 0, i32 0
  %38 = load i32, i32* %x17, align 4, !tbaa !32
  %39 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  %40 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start18 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %40, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start18, i32 0, i32 1
  %41 = load i32, i32* %y19, align 4, !tbaa !26
  %sub20 = sub nsw i32 %39, %41
  %42 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff21 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %42, i32 0, i32 2
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff21, i32 0, i32 1
  %43 = load i32, i32* %y22, align 4, !tbaa !34
  %call = call i32 @fixed_mult_quo(i32 %38, i32 %sub20, i32 %43) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.10
  %cond = phi i32 [ %div, %cond.true.10 ], [ %call, %cond.false.15 ]
  %44 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start23 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %44, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start23, i32 0, i32 0
  %45 = load i32, i32* %x24, align 4, !tbaa !35
  %add25 = add nsw i32 %cond, %45
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true.6
  %cond27 = phi i32 [ %24, %cond.true.6 ], [ %add25, %cond.end ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true
  %cond29 = phi i32 [ %19, %cond.true ], [ %cond27, %cond.end.26 ]
  store i32 %cond29, i32* %x0, align 4, !tbaa !5
  %46 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %47 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %46, %47
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.28
  %48 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %48, i32 0, i32 6
  %49 = load i32, i32* %x_next, align 4, !tbaa !36
  br label %cond.end.70

cond.false.32:                                    ; preds = %cond.end.28
  %50 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %51 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end33 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %51, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end33, i32 0, i32 1
  %52 = load i32, i32* %y34, align 4, !tbaa !28
  %cmp35 = icmp eq i32 %50, %52
  br i1 %cmp35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.32
  %53 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end37 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %53, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end37, i32 0, i32 0
  %54 = load i32, i32* %x38, align 4, !tbaa !30
  br label %cond.end.68

cond.false.39:                                    ; preds = %cond.false.32
  %55 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %56 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %y_fast_max40 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %56, i32 0, i32 3
  %57 = load i32, i32* %y_fast_max40, align 4, !tbaa !31
  %cmp41 = icmp sle i32 %55, %57
  br i1 %cmp41, label %cond.true.42, label %cond.false.54

cond.true.42:                                     ; preds = %cond.false.39
  %58 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %59 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start43 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %59, i32 0, i32 0
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start43, i32 0, i32 1
  %60 = load i32, i32* %y44, align 4, !tbaa !26
  %sub45 = sub nsw i32 %58, %60
  %61 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff46 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %61, i32 0, i32 2
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff46, i32 0, i32 0
  %62 = load i32, i32* %x47, align 4, !tbaa !32
  %mul48 = mul nsw i32 %sub45, %62
  %63 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %num_adjust49 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %63, i32 0, i32 4
  %64 = load i32, i32* %num_adjust49, align 4, !tbaa !33
  %add50 = add nsw i32 %mul48, %64
  %65 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff51 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %65, i32 0, i32 2
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff51, i32 0, i32 1
  %66 = load i32, i32* %y52, align 4, !tbaa !34
  %div53 = sdiv i32 %add50, %66
  br label %cond.end.63

cond.false.54:                                    ; preds = %cond.false.39
  %67 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff55 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %67, i32 0, i32 2
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff55, i32 0, i32 0
  %68 = load i32, i32* %x56, align 4, !tbaa !32
  %69 = load i32, i32* %yy1.addr, align 4, !tbaa !5
  %70 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start57 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %70, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start57, i32 0, i32 1
  %71 = load i32, i32* %y58, align 4, !tbaa !26
  %sub59 = sub nsw i32 %69, %71
  %72 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff60 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %72, i32 0, i32 2
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff60, i32 0, i32 1
  %73 = load i32, i32* %y61, align 4, !tbaa !34
  %call62 = call i32 @fixed_mult_quo(i32 %68, i32 %sub59, i32 %73) #4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.54, %cond.true.42
  %cond64 = phi i32 [ %div53, %cond.true.42 ], [ %call62, %cond.false.54 ]
  %74 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start65 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %74, i32 0, i32 0
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start65, i32 0, i32 0
  %75 = load i32, i32* %x66, align 4, !tbaa !35
  %add67 = add nsw i32 %cond64, %75
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.63, %cond.true.36
  %cond69 = phi i32 [ %54, %cond.true.36 ], [ %add67, %cond.end.63 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.31
  %cond71 = phi i32 [ %49, %cond.true.31 ], [ %cond69, %cond.end.68 ]
  store i32 %cond71, i32* %x1, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.70, %if.then.3
  %76 = load i32, i32* %x0, align 4, !tbaa !5
  %77 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %76, %77
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %if.end.72
  %78 = load i32, i32* %x0, align 4, !tbaa !5
  br label %cond.end.76

cond.false.75:                                    ; preds = %if.end.72
  %79 = load i32, i32* %x1, align 4, !tbaa !5
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i32 [ %78, %cond.true.74 ], [ %79, %cond.false.75 ]
  store i32 %cond77, i32* %xmin, align 4, !tbaa !5
  %80 = load i32, i32* %x0, align 4, !tbaa !5
  %81 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %80, %81
  br i1 %cmp78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.end.76
  %82 = load i32, i32* %x0, align 4, !tbaa !5
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.end.76
  %83 = load i32, i32* %x1, align 4, !tbaa !5
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.79
  %cond82 = phi i32 [ %82, %cond.true.79 ], [ %83, %cond.false.80 ]
  store i32 %cond82, i32* %xmax, align 4, !tbaa !5
  %84 = load i32, i32* %xmin, align 4, !tbaa !5
  %conv = sext i32 %84 to i64
  %and = and i64 %conv, -256
  %add83 = add nsw i64 %and, 128
  %conv84 = trunc i64 %add83 to i32
  store i32 %conv84, i32* %xp0, align 4, !tbaa !5
  %85 = load i32, i32* %xp0, align 4, !tbaa !5
  %shr = ashr i32 %85, 8
  %86 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %86, i32 0, i32 15
  %87 = load i32, i32* %bbox_left, align 4, !tbaa !37
  %sub85 = sub nsw i32 %shr, %87
  store i32 %sub85, i32* %i0, align 4, !tbaa !5
  %88 = load i32, i32* %xp0, align 4, !tbaa !5
  %89 = load i32, i32* %xmin, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %88, %89
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %cond.end.81
  %90 = load i32, i32* %i0, align 4, !tbaa !5
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i0, align 4, !tbaa !5
  %91 = load i32, i32* %xp0, align 4, !tbaa !5
  %conv89 = sext i32 %91 to i64
  %add90 = add nsw i64 %conv89, 256
  %conv91 = trunc i64 %add90 to i32
  store i32 %conv91, i32* %xp0, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %cond.end.81
  %92 = load i32, i32* %i0, align 4, !tbaa !5
  store i32 %92, i32* %i, align 4, !tbaa !5
  %93 = load i32, i32* %xp0, align 4, !tbaa !5
  store i32 %93, i32* %xp, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.92
  %94 = load i32, i32* %xp, align 4, !tbaa !5
  %95 = load i32, i32* %xmax, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %94, %95
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %96 = bitcast %struct.section_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #2
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %97 to i64
  %98 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.section_s, %struct.section_s* %98, i64 %idxprom
  store %struct.section_s* %arrayidx, %struct.section_s** %s, align 8, !tbaa !1
  %99 = bitcast i32* %y95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #2
  %100 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %cmp96 = icmp eq %struct.active_line_s* %100, null
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %for.body
  %101 = load i32, i32* %yy0.addr, align 4, !tbaa !5
  br label %cond.end.101

cond.false.99:                                    ; preds = %for.body
  %102 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %103 = load i32, i32* %xp, align 4, !tbaa !5
  %call100 = call i32 @Y_AT_X(%struct.active_line_s* %102, i32 %103) #4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.98
  %cond102 = phi i32 [ %101, %cond.true.98 ], [ %call100, %cond.false.99 ]
  store i32 %cond102, i32* %y95, align 4, !tbaa !5
  %104 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = load i32, i32* %y95, align 4, !tbaa !5
  %106 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %y103 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %106, i32 0, i32 0
  %107 = load i32, i32* %y103, align 4, !tbaa !27
  %sub104 = sub nsw i32 %105, %107
  store i32 %sub104, i32* %dy, align 4, !tbaa !5
  %108 = bitcast i32* %ud to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #2
  %109 = bitcast i16** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #2
  %110 = bitcast i16* %h to i8*
  call void @llvm.lifetime.start(i64 2, i8* %110) #2
  %111 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %111, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %cond.end.101
  store i32 0, i32* %dy, align 4, !tbaa !5
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %cond.end.101
  %112 = load i32, i32* %dy, align 4, !tbaa !5
  %conv109 = sext i32 %112 to i64
  %cmp110 = icmp sge i64 %conv109, 256
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.108
  store i32 256, i32* %dy, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.108
  br label %do.body

do.body:                                          ; preds = %if.end.113
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %113 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %cmp114 = icmp eq %struct.active_line_s* %113, null
  br i1 %cmp114, label %cond.true.116, label %cond.false.119

cond.true.116:                                    ; preds = %do.end
  %114 = load i32, i32* %dir.addr, align 4, !tbaa !5
  %cmp117 = icmp sgt i32 %114, 0
  %conv118 = zext i1 %cmp117 to i32
  br label %cond.end.128

cond.false.119:                                   ; preds = %do.end
  %115 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start120 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %115, i32 0, i32 0
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start120, i32 0, i32 0
  %116 = load i32, i32* %x121, align 4, !tbaa !35
  %117 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end122 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %117, i32 0, i32 1
  %x123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end122, i32 0, i32 0
  %118 = load i32, i32* %x123, align 4, !tbaa !30
  %sub124 = sub nsw i32 %116, %118
  %119 = load i32, i32* %dir.addr, align 4, !tbaa !5
  %mul125 = mul nsw i32 %sub124, %119
  %cmp126 = icmp sgt i32 %mul125, 0
  %conv127 = zext i1 %cmp126 to i32
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.119, %cond.true.116
  %cond129 = phi i32 [ %conv118, %cond.true.116 ], [ %conv127, %cond.false.119 ]
  store i32 %cond129, i32* %ud, align 4, !tbaa !5
  %120 = load i32, i32* %ud, align 4, !tbaa !5
  %tobool = icmp ne i32 %120, 0
  br i1 %tobool, label %cond.true.130, label %cond.false.132

cond.true.130:                                    ; preds = %cond.end.128
  %121 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %y0131 = getelementptr inbounds %struct.section_s, %struct.section_s* %121, i32 0, i32 0
  br label %cond.end.134

cond.false.132:                                   ; preds = %cond.end.128
  %122 = load %struct.section_s*, %struct.section_s** %s, align 8, !tbaa !1
  %y1133 = getelementptr inbounds %struct.section_s, %struct.section_s* %122, i32 0, i32 1
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.true.130
  %cond135 = phi i16* [ %y0131, %cond.true.130 ], [ %y1133, %cond.false.132 ]
  store i16* %cond135, i16** %b, align 8, !tbaa !1
  %123 = load i32, i32* %dy, align 4, !tbaa !5
  %conv136 = trunc i32 %123 to i16
  store i16 %conv136, i16* %h, align 2, !tbaa !47
  %124 = load i16*, i16** %b, align 8, !tbaa !1
  %125 = load i16, i16* %124, align 2, !tbaa !47
  %conv137 = sext i16 %125 to i32
  %cmp138 = icmp eq i32 %conv137, -1
  br i1 %cmp138, label %if.then.154, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.134
  %126 = load i16*, i16** %b, align 8, !tbaa !1
  %127 = load i16, i16* %126, align 2, !tbaa !47
  %conv140 = sext i16 %127 to i32
  %cmp141 = icmp ne i32 %conv140, -2
  br i1 %cmp141, label %land.lhs.true, label %if.end.155

land.lhs.true:                                    ; preds = %lor.lhs.false
  %128 = load i32, i32* %ud, align 4, !tbaa !5
  %tobool143 = icmp ne i32 %128, 0
  br i1 %tobool143, label %cond.true.144, label %cond.false.149

cond.true.144:                                    ; preds = %land.lhs.true
  %129 = load i16*, i16** %b, align 8, !tbaa !1
  %130 = load i16, i16* %129, align 2, !tbaa !47
  %conv145 = sext i16 %130 to i32
  %131 = load i16, i16* %h, align 2, !tbaa !47
  %conv146 = sext i16 %131 to i32
  %cmp147 = icmp sgt i32 %conv145, %conv146
  br i1 %cmp147, label %if.then.154, label %if.end.155

cond.false.149:                                   ; preds = %land.lhs.true
  %132 = load i16*, i16** %b, align 8, !tbaa !1
  %133 = load i16, i16* %132, align 2, !tbaa !47
  %conv150 = sext i16 %133 to i32
  %134 = load i16, i16* %h, align 2, !tbaa !47
  %conv151 = sext i16 %134 to i32
  %cmp152 = icmp slt i32 %conv150, %conv151
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %cond.false.149, %cond.true.144, %cond.end.134
  %135 = load i16, i16* %h, align 2, !tbaa !47
  %136 = load i16*, i16** %b, align 8, !tbaa !1
  store i16 %135, i16* %136, align 2, !tbaa !47
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %cond.false.149, %cond.true.144, %lor.lhs.false
  %137 = bitcast i16* %h to i8*
  call void @llvm.lifetime.end(i64 2, i8* %137) #2
  %138 = bitcast i16** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i32* %ud to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %y95 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast %struct.section_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.155
  %143 = load i32, i32* %xp, align 4, !tbaa !5
  %conv156 = sext i32 %143 to i64
  %add157 = add nsw i64 %conv156, 256
  %conv158 = trunc i64 %add157 to i32
  store i32 %conv158, i32* %xp, align 4, !tbaa !5
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %inc159 = add nsw i32 %144, 1
  store i32 %inc159, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %145 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %145, 0
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %for.end
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %147 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_width = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %147, i32 0, i32 16
  %148 = load i32, i32* %bbox_width, align 4, !tbaa !42
  %cmp163 = icmp sgt i32 %146, %148
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %lor.lhs.false.162, %for.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.166:                                       ; preds = %lor.lhs.false.162
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %150 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp167 = icmp sgt i32 %149, %150
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.end.166
  %151 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %152 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %153 = load i32, i32* %i0, align 4, !tbaa !5
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %call170 = call i32 @store_margin(%struct.line_list_s* %151, %struct.margin_set_s* %152, i32 %153, i32 %154) #4
  store i32 %call170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.171:                                       ; preds = %if.end.166
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.171, %if.then.169, %if.then.165, %if.then
  %155 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %xp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %xp0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %xmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %xmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define i32 @margin_interior(%struct.line_list_s* %ll, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %y0, i32 %y1) #1 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %yy0 = alloca i32, align 4
  %yy1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %yy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %yy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set0 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %3, i32 0, i32 10
  %y = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set0, i32 0, i32 0
  %4 = load i32, i32* %y, align 4, !tbaa !48
  store i32 %4, i32* %yy0, align 4, !tbaa !5
  %5 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %6 = load i32, i32* %yy0, align 4, !tbaa !5
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %yy0, align 4, !tbaa !5
  %8 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %10 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set02 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %10, i32 0, i32 10
  %11 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %12 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %13 = load i32, i32* %yy0, align 4, !tbaa !5
  %14 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call = call i32 @mark_margin_interior(%struct.line_list_s* %9, %struct.margin_set_s* %margin_set02, %struct.active_line_s* %11, %struct.active_line_s* %12, i32 %13, i32 %14, i32 %15) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %land.lhs.true, %entry
  %18 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %18, i32 0, i32 11
  %y6 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set1, i32 0, i32 0
  %19 = load i32, i32* %y6, align 4, !tbaa !49
  %conv = sext i32 %19 to i64
  %add = add nsw i64 %conv, 256
  %conv7 = trunc i64 %add to i32
  store i32 %conv7, i32* %yy1, align 4, !tbaa !5
  %20 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %21 = load i32, i32* %yy1, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %20, %21
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.20

land.lhs.true.10:                                 ; preds = %if.end.5
  %22 = load i32, i32* %yy1, align 4, !tbaa !5
  %23 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %22, %23
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %land.lhs.true.10
  %24 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %25 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set114 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %25, i32 0, i32 11
  %26 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %27 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %28 = load i32, i32* %yy1, align 4, !tbaa !5
  %29 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %30 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call15 = call i32 @mark_margin_interior(%struct.line_list_s* %24, %struct.margin_set_s* %margin_set114, %struct.active_line_s* %26, %struct.active_line_s* %27, i32 %28, i32 %29, i32 %30) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %31, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.13
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true.10, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.4
  %33 = bitcast i32* %yy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %yy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mark_margin_interior(%struct.line_list_s* %ll, %struct.margin_set_s* %set, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %y, i32 %y0, i32 %y1) #3 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %y.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %sect = alloca %struct.section_s*, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %ii0 = alloca i32, align 4
  %ii1 = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %sect1 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %1, i32 0, i32 3
  %2 = load %struct.section_s*, %struct.section_s** %sect1, align 8, !tbaa !25
  store %struct.section_s* %2, %struct.section_s** %sect, align 8, !tbaa !1
  %3 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %5 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %6, i32 0, i32 5
  %7 = load i32, i32* %x_current, align 4, !tbaa !29
  br label %cond.end.31

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %8, %9
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  %10 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %10, i32 0, i32 6
  %11 = load i32, i32* %x_next, align 4, !tbaa !36
  br label %cond.end.29

cond.false.4:                                     ; preds = %cond.false
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %13 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %13, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %14 = load i32, i32* %y5, align 4, !tbaa !28
  %cmp6 = icmp eq i32 %12, %14
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.false.4
  %15 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end8 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %15, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end8, i32 0, i32 0
  %16 = load i32, i32* %x, align 4, !tbaa !30
  br label %cond.end.27

cond.false.9:                                     ; preds = %cond.false.4
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %18, i32 0, i32 3
  %19 = load i32, i32* %y_fast_max, align 4, !tbaa !31
  %cmp10 = icmp sle i32 %17, %19
  br i1 %cmp10, label %cond.true.11, label %cond.false.16

cond.true.11:                                     ; preds = %cond.false.9
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %22 = load i32, i32* %y12, align 4, !tbaa !26
  %sub = sub nsw i32 %20, %22
  %23 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %23, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff, i32 0, i32 0
  %24 = load i32, i32* %x13, align 4, !tbaa !32
  %mul = mul nsw i32 %sub, %24
  %25 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %num_adjust = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %25, i32 0, i32 4
  %26 = load i32, i32* %num_adjust, align 4, !tbaa !33
  %add = add nsw i32 %mul, %26
  %27 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff14 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %27, i32 0, i32 2
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff14, i32 0, i32 1
  %28 = load i32, i32* %y15, align 4, !tbaa !34
  %div = sdiv i32 %add, %28
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.9
  %29 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff17 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %29, i32 0, i32 2
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff17, i32 0, i32 0
  %30 = load i32, i32* %x18, align 4, !tbaa !32
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %32 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start19 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %32, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start19, i32 0, i32 1
  %33 = load i32, i32* %y20, align 4, !tbaa !26
  %sub21 = sub nsw i32 %31, %33
  %34 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff22 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %34, i32 0, i32 2
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff22, i32 0, i32 1
  %35 = load i32, i32* %y23, align 4, !tbaa !34
  %call = call i32 @fixed_mult_quo(i32 %30, i32 %sub21, i32 %35) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.11
  %cond = phi i32 [ %div, %cond.true.11 ], [ %call, %cond.false.16 ]
  %36 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start24 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %36, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start24, i32 0, i32 0
  %37 = load i32, i32* %x25, align 4, !tbaa !35
  %add26 = add nsw i32 %cond, %37
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true.7
  %cond28 = phi i32 [ %16, %cond.true.7 ], [ %add26, %cond.end ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.3
  %cond30 = phi i32 [ %11, %cond.true.3 ], [ %cond28, %cond.end.27 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true
  %cond32 = phi i32 [ %7, %cond.true ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %x0, align 4, !tbaa !5
  %38 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %39, %40
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.31
  %41 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_current35 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %41, i32 0, i32 5
  %42 = load i32, i32* %x_current35, align 4, !tbaa !29
  br label %cond.end.80

cond.false.36:                                    ; preds = %cond.end.31
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %43, %44
  br i1 %cmp37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.false.36
  %45 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %x_next39 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %45, i32 0, i32 6
  %46 = load i32, i32* %x_next39, align 4, !tbaa !36
  br label %cond.end.78

cond.false.40:                                    ; preds = %cond.false.36
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %48 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end41 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %48, i32 0, i32 1
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end41, i32 0, i32 1
  %49 = load i32, i32* %y42, align 4, !tbaa !28
  %cmp43 = icmp eq i32 %47, %49
  br i1 %cmp43, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.40
  %50 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %end45 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %50, i32 0, i32 1
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end45, i32 0, i32 0
  %51 = load i32, i32* %x46, align 4, !tbaa !30
  br label %cond.end.76

cond.false.47:                                    ; preds = %cond.false.40
  %52 = load i32, i32* %y.addr, align 4, !tbaa !5
  %53 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %y_fast_max48 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %53, i32 0, i32 3
  %54 = load i32, i32* %y_fast_max48, align 4, !tbaa !31
  %cmp49 = icmp sle i32 %52, %54
  br i1 %cmp49, label %cond.true.50, label %cond.false.62

cond.true.50:                                     ; preds = %cond.false.47
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %56 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start51 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %56, i32 0, i32 0
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start51, i32 0, i32 1
  %57 = load i32, i32* %y52, align 4, !tbaa !26
  %sub53 = sub nsw i32 %55, %57
  %58 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff54 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %58, i32 0, i32 2
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff54, i32 0, i32 0
  %59 = load i32, i32* %x55, align 4, !tbaa !32
  %mul56 = mul nsw i32 %sub53, %59
  %60 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %num_adjust57 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %60, i32 0, i32 4
  %61 = load i32, i32* %num_adjust57, align 4, !tbaa !33
  %add58 = add nsw i32 %mul56, %61
  %62 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff59 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %62, i32 0, i32 2
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff59, i32 0, i32 1
  %63 = load i32, i32* %y60, align 4, !tbaa !34
  %div61 = sdiv i32 %add58, %63
  br label %cond.end.71

cond.false.62:                                    ; preds = %cond.false.47
  %64 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff63 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %64, i32 0, i32 2
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff63, i32 0, i32 0
  %65 = load i32, i32* %x64, align 4, !tbaa !32
  %66 = load i32, i32* %y.addr, align 4, !tbaa !5
  %67 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start65 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %67, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start65, i32 0, i32 1
  %68 = load i32, i32* %y66, align 4, !tbaa !26
  %sub67 = sub nsw i32 %66, %68
  %69 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff68 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %69, i32 0, i32 2
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff68, i32 0, i32 1
  %70 = load i32, i32* %y69, align 4, !tbaa !34
  %call70 = call i32 @fixed_mult_quo(i32 %65, i32 %sub67, i32 %70) #4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.62, %cond.true.50
  %cond72 = phi i32 [ %div61, %cond.true.50 ], [ %call70, %cond.false.62 ]
  %71 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start73 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %71, i32 0, i32 0
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start73, i32 0, i32 0
  %72 = load i32, i32* %x74, align 4, !tbaa !35
  %add75 = add nsw i32 %cond72, %72
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.71, %cond.true.44
  %cond77 = phi i32 [ %51, %cond.true.44 ], [ %add75, %cond.end.71 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.38
  %cond79 = phi i32 [ %46, %cond.true.38 ], [ %cond77, %cond.end.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.34
  %cond81 = phi i32 [ %42, %cond.true.34 ], [ %cond79, %cond.end.78 ]
  store i32 %cond81, i32* %x1, align 4, !tbaa !5
  %73 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load i32, i32* %x0, align 4, !tbaa !5
  %shr = ashr i32 %74, 8
  store i32 %shr, i32* %i0, align 4, !tbaa !5
  %75 = bitcast i32* %ii0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = bitcast i32* %ii1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #2
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #2
  %79 = load i32, i32* %i0, align 4, !tbaa !5
  %shl = shl i32 %79, 8
  %conv = sext i32 %shl to i64
  %add82 = add nsw i64 %conv, 128
  %80 = load i32, i32* %x0, align 4, !tbaa !5
  %conv83 = sext i32 %80 to i64
  %cmp84 = icmp slt i64 %add82, %conv83
  br i1 %cmp84, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.80
  %81 = load i32, i32* %i0, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i0, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.80
  %82 = load i32, i32* %i0, align 4, !tbaa !5
  %83 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %83, i32 0, i32 15
  %84 = load i32, i32* %bbox_left, align 4, !tbaa !37
  %sub86 = sub nsw i32 %82, %84
  store i32 %sub86, i32* %ii0, align 4, !tbaa !5
  %85 = load i32, i32* %x1, align 4, !tbaa !5
  %conv87 = sext i32 %85 to i64
  %add88 = add nsw i64 %conv87, 127
  %shr89 = ashr i64 %add88, 8
  %conv90 = trunc i64 %shr89 to i32
  %86 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left91 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %86, i32 0, i32 15
  %87 = load i32, i32* %bbox_left91, align 4, !tbaa !37
  %sub92 = sub nsw i32 %conv90, %87
  store i32 %sub92, i32* %ii1, align 4, !tbaa !5
  %88 = load i32, i32* %ii0, align 4, !tbaa !5
  %89 = load i32, i32* %ii1, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %88, %89
  br i1 %cmp93, label %if.then.95, label %if.end.114

if.then.95:                                       ; preds = %if.end
  %90 = load i32, i32* %ii0, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %90, 0
  br i1 %cmp96, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.95
  %91 = load i32, i32* %ii1, align 4, !tbaa !5
  %92 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_width = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %92, i32 0, i32 16
  %93 = load i32, i32* %bbox_width, align 4, !tbaa !42
  %cmp98 = icmp sgt i32 %91, %93
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false, %if.then.95
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %lor.lhs.false
  %94 = load i32, i32* %ii0, align 4, !tbaa !5
  store i32 %94, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.101
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %96 = load i32, i32* %ii1, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %95, %96
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %97 to i64
  %98 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.section_s, %struct.section_s* %98, i64 %idxprom
  %y1104 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx, i32 0, i32 1
  store i16 -2, i16* %y1104, align 2, !tbaa !11
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %99 to i64
  %100 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.section_s, %struct.section_s* %100, i64 %idxprom105
  %y0107 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx106, i32 0, i32 0
  store i16 -2, i16* %y0107, align 2, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %inc108 = add nsw i32 %101, 1
  store i32 %inc108, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %103 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %104 = load i32, i32* %ii0, align 4, !tbaa !5
  %105 = load i32, i32* %ii1, align 4, !tbaa !5
  %call109 = call i32 @store_margin(%struct.line_list_s* %102, %struct.margin_set_s* %103, i32 %104, i32 %105) #4
  store i32 %call109, i32* %code, align 4, !tbaa !5
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %106, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.end
  %107 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %for.end
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.114, %if.then.112, %if.then.100
  %108 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %ii1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %ii0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define i32 @process_h_lists(%struct.line_list_s* %ll, %struct.active_line_s* %plp, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %y0, i32 %y1) #1 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %plp.addr = alloca %struct.active_line_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code10 = alloca i32, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.active_line_s* %plp, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %1 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %h_list0 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %2, i32 0, i32 8
  %3 = load %struct.active_line_s*, %struct.active_line_s** %h_list0, align 8, !tbaa !50
  %cmp1 = icmp ne %struct.active_line_s* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %6 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %h_list03 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %6, i32 0, i32 8
  %7 = load %struct.active_line_s*, %struct.active_line_s** %h_list03, align 8, !tbaa !50
  %8 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %9 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %10 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %11 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call = call i32 @process_h_list(%struct.line_list_s* %5, %struct.active_line_s* %7, %struct.active_line_s* %8, %struct.active_line_s* %9, %struct.active_line_s* %10, i32 1, i32 %11, i32 %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %if.end
  %16 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %h_list1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %16, i32 0, i32 9
  %17 = load %struct.active_line_s*, %struct.active_line_s** %h_list1, align 8, !tbaa !51
  %cmp8 = icmp ne %struct.active_line_s* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end.7
  %18 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %20 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %h_list111 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %20, i32 0, i32 9
  %21 = load %struct.active_line_s*, %struct.active_line_s** %h_list111, align 8, !tbaa !51
  %22 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %23 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %24 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %25 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call12 = call i32 @process_h_list(%struct.line_list_s* %19, %struct.active_line_s* %21, %struct.active_line_s* %22, %struct.active_line_s* %23, %struct.active_line_s* %24, i32 -1, i32 %25, i32 %26) #4
  store i32 %call12, i32* %code10, align 4, !tbaa !5
  %27 = load i32, i32* %code10, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %27, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.9
  %28 = load i32, i32* %code10, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.15:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %if.then.14
  %29 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %cleanup.dest.17 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.17, label %unreachable [
    i32 0, label %cleanup.cont.18
    i32 1, label %return
  ]

cleanup.cont.18:                                  ; preds = %cleanup.16
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont.18, %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %cleanup.16, %cleanup, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30

unreachable:                                      ; preds = %cleanup.16, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @process_h_list(%struct.line_list_s* %ll, %struct.active_line_s* %hlp, %struct.active_line_s* %plp, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %side, i32 %y0, i32 %y1) #3 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %hlp.addr = alloca %struct.active_line_s*, align 8
  %plp.addr = alloca %struct.active_line_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %side.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code26 = alloca i32, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.active_line_s* %hlp, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %plp, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %side, i32* %side.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.active_line_s*, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %1, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %2 = load i32, i32* %y2, align 4, !tbaa !26
  store i32 %2, i32* %y, align 4, !tbaa !5
  %3 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set0 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %3, i32 0, i32 10
  %y3 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set0, i32 0, i32 0
  %4 = load i32, i32* %y3, align 4, !tbaa !48
  %5 = load i32, i32* %y, align 4, !tbaa !5
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %y, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %7 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set04 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %7, i32 0, i32 10
  %y5 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set04, i32 0, i32 0
  %8 = load i32, i32* %y5, align 4, !tbaa !48
  %conv6 = sext i32 %8 to i64
  %add = add nsw i64 %conv6, 256
  %cmp7 = icmp sle i64 %conv, %add
  br i1 %cmp7, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set09 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 10
  %12 = load %struct.active_line_s*, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  %13 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %14 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %15 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %16 = load i32, i32* %side.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %18 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call = call i32 @process_h_side(%struct.line_list_s* %10, %struct.margin_set_s* %margin_set09, %struct.active_line_s* %12, %struct.active_line_s* %13, %struct.active_line_s* %14, %struct.active_line_s* %15, i32 %16, i32 %17, i32 %18) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.12
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.end.13:                                        ; preds = %cleanup.cont, %land.lhs.true, %entry
  %22 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %22, i32 0, i32 11
  %y14 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set1, i32 0, i32 0
  %23 = load i32, i32* %y14, align 4, !tbaa !49
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %cmp15 = icmp sle i32 %23, %24
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.36

land.lhs.true.17:                                 ; preds = %if.end.13
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %conv18 = sext i32 %25 to i64
  %26 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set119 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %26, i32 0, i32 11
  %y20 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set119, i32 0, i32 0
  %27 = load i32, i32* %y20, align 4, !tbaa !49
  %conv21 = sext i32 %27 to i64
  %add22 = add nsw i64 %conv21, 256
  %cmp23 = icmp sle i64 %conv18, %add22
  br i1 %cmp23, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %land.lhs.true.17
  %28 = bitcast i32* %code26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %30 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set127 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %30, i32 0, i32 11
  %31 = load %struct.active_line_s*, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  %32 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %33 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %34 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %35 = load i32, i32* %side.addr, align 4, !tbaa !5
  %36 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %37 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call28 = call i32 @process_h_side(%struct.line_list_s* %29, %struct.margin_set_s* %margin_set127, %struct.active_line_s* %31, %struct.active_line_s* %32, %struct.active_line_s* %33, %struct.active_line_s* %34, i32 %35, i32 %36, i32 %37) #4
  store i32 %call28, i32* %code26, align 4, !tbaa !5
  %38 = load i32, i32* %code26, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %38, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.25
  %39 = load i32, i32* %code26, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.32:                                        ; preds = %if.then.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.32, %if.then.31
  %40 = bitcast i32* %code26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.34, label %cleanup.37 [
    i32 0, label %cleanup.cont.35
  ]

cleanup.cont.35:                                  ; preds = %cleanup.33
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont.35, %land.lhs.true.17, %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %cleanup.33, %cleanup
  %41 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @close_margins(%struct.gx_device_s* %dev, %struct.line_list_s* %ll, %struct.margin_set_s* %ms) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ll.addr = alloca %struct.line_list_s*, align 8
  %ms.addr = alloca %struct.margin_set_s*, align 8
  %m = alloca %struct.margin_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %ms, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %0 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %margin_list = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %1, i32 0, i32 1
  %2 = load %struct.margin_s*, %struct.margin_s** %margin_list, align 8, !tbaa !43
  store %struct.margin_s* %2, %struct.margin_s** %m, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %cmp = icmp ne %struct.margin_s* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %7 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %8 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %ibeg = getelementptr inbounds %struct.margin_s, %struct.margin_s* %8, i32 0, i32 0
  %9 = load i32, i32* %ibeg, align 4, !tbaa !44
  %10 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %iend = getelementptr inbounds %struct.margin_s, %struct.margin_s* %10, i32 0, i32 1
  %11 = load i32, i32* %iend, align 4, !tbaa !46
  %call = call i32 @fill_margin(%struct.gx_device_s* %5, %struct.line_list_s* %6, %struct.margin_set_s* %7, i32 %9, i32 %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.margin_s, %struct.margin_s* %14, i32 0, i32 3
  %15 = load %struct.margin_s*, %struct.margin_s** %next, align 8, !tbaa !19
  store %struct.margin_s* %15, %struct.margin_s** %m, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %17 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  call void @release_margin_list(%struct.line_list_s* %16, %struct.margin_set_s* %17) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_margin(%struct.gx_device_s* %dev, %struct.line_list_s* %ll, %struct.margin_set_s* %ms, i32 %i0, i32 %i1) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ll.addr = alloca %struct.line_list_s*, align 8
  %ms.addr = alloca %struct.margin_set_s*, align 8
  %i0.addr = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %sect = alloca %struct.section_s*, align 8
  %iy = alloca i32, align 4
  %i = alloca i32, align 4
  %ir = alloca i32, align 4
  %h = alloca i32, align 4
  %code = alloca i32, align 4
  %fo = alloca %struct.fill_options_s*, align 8
  %FILL_DIRECT = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %hh = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %ms, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !5
  store i32 %i1, i32* %i1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %sect1 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %1, i32 0, i32 3
  %2 = load %struct.section_s*, %struct.section_s** %sect1, align 8, !tbaa !25
  store %struct.section_s* %2, %struct.section_s** %sect, align 8, !tbaa !1
  %3 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %4, i32 0, i32 0
  %5 = load i32, i32* %y, align 4, !tbaa !27
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %conv, 127
  %shr = ashr i64 %add, 8
  %conv2 = trunc i64 %shr to i32
  store i32 %conv2, i32* %iy, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %ir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 -2, i32* %h, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast %struct.fill_options_s** %fo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %fo3 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 19
  %12 = load %struct.fill_options_s*, %struct.fill_options_s** %fo3, align 8, !tbaa !39
  store %struct.fill_options_s* %12, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %13 = bitcast i32* %FILL_DIRECT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %fill_direct = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %14, i32 0, i32 5
  %15 = load i32, i32* %fill_direct, align 4, !tbaa !52
  store i32 %15, i32* %FILL_DIRECT, align 4, !tbaa !5
  %16 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %18 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_width = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %18, i32 0, i32 16
  %19 = load i32, i32* %bbox_width, align 4, !tbaa !42
  %cmp5 = icmp sgt i32 %17, %19
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end:                                           ; preds = %lor.lhs.false
  %20 = load i32, i32* %i0.addr, align 4, !tbaa !5
  store i32 %20, i32* %ir, align 4, !tbaa !5
  %21 = load i32, i32* %i0.addr, align 4, !tbaa !5
  store i32 %21, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %22, %23
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.section_s, %struct.section_s* %26, i64 %idxprom
  %y09 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx, i32 0, i32 0
  %27 = load i16, i16* %y09, align 2, !tbaa !12
  %conv10 = sext i16 %27 to i32
  store i32 %conv10, i32* %y0, align 4, !tbaa !5
  %28 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.section_s, %struct.section_s* %30, i64 %idxprom11
  %y113 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx12, i32 0, i32 1
  %31 = load i16, i16* %y113, align 2, !tbaa !11
  %conv14 = sext i16 %31 to i32
  store i32 %conv14, i32* %y1, align 4, !tbaa !5
  %32 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32, i32* %y0, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %33, -1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  store i32 0, i32* %y0, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.body
  %34 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %34, -1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 255, i32* %y1, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.section_s, %struct.section_s* %36, i64 %idxprom23
  %call = call i32 @compute_padding(%struct.section_s* %arrayidx24) #4
  store i32 %call, i32* %hh, align 4, !tbaa !5
  %37 = load i32, i32* %hh, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %37, 0
  br i1 %cmp25, label %if.then.27, label %if.end.66

if.then.27:                                       ; preds = %if.end.22
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.section_s, %struct.section_s* %39, i64 %idxprom28
  %x0 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx29, i32 0, i32 2
  %40 = load i16, i16* %x0, align 2, !tbaa !7
  %conv30 = sext i16 %40 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.27
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.section_s, %struct.section_s* %42, i64 %idxprom33
  %x1 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx34, i32 0, i32 3
  %43 = load i16, i16* %x1, align 2, !tbaa !10
  %conv35 = sext i16 %43 to i64
  %cmp36 = icmp eq i64 %conv35, 256
  br i1 %cmp36, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %add39 = add nsw i32 %44, 1
  %45 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %add39, %45
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %land.lhs.true.38
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %add43 = add nsw i32 %46, 1
  %47 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %add43, %47
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %add46 = add nsw i32 %48, 1
  %idxprom47 = sext i32 %add46 to i64
  %49 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.section_s, %struct.section_s* %49, i64 %idxprom47
  %call49 = call i32 @compute_padding(%struct.section_s* %arrayidx48) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call49, %cond.true ], [ -2, %cond.false ]
  store i32 %cond, i32* %hh, align 4, !tbaa !5
  br label %if.end.65

if.else:                                          ; preds = %land.lhs.true.38, %land.lhs.true, %if.then.27
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %50 to i64
  %51 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.section_s, %struct.section_s* %51, i64 %idxprom50
  %x052 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx51, i32 0, i32 2
  %52 = load i16, i16* %x052, align 2, !tbaa !7
  %conv53 = sext i16 %52 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.64

land.lhs.true.56:                                 ; preds = %if.else
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.section_s, %struct.section_s* %54, i64 %idxprom57
  %x159 = getelementptr inbounds %struct.section_s, %struct.section_s* %arrayidx58, i32 0, i32 3
  %55 = load i16, i16* %x159, align 2, !tbaa !10
  %conv60 = sext i16 %55 to i64
  %cmp61 = icmp slt i64 %conv60, 256
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.56
  %56 = load i32, i32* %h, align 4, !tbaa !5
  store i32 %56, i32* %hh, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.56, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %cond.end
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.22
  %57 = load i32, i32* %h, align 4, !tbaa !5
  %58 = load i32, i32* %hh, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %57, %58
  br i1 %cmp67, label %if.then.69, label %if.end.94

if.then.69:                                       ; preds = %if.end.66
  %59 = load i32, i32* %h, align 4, !tbaa !5
  %cmp70 = icmp sge i32 %59, 0
  br i1 %cmp70, label %if.then.72, label %if.end.93

if.then.72:                                       ; preds = %if.then.69
  br label %do.body

do.body:                                          ; preds = %if.then.72
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %60 = load i32, i32* %FILL_DIRECT, align 4, !tbaa !5
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %cond.true.73, label %cond.false.78

cond.true.73:                                     ; preds = %do.end
  %61 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %fill_rect = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %61, i32 0, i32 16
  %62 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !53
  %63 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %dev74 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %63, i32 0, i32 12
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev74, align 8, !tbaa !54
  %65 = load i32, i32* %ir, align 4, !tbaa !5
  %66 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %66, i32 0, i32 15
  %67 = load i32, i32* %bbox_left, align 4, !tbaa !37
  %add75 = add nsw i32 %65, %67
  %68 = load i32, i32* %iy, align 4, !tbaa !5
  %69 = load i32, i32* %h, align 4, !tbaa !5
  %add76 = add nsw i32 %68, %69
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %71 = load i32, i32* %ir, align 4, !tbaa !5
  %sub = sub nsw i32 %70, %71
  %72 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %72, i32 0, i32 3
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8, !tbaa !55
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %73, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %74 = load i64, i64* %pure, align 8, !tbaa !56
  %call77 = call i32 %62(%struct.gx_device_s* %64, i32 %add75, i32 %add76, i32 %sub, i32 1, i64 %74) #4
  br label %cond.end.87

cond.false.78:                                    ; preds = %do.end
  %75 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc79 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %75, i32 0, i32 3
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc79, align 8, !tbaa !55
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 0
  %77 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !58
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %77, i32 0, i32 5
  %78 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !65
  %79 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc80 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %79, i32 0, i32 3
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc80, align 8, !tbaa !55
  %81 = load i32, i32* %ir, align 4, !tbaa !5
  %82 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left81 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %82, i32 0, i32 15
  %83 = load i32, i32* %bbox_left81, align 4, !tbaa !37
  %add82 = add nsw i32 %81, %83
  %84 = load i32, i32* %iy, align 4, !tbaa !5
  %85 = load i32, i32* %h, align 4, !tbaa !5
  %add83 = add nsw i32 %84, %85
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %87 = load i32, i32* %ir, align 4, !tbaa !5
  %sub84 = sub nsw i32 %86, %87
  %88 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %dev85 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %88, i32 0, i32 12
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev85, align 8, !tbaa !54
  %90 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %90, i32 0, i32 4
  %91 = load i32, i32* %lop, align 4, !tbaa !67
  %call86 = call i32 %78(%struct.gx_device_color_s* %80, i32 %add82, i32 %add83, i32 %sub84, i32 1, %struct.gx_device_s* %89, i32 %91, %struct.gx_rop_source_s* null) #4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.78, %cond.true.73
  %cond88 = phi i32 [ %call77, %cond.true.73 ], [ %call86, %cond.false.78 ]
  store i32 %cond88, i32* %code, align 4, !tbaa !5
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %92, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %cond.end.87
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %cond.end.87
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.69
  %94 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %94, i32* %ir, align 4, !tbaa !5
  %95 = load i32, i32* %hh, align 4, !tbaa !5
  store i32 %95, i32* %h, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %if.then.91
  %96 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.134 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load i32, i32* %h, align 4, !tbaa !5
  %cmp97 = icmp sge i32 %100, 0
  br i1 %cmp97, label %if.then.99, label %if.end.133

if.then.99:                                       ; preds = %for.end
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %101 = load i32, i32* %FILL_DIRECT, align 4, !tbaa !5
  %tobool103 = icmp ne i32 %101, 0
  br i1 %tobool103, label %cond.true.104, label %cond.false.115

cond.true.104:                                    ; preds = %do.end.102
  %102 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %fill_rect105 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %102, i32 0, i32 16
  %103 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect105, align 8, !tbaa !53
  %104 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %dev106 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %104, i32 0, i32 12
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev106, align 8, !tbaa !54
  %106 = load i32, i32* %ir, align 4, !tbaa !5
  %107 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left107 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %107, i32 0, i32 15
  %108 = load i32, i32* %bbox_left107, align 4, !tbaa !37
  %add108 = add nsw i32 %106, %108
  %109 = load i32, i32* %iy, align 4, !tbaa !5
  %110 = load i32, i32* %h, align 4, !tbaa !5
  %add109 = add nsw i32 %109, %110
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %112 = load i32, i32* %ir, align 4, !tbaa !5
  %sub110 = sub nsw i32 %111, %112
  %113 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc111 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %113, i32 0, i32 3
  %114 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc111, align 8, !tbaa !55
  %colors112 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %114, i32 0, i32 1
  %pure113 = bitcast %union._c* %colors112 to i64*
  %115 = load i64, i64* %pure113, align 8, !tbaa !56
  %call114 = call i32 %103(%struct.gx_device_s* %105, i32 %add108, i32 %add109, i32 %sub110, i32 1, i64 %115) #4
  br label %cond.end.127

cond.false.115:                                   ; preds = %do.end.102
  %116 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc116 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %116, i32 0, i32 3
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc116, align 8, !tbaa !55
  %type117 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 0
  %118 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type117, align 8, !tbaa !58
  %fill_rectangle118 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %118, i32 0, i32 5
  %119 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle118, align 8, !tbaa !65
  %120 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %pdevc119 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %120, i32 0, i32 3
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc119, align 8, !tbaa !55
  %122 = load i32, i32* %ir, align 4, !tbaa !5
  %123 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left120 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %123, i32 0, i32 15
  %124 = load i32, i32* %bbox_left120, align 4, !tbaa !37
  %add121 = add nsw i32 %122, %124
  %125 = load i32, i32* %iy, align 4, !tbaa !5
  %126 = load i32, i32* %h, align 4, !tbaa !5
  %add122 = add nsw i32 %125, %126
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %128 = load i32, i32* %ir, align 4, !tbaa !5
  %sub123 = sub nsw i32 %127, %128
  %129 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %dev124 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %129, i32 0, i32 12
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %dev124, align 8, !tbaa !54
  %131 = load %struct.fill_options_s*, %struct.fill_options_s** %fo, align 8, !tbaa !1
  %lop125 = getelementptr inbounds %struct.fill_options_s, %struct.fill_options_s* %131, i32 0, i32 4
  %132 = load i32, i32* %lop125, align 4, !tbaa !67
  %call126 = call i32 %119(%struct.gx_device_color_s* %121, i32 %add121, i32 %add122, i32 %sub123, i32 1, %struct.gx_device_s* %130, i32 %132, %struct.gx_rop_source_s* null) #4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.115, %cond.true.104
  %cond128 = phi i32 [ %call114, %cond.true.104 ], [ %call126, %cond.false.115 ]
  store i32 %cond128, i32* %code, align 4, !tbaa !5
  %133 = load i32, i32* %code, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %133, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %cond.end.127
  %134 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.132:                                       ; preds = %cond.end.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %for.end
  %135 = load %struct.section_s*, %struct.section_s** %sect, align 8, !tbaa !1
  %136 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %137 = load i32, i32* %i1.addr, align 4, !tbaa !5
  call void @init_section(%struct.section_s* %135, i32 %136, i32 %137) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %if.then.131, %cleanup, %if.then
  %138 = bitcast i32* %FILL_DIRECT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast %struct.fill_options_s** %fo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %ir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast %struct.section_s** %sect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define internal void @release_margin_list(%struct.line_list_s* %ll, %struct.margin_set_s* %ms) #1 {
entry:
  %ll.addr = alloca %struct.line_list_s*, align 8
  %ms.addr = alloca %struct.margin_set_s*, align 8
  %m1 = alloca %struct.margin_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %ms, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %0 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %margin_list = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %1, i32 0, i32 1
  %2 = load %struct.margin_s*, %struct.margin_s** %margin_list, align 8, !tbaa !43
  store %struct.margin_s* %2, %struct.margin_s** %m1, align 8, !tbaa !1
  %3 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %cmp = icmp eq %struct.margin_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.margin_s, %struct.margin_s* %4, i32 0, i32 3
  %5 = load %struct.margin_s*, %struct.margin_s** %next, align 8, !tbaa !19
  %cmp1 = icmp ne %struct.margin_s* %5, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %6, i32 0, i32 3
  %7 = load %struct.margin_s*, %struct.margin_s** %next2, align 8, !tbaa !19
  store %struct.margin_s* %7, %struct.margin_s** %m1, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %8, i32 0, i32 12
  %9 = load %struct.margin_s*, %struct.margin_s** %free_margin_list, align 8, !tbaa !13
  %10 = load %struct.margin_s*, %struct.margin_s** %m1, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.margin_s, %struct.margin_s* %10, i32 0, i32 3
  store %struct.margin_s* %9, %struct.margin_s** %next3, align 8, !tbaa !19
  %11 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %margin_list4 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %11, i32 0, i32 1
  %12 = load %struct.margin_s*, %struct.margin_s** %margin_list4, align 8, !tbaa !43
  %13 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list5 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %13, i32 0, i32 12
  store %struct.margin_s* %12, %struct.margin_s** %free_margin_list5, align 8, !tbaa !13
  %14 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %margin_touched = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %14, i32 0, i32 2
  store %struct.margin_s* null, %struct.margin_s** %margin_touched, align 8, !tbaa !38
  %15 = load %struct.margin_set_s*, %struct.margin_set_s** %ms.addr, align 8, !tbaa !1
  %margin_list6 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %15, i32 0, i32 1
  store %struct.margin_s* null, %struct.margin_s** %margin_list6, align 8, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %16 = bitcast %struct.margin_s** %m1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
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
define i32 @start_margin_set(%struct.gx_device_s* %dev, %struct.line_list_s* %ll, i32 %y0) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ll.addr = alloca %struct.line_list_s*, align 8
  %y0.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %ym = alloca i32, align 4
  %s = alloca %struct.margin_set_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %sub = sub nsw i64 %and, 128
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, i32* %ym, align 4, !tbaa !5
  %3 = bitcast %struct.margin_set_s* %s to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set0 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %4, i32 0, i32 10
  %y = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set0, i32 0, i32 0
  %5 = load i32, i32* %y, align 4, !tbaa !48
  %6 = load i32, i32* %ym, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %7, i32 0, i32 11
  %8 = bitcast %struct.margin_set_s* %s to i8*
  %9 = bitcast %struct.margin_set_s* %margin_set1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false), !tbaa.struct !68
  %10 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set13 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %10, i32 0, i32 11
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set04 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 10
  %12 = bitcast %struct.margin_set_s* %margin_set13 to i8*
  %13 = bitcast %struct.margin_set_s* %margin_set04 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false), !tbaa.struct !68
  %14 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set05 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %14, i32 0, i32 10
  %15 = bitcast %struct.margin_set_s* %margin_set05 to i8*
  %16 = bitcast %struct.margin_set_s* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false), !tbaa.struct !68
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %19 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set06 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %19, i32 0, i32 10
  %call = call i32 @close_margins(%struct.gx_device_s* %17, %struct.line_list_s* %18, %struct.margin_set_s* %margin_set06) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %ym, align 4, !tbaa !5
  %21 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %margin_set07 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %21, i32 0, i32 10
  %y8 = getelementptr inbounds %struct.margin_set_s, %struct.margin_set_s* %margin_set07, i32 0, i32 0
  store i32 %20, i32* %y8, align 4, !tbaa !48
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast %struct.margin_set_s* %s to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #2
  %24 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal %struct.margin_s* @alloc_margin(%struct.line_list_s* %ll) #1 {
entry:
  %ll.addr = alloca %struct.line_list_s*, align 8
  %m = alloca %struct.margin_s*, align 8
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %0 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %1, i32 0, i32 12
  %2 = load %struct.margin_s*, %struct.margin_s** %free_margin_list, align 8, !tbaa !13
  %cmp = icmp ne %struct.margin_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list1 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %3, i32 0, i32 12
  %4 = load %struct.margin_s*, %struct.margin_s** %free_margin_list1, align 8, !tbaa !13
  store %struct.margin_s* %4, %struct.margin_s** %m, align 8, !tbaa !1
  %5 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list2 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %5, i32 0, i32 12
  %6 = load %struct.margin_s*, %struct.margin_s** %free_margin_list2, align 8, !tbaa !13
  %next = getelementptr inbounds %struct.margin_s, %struct.margin_s* %6, i32 0, i32 3
  %7 = load %struct.margin_s*, %struct.margin_s** %next, align 8, !tbaa !19
  %8 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %free_margin_list3 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %8, i32 0, i32 12
  store %struct.margin_s* %7, %struct.margin_s** %free_margin_list3, align 8, !tbaa !13
  br label %if.end.10

if.else:                                          ; preds = %entry
  %9 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margin_alloc_count = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %9, i32 0, i32 14
  %10 = load i32, i32* %local_margin_alloc_count, align 4, !tbaa !69
  %cmp4 = icmp slt i32 %10, 20
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %11 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margins = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %11, i32 0, i32 22
  %arraydecay = getelementptr inbounds [20 x %struct.margin_s], [20 x %struct.margin_s]* %local_margins, i32 0, i32 0
  %12 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margin_alloc_count6 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %12, i32 0, i32 14
  %13 = load i32, i32* %local_margin_alloc_count6, align 4, !tbaa !69
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.margin_s, %struct.margin_s* %arraydecay, i64 %idx.ext
  store %struct.margin_s* %add.ptr, %struct.margin_s** %m, align 8, !tbaa !1
  %14 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %local_margin_alloc_count7 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %14, i32 0, i32 14
  %15 = load i32, i32* %local_margin_alloc_count7, align 4, !tbaa !69
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %local_margin_alloc_count7, align 4, !tbaa !69
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %16 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %18 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !70
  %19 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !21
  %call = call i8* %18(%struct.gs_memory_s* %20, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_margin to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  %21 = bitcast i8* %call to %struct.margin_s*
  store %struct.margin_s* %21, %struct.margin_s** %m, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %22 = load %struct.margin_s*, %struct.margin_s** %m, align 8, !tbaa !1
  %23 = bitcast %struct.margin_s** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret %struct.margin_s* %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Y_AT_X(%struct.active_line_s* %alp, i32 %xp) #3 {
entry:
  %alp.addr = alloca %struct.active_line_s*, align 8
  %xp.addr = alloca i32, align 4
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %xp, i32* %xp.addr, align 4, !tbaa !5
  %0 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %0, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %1 = load i32, i32* %y, align 4, !tbaa !26
  %2 = load i32, i32* %xp.addr, align 4, !tbaa !5
  %3 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %start1 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %3, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start1, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !35
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %5, i32 0, i32 2
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff, i32 0, i32 1
  %6 = load i32, i32* %y2, align 4, !tbaa !34
  %7 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %diff3 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %7, i32 0, i32 2
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff3, i32 0, i32 0
  %8 = load i32, i32* %x4, align 4, !tbaa !32
  %call = call i32 @fixed_mult_quo(i32 %sub, i32 %6, i32 %8) #4
  %add = add nsw i32 %1, %call
  ret i32 %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @process_h_side(%struct.line_list_s* %ll, %struct.margin_set_s* %set, %struct.active_line_s* %hlp, %struct.active_line_s* %plp, %struct.active_line_s* %flp, %struct.active_line_s* %alp, i32 %side, i32 %y0, i32 %y1) #3 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %hlp.addr = alloca %struct.active_line_s*, align 8
  %plp.addr = alloca %struct.active_line_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %alp.addr = alloca %struct.active_line_s*, align 8
  %side.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code14 = alloca i32, align 4
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store %struct.active_line_s* %hlp, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %plp, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %alp, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  store i32 %side, i32* %side.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.active_line_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.active_line_s* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.active_line_s* %2, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %3 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.active_line_s* %3, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.9

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %4 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.active_line_s* %4, null
  br i1 %cmp6, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true.5, %lor.lhs.false, %entry
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %7 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %8 = load %struct.active_line_s*, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  %9 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %10 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %11 = load i32, i32* %side.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %11
  %12 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call = call i32 @process_h_sect(%struct.line_list_s* %6, %struct.margin_set_s* %7, %struct.active_line_s* %8, %struct.active_line_s* %9, %struct.active_line_s* %10, i32 %sub, i32 %12, i32 %13) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %land.lhs.true.5, %land.lhs.true, %lor.lhs.false.2
  %17 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %cmp10 = icmp ne %struct.active_line_s* %17, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.22

land.lhs.true.11:                                 ; preds = %if.end.9
  %18 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.active_line_s* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %land.lhs.true.11
  %19 = bitcast i32* %code14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %21 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %22 = load %struct.active_line_s*, %struct.active_line_s** %hlp.addr, align 8, !tbaa !1
  %23 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %24 = load %struct.active_line_s*, %struct.active_line_s** %alp.addr, align 8, !tbaa !1
  %25 = load i32, i32* %side.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %27 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %call15 = call i32 @process_h_sect(%struct.line_list_s* %20, %struct.margin_set_s* %21, %struct.active_line_s* %22, %struct.active_line_s* %23, %struct.active_line_s* %24, i32 %25, i32 %26, i32 %27) #4
  store i32 %call15, i32* %code14, align 4, !tbaa !5
  %28 = load i32, i32* %code14, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %28, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  %29 = load i32, i32* %code14, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

if.end.18:                                        ; preds = %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %if.end.18, %if.then.17
  %30 = bitcast i32* %code14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %cleanup.dest.20 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.20, label %unreachable [
    i32 0, label %cleanup.cont.21
    i32 1, label %return
  ]

cleanup.cont.21:                                  ; preds = %cleanup.19
  br label %if.end.22

if.end.22:                                        ; preds = %cleanup.cont.21, %land.lhs.true.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %cleanup.19, %cleanup
  %31 = load i32, i32* %retval
  ret i32 %31

unreachable:                                      ; preds = %cleanup.19, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @process_h_sect(%struct.line_list_s* %ll, %struct.margin_set_s* %set, %struct.active_line_s* %hlp0, %struct.active_line_s* %plp, %struct.active_line_s* %flp, i32 %side, i32 %y0, i32 %y1) #3 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.line_list_s*, align 8
  %set.addr = alloca %struct.margin_set_s*, align 8
  %hlp0.addr = alloca %struct.active_line_s*, align 8
  %plp.addr = alloca %struct.active_line_s*, align 8
  %flp.addr = alloca %struct.active_line_s*, align 8
  %side.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %hlp = alloca %struct.active_line_s*, align 8
  %y = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %code = alloca i32, align 4
  %xx0 = alloca i32, align 4
  %xx1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.line_list_s* %ll, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  store %struct.margin_set_s* %set, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  store %struct.active_line_s* %hlp0, %struct.active_line_s** %hlp0.addr, align 8, !tbaa !1
  store %struct.active_line_s* %plp, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.active_line_s* %flp, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  store i32 %side, i32* %side.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  %0 = bitcast %struct.active_line_s** %hlp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.active_line_s*, %struct.active_line_s** %hlp0.addr, align 8, !tbaa !1
  store %struct.active_line_s* %1, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %3, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %4 = load i32, i32* %y2, align 4, !tbaa !26
  store i32 %4, i32* %y, align 4, !tbaa !5
  %5 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.active_line_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false.37

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %y, align 4, !tbaa !5
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true
  %9 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %x_current = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %9, i32 0, i32 5
  %10 = load i32, i32* %x_current, align 4, !tbaa !29
  br label %cond.end.35

cond.false:                                       ; preds = %cond.true
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  %13 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %x_next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %13, i32 0, i32 6
  %14 = load i32, i32* %x_next, align 4, !tbaa !36
  br label %cond.end.33

cond.false.7:                                     ; preds = %cond.false
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %16 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %16, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %17 = load i32, i32* %y8, align 4, !tbaa !28
  %cmp9 = icmp eq i32 %15, %17
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.false.7
  %18 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %end11 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %18, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end11, i32 0, i32 0
  %19 = load i32, i32* %x, align 4, !tbaa !30
  br label %cond.end.31

cond.false.12:                                    ; preds = %cond.false.7
  %20 = load i32, i32* %y, align 4, !tbaa !5
  %21 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %y_fast_max = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %21, i32 0, i32 3
  %22 = load i32, i32* %y_fast_max, align 4, !tbaa !31
  %cmp13 = icmp sle i32 %20, %22
  br i1 %cmp13, label %cond.true.14, label %cond.false.20

cond.true.14:                                     ; preds = %cond.false.12
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %24 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %24, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %25 = load i32, i32* %y16, align 4, !tbaa !26
  %sub = sub nsw i32 %23, %25
  %26 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %diff = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %26, i32 0, i32 2
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff, i32 0, i32 0
  %27 = load i32, i32* %x17, align 4, !tbaa !32
  %mul = mul nsw i32 %sub, %27
  %28 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %num_adjust = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %28, i32 0, i32 4
  %29 = load i32, i32* %num_adjust, align 4, !tbaa !33
  %add = add nsw i32 %mul, %29
  %30 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %diff18 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %30, i32 0, i32 2
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff18, i32 0, i32 1
  %31 = load i32, i32* %y19, align 4, !tbaa !34
  %div = sdiv i32 %add, %31
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false.12
  %32 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %diff21 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %32, i32 0, i32 2
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff21, i32 0, i32 0
  %33 = load i32, i32* %x22, align 4, !tbaa !32
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %35 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %start23 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %35, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start23, i32 0, i32 1
  %36 = load i32, i32* %y24, align 4, !tbaa !26
  %sub25 = sub nsw i32 %34, %36
  %37 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %diff26 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %37, i32 0, i32 2
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff26, i32 0, i32 1
  %38 = load i32, i32* %y27, align 4, !tbaa !34
  %call = call i32 @fixed_mult_quo(i32 %33, i32 %sub25, i32 %38) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.14
  %cond = phi i32 [ %div, %cond.true.14 ], [ %call, %cond.false.20 ]
  %39 = load %struct.active_line_s*, %struct.active_line_s** %plp.addr, align 8, !tbaa !1
  %start28 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %39, i32 0, i32 0
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start28, i32 0, i32 0
  %40 = load i32, i32* %x29, align 4, !tbaa !35
  %add30 = add nsw i32 %cond, %40
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true.10
  %cond32 = phi i32 [ %19, %cond.true.10 ], [ %add30, %cond.end ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.6
  %cond34 = phi i32 [ %14, %cond.true.6 ], [ %cond32, %cond.end.31 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true.4
  %cond36 = phi i32 [ %10, %cond.true.4 ], [ %cond34, %cond.end.33 ]
  br label %cond.end.38

cond.false.37:                                    ; preds = %entry
  %41 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %41, i32 0, i32 15
  %42 = load i32, i32* %bbox_left, align 4, !tbaa !37
  %shl = shl i32 %42, 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.end.35
  %cond39 = phi i32 [ %cond36, %cond.end.35 ], [ %shl, %cond.false.37 ]
  store i32 %cond39, i32* %x0, align 4, !tbaa !5
  %43 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %cmp40 = icmp ne %struct.active_line_s* %44, null
  br i1 %cmp40, label %cond.true.41, label %cond.false.91

cond.true.41:                                     ; preds = %cond.end.38
  %45 = load i32, i32* %y, align 4, !tbaa !5
  %46 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %45, %46
  br i1 %cmp42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.true.41
  %47 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_current44 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %47, i32 0, i32 5
  %48 = load i32, i32* %x_current44, align 4, !tbaa !29
  br label %cond.end.89

cond.false.45:                                    ; preds = %cond.true.41
  %49 = load i32, i32* %y, align 4, !tbaa !5
  %50 = load i32, i32* %y1.addr, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %49, %50
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %cond.false.45
  %51 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %x_next48 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %51, i32 0, i32 6
  %52 = load i32, i32* %x_next48, align 4, !tbaa !36
  br label %cond.end.87

cond.false.49:                                    ; preds = %cond.false.45
  %53 = load i32, i32* %y, align 4, !tbaa !5
  %54 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end50 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %54, i32 0, i32 1
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end50, i32 0, i32 1
  %55 = load i32, i32* %y51, align 4, !tbaa !28
  %cmp52 = icmp eq i32 %53, %55
  br i1 %cmp52, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.false.49
  %56 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %end54 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %56, i32 0, i32 1
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end54, i32 0, i32 0
  %57 = load i32, i32* %x55, align 4, !tbaa !30
  br label %cond.end.85

cond.false.56:                                    ; preds = %cond.false.49
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %59 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %y_fast_max57 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %59, i32 0, i32 3
  %60 = load i32, i32* %y_fast_max57, align 4, !tbaa !31
  %cmp58 = icmp sle i32 %58, %60
  br i1 %cmp58, label %cond.true.59, label %cond.false.71

cond.true.59:                                     ; preds = %cond.false.56
  %61 = load i32, i32* %y, align 4, !tbaa !5
  %62 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start60 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %62, i32 0, i32 0
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start60, i32 0, i32 1
  %63 = load i32, i32* %y61, align 4, !tbaa !26
  %sub62 = sub nsw i32 %61, %63
  %64 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff63 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %64, i32 0, i32 2
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff63, i32 0, i32 0
  %65 = load i32, i32* %x64, align 4, !tbaa !32
  %mul65 = mul nsw i32 %sub62, %65
  %66 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %num_adjust66 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %66, i32 0, i32 4
  %67 = load i32, i32* %num_adjust66, align 4, !tbaa !33
  %add67 = add nsw i32 %mul65, %67
  %68 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff68 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %68, i32 0, i32 2
  %y69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff68, i32 0, i32 1
  %69 = load i32, i32* %y69, align 4, !tbaa !34
  %div70 = sdiv i32 %add67, %69
  br label %cond.end.80

cond.false.71:                                    ; preds = %cond.false.56
  %70 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff72 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %70, i32 0, i32 2
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff72, i32 0, i32 0
  %71 = load i32, i32* %x73, align 4, !tbaa !32
  %72 = load i32, i32* %y, align 4, !tbaa !5
  %73 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start74 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %73, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start74, i32 0, i32 1
  %74 = load i32, i32* %y75, align 4, !tbaa !26
  %sub76 = sub nsw i32 %72, %74
  %75 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %diff77 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %75, i32 0, i32 2
  %y78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %diff77, i32 0, i32 1
  %76 = load i32, i32* %y78, align 4, !tbaa !34
  %call79 = call i32 @fixed_mult_quo(i32 %71, i32 %sub76, i32 %76) #4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.71, %cond.true.59
  %cond81 = phi i32 [ %div70, %cond.true.59 ], [ %call79, %cond.false.71 ]
  %77 = load %struct.active_line_s*, %struct.active_line_s** %flp.addr, align 8, !tbaa !1
  %start82 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %77, i32 0, i32 0
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start82, i32 0, i32 0
  %78 = load i32, i32* %x83, align 4, !tbaa !35
  %add84 = add nsw i32 %cond81, %78
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.80, %cond.true.53
  %cond86 = phi i32 [ %57, %cond.true.53 ], [ %add84, %cond.end.80 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.47
  %cond88 = phi i32 [ %52, %cond.true.47 ], [ %cond86, %cond.end.85 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.43
  %cond90 = phi i32 [ %48, %cond.true.43 ], [ %cond88, %cond.end.87 ]
  br label %cond.end.95

cond.false.91:                                    ; preds = %cond.end.38
  %79 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_left92 = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %79, i32 0, i32 15
  %80 = load i32, i32* %bbox_left92, align 4, !tbaa !37
  %81 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %bbox_width = getelementptr inbounds %struct.line_list_s, %struct.line_list_s* %81, i32 0, i32 16
  %82 = load i32, i32* %bbox_width, align 4, !tbaa !42
  %add93 = add nsw i32 %80, %82
  %shl94 = shl i32 %add93, 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.91, %cond.end.89
  %cond96 = phi i32 [ %cond90, %cond.end.89 ], [ %shl94, %cond.false.91 ]
  store i32 %cond96, i32* %x1, align 4, !tbaa !5
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.95
  %84 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %cmp97 = icmp ne %struct.active_line_s* %84, null
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = bitcast i32* %xx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load i32, i32* %x0, align 4, !tbaa !5
  %87 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start98 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %87, i32 0, i32 0
  %x99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start98, i32 0, i32 0
  %88 = load i32, i32* %x99, align 4, !tbaa !35
  %89 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end100 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %89, i32 0, i32 1
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end100, i32 0, i32 0
  %90 = load i32, i32* %x101, align 4, !tbaa !30
  %cmp102 = icmp slt i32 %88, %90
  br i1 %cmp102, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %for.body
  %91 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start104 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %91, i32 0, i32 0
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start104, i32 0, i32 0
  %92 = load i32, i32* %x105, align 4, !tbaa !35
  br label %cond.end.109

cond.false.106:                                   ; preds = %for.body
  %93 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end107 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %93, i32 0, i32 1
  %x108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end107, i32 0, i32 0
  %94 = load i32, i32* %x108, align 4, !tbaa !30
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.103
  %cond110 = phi i32 [ %92, %cond.true.103 ], [ %94, %cond.false.106 ]
  %cmp111 = icmp sgt i32 %86, %cond110
  br i1 %cmp111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.end.109
  %95 = load i32, i32* %x0, align 4, !tbaa !5
  br label %cond.end.127

cond.false.113:                                   ; preds = %cond.end.109
  %96 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start114 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %96, i32 0, i32 0
  %x115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start114, i32 0, i32 0
  %97 = load i32, i32* %x115, align 4, !tbaa !35
  %98 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end116 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %98, i32 0, i32 1
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end116, i32 0, i32 0
  %99 = load i32, i32* %x117, align 4, !tbaa !30
  %cmp118 = icmp slt i32 %97, %99
  br i1 %cmp118, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.false.113
  %100 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start120 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %100, i32 0, i32 0
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start120, i32 0, i32 0
  %101 = load i32, i32* %x121, align 4, !tbaa !35
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.false.113
  %102 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end123 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %102, i32 0, i32 1
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end123, i32 0, i32 0
  %103 = load i32, i32* %x124, align 4, !tbaa !30
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.119
  %cond126 = phi i32 [ %101, %cond.true.119 ], [ %103, %cond.false.122 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.112
  %cond128 = phi i32 [ %95, %cond.true.112 ], [ %cond126, %cond.end.125 ]
  store i32 %cond128, i32* %xx0, align 4, !tbaa !5
  %104 = bitcast i32* %xx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = load i32, i32* %x1, align 4, !tbaa !5
  %106 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start129 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %106, i32 0, i32 0
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start129, i32 0, i32 0
  %107 = load i32, i32* %x130, align 4, !tbaa !35
  %108 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end131 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %108, i32 0, i32 1
  %x132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end131, i32 0, i32 0
  %109 = load i32, i32* %x132, align 4, !tbaa !30
  %cmp133 = icmp sgt i32 %107, %109
  br i1 %cmp133, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %cond.end.127
  %110 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start135 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %110, i32 0, i32 0
  %x136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start135, i32 0, i32 0
  %111 = load i32, i32* %x136, align 4, !tbaa !35
  br label %cond.end.140

cond.false.137:                                   ; preds = %cond.end.127
  %112 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end138 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %112, i32 0, i32 1
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end138, i32 0, i32 0
  %113 = load i32, i32* %x139, align 4, !tbaa !30
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.137, %cond.true.134
  %cond141 = phi i32 [ %111, %cond.true.134 ], [ %113, %cond.false.137 ]
  %cmp142 = icmp slt i32 %105, %cond141
  br i1 %cmp142, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.end.140
  %114 = load i32, i32* %x1, align 4, !tbaa !5
  br label %cond.end.158

cond.false.144:                                   ; preds = %cond.end.140
  %115 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start145 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %115, i32 0, i32 0
  %x146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start145, i32 0, i32 0
  %116 = load i32, i32* %x146, align 4, !tbaa !35
  %117 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end147 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %117, i32 0, i32 1
  %x148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end147, i32 0, i32 0
  %118 = load i32, i32* %x148, align 4, !tbaa !30
  %cmp149 = icmp sgt i32 %116, %118
  br i1 %cmp149, label %cond.true.150, label %cond.false.153

cond.true.150:                                    ; preds = %cond.false.144
  %119 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %start151 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %119, i32 0, i32 0
  %x152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start151, i32 0, i32 0
  %120 = load i32, i32* %x152, align 4, !tbaa !35
  br label %cond.end.156

cond.false.153:                                   ; preds = %cond.false.144
  %121 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %end154 = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %121, i32 0, i32 1
  %x155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end154, i32 0, i32 0
  %122 = load i32, i32* %x155, align 4, !tbaa !30
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.153, %cond.true.150
  %cond157 = phi i32 [ %120, %cond.true.150 ], [ %122, %cond.false.153 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.143
  %cond159 = phi i32 [ %114, %cond.true.143 ], [ %cond157, %cond.end.156 ]
  store i32 %cond159, i32* %xx1, align 4, !tbaa !5
  %123 = load i32, i32* %xx0, align 4, !tbaa !5
  %124 = load i32, i32* %xx1, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %123, %124
  br i1 %cmp160, label %if.then, label %if.end.164

if.then:                                          ; preds = %cond.end.158
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %125 = load %struct.line_list_s*, %struct.line_list_s** %ll.addr, align 8, !tbaa !1
  %126 = load %struct.margin_set_s*, %struct.margin_set_s** %set.addr, align 8, !tbaa !1
  %127 = load i32, i32* %xx0, align 4, !tbaa !5
  %128 = load i32, i32* %xx1, align 4, !tbaa !5
  %129 = load i32, i32* %y, align 4, !tbaa !5
  %130 = load i32, i32* %y, align 4, !tbaa !5
  %131 = load i32, i32* %side.addr, align 4, !tbaa !5
  %call161 = call i32 @margin_boundary(%struct.line_list_s* %125, %struct.margin_set_s* %126, %struct.active_line_s* null, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 0, i32 0) #4
  store i32 %call161, i32* %code, align 4, !tbaa !5
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %cmp162 = icmp slt i32 %132, 0
  br i1 %cmp162, label %if.then.163, label %if.end

if.then.163:                                      ; preds = %do.end
  %133 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  br label %if.end.164

if.end.164:                                       ; preds = %if.end, %cond.end.158
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.164, %if.then.163
  %134 = bitcast i32* %xx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %xx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.166 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %136 = load %struct.active_line_s*, %struct.active_line_s** %hlp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.active_line_s, %struct.active_line_s* %136, i32 0, i32 15
  %137 = load %struct.active_line_s*, %struct.active_line_s** %next, align 8, !tbaa !71
  store %struct.active_line_s* %137, %struct.active_line_s** %hlp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

cleanup.166:                                      ; preds = %for.end, %cleanup
  %138 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast %struct.active_line_s** %hlp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = load i32, i32* %retval
  ret i32 %143
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @compute_padding(%struct.section_s* %s) #3 {
entry:
  %s.addr = alloca %struct.section_s*, align 8
  store %struct.section_s* %s, %struct.section_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.section_s, %struct.section_s* %0, i32 0, i32 0
  %1 = load i16, i16* %y0, align 2, !tbaa !12
  %conv = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.section_s, %struct.section_s* %2, i32 0, i32 1
  %3 = load i16, i16* %y1, align 2, !tbaa !11
  %conv2 = sext i16 %3 to i32
  %cmp3 = icmp slt i32 %conv2, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct.section_s, %struct.section_s* %4, i32 0, i32 1
  %5 = load i16, i16* %y15, align 2, !tbaa !11
  %conv6 = sext i16 %5 to i64
  %cmp7 = icmp slt i64 %conv6, 128
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end.25

cond.false.10:                                    ; preds = %cond.false
  %6 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y011 = getelementptr inbounds %struct.section_s, %struct.section_s* %6, i32 0, i32 0
  %7 = load i16, i16* %y011, align 2, !tbaa !12
  %conv12 = sext i16 %7 to i64
  %cmp13 = icmp sgt i64 %conv12, 128
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.10
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.10
  %8 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y017 = getelementptr inbounds %struct.section_s, %struct.section_s* %8, i32 0, i32 0
  %9 = load i16, i16* %y017, align 2, !tbaa !12
  %conv18 = sext i16 %9 to i64
  %sub = sub nsw i64 128, %conv18
  %10 = load %struct.section_s*, %struct.section_s** %s.addr, align 8, !tbaa !1
  %y119 = getelementptr inbounds %struct.section_s, %struct.section_s* %10, i32 0, i32 1
  %11 = load i16, i16* %y119, align 2, !tbaa !11
  %conv20 = sext i16 %11 to i64
  %sub21 = sub nsw i64 %conv20, 128
  %cmp22 = icmp slt i64 %sub, %sub21
  %cond = select i1 %cmp22, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond24 = phi i32 [ 1, %cond.true.15 ], [ %cond, %cond.false.16 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end, %cond.true.9
  %cond26 = phi i32 [ 0, %cond.true.9 ], [ %cond24, %cond.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true
  %cond28 = phi i32 [ -2, %cond.true ], [ %cond26, %cond.end.25 ]
  ret i32 %cond28
}

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
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 4}
!8 = !{!"section_s", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6}
!9 = !{!"short", !3, i64 0}
!10 = !{!8, !9, i64 6}
!11 = !{!8, !9, i64 2}
!12 = !{!8, !9, i64 0}
!13 = !{!14, !2, i64 368}
!14 = !{!"line_list_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !2, i64 48, !15, i64 56, !2, i64 288, !2, i64 296, !18, i64 304, !18, i64 336, !2, i64 368, !2, i64 376, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !2, i64 408, !6, i64 416, !3, i64 424, !3, i64 5064, !3, i64 5544, !3, i64 6344, !3, i64 7144}
!15 = !{!"active_line_s", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 60, !6, i64 196, !6, i64 200, !2, i64 208, !2, i64 216, !2, i64 224}
!16 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_flattened_iterator_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132}
!18 = !{!"margin_set_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!19 = !{!20, !2, i64 16}
!20 = !{!"margin_s", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16}
!21 = !{!14, !2, i64 0}
!22 = !{!23, !2, i64 24}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!18, !2, i64 24}
!26 = !{!15, !6, i64 4}
!27 = !{!18, !6, i64 0}
!28 = !{!15, !6, i64 12}
!29 = !{!15, !6, i64 32}
!30 = !{!15, !6, i64 8}
!31 = !{!15, !6, i64 24}
!32 = !{!15, !6, i64 16}
!33 = !{!15, !6, i64 28}
!34 = !{!15, !6, i64 20}
!35 = !{!15, !6, i64 0}
!36 = !{!15, !6, i64 36}
!37 = !{!14, !6, i64 388}
!38 = !{!18, !2, i64 16}
!39 = !{!14, !2, i64 408}
!40 = !{!41, !6, i64 0}
!41 = !{!"fill_options_s", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!42 = !{!14, !6, i64 392}
!43 = !{!18, !2, i64 8}
!44 = !{!20, !6, i64 0}
!45 = !{!20, !2, i64 8}
!46 = !{!20, !6, i64 4}
!47 = !{!9, !9, i64 0}
!48 = !{!14, !6, i64 304}
!49 = !{!14, !6, i64 336}
!50 = !{!14, !2, i64 288}
!51 = !{!14, !2, i64 296}
!52 = !{!41, !6, i64 28}
!53 = !{!41, !2, i64 80}
!54 = !{!41, !2, i64 56}
!55 = !{!41, !2, i64 16}
!56 = !{!57, !57, i64 0}
!57 = !{!"long", !3, i64 0}
!58 = !{!59, !2, i64 0}
!59 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !60, i64 352, !6, i64 360, !61, i64 368, !63, i64 632}
!60 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!61 = !{!"gs_client_color_s", !2, i64 0, !62, i64 8}
!62 = !{!"gs_paint_color_s", !3, i64 0}
!63 = !{!"_mask", !64, i64 0, !57, i64 8, !2, i64 16}
!64 = !{!"mp_", !6, i64 0, !6, i64 4}
!65 = !{!66, !2, i64 40}
!66 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!67 = !{!41, !6, i64 24}
!68 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!69 = !{!14, !6, i64 384}
!70 = !{!23, !2, i64 72}
!71 = !{!15, !2, i64 216}
