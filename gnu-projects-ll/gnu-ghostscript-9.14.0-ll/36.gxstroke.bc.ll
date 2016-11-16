; ModuleID = './gxstroke.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
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
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.partial_line_s = type { %struct.endpoint_s, %struct.endpoint_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32 }
%struct.endpoint_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.dash_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [17 x i8] c"fill_stroke_path\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gx_stroke_path_only error\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gx_stroke_path exit(dash path)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"gx_stroke_path exit(flattened path)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gx_join_path_and_reverse\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %expand = alloca double, align 8
  %result = alloca i32, align 4
  %must_be_closed = alloca i32, align 4
  %prev = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  %factor = alloca float, align 4
  %exx = alloca float, align 4
  %exy = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !14
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !1
  %4 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %cx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %7 = load float, float* %xx, align 4, !tbaa !15
  %conv = fpext float %7 to double
  %call = call double @fabs(double %conv) #5
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm1, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !29
  %conv2 = fpext float %9 to double
  %call3 = call double @fabs(double %conv2) #5
  %add = fadd double %call, %call3
  store double %add, double* %cx, align 8, !tbaa !30
  %10 = bitcast double* %cy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 1
  %12 = load float, float* %xy, align 4, !tbaa !31
  %conv5 = fpext float %12 to double
  %call6 = call double @fabs(double %conv5) #5
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm7 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 3
  %14 = load float, float* %yy, align 4, !tbaa !32
  %conv8 = fpext float %14 to double
  %call9 = call double @fabs(double %conv8) #5
  %add10 = fadd double %call6, %call9
  store double %add10, double* %cy, align 8, !tbaa !30
  %15 = bitcast double* %expand to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %17 = load float, float* %half_width, align 4, !tbaa !33
  %conv11 = fpext float %17 to double
  store double %conv11, double* %expand, align 8, !tbaa !30
  %18 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %result, align 4, !tbaa !34
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params12, i32 0, i32 1
  %20 = load i32, i32* %start_cap, align 4, !tbaa !35
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 3
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params14, i32 0, i32 2
  %22 = load i32, i32* %end_cap, align 4, !tbaa !36
  %cmp15 = icmp eq i32 %22, 2
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %23 = load double, double* %expand, align 8, !tbaa !30
  %mul = fmul double %23, 0x3FF6A09E6665983E
  store double %mul, double* %expand, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 5
  %xy18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 1
  %25 = load float, float* %xy18, align 4, !tbaa !31
  %conv19 = fpext float %25 to double
  %cmp20 = fcmp oeq double %conv19, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false.27

land.lhs.true:                                    ; preds = %if.end
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 5
  %yx23 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm22, i32 0, i32 2
  %27 = load float, float* %yx23, align 4, !tbaa !29
  %conv24 = fpext float %27 to double
  %cmp25 = fcmp oeq double %conv24, 0.000000e+00
  br i1 %cmp25, label %if.then.39, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true, %if.end
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm28 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 5
  %xx29 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm28, i32 0, i32 0
  %29 = load float, float* %xx29, align 4, !tbaa !15
  %conv30 = fpext float %29 to double
  %cmp31 = fcmp oeq double %conv30, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.91

land.lhs.true.33:                                 ; preds = %lor.lhs.false.27
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 5
  %yy35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 3
  %31 = load float, float* %yy35, align 4, !tbaa !32
  %conv36 = fpext float %31 to double
  %cmp37 = fcmp oeq double %conv36, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.end.91

if.then.39:                                       ; preds = %land.lhs.true.33, %land.lhs.true
  %32 = bitcast i32* %must_be_closed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 3
  %start_cap41 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params40, i32 0, i32 1
  %34 = load i32, i32* %start_cap41, align 4, !tbaa !35
  %cmp42 = icmp eq i32 %34, 2
  br i1 %cmp42, label %lor.end, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.39
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params45 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %35, i32 0, i32 3
  %start_cap46 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params45, i32 0, i32 1
  %36 = load i32, i32* %start_cap46, align 4, !tbaa !35
  %cmp47 = icmp eq i32 %36, 1
  br i1 %cmp47, label %lor.end, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.44
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 3
  %end_cap51 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params50, i32 0, i32 2
  %38 = load i32, i32* %end_cap51, align 4, !tbaa !36
  %cmp52 = icmp eq i32 %38, 2
  br i1 %cmp52, label %lor.end, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.49
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 3
  %end_cap56 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params55, i32 0, i32 2
  %40 = load i32, i32* %end_cap56, align 4, !tbaa !36
  %cmp57 = icmp eq i32 %40, 1
  br i1 %cmp57, label %lor.end, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.54
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %41, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params60, i32 0, i32 3
  %42 = load i32, i32* %dash_cap, align 4, !tbaa !37
  %cmp61 = icmp eq i32 %42, 2
  br i1 %cmp61, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.59
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params63 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 3
  %dash_cap64 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params63, i32 0, i32 3
  %44 = load i32, i32* %dash_cap64, align 4, !tbaa !37
  %cmp65 = icmp eq i32 %44, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.59, %lor.lhs.false.54, %lor.lhs.false.49, %lor.lhs.false.44, %if.then.39
  %45 = phi i1 [ true, %lor.lhs.false.59 ], [ true, %lor.lhs.false.54 ], [ true, %lor.lhs.false.49 ], [ true, %lor.lhs.false.44 ], [ true, %if.then.39 ], [ %cmp65, %lor.rhs ]
  %lnot = xor i1 %45, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %must_be_closed, align 4, !tbaa !34
  %46 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !38
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !39
  %47 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %48 = bitcast %struct.subpath_s* %47 to %struct.segment_s*
  store %struct.segment_s* %48, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %49 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %tobool = icmp ne %struct.segment_s* %49, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %50, i32 0, i32 2
  %51 = load i16, i16* %type, align 2, !tbaa !40
  %conv67 = zext i16 %51 to i32
  switch i32 %conv67, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.75
    i32 4, label %sw.bb.75
    i32 2, label %sw.bb.75
    i32 5, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %for.body
  %52 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %53 = bitcast %struct.segment_s* %52 to %struct.subpath_s*
  %curve_count = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %53, i32 0, i32 6
  %54 = load i32, i32* %curve_count, align 4, !tbaa !42
  %tobool68 = icmp ne i32 %54, 0
  br i1 %tobool68, label %if.then.73, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %sw.bb
  %55 = load i32, i32* %must_be_closed, align 4, !tbaa !34
  %tobool70 = icmp ne i32 %55, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.74

land.lhs.true.71:                                 ; preds = %lor.lhs.false.69
  %56 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %57 = bitcast %struct.segment_s* %56 to %struct.subpath_s*
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %57, i32 0, i32 8
  %58 = load i8, i8* %is_closed, align 1, !tbaa !45
  %tobool72 = icmp ne i8 %58, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71, %sw.bb
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %land.lhs.true.71, %lor.lhs.false.69
  br label %sw.epilog

sw.bb.75:                                         ; preds = %for.body, %for.body, %for.body
  %59 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %59, i32 0, i32 4
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %60 = load i32, i32* %x76, align 4, !tbaa !46
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %61 = load i32, i32* %x77, align 4, !tbaa !39
  %cmp78 = icmp eq i32 %60, %61
  br i1 %cmp78, label %if.end.87, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %sw.bb.75
  %62 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt81 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 4
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt81, i32 0, i32 1
  %63 = load i32, i32* %y82, align 4, !tbaa !47
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 1
  %64 = load i32, i32* %y83, align 4, !tbaa !38
  %cmp84 = icmp eq i32 %63, %64
  br i1 %cmp84, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %lor.lhs.false.80
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %lor.lhs.false.80, %sw.bb.75
  br label %sw.epilog

sw.bb.88:                                         ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.88
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.87, %if.end.74
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %65 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt89 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %65, i32 0, i32 4
  %66 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  %67 = bitcast %struct.gs_fixed_point_s* %pt89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 8, i32 4, i1 false), !tbaa.struct !48
  %68 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %68, i32 0, i32 1
  %69 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !49
  store %struct.segment_s* %69, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %result, align 4, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then.86, %if.then.73, %for.end
  %70 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %must_be_closed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.181 [
    i32 0, label %cleanup.cont
    i32 6, label %not_exact
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.91

if.end.91:                                        ; preds = %cleanup.cont, %land.lhs.true.33, %lor.lhs.false.27
  br label %not_exact

not_exact:                                        ; preds = %if.end.91, %cleanup
  %72 = load i32, i32* %result, align 4, !tbaa !34
  %tobool92 = icmp ne i32 %72, 0
  br i1 %tobool92, label %if.then.93, label %if.end.135

if.then.93:                                       ; preds = %not_exact
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count94 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %73, i32 0, i32 13
  %74 = load i32, i32* %curve_count94, align 4, !tbaa !50
  %cmp95 = icmp ne i32 %74, 0
  br i1 %cmp95, label %if.else, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %if.then.93
  %75 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %75, i32 0, i32 12
  %76 = load i32, i32* %subpath_count, align 4, !tbaa !51
  %cmp98 = icmp sle i32 %76, 1
  br i1 %cmp98, label %land.lhs.true.100, label %if.else

land.lhs.true.100:                                ; preds = %land.lhs.true.97
  %77 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %cmp101 = icmp eq %struct.subpath_s* %77, null
  br i1 %cmp101, label %if.then.116, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.100
  %78 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %next104 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %78, i32 0, i32 1
  %79 = load %struct.segment_s*, %struct.segment_s** %next104, align 8, !tbaa !52
  store %struct.segment_s* %79, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp105 = icmp eq %struct.segment_s* %79, null
  br i1 %cmp105, label %if.then.116, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.103
  %80 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next108 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %80, i32 0, i32 1
  %81 = load %struct.segment_s*, %struct.segment_s** %next108, align 8, !tbaa !49
  store %struct.segment_s* %81, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp109 = icmp eq %struct.segment_s* %81, null
  br i1 %cmp109, label %if.then.116, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.107
  %82 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type112 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %82, i32 0, i32 2
  %83 = load i16, i16* %type112, align 2, !tbaa !40
  %conv113 = zext i16 %83 to i32
  %cmp114 = icmp eq i32 %conv113, 2
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.107, %lor.lhs.false.103, %land.lhs.true.100
  br label %do.body

do.body:                                          ; preds = %if.then.116
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.134

if.else:                                          ; preds = %lor.lhs.false.111, %land.lhs.true.97, %if.then.93
  %84 = bitcast float* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params117 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %86, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params117, i32 0, i32 4
  %87 = load i32, i32* %join, align 4, !tbaa !53
  %call118 = call float @join_expansion_factor(%struct.gs_imager_state_s* %85, i32 %87) #6
  store float %call118, float* %factor, align 4, !tbaa !54
  %88 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params119 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %88, i32 0, i32 3
  %curve_join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params119, i32 0, i32 5
  %89 = load i32, i32* %curve_join, align 4, !tbaa !55
  %cmp120 = icmp sge i32 %89, 0
  br i1 %cmp120, label %if.then.122, label %if.end.131

if.then.122:                                      ; preds = %if.else
  %90 = load float, float* %factor, align 4, !tbaa !54
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %92 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params123 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %92, i32 0, i32 3
  %curve_join124 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params123, i32 0, i32 5
  %93 = load i32, i32* %curve_join124, align 4, !tbaa !55
  %call125 = call float @join_expansion_factor(%struct.gs_imager_state_s* %91, i32 %93) #6
  %cmp126 = fcmp ogt float %90, %call125
  br i1 %cmp126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.122
  %94 = load float, float* %factor, align 4, !tbaa !54
  br label %cond.end

cond.false:                                       ; preds = %if.then.122
  %95 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %96 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params128 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %96, i32 0, i32 3
  %curve_join129 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params128, i32 0, i32 5
  %97 = load i32, i32* %curve_join129, align 4, !tbaa !55
  %call130 = call float @join_expansion_factor(%struct.gs_imager_state_s* %95, i32 %97) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %94, %cond.true ], [ %call130, %cond.false ]
  store float %cond, float* %factor, align 4, !tbaa !54
  br label %if.end.131

if.end.131:                                       ; preds = %cond.end, %if.else
  %98 = load float, float* %factor, align 4, !tbaa !54
  %conv132 = fpext float %98 to double
  %99 = load double, double* %expand, align 8, !tbaa !30
  %mul133 = fmul double %99, %conv132
  store double %mul133, double* %expand, align 8, !tbaa !30
  %100 = bitcast float* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.131, %do.end
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %not_exact
  %101 = bitcast float* %exx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = load double, double* %expand, align 8, !tbaa !30
  %103 = load double, double* %cx, align 8, !tbaa !30
  %mul136 = fmul double %102, %103
  %conv137 = fptrunc double %mul136 to float
  store float %conv137, float* %exx, align 4, !tbaa !54
  %104 = bitcast float* %exy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load double, double* %expand, align 8, !tbaa !30
  %106 = load double, double* %cy, align 8, !tbaa !30
  %mul138 = fmul double %105, %106
  %conv139 = fptrunc double %mul138 to float
  store float %conv139, float* %exy, align 4, !tbaa !54
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load float, float* %exx, align 4, !tbaa !54
  %conv140 = fpext float %108 to double
  %cmp141 = fcmp oge double %conv140, -8.388608e+06
  br i1 %cmp141, label %land.lhs.true.143, label %cond.false.151

land.lhs.true.143:                                ; preds = %if.end.135
  %109 = load float, float* %exx, align 4, !tbaa !54
  %conv144 = fpext float %109 to double
  %cmp145 = fcmp olt double %conv144, 8.388608e+06
  br i1 %cmp145, label %cond.true.147, label %cond.false.151

cond.true.147:                                    ; preds = %land.lhs.true.143
  %110 = load float, float* %exx, align 4, !tbaa !54
  %mul148 = fmul float %110, 2.560000e+02
  %conv149 = fptosi float %mul148 to i32
  %111 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %111, i32 0, i32 0
  store i32 %conv149, i32* %x150, align 4, !tbaa !39
  br label %cond.end.152

cond.false.151:                                   ; preds = %land.lhs.true.143, %if.end.135
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.147
  %cond153 = phi i32 [ 0, %cond.true.147 ], [ -13, %cond.false.151 ]
  store i32 %cond153, i32* %code, align 4, !tbaa !34
  %112 = load i32, i32* %code, align 4, !tbaa !34
  %cmp154 = icmp slt i32 %112, 0
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %cond.end.152
  %113 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.157:                                       ; preds = %cond.end.152
  %114 = load float, float* %exy, align 4, !tbaa !54
  %conv158 = fpext float %114 to double
  %cmp159 = fcmp oge double %conv158, -8.388608e+06
  br i1 %cmp159, label %land.lhs.true.161, label %cond.false.169

land.lhs.true.161:                                ; preds = %if.end.157
  %115 = load float, float* %exy, align 4, !tbaa !54
  %conv162 = fpext float %115 to double
  %cmp163 = fcmp olt double %conv162, 8.388608e+06
  br i1 %cmp163, label %cond.true.165, label %cond.false.169

cond.true.165:                                    ; preds = %land.lhs.true.161
  %116 = load float, float* %exy, align 4, !tbaa !54
  %mul166 = fmul float %116, 2.560000e+02
  %conv167 = fptosi float %mul166 to i32
  %117 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %117, i32 0, i32 1
  store i32 %conv167, i32* %y168, align 4, !tbaa !38
  br label %cond.end.170

cond.false.169:                                   ; preds = %land.lhs.true.161, %if.end.157
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.165
  %cond171 = phi i32 [ 0, %cond.true.165 ], [ -13, %cond.false.169 ]
  store i32 %cond171, i32* %code, align 4, !tbaa !34
  %118 = load i32, i32* %code, align 4, !tbaa !34
  %cmp172 = icmp slt i32 %118, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %cond.end.170
  %119 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.175:                                       ; preds = %cond.end.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.176

cleanup.176:                                      ; preds = %if.end.175, %if.then.174, %if.then.156
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast float* %exy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast float* %exx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %cleanup.dest.179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.179, label %cleanup.181 [
    i32 0, label %cleanup.cont.180
  ]

cleanup.cont.180:                                 ; preds = %cleanup.176
  %123 = load i32, i32* %result, align 4, !tbaa !34
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.181

cleanup.181:                                      ; preds = %cleanup.cont.180, %cleanup.176, %cleanup
  %124 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast double* %expand to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast double* %cy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast double* %cx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal float @join_expansion_factor(%struct.gs_imager_state_s* %pis, i32 %join) #0 {
entry:
  %retval = alloca float, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %join.addr = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  %0 = load i32, i32* %join.addr, align 4, !tbaa !56
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 3
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 6
  %2 = load float, float* %miter_limit, align 4, !tbaa !57
  store float %2, float* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store float 2.000000e+00, float* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store float 1.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %3 = load float, float* %retval
  ret float %3
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
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
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_stroke_path_only(%struct.gx_path_s* %0, %struct.gx_path_s* null, %struct.gx_device_s* %1, %struct.gs_imager_state_s* %2, %struct.gx_stroke_params_s* %3, %struct.gx_device_color_s* %4, %struct.gx_clip_path_s* %5) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_stroke_path_only(%struct.gx_path_s* %ppath, %struct.gx_path_s* %to_path, %struct.gx_device_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %to_path.addr = alloca %struct.gx_path_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %to_path, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gx_stroke_path_only_aux(%struct.gx_path_s* %1, %struct.gx_path_s* %2, %struct.gx_device_s* %3, %struct.gs_imager_state_s* %4, %struct.gx_stroke_params_s* %5, %struct.gx_device_color_s* %6, %struct.gx_clip_path_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %8 = load i32, i32* %code, align 4, !tbaa !34
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_stroke_path_only_aux(%struct.gx_path_s* %ppath, %struct.gx_path_s* %to_path, %struct.gx_device_s* %pdev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %to_path.addr = alloca %struct.gx_path_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %CPSI_mode = alloca i32, align 4
  %traditional = alloca i32, align 4
  %line_proc = alloca i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)*, align 8
  %ibox = alloca %struct.gs_fixed_rect_s, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 4
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %fill_params = alloca %struct.gx_fill_params_s, align 4
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %dash_count = alloca i32, align 4
  %fpath = alloca %struct.gx_path_s, align 8
  %dpath = alloca %struct.gx_path_s, align 8
  %stroke_path_body = alloca %struct.gx_path_s, align 8
  %stroke_path_reverse = alloca %struct.gx_path_s, align 8
  %to_path_reverse = alloca %struct.gx_path_s*, align 8
  %spath = alloca %struct.gx_path_s*, align 8
  %xx = alloca float, align 4
  %xy = alloca float, align 4
  %yx = alloca float, align 4
  %yy = alloca float, align 4
  %uniform = alloca i32, align 4
  %reflected = alloca i32, align 4
  %orient = alloca i32, align 4
  %not_first = alloca i32, align 4
  %curve_join = alloca i32, align 4
  %line_width = alloca float, align 4
  %always_thin = alloca i32, align 4
  %line_width_and_scale = alloca double, align 8
  %device_line_width_scale = alloca double, align 8
  %device_dot_length = alloca double, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %initial_matrix = alloca %struct.gs_matrix_s, align 4
  %initial_matrix_reflected = alloca i32, align 4
  %flags = alloca i32, align 4
  %expansion = alloca %struct.gs_fixed_point_s, align 4
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  %xa = alloca float, align 4
  %ya = alloca float, align 4
  %max_rr = alloca double, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %max_dash_len = alloca float, align 4
  %expand_squared = alloca float, align 4
  %i = alloca i32, align 4
  %adjust = alloca float, align 4
  %index = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  %x572 = alloca i32, align 4
  %y574 = alloca i32, align 4
  %is_closed = alloca i32, align 4
  %pl = alloca %struct.partial_line_s, align 4
  %pl_prev = alloca %struct.partial_line_s, align 4
  %pl_first = alloca %struct.partial_line_s, align 4
  %zero_length = alloca i32, align 4
  %sx = alloca i32, align 4
  %udx = alloca i32, align 4
  %sy = alloca i32, align 4
  %udy = alloca i32, align 4
  %is_dash_segment = alloca i32, align 4
  %pd = alloca %struct.dash_segment*, align 8
  %end = alloca %struct.segment_s*, align 8
  %scale = alloca double, align 8
  %udx1 = alloca i32, align 4
  %udy1 = alloca i32, align 4
  %dmax = alloca i32, align 4
  %dpx = alloca double, align 8
  %dpy = alloca double, align 8
  %wl = alloca double, align 8
  %dpt = alloca %struct.gs_point_s, align 8
  %wl935 = alloca float, align 4
  %join1085 = alloca i32, align 4
  %first = alloca i32, align 4
  %lptr = alloca %struct.partial_line_s*, align 8
  %ensure_closed = alloca i32, align 4
  %notes1240 = alloca i32, align 4
  %join1252 = alloca i32, align 4
  %cap = alloca i32, align 4
  %lptr1260 = alloca %struct.partial_line_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %to_path, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %2) #6
  store i32 %call, i32* %CPSI_mode, align 4, !tbaa !34
  %3 = bitcast i32* %traditional to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %CPSI_mode, align 4, !tbaa !34
  %5 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %traditional1 = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %5, i32 0, i32 1
  %6 = load i32, i32* %traditional1, align 4, !tbaa !59
  %or = or i32 %4, %6
  store i32 %or, i32* %traditional, align 4, !tbaa !34
  %7 = bitcast i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_path_s* %8, null
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s* %9) #6
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 10
  %11 = load i32, i32* %log_op, align 4, !tbaa !61
  %neg = xor i32 %11, -1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op3 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 10
  %13 = load i32, i32* %log_op3, align 4, !tbaa !61
  %shl = shl i32 %13, 1
  %and = and i32 %neg, %shl
  %and4 = and i32 %and, 170
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 10
  %15 = load i32, i32* %log_op6, align 4, !tbaa !61
  %and7 = and i32 %15, 1024
  %tobool8 = icmp ne i32 %and7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %16 = phi i1 [ false, %cond.true ], [ %lnot, %land.rhs ]
  %cond = select i1 %16, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* @stroke_fill, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* @stroke_add
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %17 = load i32, i32* %traditional, align 4, !tbaa !34
  %tobool9 = icmp ne i32 %17, 0
  %cond10 = select i1 %tobool9, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* @stroke_add_compat, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* @stroke_add_fast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end
  %cond11 = phi i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* [ %cond, %land.end ], [ %cond10, %cond.false ]
  store i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* %cond11, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc, align 8, !tbaa !1
  %18 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %20) #1
  %21 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %22, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %code, align 4, !tbaa !34
  %24 = bitcast %struct.gx_fill_params_s* %fill_params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %27 = bitcast i32* %dash_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %28, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %29 = load i32, i32* %pattern_size, align 4, !tbaa !62
  store i32 %29, i32* %dash_count, align 4, !tbaa !34
  %30 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %30) #1
  %31 = bitcast %struct.gx_path_s* %dpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %31) #1
  %32 = bitcast %struct.gx_path_s* %stroke_path_body to i8*
  call void @llvm.lifetime.start(i64 128, i8* %32) #1
  %33 = bitcast %struct.gx_path_s* %stroke_path_reverse to i8*
  call void @llvm.lifetime.start(i64 128, i8* %33) #1
  %34 = bitcast %struct.gx_path_s** %to_path_reverse to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store %struct.gx_path_s* null, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %35 = bitcast %struct.gx_path_s** %spath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast float* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 5
  %xx12 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %38 = load float, float* %xx12, align 4, !tbaa !15
  store float %38, float* %xx, align 4, !tbaa !54
  %39 = bitcast float* %xy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 5
  %xy14 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm13, i32 0, i32 1
  %41 = load float, float* %xy14, align 4, !tbaa !31
  store float %41, float* %xy, align 4, !tbaa !54
  %42 = bitcast float* %yx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 5
  %yx16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm15, i32 0, i32 2
  %44 = load float, float* %yx16, align 4, !tbaa !29
  store float %44, float* %yx, align 4, !tbaa !54
  %45 = bitcast float* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 5
  %yy18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm17, i32 0, i32 3
  %47 = load float, float* %yy18, align 4, !tbaa !32
  store float %47, float* %yy, align 4, !tbaa !54
  %48 = bitcast i32* %uniform to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %reflected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load float, float* %xy, align 4, !tbaa !54
  %conv = fpext float %51 to double
  %cmp19 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp19, label %land.lhs.true.21, label %cond.false.48

land.lhs.true.21:                                 ; preds = %cond.end
  %52 = load float, float* %yx, align 4, !tbaa !54
  %conv22 = fpext float %52 to double
  %cmp23 = fcmp oeq double %conv22, 0.000000e+00
  br i1 %cmp23, label %cond.true.25, label %cond.false.48

cond.true.25:                                     ; preds = %land.lhs.true.21
  %53 = load float, float* %xx, align 4, !tbaa !54
  %54 = load float, float* %yy, align 4, !tbaa !54
  %cmp26 = fcmp oeq float %53, %54
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.true.25
  br label %cond.end.33

cond.false.29:                                    ; preds = %cond.true.25
  %55 = load float, float* %xx, align 4, !tbaa !54
  %56 = load float, float* %yy, align 4, !tbaa !54
  %sub = fsub float -0.000000e+00, %56
  %cmp30 = fcmp oeq float %55, %sub
  %cond32 = select i1 %cmp30, i32 -1, i32 0
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.28
  %cond34 = phi i32 [ 1, %cond.true.28 ], [ %cond32, %cond.false.29 ]
  store i32 %cond34, i32* %uniform, align 4, !tbaa !34
  %57 = load i32, i32* %uniform, align 4, !tbaa !34
  %tobool35 = icmp ne i32 %57, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end.33
  %58 = load i32, i32* %uniform, align 4, !tbaa !34
  %cmp37 = icmp slt i32 %58, 0
  %conv38 = zext i1 %cmp37 to i32
  br label %cond.end.46

cond.false.39:                                    ; preds = %cond.end.33
  %59 = load float, float* %xx, align 4, !tbaa !54
  %cmp40 = fcmp olt float %59, 0.000000e+00
  %conv41 = zext i1 %cmp40 to i32
  %60 = load float, float* %yy, align 4, !tbaa !54
  %cmp42 = fcmp olt float %60, 0.000000e+00
  %conv43 = zext i1 %cmp42 to i32
  %cmp44 = icmp ne i32 %conv41, %conv43
  %conv45 = zext i1 %cmp44 to i32
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.39, %cond.true.36
  %cond47 = phi i32 [ %conv38, %cond.true.36 ], [ %conv45, %cond.false.39 ]
  store i32 %cond47, i32* %reflected, align 4, !tbaa !34
  br label %cond.end.86

cond.false.48:                                    ; preds = %land.lhs.true.21, %cond.end
  %61 = load float, float* %xx, align 4, !tbaa !54
  %conv49 = fpext float %61 to double
  %cmp50 = fcmp oeq double %conv49, 0.000000e+00
  br i1 %cmp50, label %land.lhs.true.52, label %cond.false.80

land.lhs.true.52:                                 ; preds = %cond.false.48
  %62 = load float, float* %yy, align 4, !tbaa !54
  %conv53 = fpext float %62 to double
  %cmp54 = fcmp oeq double %conv53, 0.000000e+00
  br i1 %cmp54, label %cond.true.56, label %cond.false.80

cond.true.56:                                     ; preds = %land.lhs.true.52
  %63 = load float, float* %xy, align 4, !tbaa !54
  %64 = load float, float* %yx, align 4, !tbaa !54
  %cmp57 = fcmp oeq float %63, %64
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.true.56
  br label %cond.end.65

cond.false.60:                                    ; preds = %cond.true.56
  %65 = load float, float* %xy, align 4, !tbaa !54
  %66 = load float, float* %yx, align 4, !tbaa !54
  %sub61 = fsub float -0.000000e+00, %66
  %cmp62 = fcmp oeq float %65, %sub61
  %cond64 = select i1 %cmp62, i32 1, i32 0
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.60, %cond.true.59
  %cond66 = phi i32 [ -1, %cond.true.59 ], [ %cond64, %cond.false.60 ]
  store i32 %cond66, i32* %uniform, align 4, !tbaa !34
  %67 = load i32, i32* %uniform, align 4, !tbaa !34
  %tobool67 = icmp ne i32 %67, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %cond.end.65
  %68 = load i32, i32* %uniform, align 4, !tbaa !34
  %cmp69 = icmp slt i32 %68, 0
  %conv70 = zext i1 %cmp69 to i32
  br label %cond.end.78

cond.false.71:                                    ; preds = %cond.end.65
  %69 = load float, float* %xy, align 4, !tbaa !54
  %cmp72 = fcmp olt float %69, 0.000000e+00
  %conv73 = zext i1 %cmp72 to i32
  %70 = load float, float* %yx, align 4, !tbaa !54
  %cmp74 = fcmp olt float %70, 0.000000e+00
  %conv75 = zext i1 %cmp74 to i32
  %cmp76 = icmp eq i32 %conv73, %conv75
  %conv77 = zext i1 %cmp76 to i32
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.71, %cond.true.68
  %cond79 = phi i32 [ %conv70, %cond.true.68 ], [ %conv77, %cond.false.71 ]
  store i32 %cond79, i32* %reflected, align 4, !tbaa !34
  br label %cond.end.84

cond.false.80:                                    ; preds = %land.lhs.true.52, %cond.false.48
  store i32 0, i32* %uniform, align 4, !tbaa !34
  %71 = load float, float* %xy, align 4, !tbaa !54
  %72 = load float, float* %yx, align 4, !tbaa !54
  %mul = fmul float %71, %72
  %73 = load float, float* %xx, align 4, !tbaa !54
  %74 = load float, float* %yy, align 4, !tbaa !54
  %mul81 = fmul float %73, %74
  %cmp82 = fcmp ogt float %mul, %mul81
  %conv83 = zext i1 %cmp82 to i32
  store i32 %conv83, i32* %reflected, align 4, !tbaa !34
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.80, %cond.end.78
  %cond85 = phi i32 [ 2, %cond.end.78 ], [ 0, %cond.false.80 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.end.46
  %cond87 = phi i32 [ 1, %cond.end.46 ], [ %cond85, %cond.end.84 ]
  store i32 %cond87, i32* %orient, align 4, !tbaa !56
  %75 = bitcast i32* %not_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 1, i32* %not_first, align 4, !tbaa !56
  %76 = bitcast i32* %curve_join to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %curve_join88 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %77, i32 0, i32 5
  %78 = load i32, i32* %curve_join88, align 4, !tbaa !63
  %cmp89 = icmp sge i32 %78, 0
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %cond.end.86
  %79 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %curve_join92 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %79, i32 0, i32 5
  %80 = load i32, i32* %curve_join92, align 4, !tbaa !63
  br label %cond.end.104

cond.false.93:                                    ; preds = %cond.end.86
  %81 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %81, i32 0, i32 4
  %82 = load i32, i32* %join, align 4, !tbaa !64
  %cmp94 = icmp eq i32 %82, 3
  br i1 %cmp94, label %cond.true.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.93
  %83 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %join96 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %83, i32 0, i32 4
  %84 = load i32, i32* %join96, align 4, !tbaa !64
  %cmp97 = icmp eq i32 %84, 1
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %lor.lhs.false, %cond.false.93
  br label %cond.end.102

cond.false.100:                                   ; preds = %lor.lhs.false
  %85 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %join101 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %85, i32 0, i32 4
  %86 = load i32, i32* %join101, align 4, !tbaa !64
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.100, %cond.true.99
  %cond103 = phi i32 [ 2, %cond.true.99 ], [ %86, %cond.false.100 ]
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.102, %cond.true.91
  %cond105 = phi i32 [ %80, %cond.true.91 ], [ %cond103, %cond.end.102 ]
  store i32 %cond105, i32* %curve_join, align 4, !tbaa !56
  %87 = bitcast float* %line_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %88, i32 0, i32 0
  %89 = load float, float* %half_width, align 4, !tbaa !65
  store float %89, float* %line_width, align 4, !tbaa !54
  %90 = bitcast i32* %always_thin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = bitcast double* %line_width_and_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  %92 = bitcast double* %device_line_width_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store double 0.000000e+00, double* %device_line_width_scale, align 8, !tbaa !30
  %93 = bitcast double* %device_dot_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %94, i32 0, i32 8
  %95 = load float, float* %dot_length, align 4, !tbaa !66
  %mul106 = fmul float %95, 2.560000e+02
  %conv107 = fpext float %mul106 to double
  store double %conv107, double* %device_dot_length, align 8, !tbaa !30
  %96 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  call void @llvm.lifetime.start(i64 24, i8* %97) #1
  %98 = bitcast i32* %initial_matrix_reflected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %101 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !67
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void %101(%struct.gx_device_s* %102, %struct.gs_matrix_s* %initial_matrix) #6
  %xy108 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 1
  %103 = load float, float* %xy108, align 4, !tbaa !77
  %yx109 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 2
  %104 = load float, float* %yx109, align 4, !tbaa !78
  %mul110 = fmul float %103, %104
  %xx111 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 0
  %105 = load float, float* %xx111, align 4, !tbaa !79
  %yy112 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 3
  %106 = load float, float* %yy112, align 4, !tbaa !80
  %mul113 = fmul float %105, %106
  %cmp114 = fcmp ogt float %mul110, %mul113
  %conv115 = zext i1 %cmp114 to i32
  store i32 %conv115, i32* %initial_matrix_reflected, align 4, !tbaa !34
  %107 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call116 = call i32 @gx_path_bbox(%struct.gx_path_s* %107, %struct.gs_fixed_rect_s* %ibox) #6
  %108 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %110 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call117 = call i32 @gx_stroke_path_expansion(%struct.gs_imager_state_s* %109, %struct.gx_path_s* %110, %struct.gs_fixed_point_s* %expansion) #6
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.104
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 -2147483648, i32* %y, align 4, !tbaa !81
  %p120 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p120, i32 0, i32 0
  store i32 -2147483648, i32* %x, align 4, !tbaa !82
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  store i32 2147483647, i32* %y121, align 4, !tbaa !83
  %q122 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q122, i32 0, i32 0
  store i32 2147483647, i32* %x123, align 4, !tbaa !84
  br label %if.end

if.else:                                          ; preds = %cond.end.104
  %111 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %111, i32 0, i32 28
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %112 = load i32, i32* %x124, align 4, !tbaa !85
  %x125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %113 = load i32, i32* %x125, align 4, !tbaa !39
  %add = add nsw i32 %113, %112
  store i32 %add, i32* %x125, align 4, !tbaa !39
  %114 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust126 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %114, i32 0, i32 28
  %y127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust126, i32 0, i32 1
  %115 = load i32, i32* %y127, align 4, !tbaa !86
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %116 = load i32, i32* %y128, align 4, !tbaa !38
  %add129 = add nsw i32 %116, %115
  store i32 %add129, i32* %y128, align 4, !tbaa !38
  %p130 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p130, i32 0, i32 0
  %117 = load i32, i32* %x131, align 4, !tbaa !82
  %x132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %118 = load i32, i32* %x132, align 4, !tbaa !39
  %add133 = add nsw i32 -2147483648, %118
  %cmp134 = icmp slt i32 %117, %add133
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %if.else
  br label %cond.end.142

cond.false.137:                                   ; preds = %if.else
  %p138 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p138, i32 0, i32 0
  %119 = load i32, i32* %x139, align 4, !tbaa !82
  %x140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %120 = load i32, i32* %x140, align 4, !tbaa !39
  %sub141 = sub nsw i32 %119, %120
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.137, %cond.true.136
  %cond143 = phi i32 [ -2147483648, %cond.true.136 ], [ %sub141, %cond.false.137 ]
  %p144 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p144, i32 0, i32 0
  store i32 %cond143, i32* %x145, align 4, !tbaa !82
  %p146 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y147 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p146, i32 0, i32 1
  %121 = load i32, i32* %y147, align 4, !tbaa !81
  %y148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %122 = load i32, i32* %y148, align 4, !tbaa !38
  %add149 = add nsw i32 -2147483648, %122
  %cmp150 = icmp slt i32 %121, %add149
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.end.142
  br label %cond.end.158

cond.false.153:                                   ; preds = %cond.end.142
  %p154 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p154, i32 0, i32 1
  %123 = load i32, i32* %y155, align 4, !tbaa !81
  %y156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %124 = load i32, i32* %y156, align 4, !tbaa !38
  %sub157 = sub nsw i32 %123, %124
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.153, %cond.true.152
  %cond159 = phi i32 [ -2147483648, %cond.true.152 ], [ %sub157, %cond.false.153 ]
  %p160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p160, i32 0, i32 1
  store i32 %cond159, i32* %y161, align 4, !tbaa !81
  %q162 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q162, i32 0, i32 0
  %125 = load i32, i32* %x163, align 4, !tbaa !84
  %x164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %126 = load i32, i32* %x164, align 4, !tbaa !39
  %sub165 = sub nsw i32 2147483647, %126
  %cmp166 = icmp sgt i32 %125, %sub165
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.end.158
  br label %cond.end.174

cond.false.169:                                   ; preds = %cond.end.158
  %q170 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q170, i32 0, i32 0
  %127 = load i32, i32* %x171, align 4, !tbaa !84
  %x172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %128 = load i32, i32* %x172, align 4, !tbaa !39
  %add173 = add nsw i32 %127, %128
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.169, %cond.true.168
  %cond175 = phi i32 [ 2147483647, %cond.true.168 ], [ %add173, %cond.false.169 ]
  %q176 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q176, i32 0, i32 0
  store i32 %cond175, i32* %x177, align 4, !tbaa !84
  %q178 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q178, i32 0, i32 1
  %129 = load i32, i32* %y179, align 4, !tbaa !83
  %y180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %130 = load i32, i32* %y180, align 4, !tbaa !38
  %sub181 = sub nsw i32 2147483647, %130
  %cmp182 = icmp sgt i32 %129, %sub181
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.end.174
  br label %cond.end.190

cond.false.185:                                   ; preds = %cond.end.174
  %q186 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q186, i32 0, i32 1
  %131 = load i32, i32* %y187, align 4, !tbaa !83
  %y188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %132 = load i32, i32* %y188, align 4, !tbaa !38
  %add189 = add nsw i32 %131, %132
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.185, %cond.true.184
  %cond191 = phi i32 [ 2147483647, %cond.true.184 ], [ %add189, %cond.false.185 ]
  %q192 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y193 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q192, i32 0, i32 1
  store i32 %cond191, i32* %y193, align 4, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %cond.end.190, %if.then
  %133 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool194 = icmp ne %struct.gx_clip_path_s* %134, null
  br i1 %tobool194, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.end
  %135 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call196 = call i32 @gx_cpath_inner_box(%struct.gx_clip_path_s* %135, %struct.gs_fixed_rect_s* %cbox) #6
  br label %if.end.203

if.else.197:                                      ; preds = %if.end
  %136 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %tobool198 = icmp ne %struct.gx_device_color_s* %136, null
  br i1 %tobool198, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.else.197
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs200 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %137, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs200, i32 0, i32 36
  %138 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !87
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void %138(%struct.gx_device_s* %139, %struct.gs_fixed_rect_s* %cbox) #6
  br label %if.end.202

if.else.201:                                      ; preds = %if.else.197
  %140 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  %141 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 16, i32 4, i1 false), !tbaa.struct !88
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.201, %if.then.199
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.195
  %q204 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q204, i32 0, i32 1
  %142 = load i32, i32* %y205, align 4, !tbaa !83
  %q206 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y207 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q206, i32 0, i32 1
  %143 = load i32, i32* %y207, align 4, !tbaa !83
  %cmp208 = icmp sle i32 %142, %143
  br i1 %cmp208, label %land.lhs.true.210, label %if.then.231

land.lhs.true.210:                                ; preds = %if.end.203
  %q211 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x212 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q211, i32 0, i32 0
  %144 = load i32, i32* %x212, align 4, !tbaa !84
  %q213 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q213, i32 0, i32 0
  %145 = load i32, i32* %x214, align 4, !tbaa !84
  %cmp215 = icmp sle i32 %144, %145
  br i1 %cmp215, label %land.lhs.true.217, label %if.then.231

land.lhs.true.217:                                ; preds = %land.lhs.true.210
  %p218 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p218, i32 0, i32 1
  %146 = load i32, i32* %y219, align 4, !tbaa !81
  %p220 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y221 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p220, i32 0, i32 1
  %147 = load i32, i32* %y221, align 4, !tbaa !81
  %cmp222 = icmp sge i32 %146, %147
  br i1 %cmp222, label %land.lhs.true.224, label %if.then.231

land.lhs.true.224:                                ; preds = %land.lhs.true.217
  %p225 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x226 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p225, i32 0, i32 0
  %148 = load i32, i32* %x226, align 4, !tbaa !82
  %p227 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p227, i32 0, i32 0
  %149 = load i32, i32* %x228, align 4, !tbaa !82
  %cmp229 = icmp sge i32 %148, %149
  br i1 %cmp229, label %if.end.361, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.224, %land.lhs.true.217, %land.lhs.true.210, %if.end.203
  %150 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %150) #1
  %151 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool232 = icmp ne %struct.gx_clip_path_s* %151, null
  br i1 %tobool232, label %if.then.233, label %if.else.286

if.then.233:                                      ; preds = %if.then.231
  %152 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call234 = call i32 @gx_cpath_outer_box(%struct.gx_clip_path_s* %152, %struct.gs_fixed_rect_s* %bbox) #6
  br label %do.body

do.body:                                          ; preds = %if.then.233
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.235

do.body.235:                                      ; preds = %do.end
  %p236 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x237 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p236, i32 0, i32 0
  %153 = load i32, i32* %x237, align 4, !tbaa !82
  %p238 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x239 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p238, i32 0, i32 0
  %154 = load i32, i32* %x239, align 4, !tbaa !82
  %cmp240 = icmp sgt i32 %153, %154
  br i1 %cmp240, label %if.then.242, label %if.end.247

if.then.242:                                      ; preds = %do.body.235
  %p243 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p243, i32 0, i32 0
  %155 = load i32, i32* %x244, align 4, !tbaa !82
  %p245 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x246 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p245, i32 0, i32 0
  store i32 %155, i32* %x246, align 4, !tbaa !82
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.242, %do.body.235
  %q248 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x249 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q248, i32 0, i32 0
  %156 = load i32, i32* %x249, align 4, !tbaa !84
  %q250 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x251 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q250, i32 0, i32 0
  %157 = load i32, i32* %x251, align 4, !tbaa !84
  %cmp252 = icmp slt i32 %156, %157
  br i1 %cmp252, label %if.then.254, label %if.end.259

if.then.254:                                      ; preds = %if.end.247
  %q255 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x256 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q255, i32 0, i32 0
  %158 = load i32, i32* %x256, align 4, !tbaa !84
  %q257 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q257, i32 0, i32 0
  store i32 %158, i32* %x258, align 4, !tbaa !84
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.254, %if.end.247
  %p260 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y261 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p260, i32 0, i32 1
  %159 = load i32, i32* %y261, align 4, !tbaa !81
  %p262 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p262, i32 0, i32 1
  %160 = load i32, i32* %y263, align 4, !tbaa !81
  %cmp264 = icmp sgt i32 %159, %160
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.259
  %p267 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y268 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p267, i32 0, i32 1
  %161 = load i32, i32* %y268, align 4, !tbaa !81
  %p269 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y270 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p269, i32 0, i32 1
  store i32 %161, i32* %y270, align 4, !tbaa !81
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.end.259
  %q272 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y273 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q272, i32 0, i32 1
  %162 = load i32, i32* %y273, align 4, !tbaa !83
  %q274 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y275 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q274, i32 0, i32 1
  %163 = load i32, i32* %y275, align 4, !tbaa !83
  %cmp276 = icmp slt i32 %162, %163
  br i1 %cmp276, label %if.then.278, label %if.end.283

if.then.278:                                      ; preds = %if.end.271
  %q279 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q279, i32 0, i32 1
  %164 = load i32, i32* %y280, align 4, !tbaa !83
  %q281 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y282 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q281, i32 0, i32 1
  store i32 %164, i32* %y282, align 4, !tbaa !83
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.278, %if.end.271
  br label %do.cond.284

do.cond.284:                                      ; preds = %if.end.283
  br label %do.end.285

do.end.285:                                       ; preds = %do.cond.284
  br label %if.end.338

if.else.286:                                      ; preds = %if.then.231
  br label %do.body.287

do.body.287:                                      ; preds = %if.else.286
  %p288 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x289 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p288, i32 0, i32 0
  %165 = load i32, i32* %x289, align 4, !tbaa !82
  %p290 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x291 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p290, i32 0, i32 0
  %166 = load i32, i32* %x291, align 4, !tbaa !82
  %cmp292 = icmp sgt i32 %165, %166
  br i1 %cmp292, label %if.then.294, label %if.end.299

if.then.294:                                      ; preds = %do.body.287
  %p295 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x296 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p295, i32 0, i32 0
  %167 = load i32, i32* %x296, align 4, !tbaa !82
  %p297 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x298 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p297, i32 0, i32 0
  store i32 %167, i32* %x298, align 4, !tbaa !82
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.294, %do.body.287
  %q300 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x301 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q300, i32 0, i32 0
  %168 = load i32, i32* %x301, align 4, !tbaa !84
  %q302 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x303 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q302, i32 0, i32 0
  %169 = load i32, i32* %x303, align 4, !tbaa !84
  %cmp304 = icmp slt i32 %168, %169
  br i1 %cmp304, label %if.then.306, label %if.end.311

if.then.306:                                      ; preds = %if.end.299
  %q307 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x308 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q307, i32 0, i32 0
  %170 = load i32, i32* %x308, align 4, !tbaa !84
  %q309 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q309, i32 0, i32 0
  store i32 %170, i32* %x310, align 4, !tbaa !84
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.306, %if.end.299
  %p312 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y313 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p312, i32 0, i32 1
  %171 = load i32, i32* %y313, align 4, !tbaa !81
  %p314 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y315 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p314, i32 0, i32 1
  %172 = load i32, i32* %y315, align 4, !tbaa !81
  %cmp316 = icmp sgt i32 %171, %172
  br i1 %cmp316, label %if.then.318, label %if.end.323

if.then.318:                                      ; preds = %if.end.311
  %p319 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y320 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p319, i32 0, i32 1
  %173 = load i32, i32* %y320, align 4, !tbaa !81
  %p321 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y322 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p321, i32 0, i32 1
  store i32 %173, i32* %y322, align 4, !tbaa !81
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.318, %if.end.311
  %q324 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y325 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q324, i32 0, i32 1
  %174 = load i32, i32* %y325, align 4, !tbaa !83
  %q326 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y327 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q326, i32 0, i32 1
  %175 = load i32, i32* %y327, align 4, !tbaa !83
  %cmp328 = icmp slt i32 %174, %175
  br i1 %cmp328, label %if.then.330, label %if.end.335

if.then.330:                                      ; preds = %if.end.323
  %q331 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y332 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q331, i32 0, i32 1
  %176 = load i32, i32* %y332, align 4, !tbaa !83
  %q333 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y334 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q333, i32 0, i32 1
  store i32 %176, i32* %y334, align 4, !tbaa !83
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.330, %if.end.323
  br label %do.cond.336

do.cond.336:                                      ; preds = %if.end.335
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  br label %if.end.338

if.end.338:                                       ; preds = %do.end.337, %do.end.285
  %p339 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %x340 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p339, i32 0, i32 0
  %177 = load i32, i32* %x340, align 4, !tbaa !82
  %q341 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %x342 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q341, i32 0, i32 0
  %178 = load i32, i32* %x342, align 4, !tbaa !84
  %cmp343 = icmp sge i32 %177, %178
  br i1 %cmp343, label %if.then.352, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.end.338
  %p346 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 0
  %y347 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p346, i32 0, i32 1
  %179 = load i32, i32* %y347, align 4, !tbaa !81
  %q348 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %ibox, i32 0, i32 1
  %y349 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q348, i32 0, i32 1
  %180 = load i32, i32* %y349, align 4, !tbaa !83
  %cmp350 = icmp sge i32 %179, %180
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %lor.lhs.false.345, %if.end.338
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.353:                                       ; preds = %lor.lhs.false.345
  %181 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool354 = icmp ne %struct.gx_clip_path_s* %181, null
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.360

land.lhs.true.355:                                ; preds = %if.end.353
  %182 = load i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc, align 8, !tbaa !1
  %cmp356 = icmp eq i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* %182, @stroke_fill
  br i1 %cmp356, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %land.lhs.true.355
  %183 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %183, %struct.gx_device_s* %184) #6
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %max_fill_band = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %185, i32 0, i32 10
  %186 = load i32, i32* %max_fill_band, align 4, !tbaa !89
  %max_fill_band359 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %cdev, i32 0, i32 10
  store i32 %186, i32* %max_fill_band359, align 4, !tbaa !90
  %187 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  store %struct.gx_device_s* %187, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %land.lhs.true.355, %if.end.353
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.360, %if.then.352
  %188 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %188) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1574 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.361

if.end.361:                                       ; preds = %cleanup.cont, %land.lhs.true.224
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 0
  store i32 -1, i32* %rule, align 4, !tbaa !95
  %189 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %189, i32 0, i32 27
  %190 = load float, float* %flatness, align 4, !tbaa !97
  %flatness362 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 2
  store float %190, float* %flatness362, align 4, !tbaa !98
  %191 = load float, float* %line_width, align 4, !tbaa !54
  %cmp363 = fcmp olt float %191, 0.000000e+00
  br i1 %cmp363, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.end.361
  %192 = load float, float* %line_width, align 4, !tbaa !54
  %sub366 = fsub float -0.000000e+00, %192
  store float %sub366, float* %line_width, align 4, !tbaa !54
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.365, %if.end.361
  %193 = load float, float* %line_width, align 4, !tbaa !54
  %conv368 = fpext float %193 to double
  %mul369 = fmul double %conv368, 2.560000e+02
  store double %mul369, double* %line_width_and_scale, align 8, !tbaa !30
  %194 = load float, float* %line_width, align 4, !tbaa !54
  %conv370 = fpext float %194 to double
  %cmp371 = fcmp oeq double %conv370, 0.000000e+00
  br i1 %cmp371, label %if.then.373, label %if.else.374

if.then.373:                                      ; preds = %if.end.367
  store i32 1, i32* %always_thin, align 4, !tbaa !34
  br label %if.end.435

if.else.374:                                      ; preds = %if.end.367
  %195 = bitcast float* %xa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = bitcast float* %ya to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  %197 = load i32, i32* %orient, align 4, !tbaa !56
  switch i32 %197, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.375
  ]

sw.bb:                                            ; preds = %if.else.374
  %198 = load float, float* %xx, align 4, !tbaa !54
  store float %198, float* %xa, align 4, !tbaa !54
  %199 = load float, float* %yy, align 4, !tbaa !54
  store float %199, float* %ya, align 4, !tbaa !54
  br label %sat

sw.bb.375:                                        ; preds = %if.else.374
  %200 = load float, float* %xy, align 4, !tbaa !54
  store float %200, float* %xa, align 4, !tbaa !54
  %201 = load float, float* %yx, align 4, !tbaa !54
  store float %201, float* %ya, align 4, !tbaa !54
  br label %sat

sat:                                              ; preds = %sw.bb.375, %sw.bb
  %202 = load float, float* %xa, align 4, !tbaa !54
  %cmp376 = fcmp olt float %202, 0.000000e+00
  br i1 %cmp376, label %if.then.378, label %if.end.380

if.then.378:                                      ; preds = %sat
  %203 = load float, float* %xa, align 4, !tbaa !54
  %sub379 = fsub float -0.000000e+00, %203
  store float %sub379, float* %xa, align 4, !tbaa !54
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.378, %sat
  %204 = load float, float* %ya, align 4, !tbaa !54
  %cmp381 = fcmp olt float %204, 0.000000e+00
  br i1 %cmp381, label %if.then.383, label %if.end.385

if.then.383:                                      ; preds = %if.end.380
  %205 = load float, float* %ya, align 4, !tbaa !54
  %sub384 = fsub float -0.000000e+00, %205
  store float %sub384, float* %ya, align 4, !tbaa !54
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.383, %if.end.380
  %206 = load float, float* %xa, align 4, !tbaa !54
  %207 = load float, float* %ya, align 4, !tbaa !54
  %cmp386 = fcmp ogt float %206, %207
  br i1 %cmp386, label %cond.true.388, label %cond.false.389

cond.true.388:                                    ; preds = %if.end.385
  %208 = load float, float* %xa, align 4, !tbaa !54
  br label %cond.end.390

cond.false.389:                                   ; preds = %if.end.385
  %209 = load float, float* %ya, align 4, !tbaa !54
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.389, %cond.true.388
  %cond391 = phi float [ %208, %cond.true.388 ], [ %209, %cond.false.389 ]
  %210 = load float, float* %line_width, align 4, !tbaa !54
  %mul392 = fmul float %cond391, %210
  %conv393 = fpext float %mul392 to double
  %cmp394 = fcmp olt double %conv393, 5.000000e-01
  %conv395 = zext i1 %cmp394 to i32
  store i32 %conv395, i32* %always_thin, align 4, !tbaa !34
  %211 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool396 = icmp ne i32 %211, 0
  br i1 %tobool396, label %if.end.402, label %land.lhs.true.397

land.lhs.true.397:                                ; preds = %cond.end.390
  %212 = load i32, i32* %uniform, align 4, !tbaa !34
  %tobool398 = icmp ne i32 %212, 0
  br i1 %tobool398, label %if.then.399, label %if.end.402

if.then.399:                                      ; preds = %land.lhs.true.397
  %213 = load double, double* %line_width_and_scale, align 8, !tbaa !30
  %214 = load float, float* %xa, align 4, !tbaa !54
  %conv400 = fpext float %214 to double
  %mul401 = fmul double %213, %conv400
  store double %mul401, double* %device_line_width_scale, align 8, !tbaa !30
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.399, %land.lhs.true.397, %cond.end.390
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.374
  %215 = bitcast double* %max_rr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #1
  %216 = load float, float* %xx, align 4, !tbaa !54
  %217 = load float, float* %xx, align 4, !tbaa !54
  %mul403 = fmul float %216, %217
  %218 = load float, float* %xy, align 4, !tbaa !54
  %219 = load float, float* %xy, align 4, !tbaa !54
  %mul404 = fmul float %218, %219
  %add405 = fadd float %mul403, %mul404
  %220 = load float, float* %yx, align 4, !tbaa !54
  %221 = load float, float* %yx, align 4, !tbaa !54
  %mul406 = fmul float %220, %221
  %add407 = fadd float %add405, %mul406
  %222 = load float, float* %yy, align 4, !tbaa !54
  %223 = load float, float* %yy, align 4, !tbaa !54
  %mul408 = fmul float %222, %223
  %add409 = fadd float %add407, %mul408
  %conv410 = fpext float %add409 to double
  %224 = load float, float* %xy, align 4, !tbaa !54
  %225 = load float, float* %yx, align 4, !tbaa !54
  %add411 = fadd float %224, %225
  %226 = load float, float* %xy, align 4, !tbaa !54
  %227 = load float, float* %yx, align 4, !tbaa !54
  %add412 = fadd float %226, %227
  %mul413 = fmul float %add411, %add412
  %228 = load float, float* %xx, align 4, !tbaa !54
  %229 = load float, float* %yy, align 4, !tbaa !54
  %sub414 = fsub float %228, %229
  %230 = load float, float* %xx, align 4, !tbaa !54
  %231 = load float, float* %yy, align 4, !tbaa !54
  %sub415 = fsub float %230, %231
  %mul416 = fmul float %sub414, %sub415
  %add417 = fadd float %mul413, %mul416
  %232 = load float, float* %xy, align 4, !tbaa !54
  %233 = load float, float* %yx, align 4, !tbaa !54
  %sub418 = fsub float %232, %233
  %234 = load float, float* %xy, align 4, !tbaa !54
  %235 = load float, float* %yx, align 4, !tbaa !54
  %sub419 = fsub float %234, %235
  %mul420 = fmul float %sub418, %sub419
  %236 = load float, float* %xx, align 4, !tbaa !54
  %237 = load float, float* %yy, align 4, !tbaa !54
  %add421 = fadd float %236, %237
  %238 = load float, float* %xx, align 4, !tbaa !54
  %239 = load float, float* %yy, align 4, !tbaa !54
  %add422 = fadd float %238, %239
  %mul423 = fmul float %add421, %add422
  %add424 = fadd float %mul420, %mul423
  %mul425 = fmul float %add417, %add424
  %conv426 = fpext float %mul425 to double
  %call427 = call double @sqrt(double %conv426) #7
  %add428 = fadd double %conv410, %call427
  %div = fdiv double %add428, 2.000000e+00
  store double %div, double* %max_rr, align 8, !tbaa !30
  %240 = load double, double* %max_rr, align 8, !tbaa !30
  %241 = load float, float* %line_width, align 4, !tbaa !54
  %conv429 = fpext float %241 to double
  %mul430 = fmul double %240, %conv429
  %242 = load float, float* %line_width, align 4, !tbaa !54
  %conv431 = fpext float %242 to double
  %mul432 = fmul double %mul430, %conv431
  %cmp433 = fcmp olt double %mul432, 2.500000e-01
  %conv434 = zext i1 %cmp433 to i32
  store i32 %conv434, i32* %always_thin, align 4, !tbaa !34
  %243 = bitcast double* %max_rr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.402
  %244 = bitcast float* %ya to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast float* %xa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  br label %if.end.435

if.end.435:                                       ; preds = %sw.epilog, %if.then.373
  br label %do.body.436

do.body.436:                                      ; preds = %if.end.435
  br label %do.cond.437

do.cond.437:                                      ; preds = %do.body.436
  br label %do.end.438

do.end.438:                                       ; preds = %do.cond.437
  %246 = load double, double* %device_dot_length, align 8, !tbaa !30
  %cmp439 = fcmp une double %246, 0.000000e+00
  br i1 %cmp439, label %if.then.441, label %if.end.455

if.then.441:                                      ; preds = %do.end.438
  %247 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %247) #1
  %248 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #1
  %249 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dot_length_absolute = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %249, i32 0, i32 9
  %250 = load i32, i32* %dot_length_absolute, align 4, !tbaa !99
  %tobool442 = icmp ne i32 %250, 0
  br i1 %tobool442, label %if.then.443, label %if.else.444

if.then.443:                                      ; preds = %if.then.441
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gs_deviceinitialmatrix(%struct.gx_device_s* %251, %struct.gs_matrix_s* %mat) #6
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %if.end.446

if.else.444:                                      ; preds = %if.then.441
  %252 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm445 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %252, i32 0, i32 5
  %253 = bitcast %struct.gs_matrix_fixed_s* %ctm445 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %253, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  br label %if.end.446

if.end.446:                                       ; preds = %if.else.444, %if.then.443
  %254 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %xy447 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %254, i32 0, i32 1
  %255 = load float, float* %xy447, align 4, !tbaa !77
  %conv448 = fpext float %255 to double
  %call449 = call double @fabs(double %conv448) #5
  %256 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %yy450 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %256, i32 0, i32 3
  %257 = load float, float* %yy450, align 4, !tbaa !80
  %conv451 = fpext float %257 to double
  %call452 = call double @fabs(double %conv451) #5
  %add453 = fadd double %call449, %call452
  %258 = load double, double* %device_dot_length, align 8, !tbaa !30
  %mul454 = fmul double %258, %add453
  store double %mul454, double* %device_dot_length, align 8, !tbaa !30
  %259 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %260) #1
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.446, %do.end.438
  %261 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %261, i32 0, i32 13
  %262 = load i32, i32* %curve_count, align 4, !tbaa !50
  %cmp456 = icmp ne i32 %262, 0
  br i1 %cmp456, label %if.else.465, label %land.lhs.true.458

land.lhs.true.458:                                ; preds = %if.end.455
  %263 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call459 = call i32 @gx_path_has_long_segments(%struct.gx_path_s* %263) #6
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.else.465, label %if.then.461

if.then.461:                                      ; preds = %land.lhs.true.458
  %264 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %264, i32 0, i32 3
  %265 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %265, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %266 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !14
  %tobool462 = icmp ne %struct.subpath_s* %266, null
  br i1 %tobool462, label %if.end.464, label %if.then.463

if.then.463:                                      ; preds = %if.then.461
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1574

if.end.464:                                       ; preds = %if.then.461
  %267 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %267, %struct.gx_path_s** %spath, align 8, !tbaa !1
  br label %if.end.478

if.else.465:                                      ; preds = %land.lhs.true.458, %if.end.455
  %268 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory466 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %268, i32 0, i32 1
  %269 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory466, align 8, !tbaa !100
  %call467 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %fpath, %struct.gx_path_s* null, %struct.gs_memory_s* %269) #6
  %270 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %271 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %flatness468 = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %271, i32 0, i32 0
  %272 = load float, float* %flatness468, align 4, !tbaa !101
  %mul469 = fmul float %272, 2.560000e+02
  %conv470 = fptosi float %mul469 to i32
  %273 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %274 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %accurate_curves = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %274, i32 0, i32 30
  %275 = load i32, i32* %accurate_curves, align 4, !tbaa !102
  %tobool471 = icmp ne i32 %275, 0
  %cond472 = select i1 %tobool471, i32 6, i32 4
  %call473 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %270, %struct.gx_path_s* %fpath, i32 %conv470, %struct.gs_imager_state_s* %273, i32 %cond472) #6
  store i32 %call473, i32* %code, align 4, !tbaa !34
  %cmp474 = icmp slt i32 %call473, 0
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %if.else.465
  %276 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %276, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1574

if.end.477:                                       ; preds = %if.else.465
  store %struct.gx_path_s* %fpath, %struct.gx_path_s** %spath, align 8, !tbaa !1
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.end.464
  %277 = load i32, i32* %dash_count, align 4, !tbaa !34
  %tobool479 = icmp ne i32 %277, 0
  br i1 %tobool479, label %if.then.480, label %if.end.552

if.then.480:                                      ; preds = %if.end.478
  %278 = bitcast float* %max_dash_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %278) #1
  store float 0.000000e+00, float* %max_dash_len, align 4, !tbaa !54
  %279 = bitcast float* %expand_squared to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #1
  %280 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #1
  %281 = bitcast float* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  %282 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust481 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %282, i32 0, i32 28
  %x482 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust481, i32 0, i32 0
  %283 = load i32, i32* %x482, align 4, !tbaa !85
  %conv483 = sitofp i32 %283 to float
  store float %conv483, float* %adjust, align 4, !tbaa !54
  %284 = load float, float* %adjust, align 4, !tbaa !54
  %285 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust484 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %285, i32 0, i32 28
  %y485 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust484, i32 0, i32 1
  %286 = load i32, i32* %y485, align 4, !tbaa !86
  %conv486 = sitofp i32 %286 to float
  %cmp487 = fcmp ogt float %284, %conv486
  br i1 %cmp487, label %if.then.489, label %if.end.493

if.then.489:                                      ; preds = %if.then.480
  %287 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust490 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %287, i32 0, i32 28
  %y491 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust490, i32 0, i32 1
  %288 = load i32, i32* %y491, align 4, !tbaa !86
  %conv492 = sitofp i32 %288 to float
  store float %conv492, float* %adjust, align 4, !tbaa !54
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.489, %if.then.480
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.493
  %289 = load i32, i32* %i, align 4, !tbaa !34
  %290 = load i32, i32* %dash_count, align 4, !tbaa !34
  %cmp494 = icmp slt i32 %289, %290
  br i1 %cmp494, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %291 = load float, float* %max_dash_len, align 4, !tbaa !54
  %292 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %292 to i64
  %293 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash496 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %293, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash496, i32 0, i32 0
  %294 = load float*, float** %pattern, align 8, !tbaa !103
  %arrayidx = getelementptr inbounds float, float* %294, i64 %idxprom
  %295 = load float, float* %arrayidx, align 4, !tbaa !54
  %cmp497 = fcmp olt float %291, %295
  br i1 %cmp497, label %if.then.499, label %if.end.504

if.then.499:                                      ; preds = %for.body
  %296 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom500 = sext i32 %296 to i64
  %297 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash501 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %297, i32 0, i32 11
  %pattern502 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash501, i32 0, i32 0
  %298 = load float*, float** %pattern502, align 8, !tbaa !103
  %arrayidx503 = getelementptr inbounds float, float* %298, i64 %idxprom500
  %299 = load float, float* %arrayidx503, align 4, !tbaa !54
  store float %299, float* %max_dash_len, align 4, !tbaa !54
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.499, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.504
  %300 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add nsw i32 %300, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %301 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm505 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %301, i32 0, i32 5
  %xx506 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm505, i32 0, i32 0
  %302 = load float, float* %xx506, align 4, !tbaa !15
  %303 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm507 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %303, i32 0, i32 5
  %yy508 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm507, i32 0, i32 3
  %304 = load float, float* %yy508, align 4, !tbaa !32
  %mul509 = fmul float %302, %304
  %305 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm510 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %305, i32 0, i32 5
  %xy511 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm510, i32 0, i32 1
  %306 = load float, float* %xy511, align 4, !tbaa !31
  %307 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm512 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %307, i32 0, i32 5
  %yx513 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm512, i32 0, i32 2
  %308 = load float, float* %yx513, align 4, !tbaa !29
  %mul514 = fmul float %306, %308
  %sub515 = fsub float %mul509, %mul514
  store float %sub515, float* %expand_squared, align 4, !tbaa !54
  %309 = load float, float* %expand_squared, align 4, !tbaa !54
  %cmp516 = fcmp olt float %309, 0.000000e+00
  br i1 %cmp516, label %if.then.518, label %if.end.520

if.then.518:                                      ; preds = %for.end
  %310 = load float, float* %expand_squared, align 4, !tbaa !54
  %sub519 = fsub float -0.000000e+00, %310
  store float %sub519, float* %expand_squared, align 4, !tbaa !54
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.518, %for.end
  %311 = load float, float* %max_dash_len, align 4, !tbaa !54
  %312 = load float, float* %max_dash_len, align 4, !tbaa !54
  %mul521 = fmul float %311, %312
  %313 = load float, float* %expand_squared, align 4, !tbaa !54
  %mul522 = fmul float %313, %mul521
  store float %mul522, float* %expand_squared, align 4, !tbaa !54
  %314 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params523 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %314, i32 0, i32 3
  %half_width524 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params523, i32 0, i32 0
  %315 = load float, float* %half_width524, align 4, !tbaa !33
  %cmp525 = fcmp ogt float %315, 1.000000e+00
  br i1 %cmp525, label %if.then.527, label %if.end.531

if.then.527:                                      ; preds = %if.end.520
  %316 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params528 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %316, i32 0, i32 3
  %half_width529 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params528, i32 0, i32 0
  %317 = load float, float* %half_width529, align 4, !tbaa !33
  %318 = load float, float* %adjust, align 4, !tbaa !54
  %div530 = fdiv float %318, %317
  store float %div530, float* %adjust, align 4, !tbaa !54
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.527, %if.end.520
  %319 = load float, float* %expand_squared, align 4, !tbaa !54
  %mul532 = fmul float %319, 6.553600e+04
  %320 = load float, float* %adjust, align 4, !tbaa !54
  %321 = load float, float* %adjust, align 4, !tbaa !54
  %mul533 = fmul float %320, %321
  %cmp534 = fcmp oge float %mul532, %mul533
  br i1 %cmp534, label %if.then.536, label %if.else.544

if.then.536:                                      ; preds = %if.end.531
  %322 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory537 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %322, i32 0, i32 1
  %323 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory537, align 8, !tbaa !100
  %call538 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %dpath, %struct.gx_path_s* null, %struct.gs_memory_s* %323) #6
  %324 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %325 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call539 = call i32 @gx_path_add_dash_expansion(%struct.gx_path_s* %324, %struct.gx_path_s* %dpath, %struct.gs_imager_state_s* %325) #6
  store i32 %call539, i32* %code, align 4, !tbaa !34
  %326 = load i32, i32* %code, align 4, !tbaa !34
  %cmp540 = icmp slt i32 %326, 0
  br i1 %cmp540, label %if.then.542, label %if.end.543

if.then.542:                                      ; preds = %if.then.536
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.546

if.end.543:                                       ; preds = %if.then.536
  store %struct.gx_path_s* %dpath, %struct.gx_path_s** %spath, align 8, !tbaa !1
  br label %if.end.545

if.else.544:                                      ; preds = %if.end.531
  store i32 0, i32* %dash_count, align 4, !tbaa !34
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.544, %if.end.543
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.546

cleanup.546:                                      ; preds = %if.then.542, %if.end.545
  %327 = bitcast float* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast float* %expand_squared to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast float* %max_dash_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %cleanup.dest.550 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.550, label %cleanup.1574 [
    i32 0, label %cleanup.cont.551
    i32 15, label %exf
  ]

cleanup.cont.551:                                 ; preds = %cleanup.546
  br label %if.end.552

if.end.552:                                       ; preds = %cleanup.cont.551, %if.end.478
  %331 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp553 = icmp eq %struct.gx_path_s* %331, null
  br i1 %cmp553, label %if.then.555, label %if.end.558

if.then.555:                                      ; preds = %if.end.552
  store %struct.gx_path_s* %stroke_path_body, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %332 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory556 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %332, i32 0, i32 1
  %333 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory556, align 8, !tbaa !100
  %call557 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_body, %struct.gx_path_s* null, %struct.gs_memory_s* %333) #6
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.555, %if.end.552
  %334 = load i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc, align 8, !tbaa !1
  %cmp559 = icmp eq i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)* %334, @stroke_add_fast
  br i1 %cmp559, label %if.then.561, label %if.end.564

if.then.561:                                      ; preds = %if.end.558
  store %struct.gx_path_s* %stroke_path_reverse, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %335 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory562 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %335, i32 0, i32 1
  %336 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory562, align 8, !tbaa !100
  %call563 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_reverse, %struct.gx_path_s* null, %struct.gs_memory_s* %336) #6
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.561, %if.end.558
  %337 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %segments565 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %337, i32 0, i32 3
  %338 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments565, align 8, !tbaa !5
  %contents566 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %338, i32 0, i32 1
  %subpath_first567 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents566, i32 0, i32 0
  %339 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first567, align 8, !tbaa !14
  store %struct.subpath_s* %339, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %for.cond.568

for.cond.568:                                     ; preds = %cleanup.cont.1492, %if.end.564
  %340 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %cmp569 = icmp ne %struct.subpath_s* %340, null
  br i1 %cmp569, label %for.body.571, label %for.end.1493

for.body.571:                                     ; preds = %for.cond.568
  %341 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %341) #1
  store i32 0, i32* %index, align 4, !tbaa !34
  %342 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %342) #1
  %343 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %344 = bitcast %struct.subpath_s* %343 to %struct.segment_s*
  store %struct.segment_s* %344, %struct.segment_s** %pseg, align 8, !tbaa !1
  %345 = bitcast i32* %x572 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #1
  %346 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %346, i32 0, i32 4
  %x573 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %347 = load i32, i32* %x573, align 4, !tbaa !46
  store i32 %347, i32* %x572, align 4, !tbaa !34
  %348 = bitcast i32* %y574 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %348) #1
  %349 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt575 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %349, i32 0, i32 4
  %y576 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt575, i32 0, i32 1
  %350 = load i32, i32* %y576, align 4, !tbaa !47
  store i32 %350, i32* %y574, align 4, !tbaa !34
  %351 = bitcast i32* %is_closed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %351) #1
  %352 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %353 = bitcast %struct.segment_s* %352 to %struct.subpath_s*
  %is_closed577 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %353, i32 0, i32 8
  %354 = load i8, i8* %is_closed577, align 1, !tbaa !45
  %conv578 = sext i8 %354 to i32
  store i32 %conv578, i32* %is_closed, align 4, !tbaa !34
  %355 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.lifetime.start(i64 84, i8* %355) #1
  %356 = bitcast %struct.partial_line_s* %pl_prev to i8*
  call void @llvm.lifetime.start(i64 84, i8* %356) #1
  %357 = bitcast %struct.partial_line_s* %pl_first to i8*
  call void @llvm.lifetime.start(i64 84, i8* %357) #1
  %358 = bitcast i32* %zero_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #1
  store i32 1, i32* %zero_length, align 4, !tbaa !34
  store i32 1, i32* %flags, align 4, !tbaa !56
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.1236, %cleanup.1230, %for.body.571
  %359 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %359, i32 0, i32 1
  %360 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !49
  store %struct.segment_s* %360, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp579 = icmp ne %struct.segment_s* %360, null
  br i1 %cmp579, label %land.rhs.581, label %land.end.585

land.rhs.581:                                     ; preds = %while.cond
  %361 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %361, i32 0, i32 2
  %362 = load i16, i16* %type, align 2, !tbaa !40
  %conv582 = zext i16 %362 to i32
  %cmp583 = icmp ne i32 %conv582, 0
  br label %land.end.585

land.end.585:                                     ; preds = %land.rhs.581, %while.cond
  %363 = phi i1 [ false, %while.cond ], [ %cmp583, %land.rhs.581 ]
  br i1 %363, label %while.body, label %while.end.1237

while.body:                                       ; preds = %land.end.585
  %364 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %364) #1
  %365 = bitcast i32* %udx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %365) #1
  %366 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %366) #1
  %367 = bitcast i32* %udy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %367) #1
  %368 = bitcast i32* %is_dash_segment to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  store i32 0, i32* %is_dash_segment, align 4, !tbaa !34
  br label %d1

d1:                                               ; preds = %if.then.706, %while.body
  %369 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type586 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %369, i32 0, i32 2
  %370 = load i16, i16* %type586, align 2, !tbaa !40
  %conv587 = zext i16 %370 to i32
  %cmp588 = icmp eq i32 %conv587, 4
  br i1 %cmp588, label %if.then.590, label %if.else.598

if.then.590:                                      ; preds = %d1
  %371 = bitcast %struct.dash_segment** %pd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %371) #1
  %372 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %373 = bitcast %struct.segment_s* %372 to %struct.dash_segment*
  store %struct.dash_segment* %373, %struct.dash_segment** %pd, align 8, !tbaa !1
  %374 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %pt591 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %374, i32 0, i32 4
  %x592 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt591, i32 0, i32 0
  %375 = load i32, i32* %x592, align 4, !tbaa !104
  store i32 %375, i32* %sx, align 4, !tbaa !34
  %376 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %pt593 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %376, i32 0, i32 4
  %y594 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt593, i32 0, i32 1
  %377 = load i32, i32* %y594, align 4, !tbaa !106
  store i32 %377, i32* %sy, align 4, !tbaa !34
  %378 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %tangent = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %378, i32 0, i32 5
  %x595 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %379 = load i32, i32* %x595, align 4, !tbaa !107
  store i32 %379, i32* %udx, align 4, !tbaa !34
  %380 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %tangent596 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %380, i32 0, i32 5
  %y597 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent596, i32 0, i32 1
  %381 = load i32, i32* %y597, align 4, !tbaa !108
  store i32 %381, i32* %udy, align 4, !tbaa !34
  store i32 1, i32* %is_dash_segment, align 4, !tbaa !34
  %382 = bitcast %struct.dash_segment** %pd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %382) #1
  br label %if.end.618

if.else.598:                                      ; preds = %d1
  %383 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type599 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %383, i32 0, i32 2
  %384 = load i16, i16* %type599, align 2, !tbaa !40
  %conv600 = zext i16 %384 to i32
  %cmp601 = icmp eq i32 %conv600, 5
  br i1 %cmp601, label %if.then.603, label %if.else.610

if.then.603:                                      ; preds = %if.else.598
  %385 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt604 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %385, i32 0, i32 4
  %x605 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt604, i32 0, i32 0
  %386 = load i32, i32* %x605, align 4, !tbaa !46
  store i32 %386, i32* %sx, align 4, !tbaa !34
  %387 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt606 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %387, i32 0, i32 4
  %y607 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt606, i32 0, i32 1
  %388 = load i32, i32* %y607, align 4, !tbaa !47
  store i32 %388, i32* %sy, align 4, !tbaa !34
  %389 = load i32, i32* %sx, align 4, !tbaa !34
  %390 = load i32, i32* %x572, align 4, !tbaa !34
  %sub608 = sub nsw i32 %389, %390
  store i32 %sub608, i32* %udx, align 4, !tbaa !34
  %391 = load i32, i32* %sy, align 4, !tbaa !34
  %392 = load i32, i32* %y574, align 4, !tbaa !34
  %sub609 = sub nsw i32 %391, %392
  store i32 %sub609, i32* %udy, align 4, !tbaa !34
  store i32 1, i32* %is_dash_segment, align 4, !tbaa !34
  br label %if.end.617

if.else.610:                                      ; preds = %if.else.598
  %393 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt611 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %393, i32 0, i32 4
  %x612 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt611, i32 0, i32 0
  %394 = load i32, i32* %x612, align 4, !tbaa !46
  store i32 %394, i32* %sx, align 4, !tbaa !34
  %395 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt613 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %395, i32 0, i32 4
  %y614 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt613, i32 0, i32 1
  %396 = load i32, i32* %y614, align 4, !tbaa !47
  store i32 %396, i32* %sy, align 4, !tbaa !34
  %397 = load i32, i32* %sx, align 4, !tbaa !34
  %398 = load i32, i32* %x572, align 4, !tbaa !34
  %sub615 = sub nsw i32 %397, %398
  store i32 %sub615, i32* %udx, align 4, !tbaa !34
  %399 = load i32, i32* %sy, align 4, !tbaa !34
  %400 = load i32, i32* %y574, align 4, !tbaa !34
  %sub616 = sub nsw i32 %399, %400
  store i32 %sub616, i32* %udy, align 4, !tbaa !34
  br label %if.end.617

if.end.617:                                       ; preds = %if.else.610, %if.then.603
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.617, %if.then.590
  %401 = load i32, i32* %udx, align 4, !tbaa !34
  %402 = load i32, i32* %udy, align 4, !tbaa !34
  %or619 = or i32 %401, %402
  %cmp620 = icmp eq i32 %or619, 0
  %conv621 = zext i1 %cmp620 to i32
  %403 = load i32, i32* %zero_length, align 4, !tbaa !34
  %and622 = and i32 %403, %conv621
  store i32 %and622, i32* %zero_length, align 4, !tbaa !34
  %404 = load i32, i32* %x572, align 4, !tbaa !34
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p623 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x624 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p623, i32 0, i32 0
  store i32 %404, i32* %x624, align 4, !tbaa !109
  %405 = load i32, i32* %y574, align 4, !tbaa !34
  %o625 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 0
  %p626 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o625, i32 0, i32 0
  %y627 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p626, i32 0, i32 1
  store i32 %405, i32* %y627, align 4, !tbaa !112
  br label %d

d:                                                ; preds = %if.then.864, %if.then.716, %if.end.618
  %406 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.segment_s, %struct.segment_s* %406, i32 0, i32 3
  %407 = load i16, i16* %notes, align 2, !tbaa !113
  %conv628 = zext i16 %407 to i32
  %and629 = and i32 %conv628, 1
  %tobool630 = icmp ne i32 %and629, 0
  br i1 %tobool630, label %cond.true.631, label %cond.false.634

cond.true.631:                                    ; preds = %d
  %408 = load i32, i32* %flags, align 4, !tbaa !56
  %and632 = and i32 %408, 1
  %or633 = or i32 %and632, 2
  br label %cond.end.635

cond.false.634:                                   ; preds = %d
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.634, %cond.true.631
  %cond636 = phi i32 [ %or633, %cond.true.631 ], [ 0, %cond.false.634 ]
  %409 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes637 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %409, i32 0, i32 3
  %410 = load i16, i16* %notes637, align 2, !tbaa !113
  %conv638 = zext i16 %410 to i32
  %and639 = and i32 %conv638, 4
  %tobool640 = icmp ne i32 %and639, 0
  %cond641 = select i1 %tobool640, i32 4, i32 0
  %or642 = or i32 %cond636, %cond641
  %411 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes643 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %411, i32 0, i32 3
  %412 = load i16, i16* %notes643, align 2, !tbaa !113
  %conv644 = zext i16 %412 to i32
  %and645 = and i32 %conv644, 8
  %tobool646 = icmp ne i32 %and645, 0
  %cond647 = select i1 %tobool646, i32 8, i32 0
  %or648 = or i32 %or642, %cond647
  %413 = load i32, i32* %flags, align 4, !tbaa !56
  %and649 = and i32 %413, -2
  %or650 = or i32 %or648, %and649
  store i32 %or650, i32* %flags, align 4, !tbaa !56
  %414 = load i32, i32* %sx, align 4, !tbaa !34
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p651 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x652 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p651, i32 0, i32 0
  store i32 %414, i32* %x652, align 4, !tbaa !114
  %415 = load i32, i32* %sy, align 4, !tbaa !34
  %e653 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p654 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e653, i32 0, i32 0
  %y655 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p654, i32 0, i32 1
  store i32 %415, i32* %y655, align 4, !tbaa !115
  %416 = load i32, i32* %udx, align 4, !tbaa !34
  %417 = load i32, i32* %udy, align 4, !tbaa !34
  %or656 = or i32 %416, %417
  %tobool657 = icmp ne i32 %or656, 0
  br i1 %tobool657, label %lor.lhs.false.658, label %if.then.668

lor.lhs.false.658:                                ; preds = %cond.end.635
  %418 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type659 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %418, i32 0, i32 2
  %419 = load i16, i16* %type659, align 2, !tbaa !40
  %conv660 = zext i16 %419 to i32
  %cmp661 = icmp eq i32 %conv660, 4
  br i1 %cmp661, label %if.then.668, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %lor.lhs.false.658
  %420 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type664 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %420, i32 0, i32 2
  %421 = load i16, i16* %type664, align 2, !tbaa !40
  %conv665 = zext i16 %421 to i32
  %cmp666 = icmp eq i32 %conv665, 5
  br i1 %cmp666, label %if.then.668, label %if.end.872

if.then.668:                                      ; preds = %lor.lhs.false.663, %lor.lhs.false.658, %cond.end.635
  %422 = load i32, i32* %index, align 4, !tbaa !34
  %cmp669 = icmp ne i32 %422, 0
  br i1 %cmp669, label %land.lhs.true.671, label %if.end.682

land.lhs.true.671:                                ; preds = %if.then.668
  %423 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type672 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %423, i32 0, i32 2
  %424 = load i16, i16* %type672, align 2, !tbaa !40
  %conv673 = zext i16 %424 to i32
  %cmp674 = icmp ne i32 %conv673, 4
  br i1 %cmp674, label %land.lhs.true.676, label %if.end.682

land.lhs.true.676:                                ; preds = %land.lhs.true.671
  %425 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type677 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %425, i32 0, i32 2
  %426 = load i16, i16* %type677, align 2, !tbaa !40
  %conv678 = zext i16 %426 to i32
  %cmp679 = icmp ne i32 %conv678, 5
  br i1 %cmp679, label %if.then.681, label %if.end.682

if.then.681:                                      ; preds = %land.lhs.true.676
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1230

if.end.682:                                       ; preds = %land.lhs.true.676, %land.lhs.true.671, %if.then.668
  br label %while.cond.683

while.cond.683:                                   ; preds = %if.end.717, %if.end.682
  %427 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next684 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %427, i32 0, i32 1
  %428 = load %struct.segment_s*, %struct.segment_s** %next684, align 8, !tbaa !49
  store %struct.segment_s* %428, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp685 = icmp ne %struct.segment_s* %428, null
  br i1 %cmp685, label %land.rhs.687, label %land.end.692

land.rhs.687:                                     ; preds = %while.cond.683
  %429 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type688 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %429, i32 0, i32 2
  %430 = load i16, i16* %type688, align 2, !tbaa !40
  %conv689 = zext i16 %430 to i32
  %cmp690 = icmp ne i32 %conv689, 0
  br label %land.end.692

land.end.692:                                     ; preds = %land.rhs.687, %while.cond.683
  %431 = phi i1 [ false, %while.cond.683 ], [ %cmp690, %land.rhs.687 ]
  br i1 %431, label %while.body.693, label %while.end

while.body.693:                                   ; preds = %land.end.692
  %432 = load i32, i32* %is_dash_segment, align 4, !tbaa !34
  %tobool694 = icmp ne i32 %432, 0
  br i1 %tobool694, label %if.then.695, label %if.end.696

if.then.695:                                      ; preds = %while.body.693
  br label %while.end

if.end.696:                                       ; preds = %while.body.693
  %433 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type697 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %433, i32 0, i32 2
  %434 = load i16, i16* %type697, align 2, !tbaa !40
  %conv698 = zext i16 %434 to i32
  %cmp699 = icmp eq i32 %conv698, 4
  br i1 %cmp699, label %if.then.706, label %lor.lhs.false.701

lor.lhs.false.701:                                ; preds = %if.end.696
  %435 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type702 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %435, i32 0, i32 2
  %436 = load i16, i16* %type702, align 2, !tbaa !40
  %conv703 = zext i16 %436 to i32
  %cmp704 = icmp eq i32 %conv703, 5
  br i1 %cmp704, label %if.then.706, label %if.end.707

if.then.706:                                      ; preds = %lor.lhs.false.701, %if.end.696
  br label %d1

if.end.707:                                       ; preds = %lor.lhs.false.701
  %437 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt708 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %437, i32 0, i32 4
  %x709 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt708, i32 0, i32 0
  %438 = load i32, i32* %x709, align 4, !tbaa !46
  store i32 %438, i32* %sx, align 4, !tbaa !34
  %439 = load i32, i32* %sx, align 4, !tbaa !34
  %440 = load i32, i32* %x572, align 4, !tbaa !34
  %sub710 = sub nsw i32 %439, %440
  store i32 %sub710, i32* %udx, align 4, !tbaa !34
  %441 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt711 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %441, i32 0, i32 4
  %y712 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt711, i32 0, i32 1
  %442 = load i32, i32* %y712, align 4, !tbaa !47
  store i32 %442, i32* %sy, align 4, !tbaa !34
  %443 = load i32, i32* %sy, align 4, !tbaa !34
  %444 = load i32, i32* %y574, align 4, !tbaa !34
  %sub713 = sub nsw i32 %443, %444
  store i32 %sub713, i32* %udy, align 4, !tbaa !34
  %445 = load i32, i32* %udx, align 4, !tbaa !34
  %446 = load i32, i32* %udy, align 4, !tbaa !34
  %or714 = or i32 %445, %446
  %tobool715 = icmp ne i32 %or714, 0
  br i1 %tobool715, label %if.then.716, label %if.end.717

if.then.716:                                      ; preds = %if.end.707
  store i32 0, i32* %zero_length, align 4, !tbaa !34
  br label %d

if.end.717:                                       ; preds = %if.end.707
  br label %while.cond.683

while.end:                                        ; preds = %if.then.695, %land.end.692
  %447 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dot_length718 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %447, i32 0, i32 8
  %448 = load float, float* %dot_length718, align 4, !tbaa !66
  %cmp719 = fcmp oeq float %448, 0.000000e+00
  br i1 %cmp719, label %land.lhs.true.721, label %if.end.730

land.lhs.true.721:                                ; preds = %while.end
  %449 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %449, i32 0, i32 1
  %450 = load i32, i32* %start_cap, align 4, !tbaa !116
  %cmp722 = icmp ne i32 %450, 1
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.730

land.lhs.true.724:                                ; preds = %land.lhs.true.721
  %451 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %end_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %451, i32 0, i32 2
  %452 = load i32, i32* %end_cap, align 4, !tbaa !117
  %cmp725 = icmp ne i32 %452, 1
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.730

land.lhs.true.727:                                ; preds = %land.lhs.true.724
  %453 = load i32, i32* %is_dash_segment, align 4, !tbaa !34
  %tobool728 = icmp ne i32 %453, 0
  br i1 %tobool728, label %if.end.730, label %if.then.729

if.then.729:                                      ; preds = %land.lhs.true.727
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.1230

if.end.730:                                       ; preds = %land.lhs.true.727, %land.lhs.true.724, %land.lhs.true.721, %while.end
  %454 = bitcast %struct.segment_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %454) #1
  %455 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %455, i32 0, i32 5
  %456 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !118
  store %struct.segment_s* %456, %struct.segment_s** %end, align 8, !tbaa !1
  %457 = load i32, i32* %is_dash_segment, align 4, !tbaa !34
  %tobool731 = icmp ne i32 %457, 0
  br i1 %tobool731, label %if.then.732, label %if.else.733

if.then.732:                                      ; preds = %if.end.730
  br label %if.end.754

if.else.733:                                      ; preds = %if.end.730
  %458 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %cmp734 = icmp ne %struct.segment_s* %458, null
  br i1 %cmp734, label %land.lhs.true.736, label %if.end.753

land.lhs.true.736:                                ; preds = %if.else.733
  %459 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %pt737 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %459, i32 0, i32 4
  %x738 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt737, i32 0, i32 0
  %460 = load i32, i32* %x738, align 4, !tbaa !46
  %461 = load i32, i32* %x572, align 4, !tbaa !34
  %cmp739 = icmp ne i32 %460, %461
  br i1 %cmp739, label %if.then.746, label %lor.lhs.false.741

lor.lhs.false.741:                                ; preds = %land.lhs.true.736
  %462 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %pt742 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %462, i32 0, i32 4
  %y743 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt742, i32 0, i32 1
  %463 = load i32, i32* %y743, align 4, !tbaa !47
  %464 = load i32, i32* %y574, align 4, !tbaa !34
  %cmp744 = icmp ne i32 %463, %464
  br i1 %cmp744, label %if.then.746, label %if.end.753

if.then.746:                                      ; preds = %lor.lhs.false.741, %land.lhs.true.736
  %465 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %pt747 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %465, i32 0, i32 4
  %x748 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt747, i32 0, i32 0
  %466 = load i32, i32* %x748, align 4, !tbaa !46
  store i32 %466, i32* %sx, align 4, !tbaa !34
  %467 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %pt749 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %467, i32 0, i32 4
  %y750 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt749, i32 0, i32 1
  %468 = load i32, i32* %y750, align 4, !tbaa !47
  store i32 %468, i32* %sy, align 4, !tbaa !34
  %469 = load i32, i32* %sx, align 4, !tbaa !34
  %470 = load i32, i32* %x572, align 4, !tbaa !34
  %sub751 = sub nsw i32 %469, %470
  store i32 %sub751, i32* %udx, align 4, !tbaa !34
  %471 = load i32, i32* %sy, align 4, !tbaa !34
  %472 = load i32, i32* %y574, align 4, !tbaa !34
  %sub752 = sub nsw i32 %471, %472
  store i32 %sub752, i32* %udy, align 4, !tbaa !34
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.746, %lor.lhs.false.741, %if.else.733
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %if.then.732
  %473 = bitcast %struct.segment_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %473) #1
  %474 = load i32, i32* %udx, align 4, !tbaa !34
  %475 = load i32, i32* %udy, align 4, !tbaa !34
  %or755 = or i32 %474, %475
  %cmp756 = icmp eq i32 %or755, 0
  br i1 %cmp756, label %if.then.758, label %if.end.766

if.then.758:                                      ; preds = %if.end.754
  %476 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dot_orientation = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %476, i32 0, i32 10
  %xy759 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dot_orientation, i32 0, i32 1
  %477 = load float, float* %xy759, align 4, !tbaa !119
  %conv760 = fpext float %477 to double
  %cmp761 = fcmp oeq double %conv760, 0.000000e+00
  br i1 %cmp761, label %if.then.763, label %if.else.764

if.then.763:                                      ; preds = %if.then.758
  store i32 256, i32* %udx, align 4, !tbaa !34
  br label %if.end.765

if.else.764:                                      ; preds = %if.then.758
  store i32 256, i32* %udy, align 4, !tbaa !34
  br label %if.end.765

if.end.765:                                       ; preds = %if.else.764, %if.then.763
  br label %if.end.766

if.end.766:                                       ; preds = %if.end.765, %if.end.754
  %478 = load i32, i32* %sx, align 4, !tbaa !34
  %479 = load i32, i32* %x572, align 4, !tbaa !34
  %cmp767 = icmp eq i32 %478, %479
  br i1 %cmp767, label %land.lhs.true.769, label %if.end.855

land.lhs.true.769:                                ; preds = %if.end.766
  %480 = load i32, i32* %sy, align 4, !tbaa !34
  %481 = load i32, i32* %y574, align 4, !tbaa !34
  %cmp770 = icmp eq i32 %480, %481
  br i1 %cmp770, label %land.lhs.true.772, label %if.end.855

land.lhs.true.772:                                ; preds = %land.lhs.true.769
  %482 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp773 = icmp eq %struct.segment_s* %482, null
  br i1 %cmp773, label %if.then.780, label %lor.lhs.false.775

lor.lhs.false.775:                                ; preds = %land.lhs.true.772
  %483 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type776 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %483, i32 0, i32 2
  %484 = load i16, i16* %type776, align 2, !tbaa !40
  %conv777 = zext i16 %484 to i32
  %cmp778 = icmp eq i32 %conv777, 0
  br i1 %cmp778, label %if.then.780, label %if.end.855

if.then.780:                                      ; preds = %lor.lhs.false.775, %land.lhs.true.772
  %485 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %485) #1
  %486 = load double, double* %device_dot_length, align 8, !tbaa !30
  %487 = load i32, i32* %udx, align 4, !tbaa !34
  %conv781 = sitofp i32 %487 to double
  %488 = load i32, i32* %udx, align 4, !tbaa !34
  %conv782 = sitofp i32 %488 to double
  %mul783 = fmul double %conv781, %conv782
  %489 = load i32, i32* %udy, align 4, !tbaa !34
  %conv784 = sitofp i32 %489 to double
  %490 = load i32, i32* %udy, align 4, !tbaa !34
  %conv785 = sitofp i32 %490 to double
  %mul786 = fmul double %conv784, %conv785
  %add787 = fadd double %mul783, %mul786
  %call788 = call double @sqrt(double %add787) #7
  %div789 = fdiv double %486, %call788
  store double %div789, double* %scale, align 8, !tbaa !30
  %491 = bitcast i32* %udx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = bitcast i32* %udy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %492) #1
  %493 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool790 = icmp ne i32 %493, 0
  br i1 %tobool790, label %if.end.846, label %land.lhs.true.791

land.lhs.true.791:                                ; preds = %if.then.780
  %494 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap792 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %494, i32 0, i32 1
  %495 = load i32, i32* %start_cap792, align 4, !tbaa !116
  %cmp793 = icmp eq i32 %495, 0
  br i1 %cmp793, label %if.then.802, label %lor.lhs.false.795

lor.lhs.false.795:                                ; preds = %land.lhs.true.791
  %496 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %end_cap796 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %496, i32 0, i32 2
  %497 = load i32, i32* %end_cap796, align 4, !tbaa !117
  %cmp797 = icmp eq i32 %497, 0
  br i1 %cmp797, label %if.then.802, label %lor.lhs.false.799

lor.lhs.false.799:                                ; preds = %lor.lhs.false.795
  %498 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %498, i32 0, i32 3
  %499 = load i32, i32* %dash_cap, align 4, !tbaa !120
  %cmp800 = icmp eq i32 %499, 0
  br i1 %cmp800, label %if.then.802, label %if.end.846

if.then.802:                                      ; preds = %lor.lhs.false.799, %lor.lhs.false.795, %land.lhs.true.791
  %500 = bitcast i32* %dmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %500) #1
  %501 = load i32, i32* %udx, align 4, !tbaa !34
  %cmp803 = icmp slt i32 %501, 0
  br i1 %cmp803, label %cond.true.805, label %cond.false.807

cond.true.805:                                    ; preds = %if.then.802
  %502 = load i32, i32* %udx, align 4, !tbaa !34
  %sub806 = sub nsw i32 0, %502
  br label %cond.end.808

cond.false.807:                                   ; preds = %if.then.802
  %503 = load i32, i32* %udx, align 4, !tbaa !34
  br label %cond.end.808

cond.end.808:                                     ; preds = %cond.false.807, %cond.true.805
  %cond809 = phi i32 [ %sub806, %cond.true.805 ], [ %503, %cond.false.807 ]
  %504 = load i32, i32* %udy, align 4, !tbaa !34
  %cmp810 = icmp slt i32 %504, 0
  br i1 %cmp810, label %cond.true.812, label %cond.false.814

cond.true.812:                                    ; preds = %cond.end.808
  %505 = load i32, i32* %udy, align 4, !tbaa !34
  %sub813 = sub nsw i32 0, %505
  br label %cond.end.815

cond.false.814:                                   ; preds = %cond.end.808
  %506 = load i32, i32* %udy, align 4, !tbaa !34
  br label %cond.end.815

cond.end.815:                                     ; preds = %cond.false.814, %cond.true.812
  %cond816 = phi i32 [ %sub813, %cond.true.812 ], [ %506, %cond.false.814 ]
  %cmp817 = icmp sgt i32 %cond809, %cond816
  br i1 %cmp817, label %cond.true.819, label %cond.false.827

cond.true.819:                                    ; preds = %cond.end.815
  %507 = load i32, i32* %udx, align 4, !tbaa !34
  %cmp820 = icmp slt i32 %507, 0
  br i1 %cmp820, label %cond.true.822, label %cond.false.824

cond.true.822:                                    ; preds = %cond.true.819
  %508 = load i32, i32* %udx, align 4, !tbaa !34
  %sub823 = sub nsw i32 0, %508
  br label %cond.end.825

cond.false.824:                                   ; preds = %cond.true.819
  %509 = load i32, i32* %udx, align 4, !tbaa !34
  br label %cond.end.825

cond.end.825:                                     ; preds = %cond.false.824, %cond.true.822
  %cond826 = phi i32 [ %sub823, %cond.true.822 ], [ %509, %cond.false.824 ]
  br label %cond.end.835

cond.false.827:                                   ; preds = %cond.end.815
  %510 = load i32, i32* %udy, align 4, !tbaa !34
  %cmp828 = icmp slt i32 %510, 0
  br i1 %cmp828, label %cond.true.830, label %cond.false.832

cond.true.830:                                    ; preds = %cond.false.827
  %511 = load i32, i32* %udy, align 4, !tbaa !34
  %sub831 = sub nsw i32 0, %511
  br label %cond.end.833

cond.false.832:                                   ; preds = %cond.false.827
  %512 = load i32, i32* %udy, align 4, !tbaa !34
  br label %cond.end.833

cond.end.833:                                     ; preds = %cond.false.832, %cond.true.830
  %cond834 = phi i32 [ %sub831, %cond.true.830 ], [ %512, %cond.false.832 ]
  br label %cond.end.835

cond.end.835:                                     ; preds = %cond.end.833, %cond.end.825
  %cond836 = phi i32 [ %cond826, %cond.end.825 ], [ %cond834, %cond.end.833 ]
  store i32 %cond836, i32* %dmax, align 4, !tbaa !34
  %513 = load i32, i32* %dmax, align 4, !tbaa !34
  %conv837 = sitofp i32 %513 to double
  %514 = load double, double* %scale, align 8, !tbaa !30
  %mul838 = fmul double %conv837, %514
  %cmp839 = fcmp olt double %mul838, 2.560000e+02
  br i1 %cmp839, label %if.then.841, label %if.end.845

if.then.841:                                      ; preds = %cond.end.835
  %515 = load i32, i32* %dmax, align 4, !tbaa !34
  %conv842 = sitofp i32 %515 to float
  %div843 = fdiv float 2.560000e+02, %conv842
  %conv844 = fpext float %div843 to double
  store double %conv844, double* %scale, align 8, !tbaa !30
  br label %if.end.845

if.end.845:                                       ; preds = %if.then.841, %cond.end.835
  %516 = bitcast i32* %dmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %lor.lhs.false.799, %if.then.780
  %517 = load i32, i32* %udx, align 4, !tbaa !34
  %conv847 = sitofp i32 %517 to double
  %518 = load double, double* %scale, align 8, !tbaa !30
  %mul848 = fmul double %conv847, %518
  %conv849 = fptosi double %mul848 to i32
  store i32 %conv849, i32* %udx1, align 4, !tbaa !34
  %519 = load i32, i32* %udy, align 4, !tbaa !34
  %conv850 = sitofp i32 %519 to double
  %520 = load double, double* %scale, align 8, !tbaa !30
  %mul851 = fmul double %conv850, %520
  %conv852 = fptosi double %mul851 to i32
  store i32 %conv852, i32* %udy1, align 4, !tbaa !34
  %521 = load i32, i32* %x572, align 4, !tbaa !34
  %522 = load i32, i32* %udx1, align 4, !tbaa !34
  %add853 = add nsw i32 %521, %522
  store i32 %add853, i32* %sx, align 4, !tbaa !34
  %523 = load i32, i32* %y574, align 4, !tbaa !34
  %524 = load i32, i32* %udy1, align 4, !tbaa !34
  %add854 = add nsw i32 %523, %524
  store i32 %add854, i32* %sy, align 4, !tbaa !34
  %525 = bitcast i32* %udy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %526 = bitcast i32* %udx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  br label %if.end.855

if.end.855:                                       ; preds = %if.end.846, %lor.lhs.false.775, %land.lhs.true.769, %if.end.766
  %528 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp856 = icmp ne %struct.segment_s* %528, null
  br i1 %cmp856, label %cond.true.858, label %cond.false.859

cond.true.858:                                    ; preds = %if.end.855
  %529 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %529, i32 0, i32 0
  %530 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !121
  br label %cond.end.861

cond.false.859:                                   ; preds = %if.end.855
  %531 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last860 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %531, i32 0, i32 5
  %532 = load %struct.segment_s*, %struct.segment_s** %last860, align 8, !tbaa !118
  br label %cond.end.861

cond.end.861:                                     ; preds = %cond.false.859, %cond.true.858
  %cond862 = phi %struct.segment_s* [ %530, %cond.true.858 ], [ %532, %cond.false.859 ]
  store %struct.segment_s* %cond862, %struct.segment_s** %pseg, align 8, !tbaa !1
  %533 = load i32, i32* %is_dash_segment, align 4, !tbaa !34
  %tobool863 = icmp ne i32 %533, 0
  br i1 %tobool863, label %if.end.865, label %if.then.864

if.then.864:                                      ; preds = %cond.end.861
  br label %d

if.end.865:                                       ; preds = %cond.end.861
  %534 = load i32, i32* %sx, align 4, !tbaa !34
  %e866 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p867 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e866, i32 0, i32 0
  %x868 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p867, i32 0, i32 0
  store i32 %534, i32* %x868, align 4, !tbaa !114
  %535 = load i32, i32* %sy, align 4, !tbaa !34
  %e869 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %p870 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e869, i32 0, i32 0
  %y871 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p870, i32 0, i32 1
  store i32 %535, i32* %y871, align 4, !tbaa !115
  br label %if.end.872

if.end.872:                                       ; preds = %if.end.865, %lor.lhs.false.663
  %536 = load i32, i32* %udx, align 4, !tbaa !34
  %vector = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %x873 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector, i32 0, i32 0
  store i32 %536, i32* %x873, align 4, !tbaa !122
  %537 = load i32, i32* %udy, align 4, !tbaa !34
  %vector874 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 3
  %y875 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector874, i32 0, i32 1
  store i32 %537, i32* %y875, align 4, !tbaa !123
  %538 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool876 = icmp ne i32 %538, 0
  br i1 %tobool876, label %if.then.877, label %if.else.886

if.then.877:                                      ; preds = %if.end.872
  %e878 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e878, i32 0, i32 3
  %y879 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 1
  store i32 0, i32* %y879, align 4, !tbaa !124
  %e880 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta881 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e880, i32 0, i32 3
  %x882 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta881, i32 0, i32 0
  store i32 0, i32* %x882, align 4, !tbaa !125
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y883 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 1
  store i32 0, i32* %y883, align 4, !tbaa !126
  %width884 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x885 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width884, i32 0, i32 0
  store i32 0, i32* %x885, align 4, !tbaa !127
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 1, i32* %thin, align 4, !tbaa !128
  br label %if.end.1081

if.else.886:                                      ; preds = %if.end.872
  %539 = load i32, i32* %uniform, align 4, !tbaa !34
  %cmp887 = icmp ne i32 %539, 0
  br i1 %cmp887, label %if.then.889, label %if.else.934

if.then.889:                                      ; preds = %if.else.886
  %540 = bitcast double* %dpx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %540) #1
  %541 = load i32, i32* %udx, align 4, !tbaa !34
  %conv890 = sitofp i32 %541 to double
  store double %conv890, double* %dpx, align 8, !tbaa !30
  %542 = bitcast double* %dpy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %542) #1
  %543 = load i32, i32* %udy, align 4, !tbaa !34
  %conv891 = sitofp i32 %543 to double
  store double %conv891, double* %dpy, align 8, !tbaa !30
  %544 = bitcast double* %wl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %544) #1
  %545 = load double, double* %device_line_width_scale, align 8, !tbaa !30
  %546 = load double, double* %dpx, align 8, !tbaa !30
  %547 = load double, double* %dpx, align 8, !tbaa !30
  %mul892 = fmul double %546, %547
  %548 = load double, double* %dpy, align 8, !tbaa !30
  %549 = load double, double* %dpy, align 8, !tbaa !30
  %mul893 = fmul double %548, %549
  %add894 = fadd double %mul892, %mul893
  %call895 = call double @sqrt(double %add894) #7
  %div896 = fdiv double %545, %call895
  store double %div896, double* %wl, align 8, !tbaa !30
  %550 = load double, double* %dpx, align 8, !tbaa !30
  %551 = load double, double* %wl, align 8, !tbaa !30
  %mul897 = fmul double %550, %551
  %conv898 = fptosi double %mul897 to i32
  %e899 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta900 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e899, i32 0, i32 3
  %x901 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta900, i32 0, i32 0
  store i32 %conv898, i32* %x901, align 4, !tbaa !125
  %552 = load double, double* %dpy, align 8, !tbaa !30
  %553 = load double, double* %wl, align 8, !tbaa !30
  %mul902 = fmul double %552, %553
  %conv903 = fptosi double %mul902 to i32
  %e904 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta905 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e904, i32 0, i32 3
  %y906 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta905, i32 0, i32 1
  store i32 %conv903, i32* %y906, align 4, !tbaa !124
  %554 = load i32, i32* %initial_matrix_reflected, align 4, !tbaa !34
  %tobool907 = icmp ne i32 %554, 0
  br i1 %tobool907, label %if.then.908, label %if.else.920

if.then.908:                                      ; preds = %if.then.889
  %e909 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta910 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e909, i32 0, i32 3
  %y911 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta910, i32 0, i32 1
  %555 = load i32, i32* %y911, align 4, !tbaa !124
  %width912 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x913 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width912, i32 0, i32 0
  store i32 %555, i32* %x913, align 4, !tbaa !127
  %e914 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta915 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e914, i32 0, i32 3
  %x916 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta915, i32 0, i32 0
  %556 = load i32, i32* %x916, align 4, !tbaa !125
  %sub917 = sub nsw i32 0, %556
  %width918 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y919 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width918, i32 0, i32 1
  store i32 %sub917, i32* %y919, align 4, !tbaa !126
  br label %if.end.932

if.else.920:                                      ; preds = %if.then.889
  %e921 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta922 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e921, i32 0, i32 3
  %y923 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta922, i32 0, i32 1
  %557 = load i32, i32* %y923, align 4, !tbaa !124
  %sub924 = sub nsw i32 0, %557
  %width925 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x926 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width925, i32 0, i32 0
  store i32 %sub924, i32* %x926, align 4, !tbaa !127
  %e927 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta928 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e927, i32 0, i32 3
  %x929 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta928, i32 0, i32 0
  %558 = load i32, i32* %x929, align 4, !tbaa !125
  %width930 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y931 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width930, i32 0, i32 1
  store i32 %558, i32* %y931, align 4, !tbaa !126
  br label %if.end.932

if.end.932:                                       ; preds = %if.else.920, %if.then.908
  %thin933 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 0, i32* %thin933, align 4, !tbaa !128
  %559 = bitcast double* %wl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %559) #1
  %560 = bitcast double* %dpy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %560) #1
  %561 = bitcast double* %dpx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  br label %if.end.1042

if.else.934:                                      ; preds = %if.else.886
  %562 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %562) #1
  %563 = bitcast float* %wl935 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %563) #1
  %564 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %565 = load i32, i32* %udx, align 4, !tbaa !34
  %conv936 = sitofp i32 %565 to float
  %conv937 = fpext float %conv936 to double
  %566 = load i32, i32* %udy, align 4, !tbaa !34
  %conv938 = sitofp i32 %566 to float
  %conv939 = fpext float %conv938 to double
  %call940 = call i32 @gs_imager_idtransform(%struct.gs_imager_state_s* %564, double %conv937, double %conv939, %struct.gs_point_s* %dpt) #6
  store i32 %call940, i32* %code, align 4, !tbaa !34
  %567 = load i32, i32* %code, align 4, !tbaa !34
  %cmp941 = icmp slt i32 %567, 0
  br i1 %cmp941, label %if.then.943, label %if.else.946

if.then.943:                                      ; preds = %if.else.934
  %x944 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  store double 0.000000e+00, double* %x944, align 8, !tbaa !129
  %y945 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  store double 0.000000e+00, double* %y945, align 8, !tbaa !130
  store i32 0, i32* %code, align 4, !tbaa !34
  br label %if.end.963

if.else.946:                                      ; preds = %if.else.934
  %568 = load double, double* %line_width_and_scale, align 8, !tbaa !30
  %x947 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %569 = load double, double* %x947, align 8, !tbaa !129
  %x948 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %570 = load double, double* %x948, align 8, !tbaa !129
  %mul949 = fmul double %569, %570
  %y950 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %571 = load double, double* %y950, align 8, !tbaa !130
  %y951 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %572 = load double, double* %y951, align 8, !tbaa !130
  %mul952 = fmul double %571, %572
  %add953 = fadd double %mul949, %mul952
  %call954 = call double @sqrt(double %add953) #7
  %div955 = fdiv double %568, %call954
  %conv956 = fptrunc double %div955 to float
  store float %conv956, float* %wl935, align 4, !tbaa !54
  %573 = load float, float* %wl935, align 4, !tbaa !54
  %conv957 = fpext float %573 to double
  %x958 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %574 = load double, double* %x958, align 8, !tbaa !129
  %mul959 = fmul double %574, %conv957
  store double %mul959, double* %x958, align 8, !tbaa !129
  %575 = load float, float* %wl935, align 4, !tbaa !54
  %conv960 = fpext float %575 to double
  %y961 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %576 = load double, double* %y961, align 8, !tbaa !130
  %mul962 = fmul double %576, %conv960
  store double %mul962, double* %y961, align 8, !tbaa !130
  br label %if.end.963

if.end.963:                                       ; preds = %if.else.946, %if.then.943
  %x964 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %577 = load double, double* %x964, align 8, !tbaa !129
  %578 = load float, float* %xx, align 4, !tbaa !54
  %conv965 = fpext float %578 to double
  %mul966 = fmul double %577, %conv965
  %conv967 = fptosi double %mul966 to i32
  %e968 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta969 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e968, i32 0, i32 3
  %x970 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta969, i32 0, i32 0
  store i32 %conv967, i32* %x970, align 4, !tbaa !125
  %y971 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %579 = load double, double* %y971, align 8, !tbaa !130
  %580 = load float, float* %yy, align 4, !tbaa !54
  %conv972 = fpext float %580 to double
  %mul973 = fmul double %579, %conv972
  %conv974 = fptosi double %mul973 to i32
  %e975 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta976 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e975, i32 0, i32 3
  %y977 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta976, i32 0, i32 1
  store i32 %conv974, i32* %y977, align 4, !tbaa !124
  %581 = load i32, i32* %orient, align 4, !tbaa !56
  %cmp978 = icmp ne i32 %581, 1
  br i1 %cmp978, label %if.then.980, label %if.end.997

if.then.980:                                      ; preds = %if.end.963
  %y981 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %582 = load double, double* %y981, align 8, !tbaa !130
  %583 = load float, float* %yx, align 4, !tbaa !54
  %conv982 = fpext float %583 to double
  %mul983 = fmul double %582, %conv982
  %conv984 = fptosi double %mul983 to i32
  %e985 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta986 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e985, i32 0, i32 3
  %x987 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta986, i32 0, i32 0
  %584 = load i32, i32* %x987, align 4, !tbaa !125
  %add988 = add nsw i32 %584, %conv984
  store i32 %add988, i32* %x987, align 4, !tbaa !125
  %x989 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %585 = load double, double* %x989, align 8, !tbaa !129
  %586 = load float, float* %xy, align 4, !tbaa !54
  %conv990 = fpext float %586 to double
  %mul991 = fmul double %585, %conv990
  %conv992 = fptosi double %mul991 to i32
  %e993 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 1
  %cdelta994 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e993, i32 0, i32 3
  %y995 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta994, i32 0, i32 1
  %587 = load i32, i32* %y995, align 4, !tbaa !124
  %add996 = add nsw i32 %587, %conv992
  store i32 %add996, i32* %y995, align 4, !tbaa !124
  br label %if.end.997

if.end.997:                                       ; preds = %if.then.980, %if.end.963
  %588 = load i32, i32* %reflected, align 4, !tbaa !34
  %tobool998 = icmp ne i32 %588, 0
  %lnot999 = xor i1 %tobool998, true
  %lnot.ext = zext i1 %lnot999 to i32
  %589 = load i32, i32* %initial_matrix_reflected, align 4, !tbaa !34
  %xor = xor i32 %lnot.ext, %589
  %tobool1000 = icmp ne i32 %xor, 0
  br i1 %tobool1000, label %if.then.1001, label %if.end.1008

if.then.1001:                                     ; preds = %if.end.997
  %x1002 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %590 = load double, double* %x1002, align 8, !tbaa !129
  %sub1003 = fsub double -0.000000e+00, %590
  %x1004 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  store double %sub1003, double* %x1004, align 8, !tbaa !129
  %y1005 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %591 = load double, double* %y1005, align 8, !tbaa !130
  %sub1006 = fsub double -0.000000e+00, %591
  %y1007 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  store double %sub1006, double* %y1007, align 8, !tbaa !130
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1001, %if.end.997
  %y1009 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %592 = load double, double* %y1009, align 8, !tbaa !130
  %593 = load float, float* %xx, align 4, !tbaa !54
  %conv1010 = fpext float %593 to double
  %mul1011 = fmul double %592, %conv1010
  %conv1012 = fptosi double %mul1011 to i32
  %width1013 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x1014 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1013, i32 0, i32 0
  store i32 %conv1012, i32* %x1014, align 4, !tbaa !127
  %x1015 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %594 = load double, double* %x1015, align 8, !tbaa !129
  %595 = load float, float* %yy, align 4, !tbaa !54
  %conv1016 = fpext float %595 to double
  %mul1017 = fmul double %594, %conv1016
  %conv1018 = fptosi double %mul1017 to i32
  %sub1019 = sub nsw i32 0, %conv1018
  %width1020 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y1021 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1020, i32 0, i32 1
  store i32 %sub1019, i32* %y1021, align 4, !tbaa !126
  %596 = load i32, i32* %orient, align 4, !tbaa !56
  %cmp1022 = icmp ne i32 %596, 1
  br i1 %cmp1022, label %if.then.1024, label %if.end.1039

if.then.1024:                                     ; preds = %if.end.1008
  %x1025 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 0
  %597 = load double, double* %x1025, align 8, !tbaa !129
  %598 = load float, float* %yx, align 4, !tbaa !54
  %conv1026 = fpext float %598 to double
  %mul1027 = fmul double %597, %conv1026
  %conv1028 = fptosi double %mul1027 to i32
  %width1029 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %x1030 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1029, i32 0, i32 0
  %599 = load i32, i32* %x1030, align 4, !tbaa !127
  %sub1031 = sub nsw i32 %599, %conv1028
  store i32 %sub1031, i32* %x1030, align 4, !tbaa !127
  %y1032 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dpt, i32 0, i32 1
  %600 = load double, double* %y1032, align 8, !tbaa !130
  %601 = load float, float* %xy, align 4, !tbaa !54
  %conv1033 = fpext float %601 to double
  %mul1034 = fmul double %600, %conv1033
  %conv1035 = fptosi double %mul1034 to i32
  %width1036 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 2
  %y1037 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1036, i32 0, i32 1
  %602 = load i32, i32* %y1037, align 4, !tbaa !126
  %add1038 = add nsw i32 %602, %conv1035
  store i32 %add1038, i32* %y1037, align 4, !tbaa !126
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.then.1024, %if.end.1008
  %call1040 = call i32 @width_is_thin(%struct.partial_line_s* %pl) #6
  %thin1041 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  store i32 %call1040, i32* %thin1041, align 4, !tbaa !128
  %603 = bitcast float* %wl935 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %603) #1
  %604 = bitcast %struct.gs_point_s* %dpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %604) #1
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.end.1039, %if.end.932
  %thin1043 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %pl, i32 0, i32 4
  %605 = load i32, i32* %thin1043, align 4, !tbaa !128
  %tobool1044 = icmp ne i32 %605, 0
  br i1 %tobool1044, label %if.end.1080, label %if.then.1045

if.then.1045:                                     ; preds = %if.end.1042
  %606 = load i32, i32* %index, align 4, !tbaa !34
  %tobool1046 = icmp ne i32 %606, 0
  br i1 %tobool1046, label %if.then.1047, label %if.end.1048

if.then.1047:                                     ; preds = %if.then.1045
  %607 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %607, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !131
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.then.1047, %if.then.1045
  %608 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %609 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %610 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev1049 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %610, i32 0, i32 0
  %611 = load %struct.segment_s*, %struct.segment_s** %prev1049, align 8, !tbaa !121
  %cmp1050 = icmp eq %struct.segment_s* %611, null
  br i1 %cmp1050, label %land.lhs.true.1058, label %lor.lhs.false.1052

lor.lhs.false.1052:                               ; preds = %if.end.1048
  %612 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev1053 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %612, i32 0, i32 0
  %613 = load %struct.segment_s*, %struct.segment_s** %prev1053, align 8, !tbaa !121
  %type1054 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %613, i32 0, i32 2
  %614 = load i16, i16* %type1054, align 2, !tbaa !40
  %conv1055 = zext i16 %614 to i32
  %cmp1056 = icmp eq i32 %conv1055, 0
  br i1 %cmp1056, label %land.lhs.true.1058, label %land.end.1073

land.lhs.true.1058:                               ; preds = %lor.lhs.false.1052, %if.end.1048
  %615 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next1059 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %615, i32 0, i32 1
  %616 = load %struct.segment_s*, %struct.segment_s** %next1059, align 8, !tbaa !49
  %cmp1060 = icmp eq %struct.segment_s* %616, null
  br i1 %cmp1060, label %land.rhs.1068, label %lor.lhs.false.1062

lor.lhs.false.1062:                               ; preds = %land.lhs.true.1058
  %617 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next1063 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %617, i32 0, i32 1
  %618 = load %struct.segment_s*, %struct.segment_s** %next1063, align 8, !tbaa !49
  %type1064 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %618, i32 0, i32 2
  %619 = load i16, i16* %type1064, align 2, !tbaa !40
  %conv1065 = zext i16 %619 to i32
  %cmp1066 = icmp eq i32 %conv1065, 0
  br i1 %cmp1066, label %land.rhs.1068, label %land.end.1073

land.rhs.1068:                                    ; preds = %lor.lhs.false.1062, %land.lhs.true.1058
  %620 = load i32, i32* %zero_length, align 4, !tbaa !34
  %tobool1069 = icmp ne i32 %620, 0
  br i1 %tobool1069, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.1068
  %621 = load i32, i32* %is_closed, align 4, !tbaa !34
  %tobool1070 = icmp ne i32 %621, 0
  %lnot1071 = xor i1 %tobool1070, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.1068
  %622 = phi i1 [ true, %land.rhs.1068 ], [ %lnot1071, %lor.rhs ]
  br label %land.end.1073

land.end.1073:                                    ; preds = %lor.end, %lor.lhs.false.1062, %lor.lhs.false.1052
  %623 = phi i1 [ false, %lor.lhs.false.1062 ], [ false, %lor.lhs.false.1052 ], [ %622, %lor.end ]
  %land.ext = zext i1 %623 to i32
  %624 = load i32, i32* %flags, align 4, !tbaa !56
  %shr = lshr i32 %624, 4
  %625 = load i32, i32* %flags, align 4, !tbaa !56
  %and1074 = and i32 %625, 2
  %or1075 = or i32 %shr, %and1074
  %626 = load i32, i32* %flags, align 4, !tbaa !56
  %and1076 = and i32 %626, 1
  %tobool1077 = icmp ne i32 %and1076, 0
  %cond1078 = select i1 %tobool1077, i32 -1, i32 -2
  %and1079 = and i32 %or1075, %cond1078
  call void @adjust_stroke(%struct.gx_device_s* %608, %struct.partial_line_s* %pl, %struct.gs_imager_state_s* %609, i32 0, i32 %land.ext, i32 %and1079) #6
  call void @compute_caps(%struct.partial_line_s* %pl) #6
  br label %if.end.1080

if.end.1080:                                      ; preds = %land.end.1073, %if.end.1042
  br label %if.end.1081

if.end.1081:                                      ; preds = %if.end.1080, %if.then.877
  %627 = load i32, i32* %index, align 4, !tbaa !34
  %inc1082 = add nsw i32 %627, 1
  store i32 %inc1082, i32* %index, align 4, !tbaa !34
  %tobool1083 = icmp ne i32 %627, 0
  br i1 %tobool1083, label %if.then.1084, label %if.else.1219

if.then.1084:                                     ; preds = %if.end.1081
  %628 = bitcast i32* %join1085 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %628) #1
  %629 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes1086 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %629, i32 0, i32 3
  %630 = load i16, i16* %notes1086, align 2, !tbaa !113
  %conv1087 = zext i16 %630 to i32
  %and1088 = and i32 %conv1087, 1
  %tobool1089 = icmp ne i32 %and1088, 0
  br i1 %tobool1089, label %cond.true.1090, label %cond.false.1091

cond.true.1090:                                   ; preds = %if.then.1084
  %631 = load i32, i32* %curve_join, align 4, !tbaa !56
  br label %cond.end.1093

cond.false.1091:                                  ; preds = %if.then.1084
  %632 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %join1092 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %632, i32 0, i32 4
  %633 = load i32, i32* %join1092, align 4, !tbaa !64
  br label %cond.end.1093

cond.end.1093:                                    ; preds = %cond.false.1091, %cond.true.1090
  %cond1094 = phi i32 [ %631, %cond.true.1090 ], [ %633, %cond.false.1091 ]
  store i32 %cond1094, i32* %join1085, align 4, !tbaa !56
  %634 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %634) #1
  %635 = bitcast %struct.partial_line_s** %lptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %635) #1
  %636 = bitcast i32* %ensure_closed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %636) #1
  %637 = load i32, i32* %join1085, align 4, !tbaa !56
  %cmp1095 = icmp eq i32 %637, 3
  br i1 %cmp1095, label %if.then.1097, label %if.else.1098

if.then.1097:                                     ; preds = %cond.end.1093
  store i32 0, i32* %first, align 4, !tbaa !34
  store %struct.partial_line_s* null, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  store i32 1, i32* %index, align 4, !tbaa !34
  br label %if.end.1105

if.else.1098:                                     ; preds = %cond.end.1093
  %638 = load i32, i32* %is_closed, align 4, !tbaa !34
  %tobool1099 = icmp ne i32 %638, 0
  br i1 %tobool1099, label %cond.true.1100, label %cond.false.1101

cond.true.1100:                                   ; preds = %if.else.1098
  br label %cond.end.1103

cond.false.1101:                                  ; preds = %if.else.1098
  %639 = load i32, i32* %index, align 4, !tbaa !34
  %sub1102 = sub nsw i32 %639, 2
  br label %cond.end.1103

cond.end.1103:                                    ; preds = %cond.false.1101, %cond.true.1100
  %cond1104 = phi i32 [ 1, %cond.true.1100 ], [ %sub1102, %cond.false.1101 ]
  store i32 %cond1104, i32* %first, align 4, !tbaa !34
  store %struct.partial_line_s* %pl, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  br label %if.end.1105

if.end.1105:                                      ; preds = %cond.end.1103, %if.then.1097
  %640 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type1106 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %640, i32 0, i32 2
  %641 = load i16, i16* %type1106, align 2, !tbaa !40
  %conv1107 = zext i16 %641 to i32
  %cmp1108 = icmp eq i32 %conv1107, 5
  br i1 %cmp1108, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %if.end.1105
  store %struct.partial_line_s* null, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  store i32 0, i32* %index, align 4, !tbaa !34
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.then.1110, %if.end.1105
  %642 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1112 = icmp eq %struct.gx_path_s* %642, %stroke_path_body
  br i1 %cmp1112, label %land.lhs.true.1114, label %lor.rhs.1126

land.lhs.true.1114:                               ; preds = %if.end.1111
  %643 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1115 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %643, i32 0, i32 10
  %644 = load i32, i32* %log_op1115, align 4, !tbaa !61
  %neg1116 = xor i32 %644, -1
  %645 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1117 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %645, i32 0, i32 10
  %646 = load i32, i32* %log_op1117, align 4, !tbaa !61
  %shl1118 = shl i32 %646, 1
  %and1119 = and i32 %neg1116, %shl1118
  %and1120 = and i32 %and1119, 170
  %tobool1121 = icmp ne i32 %and1120, 0
  br i1 %tobool1121, label %lor.rhs.1126, label %land.lhs.true.1122

land.lhs.true.1122:                               ; preds = %land.lhs.true.1114
  %647 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1123 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %647, i32 0, i32 10
  %648 = load i32, i32* %log_op1123, align 4, !tbaa !61
  %and1124 = and i32 %648, 1024
  %tobool1125 = icmp ne i32 %and1124, 0
  br i1 %tobool1125, label %lor.rhs.1126, label %lor.end.1135

lor.rhs.1126:                                     ; preds = %land.lhs.true.1122, %land.lhs.true.1114, %if.end.1111
  %649 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  %cmp1127 = icmp eq %struct.partial_line_s* %649, null
  br i1 %cmp1127, label %cond.true.1129, label %cond.false.1130

cond.true.1129:                                   ; preds = %lor.rhs.1126
  br label %cond.end.1132

cond.false.1130:                                  ; preds = %lor.rhs.1126
  %650 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  %thin1131 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %650, i32 0, i32 4
  %651 = load i32, i32* %thin1131, align 4, !tbaa !128
  br label %cond.end.1132

cond.end.1132:                                    ; preds = %cond.false.1130, %cond.true.1129
  %cond1133 = phi i32 [ 1, %cond.true.1129 ], [ %651, %cond.false.1130 ]
  %tobool1134 = icmp ne i32 %cond1133, 0
  br label %lor.end.1135

lor.end.1135:                                     ; preds = %cond.end.1132, %land.lhs.true.1122
  %652 = phi i1 [ true, %land.lhs.true.1122 ], [ %tobool1134, %cond.end.1132 ]
  %lor.ext = zext i1 %652 to i32
  store i32 %lor.ext, i32* %ensure_closed, align 4, !tbaa !34
  %653 = load i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc, align 8, !tbaa !1
  %654 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %655 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %656 = load i32, i32* %ensure_closed, align 4, !tbaa !34
  %657 = load i32, i32* %first, align 4, !tbaa !34
  %658 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr, align 8, !tbaa !1
  %659 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %660 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %661 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %662 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %663 = load i32, i32* %uniform, align 4, !tbaa !34
  %664 = load i32, i32* %join1085, align 4, !tbaa !56
  %665 = load i32, i32* %initial_matrix_reflected, align 4, !tbaa !34
  %666 = load i32, i32* %flags, align 4, !tbaa !56
  %shr1136 = lshr i32 %666, 4
  %667 = load i32, i32* %flags, align 4, !tbaa !56
  %and1137 = and i32 %667, 2
  %or1138 = or i32 %shr1136, %and1137
  %668 = load i32, i32* %flags, align 4, !tbaa !56
  %and1139 = and i32 %668, 1
  %tobool1140 = icmp ne i32 %and1139, 0
  %cond1141 = select i1 %tobool1140, i32 -1, i32 -2
  %and1142 = and i32 %or1138, %cond1141
  %call1143 = call i32 %653(%struct.gx_path_s* %654, %struct.gx_path_s* %655, i32 %656, i32 %657, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %658, %struct.gx_device_color_s* %659, %struct.gx_device_s* %660, %struct.gs_imager_state_s* %661, %struct.gx_stroke_params_s* %662, %struct.gs_fixed_rect_s* %cbox, i32 %663, i32 %664, i32 %665, i32 %and1142) #6
  store i32 %call1143, i32* %code, align 4, !tbaa !34
  %669 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1144 = icmp slt i32 %669, 0
  br i1 %cmp1144, label %if.then.1146, label %if.end.1147

if.then.1146:                                     ; preds = %lor.end.1135
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1213

if.end.1147:                                      ; preds = %lor.end.1135
  %670 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1148 = icmp eq %struct.gx_path_s* %670, %stroke_path_body
  br i1 %cmp1148, label %land.lhs.true.1150, label %if.end.1212

land.lhs.true.1150:                               ; preds = %if.end.1147
  %segments1151 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %671 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1151, align 8, !tbaa !5
  %cmp1152 = icmp ne %struct.gx_path_segments_s* %671, null
  br i1 %cmp1152, label %land.lhs.true.1154, label %land.lhs.true.1160

land.lhs.true.1154:                               ; preds = %land.lhs.true.1150
  %segments1155 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %672 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1155, align 8, !tbaa !5
  %contents1156 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %672, i32 0, i32 1
  %subpath_first1157 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1156, i32 0, i32 0
  %673 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first1157, align 8, !tbaa !14
  %cmp1158 = icmp eq %struct.subpath_s* %673, null
  br i1 %cmp1158, label %if.end.1212, label %land.lhs.true.1160

land.lhs.true.1160:                               ; preds = %land.lhs.true.1154, %land.lhs.true.1150
  %674 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1161 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %674, i32 0, i32 10
  %675 = load i32, i32* %log_op1161, align 4, !tbaa !61
  %neg1162 = xor i32 %675, -1
  %676 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1163 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %676, i32 0, i32 10
  %677 = load i32, i32* %log_op1163, align 4, !tbaa !61
  %shl1164 = shl i32 %677, 1
  %and1165 = and i32 %neg1162, %shl1164
  %and1166 = and i32 %and1165, 170
  %tobool1167 = icmp ne i32 %and1166, 0
  br i1 %tobool1167, label %if.end.1212, label %land.lhs.true.1168

land.lhs.true.1168:                               ; preds = %land.lhs.true.1160
  %678 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1169 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %678, i32 0, i32 10
  %679 = load i32, i32* %log_op1169, align 4, !tbaa !61
  %and1170 = and i32 %679, 1024
  %tobool1171 = icmp ne i32 %and1170, 0
  br i1 %tobool1171, label %if.end.1212, label %if.then.1172

if.then.1172:                                     ; preds = %land.lhs.true.1168
  %680 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1173 = icmp ne i32 %680, 0
  br i1 %tobool1173, label %cond.true.1174, label %cond.false.1175

cond.true.1174:                                   ; preds = %if.then.1172
  br label %cond.end.1179

cond.false.1175:                                  ; preds = %if.then.1172
  %681 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1176 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %681, i32 0, i32 28
  %x1177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1176, i32 0, i32 0
  %682 = load i32, i32* %x1177, align 4, !tbaa !85
  %conv1178 = sext i32 %682 to i64
  br label %cond.end.1179

cond.end.1179:                                    ; preds = %cond.false.1175, %cond.true.1174
  %cond1180 = phi i64 [ 0, %cond.true.1174 ], [ %conv1178, %cond.false.1175 ]
  %conv1181 = trunc i64 %cond1180 to i32
  %adjust1182 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %x1183 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1182, i32 0, i32 0
  store i32 %conv1181, i32* %x1183, align 4, !tbaa !132
  %683 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1184 = icmp ne i32 %683, 0
  br i1 %tobool1184, label %cond.true.1185, label %cond.false.1186

cond.true.1185:                                   ; preds = %cond.end.1179
  br label %cond.end.1190

cond.false.1186:                                  ; preds = %cond.end.1179
  %684 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1187 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %684, i32 0, i32 28
  %y1188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1187, i32 0, i32 1
  %685 = load i32, i32* %y1188, align 4, !tbaa !86
  %conv1189 = sext i32 %685 to i64
  br label %cond.end.1190

cond.end.1190:                                    ; preds = %cond.false.1186, %cond.true.1185
  %cond1191 = phi i64 [ 0, %cond.true.1185 ], [ %conv1189, %cond.false.1186 ]
  %conv1192 = trunc i64 %cond1191 to i32
  %adjust1193 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %y1194 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1193, i32 0, i32 1
  store i32 %conv1192, i32* %y1194, align 4, !tbaa !133
  %686 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1195 = icmp ne %struct.gx_path_s* %686, null
  br i1 %cmp1195, label %if.then.1197, label %if.end.1203

if.then.1197:                                     ; preds = %cond.end.1190
  %687 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %688 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %call1198 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %687, %struct.gx_path_s* %688) #6
  store i32 %call1198, i32* %code, align 4, !tbaa !34
  %689 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1199 = icmp slt i32 %689, 0
  br i1 %cmp1199, label %if.then.1201, label %if.end.1202

if.then.1201:                                     ; preds = %if.then.1197
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1213

if.end.1202:                                      ; preds = %if.then.1197
  br label %if.end.1203

if.end.1203:                                      ; preds = %if.end.1202, %cond.end.1190
  %690 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1204 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %690, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1204, i32 0, i32 24
  %691 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !134
  %692 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %693 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %694 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %695 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %696 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1205 = call i32 %691(%struct.gx_device_s* %692, %struct.gs_imager_state_s* %693, %struct.gx_path_s* %694, %struct.gx_fill_params_s* %fill_params, %struct.gx_device_color_s* %695, %struct.gx_clip_path_s* %696) #6
  store i32 %call1205, i32* %code, align 4, !tbaa !34
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_body, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #6
  %697 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1206 = icmp slt i32 %697, 0
  br i1 %cmp1206, label %if.then.1208, label %if.end.1209

if.then.1208:                                     ; preds = %if.end.1203
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1213

if.end.1209:                                      ; preds = %if.end.1203
  %698 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory1210 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %698, i32 0, i32 1
  %699 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1210, align 8, !tbaa !100
  %call1211 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_body, %struct.gx_path_s* null, %struct.gs_memory_s* %699) #6
  br label %if.end.1212

if.end.1212:                                      ; preds = %if.end.1209, %land.lhs.true.1168, %land.lhs.true.1160, %land.lhs.true.1154, %if.end.1147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1213

cleanup.1213:                                     ; preds = %if.then.1208, %if.then.1201, %if.then.1146, %if.end.1212
  %700 = bitcast i32* %ensure_closed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast %struct.partial_line_s** %lptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %701) #1
  %702 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %702) #1
  %703 = bitcast i32* %join1085 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %703) #1
  %cleanup.dest.1217 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1217, label %cleanup.1230 [
    i32 0, label %cleanup.cont.1218
  ]

cleanup.cont.1218:                                ; preds = %cleanup.1213
  br label %if.end.1227

if.else.1219:                                     ; preds = %if.end.1081
  %704 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type1220 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %704, i32 0, i32 2
  %705 = load i16, i16* %type1220, align 2, !tbaa !40
  %conv1221 = zext i16 %705 to i32
  %cmp1222 = icmp eq i32 %conv1221, 5
  br i1 %cmp1222, label %if.then.1224, label %if.else.1225

if.then.1224:                                     ; preds = %if.else.1219
  store i32 0, i32* %index, align 4, !tbaa !34
  br label %if.end.1226

if.else.1225:                                     ; preds = %if.else.1219
  %706 = bitcast %struct.partial_line_s* %pl_first to i8*
  %707 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %706, i8* %707, i64 84, i32 4, i1 false), !tbaa.struct !135
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.else.1225, %if.then.1224
  br label %if.end.1227

if.end.1227:                                      ; preds = %if.end.1226, %cleanup.cont.1218
  %708 = bitcast %struct.partial_line_s* %pl_prev to i8*
  %709 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %708, i8* %709, i64 84, i32 4, i1 false), !tbaa.struct !135
  %710 = load i32, i32* %sx, align 4, !tbaa !34
  store i32 %710, i32* %x572, align 4, !tbaa !34
  %711 = load i32, i32* %sy, align 4, !tbaa !34
  store i32 %711, i32* %y574, align 4, !tbaa !34
  %712 = load i32, i32* %flags, align 4, !tbaa !56
  %shl1228 = shl i32 %712, 4
  %or1229 = or i32 %shl1228, 1
  store i32 %or1229, i32* %flags, align 4, !tbaa !56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1230

cleanup.1230:                                     ; preds = %if.end.1227, %cleanup.1213, %if.then.729, %if.then.681
  %713 = bitcast i32* %is_dash_segment to i8*
  call void @llvm.lifetime.end(i64 4, i8* %713) #1
  %714 = bitcast i32* %udy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %714) #1
  %715 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %715) #1
  %716 = bitcast i32* %udx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %716) #1
  %717 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %717) #1
  %cleanup.dest.1235 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1235, label %cleanup.1482 [
    i32 0, label %cleanup.cont.1236
    i32 18, label %while.cond
    i32 19, label %while.end.1237
  ]

cleanup.cont.1236:                                ; preds = %cleanup.1230
  br label %while.cond

while.end.1237:                                   ; preds = %cleanup.1230, %land.end.585
  %718 = load i32, i32* %index, align 4, !tbaa !34
  %tobool1238 = icmp ne i32 %718, 0
  br i1 %tobool1238, label %if.then.1239, label %if.end.1481

if.then.1239:                                     ; preds = %while.end.1237
  %719 = bitcast i32* %notes1240 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %719) #1
  %720 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp1241 = icmp eq %struct.segment_s* %720, null
  br i1 %cmp1241, label %cond.true.1243, label %cond.false.1247

cond.true.1243:                                   ; preds = %if.then.1239
  %721 = load %struct.gx_path_s*, %struct.gx_path_s** %spath, align 8, !tbaa !1
  %segments1244 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %721, i32 0, i32 3
  %722 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1244, align 8, !tbaa !5
  %contents1245 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %722, i32 0, i32 1
  %subpath_first1246 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1245, i32 0, i32 0
  %723 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first1246, align 8, !tbaa !14
  %724 = bitcast %struct.subpath_s* %723 to %struct.segment_s*
  br label %cond.end.1248

cond.false.1247:                                  ; preds = %if.then.1239
  %725 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %cond.end.1248

cond.end.1248:                                    ; preds = %cond.false.1247, %cond.true.1243
  %cond1249 = phi %struct.segment_s* [ %724, %cond.true.1243 ], [ %725, %cond.false.1247 ]
  %notes1250 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %cond1249, i32 0, i32 3
  %726 = load i16, i16* %notes1250, align 2, !tbaa !113
  %conv1251 = zext i16 %726 to i32
  store i32 %conv1251, i32* %notes1240, align 4, !tbaa !56
  %727 = bitcast i32* %join1252 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %727) #1
  %728 = load i32, i32* %notes1240, align 4, !tbaa !56
  %and1253 = and i32 %728, 1
  %tobool1254 = icmp ne i32 %and1253, 0
  br i1 %tobool1254, label %cond.true.1255, label %cond.false.1256

cond.true.1255:                                   ; preds = %cond.end.1248
  %729 = load i32, i32* %curve_join, align 4, !tbaa !56
  br label %cond.end.1258

cond.false.1256:                                  ; preds = %cond.end.1248
  %730 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %join1257 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %730, i32 0, i32 4
  %731 = load i32, i32* %join1257, align 4, !tbaa !64
  br label %cond.end.1258

cond.end.1258:                                    ; preds = %cond.false.1256, %cond.true.1255
  %cond1259 = phi i32 [ %729, %cond.true.1255 ], [ %731, %cond.false.1256 ]
  store i32 %cond1259, i32* %join1252, align 4, !tbaa !56
  %732 = bitcast i32* %cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %732) #1
  %733 = bitcast %struct.partial_line_s** %lptr1260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %733) #1
  %734 = load i32, i32* %is_closed, align 4, !tbaa !34
  %tobool1261 = icmp ne i32 %734, 0
  br i1 %tobool1261, label %lor.lhs.false.1262, label %cond.true.1267

lor.lhs.false.1262:                               ; preds = %cond.end.1258
  %735 = load i32, i32* %join1252, align 4, !tbaa !56
  %cmp1263 = icmp eq i32 %735, 3
  br i1 %cmp1263, label %cond.true.1267, label %lor.lhs.false.1265

lor.lhs.false.1265:                               ; preds = %lor.lhs.false.1262
  %736 = load i32, i32* %zero_length, align 4, !tbaa !34
  %tobool1266 = icmp ne i32 %736, 0
  br i1 %tobool1266, label %cond.true.1267, label %cond.false.1268

cond.true.1267:                                   ; preds = %lor.lhs.false.1265, %lor.lhs.false.1262, %cond.end.1258
  br label %cond.end.1269

cond.false.1268:                                  ; preds = %lor.lhs.false.1265
  br label %cond.end.1269

cond.end.1269:                                    ; preds = %cond.false.1268, %cond.true.1267
  %cond1270 = phi %struct.partial_line_s* [ null, %cond.true.1267 ], [ %pl_first, %cond.false.1268 ]
  store %struct.partial_line_s* %cond1270, %struct.partial_line_s** %lptr1260, align 8, !tbaa !1
  %737 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr1260, align 8, !tbaa !1
  %tobool1271 = icmp ne %struct.partial_line_s* %737, null
  br i1 %tobool1271, label %land.lhs.true.1272, label %if.end.1287

land.lhs.true.1272:                               ; preds = %cond.end.1269
  %738 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %type1273 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %738, i32 0, i32 2
  %739 = load i16, i16* %type1273, align 2, !tbaa !136
  %conv1274 = zext i16 %739 to i32
  %cmp1275 = icmp eq i32 %conv1274, 0
  br i1 %cmp1275, label %land.lhs.true.1277, label %if.end.1287

land.lhs.true.1277:                               ; preds = %land.lhs.true.1272
  %740 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %next1278 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %740, i32 0, i32 1
  %741 = load %struct.segment_s*, %struct.segment_s** %next1278, align 8, !tbaa !52
  %tobool1279 = icmp ne %struct.segment_s* %741, null
  br i1 %tobool1279, label %land.lhs.true.1280, label %if.end.1287

land.lhs.true.1280:                               ; preds = %land.lhs.true.1277
  %742 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %next1281 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %742, i32 0, i32 1
  %743 = load %struct.segment_s*, %struct.segment_s** %next1281, align 8, !tbaa !52
  %type1282 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %743, i32 0, i32 2
  %744 = load i16, i16* %type1282, align 2, !tbaa !40
  %conv1283 = zext i16 %744 to i32
  %cmp1284 = icmp eq i32 %conv1283, 5
  br i1 %cmp1284, label %if.then.1286, label %if.end.1287

if.then.1286:                                     ; preds = %land.lhs.true.1280
  store %struct.partial_line_s* null, %struct.partial_line_s** %lptr1260, align 8, !tbaa !1
  br label %if.end.1287

if.end.1287:                                      ; preds = %if.then.1286, %land.lhs.true.1280, %land.lhs.true.1277, %land.lhs.true.1272, %cond.end.1269
  %745 = load i32, i32* %notes1240, align 4, !tbaa !56
  %and1288 = and i32 %745, 1
  %tobool1289 = icmp ne i32 %and1288, 0
  br i1 %tobool1289, label %cond.true.1290, label %cond.false.1293

cond.true.1290:                                   ; preds = %if.end.1287
  %746 = load i32, i32* %flags, align 4, !tbaa !56
  %and1291 = and i32 %746, 1
  %or1292 = or i32 %and1291, 2
  br label %cond.end.1294

cond.false.1293:                                  ; preds = %if.end.1287
  br label %cond.end.1294

cond.end.1294:                                    ; preds = %cond.false.1293, %cond.true.1290
  %cond1295 = phi i32 [ %or1292, %cond.true.1290 ], [ 0, %cond.false.1293 ]
  %747 = load i32, i32* %notes1240, align 4, !tbaa !56
  %and1296 = and i32 %747, 4
  %tobool1297 = icmp ne i32 %and1296, 0
  %cond1298 = select i1 %tobool1297, i32 4, i32 0
  %or1299 = or i32 %cond1295, %cond1298
  %748 = load i32, i32* %notes1240, align 4, !tbaa !56
  %and1300 = and i32 %748, 8
  %tobool1301 = icmp ne i32 %and1300, 0
  %cond1302 = select i1 %tobool1301, i32 8, i32 0
  %or1303 = or i32 %or1299, %cond1302
  %749 = load i32, i32* %flags, align 4, !tbaa !56
  %and1304 = and i32 %749, -2
  %or1305 = or i32 %or1303, %and1304
  store i32 %or1305, i32* %flags, align 4, !tbaa !56
  %750 = load i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc, align 8, !tbaa !1
  %751 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %752 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %753 = load i32, i32* %index, align 4, !tbaa !34
  %sub1306 = sub nsw i32 %753, 1
  %754 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr1260, align 8, !tbaa !1
  %755 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %756 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %757 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %758 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %759 = load i32, i32* %uniform, align 4, !tbaa !34
  %760 = load i32, i32* %join1252, align 4, !tbaa !56
  %761 = load i32, i32* %initial_matrix_reflected, align 4, !tbaa !34
  %762 = load i32, i32* %flags, align 4, !tbaa !56
  %shr1307 = lshr i32 %762, 4
  %763 = load i32, i32* %flags, align 4, !tbaa !56
  %and1308 = and i32 %763, 2
  %or1309 = or i32 %shr1307, %and1308
  %764 = load i32, i32* %flags, align 4, !tbaa !56
  %and1310 = and i32 %764, 1
  %tobool1311 = icmp ne i32 %and1310, 0
  %cond1312 = select i1 %tobool1311, i32 -1, i32 -2
  %and1313 = and i32 %or1309, %cond1312
  %call1314 = call i32 %750(%struct.gx_path_s* %751, %struct.gx_path_s* %752, i32 1, i32 %sub1306, %struct.partial_line_s* %pl_prev, %struct.partial_line_s* %754, %struct.gx_device_color_s* %755, %struct.gx_device_s* %756, %struct.gs_imager_state_s* %757, %struct.gx_stroke_params_s* %758, %struct.gs_fixed_rect_s* %cbox, i32 %759, i32 %760, i32 %761, i32 %and1313) #6
  store i32 %call1314, i32* %code, align 4, !tbaa !34
  %765 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1315 = icmp slt i32 %765, 0
  br i1 %cmp1315, label %if.then.1317, label %if.end.1318

if.then.1317:                                     ; preds = %cond.end.1294
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1318:                                      ; preds = %cond.end.1294
  %766 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1319 = icmp eq %struct.gx_path_s* %766, %stroke_path_body
  br i1 %cmp1319, label %land.lhs.true.1321, label %if.end.1384

land.lhs.true.1321:                               ; preds = %if.end.1318
  %segments1322 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %767 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1322, align 8, !tbaa !5
  %cmp1323 = icmp ne %struct.gx_path_segments_s* %767, null
  br i1 %cmp1323, label %land.lhs.true.1325, label %land.lhs.true.1331

land.lhs.true.1325:                               ; preds = %land.lhs.true.1321
  %segments1326 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %768 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1326, align 8, !tbaa !5
  %contents1327 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %768, i32 0, i32 1
  %subpath_first1328 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1327, i32 0, i32 0
  %769 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first1328, align 8, !tbaa !14
  %cmp1329 = icmp eq %struct.subpath_s* %769, null
  br i1 %cmp1329, label %if.end.1384, label %land.lhs.true.1331

land.lhs.true.1331:                               ; preds = %land.lhs.true.1325, %land.lhs.true.1321
  %770 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1332 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %770, i32 0, i32 10
  %771 = load i32, i32* %log_op1332, align 4, !tbaa !61
  %neg1333 = xor i32 %771, -1
  %772 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1334 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %772, i32 0, i32 10
  %773 = load i32, i32* %log_op1334, align 4, !tbaa !61
  %shl1335 = shl i32 %773, 1
  %and1336 = and i32 %neg1333, %shl1335
  %and1337 = and i32 %and1336, 170
  %tobool1338 = icmp ne i32 %and1337, 0
  br i1 %tobool1338, label %if.end.1384, label %land.lhs.true.1339

land.lhs.true.1339:                               ; preds = %land.lhs.true.1331
  %774 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1340 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %774, i32 0, i32 10
  %775 = load i32, i32* %log_op1340, align 4, !tbaa !61
  %and1341 = and i32 %775, 1024
  %tobool1342 = icmp ne i32 %and1341, 0
  br i1 %tobool1342, label %if.end.1384, label %if.then.1343

if.then.1343:                                     ; preds = %land.lhs.true.1339
  %776 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1344 = icmp ne i32 %776, 0
  br i1 %tobool1344, label %cond.true.1345, label %cond.false.1346

cond.true.1345:                                   ; preds = %if.then.1343
  br label %cond.end.1350

cond.false.1346:                                  ; preds = %if.then.1343
  %777 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1347 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %777, i32 0, i32 28
  %x1348 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1347, i32 0, i32 0
  %778 = load i32, i32* %x1348, align 4, !tbaa !85
  %conv1349 = sext i32 %778 to i64
  br label %cond.end.1350

cond.end.1350:                                    ; preds = %cond.false.1346, %cond.true.1345
  %cond1351 = phi i64 [ 0, %cond.true.1345 ], [ %conv1349, %cond.false.1346 ]
  %conv1352 = trunc i64 %cond1351 to i32
  %adjust1353 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %x1354 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1353, i32 0, i32 0
  store i32 %conv1352, i32* %x1354, align 4, !tbaa !132
  %779 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1355 = icmp ne i32 %779, 0
  br i1 %tobool1355, label %cond.true.1356, label %cond.false.1357

cond.true.1356:                                   ; preds = %cond.end.1350
  br label %cond.end.1361

cond.false.1357:                                  ; preds = %cond.end.1350
  %780 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1358 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %780, i32 0, i32 28
  %y1359 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1358, i32 0, i32 1
  %781 = load i32, i32* %y1359, align 4, !tbaa !86
  %conv1360 = sext i32 %781 to i64
  br label %cond.end.1361

cond.end.1361:                                    ; preds = %cond.false.1357, %cond.true.1356
  %cond1362 = phi i64 [ 0, %cond.true.1356 ], [ %conv1360, %cond.false.1357 ]
  %conv1363 = trunc i64 %cond1362 to i32
  %adjust1364 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %y1365 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1364, i32 0, i32 1
  store i32 %conv1363, i32* %y1365, align 4, !tbaa !133
  %782 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1366 = icmp ne %struct.gx_path_s* %782, null
  br i1 %cmp1366, label %if.then.1368, label %if.end.1374

if.then.1368:                                     ; preds = %cond.end.1361
  %783 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %784 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %call1369 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %783, %struct.gx_path_s* %784) #6
  store i32 %call1369, i32* %code, align 4, !tbaa !34
  %785 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1370 = icmp slt i32 %785, 0
  br i1 %cmp1370, label %if.then.1372, label %if.end.1373

if.then.1372:                                     ; preds = %if.then.1368
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1373:                                      ; preds = %if.then.1368
  br label %if.end.1374

if.end.1374:                                      ; preds = %if.end.1373, %cond.end.1361
  %786 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1375 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %786, i32 0, i32 42
  %fill_path1376 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1375, i32 0, i32 24
  %787 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path1376, align 8, !tbaa !134
  %788 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %789 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %790 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %791 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %792 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1377 = call i32 %787(%struct.gx_device_s* %788, %struct.gs_imager_state_s* %789, %struct.gx_path_s* %790, %struct.gx_fill_params_s* %fill_params, %struct.gx_device_color_s* %791, %struct.gx_clip_path_s* %792) #6
  store i32 %call1377, i32* %code, align 4, !tbaa !34
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_body, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #6
  %793 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1378 = icmp slt i32 %793, 0
  br i1 %cmp1378, label %if.then.1380, label %if.end.1381

if.then.1380:                                     ; preds = %if.end.1374
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1381:                                      ; preds = %if.end.1374
  %794 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory1382 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %794, i32 0, i32 1
  %795 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1382, align 8, !tbaa !100
  %call1383 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_body, %struct.gx_path_s* null, %struct.gs_memory_s* %795) #6
  br label %if.end.1384

if.end.1384:                                      ; preds = %if.end.1381, %land.lhs.true.1339, %land.lhs.true.1331, %land.lhs.true.1325, %if.end.1318
  %796 = load i32, i32* %flags, align 4, !tbaa !56
  %and1385 = and i32 %796, 64
  %tobool1386 = icmp ne i32 %and1385, 0
  br i1 %tobool1386, label %cond.true.1387, label %cond.false.1389

cond.true.1387:                                   ; preds = %if.end.1384
  %797 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap1388 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %797, i32 0, i32 1
  %798 = load i32, i32* %start_cap1388, align 4, !tbaa !116
  br label %cond.end.1391

cond.false.1389:                                  ; preds = %if.end.1384
  %799 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap1390 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %799, i32 0, i32 3
  %800 = load i32, i32* %dash_cap1390, align 4, !tbaa !120
  br label %cond.end.1391

cond.end.1391:                                    ; preds = %cond.false.1389, %cond.true.1387
  %cond1392 = phi i32 [ %798, %cond.true.1387 ], [ %800, %cond.false.1389 ]
  store i32 %cond1392, i32* %cap, align 4, !tbaa !56
  %801 = load i32, i32* %traditional, align 4, !tbaa !34
  %tobool1393 = icmp ne i32 %801, 0
  br i1 %tobool1393, label %land.lhs.true.1394, label %if.end.1474

land.lhs.true.1394:                               ; preds = %cond.end.1391
  %802 = load %struct.partial_line_s*, %struct.partial_line_s** %lptr1260, align 8, !tbaa !1
  %cmp1395 = icmp eq %struct.partial_line_s* %802, null
  br i1 %cmp1395, label %land.lhs.true.1397, label %if.end.1474

land.lhs.true.1397:                               ; preds = %land.lhs.true.1394
  %803 = load i32, i32* %cap, align 4, !tbaa !56
  %cmp1398 = icmp ne i32 %803, 0
  br i1 %cmp1398, label %if.then.1400, label %if.end.1474

if.then.1400:                                     ; preds = %land.lhs.true.1397
  %804 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %805 = load i32, i32* %index, align 4, !tbaa !34
  %cmp1401 = icmp eq i32 %805, 1
  %conv1402 = zext i1 %cmp1401 to i32
  %806 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %807 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %808 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call1403 = call i32 @stroke_add_initial_cap_compat(%struct.gx_path_s* %804, %struct.partial_line_s* %pl_first, i32 %conv1402, %struct.gx_device_color_s* %806, %struct.gx_device_s* %807, %struct.gs_imager_state_s* %808) #6
  store i32 %call1403, i32* %code, align 4, !tbaa !34
  %809 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1404 = icmp slt i32 %809, 0
  br i1 %cmp1404, label %if.then.1406, label %if.end.1407

if.then.1406:                                     ; preds = %if.then.1400
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1407:                                      ; preds = %if.then.1400
  %810 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1408 = icmp eq %struct.gx_path_s* %810, %stroke_path_body
  br i1 %cmp1408, label %land.lhs.true.1410, label %if.end.1473

land.lhs.true.1410:                               ; preds = %if.end.1407
  %segments1411 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %811 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1411, align 8, !tbaa !5
  %cmp1412 = icmp ne %struct.gx_path_segments_s* %811, null
  br i1 %cmp1412, label %land.lhs.true.1414, label %land.lhs.true.1420

land.lhs.true.1414:                               ; preds = %land.lhs.true.1410
  %segments1415 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %812 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1415, align 8, !tbaa !5
  %contents1416 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %812, i32 0, i32 1
  %subpath_first1417 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1416, i32 0, i32 0
  %813 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first1417, align 8, !tbaa !14
  %cmp1418 = icmp eq %struct.subpath_s* %813, null
  br i1 %cmp1418, label %if.end.1473, label %land.lhs.true.1420

land.lhs.true.1420:                               ; preds = %land.lhs.true.1414, %land.lhs.true.1410
  %814 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1421 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %814, i32 0, i32 10
  %815 = load i32, i32* %log_op1421, align 4, !tbaa !61
  %neg1422 = xor i32 %815, -1
  %816 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1423 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %816, i32 0, i32 10
  %817 = load i32, i32* %log_op1423, align 4, !tbaa !61
  %shl1424 = shl i32 %817, 1
  %and1425 = and i32 %neg1422, %shl1424
  %and1426 = and i32 %and1425, 170
  %tobool1427 = icmp ne i32 %and1426, 0
  br i1 %tobool1427, label %if.end.1473, label %land.lhs.true.1428

land.lhs.true.1428:                               ; preds = %land.lhs.true.1420
  %818 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op1429 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %818, i32 0, i32 10
  %819 = load i32, i32* %log_op1429, align 4, !tbaa !61
  %and1430 = and i32 %819, 1024
  %tobool1431 = icmp ne i32 %and1430, 0
  br i1 %tobool1431, label %if.end.1473, label %if.then.1432

if.then.1432:                                     ; preds = %land.lhs.true.1428
  %820 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1433 = icmp ne i32 %820, 0
  br i1 %tobool1433, label %cond.true.1434, label %cond.false.1435

cond.true.1434:                                   ; preds = %if.then.1432
  br label %cond.end.1439

cond.false.1435:                                  ; preds = %if.then.1432
  %821 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1436 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %821, i32 0, i32 28
  %x1437 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1436, i32 0, i32 0
  %822 = load i32, i32* %x1437, align 4, !tbaa !85
  %conv1438 = sext i32 %822 to i64
  br label %cond.end.1439

cond.end.1439:                                    ; preds = %cond.false.1435, %cond.true.1434
  %cond1440 = phi i64 [ 0, %cond.true.1434 ], [ %conv1438, %cond.false.1435 ]
  %conv1441 = trunc i64 %cond1440 to i32
  %adjust1442 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %x1443 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1442, i32 0, i32 0
  store i32 %conv1441, i32* %x1443, align 4, !tbaa !132
  %823 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1444 = icmp ne i32 %823, 0
  br i1 %tobool1444, label %cond.true.1445, label %cond.false.1446

cond.true.1445:                                   ; preds = %cond.end.1439
  br label %cond.end.1450

cond.false.1446:                                  ; preds = %cond.end.1439
  %824 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1447 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %824, i32 0, i32 28
  %y1448 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1447, i32 0, i32 1
  %825 = load i32, i32* %y1448, align 4, !tbaa !86
  %conv1449 = sext i32 %825 to i64
  br label %cond.end.1450

cond.end.1450:                                    ; preds = %cond.false.1446, %cond.true.1445
  %cond1451 = phi i64 [ 0, %cond.true.1445 ], [ %conv1449, %cond.false.1446 ]
  %conv1452 = trunc i64 %cond1451 to i32
  %adjust1453 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %y1454 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1453, i32 0, i32 1
  store i32 %conv1452, i32* %y1454, align 4, !tbaa !133
  %826 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1455 = icmp ne %struct.gx_path_s* %826, null
  br i1 %cmp1455, label %if.then.1457, label %if.end.1463

if.then.1457:                                     ; preds = %cond.end.1450
  %827 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %828 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %call1458 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %827, %struct.gx_path_s* %828) #6
  store i32 %call1458, i32* %code, align 4, !tbaa !34
  %829 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1459 = icmp slt i32 %829, 0
  br i1 %cmp1459, label %if.then.1461, label %if.end.1462

if.then.1461:                                     ; preds = %if.then.1457
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1462:                                      ; preds = %if.then.1457
  br label %if.end.1463

if.end.1463:                                      ; preds = %if.end.1462, %cond.end.1450
  %830 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1464 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %830, i32 0, i32 42
  %fill_path1465 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1464, i32 0, i32 24
  %831 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path1465, align 8, !tbaa !134
  %832 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %833 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %834 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %835 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %836 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1466 = call i32 %831(%struct.gx_device_s* %832, %struct.gs_imager_state_s* %833, %struct.gx_path_s* %834, %struct.gx_fill_params_s* %fill_params, %struct.gx_device_color_s* %835, %struct.gx_clip_path_s* %836) #6
  store i32 %call1466, i32* %code, align 4, !tbaa !34
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_body, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #6
  %837 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1467 = icmp slt i32 %837, 0
  br i1 %cmp1467, label %if.then.1469, label %if.end.1470

if.then.1469:                                     ; preds = %if.end.1463
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.1475

if.end.1470:                                      ; preds = %if.end.1463
  %838 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory1471 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %838, i32 0, i32 1
  %839 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1471, align 8, !tbaa !100
  %call1472 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_body, %struct.gx_path_s* null, %struct.gs_memory_s* %839) #6
  br label %if.end.1473

if.end.1473:                                      ; preds = %if.end.1470, %land.lhs.true.1428, %land.lhs.true.1420, %land.lhs.true.1414, %if.end.1407
  br label %if.end.1474

if.end.1474:                                      ; preds = %if.end.1473, %land.lhs.true.1397, %land.lhs.true.1394, %cond.end.1391
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1475

cleanup.1475:                                     ; preds = %if.then.1469, %if.then.1461, %if.then.1406, %if.then.1380, %if.then.1372, %if.then.1317, %if.end.1474
  %840 = bitcast %struct.partial_line_s** %lptr1260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %840) #1
  %841 = bitcast i32* %cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %841) #1
  %842 = bitcast i32* %join1252 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %842) #1
  %843 = bitcast i32* %notes1240 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %843) #1
  %cleanup.dest.1479 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1479, label %cleanup.1482 [
    i32 0, label %cleanup.cont.1480
  ]

cleanup.cont.1480:                                ; preds = %cleanup.1475
  br label %if.end.1481

if.end.1481:                                      ; preds = %cleanup.cont.1480, %while.end.1237
  %844 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %845 = bitcast %struct.segment_s* %844 to %struct.subpath_s*
  store %struct.subpath_s* %845, %struct.subpath_s** %psub, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1482

cleanup.1482:                                     ; preds = %if.end.1481, %cleanup.1475, %cleanup.1230
  %846 = bitcast i32* %zero_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %846) #1
  %847 = bitcast %struct.partial_line_s* %pl_first to i8*
  call void @llvm.lifetime.end(i64 84, i8* %847) #1
  %848 = bitcast %struct.partial_line_s* %pl_prev to i8*
  call void @llvm.lifetime.end(i64 84, i8* %848) #1
  %849 = bitcast %struct.partial_line_s* %pl to i8*
  call void @llvm.lifetime.end(i64 84, i8* %849) #1
  %850 = bitcast i32* %is_closed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %850) #1
  %851 = bitcast i32* %y574 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %851) #1
  %852 = bitcast i32* %x572 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %852) #1
  %853 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %853) #1
  %854 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %854) #1
  %cleanup.dest.1491 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1491, label %cleanup.1574 [
    i32 0, label %cleanup.cont.1492
    i32 24, label %exit
  ]

cleanup.cont.1492:                                ; preds = %cleanup.1482
  br label %for.cond.568

for.end.1493:                                     ; preds = %for.cond.568
  %855 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1494 = icmp ne %struct.gx_path_s* %855, null
  br i1 %cmp1494, label %if.then.1496, label %if.end.1498

if.then.1496:                                     ; preds = %for.end.1493
  %856 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %857 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %call1497 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %856, %struct.gx_path_s* %857) #6
  store i32 %call1497, i32* %code, align 4, !tbaa !34
  br label %if.end.1498

if.end.1498:                                      ; preds = %if.then.1496, %for.end.1493
  %858 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1499 = icmp eq %struct.gx_path_s* %858, %stroke_path_body
  br i1 %cmp1499, label %land.lhs.true.1501, label %if.end.1552

land.lhs.true.1501:                               ; preds = %if.end.1498
  %segments1502 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %859 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1502, align 8, !tbaa !5
  %cmp1503 = icmp ne %struct.gx_path_segments_s* %859, null
  br i1 %cmp1503, label %land.lhs.true.1505, label %if.then.1511

land.lhs.true.1505:                               ; preds = %land.lhs.true.1501
  %segments1506 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %stroke_path_body, i32 0, i32 3
  %860 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1506, align 8, !tbaa !5
  %contents1507 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %860, i32 0, i32 1
  %subpath_first1508 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents1507, i32 0, i32 0
  %861 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first1508, align 8, !tbaa !14
  %cmp1509 = icmp eq %struct.subpath_s* %861, null
  br i1 %cmp1509, label %if.end.1552, label %if.then.1511

if.then.1511:                                     ; preds = %land.lhs.true.1505, %land.lhs.true.1501
  %862 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1512 = icmp ne i32 %862, 0
  br i1 %tobool1512, label %cond.true.1513, label %cond.false.1514

cond.true.1513:                                   ; preds = %if.then.1511
  br label %cond.end.1518

cond.false.1514:                                  ; preds = %if.then.1511
  %863 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1515 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %863, i32 0, i32 28
  %x1516 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1515, i32 0, i32 0
  %864 = load i32, i32* %x1516, align 4, !tbaa !85
  %conv1517 = sext i32 %864 to i64
  br label %cond.end.1518

cond.end.1518:                                    ; preds = %cond.false.1514, %cond.true.1513
  %cond1519 = phi i64 [ 0, %cond.true.1513 ], [ %conv1517, %cond.false.1514 ]
  %conv1520 = trunc i64 %cond1519 to i32
  %adjust1521 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %x1522 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1521, i32 0, i32 0
  store i32 %conv1520, i32* %x1522, align 4, !tbaa !132
  %865 = load i32, i32* %always_thin, align 4, !tbaa !34
  %tobool1523 = icmp ne i32 %865, 0
  br i1 %tobool1523, label %cond.true.1524, label %cond.false.1525

cond.true.1524:                                   ; preds = %cond.end.1518
  br label %cond.end.1529

cond.false.1525:                                  ; preds = %cond.end.1518
  %866 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust1526 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %866, i32 0, i32 28
  %y1527 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust1526, i32 0, i32 1
  %867 = load i32, i32* %y1527, align 4, !tbaa !86
  %conv1528 = sext i32 %867 to i64
  br label %cond.end.1529

cond.end.1529:                                    ; preds = %cond.false.1525, %cond.true.1524
  %cond1530 = phi i64 [ 0, %cond.true.1524 ], [ %conv1528, %cond.false.1525 ]
  %conv1531 = trunc i64 %cond1530 to i32
  %adjust1532 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %fill_params, i32 0, i32 1
  %y1533 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust1532, i32 0, i32 1
  store i32 %conv1531, i32* %y1533, align 4, !tbaa !133
  %868 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1534 = icmp ne %struct.gx_path_s* %868, null
  br i1 %cmp1534, label %if.then.1536, label %if.end.1542

if.then.1536:                                     ; preds = %cond.end.1529
  %869 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %870 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %call1537 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %869, %struct.gx_path_s* %870) #6
  store i32 %call1537, i32* %code, align 4, !tbaa !34
  %871 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1538 = icmp slt i32 %871, 0
  br i1 %cmp1538, label %if.then.1540, label %if.end.1541

if.then.1540:                                     ; preds = %if.then.1536
  br label %exit

if.end.1541:                                      ; preds = %if.then.1536
  br label %if.end.1542

if.end.1542:                                      ; preds = %if.end.1541, %cond.end.1529
  %872 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs1543 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %872, i32 0, i32 42
  %fill_path1544 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1543, i32 0, i32 24
  %873 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path1544, align 8, !tbaa !134
  %874 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %875 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %876 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %877 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %878 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call1545 = call i32 %873(%struct.gx_device_s* %874, %struct.gs_imager_state_s* %875, %struct.gx_path_s* %876, %struct.gx_fill_params_s* %fill_params, %struct.gx_device_color_s* %877, %struct.gx_clip_path_s* %878) #6
  store i32 %call1545, i32* %code, align 4, !tbaa !34
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_body, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #6
  %879 = load i32, i32* %code, align 4, !tbaa !34
  %cmp1546 = icmp slt i32 %879, 0
  br i1 %cmp1546, label %if.then.1548, label %if.end.1549

if.then.1548:                                     ; preds = %if.end.1542
  br label %exit

if.end.1549:                                      ; preds = %if.end.1542
  %880 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory1550 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %880, i32 0, i32 1
  %881 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1550, align 8, !tbaa !100
  %call1551 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %stroke_path_body, %struct.gx_path_s* null, %struct.gs_memory_s* %881) #6
  br label %if.end.1552

if.end.1552:                                      ; preds = %if.end.1549, %land.lhs.true.1505, %if.end.1498
  br label %exit

exit:                                             ; preds = %if.end.1552, %cleanup.1482, %if.then.1548, %if.then.1540
  %882 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %883 = bitcast %struct.gx_device_clip_s* %cdev to %struct.gx_device_s*
  %cmp1553 = icmp eq %struct.gx_device_s* %882, %883
  br i1 %cmp1553, label %if.then.1555, label %if.end.1558

if.then.1555:                                     ; preds = %exit
  %target = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %cdev, i32 0, i32 43
  %884 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !137
  %sgr1556 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %884, i32 0, i32 35
  %sgr1557 = getelementptr inbounds %struct.gx_device_clip_s, %struct.gx_device_clip_s* %cdev, i32 0, i32 35
  %885 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr1556 to i8*
  %886 = bitcast %struct.gx_stroked_gradient_recognizer_s* %sgr1557 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %885, i8* %886, i64 68, i32 4, i1 false), !tbaa.struct !138
  br label %if.end.1558

if.end.1558:                                      ; preds = %if.then.1555, %exit
  %887 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path.addr, align 8, !tbaa !1
  %cmp1559 = icmp eq %struct.gx_path_s* %887, %stroke_path_body
  br i1 %cmp1559, label %if.then.1561, label %if.end.1562

if.then.1561:                                     ; preds = %if.end.1558
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_body, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %if.end.1562

if.end.1562:                                      ; preds = %if.then.1561, %if.end.1558
  %888 = load %struct.gx_path_s*, %struct.gx_path_s** %to_path_reverse, align 8, !tbaa !1
  %cmp1563 = icmp eq %struct.gx_path_s* %888, %stroke_path_reverse
  br i1 %cmp1563, label %if.then.1565, label %if.end.1566

if.then.1565:                                     ; preds = %if.end.1562
  call void @gx_path_free(%struct.gx_path_s* %stroke_path_reverse, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %if.end.1566

if.end.1566:                                      ; preds = %if.then.1565, %if.end.1562
  %889 = load i32, i32* %dash_count, align 4, !tbaa !34
  %tobool1567 = icmp ne i32 %889, 0
  br i1 %tobool1567, label %if.then.1568, label %if.end.1569

if.then.1568:                                     ; preds = %if.end.1566
  call void @gx_path_free(%struct.gx_path_s* %dpath, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end.1569

if.end.1569:                                      ; preds = %if.then.1568, %if.end.1566
  br label %exf

exf:                                              ; preds = %if.end.1569, %cleanup.546
  %890 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count1570 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %890, i32 0, i32 13
  %891 = load i32, i32* %curve_count1570, align 4, !tbaa !50
  %tobool1571 = icmp ne i32 %891, 0
  br i1 %tobool1571, label %if.then.1572, label %if.end.1573

if.then.1572:                                     ; preds = %exf
  call void @gx_path_free(%struct.gx_path_s* %fpath, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.1573

if.end.1573:                                      ; preds = %if.then.1572, %exf
  %892 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %892, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1574

cleanup.1574:                                     ; preds = %if.end.1573, %cleanup.1482, %cleanup.546, %if.then.476, %if.then.463, %cleanup
  %893 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %893) #1
  %894 = bitcast i32* %initial_matrix_reflected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %894) #1
  %895 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  call void @llvm.lifetime.end(i64 24, i8* %895) #1
  %896 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %896) #1
  %897 = bitcast double* %device_dot_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %897) #1
  %898 = bitcast double* %device_line_width_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %898) #1
  %899 = bitcast double* %line_width_and_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %899) #1
  %900 = bitcast i32* %always_thin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %900) #1
  %901 = bitcast float* %line_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %901) #1
  %902 = bitcast i32* %curve_join to i8*
  call void @llvm.lifetime.end(i64 4, i8* %902) #1
  %903 = bitcast i32* %not_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %903) #1
  %904 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %904) #1
  %905 = bitcast i32* %reflected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %905) #1
  %906 = bitcast i32* %uniform to i8*
  call void @llvm.lifetime.end(i64 4, i8* %906) #1
  %907 = bitcast float* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %907) #1
  %908 = bitcast float* %yx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %908) #1
  %909 = bitcast float* %xy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %909) #1
  %910 = bitcast float* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %910) #1
  %911 = bitcast %struct.gx_path_s** %spath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %911) #1
  %912 = bitcast %struct.gx_path_s** %to_path_reverse to i8*
  call void @llvm.lifetime.end(i64 8, i8* %912) #1
  %913 = bitcast %struct.gx_path_s* %stroke_path_reverse to i8*
  call void @llvm.lifetime.end(i64 128, i8* %913) #1
  %914 = bitcast %struct.gx_path_s* %stroke_path_body to i8*
  call void @llvm.lifetime.end(i64 128, i8* %914) #1
  %915 = bitcast %struct.gx_path_s* %dpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %915) #1
  %916 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %916) #1
  %917 = bitcast i32* %dash_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %917) #1
  %918 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %918) #1
  %919 = bitcast %struct.gx_fill_params_s* %fill_params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %919) #1
  %920 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %920) #1
  %921 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %921) #1
  %922 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %922) #1
  %923 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %923) #1
  %924 = bitcast %struct.gs_fixed_rect_s* %ibox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %924) #1
  %925 = bitcast i32 (%struct.gx_path_s*, %struct.gx_path_s*, i32, i32, %struct.partial_line_s*, %struct.partial_line_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gs_fixed_rect_s*, i32, i32, i32, i32)** %line_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %925) #1
  %926 = bitcast i32* %traditional to i8*
  call void @llvm.lifetime.end(i64 4, i8* %926) #1
  %927 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %927) #1
  %928 = load i32, i32* %retval
  ret i32 %928
}

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #3

declare i32 @gx_dc_is_pattern1_color_clist_based(%struct.gx_device_color_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @stroke_fill(%struct.gx_path_s* %ppath, %struct.gx_path_s* %rpath, i32 %ensure_closed, i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gs_fixed_rect_s* %pbbox, i32 %uniform, i32 %join, i32 %reflected, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %ensure_closed.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pbbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %uniform.addr = alloca i32, align 4
  %join.addr = alloca i32, align 4
  %reflected.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %lix = alloca i32, align 4
  %liy = alloca i32, align 4
  %litox = alloca i32, align 4
  %litoy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %start_cap = alloca i32, align 4
  %end_cap = alloca i32, align 4
  %points = alloca [6 x %struct.gs_fixed_point_s], align 16
  %npoints = alloca i32, align 4
  %code = alloca i32, align 4
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %bevel = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  store i32 %ensure_closed, i32* %ensure_closed.addr, align 4, !tbaa !34
  store i32 %first, i32* %first.addr, align 4, !tbaa !34
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbbox, %struct.gs_fixed_rect_s** %pbbox.addr, align 8, !tbaa !1
  store i32 %uniform, i32* %uniform.addr, align 4, !tbaa !34
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !56
  %0 = bitcast i32* %lix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %1, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !109
  store i32 %2, i32* %lix, align 4, !tbaa !34
  %3 = bitcast i32* %liy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !112
  store i32 %5, i32* %liy, align 4, !tbaa !34
  %6 = bitcast i32* %litox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 1
  %p3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %8 = load i32, i32* %x4, align 4, !tbaa !114
  store i32 %8, i32* %litox, align 4, !tbaa !34
  %9 = bitcast i32* %litoy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 1
  %p6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %11 = load i32, i32* %y7, align 4, !tbaa !115
  store i32 %11, i32* %litoy, align 4, !tbaa !34
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 4
  %13 = load i32, i32* %thin, align 4, !tbaa !128
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 30
  %15 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !139
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load i32, i32* %lix, align 4, !tbaa !34
  %18 = load i32, i32* %liy, align 4, !tbaa !34
  %19 = load i32, i32* %litox, align 4, !tbaa !34
  %20 = load i32, i32* %litoy, align 4, !tbaa !34
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 10
  %23 = load i32, i32* %log_op, align 4, !tbaa !61
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 28
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %25 = load i32, i32* %x8, align 4, !tbaa !85
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 28
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust9, i32 0, i32 1
  %27 = load i32, i32* %y10, align 4, !tbaa !86
  %call = call i32 %15(%struct.gx_device_s* %16, i32 %17, i32 %18, i32 %19, i32 %20, %struct.gx_device_color_s* %21, i32 %23, i32 %25, i32 %27) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.239

if.end:                                           ; preds = %entry
  %28 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %30 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and = and i32 %31, 4
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %32, i32 0, i32 3
  %33 = load i32, i32* %dash_cap, align 4, !tbaa !120
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %34 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap12 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %34, i32 0, i32 1
  %35 = load i32, i32* %start_cap12, align 4, !tbaa !116
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, i32* %start_cap, align 4, !tbaa !56
  %36 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and13 = and i32 %37, 8
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %38 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap16 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %38, i32 0, i32 3
  %39 = load i32, i32* %dash_cap16, align 4, !tbaa !120
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %40 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %end_cap18 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %40, i32 0, i32 2
  %41 = load i32, i32* %end_cap18, align 4, !tbaa !117
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i32 [ %39, %cond.true.15 ], [ %41, %cond.false.17 ]
  store i32 %cond20, i32* %end_cap, align 4, !tbaa !56
  %42 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp = icmp ne i32 %42, 0
  br i1 %cmp, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end.19
  store i32 0, i32* %start_cap, align 4, !tbaa !56
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end.19
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.partial_line_s* %43, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store i32 0, i32* %end_cap, align 4, !tbaa !56
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 4
  %45 = load i32, i32* %thin26, align 4, !tbaa !128
  %tobool27 = icmp ne i32 %45, 0
  br i1 %tobool27, label %if.end.232, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.25
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp28 = icmp eq %struct.partial_line_s* %46, null
  br i1 %cmp28, label %land.lhs.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %thin29 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 4
  %48 = load i32, i32* %thin29, align 4, !tbaa !128
  %tobool30 = icmp ne i32 %48, 0
  br i1 %tobool30, label %if.end.232, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %49 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp32 = icmp eq i32 %49, 0
  br i1 %cmp32, label %land.lhs.true.35, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.31
  %50 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp34 = icmp eq i32 %50, 2
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.232

land.lhs.true.35:                                 ; preds = %lor.lhs.false.33, %land.lhs.true.31
  %51 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp36 = icmp eq i32 %51, 0
  br i1 %cmp36, label %land.lhs.true.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.35
  %52 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp38 = icmp eq i32 %52, 2
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.232

land.lhs.true.39:                                 ; preds = %lor.lhs.false.37, %land.lhs.true.35
  %53 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp40 = icmp eq i32 %53, 2
  br i1 %cmp40, label %land.lhs.true.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.39
  %54 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp42 = icmp eq i32 %54, 0
  br i1 %cmp42, label %land.lhs.true.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.41
  %55 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp44 = icmp eq i32 %55, 3
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.232

land.lhs.true.45:                                 ; preds = %lor.lhs.false.43, %lor.lhs.false.41, %land.lhs.true.39
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust46 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 28
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust46, i32 0, i32 0
  %57 = load i32, i32* %x47, align 4, !tbaa !85
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust48 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %58, i32 0, i32 28
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust48, i32 0, i32 1
  %59 = load i32, i32* %y49, align 4, !tbaa !86
  %or = or i32 %57, %59
  %cmp50 = icmp eq i32 %or, 0
  br i1 %cmp50, label %if.then.51, label %if.end.232

if.then.51:                                       ; preds = %land.lhs.true.45
  %60 = bitcast [6 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 48, i8* %60) #1
  %61 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %start_cap, align 4, !tbaa !56
  %68 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o52 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %68, i32 0, i32 0
  %arraydecay = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call53 = call i32 @cap_points(i32 %67, %struct.endpoint_s* %o52, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call53, i32* %npoints, align 4, !tbaa !34
  %69 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp54 = icmp eq %struct.partial_line_s* %69, null
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.then.51
  %70 = load i32, i32* %end_cap, align 4, !tbaa !56
  %71 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e56 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %71, i32 0, i32 1
  %arraydecay57 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %72 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay57, i64 %idx.ext
  %call58 = call i32 @cap_points(i32 %70, %struct.endpoint_s* %e56, %struct.gs_fixed_point_s* %add.ptr) #6
  store i32 %call58, i32* %code, align 4, !tbaa !34
  br label %if.end.68

if.else:                                          ; preds = %if.then.51
  %73 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %74 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %75 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay59 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %76 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext60 = sext i32 %76 to i64
  %add.ptr61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay59, i64 %idx.ext60
  %77 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool62 = icmp ne i32 %77, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.else
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.else
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 5
  %79 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi %struct.gs_matrix_s* [ null, %cond.true.63 ], [ %79, %cond.false.64 ]
  %80 = load i32, i32* %join.addr, align 4, !tbaa !56
  %81 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call67 = call i32 @line_join_points(%struct.gx_line_params_s* %73, %struct.partial_line_s* %74, %struct.partial_line_s* %75, %struct.gs_fixed_point_s* %add.ptr61, %struct.gs_matrix_s* %cond66, i32 %80, i32 %81) #6
  store i32 %call67, i32* %code, align 4, !tbaa !34
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end.65, %if.then.55
  %82 = load i32, i32* %code, align 4, !tbaa !34
  %cmp69 = icmp slt i32 %82, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.225

if.end.71:                                        ; preds = %if.end.68
  %arrayidx = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %83 = load i32, i32* %x72, align 4, !tbaa !39
  %arrayidx73 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx73, i32 0, i32 0
  %84 = load i32, i32* %x74, align 4, !tbaa !39
  %sub = sub nsw i32 %83, %84
  store i32 %sub, i32* %ax, align 4, !tbaa !34
  %arrayidx75 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx75, i32 0, i32 0
  %85 = load i32, i32* %x76, align 4, !tbaa !39
  %xor = xor i32 %sub, %85
  %cmp77 = icmp slt i32 %xor, 0
  br i1 %cmp77, label %land.lhs.true.78, label %lor.lhs.false.85

land.lhs.true.78:                                 ; preds = %if.end.71
  %arrayidx79 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx79, i32 0, i32 0
  %86 = load i32, i32* %x80, align 4, !tbaa !39
  %arrayidx81 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx81, i32 0, i32 0
  %87 = load i32, i32* %x82, align 4, !tbaa !39
  %xor83 = xor i32 %86, %87
  %cmp84 = icmp slt i32 %xor83, 0
  br i1 %cmp84, label %if.then.136, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.78, %if.end.71
  %arrayidx86 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx86, i32 0, i32 1
  %88 = load i32, i32* %y87, align 4, !tbaa !38
  %arrayidx88 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx88, i32 0, i32 1
  %89 = load i32, i32* %y89, align 4, !tbaa !38
  %sub90 = sub nsw i32 %88, %89
  store i32 %sub90, i32* %ay, align 4, !tbaa !34
  %arrayidx91 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx91, i32 0, i32 1
  %90 = load i32, i32* %y92, align 4, !tbaa !38
  %xor93 = xor i32 %sub90, %90
  %cmp94 = icmp slt i32 %xor93, 0
  br i1 %cmp94, label %land.lhs.true.95, label %lor.lhs.false.102

land.lhs.true.95:                                 ; preds = %lor.lhs.false.85
  %arrayidx96 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx96, i32 0, i32 1
  %91 = load i32, i32* %y97, align 4, !tbaa !38
  %arrayidx98 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx98, i32 0, i32 1
  %92 = load i32, i32* %y99, align 4, !tbaa !38
  %xor100 = xor i32 %91, %92
  %cmp101 = icmp slt i32 %xor100, 0
  br i1 %cmp101, label %if.then.136, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.95, %lor.lhs.false.85
  %arrayidx103 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx103, i32 0, i32 0
  %93 = load i32, i32* %x104, align 4, !tbaa !39
  %arrayidx105 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx105, i32 0, i32 0
  %94 = load i32, i32* %x106, align 4, !tbaa !39
  %sub107 = sub nsw i32 %93, %94
  store i32 %sub107, i32* %bx, align 4, !tbaa !34
  %arrayidx108 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx108, i32 0, i32 0
  %95 = load i32, i32* %x109, align 4, !tbaa !39
  %xor110 = xor i32 %sub107, %95
  %cmp111 = icmp slt i32 %xor110, 0
  br i1 %cmp111, label %land.lhs.true.112, label %lor.lhs.false.119

land.lhs.true.112:                                ; preds = %lor.lhs.false.102
  %arrayidx113 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx113, i32 0, i32 0
  %96 = load i32, i32* %x114, align 4, !tbaa !39
  %arrayidx115 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx115, i32 0, i32 0
  %97 = load i32, i32* %x116, align 4, !tbaa !39
  %xor117 = xor i32 %96, %97
  %cmp118 = icmp slt i32 %xor117, 0
  br i1 %cmp118, label %if.then.136, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.112, %lor.lhs.false.102
  %arrayidx120 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx120, i32 0, i32 1
  %98 = load i32, i32* %y121, align 4, !tbaa !38
  %arrayidx122 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx122, i32 0, i32 1
  %99 = load i32, i32* %y123, align 4, !tbaa !38
  %sub124 = sub nsw i32 %98, %99
  store i32 %sub124, i32* %by, align 4, !tbaa !34
  %arrayidx125 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y126 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx125, i32 0, i32 1
  %100 = load i32, i32* %y126, align 4, !tbaa !38
  %xor127 = xor i32 %sub124, %100
  %cmp128 = icmp slt i32 %xor127, 0
  br i1 %cmp128, label %land.lhs.true.129, label %if.end.137

land.lhs.true.129:                                ; preds = %lor.lhs.false.119
  %arrayidx130 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx130, i32 0, i32 1
  %101 = load i32, i32* %y131, align 4, !tbaa !38
  %arrayidx132 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx132, i32 0, i32 1
  %102 = load i32, i32* %y133, align 4, !tbaa !38
  %xor134 = xor i32 %101, %102
  %cmp135 = icmp slt i32 %xor134, 0
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %land.lhs.true.129, %land.lhs.true.112, %land.lhs.true.95, %land.lhs.true.78
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.225

if.end.137:                                       ; preds = %land.lhs.true.129, %lor.lhs.false.119
  %103 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp138 = icmp ne %struct.partial_line_s* %103, null
  br i1 %cmp138, label %if.then.139, label %if.end.211

if.then.139:                                      ; preds = %if.end.137
  %104 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp140 = icmp eq i32 %104, 0
  br i1 %cmp140, label %if.then.141, label %if.end.169

if.then.141:                                      ; preds = %if.then.139
  %arrayidx142 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx142, i32 0, i32 0
  %105 = load i32, i32* %x143, align 4, !tbaa !39
  %106 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e144 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %106, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e144, i32 0, i32 1
  %x145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %107 = load i32, i32* %x145, align 4, !tbaa !140
  %cmp146 = icmp eq i32 %105, %107
  br i1 %cmp146, label %land.lhs.true.147, label %if.then.167

land.lhs.true.147:                                ; preds = %if.then.141
  %arrayidx148 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx148, i32 0, i32 1
  %108 = load i32, i32* %y149, align 4, !tbaa !38
  %109 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e150 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %109, i32 0, i32 1
  %co151 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e150, i32 0, i32 1
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co151, i32 0, i32 1
  %110 = load i32, i32* %y152, align 4, !tbaa !141
  %cmp153 = icmp eq i32 %108, %110
  br i1 %cmp153, label %land.lhs.true.154, label %if.then.167

land.lhs.true.154:                                ; preds = %land.lhs.true.147
  %arrayidx155 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 5
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx155, i32 0, i32 0
  %111 = load i32, i32* %x156, align 4, !tbaa !39
  %112 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e157 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %112, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e157, i32 0, i32 2
  %x158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %113 = load i32, i32* %x158, align 4, !tbaa !142
  %cmp159 = icmp eq i32 %111, %113
  br i1 %cmp159, label %land.lhs.true.160, label %if.then.167

land.lhs.true.160:                                ; preds = %land.lhs.true.154
  %arrayidx161 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 5
  %y162 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx161, i32 0, i32 1
  %114 = load i32, i32* %y162, align 4, !tbaa !38
  %115 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e163 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %115, i32 0, i32 1
  %ce164 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e163, i32 0, i32 2
  %y165 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce164, i32 0, i32 1
  %116 = load i32, i32* %y165, align 4, !tbaa !143
  %cmp166 = icmp eq i32 %114, %116
  br i1 %cmp166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %land.lhs.true.160, %land.lhs.true.154, %land.lhs.true.147, %if.then.141
  br label %fill

if.end.168:                                       ; preds = %land.lhs.true.160
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.139
  %117 = bitcast %struct.gs_fixed_point_s** %bevel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %arraydecay170 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %add.ptr171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay170, i64 2
  store %struct.gs_fixed_point_s* %add.ptr171, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx172, i32 0, i32 0
  %118 = load i32, i32* %x173, align 4, !tbaa !39
  %119 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o174 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %119, i32 0, i32 0
  %p175 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o174, i32 0, i32 0
  %x176 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p175, i32 0, i32 0
  %120 = load i32, i32* %x176, align 4, !tbaa !109
  %cmp177 = icmp eq i32 %118, %120
  br i1 %cmp177, label %land.lhs.true.178, label %if.end.186

land.lhs.true.178:                                ; preds = %if.end.169
  %arrayidx179 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx179, i32 0, i32 1
  %121 = load i32, i32* %y180, align 4, !tbaa !38
  %122 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o181 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %122, i32 0, i32 0
  %p182 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o181, i32 0, i32 0
  %y183 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p182, i32 0, i32 1
  %123 = load i32, i32* %y183, align 4, !tbaa !112
  %cmp184 = icmp eq i32 %121, %123
  br i1 %cmp184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %land.lhs.true.178
  %124 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %124, i32 1
  store %struct.gs_fixed_point_s* %incdec.ptr, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %land.lhs.true.178, %if.end.169
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs187 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %125, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs187, i32 0, i32 29
  %126 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !144
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %128 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %x188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %128, i32 0, i32 0
  %129 = load i32, i32* %x188, align 4, !tbaa !39
  %130 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %130, i32 0, i32 1
  %131 = load i32, i32* %y189, align 4, !tbaa !38
  %132 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %132, i64 1
  %x191 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx190, i32 0, i32 0
  %133 = load i32, i32* %x191, align 4, !tbaa !39
  %134 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %x192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %134, i32 0, i32 0
  %135 = load i32, i32* %x192, align 4, !tbaa !39
  %sub193 = sub nsw i32 %133, %135
  %136 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %136, i64 1
  %y195 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx194, i32 0, i32 1
  %137 = load i32, i32* %y195, align 4, !tbaa !38
  %138 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %138, i32 0, i32 1
  %139 = load i32, i32* %y196, align 4, !tbaa !38
  %sub197 = sub nsw i32 %137, %139
  %140 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %140, i64 2
  %x199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx198, i32 0, i32 0
  %141 = load i32, i32* %x199, align 4, !tbaa !39
  %142 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %x200 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %142, i32 0, i32 0
  %143 = load i32, i32* %x200, align 4, !tbaa !39
  %sub201 = sub nsw i32 %141, %143
  %144 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %144, i64 2
  %y203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx202, i32 0, i32 1
  %145 = load i32, i32* %y203, align 4, !tbaa !38
  %146 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %bevel, align 8, !tbaa !1
  %y204 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %146, i32 0, i32 1
  %147 = load i32, i32* %y204, align 4, !tbaa !38
  %sub205 = sub nsw i32 %145, %147
  %148 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %149 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op206 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %149, i32 0, i32 10
  %150 = load i32, i32* %log_op206, align 4, !tbaa !61
  %call207 = call i32 %126(%struct.gx_device_s* %127, i32 %129, i32 %131, i32 %sub193, i32 %sub197, i32 %sub201, i32 %sub205, %struct.gx_device_color_s* %148, i32 %150) #6
  store i32 %call207, i32* %code, align 4, !tbaa !34
  %151 = load i32, i32* %code, align 4, !tbaa !34
  %cmp208 = icmp slt i32 %151, 0
  br i1 %cmp208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.186
  %152 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.210:                                       ; preds = %if.end.186
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.210, %if.then.209
  %153 = bitcast %struct.gs_fixed_point_s** %bevel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.225 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.211

if.end.211:                                       ; preds = %cleanup.cont, %if.end.137
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs212 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs212, i32 0, i32 28
  %155 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !145
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx213, i32 0, i32 0
  %157 = load i32, i32* %x214, align 4, !tbaa !39
  %arrayidx215 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y216 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx215, i32 0, i32 1
  %158 = load i32, i32* %y216, align 4, !tbaa !38
  %159 = load i32, i32* %ax, align 4, !tbaa !34
  %160 = load i32, i32* %ay, align 4, !tbaa !34
  %161 = load i32, i32* %bx, align 4, !tbaa !34
  %162 = load i32, i32* %by, align 4, !tbaa !34
  %163 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %164 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op217 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %164, i32 0, i32 10
  %165 = load i32, i32* %log_op217, align 4, !tbaa !61
  %call218 = call i32 %155(%struct.gx_device_s* %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, %struct.gx_device_color_s* %163, i32 %165) #6
  store i32 %call218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225

fill:                                             ; preds = %if.then.167
  %166 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay219 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], [6 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %167 = load i32, i32* %npoints, align 4, !tbaa !34
  %168 = load i32, i32* %code, align 4, !tbaa !34
  %add = add nsw i32 %167, %168
  %call220 = call i32 @add_points(%struct.gx_path_s* %166, %struct.gs_fixed_point_s* %arraydecay219, i32 %add, i32 1) #6
  store i32 %call220, i32* %code, align 4, !tbaa !34
  %169 = load i32, i32* %code, align 4, !tbaa !34
  %cmp221 = icmp slt i32 %169, 0
  br i1 %cmp221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %fill
  %170 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225

if.end.223:                                       ; preds = %fill
  %171 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call224 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %171, i32 0) #6
  store i32 %call224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225

cleanup.225:                                      ; preds = %if.then.136, %if.then.70, %if.end.223, %if.then.222, %if.end.211, %cleanup
  %172 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast [6 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 48, i8* %178) #1
  br label %cleanup.233

if.end.232:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.43, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false, %if.end.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.233

cleanup.233:                                      ; preds = %if.end.232, %cleanup.225
  %179 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %cleanup.dest.236 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.236, label %cleanup.239 [
    i32 0, label %cleanup.cont.237
    i32 2, label %general
  ]

cleanup.cont.237:                                 ; preds = %cleanup.233
  br label %general

general:                                          ; preds = %cleanup.cont.237, %cleanup.233
  %182 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %183 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %184 = load i32, i32* %ensure_closed.addr, align 4, !tbaa !34
  %185 = load i32, i32* %first.addr, align 4, !tbaa !34
  %186 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %187 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %188 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %189 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %190 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %191 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %192 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbbox.addr, align 8, !tbaa !1
  %193 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %194 = load i32, i32* %join.addr, align 4, !tbaa !56
  %195 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %196 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %call238 = call i32 @stroke_add(%struct.gx_path_s* %182, %struct.gx_path_s* %183, i32 %184, i32 %185, %struct.partial_line_s* %186, %struct.partial_line_s* %187, %struct.gx_device_color_s* %188, %struct.gx_device_s* %189, %struct.gs_imager_state_s* %190, %struct.gx_stroke_params_s* %191, %struct.gs_fixed_rect_s* %192, i32 %193, i32 %194, i32 %195, i32 %196) #6
  store i32 %call238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.239

cleanup.239:                                      ; preds = %general, %cleanup.233, %if.then
  %197 = bitcast i32* %litoy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %litox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %liy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %lix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = load i32, i32* %retval
  ret i32 %201
}

; Function Attrs: nounwind uwtable
define internal i32 @stroke_add(%struct.gx_path_s* %ppath, %struct.gx_path_s* %rpath, i32 %ensure_closed, i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gs_fixed_rect_s* %ignore_pbbox, i32 %uniform, i32 %join, i32 %reflected, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %ensure_closed.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %ignore_pbbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %uniform.addr = alloca i32, align 4
  %join.addr = alloca i32, align 4
  %reflected.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %points = alloca [8 x %struct.gs_fixed_point_s], align 16
  %npoints = alloca i32, align 4
  %code = alloca i32, align 4
  %moveto_first = alloca i32, align 4
  %start_cap = alloca i32, align 4
  %end_cap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  store i32 %ensure_closed, i32* %ensure_closed.addr, align 4, !tbaa !34
  store i32 %first, i32* %first.addr, align 4, !tbaa !34
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %ignore_pbbox, %struct.gs_fixed_rect_s** %ignore_pbbox.addr, align 8, !tbaa !1
  store i32 %uniform, i32* %uniform.addr, align 4, !tbaa !34
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %2 = bitcast [8 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1, i32* %moveto_first, align 4, !tbaa !34
  %6 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and = and i32 %7, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %8, i32 0, i32 3
  %9 = load i32, i32* %dash_cap, align 4, !tbaa !120
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap1 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %10, i32 0, i32 1
  %11 = load i32, i32* %start_cap1, align 4, !tbaa !116
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %start_cap, align 4, !tbaa !56
  %12 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and2 = and i32 %13, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %14 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap5 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %14, i32 0, i32 3
  %15 = load i32, i32* %dash_cap5, align 4, !tbaa !120
  br label %cond.end.8

cond.false.6:                                     ; preds = %cond.end
  %16 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %end_cap7 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %16, i32 0, i32 2
  %17 = load i32, i32* %end_cap7, align 4, !tbaa !117
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.4
  %cond9 = phi i32 [ %15, %cond.true.4 ], [ %17, %cond.false.6 ]
  store i32 %cond9, i32* %end_cap, align 4, !tbaa !56
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 4
  %19 = load i32, i32* %thin, align 4, !tbaa !128
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @set_thin_widths(%struct.partial_line_s* %20) #6
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %22 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.partial_line_s* %25, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %26 = phi i1 [ false, %if.then ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  %27 = load i32, i32* %flags.addr, align 4, !tbaa !56
  call void @adjust_stroke(%struct.gx_device_s* %21, %struct.partial_line_s* %22, %struct.gs_imager_state_s* %23, i32 1, i32 %land.ext, i32 %27) #6
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @compute_caps(%struct.partial_line_s* %28) #6
  br label %if.end

if.end:                                           ; preds = %land.end, %cond.end.8
  %29 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp12 = icmp eq i32 %29, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %30 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp13 = icmp eq i32 %30, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %33 = load i32, i32* %x, align 4, !tbaa !146
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o15 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %34, i32 0, i32 0
  %co16 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o15, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co16, i32 0, i32 1
  %35 = load i32, i32* %y, align 4, !tbaa !147
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %31, i32 %33, i32 %35) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %37 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o18 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %37, i32 0, i32 0
  %call19 = call i32 @add_pie_cap(%struct.gx_path_s* %36, %struct.endpoint_s* %o18) #6
  store i32 %call19, i32* %code, align 4, !tbaa !34
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.end
  %38 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %npoints, align 4, !tbaa !34
  store i32 0, i32* %moveto_first, align 4, !tbaa !34
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %if.end
  %39 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp23 = icmp eq i32 %39, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else
  %40 = load i32, i32* %start_cap, align 4, !tbaa !56
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.else
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %40, %cond.true.24 ], [ 0, %cond.false.25 ]
  %41 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o28 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %41, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call29 = call i32 @cap_points(i32 %cond27, %struct.endpoint_s* %o28, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call29, i32* %npoints, align 4, !tbaa !34
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %cond.end.26
  %42 = load i32, i32* %npoints, align 4, !tbaa !34
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %cond.end.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.22
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.partial_line_s* %43, null
  br i1 %cmp34, label %if.then.35, label %if.else.61

if.then.35:                                       ; preds = %if.end.33
  %44 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp36 = icmp eq i32 %44, 1
  br i1 %cmp36, label %if.then.37, label %if.end.57

if.then.37:                                       ; preds = %if.then.35
  %45 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %45, i32 0, i32 1
  %co38 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co38, i32 0, i32 0
  %46 = load i32, i32* %x39, align 4, !tbaa !140
  %47 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %46, i32* %x40, align 4, !tbaa !39
  %48 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e41 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %48, i32 0, i32 1
  %co42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e41, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co42, i32 0, i32 1
  %49 = load i32, i32* %y43, align 4, !tbaa !141
  %50 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom44
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx45, i32 0, i32 1
  store i32 %49, i32* %y46, align 4, !tbaa !38
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.37
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %51 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %npoints, align 4, !tbaa !34
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %53 = load i32, i32* %npoints, align 4, !tbaa !34
  %54 = load i32, i32* %moveto_first, align 4, !tbaa !34
  %call51 = call i32 @add_points(%struct.gx_path_s* %52, %struct.gs_fixed_point_s* %arraydecay50, i32 %53, i32 %54) #6
  store i32 %call51, i32* %code, align 4, !tbaa !34
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.end.49
  %55 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %do.end.49
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %57 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e55 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %57, i32 0, i32 1
  %call56 = call i32 @add_pie_cap(%struct.gx_path_s* %56, %struct.endpoint_s* %e55) #6
  store i32 %call56, i32* %code, align 4, !tbaa !34
  br label %done

if.end.57:                                        ; preds = %if.then.35
  %58 = load i32, i32* %end_cap, align 4, !tbaa !56
  %59 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e58 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %59, i32 0, i32 1
  %arraydecay59 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %60 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext = sext i32 %60 to i64
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay59, i64 %idx.ext
  %call60 = call i32 @cap_points(i32 %58, %struct.endpoint_s* %e58, %struct.gs_fixed_point_s* %add.ptr) #6
  store i32 %call60, i32* %code, align 4, !tbaa !34
  br label %if.end.134

if.else.61:                                       ; preds = %if.end.33
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %thin62 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 4
  %62 = load i32, i32* %thin62, align 4, !tbaa !128
  %tobool63 = icmp ne i32 %62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %if.else.61
  %63 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e65 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %63, i32 0, i32 1
  %arraydecay66 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %64 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext67 = sext i32 %64 to i64
  %add.ptr68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay66, i64 %idx.ext67
  %call69 = call i32 @cap_points(i32 0, %struct.endpoint_s* %e65, %struct.gs_fixed_point_s* %add.ptr68) #6
  store i32 %call69, i32* %code, align 4, !tbaa !34
  br label %if.end.133

if.else.70:                                       ; preds = %if.else.61
  %65 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp71 = icmp eq i32 %65, 1
  br i1 %cmp71, label %if.then.72, label %if.else.95

if.then.72:                                       ; preds = %if.else.70
  %66 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e73 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %66, i32 0, i32 1
  %co74 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e73, i32 0, i32 1
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co74, i32 0, i32 0
  %67 = load i32, i32* %x75, align 4, !tbaa !140
  %68 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom76
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx77, i32 0, i32 0
  store i32 %67, i32* %x78, align 4, !tbaa !39
  %69 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e79 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %69, i32 0, i32 1
  %co80 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e79, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co80, i32 0, i32 1
  %70 = load i32, i32* %y81, align 4, !tbaa !141
  %71 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom82 = sext i32 %71 to i64
  %arrayidx83 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom82
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx83, i32 0, i32 1
  store i32 %70, i32* %y84, align 4, !tbaa !38
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.72
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.85
  br label %do.end.87

do.end.87:                                        ; preds = %do.cond.86
  %72 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc88 = add nsw i32 %72, 1
  store i32 %inc88, i32* %npoints, align 4, !tbaa !34
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay89 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %74 = load i32, i32* %npoints, align 4, !tbaa !34
  %75 = load i32, i32* %moveto_first, align 4, !tbaa !34
  %call90 = call i32 @add_points(%struct.gx_path_s* %73, %struct.gs_fixed_point_s* %arraydecay89, i32 %74, i32 %75) #6
  store i32 %call90, i32* %code, align 4, !tbaa !34
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.87
  %76 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %do.end.87
  %77 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %78 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %79 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %80 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call94 = call i32 @add_pie_join(%struct.gx_path_s* %77, %struct.partial_line_s* %78, %struct.partial_line_s* %79, i32 %80, i32 1) #6
  store i32 %call94, i32* %code, align 4, !tbaa !34
  br label %done

if.else.95:                                       ; preds = %if.else.70
  %81 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and96 = and i32 %81, 1
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.else.121

if.then.98:                                       ; preds = %if.else.95
  %82 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e99 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %82, i32 0, i32 1
  %co100 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e99, i32 0, i32 1
  %x101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co100, i32 0, i32 0
  %83 = load i32, i32* %x101, align 4, !tbaa !140
  %84 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom102 = sext i32 %84 to i64
  %arrayidx103 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom102
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx103, i32 0, i32 0
  store i32 %83, i32* %x104, align 4, !tbaa !39
  %85 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %85, i32 0, i32 1
  %co106 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e105, i32 0, i32 1
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co106, i32 0, i32 1
  %86 = load i32, i32* %y107, align 4, !tbaa !141
  %87 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom108 = sext i32 %87 to i64
  %arrayidx109 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom108
  %y110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx109, i32 0, i32 1
  store i32 %86, i32* %y110, align 4, !tbaa !38
  br label %do.body.111

do.body.111:                                      ; preds = %if.then.98
  br label %do.cond.112

do.cond.112:                                      ; preds = %do.body.111
  br label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  %88 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc114 = add nsw i32 %88, 1
  store i32 %inc114, i32* %npoints, align 4, !tbaa !34
  %89 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay115 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %90 = load i32, i32* %npoints, align 4, !tbaa !34
  %91 = load i32, i32* %moveto_first, align 4, !tbaa !34
  %call116 = call i32 @add_points(%struct.gx_path_s* %89, %struct.gs_fixed_point_s* %arraydecay115, i32 %90, i32 %91) #6
  store i32 %call116, i32* %code, align 4, !tbaa !34
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %do.end.113
  %92 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.119:                                       ; preds = %do.end.113
  %93 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %94 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %95 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %96 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call120 = call i32 @add_pie_join(%struct.gx_path_s* %93, %struct.partial_line_s* %94, %struct.partial_line_s* %95, i32 %96, i32 0) #6
  store i32 %call120, i32* %code, align 4, !tbaa !34
  br label %done

if.else.121:                                      ; preds = %if.else.95
  %97 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %98 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %99 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %100 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext123 = sext i32 %100 to i64
  %add.ptr124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay122, i64 %idx.ext123
  %101 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool125 = icmp ne i32 %101, 0
  br i1 %tobool125, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %if.else.121
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.else.121
  %102 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %102, i32 0, i32 5
  %103 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.126
  %cond129 = phi %struct.gs_matrix_s* [ null, %cond.true.126 ], [ %103, %cond.false.127 ]
  %104 = load i32, i32* %join.addr, align 4, !tbaa !56
  %105 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call130 = call i32 @line_join_points(%struct.gx_line_params_s* %97, %struct.partial_line_s* %98, %struct.partial_line_s* %99, %struct.gs_fixed_point_s* %add.ptr124, %struct.gs_matrix_s* %cond129, i32 %104, i32 %105) #6
  store i32 %call130, i32* %code, align 4, !tbaa !34
  br label %if.end.131

if.end.131:                                       ; preds = %cond.end.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.64
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.57
  %106 = load i32, i32* %code, align 4, !tbaa !34
  %cmp135 = icmp slt i32 %106, 0
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.134
  %107 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.end.134
  %108 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay138 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %109 = load i32, i32* %npoints, align 4, !tbaa !34
  %110 = load i32, i32* %code, align 4, !tbaa !34
  %add = add nsw i32 %109, %110
  %111 = load i32, i32* %moveto_first, align 4, !tbaa !34
  %call139 = call i32 @add_points(%struct.gx_path_s* %108, %struct.gs_fixed_point_s* %arraydecay138, i32 %add, i32 %111) #6
  store i32 %call139, i32* %code, align 4, !tbaa !34
  br label %done

done:                                             ; preds = %if.end.137, %if.end.119, %if.end.93, %if.end.54
  %112 = load i32, i32* %code, align 4, !tbaa !34
  %cmp140 = icmp slt i32 %112, 0
  br i1 %cmp140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %done
  %113 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.142:                                       ; preds = %done
  br label %do.body.143

do.body.143:                                      ; preds = %if.end.142
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  %114 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and146 = and i32 %114, 2
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %land.lhs.true.148, label %if.end.158

land.lhs.true.148:                                ; preds = %do.end.145
  %115 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin149 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %115, i32 0, i32 4
  %116 = load i32, i32* %thin149, align 4, !tbaa !128
  %tobool150 = icmp ne i32 %116, 0
  br i1 %tobool150, label %if.end.158, label %land.lhs.true.151

land.lhs.true.151:                                ; preds = %land.lhs.true.148
  %117 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp152 = icmp ne %struct.partial_line_s* %117, null
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %land.lhs.true.151
  %118 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %thin154 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %118, i32 0, i32 4
  %119 = load i32, i32* %thin154, align 4, !tbaa !128
  %tobool155 = icmp ne i32 %119, 0
  br i1 %tobool155, label %if.end.158, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.153
  %120 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %121 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %122 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %123 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call157 = call i32 @join_under_pie(%struct.gx_path_s* %120, %struct.partial_line_s* %121, %struct.partial_line_s* %122, i32 %123) #6
  store i32 %call157, i32* %code, align 4, !tbaa !34
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.153, %land.lhs.true.151, %land.lhs.true.148, %do.end.145
  %124 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call159 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %124, i32 0) #6
  store i32 %call159, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.158, %if.then.141, %if.then.136, %if.then.118, %if.then.92, %if.then.53, %if.then.31, %if.then.21
  %125 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast [8 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 64, i8* %130) #1
  %131 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define internal i32 @stroke_add_compat(%struct.gx_path_s* %ppath, %struct.gx_path_s* %rpath, i32 %ensure_closed, i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gs_fixed_rect_s* %ignore_pbbox, i32 %uniform, i32 %join, i32 %reflected, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %ensure_closed.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %ignore_pbbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %uniform.addr = alloca i32, align 4
  %join.addr = alloca i32, align 4
  %reflected.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %points = alloca [5 x %struct.gs_fixed_point_s], align 16
  %npoints = alloca i32, align 4
  %moveto_first = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ccw = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  store i32 %ensure_closed, i32* %ensure_closed.addr, align 4, !tbaa !34
  store i32 %first, i32* %first.addr, align 4, !tbaa !34
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %ignore_pbbox, %struct.gs_fixed_rect_s** %ignore_pbbox.addr, align 8, !tbaa !1
  store i32 %uniform, i32* %uniform.addr, align 4, !tbaa !34
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %2 = bitcast [5 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %moveto_first, align 4, !tbaa !34
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 4
  %7 = load i32, i32* %thin, align 4, !tbaa !128
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @set_thin_widths(%struct.partial_line_s* %8) #6
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.partial_line_s* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %14 = phi i1 [ false, %if.then ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  %15 = load i32, i32* %flags.addr, align 4, !tbaa !56
  call void @adjust_stroke(%struct.gx_device_s* %9, %struct.partial_line_s* %10, %struct.gs_imager_state_s* %11, i32 1, i32 %land.ext, i32 %15) #6
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @compute_caps(%struct.partial_line_s* %16) #6
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %17 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %17, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !148
  %arrayidx = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %18, i32* %x2, align 4, !tbaa !39
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 0
  %ce4 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o3, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce4, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !149
  %arrayidx5 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx5, i32 0, i32 1
  store i32 %20, i32* %y6, align 4, !tbaa !38
  %21 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %21, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %22 = load i32, i32* %x7, align 4, !tbaa !140
  %arrayidx8 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx8, i32 0, i32 0
  store i32 %22, i32* %x9, align 4, !tbaa !39
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e10 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 1
  %co11 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e10, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co11, i32 0, i32 1
  %24 = load i32, i32* %y12, align 4, !tbaa !141
  %arrayidx13 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx13, i32 0, i32 1
  store i32 %24, i32* %y14, align 4, !tbaa !38
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e15 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 1
  %ce16 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e15, i32 0, i32 2
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce16, i32 0, i32 0
  %26 = load i32, i32* %x17, align 4, !tbaa !142
  %arrayidx18 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx18, i32 0, i32 0
  store i32 %26, i32* %x19, align 4, !tbaa !39
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e20 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 1
  %ce21 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e20, i32 0, i32 2
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce21, i32 0, i32 1
  %28 = load i32, i32* %y22, align 4, !tbaa !143
  %arrayidx23 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx23, i32 0, i32 1
  store i32 %28, i32* %y24, align 4, !tbaa !38
  %29 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o25 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %29, i32 0, i32 0
  %co26 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o25, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co26, i32 0, i32 0
  %30 = load i32, i32* %x27, align 4, !tbaa !146
  %arrayidx28 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx28, i32 0, i32 0
  store i32 %30, i32* %x29, align 4, !tbaa !39
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o30 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 0
  %co31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o30, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co31, i32 0, i32 1
  %32 = load i32, i32* %y32, align 4, !tbaa !147
  %arrayidx33 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx33, i32 0, i32 1
  store i32 %32, i32* %y34, align 4, !tbaa !38
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call = call i32 @add_points(%struct.gx_path_s* %33, %struct.gs_fixed_point_s* %arraydecay, i32 4, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %34 = load i32, i32* %code, align 4, !tbaa !34
  %cmp35 = icmp slt i32 %34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  %35 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.37:                                        ; preds = %if.end
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call38 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %36, i32 0) #6
  store i32 %call38, i32* %code, align 4, !tbaa !34
  %37 = load i32, i32* %code, align 4, !tbaa !34
  %cmp39 = icmp slt i32 %37, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %38 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.41:                                        ; preds = %if.end.37
  br label %do.body

do.body:                                          ; preds = %if.end.41
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %npoints, align 4, !tbaa !34
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp42 = icmp eq %struct.partial_line_s* %39, null
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %do.end
  %40 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %40, i32 0, i32 1
  %41 = load i32, i32* %start_cap, align 4, !tbaa !116
  %cmp44 = icmp eq i32 %41, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.46:                                        ; preds = %if.then.43
  %42 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap47 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %42, i32 0, i32 1
  %43 = load i32, i32* %start_cap47, align 4, !tbaa !116
  %cmp48 = icmp eq i32 %43, 1
  br i1 %cmp48, label %if.then.49, label %if.end.71

if.then.49:                                       ; preds = %if.end.46
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e50 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 1
  %co51 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e50, i32 0, i32 1
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co51, i32 0, i32 0
  %45 = load i32, i32* %x52, align 4, !tbaa !140
  %46 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom = sext i32 %46 to i64
  %arrayidx53 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx53, i32 0, i32 0
  store i32 %45, i32* %x54, align 4, !tbaa !39
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e55 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 1
  %co56 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e55, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co56, i32 0, i32 1
  %48 = load i32, i32* %y57, align 4, !tbaa !141
  %49 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom58
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx59, i32 0, i32 1
  store i32 %48, i32* %y60, align 4, !tbaa !38
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.49
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %50 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %npoints, align 4, !tbaa !34
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay64 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %52 = load i32, i32* %npoints, align 4, !tbaa !34
  %call65 = call i32 @add_points(%struct.gx_path_s* %51, %struct.gs_fixed_point_s* %arraydecay64, i32 %52, i32 1) #6
  store i32 %call65, i32* %code, align 4, !tbaa !34
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.end.63
  %53 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.68:                                        ; preds = %do.end.63
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e69 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 1
  %call70 = call i32 @add_round_cap(%struct.gx_path_s* %54, %struct.endpoint_s* %e69) #6
  store i32 %call70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.71:                                        ; preds = %if.end.46
  %56 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e72 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %56, i32 0, i32 1
  %ce73 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e72, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce73, i32 0, i32 0
  %57 = load i32, i32* %x74, align 4, !tbaa !142
  %arrayidx75 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx75, i32 0, i32 0
  store i32 %57, i32* %x76, align 4, !tbaa !39
  %58 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e77 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %58, i32 0, i32 1
  %ce78 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e77, i32 0, i32 2
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce78, i32 0, i32 1
  %59 = load i32, i32* %y79, align 4, !tbaa !143
  %arrayidx80 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx80, i32 0, i32 1
  store i32 %59, i32* %y81, align 4, !tbaa !38
  %60 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc82 = add nsw i32 %60, 1
  store i32 %inc82, i32* %npoints, align 4, !tbaa !34
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e83 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 1
  %co84 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e83, i32 0, i32 1
  %x85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co84, i32 0, i32 0
  %62 = load i32, i32* %x85, align 4, !tbaa !140
  %63 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom86 = sext i32 %63 to i64
  %arrayidx87 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom86
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx87, i32 0, i32 0
  store i32 %62, i32* %x88, align 4, !tbaa !39
  %64 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e89 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %64, i32 0, i32 1
  %co90 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e89, i32 0, i32 1
  %y91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co90, i32 0, i32 1
  %65 = load i32, i32* %y91, align 4, !tbaa !141
  %66 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom92 = sext i32 %66 to i64
  %arrayidx93 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom92
  %y94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx93, i32 0, i32 1
  store i32 %65, i32* %y94, align 4, !tbaa !38
  %67 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc95 = add nsw i32 %67, 1
  store i32 %inc95, i32* %npoints, align 4, !tbaa !34
  %68 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap96 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %68, i32 0, i32 1
  %69 = load i32, i32* %start_cap96, align 4, !tbaa !116
  %70 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e97 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %70, i32 0, i32 1
  %arraydecay98 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %71 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay98, i64 %idx.ext
  %call99 = call i32 @cap_points(i32 %69, %struct.endpoint_s* %e97, %struct.gs_fixed_point_s* %add.ptr) #6
  store i32 %call99, i32* %code, align 4, !tbaa !34
  %72 = load i32, i32* %code, align 4, !tbaa !34
  %cmp100 = icmp slt i32 %72, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.71
  %73 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.102:                                       ; preds = %if.end.71
  %74 = load i32, i32* %code, align 4, !tbaa !34
  %75 = load i32, i32* %npoints, align 4, !tbaa !34
  %add = add nsw i32 %75, %74
  store i32 %add, i32* %npoints, align 4, !tbaa !34
  br label %if.end.198

if.else:                                          ; preds = %do.end
  %76 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp103 = icmp eq i32 %76, 1
  br i1 %cmp103, label %if.then.104, label %if.else.128

if.then.104:                                      ; preds = %if.else
  %77 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %77, i32 0, i32 1
  %co106 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e105, i32 0, i32 1
  %x107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co106, i32 0, i32 0
  %78 = load i32, i32* %x107, align 4, !tbaa !140
  %79 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom108 = sext i32 %79 to i64
  %arrayidx109 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom108
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx109, i32 0, i32 0
  store i32 %78, i32* %x110, align 4, !tbaa !39
  %80 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e111 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %80, i32 0, i32 1
  %co112 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e111, i32 0, i32 1
  %y113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co112, i32 0, i32 1
  %81 = load i32, i32* %y113, align 4, !tbaa !141
  %82 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom114 = sext i32 %82 to i64
  %arrayidx115 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom114
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx115, i32 0, i32 1
  store i32 %81, i32* %y116, align 4, !tbaa !38
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.104
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.body.117
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  %83 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc120 = add nsw i32 %83, 1
  store i32 %inc120, i32* %npoints, align 4, !tbaa !34
  %84 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay121 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %85 = load i32, i32* %npoints, align 4, !tbaa !34
  %call122 = call i32 @add_points(%struct.gx_path_s* %84, %struct.gs_fixed_point_s* %arraydecay121, i32 %85, i32 1) #6
  store i32 %call122, i32* %code, align 4, !tbaa !34
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %do.end.119
  %86 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.125:                                       ; preds = %do.end.119
  %87 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %88 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e126 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %88, i32 0, i32 1
  %call127 = call i32 @add_round_cap(%struct.gx_path_s* %87, %struct.endpoint_s* %e126) #6
  store i32 %call127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.else.128:                                      ; preds = %if.else
  %89 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %thin129 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %89, i32 0, i32 4
  %90 = load i32, i32* %thin129, align 4, !tbaa !128
  %tobool130 = icmp ne i32 %90, 0
  br i1 %tobool130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.else.128
  store i32 0, i32* %npoints, align 4, !tbaa !34
  br label %if.end.196

if.else.132:                                      ; preds = %if.else.128
  %91 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %92, i32 0, i32 2
  %x133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %93 = load i32, i32* %x133, align 4, !tbaa !127
  %conv = sitofp i32 %93 to double
  %94 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width134 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %94, i32 0, i32 2
  %y135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width134, i32 0, i32 1
  %95 = load i32, i32* %y135, align 4, !tbaa !126
  %conv136 = sitofp i32 %95 to double
  %mul = fmul double %conv, %conv136
  %96 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width137 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %96, i32 0, i32 2
  %x138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width137, i32 0, i32 0
  %97 = load i32, i32* %x138, align 4, !tbaa !127
  %conv139 = sitofp i32 %97 to double
  %98 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width140 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %98, i32 0, i32 2
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width140, i32 0, i32 1
  %99 = load i32, i32* %y141, align 4, !tbaa !126
  %conv142 = sitofp i32 %99 to double
  %mul143 = fmul double %conv139, %conv142
  %cmp144 = fcmp ogt double %mul, %mul143
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %ccw, align 4, !tbaa !34
  %100 = load i32, i32* %ccw, align 4, !tbaa !34
  %101 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %xor = xor i32 %100, %101
  %tobool146 = icmp ne i32 %xor, 0
  br i1 %tobool146, label %if.then.147, label %if.else.172

if.then.147:                                      ; preds = %if.else.132
  %102 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e148 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %102, i32 0, i32 1
  %co149 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e148, i32 0, i32 1
  %x150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co149, i32 0, i32 0
  %103 = load i32, i32* %x150, align 4, !tbaa !140
  %arrayidx151 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx151, i32 0, i32 0
  store i32 %103, i32* %x152, align 4, !tbaa !39
  %104 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e153 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %104, i32 0, i32 1
  %co154 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e153, i32 0, i32 1
  %y155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co154, i32 0, i32 1
  %105 = load i32, i32* %y155, align 4, !tbaa !141
  %arrayidx156 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y157 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx156, i32 0, i32 1
  store i32 %105, i32* %y157, align 4, !tbaa !38
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.147
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.body.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %106 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc161 = add nsw i32 %106, 1
  store i32 %inc161, i32* %npoints, align 4, !tbaa !34
  %107 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %108 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %109 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay162 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %110 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext163 = sext i32 %110 to i64
  %add.ptr164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay162, i64 %idx.ext163
  %111 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool165 = icmp ne i32 %111, 0
  br i1 %tobool165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.160
  br label %cond.end

cond.false:                                       ; preds = %do.end.160
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %112, i32 0, i32 5
  %113 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix_s* [ null, %cond.true ], [ %113, %cond.false ]
  %114 = load i32, i32* %join.addr, align 4, !tbaa !56
  %115 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call166 = call i32 @line_join_points(%struct.gx_line_params_s* %107, %struct.partial_line_s* %108, %struct.partial_line_s* %109, %struct.gs_fixed_point_s* %add.ptr164, %struct.gs_matrix_s* %cond, i32 %114, i32 %115) #6
  store i32 %call166, i32* %code, align 4, !tbaa !34
  %116 = load i32, i32* %code, align 4, !tbaa !34
  %cmp167 = icmp slt i32 %116, 0
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %cond.end
  %117 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.170:                                       ; preds = %cond.end
  %118 = load i32, i32* %code, align 4, !tbaa !34
  %dec = add nsw i32 %118, -1
  store i32 %dec, i32* %code, align 4, !tbaa !34
  %119 = load i32, i32* %code, align 4, !tbaa !34
  %120 = load i32, i32* %npoints, align 4, !tbaa !34
  %add171 = add nsw i32 %120, %119
  store i32 %add171, i32* %npoints, align 4, !tbaa !34
  br label %if.end.195

if.else.172:                                      ; preds = %if.else.132
  %121 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %122 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %123 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay173 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %124 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool174 = icmp ne i32 %124, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %if.else.172
  br label %cond.end.178

cond.false.176:                                   ; preds = %if.else.172
  %125 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm177 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %125, i32 0, i32 5
  %126 = bitcast %struct.gs_matrix_fixed_s* %ctm177 to %struct.gs_matrix_s*
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.176, %cond.true.175
  %cond179 = phi %struct.gs_matrix_s* [ null, %cond.true.175 ], [ %126, %cond.false.176 ]
  %127 = load i32, i32* %join.addr, align 4, !tbaa !56
  %128 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call180 = call i32 @line_join_points(%struct.gx_line_params_s* %121, %struct.partial_line_s* %122, %struct.partial_line_s* %123, %struct.gs_fixed_point_s* %arraydecay173, %struct.gs_matrix_s* %cond179, i32 %127, i32 %128) #6
  store i32 %call180, i32* %code, align 4, !tbaa !34
  %129 = load i32, i32* %code, align 4, !tbaa !34
  %cmp181 = icmp slt i32 %129, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %cond.end.178
  %130 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %130, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.184:                                       ; preds = %cond.end.178
  %131 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e185 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %131, i32 0, i32 1
  %ce186 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e185, i32 0, i32 2
  %x187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce186, i32 0, i32 0
  %132 = load i32, i32* %x187, align 4, !tbaa !142
  %arrayidx188 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx188, i32 0, i32 0
  store i32 %132, i32* %x189, align 4, !tbaa !39
  %133 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e190 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %133, i32 0, i32 1
  %ce191 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e190, i32 0, i32 2
  %y192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce191, i32 0, i32 1
  %134 = load i32, i32* %y192, align 4, !tbaa !143
  %arrayidx193 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y194 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx193, i32 0, i32 1
  store i32 %134, i32* %y194, align 4, !tbaa !38
  %135 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %135, i32* %npoints, align 4, !tbaa !34
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.184, %if.end.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.195, %if.then.183, %if.then.169
  %136 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.209 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.196

if.end.196:                                       ; preds = %cleanup.cont, %if.then.131
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.102
  %137 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay199 = getelementptr inbounds [5 x %struct.gs_fixed_point_s], [5 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %138 = load i32, i32* %npoints, align 4, !tbaa !34
  %call200 = call i32 @add_points(%struct.gx_path_s* %137, %struct.gs_fixed_point_s* %arraydecay199, i32 %138, i32 1) #6
  store i32 %call200, i32* %code, align 4, !tbaa !34
  %139 = load i32, i32* %code, align 4, !tbaa !34
  %cmp201 = icmp slt i32 %139, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.198
  %140 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

if.end.204:                                       ; preds = %if.end.198
  %141 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call205 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %141, i32 0) #6
  store i32 %call205, i32* %code, align 4, !tbaa !34
  br label %do.body.206

do.body.206:                                      ; preds = %if.end.204
  br label %do.cond.207

do.cond.207:                                      ; preds = %do.body.206
  br label %do.end.208

do.end.208:                                       ; preds = %do.cond.207
  %142 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.209

cleanup.209:                                      ; preds = %do.end.208, %if.then.203, %cleanup, %if.end.125, %if.then.124, %if.then.101, %if.end.68, %if.then.67, %if.then.45, %if.then.40, %if.then.36
  %143 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast [5 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 40, i8* %146) #1
  %147 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal i32 @stroke_add_fast(%struct.gx_path_s* %ppath, %struct.gx_path_s* %rpath, i32 %ensure_closed, i32 %first, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gs_fixed_rect_s* %ignore_pbbox, i32 %uniform, i32 %join, i32 %reflected, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %ensure_closed.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %ignore_pbbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %uniform.addr = alloca i32, align 4
  %join.addr = alloca i32, align 4
  %reflected.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %points = alloca [8 x %struct.gs_fixed_point_s], align 16
  %rpoints = alloca [8 x %struct.gs_fixed_point_s], align 16
  %npoints = alloca i32, align 4
  %nrpoints = alloca i32, align 4
  %code = alloca i32, align 4
  %moveto_first = alloca i32, align 4
  %rmoveto_first = alloca i32, align 4
  %start_cap = alloca i32, align 4
  %end_cap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l = alloca double, align 8
  %r = alloca double, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  store i32 %ensure_closed, i32* %ensure_closed.addr, align 4, !tbaa !34
  store i32 %first, i32* %first.addr, align 4, !tbaa !34
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %ignore_pbbox, %struct.gs_fixed_rect_s** %ignore_pbbox.addr, align 8, !tbaa !1
  store i32 %uniform, i32* %uniform.addr, align 4, !tbaa !34
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !56
  %0 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %2 = bitcast [8 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [8 x %struct.gs_fixed_point_s]* %rpoints to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %npoints, align 4, !tbaa !34
  %5 = bitcast i32* %nrpoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %nrpoints, align 4, !tbaa !34
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %moveto_first, align 4, !tbaa !34
  %8 = bitcast i32* %rmoveto_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %rmoveto_first, align 4, !tbaa !34
  %9 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 4
  %12 = load i32, i32* %thin, align 4, !tbaa !128
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @set_thin_widths(%struct.partial_line_s* %13) #6
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.partial_line_s* %18, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %19 = phi i1 [ false, %if.then ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %20 = load i32, i32* %flags.addr, align 4, !tbaa !56
  call void @adjust_stroke(%struct.gx_device_s* %14, %struct.partial_line_s* %15, %struct.gs_imager_state_s* %16, i32 1, i32 %land.ext, i32 %20) #6
  %21 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @compute_caps(%struct.partial_line_s* %21) #6
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %22 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and = and i32 %22, 4
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %23 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %23, i32 0, i32 3
  %24 = load i32, i32* %dash_cap, align 4, !tbaa !120
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %25 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap3 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %25, i32 0, i32 1
  %26 = load i32, i32* %start_cap3, align 4, !tbaa !116
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %start_cap, align 4, !tbaa !56
  %27 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and4 = and i32 %27, 8
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %28 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap7 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %28, i32 0, i32 3
  %29 = load i32, i32* %dash_cap7, align 4, !tbaa !120
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %30 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %end_cap9 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %30, i32 0, i32 2
  %31 = load i32, i32* %end_cap9, align 4, !tbaa !117
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.6
  %cond11 = phi i32 [ %29, %cond.true.6 ], [ %31, %cond.false.8 ]
  store i32 %cond11, i32* %end_cap, align 4, !tbaa !56
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 3
  %33 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp12 = icmp ne %struct.gx_path_segments_s* %33, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %cond.end.10
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %segments13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 3
  %35 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments13, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %35, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %36 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !14
  %cmp14 = icmp eq %struct.subpath_s* %36, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp16 = icmp ne i32 %37, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.15
  store i32 0, i32* %first.addr, align 4, !tbaa !34
  store i32 0, i32* %start_cap, align 4, !tbaa !56
  store i32 0, i32* %end_cap, align 4, !tbaa !56
  store i32 1, i32* %moveto_first, align 4, !tbaa !34
  store i32 1, i32* %rmoveto_first, align 4, !tbaa !34
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true.15, %land.lhs.true, %cond.end.10
  %38 = load i32, i32* %first.addr, align 4, !tbaa !34
  %cmp19 = icmp eq i32 %38, 0
  br i1 %cmp19, label %if.then.20, label %if.end.46

if.then.20:                                       ; preds = %if.end.18
  %39 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp21 = icmp eq i32 %39, 1
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.20
  br label %do.body

do.body:                                          ; preds = %if.then.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %41 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %41, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %42 = load i32, i32* %x, align 4, !tbaa !146
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o23 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %43, i32 0, i32 0
  %co24 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o23, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co24, i32 0, i32 1
  %44 = load i32, i32* %y, align 4, !tbaa !147
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %40, i32 %42, i32 %44) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %46, i32 0, i32 0
  %call27 = call i32 @add_pie_cap(%struct.gx_path_s* %45, %struct.endpoint_s* %o26) #6
  store i32 %call27, i32* %code, align 4, !tbaa !34
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %do.end
  %47 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.30:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %moveto_first, align 4, !tbaa !34
  br label %if.end.36

if.else:                                          ; preds = %if.then.20
  %48 = load i32, i32* %start_cap, align 4, !tbaa !56
  %49 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o31 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %49, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call32 = call i32 @cap_points(i32 %48, %struct.endpoint_s* %o31, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call32, i32* %npoints, align 4, !tbaa !34
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  %50 = load i32, i32* %npoints, align 4, !tbaa !34
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.35:                                        ; preds = %if.else
  store i32 1, i32* %moveto_first, align 4, !tbaa !34
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.30
  store i32 1, i32* %rmoveto_first, align 4, !tbaa !34
  %51 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o37 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %51, i32 0, i32 0
  %co38 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o37, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co38, i32 0, i32 0
  %52 = load i32, i32* %x39, align 4, !tbaa !146
  %arrayidx = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i64 0
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %52, i32* %x40, align 4, !tbaa !39
  %53 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o41 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %53, i32 0, i32 0
  %co42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o41, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co42, i32 0, i32 1
  %54 = load i32, i32* %y43, align 4, !tbaa !147
  %arrayidx44 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i64 0
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx44, i32 0, i32 1
  store i32 %54, i32* %y45, align 4, !tbaa !38
  store i32 1, i32* %nrpoints, align 4, !tbaa !34
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.36, %if.end.18
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 1
  %co47 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co47, i32 0, i32 0
  %56 = load i32, i32* %x48, align 4, !tbaa !140
  %57 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom = sext i32 %57 to i64
  %arrayidx49 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx49, i32 0, i32 0
  store i32 %56, i32* %x50, align 4, !tbaa !39
  %58 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e51 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %58, i32 0, i32 1
  %co52 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e51, i32 0, i32 1
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co52, i32 0, i32 1
  %59 = load i32, i32* %y53, align 4, !tbaa !141
  %60 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom54 = sext i32 %60 to i64
  %arrayidx55 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom54
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx55, i32 0, i32 1
  store i32 %59, i32* %y56, align 4, !tbaa !38
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e57 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e57, i32 0, i32 2
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %62 = load i32, i32* %x58, align 4, !tbaa !142
  %63 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %idxprom59 = sext i32 %63 to i64
  %arrayidx60 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i64 %idxprom59
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx60, i32 0, i32 0
  store i32 %62, i32* %x61, align 4, !tbaa !39
  %64 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e62 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %64, i32 0, i32 1
  %ce63 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e62, i32 0, i32 2
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce63, i32 0, i32 1
  %65 = load i32, i32* %y64, align 4, !tbaa !143
  %66 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %idxprom65 = sext i32 %66 to i64
  %arrayidx66 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i64 %idxprom65
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx66, i32 0, i32 1
  store i32 %65, i32* %y67, align 4, !tbaa !38
  %67 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %npoints, align 4, !tbaa !34
  %68 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %inc68 = add nsw i32 %68, 1
  store i32 %inc68, i32* %nrpoints, align 4, !tbaa !34
  %69 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay69 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %70 = load i32, i32* %npoints, align 4, !tbaa !34
  %71 = load i32, i32* %moveto_first, align 4, !tbaa !34
  %call70 = call i32 @add_points(%struct.gx_path_s* %69, %struct.gs_fixed_point_s* %arraydecay69, i32 %70, i32 %71) #6
  store i32 %call70, i32* %code, align 4, !tbaa !34
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.46
  %72 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.73:                                        ; preds = %if.end.46
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %arraydecay74 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i32 0
  %74 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %75 = load i32, i32* %rmoveto_first, align 4, !tbaa !34
  %call75 = call i32 @add_points(%struct.gx_path_s* %73, %struct.gs_fixed_point_s* %arraydecay74, i32 %74, i32 %75) #6
  store i32 %call75, i32* %code, align 4, !tbaa !34
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  %76 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.78:                                        ; preds = %if.end.73
  store i32 0, i32* %npoints, align 4, !tbaa !34
  store i32 0, i32* %nrpoints, align 4, !tbaa !34
  %77 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %cmp79 = icmp eq %struct.partial_line_s* %77, null
  br i1 %cmp79, label %if.then.80, label %if.else.90

if.then.80:                                       ; preds = %if.end.78
  %78 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp81 = icmp eq i32 %78, 1
  br i1 %cmp81, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %if.then.80
  %79 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %80 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e83 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %80, i32 0, i32 1
  %call84 = call i32 @add_pie_cap(%struct.gx_path_s* %79, %struct.endpoint_s* %e83) #6
  store i32 %call84, i32* %code, align 4, !tbaa !34
  br label %if.end.89

if.else.85:                                       ; preds = %if.then.80
  %81 = load i32, i32* %end_cap, align 4, !tbaa !56
  %82 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e86 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %82, i32 0, i32 1
  %arraydecay87 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call88 = call i32 @cap_points(i32 %81, %struct.endpoint_s* %e86, %struct.gs_fixed_point_s* %arraydecay87) #6
  store i32 %call88, i32* %code, align 4, !tbaa !34
  %83 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %83, i32* %npoints, align 4, !tbaa !34
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.85, %if.then.82
  br label %if.end.234

if.else.90:                                       ; preds = %if.end.78
  %84 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %thin91 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %84, i32 0, i32 4
  %85 = load i32, i32* %thin91, align 4, !tbaa !128
  %tobool92 = icmp ne i32 %85, 0
  br i1 %tobool92, label %if.then.93, label %if.else.97

if.then.93:                                       ; preds = %if.else.90
  %86 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e94 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %86, i32 0, i32 1
  %arraydecay95 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call96 = call i32 @cap_points(i32 0, %struct.endpoint_s* %e94, %struct.gs_fixed_point_s* %arraydecay95) #6
  store i32 %call96, i32* %code, align 4, !tbaa !34
  %87 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %87, i32* %npoints, align 4, !tbaa !34
  br label %if.end.233

if.else.97:                                       ; preds = %if.else.90
  %88 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %90, i32 0, i32 2
  %x98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %91 = load i32, i32* %x98, align 4, !tbaa !127
  %conv = sitofp i32 %91 to double
  %92 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width99 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %92, i32 0, i32 2
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width99, i32 0, i32 1
  %93 = load i32, i32* %y100, align 4, !tbaa !126
  %conv101 = sitofp i32 %93 to double
  %mul = fmul double %conv, %conv101
  store double %mul, double* %l, align 8, !tbaa !30
  %94 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width102 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %94, i32 0, i32 2
  %x103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width102, i32 0, i32 0
  %95 = load i32, i32* %x103, align 4, !tbaa !127
  %conv104 = sitofp i32 %95 to double
  %96 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %96, i32 0, i32 2
  %y106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width105, i32 0, i32 1
  %97 = load i32, i32* %y106, align 4, !tbaa !126
  %conv107 = sitofp i32 %97 to double
  %mul108 = fmul double %conv104, %conv107
  store double %mul108, double* %r, align 8, !tbaa !30
  %98 = load double, double* %l, align 8, !tbaa !30
  %99 = load double, double* %r, align 8, !tbaa !30
  %cmp109 = fcmp oeq double %98, %99
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.146

land.lhs.true.111:                                ; preds = %if.else.97
  %100 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp112 = icmp eq i32 %100, 1
  br i1 %cmp112, label %if.then.114, label %if.else.146

if.then.114:                                      ; preds = %land.lhs.true.111
  %101 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %102 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e115 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %102, i32 0, i32 1
  %call116 = call i32 @add_pie_cap(%struct.gx_path_s* %101, %struct.endpoint_s* %e115) #6
  store i32 %call116, i32* %code, align 4, !tbaa !34
  %103 = load i32, i32* %code, align 4, !tbaa !34
  %cmp117 = icmp sge i32 %103, 0
  br i1 %cmp117, label %if.then.119, label %if.end.145

if.then.119:                                      ; preds = %if.then.114
  %104 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width120 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %104, i32 0, i32 2
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width120, i32 0, i32 0
  %105 = load i32, i32* %x121, align 4, !tbaa !127
  %conv122 = sitofp i32 %105 to double
  %106 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width123 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %106, i32 0, i32 2
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width123, i32 0, i32 0
  %107 = load i32, i32* %x124, align 4, !tbaa !127
  %conv125 = sitofp i32 %107 to double
  %mul126 = fmul double %conv122, %conv125
  %108 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width127 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %108, i32 0, i32 2
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width127, i32 0, i32 1
  %109 = load i32, i32* %y128, align 4, !tbaa !126
  %conv129 = sitofp i32 %109 to double
  %110 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width130 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %110, i32 0, i32 2
  %y131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width130, i32 0, i32 1
  %111 = load i32, i32* %y131, align 4, !tbaa !126
  %conv132 = sitofp i32 %111 to double
  %mul133 = fmul double %conv129, %conv132
  %add = fadd double %mul126, %mul133
  %cmp134 = fcmp oge double %add, 0.000000e+00
  br i1 %cmp134, label %if.then.136, label %if.end.144

if.then.136:                                      ; preds = %if.then.119
  %112 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %113 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e137 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %113, i32 0, i32 1
  %co138 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e137, i32 0, i32 1
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co138, i32 0, i32 0
  %114 = load i32, i32* %x139, align 4, !tbaa !140
  %115 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e140 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %115, i32 0, i32 1
  %co141 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e140, i32 0, i32 1
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co141, i32 0, i32 1
  %116 = load i32, i32* %y142, align 4, !tbaa !141
  %call143 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %112, i32 %114, i32 %116, i32 0) #6
  store i32 %call143, i32* %code, align 4, !tbaa !34
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.136, %if.then.119
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.114
  br label %if.end.231

if.else.146:                                      ; preds = %land.lhs.true.111, %if.else.97
  %117 = load double, double* %l, align 8, !tbaa !30
  %118 = load double, double* %r, align 8, !tbaa !30
  %cmp147 = fcmp ogt double %117, %118
  %conv148 = zext i1 %cmp147 to i32
  %119 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %xor = xor i32 %conv148, %119
  %tobool149 = icmp ne i32 %xor, 0
  br i1 %tobool149, label %if.then.150, label %if.else.189

if.then.150:                                      ; preds = %if.else.146
  %120 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp151 = icmp eq i32 %120, 1
  br i1 %cmp151, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %if.then.150
  %121 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %122 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %123 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %124 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call154 = call i32 @add_pie_join_fast_ccw(%struct.gx_path_s* %121, %struct.partial_line_s* %122, %struct.partial_line_s* %123, i32 %124) #6
  store i32 %call154, i32* %code, align 4, !tbaa !34
  br label %if.end.163

if.else.155:                                      ; preds = %if.then.150
  %125 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %126 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %127 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay156 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %128 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool157 = icmp ne i32 %128, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.else.155
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.else.155
  %129 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %129, i32 0, i32 5
  %130 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi %struct.gs_matrix_s* [ null, %cond.true.158 ], [ %130, %cond.false.159 ]
  %131 = load i32, i32* %join.addr, align 4, !tbaa !56
  %call162 = call i32 @line_join_points_fast_ccw(%struct.gx_line_params_s* %125, %struct.partial_line_s* %126, %struct.partial_line_s* %127, %struct.gs_fixed_point_s* %arraydecay156, %struct.gs_matrix_s* %cond161, i32 %131) #6
  store i32 %call162, i32* %code, align 4, !tbaa !34
  %132 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %132, i32* %npoints, align 4, !tbaa !34
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.160, %if.then.153
  %133 = load i32, i32* %code, align 4, !tbaa !34
  %cmp164 = icmp slt i32 %133, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  %134 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %if.end.163
  %135 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and168 = and i32 %135, 2
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.end.181, label %if.then.170

if.then.170:                                      ; preds = %if.end.167
  %136 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %137 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o171 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %137, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o171, i32 0, i32 0
  %x172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %138 = load i32, i32* %x172, align 4, !tbaa !109
  %139 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o173 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %139, i32 0, i32 0
  %p174 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o173, i32 0, i32 0
  %y175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p174, i32 0, i32 1
  %140 = load i32, i32* %y175, align 4, !tbaa !112
  %call176 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %136, i32 %138, i32 %140, i32 0) #6
  store i32 %call176, i32* %code, align 4, !tbaa !34
  %141 = load i32, i32* %code, align 4, !tbaa !34
  %cmp177 = icmp slt i32 %141, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.then.170
  %142 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.180:                                       ; preds = %if.then.170
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.167
  %143 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %144 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o182 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %144, i32 0, i32 0
  %co183 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o182, i32 0, i32 1
  %x184 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co183, i32 0, i32 0
  %145 = load i32, i32* %x184, align 4, !tbaa !146
  %146 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o185 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %146, i32 0, i32 0
  %co186 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o185, i32 0, i32 1
  %y187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co186, i32 0, i32 1
  %147 = load i32, i32* %y187, align 4, !tbaa !147
  %call188 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %143, i32 %145, i32 %147, i32 0) #6
  store i32 %call188, i32* %code, align 4, !tbaa !34
  br label %if.end.230

if.else.189:                                      ; preds = %if.else.146
  %148 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp190 = icmp eq i32 %148, 1
  br i1 %cmp190, label %if.then.192, label %if.else.194

if.then.192:                                      ; preds = %if.else.189
  %149 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %150 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %151 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %152 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %call193 = call i32 @add_pie_join_fast_cw(%struct.gx_path_s* %149, %struct.partial_line_s* %150, %struct.partial_line_s* %151, i32 %152) #6
  store i32 %call193, i32* %code, align 4, !tbaa !34
  br label %if.end.203

if.else.194:                                      ; preds = %if.else.189
  %153 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %154 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %155 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %arraydecay195 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i32 0
  %156 = load i32, i32* %uniform.addr, align 4, !tbaa !34
  %tobool196 = icmp ne i32 %156, 0
  br i1 %tobool196, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %if.else.194
  br label %cond.end.200

cond.false.198:                                   ; preds = %if.else.194
  %157 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm199 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %157, i32 0, i32 5
  %158 = bitcast %struct.gs_matrix_fixed_s* %ctm199 to %struct.gs_matrix_s*
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.198, %cond.true.197
  %cond201 = phi %struct.gs_matrix_s* [ null, %cond.true.197 ], [ %158, %cond.false.198 ]
  %159 = load i32, i32* %join.addr, align 4, !tbaa !56
  %call202 = call i32 @line_join_points_fast_cw(%struct.gx_line_params_s* %153, %struct.partial_line_s* %154, %struct.partial_line_s* %155, %struct.gs_fixed_point_s* %arraydecay195, %struct.gs_matrix_s* %cond201, i32 %159) #6
  store i32 %call202, i32* %code, align 4, !tbaa !34
  %160 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %160, i32* %nrpoints, align 4, !tbaa !34
  br label %if.end.203

if.end.203:                                       ; preds = %cond.end.200, %if.then.192
  %161 = load i32, i32* %code, align 4, !tbaa !34
  %cmp204 = icmp slt i32 %161, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.203
  %162 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %162, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.207:                                       ; preds = %if.end.203
  %163 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and208 = and i32 %163, 2
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.end.222, label %if.then.210

if.then.210:                                      ; preds = %if.end.207
  %164 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %165 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o211 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %165, i32 0, i32 0
  %p212 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o211, i32 0, i32 0
  %x213 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p212, i32 0, i32 0
  %166 = load i32, i32* %x213, align 4, !tbaa !109
  %167 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o214 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %167, i32 0, i32 0
  %p215 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o214, i32 0, i32 0
  %y216 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p215, i32 0, i32 1
  %168 = load i32, i32* %y216, align 4, !tbaa !112
  %call217 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %164, i32 %166, i32 %168, i32 0) #6
  store i32 %call217, i32* %code, align 4, !tbaa !34
  %169 = load i32, i32* %code, align 4, !tbaa !34
  %cmp218 = icmp slt i32 %169, 0
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.then.210
  %170 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.221:                                       ; preds = %if.then.210
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.207
  %171 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %172 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o223 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %172, i32 0, i32 0
  %ce224 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o223, i32 0, i32 2
  %x225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce224, i32 0, i32 0
  %173 = load i32, i32* %x225, align 4, !tbaa !148
  %174 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o226 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %174, i32 0, i32 0
  %ce227 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o226, i32 0, i32 2
  %y228 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce227, i32 0, i32 1
  %175 = load i32, i32* %y228, align 4, !tbaa !149
  %call229 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %171, i32 %173, i32 %175, i32 0) #6
  store i32 %call229, i32* %code, align 4, !tbaa !34
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.222, %if.end.181
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.145
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.231, %if.then.220, %if.then.206, %if.then.179, %if.then.166
  %176 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.266 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.233

if.end.233:                                       ; preds = %cleanup.cont, %if.then.93
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.89
  %178 = load i32, i32* %code, align 4, !tbaa !34
  %cmp235 = icmp slt i32 %178, 0
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.end.234
  %179 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %179, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.238:                                       ; preds = %if.end.234
  %180 = load i32, i32* %npoints, align 4, !tbaa !34
  %cmp239 = icmp sgt i32 %180, 0
  br i1 %cmp239, label %if.then.241, label %if.end.248

if.then.241:                                      ; preds = %if.end.238
  %181 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay242 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %182 = load i32, i32* %npoints, align 4, !tbaa !34
  %call243 = call i32 @add_points(%struct.gx_path_s* %181, %struct.gs_fixed_point_s* %arraydecay242, i32 %182, i32 0) #6
  store i32 %call243, i32* %code, align 4, !tbaa !34
  %183 = load i32, i32* %code, align 4, !tbaa !34
  %cmp244 = icmp slt i32 %183, 0
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.then.241
  %184 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %184, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.247:                                       ; preds = %if.then.241
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.238
  %185 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %cmp249 = icmp sgt i32 %185, 0
  br i1 %cmp249, label %if.then.251, label %if.end.258

if.then.251:                                      ; preds = %if.end.248
  %186 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %arraydecay252 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], [8 x %struct.gs_fixed_point_s]* %rpoints, i32 0, i32 0
  %187 = load i32, i32* %nrpoints, align 4, !tbaa !34
  %call253 = call i32 @add_points(%struct.gx_path_s* %186, %struct.gs_fixed_point_s* %arraydecay252, i32 %187, i32 0) #6
  store i32 %call253, i32* %code, align 4, !tbaa !34
  %188 = load i32, i32* %code, align 4, !tbaa !34
  %cmp254 = icmp slt i32 %188, 0
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.then.251
  %189 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %189, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.257:                                       ; preds = %if.then.251
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.248
  br label %do.body.259

do.body.259:                                      ; preds = %if.end.258
  br label %do.cond.260

do.cond.260:                                      ; preds = %do.body.259
  br label %do.end.261

do.end.261:                                       ; preds = %do.cond.260
  %190 = load i32, i32* %ensure_closed.addr, align 4, !tbaa !34
  %tobool262 = icmp ne i32 %190, 0
  br i1 %tobool262, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %do.end.261
  %191 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %192 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %call264 = call i32 @gx_join_path_and_reverse(%struct.gx_path_s* %191, %struct.gx_path_s* %192) #6
  store i32 %call264, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

if.end.265:                                       ; preds = %do.end.261
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.266

cleanup.266:                                      ; preds = %if.end.265, %if.then.263, %if.then.256, %if.then.246, %if.then.237, %cleanup, %if.then.77, %if.then.72, %if.then.34, %if.then.29
  %193 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %rmoveto_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %moveto_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %nrpoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast [8 x %struct.gs_fixed_point_s]* %rpoints to i8*
  call void @llvm.lifetime.end(i64 64, i8* %200) #1
  %201 = bitcast [8 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 64, i8* %201) #1
  %202 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203
}

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #3

declare i32 @gx_cpath_inner_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #3

declare i32 @gx_cpath_outer_box(%struct.gx_clip_path_s*, %struct.gs_fixed_rect_s*) #3

declare void @gx_make_clip_device_on_stack(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare void @gs_deviceinitialmatrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #3

declare i32 @gx_path_has_long_segments(%struct.gx_path_s*) #3

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #3

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #3

declare i32 @gx_path_add_dash_expansion(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_imager_state_s*) #3

declare i32 @gs_imager_idtransform(%struct.gs_imager_state_s*, double, double, %struct.gs_point_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @width_is_thin(%struct.partial_line_s* %plp) #0 {
entry:
  %retval = alloca i32, align 4
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %wx = alloca i32, align 4
  %wy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %C = alloca double, align 8
  %D = alloca double, align 8
  %num = alloca double, align 8
  %denom = alloca double, align 8
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %3, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !127
  store i32 %4, i32* %wx, align 4, !tbaa !34
  %5 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !126
  store i32 %7, i32* %wy, align 4, !tbaa !34
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 3
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector, i32 0, i32 1
  %9 = load i32, i32* %y2, align 4, !tbaa !123
  store i32 %9, i32* %dy, align 4, !tbaa !34
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %wy, align 4, !tbaa !34
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i32, i32* %wy, align 4, !tbaa !34
  %sub = sub nsw i32 0, %11
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load i32, i32* %wy, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %12, %cond.false ]
  %conv = sext i32 %cond to i64
  %cmp4 = icmp slt i64 %conv, 128
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 3
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector6, i32 0, i32 0
  %14 = load i32, i32* %x7, align 4, !tbaa !122
  store i32 %14, i32* %dx, align 4, !tbaa !34
  %cmp8 = icmp eq i32 %14, 0
  br i1 %cmp8, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %wx, align 4, !tbaa !34
  %cmp11 = icmp slt i32 %15, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %if.then.10
  %16 = load i32, i32* %wx, align 4, !tbaa !34
  %sub14 = sub nsw i32 0, %16
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.then.10
  %17 = load i32, i32* %wx, align 4, !tbaa !34
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi i32 [ %sub14, %cond.true.13 ], [ %17, %cond.false.15 ]
  %conv18 = sext i32 %cond17 to i64
  %cmp19 = icmp slt i64 %conv18, 128
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %18 = load i32, i32* %wx, align 4, !tbaa !34
  %cmp22 = icmp slt i32 %18, 0
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %if.end.21
  %19 = load i32, i32* %wx, align 4, !tbaa !34
  %sub25 = sub nsw i32 0, %19
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end.21
  %20 = load i32, i32* %wx, align 4, !tbaa !34
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi i32 [ %sub25, %cond.true.24 ], [ %20, %cond.false.26 ]
  %conv29 = sext i32 %cond28 to i64
  %cmp30 = icmp slt i64 %conv29, 128
  br i1 %cmp30, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %cond.end.27
  %21 = load i32, i32* %wy, align 4, !tbaa !34
  %cmp32 = icmp slt i32 %21, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %land.lhs.true
  %22 = load i32, i32* %wy, align 4, !tbaa !34
  %sub35 = sub nsw i32 0, %22
  br label %cond.end.37

cond.false.36:                                    ; preds = %land.lhs.true
  %23 = load i32, i32* %wy, align 4, !tbaa !34
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi i32 [ %sub35, %cond.true.34 ], [ %23, %cond.false.36 ]
  %conv39 = sext i32 %cond38 to i64
  %cmp40 = icmp slt i64 %conv39, 128
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %cond.end.37
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %cond.end.37, %cond.end.27
  %24 = bitcast double* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %dx, align 4, !tbaa !34
  %conv44 = sitofp i32 %25 to double
  store double %conv44, double* %C, align 8, !tbaa !30
  %26 = bitcast double* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* %dy, align 4, !tbaa !34
  %conv45 = sitofp i32 %27 to double
  store double %conv45, double* %D, align 8, !tbaa !30
  %28 = bitcast double* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load double, double* %C, align 8, !tbaa !30
  %30 = load i32, i32* %wy, align 4, !tbaa !34
  %conv46 = sitofp i32 %30 to double
  %mul = fmul double %29, %conv46
  %31 = load double, double* %D, align 8, !tbaa !30
  %32 = load i32, i32* %wx, align 4, !tbaa !34
  %conv47 = sitofp i32 %32 to double
  %mul48 = fmul double %31, %conv47
  %sub49 = fsub double %mul, %mul48
  store double %sub49, double* %num, align 8, !tbaa !30
  %33 = bitcast double* %denom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load double, double* %C, align 8, !tbaa !30
  %35 = load double, double* %C, align 8, !tbaa !30
  %mul50 = fmul double %34, %35
  %36 = load double, double* %D, align 8, !tbaa !30
  %37 = load double, double* %D, align 8, !tbaa !30
  %mul51 = fmul double %36, %37
  %add = fadd double %mul50, %mul51
  %call = call double @sqrt(double %add) #7
  store double %call, double* %denom, align 8, !tbaa !30
  %38 = load double, double* %num, align 8, !tbaa !30
  %call52 = call double @fabs(double %38) #5
  %39 = load double, double* %denom, align 8, !tbaa !30
  %mul53 = fmul double %39, 5.000000e-01
  %cmp54 = fcmp olt double %call52, %mul53
  %conv55 = zext i1 %cmp54 to i32
  store i32 %conv55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %40 = bitcast double* %denom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast double* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast double* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast double* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42, %cond.end.16, %cond.end
  %44 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal void @adjust_stroke(%struct.gx_device_s* %dev, %struct.partial_line_s* %plp, %struct.gs_imager_state_s* %pis, i32 %thin, i32 %adjust_longitude, i32 %flags) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %thin.addr = alloca i32, align 4
  %adjust_longitude.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %horiz = alloca i32, align 4
  %adjust = alloca i32, align 4
  %start_cap = alloca i32, align 4
  %end_cap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %delta_w_x = alloca i32, align 4
  %delta_w_y = alloca i32, align 4
  %shift_o_x = alloca i32, align 4
  %shift_o_y = alloca i32, align 4
  %shift_e_x = alloca i32, align 4
  %shift_e_y = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %thin, i32* %thin.addr, align 4, !tbaa !34
  store i32 %adjust_longitude, i32* %adjust_longitude.addr, align 4, !tbaa !34
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !56
  %0 = bitcast i32* %horiz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %adjust, align 4, !tbaa !34
  %2 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and = and i32 %3, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 3
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 3
  %5 = load i32, i32* %dash_cap, align 4, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 3
  %start_cap2 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1, i32 0, i32 1
  %7 = load i32, i32* %start_cap2, align 4, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %start_cap, align 4, !tbaa !56
  %8 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %flags.addr, align 4, !tbaa !56
  %and3 = and i32 %9, 8
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.8

cond.true.5:                                      ; preds = %cond.end
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 3
  %dash_cap7 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params6, i32 0, i32 3
  %11 = load i32, i32* %dash_cap7, align 4, !tbaa !37
  br label %cond.end.11

cond.false.8:                                     ; preds = %cond.end
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 3
  %end_cap10 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params9, i32 0, i32 2
  %13 = load i32, i32* %end_cap10, align 4, !tbaa !36
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.8, %cond.true.5
  %cond12 = phi i32 [ %11, %cond.true.5 ], [ %13, %cond.false.8 ]
  store i32 %cond12, i32* %end_cap, align 4, !tbaa !56
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %stroke_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 29
  %15 = load i32, i32* %stroke_adjust, align 4, !tbaa !150
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end.11
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !127
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width14, i32 0, i32 1
  %19 = load i32, i32* %y, align 4, !tbaa !126
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %cond.end.11
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 35
  %stroke_stored = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr, i32 0, i32 0
  store i32 0, i32* %stroke_stored, align 4, !tbaa !131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 35
  %stroke_stored17 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr16, i32 0, i32 0
  %22 = load i32, i32* %stroke_stored17, align 4, !tbaa !131
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.994

land.lhs.true.19:                                 ; preds = %if.end
  %23 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp20 = icmp eq i32 %23, 0
  br i1 %cmp20, label %land.lhs.true.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.19
  %24 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp22 = icmp eq i32 %24, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.994

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21, %land.lhs.true.19
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 35
  %orig = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr24, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig, i32 0, i64 3
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %26 = load i32, i32* %x25, align 4, !tbaa !39
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 3
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector, i32 0, i32 0
  %28 = load i32, i32* %x26, align 4, !tbaa !122
  %cmp27 = icmp eq i32 %26, %28
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.994

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 35
  %orig30 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig30, i32 0, i64 3
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx31, i32 0, i32 1
  %30 = load i32, i32* %y32, align 4, !tbaa !38
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector33 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 3
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector33, i32 0, i32 1
  %32 = load i32, i32* %y34, align 4, !tbaa !123
  %cmp35 = icmp eq i32 %30, %32
  br i1 %cmp35, label %if.then.36, label %if.end.994

if.then.36:                                       ; preds = %land.lhs.true.28
  %33 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %33, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %34 = load i32, i32* %x37, align 4, !tbaa !109
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 35
  %orig39 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig39, i32 0, i64 0
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx40, i32 0, i32 0
  %36 = load i32, i32* %x41, align 4, !tbaa !39
  %sub = sub nsw i32 %34, %36
  %conv = sext i32 %sub to i64
  %37 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector42 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %37, i32 0, i32 3
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector42, i32 0, i32 0
  %38 = load i32, i32* %x43, align 4, !tbaa !122
  %conv44 = sext i32 %38 to i64
  %mul = mul nsw i64 %conv, %conv44
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o45 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %39, i32 0, i32 0
  %p46 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o45, i32 0, i32 0
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p46, i32 0, i32 1
  %40 = load i32, i32* %y47, align 4, !tbaa !112
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 35
  %orig49 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr48, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig49, i32 0, i64 0
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx50, i32 0, i32 1
  %42 = load i32, i32* %y51, align 4, !tbaa !38
  %sub52 = sub nsw i32 %40, %42
  %conv53 = sext i32 %sub52 to i64
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector54 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %43, i32 0, i32 3
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector54, i32 0, i32 1
  %44 = load i32, i32* %y55, align 4, !tbaa !123
  %conv56 = sext i32 %44 to i64
  %mul57 = mul nsw i64 %conv53, %conv56
  %cmp58 = icmp eq i64 %mul, %mul57
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.993

land.lhs.true.60:                                 ; preds = %if.then.36
  %45 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %45, i32 0, i32 1
  %p61 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p61, i32 0, i32 0
  %46 = load i32, i32* %x62, align 4, !tbaa !114
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 35
  %orig64 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr63, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig64, i32 0, i64 1
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx65, i32 0, i32 0
  %48 = load i32, i32* %x66, align 4, !tbaa !39
  %sub67 = sub nsw i32 %46, %48
  %conv68 = sext i32 %sub67 to i64
  %49 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector69 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %49, i32 0, i32 3
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector69, i32 0, i32 0
  %50 = load i32, i32* %x70, align 4, !tbaa !122
  %conv71 = sext i32 %50 to i64
  %mul72 = mul nsw i64 %conv68, %conv71
  %51 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e73 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %51, i32 0, i32 1
  %p74 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e73, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p74, i32 0, i32 1
  %52 = load i32, i32* %y75, align 4, !tbaa !115
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr76 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 35
  %orig77 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr76, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig77, i32 0, i64 1
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx78, i32 0, i32 1
  %54 = load i32, i32* %y79, align 4, !tbaa !38
  %sub80 = sub nsw i32 %52, %54
  %conv81 = sext i32 %sub80 to i64
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector82 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 3
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector82, i32 0, i32 1
  %56 = load i32, i32* %y83, align 4, !tbaa !123
  %conv84 = sext i32 %56 to i64
  %mul85 = mul nsw i64 %conv81, %conv84
  %cmp86 = icmp eq i64 %mul72, %mul85
  br i1 %cmp86, label %if.then.88, label %if.end.993

if.then.88:                                       ; preds = %land.lhs.true.60
  %57 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o89 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %57, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o89, i32 0, i32 0
  %x91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p90, i32 0, i32 0
  %58 = load i32, i32* %x91, align 4, !tbaa !109
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr92 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 35
  %orig93 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig93, i32 0, i64 0
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx94, i32 0, i32 0
  %60 = load i32, i32* %x95, align 4, !tbaa !39
  %sub96 = sub nsw i32 %58, %60
  %cmp97 = icmp slt i32 %sub96, 0
  br i1 %cmp97, label %cond.true.99, label %cond.false.109

cond.true.99:                                     ; preds = %if.then.88
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o100 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 0
  %p101 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o100, i32 0, i32 0
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p101, i32 0, i32 0
  %62 = load i32, i32* %x102, align 4, !tbaa !109
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr103 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 35
  %orig104 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr103, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig104, i32 0, i64 0
  %x106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx105, i32 0, i32 0
  %64 = load i32, i32* %x106, align 4, !tbaa !39
  %sub107 = sub nsw i32 %62, %64
  %sub108 = sub nsw i32 0, %sub107
  br label %cond.end.118

cond.false.109:                                   ; preds = %if.then.88
  %65 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o110 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %65, i32 0, i32 0
  %p111 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o110, i32 0, i32 0
  %x112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p111, i32 0, i32 0
  %66 = load i32, i32* %x112, align 4, !tbaa !109
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr113 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 35
  %orig114 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr113, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig114, i32 0, i64 0
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx115, i32 0, i32 0
  %68 = load i32, i32* %x116, align 4, !tbaa !39
  %sub117 = sub nsw i32 %66, %68
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.109, %cond.true.99
  %cond119 = phi i32 [ %sub108, %cond.true.99 ], [ %sub117, %cond.false.109 ]
  %69 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width120 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %69, i32 0, i32 2
  %x121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width120, i32 0, i32 0
  %70 = load i32, i32* %x121, align 4, !tbaa !127
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 35
  %orig123 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr122, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig123, i32 0, i64 2
  %x125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx124, i32 0, i32 0
  %72 = load i32, i32* %x125, align 4, !tbaa !39
  %add = add nsw i32 %70, %72
  %cmp126 = icmp slt i32 %add, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.137

cond.true.128:                                    ; preds = %cond.end.118
  %73 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width129 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %73, i32 0, i32 2
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width129, i32 0, i32 0
  %74 = load i32, i32* %x130, align 4, !tbaa !127
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr131 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 35
  %orig132 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr131, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig132, i32 0, i64 2
  %x134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx133, i32 0, i32 0
  %76 = load i32, i32* %x134, align 4, !tbaa !39
  %add135 = add nsw i32 %74, %76
  %sub136 = sub nsw i32 0, %add135
  br label %cond.end.145

cond.false.137:                                   ; preds = %cond.end.118
  %77 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width138 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %77, i32 0, i32 2
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width138, i32 0, i32 0
  %78 = load i32, i32* %x139, align 4, !tbaa !127
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr140 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %79, i32 0, i32 35
  %orig141 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr140, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig141, i32 0, i64 2
  %x143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx142, i32 0, i32 0
  %80 = load i32, i32* %x143, align 4, !tbaa !39
  %add144 = add nsw i32 %78, %80
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.137, %cond.true.128
  %cond146 = phi i32 [ %sub136, %cond.true.128 ], [ %add144, %cond.false.137 ]
  %cmp147 = icmp sle i32 %cond119, %cond146
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.992

land.lhs.true.149:                                ; preds = %cond.end.145
  %81 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o150 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %81, i32 0, i32 0
  %p151 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o150, i32 0, i32 0
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p151, i32 0, i32 1
  %82 = load i32, i32* %y152, align 4, !tbaa !112
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 35
  %orig154 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr153, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig154, i32 0, i64 0
  %y156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx155, i32 0, i32 1
  %84 = load i32, i32* %y156, align 4, !tbaa !38
  %sub157 = sub nsw i32 %82, %84
  %cmp158 = icmp slt i32 %sub157, 0
  br i1 %cmp158, label %cond.true.160, label %cond.false.170

cond.true.160:                                    ; preds = %land.lhs.true.149
  %85 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o161 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %85, i32 0, i32 0
  %p162 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o161, i32 0, i32 0
  %y163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p162, i32 0, i32 1
  %86 = load i32, i32* %y163, align 4, !tbaa !112
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr164 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 35
  %orig165 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr164, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig165, i32 0, i64 0
  %y167 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx166, i32 0, i32 1
  %88 = load i32, i32* %y167, align 4, !tbaa !38
  %sub168 = sub nsw i32 %86, %88
  %sub169 = sub nsw i32 0, %sub168
  br label %cond.end.179

cond.false.170:                                   ; preds = %land.lhs.true.149
  %89 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o171 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %89, i32 0, i32 0
  %p172 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o171, i32 0, i32 0
  %y173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p172, i32 0, i32 1
  %90 = load i32, i32* %y173, align 4, !tbaa !112
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr174 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 35
  %orig175 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr174, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig175, i32 0, i64 0
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx176, i32 0, i32 1
  %92 = load i32, i32* %y177, align 4, !tbaa !38
  %sub178 = sub nsw i32 %90, %92
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.170, %cond.true.160
  %cond180 = phi i32 [ %sub169, %cond.true.160 ], [ %sub178, %cond.false.170 ]
  %93 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width181 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %93, i32 0, i32 2
  %y182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width181, i32 0, i32 1
  %94 = load i32, i32* %y182, align 4, !tbaa !126
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr183 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 35
  %orig184 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr183, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig184, i32 0, i64 2
  %y186 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx185, i32 0, i32 1
  %96 = load i32, i32* %y186, align 4, !tbaa !38
  %add187 = add nsw i32 %94, %96
  %cmp188 = icmp slt i32 %add187, 0
  br i1 %cmp188, label %cond.true.190, label %cond.false.199

cond.true.190:                                    ; preds = %cond.end.179
  %97 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width191 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %97, i32 0, i32 2
  %y192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width191, i32 0, i32 1
  %98 = load i32, i32* %y192, align 4, !tbaa !126
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr193 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 35
  %orig194 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr193, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig194, i32 0, i64 2
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx195, i32 0, i32 1
  %100 = load i32, i32* %y196, align 4, !tbaa !38
  %add197 = add nsw i32 %98, %100
  %sub198 = sub nsw i32 0, %add197
  br label %cond.end.207

cond.false.199:                                   ; preds = %cond.end.179
  %101 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width200 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %101, i32 0, i32 2
  %y201 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width200, i32 0, i32 1
  %102 = load i32, i32* %y201, align 4, !tbaa !126
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr202 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 35
  %orig203 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr202, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig203, i32 0, i64 2
  %y205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx204, i32 0, i32 1
  %104 = load i32, i32* %y205, align 4, !tbaa !38
  %add206 = add nsw i32 %102, %104
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.199, %cond.true.190
  %cond208 = phi i32 [ %sub198, %cond.true.190 ], [ %add206, %cond.false.199 ]
  %cmp209 = icmp sle i32 %cond180, %cond208
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.992

land.lhs.true.211:                                ; preds = %cond.end.207
  %105 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e212 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %105, i32 0, i32 1
  %p213 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e212, i32 0, i32 0
  %x214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p213, i32 0, i32 0
  %106 = load i32, i32* %x214, align 4, !tbaa !114
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr215 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 35
  %orig216 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr215, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig216, i32 0, i64 1
  %x218 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx217, i32 0, i32 0
  %108 = load i32, i32* %x218, align 4, !tbaa !39
  %sub219 = sub nsw i32 %106, %108
  %cmp220 = icmp slt i32 %sub219, 0
  br i1 %cmp220, label %cond.true.222, label %cond.false.232

cond.true.222:                                    ; preds = %land.lhs.true.211
  %109 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e223 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %109, i32 0, i32 1
  %p224 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e223, i32 0, i32 0
  %x225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p224, i32 0, i32 0
  %110 = load i32, i32* %x225, align 4, !tbaa !114
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr226 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %111, i32 0, i32 35
  %orig227 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr226, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig227, i32 0, i64 1
  %x229 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx228, i32 0, i32 0
  %112 = load i32, i32* %x229, align 4, !tbaa !39
  %sub230 = sub nsw i32 %110, %112
  %sub231 = sub nsw i32 0, %sub230
  br label %cond.end.241

cond.false.232:                                   ; preds = %land.lhs.true.211
  %113 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e233 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %113, i32 0, i32 1
  %p234 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e233, i32 0, i32 0
  %x235 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p234, i32 0, i32 0
  %114 = load i32, i32* %x235, align 4, !tbaa !114
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr236 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %115, i32 0, i32 35
  %orig237 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr236, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig237, i32 0, i64 1
  %x239 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx238, i32 0, i32 0
  %116 = load i32, i32* %x239, align 4, !tbaa !39
  %sub240 = sub nsw i32 %114, %116
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.232, %cond.true.222
  %cond242 = phi i32 [ %sub231, %cond.true.222 ], [ %sub240, %cond.false.232 ]
  %117 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width243 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %117, i32 0, i32 2
  %x244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width243, i32 0, i32 0
  %118 = load i32, i32* %x244, align 4, !tbaa !127
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr245 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 35
  %orig246 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr245, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig246, i32 0, i64 2
  %x248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx247, i32 0, i32 0
  %120 = load i32, i32* %x248, align 4, !tbaa !39
  %add249 = add nsw i32 %118, %120
  %cmp250 = icmp slt i32 %add249, 0
  br i1 %cmp250, label %cond.true.252, label %cond.false.261

cond.true.252:                                    ; preds = %cond.end.241
  %121 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width253 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %121, i32 0, i32 2
  %x254 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width253, i32 0, i32 0
  %122 = load i32, i32* %x254, align 4, !tbaa !127
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr255 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 35
  %orig256 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr255, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig256, i32 0, i64 2
  %x258 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx257, i32 0, i32 0
  %124 = load i32, i32* %x258, align 4, !tbaa !39
  %add259 = add nsw i32 %122, %124
  %sub260 = sub nsw i32 0, %add259
  br label %cond.end.269

cond.false.261:                                   ; preds = %cond.end.241
  %125 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width262 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %125, i32 0, i32 2
  %x263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width262, i32 0, i32 0
  %126 = load i32, i32* %x263, align 4, !tbaa !127
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr264 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 35
  %orig265 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr264, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig265, i32 0, i64 2
  %x267 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx266, i32 0, i32 0
  %128 = load i32, i32* %x267, align 4, !tbaa !39
  %add268 = add nsw i32 %126, %128
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.261, %cond.true.252
  %cond270 = phi i32 [ %sub260, %cond.true.252 ], [ %add268, %cond.false.261 ]
  %cmp271 = icmp sle i32 %cond242, %cond270
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.992

land.lhs.true.273:                                ; preds = %cond.end.269
  %129 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e274 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %129, i32 0, i32 1
  %p275 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e274, i32 0, i32 0
  %y276 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p275, i32 0, i32 1
  %130 = load i32, i32* %y276, align 4, !tbaa !115
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr277 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %131, i32 0, i32 35
  %orig278 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr277, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig278, i32 0, i64 1
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx279, i32 0, i32 1
  %132 = load i32, i32* %y280, align 4, !tbaa !38
  %sub281 = sub nsw i32 %130, %132
  %cmp282 = icmp slt i32 %sub281, 0
  br i1 %cmp282, label %cond.true.284, label %cond.false.294

cond.true.284:                                    ; preds = %land.lhs.true.273
  %133 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e285 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %133, i32 0, i32 1
  %p286 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e285, i32 0, i32 0
  %y287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p286, i32 0, i32 1
  %134 = load i32, i32* %y287, align 4, !tbaa !115
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr288 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %135, i32 0, i32 35
  %orig289 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr288, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig289, i32 0, i64 1
  %y291 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx290, i32 0, i32 1
  %136 = load i32, i32* %y291, align 4, !tbaa !38
  %sub292 = sub nsw i32 %134, %136
  %sub293 = sub nsw i32 0, %sub292
  br label %cond.end.303

cond.false.294:                                   ; preds = %land.lhs.true.273
  %137 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e295 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %137, i32 0, i32 1
  %p296 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e295, i32 0, i32 0
  %y297 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p296, i32 0, i32 1
  %138 = load i32, i32* %y297, align 4, !tbaa !115
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr298 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 35
  %orig299 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr298, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig299, i32 0, i64 1
  %y301 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx300, i32 0, i32 1
  %140 = load i32, i32* %y301, align 4, !tbaa !38
  %sub302 = sub nsw i32 %138, %140
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.294, %cond.true.284
  %cond304 = phi i32 [ %sub293, %cond.true.284 ], [ %sub302, %cond.false.294 ]
  %141 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width305 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %141, i32 0, i32 2
  %y306 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width305, i32 0, i32 1
  %142 = load i32, i32* %y306, align 4, !tbaa !126
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr307 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 35
  %orig308 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr307, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig308, i32 0, i64 2
  %y310 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx309, i32 0, i32 1
  %144 = load i32, i32* %y310, align 4, !tbaa !38
  %add311 = add nsw i32 %142, %144
  %cmp312 = icmp slt i32 %add311, 0
  br i1 %cmp312, label %cond.true.314, label %cond.false.323

cond.true.314:                                    ; preds = %cond.end.303
  %145 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width315 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %145, i32 0, i32 2
  %y316 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width315, i32 0, i32 1
  %146 = load i32, i32* %y316, align 4, !tbaa !126
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr317 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 35
  %orig318 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr317, i32 0, i32 1
  %arrayidx319 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig318, i32 0, i64 2
  %y320 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx319, i32 0, i32 1
  %148 = load i32, i32* %y320, align 4, !tbaa !38
  %add321 = add nsw i32 %146, %148
  %sub322 = sub nsw i32 0, %add321
  br label %cond.end.331

cond.false.323:                                   ; preds = %cond.end.303
  %149 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width324 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %149, i32 0, i32 2
  %y325 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width324, i32 0, i32 1
  %150 = load i32, i32* %y325, align 4, !tbaa !126
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr326 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %151, i32 0, i32 35
  %orig327 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr326, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig327, i32 0, i64 2
  %y329 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx328, i32 0, i32 1
  %152 = load i32, i32* %y329, align 4, !tbaa !38
  %add330 = add nsw i32 %150, %152
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.323, %cond.true.314
  %cond332 = phi i32 [ %sub322, %cond.true.314 ], [ %add330, %cond.false.323 ]
  %cmp333 = icmp sle i32 %cond304, %cond332
  br i1 %cmp333, label %if.then.335, label %if.end.992

if.then.335:                                      ; preds = %cond.end.331
  %153 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o336 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %153, i32 0, i32 0
  %p337 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o336, i32 0, i32 0
  %x338 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p337, i32 0, i32 0
  %154 = load i32, i32* %x338, align 4, !tbaa !109
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr339 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %155, i32 0, i32 35
  %orig340 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr339, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig340, i32 0, i64 0
  %x342 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx341, i32 0, i32 0
  %156 = load i32, i32* %x342, align 4, !tbaa !39
  %sub343 = sub nsw i32 %154, %156
  %cmp344 = icmp slt i32 %sub343, 0
  br i1 %cmp344, label %cond.true.346, label %cond.false.356

cond.true.346:                                    ; preds = %if.then.335
  %157 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o347 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %157, i32 0, i32 0
  %p348 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o347, i32 0, i32 0
  %x349 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p348, i32 0, i32 0
  %158 = load i32, i32* %x349, align 4, !tbaa !109
  %159 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr350 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %159, i32 0, i32 35
  %orig351 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr350, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig351, i32 0, i64 0
  %x353 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx352, i32 0, i32 0
  %160 = load i32, i32* %x353, align 4, !tbaa !39
  %sub354 = sub nsw i32 %158, %160
  %sub355 = sub nsw i32 0, %sub354
  br label %cond.end.365

cond.false.356:                                   ; preds = %if.then.335
  %161 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o357 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %161, i32 0, i32 0
  %p358 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o357, i32 0, i32 0
  %x359 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p358, i32 0, i32 0
  %162 = load i32, i32* %x359, align 4, !tbaa !109
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr360 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %163, i32 0, i32 35
  %orig361 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr360, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig361, i32 0, i64 0
  %x363 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx362, i32 0, i32 0
  %164 = load i32, i32* %x363, align 4, !tbaa !39
  %sub364 = sub nsw i32 %162, %164
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.356, %cond.true.346
  %cond366 = phi i32 [ %sub355, %cond.true.346 ], [ %sub364, %cond.false.356 ]
  %165 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width367 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %165, i32 0, i32 2
  %x368 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width367, i32 0, i32 0
  %166 = load i32, i32* %x368, align 4, !tbaa !127
  %167 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr369 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %167, i32 0, i32 35
  %orig370 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr369, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig370, i32 0, i64 2
  %x372 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx371, i32 0, i32 0
  %168 = load i32, i32* %x372, align 4, !tbaa !39
  %add373 = add nsw i32 %166, %168
  %cmp374 = icmp slt i32 %add373, 0
  br i1 %cmp374, label %cond.true.376, label %cond.false.385

cond.true.376:                                    ; preds = %cond.end.365
  %169 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width377 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %169, i32 0, i32 2
  %x378 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width377, i32 0, i32 0
  %170 = load i32, i32* %x378, align 4, !tbaa !127
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr379 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 35
  %orig380 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr379, i32 0, i32 1
  %arrayidx381 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig380, i32 0, i64 2
  %x382 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx381, i32 0, i32 0
  %172 = load i32, i32* %x382, align 4, !tbaa !39
  %add383 = add nsw i32 %170, %172
  %sub384 = sub nsw i32 0, %add383
  br label %cond.end.393

cond.false.385:                                   ; preds = %cond.end.365
  %173 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width386 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %173, i32 0, i32 2
  %x387 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width386, i32 0, i32 0
  %174 = load i32, i32* %x387, align 4, !tbaa !127
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr388 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %175, i32 0, i32 35
  %orig389 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr388, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig389, i32 0, i64 2
  %x391 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx390, i32 0, i32 0
  %176 = load i32, i32* %x391, align 4, !tbaa !39
  %add392 = add nsw i32 %174, %176
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.385, %cond.true.376
  %cond394 = phi i32 [ %sub384, %cond.true.376 ], [ %add392, %cond.false.385 ]
  %div = sdiv i32 %cond394, 2
  %cmp395 = icmp sge i32 %cond366, %div
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.991

land.lhs.true.397:                                ; preds = %cond.end.393
  %177 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o398 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %177, i32 0, i32 0
  %p399 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o398, i32 0, i32 0
  %y400 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p399, i32 0, i32 1
  %178 = load i32, i32* %y400, align 4, !tbaa !112
  %179 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr401 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %179, i32 0, i32 35
  %orig402 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr401, i32 0, i32 1
  %arrayidx403 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig402, i32 0, i64 0
  %y404 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx403, i32 0, i32 1
  %180 = load i32, i32* %y404, align 4, !tbaa !38
  %sub405 = sub nsw i32 %178, %180
  %cmp406 = icmp slt i32 %sub405, 0
  br i1 %cmp406, label %cond.true.408, label %cond.false.418

cond.true.408:                                    ; preds = %land.lhs.true.397
  %181 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o409 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %181, i32 0, i32 0
  %p410 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o409, i32 0, i32 0
  %y411 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p410, i32 0, i32 1
  %182 = load i32, i32* %y411, align 4, !tbaa !112
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr412 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %183, i32 0, i32 35
  %orig413 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr412, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig413, i32 0, i64 0
  %y415 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx414, i32 0, i32 1
  %184 = load i32, i32* %y415, align 4, !tbaa !38
  %sub416 = sub nsw i32 %182, %184
  %sub417 = sub nsw i32 0, %sub416
  br label %cond.end.427

cond.false.418:                                   ; preds = %land.lhs.true.397
  %185 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o419 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %185, i32 0, i32 0
  %p420 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o419, i32 0, i32 0
  %y421 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p420, i32 0, i32 1
  %186 = load i32, i32* %y421, align 4, !tbaa !112
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr422 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %187, i32 0, i32 35
  %orig423 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr422, i32 0, i32 1
  %arrayidx424 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig423, i32 0, i64 0
  %y425 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx424, i32 0, i32 1
  %188 = load i32, i32* %y425, align 4, !tbaa !38
  %sub426 = sub nsw i32 %186, %188
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.418, %cond.true.408
  %cond428 = phi i32 [ %sub417, %cond.true.408 ], [ %sub426, %cond.false.418 ]
  %189 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width429 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %189, i32 0, i32 2
  %y430 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width429, i32 0, i32 1
  %190 = load i32, i32* %y430, align 4, !tbaa !126
  %191 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr431 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %191, i32 0, i32 35
  %orig432 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr431, i32 0, i32 1
  %arrayidx433 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig432, i32 0, i64 2
  %y434 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx433, i32 0, i32 1
  %192 = load i32, i32* %y434, align 4, !tbaa !38
  %add435 = add nsw i32 %190, %192
  %cmp436 = icmp slt i32 %add435, 0
  br i1 %cmp436, label %cond.true.438, label %cond.false.447

cond.true.438:                                    ; preds = %cond.end.427
  %193 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width439 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %193, i32 0, i32 2
  %y440 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width439, i32 0, i32 1
  %194 = load i32, i32* %y440, align 4, !tbaa !126
  %195 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr441 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %195, i32 0, i32 35
  %orig442 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr441, i32 0, i32 1
  %arrayidx443 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig442, i32 0, i64 2
  %y444 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx443, i32 0, i32 1
  %196 = load i32, i32* %y444, align 4, !tbaa !38
  %add445 = add nsw i32 %194, %196
  %sub446 = sub nsw i32 0, %add445
  br label %cond.end.455

cond.false.447:                                   ; preds = %cond.end.427
  %197 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width448 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %197, i32 0, i32 2
  %y449 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width448, i32 0, i32 1
  %198 = load i32, i32* %y449, align 4, !tbaa !126
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr450 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %199, i32 0, i32 35
  %orig451 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr450, i32 0, i32 1
  %arrayidx452 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig451, i32 0, i64 2
  %y453 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx452, i32 0, i32 1
  %200 = load i32, i32* %y453, align 4, !tbaa !38
  %add454 = add nsw i32 %198, %200
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.447, %cond.true.438
  %cond456 = phi i32 [ %sub446, %cond.true.438 ], [ %add454, %cond.false.447 ]
  %div457 = sdiv i32 %cond456, 2
  %cmp458 = icmp sge i32 %cond428, %div457
  br i1 %cmp458, label %land.lhs.true.460, label %if.end.991

land.lhs.true.460:                                ; preds = %cond.end.455
  %201 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e461 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %201, i32 0, i32 1
  %p462 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e461, i32 0, i32 0
  %x463 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p462, i32 0, i32 0
  %202 = load i32, i32* %x463, align 4, !tbaa !114
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr464 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %203, i32 0, i32 35
  %orig465 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr464, i32 0, i32 1
  %arrayidx466 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig465, i32 0, i64 1
  %x467 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx466, i32 0, i32 0
  %204 = load i32, i32* %x467, align 4, !tbaa !39
  %sub468 = sub nsw i32 %202, %204
  %cmp469 = icmp slt i32 %sub468, 0
  br i1 %cmp469, label %cond.true.471, label %cond.false.481

cond.true.471:                                    ; preds = %land.lhs.true.460
  %205 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e472 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %205, i32 0, i32 1
  %p473 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e472, i32 0, i32 0
  %x474 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p473, i32 0, i32 0
  %206 = load i32, i32* %x474, align 4, !tbaa !114
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr475 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %207, i32 0, i32 35
  %orig476 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr475, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig476, i32 0, i64 1
  %x478 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx477, i32 0, i32 0
  %208 = load i32, i32* %x478, align 4, !tbaa !39
  %sub479 = sub nsw i32 %206, %208
  %sub480 = sub nsw i32 0, %sub479
  br label %cond.end.490

cond.false.481:                                   ; preds = %land.lhs.true.460
  %209 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e482 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %209, i32 0, i32 1
  %p483 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e482, i32 0, i32 0
  %x484 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p483, i32 0, i32 0
  %210 = load i32, i32* %x484, align 4, !tbaa !114
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr485 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %211, i32 0, i32 35
  %orig486 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr485, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig486, i32 0, i64 1
  %x488 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx487, i32 0, i32 0
  %212 = load i32, i32* %x488, align 4, !tbaa !39
  %sub489 = sub nsw i32 %210, %212
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.481, %cond.true.471
  %cond491 = phi i32 [ %sub480, %cond.true.471 ], [ %sub489, %cond.false.481 ]
  %213 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width492 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %213, i32 0, i32 2
  %x493 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width492, i32 0, i32 0
  %214 = load i32, i32* %x493, align 4, !tbaa !127
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr494 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %215, i32 0, i32 35
  %orig495 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr494, i32 0, i32 1
  %arrayidx496 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig495, i32 0, i64 2
  %x497 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx496, i32 0, i32 0
  %216 = load i32, i32* %x497, align 4, !tbaa !39
  %add498 = add nsw i32 %214, %216
  %cmp499 = icmp slt i32 %add498, 0
  br i1 %cmp499, label %cond.true.501, label %cond.false.510

cond.true.501:                                    ; preds = %cond.end.490
  %217 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width502 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %217, i32 0, i32 2
  %x503 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width502, i32 0, i32 0
  %218 = load i32, i32* %x503, align 4, !tbaa !127
  %219 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr504 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %219, i32 0, i32 35
  %orig505 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr504, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig505, i32 0, i64 2
  %x507 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx506, i32 0, i32 0
  %220 = load i32, i32* %x507, align 4, !tbaa !39
  %add508 = add nsw i32 %218, %220
  %sub509 = sub nsw i32 0, %add508
  br label %cond.end.518

cond.false.510:                                   ; preds = %cond.end.490
  %221 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width511 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %221, i32 0, i32 2
  %x512 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width511, i32 0, i32 0
  %222 = load i32, i32* %x512, align 4, !tbaa !127
  %223 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr513 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %223, i32 0, i32 35
  %orig514 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr513, i32 0, i32 1
  %arrayidx515 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig514, i32 0, i64 2
  %x516 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx515, i32 0, i32 0
  %224 = load i32, i32* %x516, align 4, !tbaa !39
  %add517 = add nsw i32 %222, %224
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.510, %cond.true.501
  %cond519 = phi i32 [ %sub509, %cond.true.501 ], [ %add517, %cond.false.510 ]
  %div520 = sdiv i32 %cond519, 2
  %cmp521 = icmp sge i32 %cond491, %div520
  br i1 %cmp521, label %land.lhs.true.523, label %if.end.991

land.lhs.true.523:                                ; preds = %cond.end.518
  %225 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e524 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %225, i32 0, i32 1
  %p525 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e524, i32 0, i32 0
  %y526 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p525, i32 0, i32 1
  %226 = load i32, i32* %y526, align 4, !tbaa !115
  %227 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr527 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %227, i32 0, i32 35
  %orig528 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr527, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig528, i32 0, i64 1
  %y530 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx529, i32 0, i32 1
  %228 = load i32, i32* %y530, align 4, !tbaa !38
  %sub531 = sub nsw i32 %226, %228
  %cmp532 = icmp slt i32 %sub531, 0
  br i1 %cmp532, label %cond.true.534, label %cond.false.544

cond.true.534:                                    ; preds = %land.lhs.true.523
  %229 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e535 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %229, i32 0, i32 1
  %p536 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e535, i32 0, i32 0
  %y537 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p536, i32 0, i32 1
  %230 = load i32, i32* %y537, align 4, !tbaa !115
  %231 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr538 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %231, i32 0, i32 35
  %orig539 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr538, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig539, i32 0, i64 1
  %y541 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx540, i32 0, i32 1
  %232 = load i32, i32* %y541, align 4, !tbaa !38
  %sub542 = sub nsw i32 %230, %232
  %sub543 = sub nsw i32 0, %sub542
  br label %cond.end.553

cond.false.544:                                   ; preds = %land.lhs.true.523
  %233 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e545 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %233, i32 0, i32 1
  %p546 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e545, i32 0, i32 0
  %y547 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p546, i32 0, i32 1
  %234 = load i32, i32* %y547, align 4, !tbaa !115
  %235 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr548 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %235, i32 0, i32 35
  %orig549 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr548, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig549, i32 0, i64 1
  %y551 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx550, i32 0, i32 1
  %236 = load i32, i32* %y551, align 4, !tbaa !38
  %sub552 = sub nsw i32 %234, %236
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.544, %cond.true.534
  %cond554 = phi i32 [ %sub543, %cond.true.534 ], [ %sub552, %cond.false.544 ]
  %237 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width555 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %237, i32 0, i32 2
  %y556 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width555, i32 0, i32 1
  %238 = load i32, i32* %y556, align 4, !tbaa !126
  %239 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr557 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %239, i32 0, i32 35
  %orig558 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr557, i32 0, i32 1
  %arrayidx559 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig558, i32 0, i64 2
  %y560 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx559, i32 0, i32 1
  %240 = load i32, i32* %y560, align 4, !tbaa !38
  %add561 = add nsw i32 %238, %240
  %cmp562 = icmp slt i32 %add561, 0
  br i1 %cmp562, label %cond.true.564, label %cond.false.573

cond.true.564:                                    ; preds = %cond.end.553
  %241 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width565 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %241, i32 0, i32 2
  %y566 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width565, i32 0, i32 1
  %242 = load i32, i32* %y566, align 4, !tbaa !126
  %243 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr567 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %243, i32 0, i32 35
  %orig568 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr567, i32 0, i32 1
  %arrayidx569 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig568, i32 0, i64 2
  %y570 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx569, i32 0, i32 1
  %244 = load i32, i32* %y570, align 4, !tbaa !38
  %add571 = add nsw i32 %242, %244
  %sub572 = sub nsw i32 0, %add571
  br label %cond.end.581

cond.false.573:                                   ; preds = %cond.end.553
  %245 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width574 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %245, i32 0, i32 2
  %y575 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width574, i32 0, i32 1
  %246 = load i32, i32* %y575, align 4, !tbaa !126
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr576 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %247, i32 0, i32 35
  %orig577 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr576, i32 0, i32 1
  %arrayidx578 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig577, i32 0, i64 2
  %y579 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx578, i32 0, i32 1
  %248 = load i32, i32* %y579, align 4, !tbaa !38
  %add580 = add nsw i32 %246, %248
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.false.573, %cond.true.564
  %cond582 = phi i32 [ %sub572, %cond.true.564 ], [ %add580, %cond.false.573 ]
  %div583 = sdiv i32 %cond582, 2
  %cmp584 = icmp sge i32 %cond554, %div583
  br i1 %cmp584, label %if.then.586, label %if.end.991

if.then.586:                                      ; preds = %cond.end.581
  %249 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o587 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %249, i32 0, i32 0
  %p588 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o587, i32 0, i32 0
  %x589 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p588, i32 0, i32 0
  %250 = load i32, i32* %x589, align 4, !tbaa !109
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr590 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %251, i32 0, i32 35
  %adjusted = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr590, i32 0, i32 2
  %arrayidx591 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted, i32 0, i64 0
  %x592 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx591, i32 0, i32 0
  %252 = load i32, i32* %x592, align 4, !tbaa !39
  %sub593 = sub nsw i32 %250, %252
  %cmp594 = icmp slt i32 %sub593, 0
  br i1 %cmp594, label %cond.true.596, label %cond.false.606

cond.true.596:                                    ; preds = %if.then.586
  %253 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o597 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %253, i32 0, i32 0
  %p598 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o597, i32 0, i32 0
  %x599 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p598, i32 0, i32 0
  %254 = load i32, i32* %x599, align 4, !tbaa !109
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr600 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %255, i32 0, i32 35
  %adjusted601 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr600, i32 0, i32 2
  %arrayidx602 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted601, i32 0, i64 0
  %x603 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx602, i32 0, i32 0
  %256 = load i32, i32* %x603, align 4, !tbaa !39
  %sub604 = sub nsw i32 %254, %256
  %sub605 = sub nsw i32 0, %sub604
  br label %cond.end.615

cond.false.606:                                   ; preds = %if.then.586
  %257 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o607 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %257, i32 0, i32 0
  %p608 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o607, i32 0, i32 0
  %x609 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p608, i32 0, i32 0
  %258 = load i32, i32* %x609, align 4, !tbaa !109
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr610 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %259, i32 0, i32 35
  %adjusted611 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr610, i32 0, i32 2
  %arrayidx612 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted611, i32 0, i64 0
  %x613 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx612, i32 0, i32 0
  %260 = load i32, i32* %x613, align 4, !tbaa !39
  %sub614 = sub nsw i32 %258, %260
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.false.606, %cond.true.596
  %cond616 = phi i32 [ %sub605, %cond.true.596 ], [ %sub614, %cond.false.606 ]
  %261 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width617 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %261, i32 0, i32 2
  %x618 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width617, i32 0, i32 0
  %262 = load i32, i32* %x618, align 4, !tbaa !127
  %263 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr619 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %263, i32 0, i32 35
  %adjusted620 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr619, i32 0, i32 2
  %arrayidx621 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted620, i32 0, i64 2
  %x622 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx621, i32 0, i32 0
  %264 = load i32, i32* %x622, align 4, !tbaa !39
  %add623 = add nsw i32 %262, %264
  %cmp624 = icmp slt i32 %add623, 0
  br i1 %cmp624, label %cond.true.626, label %cond.false.635

cond.true.626:                                    ; preds = %cond.end.615
  %265 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width627 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %265, i32 0, i32 2
  %x628 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width627, i32 0, i32 0
  %266 = load i32, i32* %x628, align 4, !tbaa !127
  %267 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr629 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %267, i32 0, i32 35
  %adjusted630 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr629, i32 0, i32 2
  %arrayidx631 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted630, i32 0, i64 2
  %x632 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx631, i32 0, i32 0
  %268 = load i32, i32* %x632, align 4, !tbaa !39
  %add633 = add nsw i32 %266, %268
  %sub634 = sub nsw i32 0, %add633
  br label %cond.end.643

cond.false.635:                                   ; preds = %cond.end.615
  %269 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width636 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %269, i32 0, i32 2
  %x637 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width636, i32 0, i32 0
  %270 = load i32, i32* %x637, align 4, !tbaa !127
  %271 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr638 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %271, i32 0, i32 35
  %adjusted639 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr638, i32 0, i32 2
  %arrayidx640 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted639, i32 0, i64 2
  %x641 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx640, i32 0, i32 0
  %272 = load i32, i32* %x641, align 4, !tbaa !39
  %add642 = add nsw i32 %270, %272
  br label %cond.end.643

cond.end.643:                                     ; preds = %cond.false.635, %cond.true.626
  %cond644 = phi i32 [ %sub634, %cond.true.626 ], [ %add642, %cond.false.635 ]
  %cmp645 = icmp sle i32 %cond616, %cond644
  br i1 %cmp645, label %land.lhs.true.647, label %if.then.833

land.lhs.true.647:                                ; preds = %cond.end.643
  %273 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o648 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %273, i32 0, i32 0
  %p649 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o648, i32 0, i32 0
  %y650 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p649, i32 0, i32 1
  %274 = load i32, i32* %y650, align 4, !tbaa !112
  %275 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr651 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %275, i32 0, i32 35
  %adjusted652 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr651, i32 0, i32 2
  %arrayidx653 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted652, i32 0, i64 0
  %y654 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx653, i32 0, i32 1
  %276 = load i32, i32* %y654, align 4, !tbaa !38
  %sub655 = sub nsw i32 %274, %276
  %cmp656 = icmp slt i32 %sub655, 0
  br i1 %cmp656, label %cond.true.658, label %cond.false.668

cond.true.658:                                    ; preds = %land.lhs.true.647
  %277 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o659 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %277, i32 0, i32 0
  %p660 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o659, i32 0, i32 0
  %y661 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p660, i32 0, i32 1
  %278 = load i32, i32* %y661, align 4, !tbaa !112
  %279 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr662 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %279, i32 0, i32 35
  %adjusted663 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr662, i32 0, i32 2
  %arrayidx664 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted663, i32 0, i64 0
  %y665 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx664, i32 0, i32 1
  %280 = load i32, i32* %y665, align 4, !tbaa !38
  %sub666 = sub nsw i32 %278, %280
  %sub667 = sub nsw i32 0, %sub666
  br label %cond.end.677

cond.false.668:                                   ; preds = %land.lhs.true.647
  %281 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o669 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %281, i32 0, i32 0
  %p670 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o669, i32 0, i32 0
  %y671 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p670, i32 0, i32 1
  %282 = load i32, i32* %y671, align 4, !tbaa !112
  %283 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr672 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %283, i32 0, i32 35
  %adjusted673 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr672, i32 0, i32 2
  %arrayidx674 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted673, i32 0, i64 0
  %y675 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx674, i32 0, i32 1
  %284 = load i32, i32* %y675, align 4, !tbaa !38
  %sub676 = sub nsw i32 %282, %284
  br label %cond.end.677

cond.end.677:                                     ; preds = %cond.false.668, %cond.true.658
  %cond678 = phi i32 [ %sub667, %cond.true.658 ], [ %sub676, %cond.false.668 ]
  %285 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width679 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %285, i32 0, i32 2
  %y680 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width679, i32 0, i32 1
  %286 = load i32, i32* %y680, align 4, !tbaa !126
  %287 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr681 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %287, i32 0, i32 35
  %adjusted682 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr681, i32 0, i32 2
  %arrayidx683 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted682, i32 0, i64 2
  %y684 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx683, i32 0, i32 1
  %288 = load i32, i32* %y684, align 4, !tbaa !38
  %add685 = add nsw i32 %286, %288
  %cmp686 = icmp slt i32 %add685, 0
  br i1 %cmp686, label %cond.true.688, label %cond.false.697

cond.true.688:                                    ; preds = %cond.end.677
  %289 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width689 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %289, i32 0, i32 2
  %y690 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width689, i32 0, i32 1
  %290 = load i32, i32* %y690, align 4, !tbaa !126
  %291 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr691 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %291, i32 0, i32 35
  %adjusted692 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr691, i32 0, i32 2
  %arrayidx693 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted692, i32 0, i64 2
  %y694 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx693, i32 0, i32 1
  %292 = load i32, i32* %y694, align 4, !tbaa !38
  %add695 = add nsw i32 %290, %292
  %sub696 = sub nsw i32 0, %add695
  br label %cond.end.705

cond.false.697:                                   ; preds = %cond.end.677
  %293 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width698 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %293, i32 0, i32 2
  %y699 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width698, i32 0, i32 1
  %294 = load i32, i32* %y699, align 4, !tbaa !126
  %295 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr700 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %295, i32 0, i32 35
  %adjusted701 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr700, i32 0, i32 2
  %arrayidx702 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted701, i32 0, i64 2
  %y703 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx702, i32 0, i32 1
  %296 = load i32, i32* %y703, align 4, !tbaa !38
  %add704 = add nsw i32 %294, %296
  br label %cond.end.705

cond.end.705:                                     ; preds = %cond.false.697, %cond.true.688
  %cond706 = phi i32 [ %sub696, %cond.true.688 ], [ %add704, %cond.false.697 ]
  %cmp707 = icmp sle i32 %cond678, %cond706
  br i1 %cmp707, label %land.lhs.true.709, label %if.then.833

land.lhs.true.709:                                ; preds = %cond.end.705
  %297 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e710 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %297, i32 0, i32 1
  %p711 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e710, i32 0, i32 0
  %x712 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p711, i32 0, i32 0
  %298 = load i32, i32* %x712, align 4, !tbaa !114
  %299 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr713 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %299, i32 0, i32 35
  %adjusted714 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr713, i32 0, i32 2
  %arrayidx715 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted714, i32 0, i64 1
  %x716 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx715, i32 0, i32 0
  %300 = load i32, i32* %x716, align 4, !tbaa !39
  %sub717 = sub nsw i32 %298, %300
  %cmp718 = icmp slt i32 %sub717, 0
  br i1 %cmp718, label %cond.true.720, label %cond.false.730

cond.true.720:                                    ; preds = %land.lhs.true.709
  %301 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e721 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %301, i32 0, i32 1
  %p722 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e721, i32 0, i32 0
  %x723 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p722, i32 0, i32 0
  %302 = load i32, i32* %x723, align 4, !tbaa !114
  %303 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr724 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %303, i32 0, i32 35
  %adjusted725 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr724, i32 0, i32 2
  %arrayidx726 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted725, i32 0, i64 1
  %x727 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx726, i32 0, i32 0
  %304 = load i32, i32* %x727, align 4, !tbaa !39
  %sub728 = sub nsw i32 %302, %304
  %sub729 = sub nsw i32 0, %sub728
  br label %cond.end.739

cond.false.730:                                   ; preds = %land.lhs.true.709
  %305 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e731 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %305, i32 0, i32 1
  %p732 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e731, i32 0, i32 0
  %x733 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p732, i32 0, i32 0
  %306 = load i32, i32* %x733, align 4, !tbaa !114
  %307 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr734 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %307, i32 0, i32 35
  %adjusted735 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr734, i32 0, i32 2
  %arrayidx736 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted735, i32 0, i64 1
  %x737 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx736, i32 0, i32 0
  %308 = load i32, i32* %x737, align 4, !tbaa !39
  %sub738 = sub nsw i32 %306, %308
  br label %cond.end.739

cond.end.739:                                     ; preds = %cond.false.730, %cond.true.720
  %cond740 = phi i32 [ %sub729, %cond.true.720 ], [ %sub738, %cond.false.730 ]
  %309 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width741 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %309, i32 0, i32 2
  %x742 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width741, i32 0, i32 0
  %310 = load i32, i32* %x742, align 4, !tbaa !127
  %311 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr743 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %311, i32 0, i32 35
  %adjusted744 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr743, i32 0, i32 2
  %arrayidx745 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted744, i32 0, i64 2
  %x746 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx745, i32 0, i32 0
  %312 = load i32, i32* %x746, align 4, !tbaa !39
  %add747 = add nsw i32 %310, %312
  %cmp748 = icmp slt i32 %add747, 0
  br i1 %cmp748, label %cond.true.750, label %cond.false.759

cond.true.750:                                    ; preds = %cond.end.739
  %313 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width751 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %313, i32 0, i32 2
  %x752 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width751, i32 0, i32 0
  %314 = load i32, i32* %x752, align 4, !tbaa !127
  %315 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr753 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %315, i32 0, i32 35
  %adjusted754 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr753, i32 0, i32 2
  %arrayidx755 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted754, i32 0, i64 2
  %x756 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx755, i32 0, i32 0
  %316 = load i32, i32* %x756, align 4, !tbaa !39
  %add757 = add nsw i32 %314, %316
  %sub758 = sub nsw i32 0, %add757
  br label %cond.end.767

cond.false.759:                                   ; preds = %cond.end.739
  %317 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width760 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %317, i32 0, i32 2
  %x761 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width760, i32 0, i32 0
  %318 = load i32, i32* %x761, align 4, !tbaa !127
  %319 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr762 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %319, i32 0, i32 35
  %adjusted763 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr762, i32 0, i32 2
  %arrayidx764 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted763, i32 0, i64 2
  %x765 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx764, i32 0, i32 0
  %320 = load i32, i32* %x765, align 4, !tbaa !39
  %add766 = add nsw i32 %318, %320
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.false.759, %cond.true.750
  %cond768 = phi i32 [ %sub758, %cond.true.750 ], [ %add766, %cond.false.759 ]
  %cmp769 = icmp sle i32 %cond740, %cond768
  br i1 %cmp769, label %land.lhs.true.771, label %if.then.833

land.lhs.true.771:                                ; preds = %cond.end.767
  %321 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e772 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %321, i32 0, i32 1
  %p773 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e772, i32 0, i32 0
  %y774 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p773, i32 0, i32 1
  %322 = load i32, i32* %y774, align 4, !tbaa !115
  %323 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr775 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %323, i32 0, i32 35
  %adjusted776 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr775, i32 0, i32 2
  %arrayidx777 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted776, i32 0, i64 1
  %y778 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx777, i32 0, i32 1
  %324 = load i32, i32* %y778, align 4, !tbaa !38
  %sub779 = sub nsw i32 %322, %324
  %cmp780 = icmp slt i32 %sub779, 0
  br i1 %cmp780, label %cond.true.782, label %cond.false.792

cond.true.782:                                    ; preds = %land.lhs.true.771
  %325 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e783 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %325, i32 0, i32 1
  %p784 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e783, i32 0, i32 0
  %y785 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p784, i32 0, i32 1
  %326 = load i32, i32* %y785, align 4, !tbaa !115
  %327 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr786 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %327, i32 0, i32 35
  %adjusted787 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr786, i32 0, i32 2
  %arrayidx788 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted787, i32 0, i64 1
  %y789 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx788, i32 0, i32 1
  %328 = load i32, i32* %y789, align 4, !tbaa !38
  %sub790 = sub nsw i32 %326, %328
  %sub791 = sub nsw i32 0, %sub790
  br label %cond.end.801

cond.false.792:                                   ; preds = %land.lhs.true.771
  %329 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e793 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %329, i32 0, i32 1
  %p794 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e793, i32 0, i32 0
  %y795 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p794, i32 0, i32 1
  %330 = load i32, i32* %y795, align 4, !tbaa !115
  %331 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr796 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %331, i32 0, i32 35
  %adjusted797 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr796, i32 0, i32 2
  %arrayidx798 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted797, i32 0, i64 1
  %y799 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx798, i32 0, i32 1
  %332 = load i32, i32* %y799, align 4, !tbaa !38
  %sub800 = sub nsw i32 %330, %332
  br label %cond.end.801

cond.end.801:                                     ; preds = %cond.false.792, %cond.true.782
  %cond802 = phi i32 [ %sub791, %cond.true.782 ], [ %sub800, %cond.false.792 ]
  %333 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width803 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %333, i32 0, i32 2
  %y804 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width803, i32 0, i32 1
  %334 = load i32, i32* %y804, align 4, !tbaa !126
  %335 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr805 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %335, i32 0, i32 35
  %adjusted806 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr805, i32 0, i32 2
  %arrayidx807 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted806, i32 0, i64 2
  %y808 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx807, i32 0, i32 1
  %336 = load i32, i32* %y808, align 4, !tbaa !38
  %add809 = add nsw i32 %334, %336
  %cmp810 = icmp slt i32 %add809, 0
  br i1 %cmp810, label %cond.true.812, label %cond.false.821

cond.true.812:                                    ; preds = %cond.end.801
  %337 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width813 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %337, i32 0, i32 2
  %y814 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width813, i32 0, i32 1
  %338 = load i32, i32* %y814, align 4, !tbaa !126
  %339 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr815 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %339, i32 0, i32 35
  %adjusted816 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr815, i32 0, i32 2
  %arrayidx817 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted816, i32 0, i64 2
  %y818 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx817, i32 0, i32 1
  %340 = load i32, i32* %y818, align 4, !tbaa !38
  %add819 = add nsw i32 %338, %340
  %sub820 = sub nsw i32 0, %add819
  br label %cond.end.829

cond.false.821:                                   ; preds = %cond.end.801
  %341 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width822 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %341, i32 0, i32 2
  %y823 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width822, i32 0, i32 1
  %342 = load i32, i32* %y823, align 4, !tbaa !126
  %343 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr824 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %343, i32 0, i32 35
  %adjusted825 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr824, i32 0, i32 2
  %arrayidx826 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted825, i32 0, i64 2
  %y827 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx826, i32 0, i32 1
  %344 = load i32, i32* %y827, align 4, !tbaa !38
  %add828 = add nsw i32 %342, %344
  br label %cond.end.829

cond.end.829:                                     ; preds = %cond.false.821, %cond.true.812
  %cond830 = phi i32 [ %sub820, %cond.true.812 ], [ %add828, %cond.false.821 ]
  %cmp831 = icmp sle i32 %cond802, %cond830
  br i1 %cmp831, label %if.end.990, label %if.then.833

if.then.833:                                      ; preds = %cond.end.829, %cond.end.767, %cond.end.705, %cond.end.643
  %345 = bitcast i32* %delta_w_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #1
  %346 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr834 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %346, i32 0, i32 35
  %adjusted835 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr834, i32 0, i32 2
  %arrayidx836 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted835, i32 0, i64 2
  %x837 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx836, i32 0, i32 0
  %347 = load i32, i32* %x837, align 4, !tbaa !39
  %348 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr838 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %348, i32 0, i32 35
  %orig839 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr838, i32 0, i32 1
  %arrayidx840 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig839, i32 0, i64 2
  %x841 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx840, i32 0, i32 0
  %349 = load i32, i32* %x841, align 4, !tbaa !39
  %sub842 = sub nsw i32 %347, %349
  store i32 %sub842, i32* %delta_w_x, align 4, !tbaa !34
  %350 = bitcast i32* %delta_w_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #1
  %351 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr843 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %351, i32 0, i32 35
  %adjusted844 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr843, i32 0, i32 2
  %arrayidx845 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted844, i32 0, i64 2
  %y846 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx845, i32 0, i32 1
  %352 = load i32, i32* %y846, align 4, !tbaa !38
  %353 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr847 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %353, i32 0, i32 35
  %orig848 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr847, i32 0, i32 1
  %arrayidx849 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig848, i32 0, i64 2
  %y850 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx849, i32 0, i32 1
  %354 = load i32, i32* %y850, align 4, !tbaa !38
  %sub851 = sub nsw i32 %352, %354
  store i32 %sub851, i32* %delta_w_y, align 4, !tbaa !34
  %355 = bitcast i32* %shift_o_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %355) #1
  %356 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr852 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %356, i32 0, i32 35
  %adjusted853 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr852, i32 0, i32 2
  %arrayidx854 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted853, i32 0, i64 0
  %x855 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx854, i32 0, i32 0
  %357 = load i32, i32* %x855, align 4, !tbaa !39
  %358 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr856 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %358, i32 0, i32 35
  %orig857 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr856, i32 0, i32 1
  %arrayidx858 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig857, i32 0, i64 0
  %x859 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx858, i32 0, i32 0
  %359 = load i32, i32* %x859, align 4, !tbaa !39
  %sub860 = sub nsw i32 %357, %359
  store i32 %sub860, i32* %shift_o_x, align 4, !tbaa !34
  %360 = bitcast i32* %shift_o_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %360) #1
  %361 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr861 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %361, i32 0, i32 35
  %adjusted862 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr861, i32 0, i32 2
  %arrayidx863 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted862, i32 0, i64 0
  %y864 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx863, i32 0, i32 1
  %362 = load i32, i32* %y864, align 4, !tbaa !38
  %363 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr865 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %363, i32 0, i32 35
  %orig866 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr865, i32 0, i32 1
  %arrayidx867 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig866, i32 0, i64 0
  %y868 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx867, i32 0, i32 1
  %364 = load i32, i32* %y868, align 4, !tbaa !38
  %sub869 = sub nsw i32 %362, %364
  store i32 %sub869, i32* %shift_o_y, align 4, !tbaa !34
  %365 = bitcast i32* %shift_e_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %365) #1
  %366 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr870 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %366, i32 0, i32 35
  %adjusted871 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr870, i32 0, i32 2
  %arrayidx872 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted871, i32 0, i64 1
  %x873 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx872, i32 0, i32 0
  %367 = load i32, i32* %x873, align 4, !tbaa !39
  %368 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr874 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %368, i32 0, i32 35
  %orig875 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr874, i32 0, i32 1
  %arrayidx876 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig875, i32 0, i64 1
  %x877 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx876, i32 0, i32 0
  %369 = load i32, i32* %x877, align 4, !tbaa !39
  %sub878 = sub nsw i32 %367, %369
  store i32 %sub878, i32* %shift_e_x, align 4, !tbaa !34
  %370 = bitcast i32* %shift_e_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %370) #1
  %371 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr879 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %371, i32 0, i32 35
  %adjusted880 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr879, i32 0, i32 2
  %arrayidx881 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted880, i32 0, i64 1
  %y882 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx881, i32 0, i32 1
  %372 = load i32, i32* %y882, align 4, !tbaa !38
  %373 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr883 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %373, i32 0, i32 35
  %orig884 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr883, i32 0, i32 1
  %arrayidx885 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig884, i32 0, i64 1
  %y886 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx885, i32 0, i32 1
  %374 = load i32, i32* %y886, align 4, !tbaa !38
  %sub887 = sub nsw i32 %372, %374
  store i32 %sub887, i32* %shift_e_y, align 4, !tbaa !34
  %375 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o888 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %375, i32 0, i32 0
  %p889 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o888, i32 0, i32 0
  %x890 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p889, i32 0, i32 0
  %376 = load i32, i32* %x890, align 4, !tbaa !109
  %377 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr891 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %377, i32 0, i32 35
  %orig892 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr891, i32 0, i32 1
  %arrayidx893 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig892, i32 0, i64 0
  %x894 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx893, i32 0, i32 0
  %378 = load i32, i32* %x894, align 4, !tbaa !39
  %cmp895 = icmp slt i32 %376, %378
  br i1 %cmp895, label %if.then.917, label %lor.lhs.false.897

lor.lhs.false.897:                                ; preds = %if.then.833
  %379 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o898 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %379, i32 0, i32 0
  %p899 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o898, i32 0, i32 0
  %x900 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p899, i32 0, i32 0
  %380 = load i32, i32* %x900, align 4, !tbaa !109
  %381 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr901 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %381, i32 0, i32 35
  %orig902 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr901, i32 0, i32 1
  %arrayidx903 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig902, i32 0, i64 0
  %x904 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx903, i32 0, i32 0
  %382 = load i32, i32* %x904, align 4, !tbaa !39
  %cmp905 = icmp eq i32 %380, %382
  br i1 %cmp905, label %land.lhs.true.907, label %if.else

land.lhs.true.907:                                ; preds = %lor.lhs.false.897
  %383 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o908 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %383, i32 0, i32 0
  %p909 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o908, i32 0, i32 0
  %y910 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p909, i32 0, i32 1
  %384 = load i32, i32* %y910, align 4, !tbaa !112
  %385 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr911 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %385, i32 0, i32 35
  %orig912 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr911, i32 0, i32 1
  %arrayidx913 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig912, i32 0, i64 0
  %y914 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx913, i32 0, i32 1
  %386 = load i32, i32* %y914, align 4, !tbaa !38
  %cmp915 = icmp slt i32 %384, %386
  br i1 %cmp915, label %if.then.917, label %if.else

if.then.917:                                      ; preds = %land.lhs.true.907, %if.then.833
  br label %do.body

do.body:                                          ; preds = %if.then.917
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %387 = load i32, i32* %shift_o_x, align 4, !tbaa !34
  %388 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %sub918 = sub nsw i32 %387, %388
  %div919 = sdiv i32 %sub918, 2
  %389 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width920 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %389, i32 0, i32 2
  %x921 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width920, i32 0, i32 0
  %390 = load i32, i32* %x921, align 4, !tbaa !127
  %add922 = add nsw i32 %390, %div919
  store i32 %add922, i32* %x921, align 4, !tbaa !127
  %391 = load i32, i32* %shift_o_y, align 4, !tbaa !34
  %392 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %sub923 = sub nsw i32 %391, %392
  %div924 = sdiv i32 %sub923, 2
  %393 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width925 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %393, i32 0, i32 2
  %y926 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width925, i32 0, i32 1
  %394 = load i32, i32* %y926, align 4, !tbaa !126
  %add927 = add nsw i32 %394, %div924
  store i32 %add927, i32* %y926, align 4, !tbaa !126
  %395 = load i32, i32* %shift_o_x, align 4, !tbaa !34
  %396 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %sub928 = sub nsw i32 %395, %396
  %div929 = sdiv i32 %sub928, 2
  %397 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o930 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %397, i32 0, i32 0
  %p931 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o930, i32 0, i32 0
  %x932 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p931, i32 0, i32 0
  %398 = load i32, i32* %x932, align 4, !tbaa !109
  %add933 = add nsw i32 %398, %div929
  store i32 %add933, i32* %x932, align 4, !tbaa !109
  %399 = load i32, i32* %shift_o_y, align 4, !tbaa !34
  %400 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %sub934 = sub nsw i32 %399, %400
  %div935 = sdiv i32 %sub934, 2
  %401 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o936 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %401, i32 0, i32 0
  %p937 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o936, i32 0, i32 0
  %y938 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p937, i32 0, i32 1
  %402 = load i32, i32* %y938, align 4, !tbaa !112
  %add939 = add nsw i32 %402, %div935
  store i32 %add939, i32* %y938, align 4, !tbaa !112
  %403 = load i32, i32* %shift_e_x, align 4, !tbaa !34
  %404 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %sub940 = sub nsw i32 %403, %404
  %div941 = sdiv i32 %sub940, 2
  %405 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e942 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %405, i32 0, i32 1
  %p943 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e942, i32 0, i32 0
  %x944 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p943, i32 0, i32 0
  %406 = load i32, i32* %x944, align 4, !tbaa !114
  %add945 = add nsw i32 %406, %div941
  store i32 %add945, i32* %x944, align 4, !tbaa !114
  %407 = load i32, i32* %shift_e_y, align 4, !tbaa !34
  %408 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %sub946 = sub nsw i32 %407, %408
  %div947 = sdiv i32 %sub946, 2
  %409 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e948 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %409, i32 0, i32 1
  %p949 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e948, i32 0, i32 0
  %y950 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p949, i32 0, i32 1
  %410 = load i32, i32* %y950, align 4, !tbaa !115
  %add951 = add nsw i32 %410, %div947
  store i32 %add951, i32* %y950, align 4, !tbaa !115
  store i32 0, i32* %adjust, align 4, !tbaa !34
  br label %if.end.989

if.else:                                          ; preds = %land.lhs.true.907, %lor.lhs.false.897
  br label %do.body.952

do.body.952:                                      ; preds = %if.else
  br label %do.cond.953

do.cond.953:                                      ; preds = %do.body.952
  br label %do.end.954

do.end.954:                                       ; preds = %do.cond.953
  %411 = load i32, i32* %shift_o_x, align 4, !tbaa !34
  %412 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %add955 = add nsw i32 %411, %412
  %div956 = sdiv i32 %add955, 2
  %413 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width957 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %413, i32 0, i32 2
  %x958 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width957, i32 0, i32 0
  %414 = load i32, i32* %x958, align 4, !tbaa !127
  %sub959 = sub nsw i32 %414, %div956
  store i32 %sub959, i32* %x958, align 4, !tbaa !127
  %415 = load i32, i32* %shift_o_y, align 4, !tbaa !34
  %416 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %add960 = add nsw i32 %415, %416
  %div961 = sdiv i32 %add960, 2
  %417 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width962 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %417, i32 0, i32 2
  %y963 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width962, i32 0, i32 1
  %418 = load i32, i32* %y963, align 4, !tbaa !126
  %sub964 = sub nsw i32 %418, %div961
  store i32 %sub964, i32* %y963, align 4, !tbaa !126
  %419 = load i32, i32* %shift_o_x, align 4, !tbaa !34
  %420 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %add965 = add nsw i32 %419, %420
  %div966 = sdiv i32 %add965, 2
  %421 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o967 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %421, i32 0, i32 0
  %p968 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o967, i32 0, i32 0
  %x969 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p968, i32 0, i32 0
  %422 = load i32, i32* %x969, align 4, !tbaa !109
  %add970 = add nsw i32 %422, %div966
  store i32 %add970, i32* %x969, align 4, !tbaa !109
  %423 = load i32, i32* %shift_o_y, align 4, !tbaa !34
  %424 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %add971 = add nsw i32 %423, %424
  %div972 = sdiv i32 %add971, 2
  %425 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o973 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %425, i32 0, i32 0
  %p974 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o973, i32 0, i32 0
  %y975 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p974, i32 0, i32 1
  %426 = load i32, i32* %y975, align 4, !tbaa !112
  %add976 = add nsw i32 %426, %div972
  store i32 %add976, i32* %y975, align 4, !tbaa !112
  %427 = load i32, i32* %shift_e_x, align 4, !tbaa !34
  %428 = load i32, i32* %delta_w_x, align 4, !tbaa !34
  %add977 = add nsw i32 %427, %428
  %div978 = sdiv i32 %add977, 2
  %429 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e979 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %429, i32 0, i32 1
  %p980 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e979, i32 0, i32 0
  %x981 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p980, i32 0, i32 0
  %430 = load i32, i32* %x981, align 4, !tbaa !114
  %add982 = add nsw i32 %430, %div978
  store i32 %add982, i32* %x981, align 4, !tbaa !114
  %431 = load i32, i32* %shift_e_y, align 4, !tbaa !34
  %432 = load i32, i32* %delta_w_y, align 4, !tbaa !34
  %add983 = add nsw i32 %431, %432
  %div984 = sdiv i32 %add983, 2
  %433 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e985 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %433, i32 0, i32 1
  %p986 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e985, i32 0, i32 0
  %y987 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p986, i32 0, i32 1
  %434 = load i32, i32* %y987, align 4, !tbaa !115
  %add988 = add nsw i32 %434, %div984
  store i32 %add988, i32* %y987, align 4, !tbaa !115
  store i32 0, i32* %adjust, align 4, !tbaa !34
  br label %if.end.989

if.end.989:                                       ; preds = %do.end.954, %do.end
  %435 = bitcast i32* %shift_e_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %436 = bitcast i32* %shift_e_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast i32* %shift_o_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast i32* %shift_o_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #1
  %439 = bitcast i32* %delta_w_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i32* %delta_w_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  br label %if.end.990

if.end.990:                                       ; preds = %if.end.989, %cond.end.829
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %cond.end.581, %cond.end.518, %cond.end.455, %cond.end.393
  br label %if.end.992

if.end.992:                                       ; preds = %if.end.991, %cond.end.331, %cond.end.269, %cond.end.207, %cond.end.145
  br label %if.end.993

if.end.993:                                       ; preds = %if.end.992, %land.lhs.true.60, %if.then.36
  br label %if.end.994

if.end.994:                                       ; preds = %if.end.993, %land.lhs.true.28, %land.lhs.true.23, %lor.lhs.false.21, %if.end
  %441 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp995 = icmp eq i32 %441, 0
  br i1 %cmp995, label %if.then.1000, label %lor.lhs.false.997

lor.lhs.false.997:                                ; preds = %if.end.994
  %442 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp998 = icmp eq i32 %442, 0
  br i1 %cmp998, label %if.then.1000, label %if.else.1021

if.then.1000:                                     ; preds = %lor.lhs.false.997, %if.end.994
  %443 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1001 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %443, i32 0, i32 35
  %stroke_stored1002 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1001, i32 0, i32 0
  store i32 1, i32* %stroke_stored1002, align 4, !tbaa !131
  %444 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1003 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %444, i32 0, i32 35
  %orig1004 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1003, i32 0, i32 1
  %arrayidx1005 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig1004, i32 0, i64 0
  %445 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o1006 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %445, i32 0, i32 0
  %p1007 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o1006, i32 0, i32 0
  %446 = bitcast %struct.gs_fixed_point_s* %arrayidx1005 to i8*
  %447 = bitcast %struct.gs_fixed_point_s* %p1007 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %446, i8* %447, i64 8, i32 4, i1 false), !tbaa.struct !48
  %448 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1008 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %448, i32 0, i32 35
  %orig1009 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1008, i32 0, i32 1
  %arrayidx1010 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig1009, i32 0, i64 1
  %449 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e1011 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %449, i32 0, i32 1
  %p1012 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e1011, i32 0, i32 0
  %450 = bitcast %struct.gs_fixed_point_s* %arrayidx1010 to i8*
  %451 = bitcast %struct.gs_fixed_point_s* %p1012 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %450, i8* %451, i64 8, i32 4, i1 false), !tbaa.struct !48
  %452 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1013 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %452, i32 0, i32 35
  %orig1014 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1013, i32 0, i32 1
  %arrayidx1015 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig1014, i32 0, i64 2
  %453 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1016 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %453, i32 0, i32 2
  %454 = bitcast %struct.gs_fixed_point_s* %arrayidx1015 to i8*
  %455 = bitcast %struct.gs_fixed_point_s* %width1016 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %454, i8* %455, i64 8, i32 4, i1 false), !tbaa.struct !48
  %456 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1017 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %456, i32 0, i32 35
  %orig1018 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1017, i32 0, i32 1
  %arrayidx1019 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %orig1018, i32 0, i64 3
  %457 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector1020 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %457, i32 0, i32 3
  %458 = bitcast %struct.gs_fixed_point_s* %arrayidx1019 to i8*
  %459 = bitcast %struct.gs_fixed_point_s* %vector1020 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %458, i8* %459, i64 8, i32 4, i1 false), !tbaa.struct !48
  br label %if.end.1024

if.else.1021:                                     ; preds = %lor.lhs.false.997
  %460 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1022 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %460, i32 0, i32 35
  %stroke_stored1023 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1022, i32 0, i32 0
  store i32 0, i32* %stroke_stored1023, align 4, !tbaa !131
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.else.1021, %if.then.1000
  %461 = load i32, i32* %adjust, align 4, !tbaa !34
  %tobool1025 = icmp ne i32 %461, 0
  br i1 %tobool1025, label %if.then.1026, label %if.end.1058

if.then.1026:                                     ; preds = %if.end.1024
  %462 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1027 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %462, i32 0, i32 2
  %x1028 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1027, i32 0, i32 0
  %463 = load i32, i32* %x1028, align 4, !tbaa !127
  %cmp1029 = icmp slt i32 %463, 0
  br i1 %cmp1029, label %cond.true.1031, label %cond.false.1035

cond.true.1031:                                   ; preds = %if.then.1026
  %464 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1032 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %464, i32 0, i32 2
  %x1033 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1032, i32 0, i32 0
  %465 = load i32, i32* %x1033, align 4, !tbaa !127
  %sub1034 = sub nsw i32 0, %465
  br label %cond.end.1038

cond.false.1035:                                  ; preds = %if.then.1026
  %466 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1036 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %466, i32 0, i32 2
  %x1037 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1036, i32 0, i32 0
  %467 = load i32, i32* %x1037, align 4, !tbaa !127
  br label %cond.end.1038

cond.end.1038:                                    ; preds = %cond.false.1035, %cond.true.1031
  %cond1039 = phi i32 [ %sub1034, %cond.true.1031 ], [ %467, %cond.false.1035 ]
  %468 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1040 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %468, i32 0, i32 2
  %y1041 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1040, i32 0, i32 1
  %469 = load i32, i32* %y1041, align 4, !tbaa !126
  %cmp1042 = icmp slt i32 %469, 0
  br i1 %cmp1042, label %cond.true.1044, label %cond.false.1048

cond.true.1044:                                   ; preds = %cond.end.1038
  %470 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1045 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %470, i32 0, i32 2
  %y1046 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1045, i32 0, i32 1
  %471 = load i32, i32* %y1046, align 4, !tbaa !126
  %sub1047 = sub nsw i32 0, %471
  br label %cond.end.1051

cond.false.1048:                                  ; preds = %cond.end.1038
  %472 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1049 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %472, i32 0, i32 2
  %y1050 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1049, i32 0, i32 1
  %473 = load i32, i32* %y1050, align 4, !tbaa !126
  br label %cond.end.1051

cond.end.1051:                                    ; preds = %cond.false.1048, %cond.true.1044
  %cond1052 = phi i32 [ %sub1047, %cond.true.1044 ], [ %473, %cond.false.1048 ]
  %cmp1053 = icmp sle i32 %cond1039, %cond1052
  %conv1054 = zext i1 %cmp1053 to i32
  store i32 %conv1054, i32* %horiz, align 4, !tbaa !34
  %474 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %475 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %476 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %477 = load i32, i32* %horiz, align 4, !tbaa !34
  call void @adjust_stroke_transversal(%struct.partial_line_s* %474, %struct.gs_imager_state_s* %475, i32 %476, i32 %477) #6
  %478 = load i32, i32* %adjust_longitude.addr, align 4, !tbaa !34
  %tobool1055 = icmp ne i32 %478, 0
  br i1 %tobool1055, label %if.then.1056, label %if.end.1057

if.then.1056:                                     ; preds = %cond.end.1051
  %479 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %480 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %481 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %482 = load i32, i32* %horiz, align 4, !tbaa !34
  %483 = load i32, i32* %start_cap, align 4, !tbaa !56
  %484 = load i32, i32* %end_cap, align 4, !tbaa !56
  call void @adjust_stroke_longitude(%struct.partial_line_s* %479, %struct.gs_imager_state_s* %480, i32 %481, i32 %482, i32 %483, i32 %484) #6
  br label %if.end.1057

if.end.1057:                                      ; preds = %if.then.1056, %cond.end.1051
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.end.1057, %if.end.1024
  %485 = load i32, i32* %start_cap, align 4, !tbaa !56
  %cmp1059 = icmp eq i32 %485, 0
  br i1 %cmp1059, label %if.then.1064, label %lor.lhs.false.1061

lor.lhs.false.1061:                               ; preds = %if.end.1058
  %486 = load i32, i32* %end_cap, align 4, !tbaa !56
  %cmp1062 = icmp eq i32 %486, 0
  br i1 %cmp1062, label %if.then.1064, label %if.end.1083

if.then.1064:                                     ; preds = %lor.lhs.false.1061, %if.end.1058
  %487 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1065 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %487, i32 0, i32 35
  %adjusted1066 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1065, i32 0, i32 2
  %arrayidx1067 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted1066, i32 0, i64 0
  %488 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o1068 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %488, i32 0, i32 0
  %p1069 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o1068, i32 0, i32 0
  %489 = bitcast %struct.gs_fixed_point_s* %arrayidx1067 to i8*
  %490 = bitcast %struct.gs_fixed_point_s* %p1069 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %489, i8* %490, i64 8, i32 4, i1 false), !tbaa.struct !48
  %491 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1070 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %491, i32 0, i32 35
  %adjusted1071 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1070, i32 0, i32 2
  %arrayidx1072 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted1071, i32 0, i64 1
  %492 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e1073 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %492, i32 0, i32 1
  %p1074 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e1073, i32 0, i32 0
  %493 = bitcast %struct.gs_fixed_point_s* %arrayidx1072 to i8*
  %494 = bitcast %struct.gs_fixed_point_s* %p1074 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %493, i8* %494, i64 8, i32 4, i1 false), !tbaa.struct !48
  %495 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1075 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %495, i32 0, i32 35
  %adjusted1076 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1075, i32 0, i32 2
  %arrayidx1077 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted1076, i32 0, i64 2
  %496 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1078 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %496, i32 0, i32 2
  %497 = bitcast %struct.gs_fixed_point_s* %arrayidx1077 to i8*
  %498 = bitcast %struct.gs_fixed_point_s* %width1078 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %497, i8* %498, i64 8, i32 4, i1 false), !tbaa.struct !48
  %499 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %sgr1079 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %499, i32 0, i32 35
  %adjusted1080 = getelementptr inbounds %struct.gx_stroked_gradient_recognizer_s, %struct.gx_stroked_gradient_recognizer_s* %sgr1079, i32 0, i32 2
  %arrayidx1081 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %adjusted1080, i32 0, i64 3
  %500 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector1082 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %500, i32 0, i32 3
  %501 = bitcast %struct.gs_fixed_point_s* %arrayidx1081 to i8*
  %502 = bitcast %struct.gs_fixed_point_s* %vector1082 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %501, i8* %502, i64 8, i32 4, i1 false), !tbaa.struct !48
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1064, %lor.lhs.false.1061
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1083, %if.then
  %503 = bitcast i32* %end_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
  %504 = bitcast i32* %start_cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #1
  %505 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #1
  %506 = bitcast i32* %horiz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
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
define internal void @compute_caps(%struct.partial_line_s* %plp) #0 {
entry:
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %wx2 = alloca i32, align 4
  %wy2 = alloca i32, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %wx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %1, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !127
  store i32 %2, i32* %wx2, align 4, !tbaa !34
  %3 = bitcast i32* %wy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !126
  store i32 %5, i32* %wy2, align 4, !tbaa !34
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !109
  %8 = load i32, i32* %wx2, align 4, !tbaa !34
  %add = add nsw i32 %7, %8
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %9, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o3, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  store i32 %add, i32* %x4, align 4, !tbaa !146
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %11 = load i32, i32* %y7, align 4, !tbaa !112
  %12 = load i32, i32* %wy2, align 4, !tbaa !34
  %add8 = add nsw i32 %11, %12
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o9 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 0
  %co10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o9, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co10, i32 0, i32 1
  store i32 %add8, i32* %y11, align 4, !tbaa !147
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %14, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 3
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %15 = load i32, i32* %x12, align 4, !tbaa !125
  %sub = sub nsw i32 0, %15
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o13 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 0
  %cdelta14 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o13, i32 0, i32 3
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta14, i32 0, i32 0
  store i32 %sub, i32* %x15, align 4, !tbaa !151
  %17 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e16 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %17, i32 0, i32 1
  %cdelta17 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e16, i32 0, i32 3
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta17, i32 0, i32 1
  %18 = load i32, i32* %y18, align 4, !tbaa !124
  %sub19 = sub nsw i32 0, %18
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o20 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 0
  %cdelta21 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o20, i32 0, i32 3
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta21, i32 0, i32 1
  store i32 %sub19, i32* %y22, align 4, !tbaa !152
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o23 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %20, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o23, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 0
  %21 = load i32, i32* %x25, align 4, !tbaa !109
  %22 = load i32, i32* %wx2, align 4, !tbaa !34
  %sub26 = sub nsw i32 %21, %22
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o27 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o27, i32 0, i32 2
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  store i32 %sub26, i32* %x28, align 4, !tbaa !148
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o29 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o29, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p30, i32 0, i32 1
  %25 = load i32, i32* %y31, align 4, !tbaa !112
  %26 = load i32, i32* %wy2, align 4, !tbaa !34
  %sub32 = sub nsw i32 %25, %26
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o33 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 0
  %ce34 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o33, i32 0, i32 2
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce34, i32 0, i32 1
  store i32 %sub32, i32* %y35, align 4, !tbaa !149
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 1
  %p37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e36, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p37, i32 0, i32 0
  %29 = load i32, i32* %x38, align 4, !tbaa !114
  %30 = load i32, i32* %wx2, align 4, !tbaa !34
  %sub39 = sub nsw i32 %29, %30
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e40 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 1
  %co41 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e40, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co41, i32 0, i32 0
  store i32 %sub39, i32* %x42, align 4, !tbaa !140
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e43 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 1
  %p44 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e43, i32 0, i32 0
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p44, i32 0, i32 1
  %33 = load i32, i32* %y45, align 4, !tbaa !115
  %34 = load i32, i32* %wy2, align 4, !tbaa !34
  %sub46 = sub nsw i32 %33, %34
  %35 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e47 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %35, i32 0, i32 1
  %co48 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e47, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co48, i32 0, i32 1
  store i32 %sub46, i32* %y49, align 4, !tbaa !141
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e50 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 1
  %p51 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e50, i32 0, i32 0
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p51, i32 0, i32 0
  %37 = load i32, i32* %x52, align 4, !tbaa !114
  %38 = load i32, i32* %wx2, align 4, !tbaa !34
  %add53 = add nsw i32 %37, %38
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e54 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %39, i32 0, i32 1
  %ce55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e54, i32 0, i32 2
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce55, i32 0, i32 0
  store i32 %add53, i32* %x56, align 4, !tbaa !142
  %40 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e57 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %40, i32 0, i32 1
  %p58 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e57, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 1
  %41 = load i32, i32* %y59, align 4, !tbaa !115
  %42 = load i32, i32* %wy2, align 4, !tbaa !34
  %add60 = add nsw i32 %41, %42
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e61 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %43, i32 0, i32 1
  %ce62 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e61, i32 0, i32 2
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce62, i32 0, i32 1
  store i32 %add60, i32* %y63, align 4, !tbaa !143
  %44 = bitcast i32* %wy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %wx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_join_path_and_reverse(%struct.gx_path_s* %path, %struct.gx_path_s* %rpath) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca %struct.gx_path_s*, align 8
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_path_segments_s* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %4, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %5 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.subpath_s* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_append_reversed(%struct.gx_path_s* %6, %struct.gx_path_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %8 = load i32, i32* %code, align 4, !tbaa !34
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !100
  %call6 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %11, %struct.gx_path_s* null, %struct.gs_memory_s* %13) #6
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %14, i32 0) #6
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gx_path_free(%struct.gx_path_s*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @stroke_add_initial_cap_compat(%struct.gx_path_s* %ppath, %struct.partial_line_s* %plp, i32 %adlust_longitude, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %adlust_longitude.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %points = alloca [4 x %struct.gs_fixed_point_s], align 16
  %npoints = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store i32 %adlust_longitude, i32* %adlust_longitude.addr, align 4, !tbaa !34
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %2 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %npoints, align 4, !tbaa !34
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %5, i32 0, i32 1
  %6 = load i32, i32* %start_cap, align 4, !tbaa !116
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %thin = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 4
  %8 = load i32, i32* %thin, align 4, !tbaa !128
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @set_thin_widths(%struct.partial_line_s* %9) #6
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load i32, i32* %adlust_longitude.addr, align 4, !tbaa !34
  call void @adjust_stroke(%struct.gx_device_s* %10, %struct.partial_line_s* %11, %struct.gs_imager_state_s* %12, i32 1, i32 %13, i32 0) #6
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  call void @compute_caps(%struct.partial_line_s* %14) #6
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %15 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap3 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %15, i32 0, i32 1
  %16 = load i32, i32* %start_cap3, align 4, !tbaa !116
  %cmp4 = icmp eq i32 %16, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.then.5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %19 = load i32, i32* %x, align 4, !tbaa !146
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %20, i32 0, i32 0
  %co7 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o6, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co7, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !147
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %17, i32 %19, i32 %21) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %23 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o9 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %23, i32 0, i32 0
  %call10 = call i32 @add_round_cap(%struct.gx_path_s* %22, %struct.endpoint_s* %o9) #6
  store i32 %call10, i32* %code, align 4, !tbaa !34
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %do.end
  %24 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.2
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 0
  %co15 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o14, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co15, i32 0, i32 0
  %26 = load i32, i32* %x16, align 4, !tbaa !146
  %arrayidx = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %26, i32* %x17, align 4, !tbaa !39
  %27 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o18 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %27, i32 0, i32 0
  %co19 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o18, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co19, i32 0, i32 1
  %28 = load i32, i32* %y20, align 4, !tbaa !147
  %arrayidx21 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx21, i32 0, i32 1
  store i32 %28, i32* %y22, align 4, !tbaa !38
  %29 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %npoints, align 4, !tbaa !34
  %30 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap23 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %30, i32 0, i32 1
  %31 = load i32, i32* %start_cap23, align 4, !tbaa !116
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o24 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %33 = load i32, i32* %npoints, align 4, !tbaa !34
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arraydecay, i64 %idx.ext
  %call25 = call i32 @cap_points(i32 %31, %struct.endpoint_s* %o24, %struct.gs_fixed_point_s* %add.ptr) #6
  store i32 %call25, i32* %code, align 4, !tbaa !34
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %34 = load i32, i32* %npoints, align 4, !tbaa !34
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.else
  %35 = load i32, i32* %code, align 4, !tbaa !34
  %36 = load i32, i32* %npoints, align 4, !tbaa !34
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %npoints, align 4, !tbaa !34
  %37 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o29 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %37, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o29, i32 0, i32 2
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %38 = load i32, i32* %x30, align 4, !tbaa !148
  %39 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx31, i32 0, i32 0
  store i32 %38, i32* %x32, align 4, !tbaa !39
  %40 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o33 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %40, i32 0, i32 0
  %ce34 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o33, i32 0, i32 2
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce34, i32 0, i32 1
  %41 = load i32, i32* %y35, align 4, !tbaa !149
  %42 = load i32, i32* %npoints, align 4, !tbaa !34
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 %idxprom36
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx37, i32 0, i32 1
  store i32 %41, i32* %y38, align 4, !tbaa !38
  %43 = load i32, i32* %npoints, align 4, !tbaa !34
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %npoints, align 4, !tbaa !34
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay40 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %45 = load i32, i32* %npoints, align 4, !tbaa !34
  %call41 = call i32 @add_points(%struct.gx_path_s* %44, %struct.gs_fixed_point_s* %arraydecay40, i32 %45, i32 1) #6
  store i32 %call41, i32* %code, align 4, !tbaa !34
  %46 = load i32, i32* %code, align 4, !tbaa !34
  %cmp42 = icmp slt i32 %46, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.28
  %47 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.28
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call45 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %48, i32 0) #6
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43, %if.then.27, %if.end.13, %if.then.12, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %npoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 32, i8* %51) #1
  %52 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @cap_points(i32 %type, %struct.endpoint_s* %endp, %struct.gs_fixed_point_s* %pts) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %endp.addr = alloca %struct.endpoint_s*, align 8
  %pts.addr = alloca %struct.gs_fixed_point_s*, align 8
  store i32 %type, i32* %type.addr, align 4, !tbaa !56
  store %struct.endpoint_s* %endp, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pts, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %0 = load i32, i32* %type.addr, align 4, !tbaa !56
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %1, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !153
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %2, i32* %x1, align 4, !tbaa !39
  %4 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %4, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co2, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !154
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i64 0
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx3, i32 0, i32 1
  store i32 %5, i32* %y4, align 4, !tbaa !38
  %7 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %7, i32 0, i32 2
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %8 = load i32, i32* %x5, align 4, !tbaa !155
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 1
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx6, i32 0, i32 0
  store i32 %8, i32* %x7, align 4, !tbaa !39
  %10 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce8 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %10, i32 0, i32 2
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce8, i32 0, i32 1
  %11 = load i32, i32* %y9, align 4, !tbaa !156
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i64 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx10, i32 0, i32 1
  store i32 %11, i32* %y11, align 4, !tbaa !38
  store i32 2, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %13 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co13 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %13, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co13, i32 0, i32 0
  %14 = load i32, i32* %x14, align 4, !tbaa !153
  %15 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %15, i32 0, i32 3
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %16 = load i32, i32* %x15, align 4, !tbaa !157
  %add = add nsw i32 %14, %16
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i64 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx16, i32 0, i32 0
  store i32 %add, i32* %x17, align 4, !tbaa !39
  %18 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co18 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %18, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co18, i32 0, i32 1
  %19 = load i32, i32* %y19, align 4, !tbaa !154
  %20 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %20, i32 0, i32 3
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta20, i32 0, i32 1
  %21 = load i32, i32* %y21, align 4, !tbaa !158
  %add22 = add nsw i32 %19, %21
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i64 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx23, i32 0, i32 1
  store i32 %add22, i32* %y24, align 4, !tbaa !38
  %23 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce25 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %23, i32 0, i32 2
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce25, i32 0, i32 0
  %24 = load i32, i32* %x26, align 4, !tbaa !155
  %25 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta27 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %25, i32 0, i32 3
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta27, i32 0, i32 0
  %26 = load i32, i32* %x28, align 4, !tbaa !157
  %add29 = add nsw i32 %24, %26
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i64 1
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx30, i32 0, i32 0
  store i32 %add29, i32* %x31, align 4, !tbaa !39
  %28 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce32 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %28, i32 0, i32 2
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce32, i32 0, i32 1
  %29 = load i32, i32* %y33, align 4, !tbaa !156
  %30 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta34 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %30, i32 0, i32 3
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta34, i32 0, i32 1
  %31 = load i32, i32* %y35, align 4, !tbaa !158
  %add36 = add nsw i32 %29, %31
  %32 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %32, i64 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx37, i32 0, i32 1
  store i32 %add36, i32* %y38, align 4, !tbaa !38
  store i32 2, i32* %retval
  br label %return

sw.bb.39:                                         ; preds = %entry
  %33 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co40 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %33, i32 0, i32 1
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co40, i32 0, i32 0
  %34 = load i32, i32* %x41, align 4, !tbaa !153
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i64 0
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx42, i32 0, i32 0
  store i32 %34, i32* %x43, align 4, !tbaa !39
  %36 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co44 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %36, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co44, i32 0, i32 1
  %37 = load i32, i32* %y45, align 4, !tbaa !154
  %38 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %38, i64 0
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx46, i32 0, i32 1
  store i32 %37, i32* %y47, align 4, !tbaa !38
  %39 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %39, i32 0, i32 0
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %40 = load i32, i32* %x48, align 4, !tbaa !159
  %41 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta49 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %41, i32 0, i32 3
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta49, i32 0, i32 0
  %42 = load i32, i32* %x50, align 4, !tbaa !157
  %add51 = add nsw i32 %40, %42
  %43 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %43, i64 1
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx52, i32 0, i32 0
  store i32 %add51, i32* %x53, align 4, !tbaa !39
  %44 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p54 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %44, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p54, i32 0, i32 1
  %45 = load i32, i32* %y55, align 4, !tbaa !160
  %46 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta56 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %46, i32 0, i32 3
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta56, i32 0, i32 1
  %47 = load i32, i32* %y57, align 4, !tbaa !158
  %add58 = add nsw i32 %45, %47
  %48 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %48, i64 1
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx59, i32 0, i32 1
  store i32 %add58, i32* %y60, align 4, !tbaa !38
  %49 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce61 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %49, i32 0, i32 2
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce61, i32 0, i32 0
  %50 = load i32, i32* %x62, align 4, !tbaa !155
  %51 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %51, i64 2
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx63, i32 0, i32 0
  store i32 %50, i32* %x64, align 4, !tbaa !39
  %52 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce65 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %52, i32 0, i32 2
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce65, i32 0, i32 1
  %53 = load i32, i32* %y66, align 4, !tbaa !156
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pts.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i64 2
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx67, i32 0, i32 1
  store i32 %53, i32* %y68, align 4, !tbaa !38
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -28, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.39, %sw.bb.12, %sw.bb
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @line_join_points(%struct.gx_line_params_s* %pgs_lp, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_fixed_point_s* %join_points, %struct.gs_matrix_s* %pmat, i32 %join, i32 %reflected) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs_lp.addr = alloca %struct.gx_line_params_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %join_points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %join.addr = alloca i32, align 4
  %reflected.addr = alloca i32, align 4
  %ccw = alloca i32, align 4
  %ccw0 = alloca i32, align 4
  %outp = alloca %struct.gs_fixed_point_s*, align 8
  %np = alloca %struct.gs_fixed_point_s*, align 8
  %code = alloca i32, align 4
  %tpx = alloca i32, align 4
  %tpy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mpt = alloca %struct.gs_fixed_point_s, align 4
  store %struct.gx_line_params_s* %pgs_lp, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %join_points, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  %0 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %1, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !127
  %conv = sitofp i32 %2 to double
  %3 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %3, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !126
  %conv2 = sitofp i32 %4 to double
  %mul = fmul double %conv, %conv2
  %5 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %5, i32 0, i32 2
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width3, i32 0, i32 0
  %6 = load i32, i32* %x4, align 4, !tbaa !127
  %conv5 = sitofp i32 %6 to double
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 2
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width6, i32 0, i32 1
  %8 = load i32, i32* %y7, align 4, !tbaa !126
  %conv8 = sitofp i32 %8 to double
  %mul9 = fmul double %conv5, %conv8
  %cmp = fcmp ogt double %mul, %mul9
  %conv10 = zext i1 %cmp to i32
  store i32 %conv10, i32* %ccw, align 4, !tbaa !34
  %9 = bitcast i32* %ccw0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %ccw, align 4, !tbaa !34
  store i32 %10, i32* %ccw0, align 4, !tbaa !34
  %11 = bitcast %struct.gs_fixed_point_s** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_fixed_point_s** %np to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %15 = load i32, i32* %ccw, align 4, !tbaa !34
  %xor = xor i32 %15, %14
  store i32 %xor, i32* %ccw, align 4, !tbaa !34
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %17 = load i32, i32* %x11, align 4, !tbaa !140
  %18 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i64 0
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %17, i32* %x12, align 4, !tbaa !39
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e13 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 1
  %co14 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e13, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co14, i32 0, i32 1
  %20 = load i32, i32* %y15, align 4, !tbaa !141
  %21 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i64 0
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx16, i32 0, i32 1
  store i32 %20, i32* %y17, align 4, !tbaa !38
  %22 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e18 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %22, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e18, i32 0, i32 2
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %23 = load i32, i32* %x19, align 4, !tbaa !142
  %24 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %24, i64 3
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx20, i32 0, i32 0
  store i32 %23, i32* %x21, align 4, !tbaa !39
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e22 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 1
  %ce23 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e22, i32 0, i32 2
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce23, i32 0, i32 1
  %26 = load i32, i32* %y24, align 4, !tbaa !143
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i64 3
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx25, i32 0, i32 1
  store i32 %26, i32* %y26, align 4, !tbaa !38
  %28 = load i32, i32* %ccw, align 4, !tbaa !34
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %29 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %29, i64 3
  store %struct.gs_fixed_point_s* %arrayidx27, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %30 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %30, i32 0, i32 0
  %co28 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co28, i32 0, i32 0
  %31 = load i32, i32* %x29, align 4, !tbaa !146
  %32 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %32, i64 2
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx30, i32 0, i32 0
  store i32 %31, i32* %x31, align 4, !tbaa !39
  %33 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o32 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %33, i32 0, i32 0
  %co33 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o32, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co33, i32 0, i32 1
  %34 = load i32, i32* %y34, align 4, !tbaa !147
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i64 2
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx35, i32 0, i32 1
  store i32 %34, i32* %y36, align 4, !tbaa !38
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o37 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o37, i32 0, i32 0
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %37 = load i32, i32* %x38, align 4, !tbaa !109
  %38 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %38, i64 1
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx39, i32 0, i32 0
  store i32 %37, i32* %x40, align 4, !tbaa !39
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o41 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %39, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o41, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p42, i32 0, i32 1
  %40 = load i32, i32* %y43, align 4, !tbaa !112
  %41 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %41, i64 1
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx44, i32 0, i32 1
  store i32 %40, i32* %y45, align 4, !tbaa !38
  %42 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %42, i64 2
  store %struct.gs_fixed_point_s* %arrayidx46, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %43 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %43, i64 0
  store %struct.gs_fixed_point_s* %arrayidx47, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o48 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 0
  %ce49 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o48, i32 0, i32 2
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce49, i32 0, i32 0
  %45 = load i32, i32* %x50, align 4, !tbaa !148
  %46 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %46, i64 1
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx51, i32 0, i32 0
  store i32 %45, i32* %x52, align 4, !tbaa !39
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o53 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 0
  %ce54 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o53, i32 0, i32 2
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce54, i32 0, i32 1
  %48 = load i32, i32* %y55, align 4, !tbaa !149
  %49 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %49, i64 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx56, i32 0, i32 1
  store i32 %48, i32* %y57, align 4, !tbaa !38
  %50 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o58 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %50, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o58, i32 0, i32 0
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p59, i32 0, i32 0
  %51 = load i32, i32* %x60, align 4, !tbaa !109
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 2
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx61, i32 0, i32 0
  store i32 %51, i32* %x62, align 4, !tbaa !39
  %53 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o63 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %53, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o63, i32 0, i32 0
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p64, i32 0, i32 1
  %54 = load i32, i32* %y65, align 4, !tbaa !112
  %55 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %55, i64 2
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx66, i32 0, i32 1
  store i32 %54, i32* %y67, align 4, !tbaa !38
  %56 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %56, i64 1
  store %struct.gs_fixed_point_s* %arrayidx68, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp69 = icmp eq i32 %57, 4
  br i1 %cmp69, label %if.then.71, label %if.end.120

if.then.71:                                       ; preds = %do.end
  %58 = bitcast i32* %tpx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %59, i32 0, i32 0
  %60 = load i32, i32* %x72, align 4, !tbaa !39
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o73 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 0
  %p74 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o73, i32 0, i32 0
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p74, i32 0, i32 0
  %62 = load i32, i32* %x75, align 4, !tbaa !109
  %sub = sub nsw i32 %60, %62
  %63 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %63, i32 0, i32 0
  %64 = load i32, i32* %x76, align 4, !tbaa !39
  %add = add nsw i32 %sub, %64
  store i32 %add, i32* %tpx, align 4, !tbaa !34
  %65 = bitcast i32* %tpy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %66, i32 0, i32 1
  %67 = load i32, i32* %y77, align 4, !tbaa !38
  %68 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o78 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %68, i32 0, i32 0
  %p79 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o78, i32 0, i32 0
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p79, i32 0, i32 1
  %69 = load i32, i32* %y80, align 4, !tbaa !112
  %sub81 = sub nsw i32 %67, %69
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %70, i32 0, i32 1
  %71 = load i32, i32* %y82, align 4, !tbaa !38
  %add83 = add nsw i32 %sub81, %71
  store i32 %add83, i32* %tpy, align 4, !tbaa !34
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i64 3
  %x85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx84, i32 0, i32 0
  %73 = load i32, i32* %x85, align 4, !tbaa !39
  %74 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %74, i64 4
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx86, i32 0, i32 0
  store i32 %73, i32* %x87, align 4, !tbaa !39
  %75 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %75, i64 3
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx88, i32 0, i32 1
  %76 = load i32, i32* %y89, align 4, !tbaa !38
  %77 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %77, i64 4
  %y91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx90, i32 0, i32 1
  store i32 %76, i32* %y91, align 4, !tbaa !38
  %78 = load i32, i32* %ccw, align 4, !tbaa !34
  %tobool92 = icmp ne i32 %78, 0
  br i1 %tobool92, label %if.else.98, label %if.then.93

if.then.93:                                       ; preds = %if.then.71
  %79 = load i32, i32* %tpx, align 4, !tbaa !34
  %80 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %80, i64 3
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx94, i32 0, i32 0
  store i32 %79, i32* %x95, align 4, !tbaa !39
  %81 = load i32, i32* %tpy, align 4, !tbaa !34
  %82 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %82, i64 3
  %y97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx96, i32 0, i32 1
  store i32 %81, i32* %y97, align 4, !tbaa !38
  br label %if.end.119

if.else.98:                                       ; preds = %if.then.71
  %83 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %83, i64 2
  %x100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx99, i32 0, i32 0
  %84 = load i32, i32* %x100, align 4, !tbaa !39
  %85 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %85, i64 3
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx101, i32 0, i32 0
  store i32 %84, i32* %x102, align 4, !tbaa !39
  %86 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %86, i64 2
  %y104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx103, i32 0, i32 1
  %87 = load i32, i32* %y104, align 4, !tbaa !38
  %88 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %88, i64 3
  %y106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx105, i32 0, i32 1
  store i32 %87, i32* %y106, align 4, !tbaa !38
  %89 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %89, i64 1
  %x108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx107, i32 0, i32 0
  %90 = load i32, i32* %x108, align 4, !tbaa !39
  %91 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %91, i64 2
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx109, i32 0, i32 0
  store i32 %90, i32* %x110, align 4, !tbaa !39
  %92 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %92, i64 1
  %y112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx111, i32 0, i32 1
  %93 = load i32, i32* %y112, align 4, !tbaa !38
  %94 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %94, i64 2
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx113, i32 0, i32 1
  store i32 %93, i32* %y114, align 4, !tbaa !38
  %95 = load i32, i32* %tpx, align 4, !tbaa !34
  %96 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %96, i64 1
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx115, i32 0, i32 0
  store i32 %95, i32* %x116, align 4, !tbaa !39
  %97 = load i32, i32* %tpy, align 4, !tbaa !34
  %98 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %98, i64 1
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx117, i32 0, i32 1
  store i32 %97, i32* %y118, align 4, !tbaa !38
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.98, %if.then.93
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %99 = bitcast i32* %tpy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %tpx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %cleanup.156

if.end.120:                                       ; preds = %do.end
  %101 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp121 = icmp eq i32 %101, 0
  br i1 %cmp121, label %land.lhs.true, label %if.end.155

land.lhs.true:                                    ; preds = %if.end.120
  %102 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %x123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %102, i32 0, i32 0
  %103 = load i32, i32* %x123, align 4, !tbaa !39
  %shl = shl i32 %103, 1
  %shr = ashr i32 %shl, 8
  %conv124 = sext i32 %shr to i64
  %104 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  %x125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %104, i32 0, i32 0
  %105 = load i32, i32* %x125, align 4, !tbaa !39
  %shl126 = shl i32 %105, 1
  %shr127 = ashr i32 %shl126, 8
  %conv128 = sext i32 %shr127 to i64
  %cmp129 = icmp eq i64 %conv124, %conv128
  br i1 %cmp129, label %land.lhs.true.131, label %if.then.142

land.lhs.true.131:                                ; preds = %land.lhs.true
  %106 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %y132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %106, i32 0, i32 1
  %107 = load i32, i32* %y132, align 4, !tbaa !38
  %shl133 = shl i32 %107, 1
  %shr134 = ashr i32 %shl133, 8
  %conv135 = sext i32 %shr134 to i64
  %108 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  %y136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %108, i32 0, i32 1
  %109 = load i32, i32* %y136, align 4, !tbaa !38
  %shl137 = shl i32 %109, 1
  %shr138 = ashr i32 %shl137, 8
  %conv139 = sext i32 %shr138 to i64
  %cmp140 = icmp eq i64 %conv135, %conv139
  br i1 %cmp140, label %if.end.155, label %if.then.142

if.then.142:                                      ; preds = %land.lhs.true.131, %land.lhs.true
  %110 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  %112 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %113 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %114 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %115 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %116 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np, align 8, !tbaa !1
  %117 = load i32, i32* %ccw0, align 4, !tbaa !34
  %call = call i32 @check_miter(%struct.gx_line_params_s* %111, %struct.partial_line_s* %112, %struct.partial_line_s* %113, %struct.gs_matrix_s* %114, %struct.gs_fixed_point_s* %115, %struct.gs_fixed_point_s* %116, %struct.gs_fixed_point_s* %mpt, i32 %117) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %118 = load i32, i32* %code, align 4, !tbaa !34
  %cmp143 = icmp slt i32 %118, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.then.142
  %119 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %if.then.142
  %120 = load i32, i32* %code, align 4, !tbaa !34
  %cmp147 = icmp eq i32 %120, 0
  br i1 %cmp147, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.end.146
  %x150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 0
  %121 = load i32, i32* %x150, align 4, !tbaa !39
  %122 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %x151 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %122, i32 0, i32 0
  store i32 %121, i32* %x151, align 4, !tbaa !39
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 1
  %123 = load i32, i32* %y152, align 4, !tbaa !38
  %124 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp, align 8, !tbaa !1
  %y153 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %124, i32 0, i32 1
  store i32 %123, i32* %y153, align 4, !tbaa !38
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.149, %if.end.146
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.154, %if.then.145
  %125 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.156 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.155

if.end.155:                                       ; preds = %cleanup.cont, %land.lhs.true.131, %if.end.120
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %if.end.155, %cleanup, %if.end.119
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct.gs_fixed_point_s** %np to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gs_fixed_point_s** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32* %ccw0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal i32 @add_points(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %points, i32 %npoints, i32 %moveto_first) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %npoints.addr = alloca i32, align 4
  %moveto_first.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  store i32 %npoints, i32* %npoints.addr, align 4, !tbaa !34
  store i32 %moveto_first, i32* %moveto_first.addr, align 4, !tbaa !34
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %1 = load i32, i32* %moveto_first.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !39
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %5, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx1, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !38
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %2, i32 %4, i32 %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %7 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.end.4
  %8 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %if.end
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.body.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 1
  %11 = load i32, i32* %npoints.addr, align 4, !tbaa !34
  %sub = sub nsw i32 %11, 1
  %call9 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %9, %struct.gs_fixed_point_s* %add.ptr, i32 %sub, i32 0) #6
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.end
  br label %do.body.10

do.body.10:                                       ; preds = %if.else
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %14 = load i32, i32* %npoints.addr, align 4, !tbaa !34
  %call13 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %12, %struct.gs_fixed_point_s* %13, i32 %14, i32 0) #6
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.12, %do.end.8, %if.then.5
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @check_miter(%struct.gx_line_params_s* %pgs_lp, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_matrix_s* %pmat, %struct.gs_fixed_point_s* %outp, %struct.gs_fixed_point_s* %np, %struct.gs_fixed_point_s* %mpt, i32 %ccw0) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs_lp.addr = alloca %struct.gx_line_params_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %outp.addr = alloca %struct.gs_fixed_point_s*, align 8
  %np.addr = alloca %struct.gs_fixed_point_s*, align 8
  %mpt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %ccw0.addr = alloca i32, align 4
  %check = alloca float, align 4
  %u1 = alloca double, align 8
  %v1 = alloca double, align 8
  %u2 = alloca double, align 8
  %v2 = alloca double, align 8
  %num = alloca double, align 8
  %denom = alloca double, align 8
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %dirn1 = alloca %struct.gs_fixed_point_s, align 4
  %dirn2 = alloca %struct.gs_fixed_point_s, align 4
  %scale = alloca float, align 4
  %scale143 = alloca float, align 4
  store %struct.gx_line_params_s* %pgs_lp, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %outp, %struct.gs_fixed_point_s** %outp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %np, %struct.gs_fixed_point_s** %np.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %mpt, %struct.gs_fixed_point_s** %mpt.addr, align 8, !tbaa !1
  store i32 %ccw0, i32* %ccw0.addr, align 4, !tbaa !34
  %0 = bitcast float* %check to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  %miter_check = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %1, i32 0, i32 7
  %2 = load float, float* %miter_check, align 4, !tbaa !161
  store float %2, float* %check, align 4, !tbaa !54
  %3 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !123
  %conv = sitofp i32 %5 to double
  store double %conv, double* %u1, align 8, !tbaa !30
  %6 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector1, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !122
  %conv2 = sitofp i32 %8 to double
  store double %conv2, double* %v1, align 8, !tbaa !30
  %9 = bitcast double* %u2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector3, i32 0, i32 1
  %11 = load i32, i32* %y4, align 4, !tbaa !123
  %sub = sub nsw i32 0, %11
  %conv5 = sitofp i32 %sub to double
  store double %conv5, double* %u2, align 8, !tbaa !30
  %12 = bitcast double* %v2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 3
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector6, i32 0, i32 0
  %14 = load i32, i32* %x7, align 4, !tbaa !122
  %sub8 = sub nsw i32 0, %14
  %conv9 = sitofp i32 %sub8 to double
  store double %conv9, double* %v2, align 8, !tbaa !30
  %15 = bitcast double* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast double* %denom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %18, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %19 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load double, double* %v1, align 8, !tbaa !30
  %21 = load double, double* %u1, align 8, !tbaa !30
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_distance_transform_inverse(double %20, double %21, %struct.gs_matrix_s* %22, %struct.gs_point_s* %pt) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %23 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %24 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %25 = load double, double* %x12, align 8, !tbaa !129
  store double %25, double* %v1, align 8, !tbaa !30
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %26 = load double, double* %y13, align 8, !tbaa !130
  store double %26, double* %u1, align 8, !tbaa !30
  %27 = load double, double* %v2, align 8, !tbaa !30
  %28 = load double, double* %u2, align 8, !tbaa !30
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call14 = call i32 @gs_distance_transform_inverse(double %27, double %28, %struct.gs_matrix_s* %29, %struct.gs_point_s* %pt) #6
  store i32 %call14, i32* %code, align 4, !tbaa !34
  %30 = load i32, i32* %code, align 4, !tbaa !34
  %cmp15 = icmp slt i32 %30, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %31 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %32 = load double, double* %x19, align 8, !tbaa !129
  store double %32, double* %v2, align 8, !tbaa !30
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %33 = load double, double* %y20, align 8, !tbaa !130
  store double %33, double* %u2, align 8, !tbaa !30
  %34 = load double, double* %v1, align 8, !tbaa !30
  %35 = load double, double* %u2, align 8, !tbaa !30
  %mul = fmul double %34, %35
  %36 = load double, double* %v2, align 8, !tbaa !30
  %37 = load double, double* %u1, align 8, !tbaa !30
  %mul21 = fmul double %36, %37
  %cmp22 = fcmp olt double %mul, %mul21
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %ccw0.addr, align 4, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.11
  %38 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.190 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %entry
  %39 = load double, double* %u1, align 8, !tbaa !30
  %40 = load double, double* %v2, align 8, !tbaa !30
  %mul25 = fmul double %39, %40
  %41 = load double, double* %u2, align 8, !tbaa !30
  %42 = load double, double* %v1, align 8, !tbaa !30
  %mul26 = fmul double %41, %42
  %sub27 = fsub double %mul25, %mul26
  store double %sub27, double* %num, align 8, !tbaa !30
  %43 = load double, double* %u1, align 8, !tbaa !30
  %44 = load double, double* %u2, align 8, !tbaa !30
  %mul28 = fmul double %43, %44
  %45 = load double, double* %v1, align 8, !tbaa !30
  %46 = load double, double* %v2, align 8, !tbaa !30
  %mul29 = fmul double %45, %46
  %add = fadd double %mul28, %mul29
  store double %add, double* %denom, align 8, !tbaa !30
  %47 = load i32, i32* %ccw0.addr, align 4, !tbaa !34
  %tobool30 = icmp ne i32 %47, 0
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.24
  %48 = load double, double* %num, align 8, !tbaa !30
  %sub32 = fsub double -0.000000e+00, %48
  store double %sub32, double* %num, align 8, !tbaa !30
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.24
  %49 = load double, double* %num, align 8, !tbaa !30
  %cmp34 = fcmp oeq double %49, 0.000000e+00
  br i1 %cmp34, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.33
  %50 = load double, double* %denom, align 8, !tbaa !30
  %cmp36 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

if.end.39:                                        ; preds = %land.lhs.true, %if.end.33
  %51 = load double, double* %denom, align 8, !tbaa !30
  %cmp40 = fcmp olt double %51, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.39
  %52 = load double, double* %num, align 8, !tbaa !30
  %sub43 = fsub double -0.000000e+00, %52
  store double %sub43, double* %num, align 8, !tbaa !30
  %53 = load double, double* %denom, align 8, !tbaa !30
  %sub44 = fsub double -0.000000e+00, %53
  store double %sub44, double* %denom, align 8, !tbaa !30
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.39
  %54 = load float, float* %check, align 4, !tbaa !54
  %cmp46 = fcmp ogt float %54, 0.000000e+00
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %55 = load double, double* %num, align 8, !tbaa !30
  %cmp48 = fcmp olt double %55, 0.000000e+00
  br i1 %cmp48, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.true
  %56 = load double, double* %num, align 8, !tbaa !30
  %57 = load double, double* %denom, align 8, !tbaa !30
  %58 = load float, float* %check, align 4, !tbaa !54
  %conv50 = fpext float %58 to double
  %mul51 = fmul double %57, %conv50
  %cmp52 = fcmp oge double %56, %mul51
  br i1 %cmp52, label %if.then.61, label %if.end.189

cond.false:                                       ; preds = %if.end.45
  %59 = load double, double* %num, align 8, !tbaa !30
  %cmp54 = fcmp olt double %59, 0.000000e+00
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.189

land.lhs.true.56:                                 ; preds = %cond.false
  %60 = load double, double* %num, align 8, !tbaa !30
  %61 = load double, double* %denom, align 8, !tbaa !30
  %62 = load float, float* %check, align 4, !tbaa !54
  %conv57 = fpext float %62 to double
  %mul58 = fmul double %61, %conv57
  %cmp59 = fcmp oge double %60, %mul58
  br i1 %cmp59, label %if.then.61, label %if.end.189

if.then.61:                                       ; preds = %land.lhs.true.56, %lor.lhs.false, %cond.true
  %63 = bitcast %struct.gs_fixed_point_s* %dirn1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_fixed_point_s* %dirn2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %65, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 3
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %66 = load i32, i32* %x62, align 4, !tbaa !125
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 0
  store i32 %66, i32* %x63, align 4, !tbaa !39
  %67 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e64 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %67, i32 0, i32 1
  %cdelta65 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e64, i32 0, i32 3
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta65, i32 0, i32 1
  %68 = load i32, i32* %y66, align 4, !tbaa !124
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 1
  store i32 %68, i32* %y67, align 4, !tbaa !38
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 0
  %69 = load i32, i32* %x68, align 4, !tbaa !39
  %call69 = call i32 @abs(i32 %69) #5
  %y70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 1
  %70 = load i32, i32* %y70, align 4, !tbaa !38
  %call71 = call i32 @abs(i32 %70) #5
  %add72 = add nsw i32 %call69, %call71
  %cmp73 = icmp slt i32 %add72, 16
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.117

land.lhs.true.75:                                 ; preds = %if.then.61
  %71 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector76 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %71, i32 0, i32 3
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector76, i32 0, i32 0
  %72 = load i32, i32* %x77, align 4, !tbaa !122
  %cmp78 = icmp ne i32 %72, 0
  br i1 %cmp78, label %if.then.85, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.75
  %73 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector81 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %73, i32 0, i32 3
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector81, i32 0, i32 1
  %74 = load i32, i32* %y82, align 4, !tbaa !123
  %cmp83 = icmp ne i32 %74, 0
  br i1 %cmp83, label %if.then.85, label %if.end.117

if.then.85:                                       ; preds = %lor.lhs.false.80, %land.lhs.true.75
  %75 = bitcast float* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store float 6.553600e+04, float* %scale, align 4, !tbaa !54
  %76 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector86 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %76, i32 0, i32 3
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector86, i32 0, i32 0
  %77 = load i32, i32* %x87, align 4, !tbaa !122
  %call88 = call i32 @abs(i32 %77) #5
  %78 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector89 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %78, i32 0, i32 3
  %y90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector89, i32 0, i32 1
  %79 = load i32, i32* %y90, align 4, !tbaa !123
  %call91 = call i32 @abs(i32 %79) #5
  %cmp92 = icmp sgt i32 %call88, %call91
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %if.then.85
  %80 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector95 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %80, i32 0, i32 3
  %x96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector95, i32 0, i32 0
  %81 = load i32, i32* %x96, align 4, !tbaa !122
  %call97 = call i32 @abs(i32 %81) #5
  %conv98 = sitofp i32 %call97 to float
  %82 = load float, float* %scale, align 4, !tbaa !54
  %div = fdiv float %82, %conv98
  store float %div, float* %scale, align 4, !tbaa !54
  br label %if.end.104

if.else:                                          ; preds = %if.then.85
  %83 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector99 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %83, i32 0, i32 3
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector99, i32 0, i32 1
  %84 = load i32, i32* %y100, align 4, !tbaa !123
  %call101 = call i32 @abs(i32 %84) #5
  %conv102 = sitofp i32 %call101 to float
  %85 = load float, float* %scale, align 4, !tbaa !54
  %div103 = fdiv float %85, %conv102
  store float %div103, float* %scale, align 4, !tbaa !54
  br label %if.end.104

if.end.104:                                       ; preds = %if.else, %if.then.94
  %86 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %86, i32 0, i32 3
  %x106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector105, i32 0, i32 0
  %87 = load i32, i32* %x106, align 4, !tbaa !122
  %conv107 = sitofp i32 %87 to float
  %88 = load float, float* %scale, align 4, !tbaa !54
  %mul108 = fmul float %conv107, %88
  %conv109 = fptosi float %mul108 to i32
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 0
  store i32 %conv109, i32* %x110, align 4, !tbaa !39
  %89 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %vector111 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %89, i32 0, i32 3
  %y112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector111, i32 0, i32 1
  %90 = load i32, i32* %y112, align 4, !tbaa !123
  %conv113 = sitofp i32 %90 to float
  %91 = load float, float* %scale, align 4, !tbaa !54
  %mul114 = fmul float %conv113, %91
  %conv115 = fptosi float %mul114 to i32
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 1
  store i32 %conv115, i32* %y116, align 4, !tbaa !38
  %92 = bitcast float* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.104, %lor.lhs.false.80, %if.then.61
  %93 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %93, i32 0, i32 0
  %cdelta118 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 3
  %x119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta118, i32 0, i32 0
  %94 = load i32, i32* %x119, align 4, !tbaa !151
  %x120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 0
  store i32 %94, i32* %x120, align 4, !tbaa !39
  %95 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o121 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %95, i32 0, i32 0
  %cdelta122 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o121, i32 0, i32 3
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta122, i32 0, i32 1
  %96 = load i32, i32* %y123, align 4, !tbaa !152
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 1
  store i32 %96, i32* %y124, align 4, !tbaa !38
  %x125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 0
  %97 = load i32, i32* %x125, align 4, !tbaa !39
  %call126 = call i32 @abs(i32 %97) #5
  %y127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 1
  %98 = load i32, i32* %y127, align 4, !tbaa !38
  %call128 = call i32 @abs(i32 %98) #5
  %add129 = add nsw i32 %call126, %call128
  %cmp130 = icmp slt i32 %add129, 16
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.179

land.lhs.true.132:                                ; preds = %if.end.117
  %99 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector133 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %99, i32 0, i32 3
  %x134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector133, i32 0, i32 0
  %100 = load i32, i32* %x134, align 4, !tbaa !122
  %cmp135 = icmp ne i32 %100, 0
  br i1 %cmp135, label %if.then.142, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.lhs.true.132
  %101 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector138 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %101, i32 0, i32 3
  %y139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector138, i32 0, i32 1
  %102 = load i32, i32* %y139, align 4, !tbaa !123
  %cmp140 = icmp ne i32 %102, 0
  br i1 %cmp140, label %if.then.142, label %if.end.179

if.then.142:                                      ; preds = %lor.lhs.false.137, %land.lhs.true.132
  %103 = bitcast float* %scale143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store float 6.553600e+04, float* %scale143, align 4, !tbaa !54
  %104 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector144 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %104, i32 0, i32 3
  %x145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector144, i32 0, i32 0
  %105 = load i32, i32* %x145, align 4, !tbaa !122
  %call146 = call i32 @abs(i32 %105) #5
  %106 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector147 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %106, i32 0, i32 3
  %y148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector147, i32 0, i32 1
  %107 = load i32, i32* %y148, align 4, !tbaa !123
  %call149 = call i32 @abs(i32 %107) #5
  %cmp150 = icmp sgt i32 %call146, %call149
  br i1 %cmp150, label %if.then.152, label %if.else.158

if.then.152:                                      ; preds = %if.then.142
  %108 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector153 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %108, i32 0, i32 3
  %x154 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector153, i32 0, i32 0
  %109 = load i32, i32* %x154, align 4, !tbaa !122
  %call155 = call i32 @abs(i32 %109) #5
  %conv156 = sitofp i32 %call155 to float
  %110 = load float, float* %scale143, align 4, !tbaa !54
  %div157 = fdiv float %110, %conv156
  store float %div157, float* %scale143, align 4, !tbaa !54
  br label %if.end.164

if.else.158:                                      ; preds = %if.then.142
  %111 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector159 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %111, i32 0, i32 3
  %y160 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector159, i32 0, i32 1
  %112 = load i32, i32* %y160, align 4, !tbaa !123
  %call161 = call i32 @abs(i32 %112) #5
  %conv162 = sitofp i32 %call161 to float
  %113 = load float, float* %scale143, align 4, !tbaa !54
  %div163 = fdiv float %113, %conv162
  store float %div163, float* %scale143, align 4, !tbaa !54
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.158, %if.then.152
  %114 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector165 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %114, i32 0, i32 3
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector165, i32 0, i32 0
  %115 = load i32, i32* %x166, align 4, !tbaa !122
  %sub167 = sub nsw i32 0, %115
  %conv168 = sitofp i32 %sub167 to float
  %116 = load float, float* %scale143, align 4, !tbaa !54
  %mul169 = fmul float %conv168, %116
  %conv170 = fptosi float %mul169 to i32
  %x171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 0
  store i32 %conv170, i32* %x171, align 4, !tbaa !39
  %117 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %vector172 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %117, i32 0, i32 3
  %y173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vector172, i32 0, i32 1
  %118 = load i32, i32* %y173, align 4, !tbaa !123
  %sub174 = sub nsw i32 0, %118
  %conv175 = sitofp i32 %sub174 to float
  %119 = load float, float* %scale143, align 4, !tbaa !54
  %mul176 = fmul float %conv175, %119
  %conv177 = fptosi float %mul176 to i32
  %y178 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 1
  store i32 %conv177, i32* %y178, align 4, !tbaa !38
  %120 = bitcast float* %scale143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.164, %lor.lhs.false.137, %if.end.117
  br label %do.body

do.body:                                          ; preds = %if.end.179
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %121 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %outp.addr, align 8, !tbaa !1
  %122 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %np.addr, align 8, !tbaa !1
  %123 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %mpt.addr, align 8, !tbaa !1
  %call180 = call i32 @line_intersect(%struct.gs_fixed_point_s* %121, %struct.gs_fixed_point_s* %dirn1, %struct.gs_fixed_point_s* %122, %struct.gs_fixed_point_s* %dirn2, %struct.gs_fixed_point_s* %123) #6
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.184:                                       ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %if.end.184, %if.then.183
  %124 = bitcast %struct.gs_fixed_point_s* %dirn2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.gs_fixed_point_s* %dirn1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %cleanup.dest.187 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.187, label %cleanup.190 [
    i32 0, label %cleanup.cont.188
  ]

cleanup.cont.188:                                 ; preds = %cleanup.185
  br label %if.end.189

if.end.189:                                       ; preds = %cleanup.cont.188, %land.lhs.true.56, %cond.false, %lor.lhs.false
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.190

cleanup.190:                                      ; preds = %if.end.189, %cleanup.185, %if.then.38, %cleanup
  %126 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast double* %denom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast double* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast double* %v2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast double* %u2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast float* %check to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #3

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @line_intersect(%struct.gs_fixed_point_s* %pp1, %struct.gs_fixed_point_s* %pd1, %struct.gs_fixed_point_s* %pp2, %struct.gs_fixed_point_s* %pd2, %struct.gs_fixed_point_s* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pp1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pd1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pp2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pd2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pi.addr = alloca %struct.gs_fixed_point_s*, align 8
  %u1 = alloca double, align 8
  %v1 = alloca double, align 8
  %u2 = alloca double, align 8
  %v2 = alloca double, align 8
  %denom = alloca double, align 8
  %xdiff = alloca double, align 8
  %ydiff = alloca double, align 8
  %f1 = alloca double, align 8
  %max_result = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fixed_point_s* %pp1, %struct.gs_fixed_point_s** %pp1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pd1, %struct.gs_fixed_point_s** %pd1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pp2, %struct.gs_fixed_point_s** %pp2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pd2, %struct.gs_fixed_point_s** %pd2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %pi, %struct.gs_fixed_point_s** %pi.addr, align 8, !tbaa !1
  %0 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd1.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !39
  %conv = sitofp i32 %2 to double
  store double %conv, double* %u1, align 8, !tbaa !30
  %3 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd1.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !38
  %conv1 = sitofp i32 %5 to double
  store double %conv1, double* %v1, align 8, !tbaa !30
  %6 = bitcast double* %u2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd2.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4, !tbaa !39
  %conv3 = sitofp i32 %8 to double
  store double %conv3, double* %u2, align 8, !tbaa !30
  %9 = bitcast double* %v2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pd2.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 1
  %11 = load i32, i32* %y4, align 4, !tbaa !38
  %conv5 = sitofp i32 %11 to double
  store double %conv5, double* %v2, align 8, !tbaa !30
  %12 = bitcast double* %denom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load double, double* %u1, align 8, !tbaa !30
  %14 = load double, double* %v2, align 8, !tbaa !30
  %mul = fmul double %13, %14
  %15 = load double, double* %u2, align 8, !tbaa !30
  %16 = load double, double* %v1, align 8, !tbaa !30
  %mul6 = fmul double %15, %16
  %sub = fsub double %mul, %mul6
  store double %sub, double* %denom, align 8, !tbaa !30
  %17 = bitcast double* %xdiff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp2.addr, align 8, !tbaa !1
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %19 = load i32, i32* %x7, align 4, !tbaa !39
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 0
  %21 = load i32, i32* %x8, align 4, !tbaa !39
  %sub9 = sub nsw i32 %19, %21
  %conv10 = sitofp i32 %sub9 to double
  store double %conv10, double* %xdiff, align 8, !tbaa !30
  %22 = bitcast double* %ydiff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp2.addr, align 8, !tbaa !1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i32 0, i32 1
  %24 = load i32, i32* %y11, align 4, !tbaa !38
  %25 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8, !tbaa !1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %25, i32 0, i32 1
  %26 = load i32, i32* %y12, align 4, !tbaa !38
  %sub13 = sub nsw i32 %24, %26
  %conv14 = sitofp i32 %sub13 to double
  store double %conv14, double* %ydiff, align 8, !tbaa !30
  %27 = bitcast double* %f1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast double* %max_result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load double, double* %denom, align 8, !tbaa !30
  %cmp = fcmp olt double %29, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %30 = load double, double* %denom, align 8, !tbaa !30
  %sub16 = fsub double -0.000000e+00, %30
  br label %cond.end

cond.false:                                       ; preds = %entry
  %31 = load double, double* %denom, align 8, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub16, %cond.true ], [ %31, %cond.false ]
  %mul17 = fmul double %cond, 0x41DFFFFFFFC00000
  store double %mul17, double* %max_result, align 8, !tbaa !30
  %32 = load double, double* %xdiff, align 8, !tbaa !30
  %cmp18 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp18, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.end
  %33 = load double, double* %xdiff, align 8, !tbaa !30
  %sub21 = fsub double -0.000000e+00, %33
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  %34 = load double, double* %xdiff, align 8, !tbaa !30
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi double [ %sub21, %cond.true.20 ], [ %34, %cond.false.22 ]
  %35 = load double, double* %max_result, align 8, !tbaa !30
  %cmp25 = fcmp oge double %cond24, %35
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.23
  %36 = load double, double* %ydiff, align 8, !tbaa !30
  %cmp27 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %lor.lhs.false
  %37 = load double, double* %ydiff, align 8, !tbaa !30
  %sub30 = fsub double -0.000000e+00, %37
  br label %cond.end.32

cond.false.31:                                    ; preds = %lor.lhs.false
  %38 = load double, double* %ydiff, align 8, !tbaa !30
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi double [ %sub30, %cond.true.29 ], [ %38, %cond.false.31 ]
  %39 = load double, double* %max_result, align 8, !tbaa !30
  %cmp34 = fcmp oge double %cond33, %39
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.32, %cond.end.23
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.32
  %40 = load double, double* %v2, align 8, !tbaa !30
  %41 = load double, double* %xdiff, align 8, !tbaa !30
  %mul36 = fmul double %40, %41
  %42 = load double, double* %u2, align 8, !tbaa !30
  %43 = load double, double* %ydiff, align 8, !tbaa !30
  %mul37 = fmul double %42, %43
  %sub38 = fsub double %mul36, %mul37
  %44 = load double, double* %denom, align 8, !tbaa !30
  %div = fdiv double %sub38, %44
  store double %div, double* %f1, align 8, !tbaa !30
  %45 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8, !tbaa !1
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %45, i32 0, i32 0
  %46 = load i32, i32* %x39, align 4, !tbaa !39
  %47 = load double, double* %f1, align 8, !tbaa !30
  %48 = load double, double* %u1, align 8, !tbaa !30
  %mul40 = fmul double %47, %48
  %conv41 = fptosi double %mul40 to i32
  %add = add nsw i32 %46, %conv41
  %49 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pi.addr, align 8, !tbaa !1
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %49, i32 0, i32 0
  store i32 %add, i32* %x42, align 4, !tbaa !39
  %50 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pp1.addr, align 8, !tbaa !1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %50, i32 0, i32 1
  %51 = load i32, i32* %y43, align 4, !tbaa !38
  %52 = load double, double* %f1, align 8, !tbaa !30
  %53 = load double, double* %v1, align 8, !tbaa !30
  %mul44 = fmul double %52, %53
  %conv45 = fptosi double %mul44 to i32
  %add46 = add nsw i32 %51, %conv45
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pi.addr, align 8, !tbaa !1
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i32 0, i32 1
  store i32 %add46, i32* %y47, align 4, !tbaa !38
  br label %do.body.48

do.body.48:                                       ; preds = %if.end
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %55 = load double, double* %f1, align 8, !tbaa !30
  %cmp51 = fcmp oge double %55, 0.000000e+00
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end.50
  %56 = load double, double* %v1, align 8, !tbaa !30
  %57 = load double, double* %xdiff, align 8, !tbaa !30
  %mul53 = fmul double %56, %57
  %58 = load double, double* %u1, align 8, !tbaa !30
  %59 = load double, double* %ydiff, align 8, !tbaa !30
  %mul54 = fmul double %58, %59
  %cmp55 = fcmp oge double %mul53, %mul54
  br i1 %cmp55, label %cond.true.57, label %cond.false.60

cond.true.57:                                     ; preds = %land.rhs
  %60 = load double, double* %denom, align 8, !tbaa !30
  %cmp58 = fcmp oge double %60, 0.000000e+00
  %conv59 = zext i1 %cmp58 to i32
  br label %cond.end.63

cond.false.60:                                    ; preds = %land.rhs
  %61 = load double, double* %denom, align 8, !tbaa !30
  %cmp61 = fcmp olt double %61, 0.000000e+00
  %conv62 = zext i1 %cmp61 to i32
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.57
  %cond64 = phi i32 [ %conv59, %cond.true.57 ], [ %conv62, %cond.false.60 ]
  %tobool = icmp ne i32 %cond64, 0
  br label %land.end

land.end:                                         ; preds = %cond.end.63, %do.end.50
  %62 = phi i1 [ false, %do.end.50 ], [ %tobool, %cond.end.63 ]
  %cond65 = select i1 %62, i32 0, i32 1
  store i32 %cond65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %do.end
  %63 = bitcast double* %max_result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast double* %f1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast double* %ydiff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast double* %xdiff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast double* %denom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast double* %v2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast double* %u2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast double* %u1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #3

declare i32 @gx_path_add_lines_notes(%struct.gx_path_s*, %struct.gs_fixed_point_s*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @set_thin_widths(%struct.partial_line_s* %plp) #0 {
entry:
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %1, i32 0, i32 1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !114
  %3 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %3, i32 0, i32 0
  %p1 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %4 = load i32, i32* %x2, align 4, !tbaa !109
  %sub = sub nsw i32 %2, %4
  store i32 %sub, i32* %dx, align 4, !tbaa !34
  %5 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 1
  %p4 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !115
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o5, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  %9 = load i32, i32* %y7, align 4, !tbaa !112
  %sub8 = sub nsw i32 %7, %9
  store i32 %sub8, i32* %dy, align 4, !tbaa !34
  %10 = load i32, i32* %dx, align 4, !tbaa !34
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %dx, align 4, !tbaa !34
  %sub9 = sub nsw i32 0, %11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %dx, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ %12, %cond.false ]
  %13 = load i32, i32* %dy, align 4, !tbaa !34
  %cmp10 = icmp slt i32 %13, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end
  %14 = load i32, i32* %dy, align 4, !tbaa !34
  %sub12 = sub nsw i32 0, %14
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  %15 = load i32, i32* %dy, align 4, !tbaa !34
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %sub12, %cond.true.11 ], [ %15, %cond.false.13 ]
  %cmp16 = icmp sgt i32 %cond, %cond15
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  %16 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e17 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %16, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e17, i32 0, i32 3
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 1
  store i32 0, i32* %y18, align 4, !tbaa !124
  %17 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %17, i32 0, i32 2
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  store i32 0, i32* %x19, align 4, !tbaa !127
  %18 = load i32, i32* %dx, align 4, !tbaa !34
  %cmp20 = icmp sge i32 %18, 0
  %cond21 = select i1 %cmp20, i64 128, i64 -128
  %conv = trunc i64 %cond21 to i32
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e22 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 1
  %cdelta23 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e22, i32 0, i32 3
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta23, i32 0, i32 0
  store i32 %conv, i32* %x24, align 4, !tbaa !125
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %20, i32 0, i32 2
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width25, i32 0, i32 1
  store i32 %conv, i32* %y26, align 4, !tbaa !126
  br label %if.end

if.else:                                          ; preds = %cond.end.14
  %21 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e27 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %21, i32 0, i32 1
  %cdelta28 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e27, i32 0, i32 3
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta28, i32 0, i32 0
  store i32 0, i32* %x29, align 4, !tbaa !125
  %22 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width30 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %22, i32 0, i32 2
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width30, i32 0, i32 1
  store i32 0, i32* %y31, align 4, !tbaa !126
  %23 = load i32, i32* %dy, align 4, !tbaa !34
  %cmp32 = icmp sge i32 %23, 0
  %cond34 = select i1 %cmp32, i64 128, i64 -128
  %conv35 = trunc i64 %cond34 to i32
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 1
  %cdelta37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e36, i32 0, i32 3
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta37, i32 0, i32 1
  store i32 %conv35, i32* %y38, align 4, !tbaa !124
  %sub39 = sub nsw i32 0, %conv35
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width40 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 2
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width40, i32 0, i32 0
  store i32 %sub39, i32* %x41, align 4, !tbaa !127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @add_pie_cap(%struct.gx_path_s* %ppath, %struct.endpoint_s* %endp) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %endp.addr = alloca %struct.endpoint_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.endpoint_s* %endp, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %2 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !159
  %4 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %4, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4, !tbaa !157
  %add = add nsw i32 %3, %5
  %6 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !160
  %8 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %8, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta3, i32 0, i32 1
  %9 = load i32, i32* %y4, align 4, !tbaa !158
  %add5 = add nsw i32 %7, %9
  %10 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %10, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %11 = load i32, i32* %x6, align 4, !tbaa !153
  %12 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta7 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %12, i32 0, i32 3
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta7, i32 0, i32 0
  %13 = load i32, i32* %x8, align 4, !tbaa !157
  %add9 = add nsw i32 %11, %13
  %14 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %14, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co10, i32 0, i32 1
  %15 = load i32, i32* %y11, align 4, !tbaa !154
  %16 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta12 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %16, i32 0, i32 3
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta12, i32 0, i32 1
  %17 = load i32, i32* %y13, align 4, !tbaa !158
  %add14 = add nsw i32 %15, %17
  %call = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %1, i32 %add, i32 %add5, i32 %add9, i32 %add14, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %19 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %19, i32 0, i32 2
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %20 = load i32, i32* %x15, align 4, !tbaa !155
  %21 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce16 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %21, i32 0, i32 2
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce16, i32 0, i32 1
  %22 = load i32, i32* %y17, align 4, !tbaa !156
  %23 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce18 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %23, i32 0, i32 2
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce18, i32 0, i32 0
  %24 = load i32, i32* %x19, align 4, !tbaa !155
  %25 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %25, i32 0, i32 3
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta20, i32 0, i32 0
  %26 = load i32, i32* %x21, align 4, !tbaa !157
  %add22 = add nsw i32 %24, %26
  %27 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce23 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %27, i32 0, i32 2
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce23, i32 0, i32 1
  %28 = load i32, i32* %y24, align 4, !tbaa !156
  %29 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta25 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %29, i32 0, i32 3
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta25, i32 0, i32 1
  %30 = load i32, i32* %y26, align 4, !tbaa !158
  %add27 = add nsw i32 %28, %30
  %call28 = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %18, i32 %20, i32 %22, i32 %add22, i32 %add27, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call28, i32* %code, align 4, !tbaa !34
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %32 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %32, i32 0, i32 2
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce31, i32 0, i32 0
  %33 = load i32, i32* %x32, align 4, !tbaa !155
  %34 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce33 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %34, i32 0, i32 2
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce33, i32 0, i32 1
  %35 = load i32, i32* %y34, align 4, !tbaa !156
  %call35 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %31, i32 %33, i32 %35, i32 0) #6
  store i32 %call35, i32* %code, align 4, !tbaa !34
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.30, %lor.lhs.false, %entry
  %36 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.30
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
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @add_pie_join(%struct.gx_path_s* %ppath, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, i32 %reflected, i32 %cap) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %reflected.addr = alloca i32, align 4
  %cap.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %current = alloca %struct.gs_fixed_point_s*, align 8
  %final = alloca %struct.gs_fixed_point_s*, align 8
  %tangent = alloca %struct.gs_fixed_point_s*, align 8
  %final_tangent = alloca %struct.gs_fixed_point_s*, align 8
  %l = alloca double, align 8
  %r = alloca double, align 8
  %ccw = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  store i32 %cap, i32* %cap.addr, align 4, !tbaa !34
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_point_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_fixed_point_s** %final to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_fixed_point_s** %tangent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_fixed_point_s** %final_tangent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !127
  %conv = sitofp i32 %9 to double
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !126
  %conv2 = sitofp i32 %11 to double
  %mul = fmul double %conv, %conv2
  store double %mul, double* %l, align 8, !tbaa !30
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 2
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width3, i32 0, i32 0
  %13 = load i32, i32* %x4, align 4, !tbaa !127
  %conv5 = sitofp i32 %13 to double
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %14, i32 0, i32 2
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width6, i32 0, i32 1
  %15 = load i32, i32* %y7, align 4, !tbaa !126
  %conv8 = sitofp i32 %15 to double
  %mul9 = fmul double %conv5, %conv8
  store double %mul9, double* %r, align 8, !tbaa !30
  %16 = load double, double* %l, align 8, !tbaa !30
  %17 = load double, double* %r, align 8, !tbaa !30
  %cmp = fcmp oeq double %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %cap.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %20 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %20, i32 0, i32 1
  %call = call i32 @add_pie_cap(%struct.gx_path_s* %19, %struct.endpoint_s* %e) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %22 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e12 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %22, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e12, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %23 = load i32, i32* %x13, align 4, !tbaa !142
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 1
  %ce15 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e14, i32 0, i32 2
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce15, i32 0, i32 1
  %25 = load i32, i32* %y16, align 4, !tbaa !143
  %call17 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %21, i32 %23, i32 %25, i32 0) #6
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load double, double* %l, align 8, !tbaa !30
  %27 = load double, double* %r, align 8, !tbaa !30
  %cmp18 = fcmp ogt double %26, %27
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %ccw, align 4, !tbaa !34
  %28 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %29 = load i32, i32* %ccw, align 4, !tbaa !34
  %xor = xor i32 %29, %28
  store i32 %xor, i32* %ccw, align 4, !tbaa !34
  %30 = load i32, i32* %ccw, align 4, !tbaa !34
  %tobool20 = icmp ne i32 %30, 0
  br i1 %tobool20, label %if.then.21, label %if.else.44

if.then.21:                                       ; preds = %if.end
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e22 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e22, i32 0, i32 1
  store %struct.gs_fixed_point_s* %co, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 0
  %ce23 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 2
  store %struct.gs_fixed_point_s* %ce23, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %33 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e24 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %33, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e24, i32 0, i32 3
  store %struct.gs_fixed_point_s* %cdelta, %struct.gs_fixed_point_s** %tangent, align 8, !tbaa !1
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o25 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %34, i32 0, i32 0
  %cdelta26 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o25, i32 0, i32 3
  store %struct.gs_fixed_point_s* %cdelta26, %struct.gs_fixed_point_s** %final_tangent, align 8, !tbaa !1
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i32 0, i32 0
  %36 = load i32, i32* %x27, align 4, !tbaa !39
  %37 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %37, i32 0, i32 0
  %38 = load i32, i32* %x28, align 4, !tbaa !39
  %cmp29 = icmp eq i32 %36, %38
  br i1 %cmp29, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.21
  %39 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %39, i32 0, i32 1
  %40 = load i32, i32* %y31, align 4, !tbaa !38
  %41 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %41, i32 0, i32 1
  %42 = load i32, i32* %y32, align 4, !tbaa !38
  %cmp33 = icmp eq i32 %40, %42
  br i1 %cmp33, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %land.lhs.true
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 1
  %ce37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e36, i32 0, i32 2
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce37, i32 0, i32 0
  %45 = load i32, i32* %x38, align 4, !tbaa !142
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e39 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %46, i32 0, i32 1
  %ce40 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e39, i32 0, i32 2
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce40, i32 0, i32 1
  %47 = load i32, i32* %y41, align 4, !tbaa !143
  %call42 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %43, i32 %45, i32 %47, i32 0) #6
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %land.lhs.true, %if.then.21
  br label %if.end.81

if.else.44:                                       ; preds = %if.end
  %48 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o45 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %48, i32 0, i32 0
  %co46 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o45, i32 0, i32 1
  store %struct.gs_fixed_point_s* %co46, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %49 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e47 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %49, i32 0, i32 1
  %ce48 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e47, i32 0, i32 2
  store %struct.gs_fixed_point_s* %ce48, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %50 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o49 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %50, i32 0, i32 0
  %cdelta50 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o49, i32 0, i32 3
  store %struct.gs_fixed_point_s* %cdelta50, %struct.gs_fixed_point_s** %tangent, align 8, !tbaa !1
  %51 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e51 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %51, i32 0, i32 1
  %cdelta52 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e51, i32 0, i32 3
  store %struct.gs_fixed_point_s* %cdelta52, %struct.gs_fixed_point_s** %final_tangent, align 8, !tbaa !1
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %53 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e53 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %53, i32 0, i32 1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e53, i32 0, i32 0
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %54 = load i32, i32* %x54, align 4, !tbaa !114
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e55 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 1
  %p56 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e55, i32 0, i32 0
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p56, i32 0, i32 1
  %56 = load i32, i32* %y57, align 4, !tbaa !115
  %call58 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %52, i32 %54, i32 %56, i32 0) #6
  store i32 %call58, i32* %code, align 4, !tbaa !34
  %57 = load i32, i32* %code, align 4, !tbaa !34
  %cmp59 = icmp slt i32 %57, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.44
  %58 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.else.44
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %60, i32 0, i32 0
  %61 = load i32, i32* %x63, align 4, !tbaa !39
  %62 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %62, i32 0, i32 1
  %63 = load i32, i32* %y64, align 4, !tbaa !38
  %call65 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %59, i32 %61, i32 %63, i32 0) #6
  store i32 %call65, i32* %code, align 4, !tbaa !34
  %64 = load i32, i32* %code, align 4, !tbaa !34
  %cmp66 = icmp slt i32 %64, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.62
  %65 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.end.62
  %66 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %66, i32 0, i32 0
  %67 = load i32, i32* %x70, align 4, !tbaa !39
  %68 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %68, i32 0, i32 0
  %69 = load i32, i32* %x71, align 4, !tbaa !39
  %cmp72 = icmp eq i32 %67, %69
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.80

land.lhs.true.74:                                 ; preds = %if.end.69
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %y75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %70, i32 0, i32 1
  %71 = load i32, i32* %y75, align 4, !tbaa !38
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %y76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 1
  %73 = load i32, i32* %y76, align 4, !tbaa !38
  %cmp77 = icmp eq i32 %71, %73
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %land.lhs.true.74, %if.end.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.43
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %75 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e82 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %75, i32 0, i32 1
  %p83 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e82, i32 0, i32 0
  %76 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current, align 8, !tbaa !1
  %77 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %tangent, align 8, !tbaa !1
  %78 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final, align 8, !tbaa !1
  %79 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final_tangent, align 8, !tbaa !1
  %80 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %tobool84 = icmp ne i32 %80, 0
  %lnot = xor i1 %tobool84, true
  %lnot.ext = zext i1 %lnot to i32
  %81 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width85 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %81, i32 0, i32 2
  %call86 = call i32 @do_pie_join(%struct.gx_path_s* %74, %struct.gs_fixed_point_s* %p83, %struct.gs_fixed_point_s* %76, %struct.gs_fixed_point_s* %77, %struct.gs_fixed_point_s* %78, %struct.gs_fixed_point_s* %79, i32 %lnot.ext, %struct.gs_fixed_point_s* %width85) #6
  store i32 %call86, i32* %code, align 4, !tbaa !34
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.81
  %82 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.81
  %83 = load i32, i32* %ccw, align 4, !tbaa !34
  %tobool91 = icmp ne i32 %83, 0
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.112

land.lhs.true.92:                                 ; preds = %if.end.90
  %84 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %85 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e93 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %85, i32 0, i32 1
  %p94 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e93, i32 0, i32 0
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p94, i32 0, i32 0
  %86 = load i32, i32* %x95, align 4, !tbaa !114
  %87 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e96 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %87, i32 0, i32 1
  %p97 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e96, i32 0, i32 0
  %y98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p97, i32 0, i32 1
  %88 = load i32, i32* %y98, align 4, !tbaa !115
  %call99 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %84, i32 %86, i32 %88, i32 0) #6
  store i32 %call99, i32* %code, align 4, !tbaa !34
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.92
  %89 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %90 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e102 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %90, i32 0, i32 1
  %ce103 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e102, i32 0, i32 2
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce103, i32 0, i32 0
  %91 = load i32, i32* %x104, align 4, !tbaa !142
  %92 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %92, i32 0, i32 1
  %ce106 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e105, i32 0, i32 2
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce106, i32 0, i32 1
  %93 = load i32, i32* %y107, align 4, !tbaa !143
  %call108 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %89, i32 %91, i32 %93, i32 0) #6
  store i32 %call108, i32* %code, align 4, !tbaa !34
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %lor.lhs.false, %land.lhs.true.92
  %94 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.112:                                       ; preds = %lor.lhs.false, %if.end.90
  br label %do.body

do.body:                                          ; preds = %if.end.112
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.111, %if.then.89, %if.then.79, %if.then.68, %if.then.61, %if.then.35, %if.else, %if.then.11
  %95 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gs_fixed_point_s** %final_tangent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.gs_fixed_point_s** %tangent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast %struct.gs_fixed_point_s** %final to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast %struct.gs_fixed_point_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @join_under_pie(%struct.gx_path_s* %ppath, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, i32 %reflected) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %reflected.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %dirn1 = alloca %struct.gs_fixed_point_s, align 4
  %dirn2 = alloca %struct.gs_fixed_point_s, align 4
  %tangmeet = alloca %struct.gs_fixed_point_s, align 4
  %l = alloca double, align 8
  %r = alloca double, align 8
  %ccw = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_point_s* %dirn1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_fixed_point_s* %dirn2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_fixed_point_s* %tangmeet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !127
  %conv = sitofp i32 %8 to double
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %9, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width1, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !126
  %conv2 = sitofp i32 %10 to double
  %mul = fmul double %conv, %conv2
  store double %mul, double* %l, align 8, !tbaa !30
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 2
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width3, i32 0, i32 0
  %12 = load i32, i32* %x4, align 4, !tbaa !127
  %conv5 = sitofp i32 %12 to double
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 2
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width6, i32 0, i32 1
  %14 = load i32, i32* %y7, align 4, !tbaa !126
  %conv8 = sitofp i32 %14 to double
  %mul9 = fmul double %conv5, %conv8
  store double %mul9, double* %r, align 8, !tbaa !30
  %15 = load double, double* %l, align 8, !tbaa !30
  %16 = load double, double* %r, align 8, !tbaa !30
  %cmp = fcmp oeq double %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load double, double* %l, align 8, !tbaa !30
  %18 = load double, double* %r, align 8, !tbaa !30
  %cmp11 = fcmp ogt double %17, %18
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %ccw, align 4, !tbaa !34
  %19 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %20 = load i32, i32* %ccw, align 4, !tbaa !34
  %xor = xor i32 %20, %19
  store i32 %xor, i32* %ccw, align 4, !tbaa !34
  %21 = load i32, i32* %ccw, align 4, !tbaa !34
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %22 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %22, i32 0, i32 2
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width14, i32 0, i32 0
  %23 = load i32, i32* %x15, align 4, !tbaa !127
  %sub = sub nsw i32 0, %23
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 0
  store i32 %sub, i32* %x16, align 4, !tbaa !39
  %24 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %24, i32 0, i32 2
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width17, i32 0, i32 1
  %25 = load i32, i32* %y18, align 4, !tbaa !126
  %sub19 = sub nsw i32 0, %25
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn1, i32 0, i32 1
  store i32 %sub19, i32* %y20, align 4, !tbaa !38
  %26 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width21 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %26, i32 0, i32 2
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width21, i32 0, i32 0
  %27 = load i32, i32* %x22, align 4, !tbaa !127
  %sub23 = sub nsw i32 0, %27
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 0
  store i32 %sub23, i32* %x24, align 4, !tbaa !39
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 2
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width25, i32 0, i32 1
  %29 = load i32, i32* %y26, align 4, !tbaa !126
  %sub27 = sub nsw i32 0, %29
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %dirn2, i32 0, i32 1
  store i32 %sub27, i32* %y28, align 4, !tbaa !38
  %30 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %30, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %31 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %31, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 2
  %call = call i32 @line_intersect(%struct.gs_fixed_point_s* %co, %struct.gs_fixed_point_s* %dirn1, %struct.gs_fixed_point_s* %ce, %struct.gs_fixed_point_s* %dirn2, %struct.gs_fixed_point_s* %tangmeet) #6
  %cmp29 = icmp ne i32 %call, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.13
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call33 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %32, i32 0) #6
  store i32 %call33, i32* %code, align 4, !tbaa !34
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 0
  %34 = load i32, i32* %x36, align 4, !tbaa !39
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 1
  %35 = load i32, i32* %y37, align 4, !tbaa !38
  %call38 = call i32 @gx_path_add_point(%struct.gx_path_s* %33, i32 %34, i32 %35) #6
  store i32 %call38, i32* %code, align 4, !tbaa !34
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.64, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %37 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o42 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %37, i32 0, i32 0
  %co43 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o42, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co43, i32 0, i32 0
  %38 = load i32, i32* %x44, align 4, !tbaa !146
  %39 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o45 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %39, i32 0, i32 0
  %co46 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o45, i32 0, i32 1
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co46, i32 0, i32 1
  %40 = load i32, i32* %y47, align 4, !tbaa !147
  %call48 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %36, i32 %38, i32 %40, i32 0) #6
  store i32 %call48, i32* %code, align 4, !tbaa !34
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.64, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.41
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %42 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e52 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %42, i32 0, i32 1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e52, i32 0, i32 0
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o53 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %43, i32 0, i32 0
  %co54 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o53, i32 0, i32 1
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o55 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %44, i32 0, i32 0
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o55, i32 0, i32 3
  %45 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e56 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %45, i32 0, i32 1
  %ce57 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e56, i32 0, i32 2
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e58 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %46, i32 0, i32 1
  %cdelta59 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e58, i32 0, i32 3
  %47 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %tobool60 = icmp ne i32 %47, 0
  %lnot = xor i1 %tobool60, true
  %lnot.ext = zext i1 %lnot to i32
  %48 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width61 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %48, i32 0, i32 2
  %call62 = call i32 @do_pie_join(%struct.gx_path_s* %41, %struct.gs_fixed_point_s* %p, %struct.gs_fixed_point_s* %co54, %struct.gs_fixed_point_s* %cdelta, %struct.gs_fixed_point_s* %ce57, %struct.gs_fixed_point_s* %cdelta59, i32 %lnot.ext, %struct.gs_fixed_point_s* %width61) #6
  store i32 %call62, i32* %code, align 4, !tbaa !34
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.41, %lor.lhs.false, %if.end.32
  %49 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %lor.lhs.false.51
  br label %if.end.115

if.else:                                          ; preds = %if.end
  %50 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o66 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %50, i32 0, i32 0
  %ce67 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o66, i32 0, i32 2
  %51 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width68 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %51, i32 0, i32 2
  %52 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e69 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %52, i32 0, i32 1
  %co70 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e69, i32 0, i32 1
  %53 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %width71 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %53, i32 0, i32 2
  %call72 = call i32 @line_intersect(%struct.gs_fixed_point_s* %ce67, %struct.gs_fixed_point_s* %width68, %struct.gs_fixed_point_s* %co70, %struct.gs_fixed_point_s* %width71, %struct.gs_fixed_point_s* %tangmeet) #6
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.else
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call77 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %54, i32 0) #6
  store i32 %call77, i32* %code, align 4, !tbaa !34
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.113, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.76
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 0
  %56 = load i32, i32* %x81, align 4, !tbaa !39
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 1
  %57 = load i32, i32* %y82, align 4, !tbaa !38
  %call83 = call i32 @gx_path_add_point(%struct.gx_path_s* %55, i32 %56, i32 %57) #6
  store i32 %call83, i32* %code, align 4, !tbaa !34
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.113, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.80
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %59 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e87 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %59, i32 0, i32 1
  %co88 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e87, i32 0, i32 1
  %x89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co88, i32 0, i32 0
  %60 = load i32, i32* %x89, align 4, !tbaa !140
  %61 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e90 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %61, i32 0, i32 1
  %co91 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e90, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co91, i32 0, i32 1
  %62 = load i32, i32* %y92, align 4, !tbaa !141
  %call93 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %58, i32 %60, i32 %62, i32 0) #6
  store i32 %call93, i32* %code, align 4, !tbaa !34
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then.113, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.86
  %63 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %64 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e97 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %64, i32 0, i32 1
  %p98 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e97, i32 0, i32 0
  %65 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e99 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %65, i32 0, i32 1
  %co100 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e99, i32 0, i32 1
  %66 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %e101 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %66, i32 0, i32 1
  %cdelta102 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e101, i32 0, i32 3
  %67 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o103 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %67, i32 0, i32 0
  %ce104 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o103, i32 0, i32 2
  %68 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o105 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %68, i32 0, i32 0
  %cdelta106 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o105, i32 0, i32 3
  %69 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %tobool107 = icmp ne i32 %69, 0
  %lnot108 = xor i1 %tobool107, true
  %lnot.ext109 = zext i1 %lnot108 to i32
  %70 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width110 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %70, i32 0, i32 2
  %call111 = call i32 @do_pie_join(%struct.gx_path_s* %63, %struct.gs_fixed_point_s* %p98, %struct.gs_fixed_point_s* %co100, %struct.gs_fixed_point_s* %cdelta102, %struct.gs_fixed_point_s* %ce104, %struct.gs_fixed_point_s* %cdelta106, i32 %lnot.ext109, %struct.gs_fixed_point_s* %width110) #6
  store i32 %call111, i32* %code, align 4, !tbaa !34
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %lor.lhs.false.96, %lor.lhs.false.86, %lor.lhs.false.80, %if.end.76
  %71 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %lor.lhs.false.96
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.115, %if.then.113, %if.then.75, %if.then.64, %if.then.31, %if.then
  %72 = bitcast i32* %ccw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_fixed_point_s* %tangmeet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_fixed_point_s* %dirn2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gs_fixed_point_s* %dirn1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s*, i32, i32, i32, i32, double, i32) #3

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @do_pie_join(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %centre, %struct.gs_fixed_point_s* %current_orig, %struct.gs_fixed_point_s* %current_tangent, %struct.gs_fixed_point_s* %final, %struct.gs_fixed_point_s* %final_tangent, i32 %ccw, %struct.gs_fixed_point_s* %width) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %centre.addr = alloca %struct.gs_fixed_point_s*, align 8
  %current_orig.addr = alloca %struct.gs_fixed_point_s*, align 8
  %current_tangent.addr = alloca %struct.gs_fixed_point_s*, align 8
  %final.addr = alloca %struct.gs_fixed_point_s*, align 8
  %final_tangent.addr = alloca %struct.gs_fixed_point_s*, align 8
  %ccw.addr = alloca i32, align 4
  %width.addr = alloca %struct.gs_fixed_point_s*, align 8
  %code = alloca i32, align 4
  %rad_squared = alloca double, align 8
  %dist_squared = alloca double, align 8
  %F = alloca double, align 8
  %current = alloca %struct.gs_fixed_point_s, align 4
  %tangent = alloca %struct.gs_fixed_point_s, align 4
  %tangmeet = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %centre, %struct.gs_fixed_point_s** %centre.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %current_orig, %struct.gs_fixed_point_s** %current_orig.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %current_tangent, %struct.gs_fixed_point_s** %current_tangent.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %final, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %final_tangent, %struct.gs_fixed_point_s** %final_tangent.addr, align 8, !tbaa !1
  store i32 %ccw, i32* %ccw.addr, align 4, !tbaa !34
  store %struct.gs_fixed_point_s* %width, %struct.gs_fixed_point_s** %width.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %rad_squared to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %dist_squared to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %F to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_fixed_point_s* %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_fixed_point_s* %tangent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_fixed_point_s* %tangmeet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current_tangent.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !39
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  store i32 %8, i32* %x1, align 4, !tbaa !39
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current_tangent.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i32 0, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !38
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  store i32 %10, i32* %y2, align 4, !tbaa !38
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current_orig.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 0
  %12 = load i32, i32* %x3, align 4, !tbaa !39
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  store i32 %12, i32* %x4, align 4, !tbaa !39
  %13 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %current_orig.addr, align 8, !tbaa !1
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %13, i32 0, i32 1
  %14 = load i32, i32* %y5, align 4, !tbaa !38
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  store i32 %14, i32* %y6, align 4, !tbaa !38
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %15 = load i32, i32* %x7, align 4, !tbaa !39
  %conv = sitofp i32 %15 to double
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final_tangent.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %17 = load i32, i32* %x8, align 4, !tbaa !39
  %conv9 = sitofp i32 %17 to double
  %mul = fmul double %conv, %conv9
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %18 = load i32, i32* %y10, align 4, !tbaa !38
  %conv11 = sitofp i32 %18 to double
  %19 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final_tangent.addr, align 8, !tbaa !1
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 1
  %20 = load i32, i32* %y12, align 4, !tbaa !38
  %conv13 = sitofp i32 %20 to double
  %mul14 = fmul double %conv11, %conv13
  %add = fadd double %mul, %mul14
  %cmp = fcmp ogt double %add, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %centre.addr, align 8, !tbaa !1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 0
  %23 = load i32, i32* %x16, align 4, !tbaa !39
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %24 = load i32, i32* %x17, align 4, !tbaa !39
  %add18 = add nsw i32 %23, %24
  %25 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %centre.addr, align 8, !tbaa !1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %25, i32 0, i32 1
  %26 = load i32, i32* %y19, align 4, !tbaa !38
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %27 = load i32, i32* %y20, align 4, !tbaa !38
  %add21 = add nsw i32 %26, %27
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  %28 = load i32, i32* %x22, align 4, !tbaa !39
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %29 = load i32, i32* %x23, align 4, !tbaa !39
  %add24 = add nsw i32 %28, %29
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  %30 = load i32, i32* %y25, align 4, !tbaa !38
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %31 = load i32, i32* %y26, align 4, !tbaa !38
  %add27 = add nsw i32 %30, %31
  %call = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %21, i32 %add18, i32 %add21, i32 %add24, i32 %add27, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %32 = load i32, i32* %code, align 4, !tbaa !34
  %cmp28 = icmp slt i32 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then
  %33 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %34 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %centre.addr, align 8, !tbaa !1
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %34, i32 0, i32 0
  %35 = load i32, i32* %x31, align 4, !tbaa !39
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %36 = load i32, i32* %x32, align 4, !tbaa !39
  %add33 = add nsw i32 %35, %36
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  store i32 %add33, i32* %x34, align 4, !tbaa !39
  %37 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %centre.addr, align 8, !tbaa !1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %37, i32 0, i32 1
  %38 = load i32, i32* %y35, align 4, !tbaa !38
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %39 = load i32, i32* %y36, align 4, !tbaa !38
  %add37 = add nsw i32 %38, %39
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  store i32 %add37, i32* %y38, align 4, !tbaa !38
  %40 = load i32, i32* %ccw.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end
  %41 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %42 = load i32, i32* %x40, align 4, !tbaa !39
  store i32 %42, i32* %tmp, align 4, !tbaa !34
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %43 = load i32, i32* %y41, align 4, !tbaa !38
  %sub = sub nsw i32 0, %43
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  store i32 %sub, i32* %x42, align 4, !tbaa !39
  %44 = load i32, i32* %tmp, align 4, !tbaa !34
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  store i32 %44, i32* %y43, align 4, !tbaa !38
  %45 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %if.end.51

if.else:                                          ; preds = %if.end
  %46 = bitcast i32* %tmp45 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %47 = load i32, i32* %x46, align 4, !tbaa !39
  store i32 %47, i32* %tmp45, align 4, !tbaa !34
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  %48 = load i32, i32* %y47, align 4, !tbaa !38
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  store i32 %48, i32* %x48, align 4, !tbaa !39
  %49 = load i32, i32* %tmp45, align 4, !tbaa !34
  %sub49 = sub nsw i32 0, %49
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 1
  store i32 %sub49, i32* %y50, align 4, !tbaa !38
  %50 = bitcast i32* %tmp45 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.39
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %entry
  %51 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final_tangent.addr, align 8, !tbaa !1
  %call53 = call i32 @line_intersect(%struct.gs_fixed_point_s* %current, %struct.gs_fixed_point_s* %tangent, %struct.gs_fixed_point_s* %51, %struct.gs_fixed_point_s* %52, %struct.gs_fixed_point_s* %tangmeet) #6
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.end.52
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  %x57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i32 0, i32 0
  %55 = load i32, i32* %x57, align 4, !tbaa !39
  %56 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %56, i32 0, i32 1
  %57 = load i32, i32* %y58, align 4, !tbaa !38
  %call59 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %53, i32 %55, i32 %57, i32 0) #6
  store i32 %call59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.52
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 0
  %58 = load i32, i32* %x61, align 4, !tbaa !39
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  %59 = load i32, i32* %x62, align 4, !tbaa !39
  %sub63 = sub nsw i32 %59, %58
  store i32 %sub63, i32* %x62, align 4, !tbaa !39
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 1
  %60 = load i32, i32* %y64, align 4, !tbaa !38
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  %61 = load i32, i32* %y65, align 4, !tbaa !38
  %sub66 = sub nsw i32 %61, %60
  store i32 %sub66, i32* %y65, align 4, !tbaa !38
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  %62 = load i32, i32* %x67, align 4, !tbaa !39
  %conv68 = sitofp i32 %62 to double
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 0
  %63 = load i32, i32* %x69, align 4, !tbaa !39
  %conv70 = sitofp i32 %63 to double
  %mul71 = fmul double %conv68, %conv70
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  %64 = load i32, i32* %y72, align 4, !tbaa !38
  %conv73 = sitofp i32 %64 to double
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %current, i32 0, i32 1
  %65 = load i32, i32* %y74, align 4, !tbaa !38
  %conv75 = sitofp i32 %65 to double
  %mul76 = fmul double %conv73, %conv75
  %add77 = fadd double %mul71, %mul76
  store double %add77, double* %dist_squared, align 8, !tbaa !30
  %66 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %width.addr, align 8, !tbaa !1
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %66, i32 0, i32 0
  %67 = load i32, i32* %x78, align 4, !tbaa !39
  %conv79 = sitofp i32 %67 to double
  %68 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %width.addr, align 8, !tbaa !1
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %68, i32 0, i32 0
  %69 = load i32, i32* %x80, align 4, !tbaa !39
  %conv81 = sitofp i32 %69 to double
  %mul82 = fmul double %conv79, %conv81
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %width.addr, align 8, !tbaa !1
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %70, i32 0, i32 1
  %71 = load i32, i32* %y83, align 4, !tbaa !38
  %conv84 = sitofp i32 %71 to double
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %width.addr, align 8, !tbaa !1
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 1
  %73 = load i32, i32* %y85, align 4, !tbaa !38
  %conv86 = sitofp i32 %73 to double
  %mul87 = fmul double %conv84, %conv86
  %add88 = fadd double %mul82, %mul87
  store double %add88, double* %rad_squared, align 8, !tbaa !30
  %74 = load double, double* %rad_squared, align 8, !tbaa !30
  %75 = load double, double* %dist_squared, align 8, !tbaa !30
  %div = fdiv double %75, %74
  store double %div, double* %dist_squared, align 8, !tbaa !30
  %76 = load double, double* %dist_squared, align 8, !tbaa !30
  %add89 = fadd double 1.000000e+00, %76
  %call90 = call double @sqrt(double %add89) #7
  %add91 = fadd double 1.000000e+00, %call90
  %div92 = fdiv double 1.000000e+00, %add91
  %mul93 = fmul double 0x3FF5555555555555, %div92
  store double %mul93, double* %F, align 8, !tbaa !30
  %77 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %78 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  %x94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %78, i32 0, i32 0
  %79 = load i32, i32* %x94, align 4, !tbaa !39
  %80 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %final.addr, align 8, !tbaa !1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %80, i32 0, i32 1
  %81 = load i32, i32* %y95, align 4, !tbaa !38
  %x96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 0
  %82 = load i32, i32* %x96, align 4, !tbaa !39
  %y97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangmeet, i32 0, i32 1
  %83 = load i32, i32* %y97, align 4, !tbaa !38
  %84 = load double, double* %F, align 8, !tbaa !30
  %call98 = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %77, i32 %79, i32 %81, i32 %82, i32 %83, double %84, i32 0) #6
  store i32 %call98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.56, %if.then.30
  %85 = bitcast %struct.gs_fixed_point_s* %tangmeet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gs_fixed_point_s* %tangent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.gs_fixed_point_s* %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast double* %F to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast double* %dist_squared to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast double* %rad_squared to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal i32 @add_round_cap(%struct.gx_path_s* %ppath, %struct.endpoint_s* %endp) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %endp.addr = alloca %struct.endpoint_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.endpoint_s* %endp, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %2 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !159
  %4 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %4, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4, !tbaa !157
  %add = add nsw i32 %3, %5
  %6 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !160
  %8 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %8, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta3, i32 0, i32 1
  %9 = load i32, i32* %y4, align 4, !tbaa !158
  %add5 = add nsw i32 %7, %9
  %10 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %10, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %11 = load i32, i32* %x6, align 4, !tbaa !153
  %12 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta7 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %12, i32 0, i32 3
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta7, i32 0, i32 0
  %13 = load i32, i32* %x8, align 4, !tbaa !157
  %add9 = add nsw i32 %11, %13
  %14 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %14, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co10, i32 0, i32 1
  %15 = load i32, i32* %y11, align 4, !tbaa !154
  %16 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta12 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %16, i32 0, i32 3
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta12, i32 0, i32 1
  %17 = load i32, i32* %y13, align 4, !tbaa !158
  %add14 = add nsw i32 %15, %17
  %call = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %1, i32 %add, i32 %add5, i32 %add9, i32 %add14, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %19 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %19, i32 0, i32 2
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %20 = load i32, i32* %x15, align 4, !tbaa !155
  %21 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce16 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %21, i32 0, i32 2
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce16, i32 0, i32 1
  %22 = load i32, i32* %y17, align 4, !tbaa !156
  %23 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce18 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %23, i32 0, i32 2
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce18, i32 0, i32 0
  %24 = load i32, i32* %x19, align 4, !tbaa !155
  %25 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %25, i32 0, i32 3
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta20, i32 0, i32 0
  %26 = load i32, i32* %x21, align 4, !tbaa !157
  %add22 = add nsw i32 %24, %26
  %27 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce23 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %27, i32 0, i32 2
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce23, i32 0, i32 1
  %28 = load i32, i32* %y24, align 4, !tbaa !156
  %29 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta25 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %29, i32 0, i32 3
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta25, i32 0, i32 1
  %30 = load i32, i32* %y26, align 4, !tbaa !158
  %add27 = add nsw i32 %28, %30
  %call28 = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %18, i32 %20, i32 %22, i32 %add22, i32 %add27, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call28, i32* %code, align 4, !tbaa !34
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %32 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %32, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 0
  %33 = load i32, i32* %x32, align 4, !tbaa !159
  %34 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta33 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %34, i32 0, i32 3
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta33, i32 0, i32 0
  %35 = load i32, i32* %x34, align 4, !tbaa !157
  %sub = sub nsw i32 %33, %35
  %36 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %p35 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %36, i32 0, i32 0
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p35, i32 0, i32 1
  %37 = load i32, i32* %y36, align 4, !tbaa !160
  %38 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %38, i32 0, i32 3
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta37, i32 0, i32 1
  %39 = load i32, i32* %y38, align 4, !tbaa !158
  %sub39 = sub nsw i32 %37, %39
  %40 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce40 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %40, i32 0, i32 2
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce40, i32 0, i32 0
  %41 = load i32, i32* %x41, align 4, !tbaa !155
  %42 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta42 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %42, i32 0, i32 3
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta42, i32 0, i32 0
  %43 = load i32, i32* %x43, align 4, !tbaa !157
  %sub44 = sub nsw i32 %41, %43
  %44 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce45 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %44, i32 0, i32 2
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce45, i32 0, i32 1
  %45 = load i32, i32* %y46, align 4, !tbaa !156
  %46 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta47 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %46, i32 0, i32 3
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta47, i32 0, i32 1
  %47 = load i32, i32* %y48, align 4, !tbaa !158
  %sub49 = sub nsw i32 %45, %47
  %call50 = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %31, i32 %sub, i32 %sub39, i32 %sub44, i32 %sub49, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call50, i32* %code, align 4, !tbaa !34
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.30
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %49 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co53 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %49, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co53, i32 0, i32 0
  %50 = load i32, i32* %x54, align 4, !tbaa !153
  %51 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %51, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co55, i32 0, i32 1
  %52 = load i32, i32* %y56, align 4, !tbaa !154
  %53 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co57 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %53, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co57, i32 0, i32 0
  %54 = load i32, i32* %x58, align 4, !tbaa !153
  %55 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta59 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %55, i32 0, i32 3
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta59, i32 0, i32 0
  %56 = load i32, i32* %x60, align 4, !tbaa !157
  %sub61 = sub nsw i32 %54, %56
  %57 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %co62 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %57, i32 0, i32 1
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co62, i32 0, i32 1
  %58 = load i32, i32* %y63, align 4, !tbaa !154
  %59 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %cdelta64 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %59, i32 0, i32 3
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdelta64, i32 0, i32 1
  %60 = load i32, i32* %y65, align 4, !tbaa !158
  %sub66 = sub nsw i32 %58, %60
  %call67 = call i32 @gx_path_add_partial_arc_notes(%struct.gx_path_s* %48, i32 %50, i32 %52, i32 %sub61, i32 %sub66, double 0x3FE1AC5111534A21, i32 0) #6
  store i32 %call67, i32* %code, align 4, !tbaa !34
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.52
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %62 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce70 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %62, i32 0, i32 2
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce70, i32 0, i32 0
  %63 = load i32, i32* %x71, align 4, !tbaa !155
  %64 = load %struct.endpoint_s*, %struct.endpoint_s** %endp.addr, align 8, !tbaa !1
  %ce72 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %64, i32 0, i32 2
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce72, i32 0, i32 1
  %65 = load i32, i32* %y73, align 4, !tbaa !156
  %call74 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %61, i32 %63, i32 %65, i32 0) #6
  store i32 %call74, i32* %code, align 4, !tbaa !34
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.69, %lor.lhs.false.52, %lor.lhs.false.30, %lor.lhs.false, %entry
  %66 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.69
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
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @add_pie_join_fast_ccw(%struct.gx_path_s* %ppath, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, i32 %reflected) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %reflected.addr = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  %0 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %0, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !140
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 2
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !148
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e2 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 1
  %co3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e2, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co3, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !141
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o4 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %ce5 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o4, i32 0, i32 2
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce5, i32 0, i32 1
  %7 = load i32, i32* %y6, align 4, !tbaa !149
  %cmp7 = icmp eq i32 %5, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e8 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %9, i32 0, i32 1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e8, i32 0, i32 0
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e9 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 1
  %co10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e9, i32 0, i32 1
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e11 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e11, i32 0, i32 3
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o12 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %ce13 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o12, i32 0, i32 2
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 0
  %cdelta15 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o14, i32 0, i32 3
  %14 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %15, i32 0, i32 2
  %call = call i32 @do_pie_join(%struct.gx_path_s* %8, %struct.gs_fixed_point_s* %p, %struct.gs_fixed_point_s* %co10, %struct.gs_fixed_point_s* %cdelta, %struct.gs_fixed_point_s* %ce13, %struct.gs_fixed_point_s* %cdelta15, i32 %lnot.ext, %struct.gs_fixed_point_s* %width) #6
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @line_join_points_fast_ccw(%struct.gx_line_params_s* %pgs_lp, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_fixed_point_s* %join_points, %struct.gs_matrix_s* %pmat, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs_lp.addr = alloca %struct.gx_line_params_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %join_points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %join.addr = alloca i32, align 4
  %tp = alloca %struct.gs_fixed_point_s, align 4
  %mpt = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_line_params_s* %pgs_lp, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %join_points, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  %0 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_fixed_point_s* %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 1
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !140
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4, !tbaa !109
  %sub = sub nsw i32 %3, %5
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o2 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o2, i32 0, i32 2
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !148
  %add = add nsw i32 %sub, %7
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 0
  store i32 %add, i32* %x4, align 4, !tbaa !39
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 1
  %co6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e5, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co6, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !141
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o7 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o7, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  %11 = load i32, i32* %y9, align 4, !tbaa !112
  %sub10 = sub nsw i32 %9, %11
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o11 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %ce12 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o11, i32 0, i32 2
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce12, i32 0, i32 1
  %13 = load i32, i32* %y13, align 4, !tbaa !149
  %add14 = add nsw i32 %sub10, %13
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 1
  store i32 %add14, i32* %y15, align 4, !tbaa !38
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 0
  %14 = load i32, i32* %x16, align 4, !tbaa !39
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %15, i64 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %14, i32* %x17, align 4, !tbaa !39
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 1
  %16 = load i32, i32* %y18, align 4, !tbaa !38
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i64 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx19, i32 0, i32 1
  store i32 %16, i32* %y20, align 4, !tbaa !38
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o21 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 0
  %ce22 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o21, i32 0, i32 2
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce22, i32 0, i32 0
  %19 = load i32, i32* %x23, align 4, !tbaa !148
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i64 1
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx24, i32 0, i32 0
  store i32 %19, i32* %x25, align 4, !tbaa !39
  %21 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %21, i32 0, i32 0
  %ce27 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o26, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce27, i32 0, i32 1
  %22 = load i32, i32* %y28, align 4, !tbaa !149
  %23 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i64 1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx29, i32 0, i32 1
  store i32 %22, i32* %y30, align 4, !tbaa !38
  store i32 2, i32* %retval
  %24 = bitcast %struct.gs_fixed_point_s* %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %return

if.end:                                           ; preds = %entry
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o31 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 0
  %ce32 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o31, i32 0, i32 2
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce32, i32 0, i32 0
  %26 = load i32, i32* %x33, align 4, !tbaa !148
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i64 0
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx34, i32 0, i32 0
  store i32 %26, i32* %x35, align 4, !tbaa !39
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 0
  %ce37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o36, i32 0, i32 2
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce37, i32 0, i32 1
  %29 = load i32, i32* %y38, align 4, !tbaa !149
  %30 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i64 0
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx39, i32 0, i32 1
  store i32 %29, i32* %y40, align 4, !tbaa !38
  %31 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp41 = icmp eq i32 %31, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e42 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 1
  %co43 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e42, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co43, i32 0, i32 0
  %33 = load i32, i32* %x44, align 4, !tbaa !140
  %shl = shl i32 %33, 1
  %shr = ashr i32 %shl, 8
  %conv = sext i32 %shr to i64
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o45 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %34, i32 0, i32 0
  %ce46 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o45, i32 0, i32 2
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce46, i32 0, i32 0
  %35 = load i32, i32* %x47, align 4, !tbaa !148
  %shl48 = shl i32 %35, 1
  %shr49 = ashr i32 %shl48, 8
  %conv50 = sext i32 %shr49 to i64
  %cmp51 = icmp eq i64 %conv, %conv50
  br i1 %cmp51, label %land.lhs.true.53, label %if.then.68

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e54 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 1
  %co55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e54, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co55, i32 0, i32 1
  %37 = load i32, i32* %y56, align 4, !tbaa !141
  %shl57 = shl i32 %37, 1
  %shr58 = ashr i32 %shl57, 8
  %conv59 = sext i32 %shr58 to i64
  %38 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o60 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %38, i32 0, i32 0
  %ce61 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o60, i32 0, i32 2
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce61, i32 0, i32 1
  %39 = load i32, i32* %y62, align 4, !tbaa !149
  %shl63 = shl i32 %39, 1
  %shr64 = ashr i32 %shl63, 8
  %conv65 = sext i32 %shr64 to i64
  %cmp66 = icmp eq i64 %conv59, %conv65
  br i1 %cmp66, label %if.end.98, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.53, %land.lhs.true
  %40 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e69 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %46, i32 0, i32 1
  %co70 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e69, i32 0, i32 1
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o71 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 0
  %ce72 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o71, i32 0, i32 2
  %call = call i32 @check_miter(%struct.gx_line_params_s* %42, %struct.partial_line_s* %43, %struct.partial_line_s* %44, %struct.gs_matrix_s* %45, %struct.gs_fixed_point_s* %co70, %struct.gs_fixed_point_s* %ce72, %struct.gs_fixed_point_s* %mpt, i32 1) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %48 = load i32, i32* %code, align 4, !tbaa !34
  %cmp73 = icmp slt i32 %48, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.68
  %49 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.then.68
  %50 = load i32, i32* %code, align 4, !tbaa !34
  %cmp77 = icmp eq i32 %50, 0
  br i1 %cmp77, label %if.then.79, label %if.end.96

if.then.79:                                       ; preds = %if.end.76
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 0
  %51 = load i32, i32* %x80, align 4, !tbaa !39
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 0
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx81, i32 0, i32 0
  store i32 %51, i32* %x82, align 4, !tbaa !39
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 1
  %53 = load i32, i32* %y83, align 4, !tbaa !38
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i64 0
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx84, i32 0, i32 1
  store i32 %53, i32* %y85, align 4, !tbaa !38
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o86 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 0
  %ce87 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o86, i32 0, i32 2
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce87, i32 0, i32 0
  %56 = load i32, i32* %x88, align 4, !tbaa !148
  %57 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i64 1
  %x90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx89, i32 0, i32 0
  store i32 %56, i32* %x90, align 4, !tbaa !39
  %58 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o91 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %58, i32 0, i32 0
  %ce92 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o91, i32 0, i32 2
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce92, i32 0, i32 1
  %59 = load i32, i32* %y93, align 4, !tbaa !149
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %join_points.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %60, i64 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx94, i32 0, i32 1
  store i32 %59, i32* %y95, align 4, !tbaa !38
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.then.79, %if.then.75
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.98

if.end.98:                                        ; preds = %cleanup.cont, %land.lhs.true.53, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %cleanup, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @add_pie_join_fast_cw(%struct.gx_path_s* %rpath, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, i32 %reflected) #0 {
entry:
  %retval = alloca i32, align 4
  %rpath.addr = alloca %struct.gx_path_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %reflected.addr = alloca i32, align 4
  store %struct.gx_path_s* %rpath, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store i32 %reflected, i32* %reflected.addr, align 4, !tbaa !34
  %0 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %0, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !142
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !146
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e2 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 1
  %ce3 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e2, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce3, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !143
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o4 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %co5 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o4, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co5, i32 0, i32 1
  %7 = load i32, i32* %y6, align 4, !tbaa !147
  %cmp7 = icmp eq i32 %5, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %rpath.addr, align 8, !tbaa !1
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e8 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %9, i32 0, i32 1
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e8, i32 0, i32 0
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e9 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 1
  %ce10 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e9, i32 0, i32 2
  %11 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e11 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %11, i32 0, i32 1
  %cdelta = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e11, i32 0, i32 3
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o12 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %co13 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o12, i32 0, i32 1
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o14 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 0
  %cdelta15 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o14, i32 0, i32 3
  %14 = load i32, i32* %reflected.addr, align 4, !tbaa !34
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %15, i32 0, i32 2
  %call = call i32 @do_pie_join(%struct.gx_path_s* %8, %struct.gs_fixed_point_s* %p, %struct.gs_fixed_point_s* %ce10, %struct.gs_fixed_point_s* %cdelta, %struct.gs_fixed_point_s* %co13, %struct.gs_fixed_point_s* %cdelta15, i32 %14, %struct.gs_fixed_point_s* %width) #6
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @line_join_points_fast_cw(%struct.gx_line_params_s* %pgs_lp, %struct.partial_line_s* %plp, %struct.partial_line_s* %nplp, %struct.gs_fixed_point_s* %rjoin_points, %struct.gs_matrix_s* %pmat, i32 %join) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs_lp.addr = alloca %struct.gx_line_params_s*, align 8
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %nplp.addr = alloca %struct.partial_line_s*, align 8
  %rjoin_points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %join.addr = alloca i32, align 4
  %tp = alloca %struct.gs_fixed_point_s, align 4
  %mpt = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_line_params_s* %pgs_lp, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.partial_line_s* %nplp, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %rjoin_points, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %join, i32* %join.addr, align 4, !tbaa !56
  %0 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_fixed_point_s* %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 1
  %ce = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !142
  %4 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4, !tbaa !109
  %sub = sub nsw i32 %3, %5
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o2 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 0
  %co = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co, i32 0, i32 0
  %7 = load i32, i32* %x3, align 4, !tbaa !146
  %add = add nsw i32 %sub, %7
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 0
  store i32 %add, i32* %x4, align 4, !tbaa !39
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e5 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 1
  %ce6 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e5, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce6, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !143
  %10 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o7 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %10, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o7, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  %11 = load i32, i32* %y9, align 4, !tbaa !112
  %sub10 = sub nsw i32 %9, %11
  %12 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o11 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %12, i32 0, i32 0
  %co12 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o11, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co12, i32 0, i32 1
  %13 = load i32, i32* %y13, align 4, !tbaa !147
  %add14 = add nsw i32 %sub10, %13
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 1
  store i32 %add14, i32* %y15, align 4, !tbaa !38
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 0
  %14 = load i32, i32* %x16, align 4, !tbaa !39
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %15, i64 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %14, i32* %x17, align 4, !tbaa !39
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tp, i32 0, i32 1
  %16 = load i32, i32* %y18, align 4, !tbaa !38
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i64 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx19, i32 0, i32 1
  store i32 %16, i32* %y20, align 4, !tbaa !38
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o21 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 0
  %co22 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o21, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co22, i32 0, i32 0
  %19 = load i32, i32* %x23, align 4, !tbaa !146
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i64 1
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx24, i32 0, i32 0
  store i32 %19, i32* %x25, align 4, !tbaa !39
  %21 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %21, i32 0, i32 0
  %co27 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o26, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co27, i32 0, i32 1
  %22 = load i32, i32* %y28, align 4, !tbaa !147
  %23 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i64 1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx29, i32 0, i32 1
  store i32 %22, i32* %y30, align 4, !tbaa !38
  store i32 2, i32* %retval
  %24 = bitcast %struct.gs_fixed_point_s* %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %return

if.end:                                           ; preds = %entry
  %25 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o31 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %25, i32 0, i32 0
  %co32 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o31, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co32, i32 0, i32 0
  %26 = load i32, i32* %x33, align 4, !tbaa !146
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i64 0
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx34, i32 0, i32 0
  store i32 %26, i32* %x35, align 4, !tbaa !39
  %28 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o36 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %28, i32 0, i32 0
  %co37 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o36, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co37, i32 0, i32 1
  %29 = load i32, i32* %y38, align 4, !tbaa !147
  %30 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i64 0
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx39, i32 0, i32 1
  store i32 %29, i32* %y40, align 4, !tbaa !38
  %31 = load i32, i32* %join.addr, align 4, !tbaa !56
  %cmp41 = icmp eq i32 %31, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end
  %32 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e42 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %32, i32 0, i32 1
  %ce43 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e42, i32 0, i32 2
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce43, i32 0, i32 0
  %33 = load i32, i32* %x44, align 4, !tbaa !142
  %shl = shl i32 %33, 1
  %shr = ashr i32 %shl, 8
  %conv = sext i32 %shr to i64
  %34 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o45 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %34, i32 0, i32 0
  %co46 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o45, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co46, i32 0, i32 0
  %35 = load i32, i32* %x47, align 4, !tbaa !146
  %shl48 = shl i32 %35, 1
  %shr49 = ashr i32 %shl48, 8
  %conv50 = sext i32 %shr49 to i64
  %cmp51 = icmp eq i64 %conv, %conv50
  br i1 %cmp51, label %land.lhs.true.53, label %if.then.68

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %36 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e54 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %36, i32 0, i32 1
  %ce55 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e54, i32 0, i32 2
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ce55, i32 0, i32 1
  %37 = load i32, i32* %y56, align 4, !tbaa !143
  %shl57 = shl i32 %37, 1
  %shr58 = ashr i32 %shl57, 8
  %conv59 = sext i32 %shr58 to i64
  %38 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o60 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %38, i32 0, i32 0
  %co61 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o60, i32 0, i32 1
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co61, i32 0, i32 1
  %39 = load i32, i32* %y62, align 4, !tbaa !147
  %shl63 = shl i32 %39, 1
  %shr64 = ashr i32 %shl63, 8
  %conv65 = sext i32 %shr64 to i64
  %cmp66 = icmp eq i64 %conv59, %conv65
  br i1 %cmp66, label %if.end.98, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.53, %land.lhs.true
  %40 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp.addr, align 8, !tbaa !1
  %43 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %44 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %46 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e69 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %46, i32 0, i32 1
  %ce70 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e69, i32 0, i32 2
  %47 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o71 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %47, i32 0, i32 0
  %co72 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o71, i32 0, i32 1
  %call = call i32 @check_miter(%struct.gx_line_params_s* %42, %struct.partial_line_s* %43, %struct.partial_line_s* %44, %struct.gs_matrix_s* %45, %struct.gs_fixed_point_s* %ce70, %struct.gs_fixed_point_s* %co72, %struct.gs_fixed_point_s* %mpt, i32 0) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %48 = load i32, i32* %code, align 4, !tbaa !34
  %cmp73 = icmp slt i32 %48, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.68
  %49 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.then.68
  %50 = load i32, i32* %code, align 4, !tbaa !34
  %cmp77 = icmp eq i32 %50, 0
  br i1 %cmp77, label %if.then.79, label %if.end.96

if.then.79:                                       ; preds = %if.end.76
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 0
  %51 = load i32, i32* %x80, align 4, !tbaa !39
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 0
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx81, i32 0, i32 0
  store i32 %51, i32* %x82, align 4, !tbaa !39
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %mpt, i32 0, i32 1
  %53 = load i32, i32* %y83, align 4, !tbaa !38
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i64 0
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx84, i32 0, i32 1
  store i32 %53, i32* %y85, align 4, !tbaa !38
  %55 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o86 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %55, i32 0, i32 0
  %co87 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o86, i32 0, i32 1
  %x88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co87, i32 0, i32 0
  %56 = load i32, i32* %x88, align 4, !tbaa !146
  %57 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i64 1
  %x90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx89, i32 0, i32 0
  store i32 %56, i32* %x90, align 4, !tbaa !39
  %58 = load %struct.partial_line_s*, %struct.partial_line_s** %nplp.addr, align 8, !tbaa !1
  %o91 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %58, i32 0, i32 0
  %co92 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o91, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %co92, i32 0, i32 1
  %59 = load i32, i32* %y93, align 4, !tbaa !147
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %rjoin_points.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %60, i64 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx94, i32 0, i32 1
  store i32 %59, i32* %y95, align 4, !tbaa !38
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.76
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.then.79, %if.then.75
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_fixed_point_s* %mpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.98

if.end.98:                                        ; preds = %cleanup.cont, %land.lhs.true.53, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %cleanup, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @adjust_stroke_transversal(%struct.partial_line_s* %plp, %struct.gs_imager_state_s* %pis, i32 %thin, i32 %horiz) #0 {
entry:
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %thin.addr = alloca i32, align 4
  %horiz.addr = alloca i32, align 4
  %pw = alloca i32*, align 8
  %pov = alloca i32*, align 8
  %pev = alloca i32*, align 8
  %w = alloca i32, align 4
  %w2 = alloca i32, align 4
  %adj2 = alloca i32, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %thin, i32* %thin.addr, align 4, !tbaa !34
  store i32 %horiz, i32* %horiz.addr, align 4, !tbaa !34
  %0 = bitcast i32** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32** %pov to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32** %pev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %adj2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 1
  store i32* %y, i32** %pw, align 8, !tbaa !1
  %8 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %8, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %y1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32* %y1, i32** %pov, align 8, !tbaa !1
  %9 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %9, i32 0, i32 1
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  store i32* %y3, i32** %pev, align 8, !tbaa !1
  %10 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 28
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 1
  %12 = load i32, i32* %y5, align 4, !tbaa !86
  %conv = sext i32 %12 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv, %cond.false ]
  %shl = shl i64 %cond, 1
  %conv6 = trunc i64 %shl to i32
  store i32 %conv6, i32* %adj2, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width7 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %13, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width7, i32 0, i32 0
  store i32* %x, i32** %pw, align 8, !tbaa !1
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o8 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %14, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o8, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p9, i32 0, i32 0
  store i32* %x10, i32** %pov, align 8, !tbaa !1
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e11 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %15, i32 0, i32 1
  %p12 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e11, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p12, i32 0, i32 0
  store i32* %x13, i32** %pev, align 8, !tbaa !1
  %16 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.else
  br label %cond.end.20

cond.false.16:                                    ; preds = %if.else
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 28
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust17, i32 0, i32 0
  %18 = load i32, i32* %x18, align 4, !tbaa !85
  %conv19 = sext i32 %18 to i64
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.15
  %cond21 = phi i64 [ 0, %cond.true.15 ], [ %conv19, %cond.false.16 ]
  %shl22 = shl i64 %cond21, 1
  %conv23 = trunc i64 %shl22 to i32
  store i32 %conv23, i32* %adj2, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %cond.end.20, %cond.end
  %19 = load i32*, i32** %pw, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !34
  store i32 %20, i32* %w, align 4, !tbaa !34
  %21 = load i32, i32* %w, align 4, !tbaa !34
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.end
  %22 = load i32, i32* %w, align 4, !tbaa !34
  %shl26 = shl i32 %22, 1
  %add = add nsw i32 %shl26, 128
  %conv27 = sext i32 %add to i64
  %and = and i64 %conv27, -256
  %conv28 = trunc i64 %and to i32
  store i32 %conv28, i32* %w2, align 4, !tbaa !34
  br label %if.end.36

if.else.29:                                       ; preds = %if.end
  %23 = load i32, i32* %w, align 4, !tbaa !34
  %sub = sub nsw i32 0, %23
  %shl30 = shl i32 %sub, 1
  %add31 = add nsw i32 %shl30, 128
  %conv32 = sext i32 %add31 to i64
  %and33 = and i64 %conv32, -256
  %sub34 = sub nsw i64 0, %and33
  %conv35 = trunc i64 %sub34 to i32
  store i32 %conv35, i32* %w2, align 4, !tbaa !34
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.29, %if.then.25
  %24 = load i32, i32* %w2, align 4, !tbaa !34
  %cmp37 = icmp eq i32 %24, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.36
  %25 = load i32*, i32** %pw, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !34
  %cmp39 = icmp ne i32 %26, 0
  br i1 %cmp39, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %land.lhs.true
  %27 = load i32*, i32** %pw, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !34
  %cmp42 = icmp slt i32 %28, 0
  br i1 %cmp42, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %if.then.41
  %29 = load i32, i32* %adj2, align 4, !tbaa !34
  %conv45 = sext i32 %29 to i64
  %add46 = add nsw i64 -256, %conv45
  br label %cond.end.50

cond.false.47:                                    ; preds = %if.then.41
  %30 = load i32, i32* %adj2, align 4, !tbaa !34
  %conv48 = sext i32 %30 to i64
  %sub49 = sub nsw i64 256, %conv48
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.44
  %cond51 = phi i64 [ %add46, %cond.true.44 ], [ %sub49, %cond.false.47 ]
  %conv52 = trunc i64 %cond51 to i32
  store i32 %conv52, i32* %w2, align 4, !tbaa !34
  %31 = load i32, i32* %w2, align 4, !tbaa !34
  %shr = ashr i32 %31, 1
  %32 = load i32*, i32** %pw, align 8, !tbaa !1
  store i32 %shr, i32* %32, align 4, !tbaa !34
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end.50, %land.lhs.true, %if.end.36
  %33 = load i32*, i32** %pov, align 8, !tbaa !1
  %34 = load i32, i32* %33, align 4, !tbaa !34
  %35 = load i32*, i32** %pev, align 8, !tbaa !1
  %36 = load i32, i32* %35, align 4, !tbaa !34
  %cmp54 = icmp eq i32 %34, %36
  br i1 %cmp54, label %if.then.56, label %if.end.78

if.then.56:                                       ; preds = %if.end.53
  %37 = load i32, i32* %w, align 4, !tbaa !34
  %cmp57 = icmp sge i32 %37, 0
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.56
  %38 = load i32, i32* %adj2, align 4, !tbaa !34
  %39 = load i32, i32* %w2, align 4, !tbaa !34
  %add60 = add nsw i32 %39, %38
  store i32 %add60, i32* %w2, align 4, !tbaa !34
  br label %if.end.63

if.else.61:                                       ; preds = %if.then.56
  %40 = load i32, i32* %adj2, align 4, !tbaa !34
  %41 = load i32, i32* %w2, align 4, !tbaa !34
  %sub62 = sub nsw i32 %40, %41
  store i32 %sub62, i32* %w2, align 4, !tbaa !34
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  %42 = load i32, i32* %w2, align 4, !tbaa !34
  %conv64 = sext i32 %42 to i64
  %and65 = and i64 %conv64, 256
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.63
  %43 = load i32*, i32** %pov, align 8, !tbaa !1
  %44 = load i32, i32* %43, align 4, !tbaa !34
  %conv68 = sext i32 %44 to i64
  %and69 = and i64 %conv68, -256
  %add70 = add nsw i64 %and69, 128
  %conv71 = trunc i64 %add70 to i32
  %45 = load i32*, i32** %pev, align 8, !tbaa !1
  store i32 %conv71, i32* %45, align 4, !tbaa !34
  %46 = load i32*, i32** %pov, align 8, !tbaa !1
  store i32 %conv71, i32* %46, align 4, !tbaa !34
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.63
  %47 = load i32*, i32** %pov, align 8, !tbaa !1
  %48 = load i32, i32* %47, align 4, !tbaa !34
  %add73 = add nsw i32 %48, 128
  %conv74 = sext i32 %add73 to i64
  %and75 = and i64 %conv74, -256
  %conv76 = trunc i64 %and75 to i32
  %49 = load i32*, i32** %pev, align 8, !tbaa !1
  store i32 %conv76, i32* %49, align 4, !tbaa !34
  %50 = load i32*, i32** %pov, align 8, !tbaa !1
  store i32 %conv76, i32* %50, align 4, !tbaa !34
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.67
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.53
  %51 = bitcast i32* %adj2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32** %pev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32** %pov to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @adjust_stroke_longitude(%struct.partial_line_s* %plp, %struct.gs_imager_state_s* %pis, i32 %thin, i32 %horiz, i32 %start_cap, i32 %end_cap) #0 {
entry:
  %plp.addr = alloca %struct.partial_line_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %thin.addr = alloca i32, align 4
  %horiz.addr = alloca i32, align 4
  %start_cap.addr = alloca i32, align 4
  %end_cap.addr = alloca i32, align 4
  %pow = alloca i32*, align 8
  %pew = alloca i32*, align 8
  %pov = alloca i32*, align 8
  %pev = alloca i32*, align 8
  %length = alloca i32, align 4
  %length_r = alloca i32, align 4
  %length_r_2 = alloca i32, align 4
  %mv = alloca i32, align 4
  %mv_r = alloca i32, align 4
  %adj2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %width = alloca i32, align 4
  store %struct.partial_line_s* %plp, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %thin, i32* %thin.addr, align 4, !tbaa !34
  store i32 %horiz, i32* %horiz.addr, align 4, !tbaa !34
  store i32 %start_cap, i32* %start_cap.addr, align 4, !tbaa !56
  store i32 %end_cap, i32* %end_cap.addr, align 4, !tbaa !56
  %0 = bitcast i32** %pow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %2, i32 0, i32 0
  %p = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o1 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %3, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %y, %cond.true ], [ %x, %cond.false ]
  store i32* %cond, i32** %pow, align 8, !tbaa !1
  %4 = bitcast i32** %pew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %6 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %6, i32 0, i32 1
  %p5 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p5, i32 0, i32 1
  br label %cond.end.11

cond.false.7:                                     ; preds = %cond.end
  %7 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e8 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %7, i32 0, i32 1
  %p9 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e8, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p9, i32 0, i32 0
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.7, %cond.true.4
  %cond12 = phi i32* [ %y6, %cond.true.4 ], [ %x10, %cond.false.7 ]
  store i32* %cond12, i32** %pew, align 8, !tbaa !1
  %8 = load i32*, i32** %pow, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !34
  %10 = load i32*, i32** %pew, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !34
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end.156

if.then:                                          ; preds = %cond.end.11
  %12 = bitcast i32** %pov to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %if.then
  %14 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o15 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o15, i32 0, i32 0
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 0
  br label %cond.end.22

cond.false.18:                                    ; preds = %if.then
  %15 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %o19 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %15, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %o19, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p20, i32 0, i32 1
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.18, %cond.true.14
  %cond23 = phi i32* [ %x17, %cond.true.14 ], [ %y21, %cond.false.18 ]
  store i32* %cond23, i32** %pov, align 8, !tbaa !1
  %16 = bitcast i32** %pev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool24 = icmp ne i32 %17, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.end.22
  %18 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e26 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %18, i32 0, i32 1
  %p27 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e26, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p27, i32 0, i32 0
  br label %cond.end.33

cond.false.29:                                    ; preds = %cond.end.22
  %19 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %e30 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %19, i32 0, i32 1
  %p31 = getelementptr inbounds %struct.endpoint_s, %struct.endpoint_s* %e30, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 1
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.25
  %cond34 = phi i32* [ %x28, %cond.true.25 ], [ %y32, %cond.false.29 ]
  store i32* %cond34, i32** %pev, align 8, !tbaa !1
  %20 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32*, i32** %pov, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !34
  %23 = load i32*, i32** %pev, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !34
  %sub = sub nsw i32 %22, %24
  %cmp35 = icmp slt i32 %sub, 0
  br i1 %cmp35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end.33
  %25 = load i32*, i32** %pov, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !34
  %27 = load i32*, i32** %pev, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !34
  %sub37 = sub nsw i32 %26, %28
  %sub38 = sub nsw i32 0, %sub37
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end.33
  %29 = load i32*, i32** %pov, align 8, !tbaa !1
  %30 = load i32, i32* %29, align 4, !tbaa !34
  %31 = load i32*, i32** %pev, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !34
  %sub40 = sub nsw i32 %30, %32
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %sub38, %cond.true.36 ], [ %sub40, %cond.false.39 ]
  store i32 %cond42, i32* %length, align 4, !tbaa !34
  %33 = bitcast i32* %length_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %length_r_2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %mv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32*, i32** %pov, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !34
  %38 = load i32*, i32** %pev, align 8, !tbaa !1
  %39 = load i32, i32* %38, align 4, !tbaa !34
  %add = add nsw i32 %37, %39
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mv, align 4, !tbaa !34
  %40 = bitcast i32* %mv_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %adj2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %cond.true.44, label %cond.false.51

cond.true.44:                                     ; preds = %cond.end.41
  %43 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.true.44
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.true.44
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 28
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %45 = load i32, i32* %x48, align 4, !tbaa !85
  %conv = sext i32 %45 to i64
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i64 [ 0, %cond.true.46 ], [ %conv, %cond.false.47 ]
  br label %cond.end.60

cond.false.51:                                    ; preds = %cond.end.41
  %46 = load i32, i32* %thin.addr, align 4, !tbaa !34
  %tobool52 = icmp ne i32 %46, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.51
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.false.51
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %fill_adjust55 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 28
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust55, i32 0, i32 1
  %48 = load i32, i32* %y56, align 4, !tbaa !86
  %conv57 = sext i32 %48 to i64
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i64 [ 0, %cond.true.53 ], [ %conv57, %cond.false.54 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.end.49
  %cond61 = phi i64 [ %cond50, %cond.end.49 ], [ %cond59, %cond.end.58 ]
  %shl = shl i64 %cond61, 1
  %conv62 = trunc i64 %shl to i32
  store i32 %conv62, i32* %adj2, align 4, !tbaa !34
  %49 = load i32, i32* %length, align 4, !tbaa !34
  %conv63 = sext i32 %49 to i64
  %cmp64 = icmp sgt i64 %conv63, 256
  br i1 %cmp64, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %cond.end.60
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.60
  %50 = load i32, i32* %start_cap.addr, align 4, !tbaa !56
  %cmp67 = icmp eq i32 %50, 0
  br i1 %cmp67, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %51 = load i32, i32* %end_cap.addr, align 4, !tbaa !56
  %cmp69 = icmp eq i32 %51, 0
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %lor.lhs.false, %if.end
  %52 = load i32, i32* %length, align 4, !tbaa !34
  %add72 = add nsw i32 %52, 128
  %conv73 = sext i32 %add72 to i64
  %and = and i64 %conv73, -256
  %conv74 = trunc i64 %and to i32
  store i32 %conv74, i32* %length_r, align 4, !tbaa !34
  %53 = load i32, i32* %length_r, align 4, !tbaa !34
  %conv75 = sext i32 %53 to i64
  %cmp76 = icmp slt i64 %conv75, 256
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.71
  store i32 256, i32* %length_r, align 4, !tbaa !34
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.then.71
  %54 = load i32, i32* %length_r, align 4, !tbaa !34
  %div80 = sdiv i32 %54, 2
  store i32 %div80, i32* %length_r_2, align 4, !tbaa !34
  br label %if.end.126

if.else:                                          ; preds = %lor.lhs.false
  %55 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool81 = icmp ne i32 %56, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.else
  %57 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width83 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %57, i32 0, i32 2
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width83, i32 0, i32 1
  %58 = load i32, i32* %y84, align 4, !tbaa !126
  br label %cond.end.88

cond.false.85:                                    ; preds = %if.else
  %59 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width86 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %59, i32 0, i32 2
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width86, i32 0, i32 0
  %60 = load i32, i32* %x87, align 4, !tbaa !127
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.82
  %cond89 = phi i32 [ %58, %cond.true.82 ], [ %60, %cond.false.85 ]
  %cmp90 = icmp slt i32 %cond89, 0
  br i1 %cmp90, label %cond.true.92, label %cond.false.103

cond.true.92:                                     ; preds = %cond.end.88
  %61 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool93 = icmp ne i32 %61, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %cond.true.92
  %62 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width95 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %62, i32 0, i32 2
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width95, i32 0, i32 1
  %63 = load i32, i32* %y96, align 4, !tbaa !126
  br label %cond.end.100

cond.false.97:                                    ; preds = %cond.true.92
  %64 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width98 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %64, i32 0, i32 2
  %x99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width98, i32 0, i32 0
  %65 = load i32, i32* %x99, align 4, !tbaa !127
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.97, %cond.true.94
  %cond101 = phi i32 [ %63, %cond.true.94 ], [ %65, %cond.false.97 ]
  %sub102 = sub nsw i32 0, %cond101
  br label %cond.end.113

cond.false.103:                                   ; preds = %cond.end.88
  %66 = load i32, i32* %horiz.addr, align 4, !tbaa !34
  %tobool104 = icmp ne i32 %66, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.108

cond.true.105:                                    ; preds = %cond.false.103
  %67 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width106 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %67, i32 0, i32 2
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width106, i32 0, i32 1
  %68 = load i32, i32* %y107, align 4, !tbaa !126
  br label %cond.end.111

cond.false.108:                                   ; preds = %cond.false.103
  %69 = load %struct.partial_line_s*, %struct.partial_line_s** %plp.addr, align 8, !tbaa !1
  %width109 = getelementptr inbounds %struct.partial_line_s, %struct.partial_line_s* %69, i32 0, i32 2
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width109, i32 0, i32 0
  %70 = load i32, i32* %x110, align 4, !tbaa !127
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.true.105
  %cond112 = phi i32 [ %68, %cond.true.105 ], [ %70, %cond.false.108 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.end.100
  %cond114 = phi i32 [ %sub102, %cond.end.100 ], [ %cond112, %cond.end.111 ]
  store i32 %cond114, i32* %width, align 4, !tbaa !34
  %71 = load i32, i32* %length, align 4, !tbaa !34
  %72 = load i32, i32* %width, align 4, !tbaa !34
  %mul = mul nsw i32 %72, 2
  %add115 = add nsw i32 %71, %mul
  %73 = load i32, i32* %adj2, align 4, !tbaa !34
  %add116 = add nsw i32 %add115, %73
  %add117 = add nsw i32 %add116, 128
  %conv118 = sext i32 %add117 to i64
  %and119 = and i64 %conv118, -256
  %conv120 = trunc i64 %and119 to i32
  store i32 %conv120, i32* %length_r, align 4, !tbaa !34
  %74 = load i32, i32* %length, align 4, !tbaa !34
  %add121 = add nsw i32 %74, 128
  %conv122 = sext i32 %add121 to i64
  %and123 = and i64 %conv122, -256
  %div124 = sdiv i64 %and123, 2
  %conv125 = trunc i64 %div124 to i32
  store i32 %conv125, i32* %length_r_2, align 4, !tbaa !34
  %75 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %if.end.126

if.end.126:                                       ; preds = %cond.end.113, %if.end.79
  %76 = load i32, i32* %length_r, align 4, !tbaa !34
  %conv127 = sext i32 %76 to i64
  %and128 = and i64 %conv127, 256
  %tobool129 = icmp ne i64 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %if.end.126
  %77 = load i32, i32* %mv, align 4, !tbaa !34
  %conv131 = sext i32 %77 to i64
  %and132 = and i64 %conv131, -256
  %add133 = add nsw i64 %and132, 128
  %conv134 = trunc i64 %add133 to i32
  store i32 %conv134, i32* %mv_r, align 4, !tbaa !34
  br label %if.end.139

if.else.135:                                      ; preds = %if.end.126
  %78 = load i32, i32* %mv, align 4, !tbaa !34
  %conv136 = sext i32 %78 to i64
  %and137 = and i64 %conv136, -256
  %conv138 = trunc i64 %and137 to i32
  store i32 %conv138, i32* %mv_r, align 4, !tbaa !34
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.135, %if.then.130
  %79 = load i32*, i32** %pov, align 8, !tbaa !1
  %80 = load i32, i32* %79, align 4, !tbaa !34
  %81 = load i32*, i32** %pev, align 8, !tbaa !1
  %82 = load i32, i32* %81, align 4, !tbaa !34
  %cmp140 = icmp slt i32 %80, %82
  br i1 %cmp140, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %if.end.139
  %83 = load i32, i32* %mv_r, align 4, !tbaa !34
  %84 = load i32, i32* %length_r_2, align 4, !tbaa !34
  %sub143 = sub nsw i32 %83, %84
  %85 = load i32*, i32** %pov, align 8, !tbaa !1
  store i32 %sub143, i32* %85, align 4, !tbaa !34
  %86 = load i32, i32* %mv_r, align 4, !tbaa !34
  %87 = load i32, i32* %length_r_2, align 4, !tbaa !34
  %add144 = add nsw i32 %86, %87
  %88 = load i32*, i32** %pev, align 8, !tbaa !1
  store i32 %add144, i32* %88, align 4, !tbaa !34
  br label %if.end.148

if.else.145:                                      ; preds = %if.end.139
  %89 = load i32, i32* %mv_r, align 4, !tbaa !34
  %90 = load i32, i32* %length_r_2, align 4, !tbaa !34
  %add146 = add nsw i32 %89, %90
  %91 = load i32*, i32** %pov, align 8, !tbaa !1
  store i32 %add146, i32* %91, align 4, !tbaa !34
  %92 = load i32, i32* %mv_r, align 4, !tbaa !34
  %93 = load i32, i32* %length_r_2, align 4, !tbaa !34
  %sub147 = sub nsw i32 %92, %93
  %94 = load i32*, i32** %pev, align 8, !tbaa !1
  store i32 %sub147, i32* %94, align 4, !tbaa !34
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.142
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.148, %if.then.66
  %95 = bitcast i32* %adj2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %mv_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %mv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %length_r_2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %length_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32** %pev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32** %pov to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.157 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.156

if.end.156:                                       ; preds = %cleanup.cont, %cond.end.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %if.end.156, %cleanup
  %103 = bitcast i32** %pew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32** %pow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %cleanup.dest.159 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.159, label %unreachable [
    i32 0, label %cleanup.cont.160
    i32 1, label %cleanup.cont.160
  ]

cleanup.cont.160:                                 ; preds = %cleanup.157, %cleanup.157
  ret void

unreachable:                                      ; preds = %cleanup.157
  unreachable
}

declare i32 @gx_path_append_reversed(%struct.gx_path_s*, %struct.gx_path_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readnone }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 56}
!6 = !{!"gx_path_s", !7, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !11, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !13, i64 104, !13, i64 108, !12, i64 112, !2, i64 120}
!7 = !{!"gx_path_segments_s", !8, i64 0, !10, i64 24}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"psc_", !2, i64 0, !2, i64 8}
!11 = !{!"gs_fixed_rect_s", !12, i64 0, !12, i64 8}
!12 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 4}
!13 = !{!"int", !3, i64 0}
!14 = !{!7, !2, i64 24}
!15 = !{!16, !18, i64 132}
!16 = !{!"gs_imager_state_s", !13, i64 0, !2, i64 8, !2, i64 16, !17, i64 24, !13, i64 128, !21, i64 132, !13, i64 168, !22, i64 176, !22, i64 192, !13, i64 208, !13, i64 212, !24, i64 216, !3, i64 220, !25, i64 224, !25, i64 228, !26, i64 232, !9, i64 240, !13, i64 248, !13, i64 252, !13, i64 256, !2, i64 264, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !18, i64 296, !12, i64 300, !13, i64 308, !13, i64 312, !13, i64 316, !18, i64 320, !13, i64 324, !13, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !13, i64 408, !2, i64 416, !2, i64 424, !27, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !28, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !28, i64 1336}
!17 = !{!"gx_line_params_s", !18, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !13, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !13, i64 36, !19, i64 40, !20, i64 64}
!18 = !{!"float", !3, i64 0}
!19 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!20 = !{!"gx_dash_params_s", !2, i64 0, !13, i64 8, !18, i64 12, !13, i64 16, !18, i64 20, !13, i64 24, !13, i64 28, !18, i64 32}
!21 = !{!"gs_matrix_fixed_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!22 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!23 = !{!"double", !3, i64 0}
!24 = !{!"short", !3, i64 0}
!25 = !{!"gs_transparency_source_s", !18, i64 0}
!26 = !{!"gs_xstate_trans_flags", !13, i64 0, !13, i64 4}
!27 = !{!"gx_transfer_s", !13, i64 0, !2, i64 8, !13, i64 16, !2, i64 24, !13, i64 32, !2, i64 40, !13, i64 48, !2, i64 56}
!28 = !{!"gs_devicen_color_map_s", !13, i64 0, !3, i64 4, !13, i64 8, !13, i64 12, !9, i64 16, !3, i64 24}
!29 = !{!16, !18, i64 140}
!30 = !{!23, !23, i64 0}
!31 = !{!16, !18, i64 136}
!32 = !{!16, !18, i64 144}
!33 = !{!16, !18, i64 24}
!34 = !{!13, !13, i64 0}
!35 = !{!16, !3, i64 28}
!36 = !{!16, !3, i64 32}
!37 = !{!16, !3, i64 36}
!38 = !{!12, !13, i64 4}
!39 = !{!12, !13, i64 0}
!40 = !{!41, !24, i64 16}
!41 = !{!"segment_s", !2, i64 0, !2, i64 8, !24, i64 16, !24, i64 18, !12, i64 20}
!42 = !{!43, !13, i64 40}
!43 = !{!"subpath_s", !2, i64 0, !2, i64 8, !24, i64 16, !24, i64 18, !12, i64 20, !2, i64 32, !13, i64 40, !44, i64 48, !3, i64 88}
!44 = !{!"", !2, i64 0, !2, i64 8, !24, i64 16, !24, i64 18, !12, i64 20, !2, i64 32}
!45 = !{!43, !3, i64 88}
!46 = !{!41, !13, i64 20}
!47 = !{!41, !13, i64 24}
!48 = !{i64 0, i64 4, !34, i64 4, i64 4, !34}
!49 = !{!41, !2, i64 8}
!50 = !{!6, !13, i64 108}
!51 = !{!6, !13, i64 104}
!52 = !{!43, !2, i64 8}
!53 = !{!16, !3, i64 40}
!54 = !{!18, !18, i64 0}
!55 = !{!16, !13, i64 44}
!56 = !{!3, !3, i64 0}
!57 = !{!16, !18, i64 48}
!58 = !{!16, !2, i64 8}
!59 = !{!60, !13, i64 4}
!60 = !{!"gx_stroke_params_s", !18, i64 0, !13, i64 4}
!61 = !{!16, !13, i64 212}
!62 = !{!17, !13, i64 72}
!63 = !{!17, !13, i64 20}
!64 = !{!17, !3, i64 16}
!65 = !{!17, !18, i64 0}
!66 = !{!17, !18, i64 32}
!67 = !{!68, !2, i64 1152}
!68 = !{!"gx_device_s", !13, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !13, i64 40, !2, i64 48, !8, i64 56, !13, i64 80, !13, i64 84, !13, i64 88, !69, i64 96, !71, i64 816, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !3, i64 856, !3, i64 864, !13, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !13, i64 944, !13, i64 948, !13, i64 952, !13, i64 956, !13, i64 960, !9, i64 968, !9, i64 976, !72, i64 984, !13, i64 1052, !13, i64 1056, !73, i64 1064, !2, i64 1104, !3, i64 1112, !75, i64 1120, !76, i64 1144}
!69 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !3, i64 8, !24, i64 12, !3, i64 14, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !70, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !13, i64 712}
!70 = !{!"gx_device_anti_alias_info_s", !13, i64 0, !13, i64 4}
!71 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!72 = !{!"gx_stroked_gradient_recognizer_s", !13, i64 0, !3, i64 4, !3, i64 36}
!73 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !74, i64 16, !13, i64 32, !3, i64 36}
!74 = !{!"gx_band_params_s", !13, i64 0, !13, i64 4, !9, i64 8}
!75 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!76 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!77 = !{!19, !18, i64 4}
!78 = !{!19, !18, i64 8}
!79 = !{!19, !18, i64 0}
!80 = !{!19, !18, i64 12}
!81 = !{!11, !13, i64 4}
!82 = !{!11, !13, i64 0}
!83 = !{!11, !13, i64 12}
!84 = !{!11, !13, i64 8}
!85 = !{!16, !13, i64 300}
!86 = !{!16, !13, i64 304}
!87 = !{!68, !2, i64 1432}
!88 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34}
!89 = !{!68, !13, i64 88}
!90 = !{!91, !13, i64 88}
!91 = !{!"gx_device_clip_s", !13, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !13, i64 40, !2, i64 48, !8, i64 56, !13, i64 80, !13, i64 84, !13, i64 88, !69, i64 96, !71, i64 816, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !3, i64 856, !3, i64 864, !13, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !13, i64 944, !13, i64 948, !13, i64 952, !13, i64 956, !13, i64 960, !9, i64 968, !9, i64 976, !72, i64 984, !13, i64 1052, !13, i64 1056, !73, i64 1064, !2, i64 1104, !3, i64 1112, !75, i64 1120, !76, i64 1144, !2, i64 1728, !92, i64 1736, !2, i64 1816, !94, i64 1824, !11, i64 1832, !13, i64 1848}
!92 = !{!"gx_clip_list_s", !93, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !13, i64 64, !13, i64 68, !13, i64 72}
!93 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !3, i64 32}
!94 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!95 = !{!96, !13, i64 0}
!96 = !{!"gx_fill_params_s", !13, i64 0, !12, i64 4, !18, i64 12}
!97 = !{!16, !18, i64 296}
!98 = !{!96, !18, i64 12}
!99 = !{!17, !13, i64 36}
!100 = !{!6, !2, i64 40}
!101 = !{!60, !18, i64 0}
!102 = !{!16, !13, i64 312}
!103 = !{!17, !2, i64 64}
!104 = !{!105, !13, i64 20}
!105 = !{!"", !2, i64 0, !2, i64 8, !24, i64 16, !24, i64 18, !12, i64 20, !12, i64 28}
!106 = !{!105, !13, i64 24}
!107 = !{!105, !13, i64 28}
!108 = !{!105, !13, i64 32}
!109 = !{!110, !13, i64 0}
!110 = !{!"partial_line_s", !111, i64 0, !111, i64 32, !12, i64 64, !12, i64 72, !13, i64 80}
!111 = !{!"endpoint_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!112 = !{!110, !13, i64 4}
!113 = !{!41, !24, i64 18}
!114 = !{!110, !13, i64 32}
!115 = !{!110, !13, i64 36}
!116 = !{!17, !3, i64 4}
!117 = !{!17, !3, i64 8}
!118 = !{!43, !2, i64 32}
!119 = !{!17, !18, i64 44}
!120 = !{!17, !3, i64 12}
!121 = !{!41, !2, i64 0}
!122 = !{!110, !13, i64 72}
!123 = !{!110, !13, i64 76}
!124 = !{!110, !13, i64 60}
!125 = !{!110, !13, i64 56}
!126 = !{!110, !13, i64 68}
!127 = !{!110, !13, i64 64}
!128 = !{!110, !13, i64 80}
!129 = !{!22, !23, i64 0}
!130 = !{!22, !23, i64 8}
!131 = !{!68, !13, i64 984}
!132 = !{!96, !13, i64 4}
!133 = !{!96, !13, i64 8}
!134 = !{!68, !2, i64 1336}
!135 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 4, !34, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 4, !34, i64 52, i64 4, !34, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !34, i64 72, i64 4, !34, i64 76, i64 4, !34, i64 80, i64 4, !34}
!136 = !{!43, !24, i64 16}
!137 = !{!91, !2, i64 1728}
!138 = !{i64 0, i64 4, !34, i64 4, i64 32, !56, i64 36, i64 32, !56}
!139 = !{!68, !2, i64 1384}
!140 = !{!110, !13, i64 40}
!141 = !{!110, !13, i64 44}
!142 = !{!110, !13, i64 48}
!143 = !{!110, !13, i64 52}
!144 = !{!68, !2, i64 1376}
!145 = !{!68, !2, i64 1368}
!146 = !{!110, !13, i64 8}
!147 = !{!110, !13, i64 12}
!148 = !{!110, !13, i64 16}
!149 = !{!110, !13, i64 20}
!150 = !{!16, !13, i64 308}
!151 = !{!110, !13, i64 24}
!152 = !{!110, !13, i64 28}
!153 = !{!111, !13, i64 8}
!154 = !{!111, !13, i64 12}
!155 = !{!111, !13, i64 16}
!156 = !{!111, !13, i64 20}
!157 = !{!111, !13, i64 24}
!158 = !{!111, !13, i64 28}
!159 = !{!111, !13, i64 0}
!160 = !{!111, !13, i64 4}
!161 = !{!17, !18, i64 28}
