; ModuleID = './gxpdash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
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

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_dash_expansion(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %dash = alloca %struct.gx_dash_params_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_dash_params_s** %dash to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gx_line_params_s* @gs_currentlineparams(%struct.gs_imager_state_s* %2) #5
  %dash1 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %call, i32 0, i32 11
  store %struct.gx_dash_params_s* %dash1, %struct.gx_dash_params_s** %dash, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash, align 8, !tbaa !1
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %4, i32 0, i32 1
  %5 = load i32, i32* %pattern_size, align 4, !tbaa !7
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %6, %struct.gx_path_s* %7, i32 2147483647, %struct.gs_imager_state_s* null, i32 0) #5
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !10
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %10 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !18
  store %struct.subpath_s* %10, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.subpath_s* %11, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash, align 8, !tbaa !1
  %call5 = call i32 @subpath_expand_dashes(%struct.subpath_s* %14, %struct.gx_path_s* %15, %struct.gs_imager_state_s* %16, %struct.gx_dash_params_s* %17) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %18, i32 0, i32 5
  %19 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !19
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %19, i32 0, i32 1
  %20 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !23
  %21 = bitcast %struct.segment_s* %20 to %struct.subpath_s*
  store %struct.subpath_s* %21, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gx_dash_params_s** %dash to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_line_params_s* @gs_currentlineparams(%struct.gs_imager_state_s*) #2

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @subpath_expand_dashes(%struct.subpath_s* %psub, %struct.gx_path_s* %ppath, %struct.gs_imager_state_s* %pis, %struct.gx_dash_params_s* %dash) #0 {
entry:
  %retval = alloca i32, align 4
  %psub.addr = alloca %struct.subpath_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dash.addr = alloca %struct.gx_dash_params_s*, align 8
  %pattern = alloca float*, align 8
  %count = alloca i32, align 4
  %index = alloca i32, align 4
  %ink_on = alloca i32, align 4
  %elt_length = alloca double, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  %wrap = alloca i32, align 4
  %drawing = alloca i32, align 4
  %notes = alloca i32, align 4
  %pgs_lp = alloca %struct.gx_line_params_s*, align 8
  %zero_length = alloca i32, align 4
  %code = alloca i32, align 4
  %cap = alloca i32, align 4
  %start_notes = alloca i32, align 4
  %end_notes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %udx = alloca i32, align 4
  %udy = alloca i32, align 4
  %length = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %scale = alloca double, align 8
  %left = alloca double, align 8
  %gap = alloca i32, align 4
  %d = alloca %struct.gs_point_s, align 8
  %reps = alloca double, align 8
  %fraction = alloca double, align 8
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %pseg2 = alloca %struct.segment_s*, align 8
  %elt_length1 = alloca double, align 8
  store %struct.subpath_s* %psub, %struct.subpath_s** %psub.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_dash_params_s* %dash, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %0 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern1 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %1, i32 0, i32 0
  %2 = load float*, float** %pattern1, align 8, !tbaa !25
  store float* %2, float** %pattern, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ink_on to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast double* %elt_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.subpath_s*, %struct.subpath_s** %psub.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %8, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !26
  store i32 %9, i32* %x0, align 4, !tbaa !5
  %10 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.subpath_s*, %struct.subpath_s** %psub.addr, align 8, !tbaa !1
  %pt2 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %11, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt2, i32 0, i32 1
  %12 = load i32, i32* %y, align 4, !tbaa !27
  store i32 %12, i32* %y0, align 4, !tbaa !5
  %13 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %y4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_ink_on = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %17, i32 0, i32 5
  %18 = load i32, i32* %init_ink_on, align 4, !tbaa !28
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load %struct.subpath_s*, %struct.subpath_s** %psub.addr, align 8, !tbaa !1
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %19, i32 0, i32 8
  %20 = load i8, i8* %is_closed, align 1, !tbaa !29
  %conv = sext i8 %20 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %21 = phi i1 [ false, %entry ], [ %tobool5, %land.rhs ]
  %cond = select i1 %21, i32 -1, i32 0
  store i32 %cond, i32* %wrap, align 4, !tbaa !5
  %22 = bitcast i32* %drawing to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %wrap, align 4, !tbaa !5
  store i32 %23, i32* %drawing, align 4, !tbaa !5
  %24 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 -2, i32* %notes, align 4, !tbaa !30
  %25 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 3
  store %struct.gx_line_params_s* %line_params, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %27 = bitcast i32* %zero_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 1, i32* %zero_length, align 4, !tbaa !5
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %cap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %start_notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %end_notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %wrap, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %32, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %33 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %33, i32 0, i32 3
  %34 = load i32, i32* %dash_cap, align 4, !tbaa !31
  store i32 %34, i32* %cap, align 4, !tbaa !30
  store i32 4, i32* %start_notes, align 4, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %land.end
  %35 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %35, i32 0, i32 1
  %36 = load i32, i32* %start_cap, align 4, !tbaa !34
  store i32 %36, i32* %cap, align 4, !tbaa !30
  store i32 0, i32* %start_notes, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %38 = load i32, i32* %x0, align 4, !tbaa !5
  %39 = load i32, i32* %y0, align 4, !tbaa !5
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %37, i32 %38, i32 %39) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.359

if.end.9:                                         ; preds = %if.end
  br label %top

top:                                              ; preds = %if.then.357, %if.end.9
  %41 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %41, i32 0, i32 1
  %42 = load i32, i32* %pattern_size, align 4, !tbaa !7
  store i32 %42, i32* %count, align 4, !tbaa !5
  %43 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_ink_on10 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %43, i32 0, i32 5
  %44 = load i32, i32* %init_ink_on10, align 4, !tbaa !28
  store i32 %44, i32* %ink_on, align 4, !tbaa !5
  %45 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_index = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %45, i32 0, i32 6
  %46 = load i32, i32* %init_index, align 4, !tbaa !35
  store i32 %46, i32* %index, align 4, !tbaa !5
  %47 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_dist_left = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %47, i32 0, i32 7
  %48 = load float, float* %init_dist_left, align 4, !tbaa !36
  %conv11 = fpext float %48 to double
  store double %conv11, double* %elt_length, align 8, !tbaa !37
  %49 = load i32, i32* %x0, align 4, !tbaa !5
  store i32 %49, i32* %x3, align 4, !tbaa !5
  %50 = load i32, i32* %y0, align 4, !tbaa !5
  store i32 %50, i32* %y4, align 4, !tbaa !5
  %51 = load %struct.subpath_s*, %struct.subpath_s** %psub.addr, align 8, !tbaa !1
  %52 = bitcast %struct.subpath_s* %51 to %struct.segment_s*
  store %struct.segment_s* %52, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.351, %cleanup.340, %top
  %53 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %53, i32 0, i32 1
  %54 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !23
  store %struct.segment_s* %54, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.segment_s* %54, null
  br i1 %cmp12, label %land.rhs.14, label %land.end.18

land.rhs.14:                                      ; preds = %while.cond
  %55 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %55, i32 0, i32 2
  %56 = load i16, i16* %type, align 2, !tbaa !39
  %conv15 = zext i16 %56 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br label %land.end.18

land.end.18:                                      ; preds = %land.rhs.14, %while.cond
  %57 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs.14 ]
  br i1 %57, label %while.body, label %while.end.352

while.body:                                       ; preds = %land.end.18
  %58 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %59, i32 0, i32 4
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt19, i32 0, i32 0
  %60 = load i32, i32* %x20, align 4, !tbaa !40
  store i32 %60, i32* %sx, align 4, !tbaa !5
  %61 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 4
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 1
  %63 = load i32, i32* %y22, align 4, !tbaa !41
  store i32 %63, i32* %sy, align 4, !tbaa !5
  %64 = bitcast i32* %udx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i32, i32* %sx, align 4, !tbaa !5
  %66 = load i32, i32* %x3, align 4, !tbaa !5
  %sub = sub nsw i32 %65, %66
  store i32 %sub, i32* %udx, align 4, !tbaa !5
  %67 = bitcast i32* %udy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i32, i32* %sy, align 4, !tbaa !5
  %69 = load i32, i32* %y4, align 4, !tbaa !5
  %sub23 = sub nsw i32 %68, %69
  store i32 %sub23, i32* %udy, align 4, !tbaa !5
  %70 = bitcast double* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store double 1.000000e+00, double* %scale, align 8, !tbaa !37
  %74 = bitcast double* %left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i32* %gap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type24 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %76, i32 0, i32 2
  %77 = load i16, i16* %type24, align 2, !tbaa !39
  %conv25 = zext i16 %77 to i32
  %cmp26 = icmp eq i32 %conv25, 5
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, i32* %gap, align 4, !tbaa !5
  %78 = load i32, i32* %udx, align 4, !tbaa !5
  %79 = load i32, i32* %udy, align 4, !tbaa !5
  %or = or i32 %78, %79
  %tobool28 = icmp ne i32 %or, 0
  br i1 %tobool28, label %if.else.43, label %if.then.29

if.then.29:                                       ; preds = %while.body
  %80 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dot_length = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %80, i32 0, i32 8
  %81 = load float, float* %dot_length, align 4, !tbaa !42
  %cmp30 = fcmp oeq float %81, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then.29
  %82 = load i32, i32* %cap, align 4, !tbaa !30
  %cmp32 = icmp ne i32 %82, 1
  br i1 %cmp32, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %land.lhs.true
  %83 = load i32, i32* %zero_length, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %83, 0
  br i1 %tobool35, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %84 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %84, i32 0, i32 2
  %85 = load i16, i16* %type36, align 2, !tbaa !39
  %conv37 = zext i16 %85 to i32
  %cmp38 = icmp ne i32 %conv37, 2
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.then.34
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.340

if.end.41:                                        ; preds = %lor.lhs.false
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true, %if.then.29
  store double 0.000000e+00, double* %dx, align 8, !tbaa !37
  store double 0.000000e+00, double* %dy, align 8, !tbaa !37
  store double 0.000000e+00, double* %length, align 8, !tbaa !37
  br label %if.end.73

if.else.43:                                       ; preds = %while.body
  %86 = bitcast %struct.gs_point_s* %d to i8*
  call void @llvm.lifetime.start(i64 16, i8* %86) #1
  store i32 0, i32* %zero_length, align 4, !tbaa !5
  %87 = load i32, i32* %udx, align 4, !tbaa !5
  %conv44 = sitofp i32 %87 to double
  store double %conv44, double* %dx, align 8, !tbaa !37
  %88 = load i32, i32* %udy, align 4, !tbaa !5
  %conv45 = sitofp i32 %88 to double
  store double %conv45, double* %dy, align 8, !tbaa !37
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %90 = load double, double* %dx, align 8, !tbaa !37
  %91 = load double, double* %dy, align 8, !tbaa !37
  %call46 = call i32 @gs_imager_idtransform(%struct.gs_imager_state_s* %89, double %90, double %91, %struct.gs_point_s* %d) #5
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %92, 0
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.else.43
  %x50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 0
  store double 0.000000e+00, double* %x50, align 8, !tbaa !43
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 1
  store double 0.000000e+00, double* %y51, align 8, !tbaa !45
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.else.43
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 0
  %93 = load double, double* %x53, align 8, !tbaa !43
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 0
  %94 = load double, double* %x54, align 8, !tbaa !43
  %mul = fmul double %93, %94
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 1
  %95 = load double, double* %y55, align 8, !tbaa !45
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %d, i32 0, i32 1
  %96 = load double, double* %y56, align 8, !tbaa !45
  %mul57 = fmul double %95, %96
  %add = fadd double %mul, %mul57
  %call58 = call double @sqrt(double %add) #6
  %mul59 = fmul double %call58, 3.906250e-03
  store double %mul59, double* %length, align 8, !tbaa !37
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call60 = call i32 @gs_imager_currentdashadapt(%struct.gs_imager_state_s* %97) #5
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end.52
  %98 = bitcast double* %reps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load double, double* %length, align 8, !tbaa !37
  %100 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_length = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %100, i32 0, i32 4
  %101 = load float, float* %pattern_length, align 4, !tbaa !46
  %conv63 = fpext float %101 to double
  %div = fdiv double %99, %conv63
  store double %div, double* %reps, align 8, !tbaa !37
  %102 = load double, double* %reps, align 8, !tbaa !37
  %103 = load double, double* %reps, align 8, !tbaa !37
  %call64 = call double @ceil(double %103) #7
  %div65 = fdiv double %102, %call64
  store double %div65, double* %scale, align 8, !tbaa !37
  %104 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %pattern_size66 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %104, i32 0, i32 1
  %105 = load i32, i32* %pattern_size66, align 4, !tbaa !7
  store i32 %105, i32* %count, align 4, !tbaa !5
  %106 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_ink_on67 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %106, i32 0, i32 5
  %107 = load i32, i32* %init_ink_on67, align 4, !tbaa !28
  store i32 %107, i32* %ink_on, align 4, !tbaa !5
  %108 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_index68 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %108, i32 0, i32 6
  %109 = load i32, i32* %init_index68, align 4, !tbaa !35
  store i32 %109, i32* %index, align 4, !tbaa !5
  %110 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %dash.addr, align 8, !tbaa !1
  %init_dist_left69 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %110, i32 0, i32 7
  %111 = load float, float* %init_dist_left69, align 4, !tbaa !36
  %conv70 = fpext float %111 to double
  %112 = load double, double* %scale, align 8, !tbaa !37
  %mul71 = fmul double %conv70, %112
  store double %mul71, double* %elt_length, align 8, !tbaa !37
  %113 = bitcast double* %reps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.62, %if.end.52
  %114 = bitcast %struct.gs_point_s* %d to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.42
  %115 = load double, double* %length, align 8, !tbaa !37
  store double %115, double* %left, align 8, !tbaa !37
  br label %while.cond.74

while.cond.74:                                    ; preds = %cleanup.cont, %if.end.73
  %116 = load double, double* %left, align 8, !tbaa !37
  %117 = load double, double* %elt_length, align 8, !tbaa !37
  %cmp75 = fcmp ogt double %116, %117
  br i1 %cmp75, label %while.body.77, label %while.end

while.body.77:                                    ; preds = %while.cond.74
  %118 = bitcast double* %fraction to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  %119 = load double, double* %elt_length, align 8, !tbaa !37
  %120 = load double, double* %length, align 8, !tbaa !37
  %div78 = fdiv double %119, %120
  store double %div78, double* %fraction, align 8, !tbaa !37
  %121 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %122 = load double, double* %dx, align 8, !tbaa !37
  %123 = load double, double* %fraction, align 8, !tbaa !37
  %mul79 = fmul double %122, %123
  %conv80 = fptosi double %mul79 to i32
  store i32 %conv80, i32* %fx, align 4, !tbaa !5
  %124 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load double, double* %dy, align 8, !tbaa !37
  %126 = load double, double* %fraction, align 8, !tbaa !37
  %mul81 = fmul double %125, %126
  %conv82 = fptosi double %mul81 to i32
  store i32 %conv82, i32* %fy, align 4, !tbaa !5
  %127 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %128 = load i32, i32* %x3, align 4, !tbaa !5
  %129 = load i32, i32* %fx, align 4, !tbaa !5
  %add83 = add nsw i32 %128, %129
  store i32 %add83, i32* %nx, align 4, !tbaa !5
  %130 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = load i32, i32* %y4, align 4, !tbaa !5
  %132 = load i32, i32* %fy, align 4, !tbaa !5
  %add84 = add nsw i32 %131, %132
  store i32 %add84, i32* %ny, align 4, !tbaa !5
  %133 = load i32, i32* %ink_on, align 4, !tbaa !5
  %tobool85 = icmp ne i32 %133, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.126

land.lhs.true.86:                                 ; preds = %while.body.77
  %134 = load i32, i32* %gap, align 4, !tbaa !5
  %tobool87 = icmp ne i32 %134, 0
  br i1 %tobool87, label %if.else.126, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %135 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp89 = icmp sge i32 %135, 0
  br i1 %cmp89, label %if.then.91, label %if.end.124

if.then.91:                                       ; preds = %if.then.88
  %136 = load double, double* %left, align 8, !tbaa !37
  %137 = load double, double* %elt_length, align 8, !tbaa !37
  %cmp92 = fcmp oge double %136, %137
  br i1 %cmp92, label %land.lhs.true.94, label %if.else.116

land.lhs.true.94:                                 ; preds = %if.then.91
  %138 = load i32, i32* %fx, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %138, 0
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.94
  %139 = load i32, i32* %fx, align 4, !tbaa !5
  %sub97 = sub nsw i32 0, %139
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.94
  %140 = load i32, i32* %fx, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond98 = phi i32 [ %sub97, %cond.true ], [ %140, %cond.false ]
  %141 = load i32, i32* %fy, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %141, 0
  br i1 %cmp99, label %cond.true.101, label %cond.false.103

cond.true.101:                                    ; preds = %cond.end
  %142 = load i32, i32* %fy, align 4, !tbaa !5
  %sub102 = sub nsw i32 0, %142
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.end
  %143 = load i32, i32* %fy, align 4, !tbaa !5
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.101
  %cond105 = phi i32 [ %sub102, %cond.true.101 ], [ %143, %cond.false.103 ]
  %add106 = add nsw i32 %cond98, %cond105
  %conv107 = sext i32 %add106 to i64
  %cmp108 = icmp slt i64 %conv107, 128
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %cond.end.104
  %144 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %145 = load i32, i32* %nx, align 4, !tbaa !5
  %146 = load i32, i32* %ny, align 4, !tbaa !5
  %147 = load i32, i32* %udx, align 4, !tbaa !5
  %148 = load i32, i32* %udy, align 4, !tbaa !5
  %149 = load i32, i32* %notes, align 4, !tbaa !30
  %150 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes111 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %150, i32 0, i32 3
  %151 = load i16, i16* %notes111, align 2, !tbaa !47
  %conv112 = zext i16 %151 to i32
  %and = and i32 %149, %conv112
  %152 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or113 = or i32 %and, %152
  %or114 = or i32 %or113, 8
  %call115 = call i32 @gx_path_add_dash_notes(%struct.gx_path_s* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %or114) #5
  store i32 %call115, i32* %code, align 4, !tbaa !5
  br label %if.end.123

if.else.116:                                      ; preds = %cond.end.104, %if.then.91
  %153 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %154 = load i32, i32* %nx, align 4, !tbaa !5
  %155 = load i32, i32* %ny, align 4, !tbaa !5
  %156 = load i32, i32* %notes, align 4, !tbaa !30
  %157 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes117 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %157, i32 0, i32 3
  %158 = load i16, i16* %notes117, align 2, !tbaa !47
  %conv118 = zext i16 %158 to i32
  %and119 = and i32 %156, %conv118
  %159 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or120 = or i32 %and119, %159
  %or121 = or i32 %or120, 8
  %call122 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %153, i32 %154, i32 %155, i32 %or121) #5
  store i32 %call122, i32* %code, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.116, %if.then.110
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.88
  %160 = load i32, i32* %notes, align 4, !tbaa !30
  %or125 = or i32 %160, 1
  store i32 %or125, i32* %notes, align 4, !tbaa !30
  br label %if.end.133

if.else.126:                                      ; preds = %land.lhs.true.86, %while.body.77
  %161 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp127 = icmp sgt i32 %161, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.else.126
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.130:                                       ; preds = %if.else.126
  %162 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %163 = load i32, i32* %nx, align 4, !tbaa !5
  %164 = load i32, i32* %ny, align 4, !tbaa !5
  %call131 = call i32 @gx_path_add_point(%struct.gx_path_s* %162, i32 %163, i32 %164) #5
  store i32 %call131, i32* %code, align 4, !tbaa !5
  %165 = load i32, i32* %notes, align 4, !tbaa !30
  %and132 = and i32 %165, -2
  store i32 %and132, i32* %notes, align 4, !tbaa !30
  store i32 0, i32* %drawing, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.130, %if.end.124
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp134 = icmp slt i32 %166, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %167 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.end.133
  %168 = load double, double* %elt_length, align 8, !tbaa !37
  %169 = load double, double* %left, align 8, !tbaa !37
  %sub138 = fsub double %169, %168
  store double %sub138, double* %left, align 8, !tbaa !37
  %170 = load i32, i32* %ink_on, align 4, !tbaa !5
  %tobool139 = icmp ne i32 %170, 0
  %lnot = xor i1 %tobool139, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ink_on, align 4, !tbaa !5
  store i32 4, i32* %start_notes, align 4, !tbaa !30
  %171 = load i32, i32* %index, align 4, !tbaa !5
  %inc = add nsw i32 %171, 1
  store i32 %inc, i32* %index, align 4, !tbaa !5
  %172 = load i32, i32* %count, align 4, !tbaa !5
  %cmp140 = icmp eq i32 %inc, %172
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.137
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.137
  %173 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = sext i32 %173 to i64
  %174 = load float*, float** %pattern, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %174, i64 %idxprom
  %175 = load float, float* %arrayidx, align 4, !tbaa !48
  %conv144 = fpext float %175 to double
  %176 = load double, double* %scale, align 8, !tbaa !37
  %mul145 = fmul double %conv144, %176
  store double %mul145, double* %elt_length, align 8, !tbaa !37
  %177 = load i32, i32* %nx, align 4, !tbaa !5
  store i32 %177, i32* %x3, align 4, !tbaa !5
  %178 = load i32, i32* %ny, align 4, !tbaa !5
  store i32 %178, i32* %y4, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.143, %if.then.136, %if.then.129
  %179 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast double* %fraction to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.340 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.74

while.end:                                        ; preds = %while.cond.74
  %184 = load double, double* %left, align 8, !tbaa !37
  %185 = load double, double* %elt_length, align 8, !tbaa !37
  %sub150 = fsub double %185, %184
  store double %sub150, double* %elt_length, align 8, !tbaa !37
  %186 = load i32, i32* %wrap, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %186, 0
  br i1 %tobool151, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %while.end
  store i32 8, i32* %end_notes, align 4, !tbaa !30
  br label %if.end.178

if.else.153:                                      ; preds = %while.end
  %187 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  %188 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next154 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %188, i32 0, i32 1
  %189 = load %struct.segment_s*, %struct.segment_s** %next154, align 8, !tbaa !23
  store %struct.segment_s* %189, %struct.segment_s** %pseg2, align 8, !tbaa !1
  store i32 0, i32* %end_notes, align 4, !tbaa !30
  br label %while.cond.155

while.cond.155:                                   ; preds = %if.end.175, %if.else.153
  %190 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %cmp156 = icmp ne %struct.segment_s* %190, null
  br i1 %cmp156, label %land.rhs.158, label %land.end.163

land.rhs.158:                                     ; preds = %while.cond.155
  %191 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %type159 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %191, i32 0, i32 2
  %192 = load i16, i16* %type159, align 2, !tbaa !39
  %conv160 = zext i16 %192 to i32
  %cmp161 = icmp ne i32 %conv160, 0
  br label %land.end.163

land.end.163:                                     ; preds = %land.rhs.158, %while.cond.155
  %193 = phi i1 [ false, %while.cond.155 ], [ %cmp161, %land.rhs.158 ]
  br i1 %193, label %while.body.164, label %while.end.177

while.body.164:                                   ; preds = %land.end.163
  %194 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %pt165 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %194, i32 0, i32 4
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt165, i32 0, i32 0
  %195 = load i32, i32* %x166, align 4, !tbaa !40
  %196 = load i32, i32* %sx, align 4, !tbaa !5
  %cmp167 = icmp ne i32 %195, %196
  br i1 %cmp167, label %if.then.174, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %while.body.164
  %197 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %pt170 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %197, i32 0, i32 4
  %x171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt170, i32 0, i32 0
  %198 = load i32, i32* %x171, align 4, !tbaa !40
  %199 = load i32, i32* %sy, align 4, !tbaa !5
  %cmp172 = icmp ne i32 %198, %199
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %lor.lhs.false.169, %while.body.164
  store i32 8, i32* %end_notes, align 4, !tbaa !30
  br label %while.end.177

if.end.175:                                       ; preds = %lor.lhs.false.169
  %200 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %next176 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %200, i32 0, i32 1
  %201 = load %struct.segment_s*, %struct.segment_s** %next176, align 8, !tbaa !23
  store %struct.segment_s* %201, %struct.segment_s** %pseg2, align 8, !tbaa !1
  br label %while.cond.155

while.end.177:                                    ; preds = %if.then.174, %land.end.163
  %202 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  br label %if.end.178

if.end.178:                                       ; preds = %while.end.177, %if.then.152
  br label %on

on:                                               ; preds = %cleanup.326, %if.end.178
  %203 = load i32, i32* %ink_on, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %203, 0
  br i1 %tobool179, label %land.lhs.true.180, label %if.else.246

land.lhs.true.180:                                ; preds = %on
  %204 = load i32, i32* %gap, align 4, !tbaa !5
  %tobool181 = icmp ne i32 %204, 0
  br i1 %tobool181, label %if.else.246, label %if.then.182

if.then.182:                                      ; preds = %land.lhs.true.180
  %205 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp183 = icmp sge i32 %205, 0
  br i1 %cmp183, label %if.then.185, label %if.end.245

if.then.185:                                      ; preds = %if.then.182
  %206 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type186 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %206, i32 0, i32 2
  %207 = load i16, i16* %type186, align 2, !tbaa !39
  %conv187 = zext i16 %207 to i32
  %cmp188 = icmp eq i32 %conv187, 2
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.200

land.lhs.true.190:                                ; preds = %if.then.185
  %208 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp191 = icmp sgt i32 %208, 0
  br i1 %cmp191, label %if.then.193, label %if.else.200

if.then.193:                                      ; preds = %land.lhs.true.190
  %209 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %210 = load i32, i32* %notes, align 4, !tbaa !30
  %211 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes194 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %211, i32 0, i32 3
  %212 = load i16, i16* %notes194, align 2, !tbaa !47
  %conv195 = zext i16 %212 to i32
  %and196 = and i32 %210, %conv195
  %213 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or197 = or i32 %and196, %213
  %214 = load i32, i32* %end_notes, align 4, !tbaa !30
  %or198 = or i32 %or197, %214
  %call199 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %209, i32 %or198) #5
  store i32 %call199, i32* %code, align 4, !tbaa !5
  br label %if.end.243

if.else.200:                                      ; preds = %land.lhs.true.190, %if.then.185
  %215 = load i32, i32* %sx, align 4, !tbaa !5
  %216 = load i32, i32* %x3, align 4, !tbaa !5
  %sub201 = sub nsw i32 %215, %216
  %cmp202 = icmp slt i32 %sub201, 0
  br i1 %cmp202, label %cond.true.204, label %cond.false.207

cond.true.204:                                    ; preds = %if.else.200
  %217 = load i32, i32* %sx, align 4, !tbaa !5
  %218 = load i32, i32* %x3, align 4, !tbaa !5
  %sub205 = sub nsw i32 %217, %218
  %sub206 = sub nsw i32 0, %sub205
  br label %cond.end.209

cond.false.207:                                   ; preds = %if.else.200
  %219 = load i32, i32* %sx, align 4, !tbaa !5
  %220 = load i32, i32* %x3, align 4, !tbaa !5
  %sub208 = sub nsw i32 %219, %220
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.207, %cond.true.204
  %cond210 = phi i32 [ %sub206, %cond.true.204 ], [ %sub208, %cond.false.207 ]
  %221 = load i32, i32* %sy, align 4, !tbaa !5
  %222 = load i32, i32* %y4, align 4, !tbaa !5
  %sub211 = sub nsw i32 %221, %222
  %cmp212 = icmp slt i32 %sub211, 0
  br i1 %cmp212, label %cond.true.214, label %cond.false.217

cond.true.214:                                    ; preds = %cond.end.209
  %223 = load i32, i32* %sy, align 4, !tbaa !5
  %224 = load i32, i32* %y4, align 4, !tbaa !5
  %sub215 = sub nsw i32 %223, %224
  %sub216 = sub nsw i32 0, %sub215
  br label %cond.end.219

cond.false.217:                                   ; preds = %cond.end.209
  %225 = load i32, i32* %sy, align 4, !tbaa !5
  %226 = load i32, i32* %y4, align 4, !tbaa !5
  %sub218 = sub nsw i32 %225, %226
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.217, %cond.true.214
  %cond220 = phi i32 [ %sub216, %cond.true.214 ], [ %sub218, %cond.false.217 ]
  %add221 = add nsw i32 %cond210, %cond220
  %conv222 = sext i32 %add221 to i64
  %cmp223 = icmp slt i64 %conv222, 128
  br i1 %cmp223, label %land.lhs.true.225, label %if.else.235

land.lhs.true.225:                                ; preds = %cond.end.219
  %227 = load i32, i32* %udx, align 4, !tbaa !5
  %228 = load i32, i32* %udy, align 4, !tbaa !5
  %or226 = or i32 %227, %228
  %tobool227 = icmp ne i32 %or226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.235

if.then.228:                                      ; preds = %land.lhs.true.225
  %229 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %230 = load i32, i32* %sx, align 4, !tbaa !5
  %231 = load i32, i32* %sy, align 4, !tbaa !5
  %232 = load i32, i32* %udx, align 4, !tbaa !5
  %233 = load i32, i32* %udy, align 4, !tbaa !5
  %234 = load i32, i32* %notes, align 4, !tbaa !30
  %235 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes229 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %235, i32 0, i32 3
  %236 = load i16, i16* %notes229, align 2, !tbaa !47
  %conv230 = zext i16 %236 to i32
  %and231 = and i32 %234, %conv230
  %237 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or232 = or i32 %and231, %237
  %238 = load i32, i32* %end_notes, align 4, !tbaa !30
  %or233 = or i32 %or232, %238
  %call234 = call i32 @gx_path_add_dash_notes(%struct.gx_path_s* %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %or233) #5
  store i32 %call234, i32* %code, align 4, !tbaa !5
  br label %if.end.242

if.else.235:                                      ; preds = %land.lhs.true.225, %cond.end.219
  %239 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %240 = load i32, i32* %sx, align 4, !tbaa !5
  %241 = load i32, i32* %sy, align 4, !tbaa !5
  %242 = load i32, i32* %notes, align 4, !tbaa !30
  %243 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes236 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %243, i32 0, i32 3
  %244 = load i16, i16* %notes236, align 2, !tbaa !47
  %conv237 = zext i16 %244 to i32
  %and238 = and i32 %242, %conv237
  %245 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or239 = or i32 %and238, %245
  %246 = load i32, i32* %end_notes, align 4, !tbaa !30
  %or240 = or i32 %or239, %246
  %call241 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %239, i32 %240, i32 %241, i32 %or240) #5
  store i32 %call241, i32* %code, align 4, !tbaa !5
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.235, %if.then.228
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.193
  %247 = load i32, i32* %notes, align 4, !tbaa !30
  %or244 = or i32 %247, 1
  store i32 %or244, i32* %notes, align 4, !tbaa !30
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.243, %if.then.182
  br label %if.end.334

if.else.246:                                      ; preds = %land.lhs.true.180, %on
  %248 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %249 = load i32, i32* %sx, align 4, !tbaa !5
  %250 = load i32, i32* %sy, align 4, !tbaa !5
  %call247 = call i32 @gx_path_add_point(%struct.gx_path_s* %248, i32 %249, i32 %250) #5
  store i32 %call247, i32* %code, align 4, !tbaa !5
  %251 = load i32, i32* %notes, align 4, !tbaa !30
  %and248 = and i32 %251, -2
  store i32 %and248, i32* %notes, align 4, !tbaa !30
  %252 = load double, double* %elt_length, align 8, !tbaa !37
  %cmp249 = fcmp olt double %252, 3.906250e-03
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.329

land.lhs.true.251:                                ; preds = %if.else.246
  %253 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next252 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %253, i32 0, i32 1
  %254 = load %struct.segment_s*, %struct.segment_s** %next252, align 8, !tbaa !23
  %cmp253 = icmp eq %struct.segment_s* %254, null
  br i1 %cmp253, label %if.then.270, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %land.lhs.true.251
  %255 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next256 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %255, i32 0, i32 1
  %256 = load %struct.segment_s*, %struct.segment_s** %next256, align 8, !tbaa !23
  %type257 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %256, i32 0, i32 2
  %257 = load i16, i16* %type257, align 2, !tbaa !39
  %conv258 = zext i16 %257 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br i1 %cmp259, label %if.then.270, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %lor.lhs.false.255
  %258 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next262 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %258, i32 0, i32 1
  %259 = load %struct.segment_s*, %struct.segment_s** %next262, align 8, !tbaa !23
  %type263 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %259, i32 0, i32 2
  %260 = load i16, i16* %type263, align 2, !tbaa !39
  %conv264 = zext i16 %260 to i32
  %cmp265 = icmp eq i32 %conv264, 5
  br i1 %cmp265, label %if.then.270, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %lor.lhs.false.261
  %261 = load double, double* %elt_length, align 8, !tbaa !37
  %cmp268 = fcmp oeq double %261, 0.000000e+00
  br i1 %cmp268, label %if.then.270, label %if.end.329

if.then.270:                                      ; preds = %lor.lhs.false.267, %lor.lhs.false.261, %lor.lhs.false.255, %land.lhs.true.251
  %262 = bitcast double* %elt_length1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  %263 = load i32, i32* %code, align 4, !tbaa !5
  %cmp271 = icmp slt i32 %263, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.270
  %264 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %264, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.274:                                       ; preds = %if.then.270
  %265 = load i32, i32* %index, align 4, !tbaa !5
  %inc275 = add nsw i32 %265, 1
  store i32 %inc275, i32* %index, align 4, !tbaa !5
  %266 = load i32, i32* %count, align 4, !tbaa !5
  %cmp276 = icmp eq i32 %inc275, %266
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.274
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %if.end.274
  %267 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom280 = sext i32 %267 to i64
  %268 = load float*, float** %pattern, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds float, float* %268, i64 %idxprom280
  %269 = load float, float* %arrayidx281, align 4, !tbaa !48
  %conv282 = fpext float %269 to double
  %270 = load double, double* %scale, align 8, !tbaa !37
  %mul283 = fmul double %conv282, %270
  store double %mul283, double* %elt_length1, align 8, !tbaa !37
  %271 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next284 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %271, i32 0, i32 1
  %272 = load %struct.segment_s*, %struct.segment_s** %next284, align 8, !tbaa !23
  %cmp285 = icmp eq %struct.segment_s* %272, null
  br i1 %cmp285, label %if.then.299, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %if.end.279
  %273 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next288 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %273, i32 0, i32 1
  %274 = load %struct.segment_s*, %struct.segment_s** %next288, align 8, !tbaa !23
  %type289 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %274, i32 0, i32 2
  %275 = load i16, i16* %type289, align 2, !tbaa !39
  %conv290 = zext i16 %275 to i32
  %cmp291 = icmp eq i32 %conv290, 0
  br i1 %cmp291, label %if.then.299, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %lor.lhs.false.287
  %276 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next294 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %276, i32 0, i32 1
  %277 = load %struct.segment_s*, %struct.segment_s** %next294, align 8, !tbaa !23
  %type295 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %277, i32 0, i32 2
  %278 = load i16, i16* %type295, align 2, !tbaa !39
  %conv296 = zext i16 %278 to i32
  %cmp297 = icmp eq i32 %conv296, 5
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %lor.lhs.false.293, %lor.lhs.false.287, %if.end.279
  %279 = load double, double* %elt_length1, align 8, !tbaa !37
  store double %279, double* %elt_length, align 8, !tbaa !37
  store double 0.000000e+00, double* %left, align 8, !tbaa !37
  store i32 1, i32* %ink_on, align 4, !tbaa !5
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.300:                                       ; preds = %lor.lhs.false.293
  %280 = load double, double* %elt_length1, align 8, !tbaa !37
  %cmp301 = fcmp oeq double %280, 0.000000e+00
  br i1 %cmp301, label %if.then.303, label %if.else.319

if.then.303:                                      ; preds = %if.end.300
  store double 0.000000e+00, double* %left, align 8, !tbaa !37
  %281 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %282 = load i32, i32* %sx, align 4, !tbaa !5
  %283 = load i32, i32* %sy, align 4, !tbaa !5
  %284 = load i32, i32* %udx, align 4, !tbaa !5
  %285 = load i32, i32* %udy, align 4, !tbaa !5
  %286 = load i32, i32* %notes, align 4, !tbaa !30
  %287 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes304 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %287, i32 0, i32 3
  %288 = load i16, i16* %notes304, align 2, !tbaa !47
  %conv305 = zext i16 %288 to i32
  %and306 = and i32 %286, %conv305
  %289 = load i32, i32* %start_notes, align 4, !tbaa !30
  %or307 = or i32 %and306, %289
  %290 = load i32, i32* %end_notes, align 4, !tbaa !30
  %or308 = or i32 %or307, %290
  %call309 = call i32 @gx_path_add_dash_notes(%struct.gx_path_s* %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %or308) #5
  store i32 %call309, i32* %code, align 4, !tbaa !5
  %291 = load i32, i32* %index, align 4, !tbaa !5
  %inc310 = add nsw i32 %291, 1
  store i32 %inc310, i32* %index, align 4, !tbaa !5
  %292 = load i32, i32* %count, align 4, !tbaa !5
  %cmp311 = icmp eq i32 %inc310, %292
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %if.then.303
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.313, %if.then.303
  %293 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom315 = sext i32 %293 to i64
  %294 = load float*, float** %pattern, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds float, float* %294, i64 %idxprom315
  %295 = load float, float* %arrayidx316, align 4, !tbaa !48
  %conv317 = fpext float %295 to double
  %296 = load double, double* %scale, align 8, !tbaa !37
  %mul318 = fmul double %conv317, %296
  store double %mul318, double* %elt_length, align 8, !tbaa !37
  store i32 0, i32* %ink_on, align 4, !tbaa !5
  br label %if.end.325

if.else.319:                                      ; preds = %if.end.300
  %297 = load i32, i32* %index, align 4, !tbaa !5
  %dec = add nsw i32 %297, -1
  store i32 %dec, i32* %index, align 4, !tbaa !5
  %cmp320 = icmp eq i32 %dec, 0
  br i1 %cmp320, label %if.then.322, label %if.end.324

if.then.322:                                      ; preds = %if.else.319
  %298 = load i32, i32* %count, align 4, !tbaa !5
  %sub323 = sub nsw i32 %298, 1
  store i32 %sub323, i32* %index, align 4, !tbaa !5
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.322, %if.else.319
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.314
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %if.end.325, %if.then.299, %if.then.273
  %299 = bitcast double* %elt_length1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %cleanup.dest.327 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.327, label %cleanup.340 [
    i32 0, label %cleanup.cont.328
    i32 9, label %on
  ]

cleanup.cont.328:                                 ; preds = %cleanup.326
  br label %if.end.329

if.end.329:                                       ; preds = %cleanup.cont.328, %lor.lhs.false.267, %if.else.246
  %300 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp330 = icmp sgt i32 %300, 0
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.end.329
  %301 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %301, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.340

if.end.333:                                       ; preds = %if.end.329
  store i32 0, i32* %drawing, align 4, !tbaa !5
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end.245
  %302 = load i32, i32* %code, align 4, !tbaa !5
  %cmp335 = icmp slt i32 %302, 0
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.end.334
  %303 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %303, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.340

if.end.338:                                       ; preds = %if.end.334
  %304 = load i32, i32* %sx, align 4, !tbaa !5
  store i32 %304, i32* %x3, align 4, !tbaa !5
  %305 = load i32, i32* %sy, align 4, !tbaa !5
  store i32 %305, i32* %y4, align 4, !tbaa !5
  %306 = load %struct.gx_line_params_s*, %struct.gx_line_params_s** %pgs_lp, align 8, !tbaa !1
  %dash_cap339 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %306, i32 0, i32 3
  %307 = load i32, i32* %dash_cap339, align 4, !tbaa !31
  store i32 %307, i32* %cap, align 4, !tbaa !30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.340

cleanup.340:                                      ; preds = %if.end.338, %if.then.337, %if.then.332, %cleanup.326, %cleanup, %if.then.40
  %308 = bitcast i32* %gap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast double* %left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast double* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast i32* %udy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %udx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %cleanup.dest.350 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.350, label %cleanup.359 [
    i32 0, label %cleanup.cont.351
    i32 3, label %while.cond
  ]

cleanup.cont.351:                                 ; preds = %cleanup.340
  br label %while.cond

while.end.352:                                    ; preds = %land.end.18
  %318 = load i32, i32* %wrap, align 4, !tbaa !5
  %tobool353 = icmp ne i32 %318, 0
  br i1 %tobool353, label %land.lhs.true.354, label %if.end.358

land.lhs.true.354:                                ; preds = %while.end.352
  %319 = load i32, i32* %drawing, align 4, !tbaa !5
  %cmp355 = icmp sle i32 %319, 0
  br i1 %cmp355, label %if.then.357, label %if.end.358

if.then.357:                                      ; preds = %land.lhs.true.354
  store i32 1, i32* %drawing, align 4, !tbaa !5
  br label %top

if.end.358:                                       ; preds = %land.lhs.true.354, %while.end.352
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.359

cleanup.359:                                      ; preds = %if.end.358, %cleanup.340, %if.then.8
  %320 = bitcast i32* %end_notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %start_notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %cap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %zero_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast %struct.gx_line_params_s** %pgs_lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %drawing to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %wrap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast i32* %y4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %331 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast double* %elt_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast i32* %ink_on to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = load i32, i32* %retval
  ret i32 %339
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #2

declare i32 @gs_imager_idtransform(%struct.gs_imager_state_s*, double, double, %struct.gs_point_s*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare i32 @gs_imager_currentdashadapt(%struct.gs_imager_state_s*) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

declare i32 @gx_path_add_dash_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32) #2

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #2

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 8}
!8 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !9, i64 12, !6, i64 16, !9, i64 20, !6, i64 24, !6, i64 28, !9, i64 32}
!9 = !{!"float", !3, i64 0}
!10 = !{!11, !2, i64 56}
!11 = !{!"gx_path_s", !12, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !16, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !17, i64 112, !2, i64 120}
!12 = !{!"gx_path_segments_s", !13, i64 0, !15, i64 24}
!13 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"long", !3, i64 0}
!15 = !{!"psc_", !2, i64 0, !2, i64 8}
!16 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 8}
!17 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!18 = !{!12, !2, i64 24}
!19 = !{!20, !2, i64 32}
!20 = !{!"subpath_s", !2, i64 0, !2, i64 8, !21, i64 16, !21, i64 18, !17, i64 20, !2, i64 32, !6, i64 40, !22, i64 48, !3, i64 88}
!21 = !{!"short", !3, i64 0}
!22 = !{!"", !2, i64 0, !2, i64 8, !21, i64 16, !21, i64 18, !17, i64 20, !2, i64 32}
!23 = !{!24, !2, i64 8}
!24 = !{!"segment_s", !2, i64 0, !2, i64 8, !21, i64 16, !21, i64 18, !17, i64 20}
!25 = !{!8, !2, i64 0}
!26 = !{!20, !6, i64 20}
!27 = !{!20, !6, i64 24}
!28 = !{!8, !6, i64 24}
!29 = !{!20, !3, i64 88}
!30 = !{!3, !3, i64 0}
!31 = !{!32, !3, i64 12}
!32 = !{!"gx_line_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !6, i64 36, !33, i64 40, !8, i64 64}
!33 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!34 = !{!32, !3, i64 4}
!35 = !{!8, !6, i64 28}
!36 = !{!8, !9, i64 32}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !3, i64 0}
!39 = !{!24, !21, i64 16}
!40 = !{!24, !6, i64 20}
!41 = !{!24, !6, i64 24}
!42 = !{!32, !9, i64 32}
!43 = !{!44, !38, i64 0}
!44 = !{!"gs_point_s", !38, i64 0, !38, i64 8}
!45 = !{!44, !38, i64 8}
!46 = !{!8, !9, i64 20}
!47 = !{!24, !21, i64 18}
!48 = !{!9, !9, i64 0}
