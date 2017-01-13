; ModuleID = './gxpcopy.bc'
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
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.dash_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [34 x i8] c"gx_path_merge_contacting_contours\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_path_copy_reducing(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath, i32 %fixed_flatness, %struct.gs_imager_state_s* %pis, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %fixed_flatness.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %options.addr = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  %flat = alloca i32, align 4
  %expansion = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %width = alloca double, align 8
  %pc = alloca %struct.curve_segment*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %notes59 = alloca i32, align 4
  %cseg = alloca %struct.curve_segment, align 8
  %k = alloca i32, align 4
  %min01 = alloca i32, align 4
  %max01 = alloca i32, align 4
  %min23 = alloca i32, align 4
  %max23 = alloca i32, align 4
  %ex = alloca i32, align 4
  %ey = alloca i32, align 4
  %flat_x = alloca i32, align 4
  %flat_y = alloca i32, align 4
  %start = alloca %struct.segment_s*, align 8
  %end = alloca %struct.segment_s*, align 8
  %pd = alloca %struct.dash_segment*, align 8
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %fixed_flatness, i32* %fixed_flatness.addr, align 4, !tbaa !5
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !7
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %flat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  store i32 %2, i32* %flat, align 4, !tbaa !5
  %3 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_unshare(%struct.gx_path_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and = and i32 %8, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %9 = bitcast double* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 3
  %half_width = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 0
  %11 = load float, float* %half_width, align 4, !tbaa !8
  %conv = fpext float %11 to double
  store double %conv, double* %width, align 8, !tbaa !24
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %12, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 0
  %13 = load float, float* %xx, align 4, !tbaa !25
  %conv2 = fpext float %13 to double
  %call3 = call double @fabs(double %conv2) #7
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm4, i32 0, i32 2
  %15 = load float, float* %yx, align 4, !tbaa !26
  %conv5 = fpext float %15 to double
  %call6 = call double @fabs(double %conv5) #7
  %add = fadd double %call3, %call6
  %16 = load double, double* %width, align 8, !tbaa !24
  %mul = fmul double %add, %16
  %mul7 = fmul double %mul, 2.560000e+02
  %conv8 = fptosi double %mul7 to i32
  %mul9 = mul nsw i32 %conv8, 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  store i32 %mul9, i32* %x, align 4, !tbaa !27
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm10, i32 0, i32 1
  %18 = load float, float* %xy, align 4, !tbaa !28
  %conv11 = fpext float %18 to double
  %call12 = call double @fabs(double %conv11) #7
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm13, i32 0, i32 3
  %20 = load float, float* %yy, align 4, !tbaa !29
  %conv14 = fpext float %20 to double
  %call15 = call double @fabs(double %conv14) #7
  %add16 = fadd double %call12, %call15
  %21 = load double, double* %width, align 8, !tbaa !24
  %mul17 = fmul double %add16, %21
  %mul18 = fmul double %mul17, 2.560000e+02
  %conv19 = fptosi double %mul18 to i32
  %mul20 = mul nsw i32 %conv19, 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  store i32 %mul20, i32* %y, align 4, !tbaa !30
  %22 = bitcast double* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  store i32 0, i32* %y21, align 4, !tbaa !30
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  store i32 0, i32* %x22, align 4, !tbaa !27
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.1
  br label %do.body

do.body:                                          ; preds = %if.end.23
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 3
  %24 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !31
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %24, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %25 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !37
  %26 = bitcast %struct.subpath_s* %25 to %struct.segment_s*
  store %struct.segment_s* %26, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.380, %do.end
  %27 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %tobool24 = icmp ne %struct.segment_s* %27, null
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i32 0, i32 2
  %29 = load i16, i16* %type, align 2, !tbaa !38
  %conv25 = zext i16 %29 to i32
  switch i32 %conv25, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.33
    i32 1, label %sw.bb.322
    i32 5, label %sw.bb.338
    i32 4, label %sw.bb.354
    i32 2, label %sw.bb.366
  ]

sw.bb:                                            ; preds = %while.body
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 4
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %32 = load i32, i32* %x26, align 4, !tbaa !40
  %33 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt27 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 4
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt27, i32 0, i32 1
  %34 = load i32, i32* %y28, align 4, !tbaa !41
  %call29 = call i32 @gx_path_add_point(%struct.gx_path_s* %30, i32 %32, i32 %34) #6
  store i32 %call29, i32* %code, align 4, !tbaa !5
  br label %do.body.30

do.body.30:                                       ; preds = %sw.bb
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %sw.epilog

sw.bb.33:                                         ; preds = %while.body
  %35 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %37 = bitcast %struct.segment_s* %36 to %struct.curve_segment*
  store %struct.curve_segment* %37, %struct.curve_segment** %pc, align 8, !tbaa !1
  %38 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %38, 2147483647
  br i1 %cmp34, label %if.then.36, label %if.else.55

if.then.36:                                       ; preds = %sw.bb.33
  %39 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and37 = and i32 %39, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.then.36
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %41 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %call40 = call i32 @gx_curve_monotonize(%struct.gx_path_s* %40, %struct.curve_segment* %41) #6
  store i32 %call40, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.else.41:                                       ; preds = %if.then.36
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %43 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %43, i32 0, i32 5
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %44 = load i32, i32* %x42, align 4, !tbaa !42
  %45 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p143 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %45, i32 0, i32 5
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p143, i32 0, i32 1
  %46 = load i32, i32* %y44, align 4, !tbaa !44
  %47 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %47, i32 0, i32 6
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %48 = load i32, i32* %x45, align 4, !tbaa !45
  %49 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p246 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %49, i32 0, i32 6
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p246, i32 0, i32 1
  %50 = load i32, i32* %y47, align 4, !tbaa !46
  %51 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt48 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %51, i32 0, i32 4
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt48, i32 0, i32 0
  %52 = load i32, i32* %x49, align 4, !tbaa !47
  %53 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt50 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %53, i32 0, i32 4
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt50, i32 0, i32 1
  %54 = load i32, i32* %y51, align 4, !tbaa !48
  %55 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.segment_s, %struct.segment_s* %55, i32 0, i32 3
  %56 = load i16, i16* %notes, align 2, !tbaa !49
  %conv52 = zext i16 %56 to i32
  %call53 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %conv52) #6
  store i32 %call53, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.41, %if.then.39
  br label %if.end.320

if.else.55:                                       ; preds = %sw.bb.33
  %57 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %58, i32 0, i32 14
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %59 = load i32, i32* %x56, align 4, !tbaa !50
  store i32 %59, i32* %x0, align 4, !tbaa !5
  %60 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position57 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %61, i32 0, i32 14
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position57, i32 0, i32 1
  %62 = load i32, i32* %y58, align 4, !tbaa !51
  store i32 %62, i32* %y0, align 4, !tbaa !5
  %63 = bitcast i32* %notes59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes60 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 3
  %65 = load i16, i16* %notes60, align 2, !tbaa !49
  %conv61 = zext i16 %65 to i32
  store i32 %conv61, i32* %notes59, align 4, !tbaa !7
  %66 = bitcast %struct.curve_segment* %cseg to i8*
  call void @llvm.lifetime.start(i64 48, i8* %66) #1
  %67 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and62 = and i32 %68, 4
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.186

if.then.64:                                       ; preds = %if.else.55
  %69 = bitcast i32* %min01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %max01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %min23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i32* %max23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast i32* %ex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %flat_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %flat_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %77 = load i32, i32* %x0, align 4, !tbaa !5
  %78 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p166 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %78, i32 0, i32 5
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p166, i32 0, i32 0
  %79 = load i32, i32* %x67, align 4, !tbaa !42
  %cmp68 = icmp slt i32 %77, %79
  br i1 %cmp68, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %do.body.65
  %80 = load i32, i32* %x0, align 4, !tbaa !5
  store i32 %80, i32* %min01, align 4, !tbaa !5
  %81 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p171 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %81, i32 0, i32 5
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p171, i32 0, i32 0
  %82 = load i32, i32* %x72, align 4, !tbaa !42
  store i32 %82, i32* %max01, align 4, !tbaa !5
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.65
  %83 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p174 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %83, i32 0, i32 5
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p174, i32 0, i32 0
  %84 = load i32, i32* %x75, align 4, !tbaa !42
  store i32 %84, i32* %min01, align 4, !tbaa !5
  %85 = load i32, i32* %x0, align 4, !tbaa !5
  store i32 %85, i32* %max01, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.70
  %86 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p277 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %86, i32 0, i32 6
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p277, i32 0, i32 0
  %87 = load i32, i32* %x78, align 4, !tbaa !45
  %88 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt79 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %88, i32 0, i32 4
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt79, i32 0, i32 0
  %89 = load i32, i32* %x80, align 4, !tbaa !47
  %cmp81 = icmp slt i32 %87, %89
  br i1 %cmp81, label %if.then.83, label %if.else.88

if.then.83:                                       ; preds = %if.end.76
  %90 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p284 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %90, i32 0, i32 6
  %x85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p284, i32 0, i32 0
  %91 = load i32, i32* %x85, align 4, !tbaa !45
  store i32 %91, i32* %min23, align 4, !tbaa !5
  %92 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt86 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 4
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt86, i32 0, i32 0
  %93 = load i32, i32* %x87, align 4, !tbaa !47
  store i32 %93, i32* %max23, align 4, !tbaa !5
  br label %if.end.93

if.else.88:                                       ; preds = %if.end.76
  %94 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt89 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %94, i32 0, i32 4
  %x90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt89, i32 0, i32 0
  %95 = load i32, i32* %x90, align 4, !tbaa !47
  store i32 %95, i32* %min23, align 4, !tbaa !5
  %96 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p291 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %96, i32 0, i32 6
  %x92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p291, i32 0, i32 0
  %97 = load i32, i32* %x92, align 4, !tbaa !45
  store i32 %97, i32* %max23, align 4, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.88, %if.then.83
  %98 = load i32, i32* %max01, align 4, !tbaa !5
  %99 = load i32, i32* %max23, align 4, !tbaa !5
  %cmp94 = icmp sgt i32 %98, %99
  br i1 %cmp94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.93
  %100 = load i32, i32* %max01, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.93
  %101 = load i32, i32* %max23, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %100, %cond.true ], [ %101, %cond.false ]
  %102 = load i32, i32* %min01, align 4, !tbaa !5
  %103 = load i32, i32* %min23, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %102, %103
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end
  %104 = load i32, i32* %min01, align 4, !tbaa !5
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end
  %105 = load i32, i32* %min23, align 4, !tbaa !5
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi i32 [ %104, %cond.true.98 ], [ %105, %cond.false.99 ]
  %sub = sub nsw i32 %cond, %cond101
  store i32 %sub, i32* %ex, align 4, !tbaa !5
  br label %do.cond.102

do.cond.102:                                      ; preds = %cond.end.100
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %106 = load i32, i32* %y0, align 4, !tbaa !5
  %107 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1105 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %107, i32 0, i32 5
  %y106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1105, i32 0, i32 1
  %108 = load i32, i32* %y106, align 4, !tbaa !44
  %cmp107 = icmp slt i32 %106, %108
  br i1 %cmp107, label %if.then.109, label %if.else.112

if.then.109:                                      ; preds = %do.body.104
  %109 = load i32, i32* %y0, align 4, !tbaa !5
  store i32 %109, i32* %min01, align 4, !tbaa !5
  %110 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1110 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %110, i32 0, i32 5
  %y111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1110, i32 0, i32 1
  %111 = load i32, i32* %y111, align 4, !tbaa !44
  store i32 %111, i32* %max01, align 4, !tbaa !5
  br label %if.end.115

if.else.112:                                      ; preds = %do.body.104
  %112 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1113 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %112, i32 0, i32 5
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1113, i32 0, i32 1
  %113 = load i32, i32* %y114, align 4, !tbaa !44
  store i32 %113, i32* %min01, align 4, !tbaa !5
  %114 = load i32, i32* %y0, align 4, !tbaa !5
  store i32 %114, i32* %max01, align 4, !tbaa !5
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.109
  %115 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2116 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %115, i32 0, i32 6
  %y117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2116, i32 0, i32 1
  %116 = load i32, i32* %y117, align 4, !tbaa !46
  %117 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt118 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %117, i32 0, i32 4
  %y119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt118, i32 0, i32 1
  %118 = load i32, i32* %y119, align 4, !tbaa !48
  %cmp120 = icmp slt i32 %116, %118
  br i1 %cmp120, label %if.then.122, label %if.else.127

if.then.122:                                      ; preds = %if.end.115
  %119 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2123 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %119, i32 0, i32 6
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2123, i32 0, i32 1
  %120 = load i32, i32* %y124, align 4, !tbaa !46
  store i32 %120, i32* %min23, align 4, !tbaa !5
  %121 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt125 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %121, i32 0, i32 4
  %y126 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt125, i32 0, i32 1
  %122 = load i32, i32* %y126, align 4, !tbaa !48
  store i32 %122, i32* %max23, align 4, !tbaa !5
  br label %if.end.132

if.else.127:                                      ; preds = %if.end.115
  %123 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt128 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %123, i32 0, i32 4
  %y129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt128, i32 0, i32 1
  %124 = load i32, i32* %y129, align 4, !tbaa !48
  store i32 %124, i32* %min23, align 4, !tbaa !5
  %125 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2130 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %125, i32 0, i32 6
  %y131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2130, i32 0, i32 1
  %126 = load i32, i32* %y131, align 4, !tbaa !46
  store i32 %126, i32* %max23, align 4, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.127, %if.then.122
  %127 = load i32, i32* %max01, align 4, !tbaa !5
  %128 = load i32, i32* %max23, align 4, !tbaa !5
  %cmp133 = icmp sgt i32 %127, %128
  br i1 %cmp133, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %if.end.132
  %129 = load i32, i32* %max01, align 4, !tbaa !5
  br label %cond.end.137

cond.false.136:                                   ; preds = %if.end.132
  %130 = load i32, i32* %max23, align 4, !tbaa !5
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.135
  %cond138 = phi i32 [ %129, %cond.true.135 ], [ %130, %cond.false.136 ]
  %131 = load i32, i32* %min01, align 4, !tbaa !5
  %132 = load i32, i32* %min23, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %131, %132
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end.137
  %133 = load i32, i32* %min01, align 4, !tbaa !5
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end.137
  %134 = load i32, i32* %min23, align 4, !tbaa !5
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi i32 [ %133, %cond.true.141 ], [ %134, %cond.false.142 ]
  %sub145 = sub nsw i32 %cond138, %cond144
  store i32 %sub145, i32* %ey, align 4, !tbaa !5
  br label %do.cond.146

do.cond.146:                                      ; preds = %cond.end.143
  br label %do.end.147

do.end.147:                                       ; preds = %do.cond.146
  %135 = load i32, i32* %ex, align 4, !tbaa !5
  %cmp148 = icmp eq i32 %135, 0
  br i1 %cmp148, label %if.then.152, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.147
  %136 = load i32, i32* %ey, align 4, !tbaa !5
  %cmp150 = icmp eq i32 %136, 0
  br i1 %cmp150, label %if.then.152, label %if.else.171

if.then.152:                                      ; preds = %lor.lhs.false, %do.end.147
  %137 = load i32, i32* %ex, align 4, !tbaa !5
  %cmp153 = icmp ne i32 %137, 0
  br i1 %cmp153, label %if.then.155, label %if.else.160

if.then.155:                                      ; preds = %if.then.152
  %138 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  %139 = load i32, i32* %ex, align 4, !tbaa !5
  %140 = load i32, i32* %ex, align 4, !tbaa !5
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %141 = load i32, i32* %x156, align 4, !tbaa !27
  %add157 = add nsw i32 %140, %141
  %call158 = call i32 @fixed_mult_quo(i32 %138, i32 %139, i32 %add157) #6
  store i32 %call158, i32* %flat, align 4, !tbaa !5
  %142 = load i32, i32* %x0, align 4, !tbaa !5
  %143 = load i32, i32* %y0, align 4, !tbaa !5
  %144 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %145 = load i32, i32* %flat, align 4, !tbaa !5
  %call159 = call i32 @gx_curve_log2_samples(i32 %142, i32 %143, %struct.curve_segment* %144, i32 %145) #6
  store i32 %call159, i32* %k, align 4, !tbaa !5
  br label %if.end.170

if.else.160:                                      ; preds = %if.then.152
  %146 = load i32, i32* %ey, align 4, !tbaa !5
  %cmp161 = icmp ne i32 %146, 0
  br i1 %cmp161, label %if.then.163, label %if.else.168

if.then.163:                                      ; preds = %if.else.160
  %147 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  %148 = load i32, i32* %ey, align 4, !tbaa !5
  %149 = load i32, i32* %ey, align 4, !tbaa !5
  %y164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %150 = load i32, i32* %y164, align 4, !tbaa !30
  %add165 = add nsw i32 %149, %150
  %call166 = call i32 @fixed_mult_quo(i32 %147, i32 %148, i32 %add165) #6
  store i32 %call166, i32* %flat, align 4, !tbaa !5
  %151 = load i32, i32* %x0, align 4, !tbaa !5
  %152 = load i32, i32* %y0, align 4, !tbaa !5
  %153 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %154 = load i32, i32* %flat, align 4, !tbaa !5
  %call167 = call i32 @gx_curve_log2_samples(i32 %151, i32 %152, %struct.curve_segment* %153, i32 %154) #6
  store i32 %call167, i32* %k, align 4, !tbaa !5
  br label %if.end.169

if.else.168:                                      ; preds = %if.else.160
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.168, %if.then.163
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.155
  br label %if.end.185

if.else.171:                                      ; preds = %lor.lhs.false
  %155 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  %156 = load i32, i32* %ex, align 4, !tbaa !5
  %157 = load i32, i32* %ex, align 4, !tbaa !5
  %x172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 0
  %158 = load i32, i32* %x172, align 4, !tbaa !27
  %add173 = add nsw i32 %157, %158
  %call174 = call i32 @fixed_mult_quo(i32 %155, i32 %156, i32 %add173) #6
  store i32 %call174, i32* %flat_x, align 4, !tbaa !5
  %159 = load i32, i32* %fixed_flatness.addr, align 4, !tbaa !5
  %160 = load i32, i32* %ey, align 4, !tbaa !5
  %161 = load i32, i32* %ey, align 4, !tbaa !5
  %y175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %expansion, i32 0, i32 1
  %162 = load i32, i32* %y175, align 4, !tbaa !30
  %add176 = add nsw i32 %161, %162
  %call177 = call i32 @fixed_mult_quo(i32 %159, i32 %160, i32 %add176) #6
  store i32 %call177, i32* %flat_y, align 4, !tbaa !5
  %163 = load i32, i32* %flat_x, align 4, !tbaa !5
  %164 = load i32, i32* %flat_y, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %163, %164
  br i1 %cmp178, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %if.else.171
  %165 = load i32, i32* %flat_x, align 4, !tbaa !5
  br label %cond.end.182

cond.false.181:                                   ; preds = %if.else.171
  %166 = load i32, i32* %flat_y, align 4, !tbaa !5
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.180
  %cond183 = phi i32 [ %165, %cond.true.180 ], [ %166, %cond.false.181 ]
  store i32 %cond183, i32* %flat, align 4, !tbaa !5
  %167 = load i32, i32* %x0, align 4, !tbaa !5
  %168 = load i32, i32* %y0, align 4, !tbaa !5
  %169 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %170 = load i32, i32* %flat, align 4, !tbaa !5
  %call184 = call i32 @gx_curve_log2_samples(i32 %167, i32 %168, %struct.curve_segment* %169, i32 %170) #6
  store i32 %call184, i32* %k, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %cond.end.182, %if.end.170
  %171 = bitcast i32* %flat_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %flat_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %ex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %max23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %min23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %max01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %min01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  br label %if.end.188

if.else.186:                                      ; preds = %if.else.55
  %179 = load i32, i32* %x0, align 4, !tbaa !5
  %180 = load i32, i32* %y0, align 4, !tbaa !5
  %181 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %182 = load i32, i32* %flat, align 4, !tbaa !5
  %call187 = call i32 @gx_curve_log2_samples(i32 %179, i32 %180, %struct.curve_segment* %181, i32 %182) #6
  store i32 %call187, i32* %k, align 4, !tbaa !5
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.186, %if.end.185
  %183 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and189 = and i32 %183, 2
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then.191, label %if.else.310

if.then.191:                                      ; preds = %if.end.188
  %184 = bitcast %struct.segment_s** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %184) #1
  %185 = bitcast %struct.segment_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  %186 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %187 = load i32, i32* %x0, align 4, !tbaa !5
  %188 = load i32, i32* %y0, align 4, !tbaa !5
  %189 = load i32, i32* %notes59, align 4, !tbaa !7
  %call192 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %186, i32 %187, i32 %188, i32 %189) #6
  store i32 %call192, i32* %code, align 4, !tbaa !5
  %190 = load i32, i32* %code, align 4, !tbaa !5
  %cmp193 = icmp slt i32 %190, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.191
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.196:                                       ; preds = %if.then.191
  br label %do.body.197

do.body.197:                                      ; preds = %if.end.196
  br label %do.cond.198

do.cond.198:                                      ; preds = %do.body.197
  br label %do.end.199

do.end.199:                                       ; preds = %do.cond.198
  %191 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments200 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %191, i32 0, i32 3
  %192 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments200, align 8, !tbaa !31
  %contents201 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %192, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents201, i32 0, i32 1
  %193 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !52
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %193, i32 0, i32 5
  %194 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !53
  store %struct.segment_s* %194, %struct.segment_s** %start, align 8, !tbaa !1
  %195 = load i32, i32* %notes59, align 4, !tbaa !7
  %or = or i32 %195, 1
  store i32 %or, i32* %notes59, align 4, !tbaa !7
  %196 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %197 = bitcast %struct.curve_segment* %cseg to i8*
  %198 = bitcast %struct.curve_segment* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 48, i32 8, i1 false), !tbaa.struct !56
  %199 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %200 = load i32, i32* %k, align 4, !tbaa !5
  %201 = load i32, i32* %notes59, align 4, !tbaa !7
  %call202 = call i32 @gx_subdivide_curve(%struct.gx_path_s* %199, i32 %200, %struct.curve_segment* %cseg, i32 %201) #6
  store i32 %call202, i32* %code, align 4, !tbaa !5
  %202 = load i32, i32* %code, align 4, !tbaa !5
  %cmp203 = icmp slt i32 %202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %do.end.199
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.206:                                       ; preds = %do.end.199
  %203 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments207 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %203, i32 0, i32 3
  %204 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments207, align 8, !tbaa !31
  %contents208 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %204, i32 0, i32 1
  %subpath_current209 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents208, i32 0, i32 1
  %205 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current209, align 8, !tbaa !52
  %last210 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %205, i32 0, i32 5
  %206 = load %struct.segment_s*, %struct.segment_s** %last210, align 8, !tbaa !53
  store %struct.segment_s* %206, %struct.segment_s** %end, align 8, !tbaa !1
  br label %do.body.211

do.body.211:                                      ; preds = %if.end.206
  br label %do.cond.212

do.cond.212:                                      ; preds = %do.body.211
  br label %do.end.213

do.end.213:                                       ; preds = %do.cond.212
  %207 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %208 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position214 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %208, i32 0, i32 14
  %x215 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position214, i32 0, i32 0
  %209 = load i32, i32* %x215, align 4, !tbaa !50
  %210 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position216 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %210, i32 0, i32 14
  %y217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position216, i32 0, i32 1
  %211 = load i32, i32* %y217, align 4, !tbaa !51
  %212 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes218 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %212, i32 0, i32 3
  %213 = load i16, i16* %notes218, align 2, !tbaa !49
  %conv219 = zext i16 %213 to i32
  %or220 = or i32 %conv219, 1
  %call221 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %207, i32 %209, i32 %211, i32 %or220) #6
  store i32 %call221, i32* %code, align 4, !tbaa !5
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %do.end.213
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.225:                                       ; preds = %do.end.213
  %214 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %214, i32 0, i32 1
  %215 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !58
  %pt226 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %215, i32 0, i32 4
  %x227 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt226, i32 0, i32 0
  %216 = load i32, i32* %x227, align 4, !tbaa !40
  %217 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1228 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %217, i32 0, i32 5
  %x229 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1228, i32 0, i32 0
  %218 = load i32, i32* %x229, align 4, !tbaa !42
  %cmp230 = icmp ne i32 %216, %218
  br i1 %cmp230, label %if.then.240, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %if.end.225
  %219 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next233 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %219, i32 0, i32 1
  %220 = load %struct.segment_s*, %struct.segment_s** %next233, align 8, !tbaa !58
  %pt234 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %220, i32 0, i32 4
  %y235 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt234, i32 0, i32 1
  %221 = load i32, i32* %y235, align 4, !tbaa !41
  %222 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1236 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %222, i32 0, i32 5
  %y237 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1236, i32 0, i32 1
  %223 = load i32, i32* %y237, align 4, !tbaa !44
  %cmp238 = icmp ne i32 %221, %223
  br i1 %cmp238, label %if.then.240, label %if.else.243

if.then.240:                                      ; preds = %lor.lhs.false.232, %if.end.225
  %224 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %225 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next241 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %225, i32 0, i32 1
  %226 = load %struct.segment_s*, %struct.segment_s** %next241, align 8, !tbaa !58
  %227 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1242 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %227, i32 0, i32 5
  call void @adjust_point_to_tangent(%struct.segment_s* %224, %struct.segment_s* %226, %struct.gs_fixed_point_s* %p1242) #6
  br label %if.end.266

if.else.243:                                      ; preds = %lor.lhs.false.232
  %228 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next244 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %228, i32 0, i32 1
  %229 = load %struct.segment_s*, %struct.segment_s** %next244, align 8, !tbaa !58
  %pt245 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %229, i32 0, i32 4
  %x246 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt245, i32 0, i32 0
  %230 = load i32, i32* %x246, align 4, !tbaa !40
  %231 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2247 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %231, i32 0, i32 6
  %x248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2247, i32 0, i32 0
  %232 = load i32, i32* %x248, align 4, !tbaa !45
  %cmp249 = icmp ne i32 %230, %232
  br i1 %cmp249, label %if.then.259, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %if.else.243
  %233 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next252 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %233, i32 0, i32 1
  %234 = load %struct.segment_s*, %struct.segment_s** %next252, align 8, !tbaa !58
  %pt253 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %234, i32 0, i32 4
  %y254 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt253, i32 0, i32 1
  %235 = load i32, i32* %y254, align 4, !tbaa !41
  %236 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2255 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %236, i32 0, i32 6
  %y256 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2255, i32 0, i32 1
  %237 = load i32, i32* %y256, align 4, !tbaa !46
  %cmp257 = icmp ne i32 %235, %237
  br i1 %cmp257, label %if.then.259, label %if.else.262

if.then.259:                                      ; preds = %lor.lhs.false.251, %if.else.243
  %238 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %239 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next260 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %239, i32 0, i32 1
  %240 = load %struct.segment_s*, %struct.segment_s** %next260, align 8, !tbaa !58
  %241 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2261 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %241, i32 0, i32 6
  call void @adjust_point_to_tangent(%struct.segment_s* %238, %struct.segment_s* %240, %struct.gs_fixed_point_s* %p2261) #6
  br label %if.end.265

if.else.262:                                      ; preds = %lor.lhs.false.251
  %242 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %243 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %next263 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %243, i32 0, i32 1
  %244 = load %struct.segment_s*, %struct.segment_s** %next263, align 8, !tbaa !58
  %245 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %245, i32 0, i32 0
  %246 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !59
  %pt264 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %246, i32 0, i32 4
  call void @adjust_point_to_tangent(%struct.segment_s* %242, %struct.segment_s* %244, %struct.gs_fixed_point_s* %pt264) #6
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.262, %if.then.259
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.240
  %247 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev267 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %247, i32 0, i32 0
  %248 = load %struct.segment_s*, %struct.segment_s** %prev267, align 8, !tbaa !59
  %pt268 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %248, i32 0, i32 4
  %x269 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt268, i32 0, i32 0
  %249 = load i32, i32* %x269, align 4, !tbaa !40
  %250 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2270 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %250, i32 0, i32 6
  %x271 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2270, i32 0, i32 0
  %251 = load i32, i32* %x271, align 4, !tbaa !45
  %cmp272 = icmp ne i32 %249, %251
  br i1 %cmp272, label %if.then.282, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %if.end.266
  %252 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev275 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %252, i32 0, i32 0
  %253 = load %struct.segment_s*, %struct.segment_s** %prev275, align 8, !tbaa !59
  %pt276 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %253, i32 0, i32 4
  %y277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt276, i32 0, i32 1
  %254 = load i32, i32* %y277, align 4, !tbaa !41
  %255 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2278 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %255, i32 0, i32 6
  %y279 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2278, i32 0, i32 1
  %256 = load i32, i32* %y279, align 4, !tbaa !46
  %cmp280 = icmp ne i32 %254, %256
  br i1 %cmp280, label %if.then.282, label %if.else.285

if.then.282:                                      ; preds = %lor.lhs.false.274, %if.end.266
  %257 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %258 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev283 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %258, i32 0, i32 0
  %259 = load %struct.segment_s*, %struct.segment_s** %prev283, align 8, !tbaa !59
  %260 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2284 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %260, i32 0, i32 6
  call void @adjust_point_to_tangent(%struct.segment_s* %257, %struct.segment_s* %259, %struct.gs_fixed_point_s* %p2284) #6
  br label %if.end.308

if.else.285:                                      ; preds = %lor.lhs.false.274
  %261 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev286 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %261, i32 0, i32 0
  %262 = load %struct.segment_s*, %struct.segment_s** %prev286, align 8, !tbaa !59
  %pt287 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %262, i32 0, i32 4
  %x288 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt287, i32 0, i32 0
  %263 = load i32, i32* %x288, align 4, !tbaa !40
  %264 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1289 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %264, i32 0, i32 5
  %x290 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1289, i32 0, i32 0
  %265 = load i32, i32* %x290, align 4, !tbaa !42
  %cmp291 = icmp ne i32 %263, %265
  br i1 %cmp291, label %if.then.301, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %if.else.285
  %266 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev294 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %266, i32 0, i32 0
  %267 = load %struct.segment_s*, %struct.segment_s** %prev294, align 8, !tbaa !59
  %pt295 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %267, i32 0, i32 4
  %y296 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt295, i32 0, i32 1
  %268 = load i32, i32* %y296, align 4, !tbaa !41
  %269 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1297 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %269, i32 0, i32 5
  %y298 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1297, i32 0, i32 1
  %270 = load i32, i32* %y298, align 4, !tbaa !44
  %cmp299 = icmp ne i32 %268, %270
  br i1 %cmp299, label %if.then.301, label %if.else.304

if.then.301:                                      ; preds = %lor.lhs.false.293, %if.else.285
  %271 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %272 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev302 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %272, i32 0, i32 0
  %273 = load %struct.segment_s*, %struct.segment_s** %prev302, align 8, !tbaa !59
  %274 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1303 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %274, i32 0, i32 5
  call void @adjust_point_to_tangent(%struct.segment_s* %271, %struct.segment_s* %273, %struct.gs_fixed_point_s* %p1303) #6
  br label %if.end.307

if.else.304:                                      ; preds = %lor.lhs.false.293
  %275 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %276 = load %struct.segment_s*, %struct.segment_s** %end, align 8, !tbaa !1
  %prev305 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %276, i32 0, i32 0
  %277 = load %struct.segment_s*, %struct.segment_s** %prev305, align 8, !tbaa !59
  %278 = load %struct.segment_s*, %struct.segment_s** %start, align 8, !tbaa !1
  %pt306 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %278, i32 0, i32 4
  call void @adjust_point_to_tangent(%struct.segment_s* %275, %struct.segment_s* %277, %struct.gs_fixed_point_s* %pt306) #6
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304, %if.then.301
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.282
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.308, %if.then.224, %if.then.205, %if.then.195
  %279 = bitcast %struct.segment_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast %struct.segment_s** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.313 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.312

if.else.310:                                      ; preds = %if.end.188
  %281 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %282 = bitcast %struct.curve_segment* %cseg to i8*
  %283 = bitcast %struct.curve_segment* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %282, i8* %283, i64 48, i32 8, i1 false), !tbaa.struct !56
  %284 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %285 = load i32, i32* %k, align 4, !tbaa !5
  %286 = load i32, i32* %notes59, align 4, !tbaa !7
  %call311 = call i32 @gx_subdivide_curve(%struct.gx_path_s* %284, i32 %285, %struct.curve_segment* %cseg, i32 %286) #6
  store i32 %call311, i32* %code, align 4, !tbaa !5
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.310, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.313

cleanup.313:                                      ; preds = %if.end.312, %cleanup
  %287 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast %struct.curve_segment* %cseg to i8*
  call void @llvm.lifetime.end(i64 48, i8* %288) #1
  %289 = bitcast i32* %notes59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %cleanup.dest.318 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.318, label %cleanup.321 [
    i32 0, label %cleanup.cont.319
  ]

cleanup.cont.319:                                 ; preds = %cleanup.313
  br label %if.end.320

if.end.320:                                       ; preds = %cleanup.cont.319, %if.end.54
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %if.end.320, %cleanup.313
  %292 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  br label %sw.epilog

sw.bb.322:                                        ; preds = %while.body
  %293 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %294 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %call323 = call i32 @break_line_if_long(%struct.gx_path_s* %293, %struct.segment_s* %294) #6
  store i32 %call323, i32* %code, align 4, !tbaa !5
  %295 = load i32, i32* %code, align 4, !tbaa !5
  %cmp324 = icmp slt i32 %295, 0
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %sw.bb.322
  br label %sw.epilog

if.end.327:                                       ; preds = %sw.bb.322
  %296 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %297 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt328 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %297, i32 0, i32 4
  %x329 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt328, i32 0, i32 0
  %298 = load i32, i32* %x329, align 4, !tbaa !40
  %299 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt330 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %299, i32 0, i32 4
  %y331 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt330, i32 0, i32 1
  %300 = load i32, i32* %y331, align 4, !tbaa !41
  %301 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes332 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %301, i32 0, i32 3
  %302 = load i16, i16* %notes332, align 2, !tbaa !49
  %conv333 = zext i16 %302 to i32
  %call334 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %296, i32 %298, i32 %300, i32 %conv333) #6
  store i32 %call334, i32* %code, align 4, !tbaa !5
  br label %do.body.335

do.body.335:                                      ; preds = %if.end.327
  br label %do.cond.336

do.cond.336:                                      ; preds = %do.body.335
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  br label %sw.epilog

sw.bb.338:                                        ; preds = %while.body
  %303 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %304 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %call339 = call i32 @break_gap_if_long(%struct.gx_path_s* %303, %struct.segment_s* %304) #6
  store i32 %call339, i32* %code, align 4, !tbaa !5
  %305 = load i32, i32* %code, align 4, !tbaa !5
  %cmp340 = icmp slt i32 %305, 0
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %sw.bb.338
  br label %sw.epilog

if.end.343:                                       ; preds = %sw.bb.338
  %306 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %307 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt344 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %307, i32 0, i32 4
  %x345 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt344, i32 0, i32 0
  %308 = load i32, i32* %x345, align 4, !tbaa !40
  %309 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt346 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %309, i32 0, i32 4
  %y347 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt346, i32 0, i32 1
  %310 = load i32, i32* %y347, align 4, !tbaa !41
  %311 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes348 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %311, i32 0, i32 3
  %312 = load i16, i16* %notes348, align 2, !tbaa !49
  %conv349 = zext i16 %312 to i32
  %call350 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %306, i32 %308, i32 %310, i32 %conv349) #6
  store i32 %call350, i32* %code, align 4, !tbaa !5
  br label %do.body.351

do.body.351:                                      ; preds = %if.end.343
  br label %do.cond.352

do.cond.352:                                      ; preds = %do.body.351
  br label %do.end.353

do.end.353:                                       ; preds = %do.cond.352
  br label %sw.epilog

sw.bb.354:                                        ; preds = %while.body
  %313 = bitcast %struct.dash_segment** %pd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  %314 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %315 = bitcast %struct.segment_s* %314 to %struct.dash_segment*
  store %struct.dash_segment* %315, %struct.dash_segment** %pd, align 8, !tbaa !1
  %316 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %317 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %pt355 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %317, i32 0, i32 4
  %x356 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt355, i32 0, i32 0
  %318 = load i32, i32* %x356, align 4, !tbaa !60
  %319 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %pt357 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %319, i32 0, i32 4
  %y358 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt357, i32 0, i32 1
  %320 = load i32, i32* %y358, align 4, !tbaa !62
  %321 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %tangent = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %321, i32 0, i32 5
  %x359 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent, i32 0, i32 0
  %322 = load i32, i32* %x359, align 4, !tbaa !63
  %323 = load %struct.dash_segment*, %struct.dash_segment** %pd, align 8, !tbaa !1
  %tangent360 = getelementptr inbounds %struct.dash_segment, %struct.dash_segment* %323, i32 0, i32 5
  %y361 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %tangent360, i32 0, i32 1
  %324 = load i32, i32* %y361, align 4, !tbaa !64
  %325 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes362 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %325, i32 0, i32 3
  %326 = load i16, i16* %notes362, align 2, !tbaa !49
  %conv363 = zext i16 %326 to i32
  %call364 = call i32 @gx_path_add_dash_notes(%struct.gx_path_s* %316, i32 %318, i32 %320, i32 %322, i32 %324, i32 %conv363) #6
  store i32 %call364, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  %327 = bitcast %struct.dash_segment** %pd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  br label %sw.epilog

sw.bb.366:                                        ; preds = %while.body
  %328 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %329 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %call367 = call i32 @break_line_if_long(%struct.gx_path_s* %328, %struct.segment_s* %329) #6
  store i32 %call367, i32* %code, align 4, !tbaa !5
  %330 = load i32, i32* %code, align 4, !tbaa !5
  %cmp368 = icmp slt i32 %330, 0
  br i1 %cmp368, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %sw.bb.366
  br label %sw.epilog

if.end.371:                                       ; preds = %sw.bb.366
  %331 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call372 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %331, i32 0) #6
  store i32 %call372, i32* %code, align 4, !tbaa !5
  br label %do.body.373

do.body.373:                                      ; preds = %if.end.371
  br label %do.cond.374

do.cond.374:                                      ; preds = %do.body.373
  br label %do.end.375

do.end.375:                                       ; preds = %do.cond.374
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -28, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.375, %if.then.370, %sw.bb.354, %do.end.353, %if.then.342, %do.end.337, %if.then.326, %cleanup.321, %do.end.32
  %332 = load i32, i32* %code, align 4, !tbaa !5
  %cmp376 = icmp slt i32 %332, 0
  br i1 %cmp376, label %if.then.378, label %if.end.380

if.then.378:                                      ; preds = %sw.epilog
  %333 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call379 = call i32 @gx_path_new(%struct.gx_path_s* %333) #6
  %334 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %334, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

if.end.380:                                       ; preds = %sw.epilog
  %335 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next381 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %335, i32 0, i32 1
  %336 = load %struct.segment_s*, %struct.segment_s** %next381, align 8, !tbaa !58
  store %struct.segment_s* %336, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %337 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %337, i32 0, i32 8
  %338 = load i8, i8* %state_flags, align 1, !tbaa !65
  %conv382 = zext i8 %338 to i32
  %and383 = and i32 %conv382, -9
  %cmp384 = icmp eq i32 %and383, 3
  br i1 %cmp384, label %if.then.386, label %if.end.392

if.then.386:                                      ; preds = %while.end
  %339 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %340 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position387 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %340, i32 0, i32 14
  %x388 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position387, i32 0, i32 0
  %341 = load i32, i32* %x388, align 4, !tbaa !50
  %342 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position389 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %342, i32 0, i32 14
  %y390 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position389, i32 0, i32 1
  %343 = load i32, i32* %y390, align 4, !tbaa !51
  %call391 = call i32 @gx_path_add_point(%struct.gx_path_s* %339, i32 %341, i32 %343) #6
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.386, %while.end
  %344 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %344, i32 0, i32 9
  %345 = load i8, i8* %bbox_set, align 1, !tbaa !66
  %tobool393 = icmp ne i8 %345, 0
  br i1 %tobool393, label %if.then.394, label %if.end.484

if.then.394:                                      ; preds = %if.end.392
  %346 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set395 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %346, i32 0, i32 9
  %347 = load i8, i8* %bbox_set395, align 1, !tbaa !66
  %tobool396 = icmp ne i8 %347, 0
  br i1 %tobool396, label %if.then.397, label %if.else.479

if.then.397:                                      ; preds = %if.then.394
  %348 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %348, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x398 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %349 = load i32, i32* %x398, align 4, !tbaa !67
  %350 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox399 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %350, i32 0, i32 5
  %p400 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox399, i32 0, i32 0
  %x401 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p400, i32 0, i32 0
  %351 = load i32, i32* %x401, align 4, !tbaa !67
  %cmp402 = icmp slt i32 %349, %351
  br i1 %cmp402, label %cond.true.404, label %cond.false.408

cond.true.404:                                    ; preds = %if.then.397
  %352 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox405 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %352, i32 0, i32 5
  %p406 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox405, i32 0, i32 0
  %x407 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p406, i32 0, i32 0
  %353 = load i32, i32* %x407, align 4, !tbaa !67
  br label %cond.end.412

cond.false.408:                                   ; preds = %if.then.397
  %354 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox409 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %354, i32 0, i32 5
  %p410 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox409, i32 0, i32 0
  %x411 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p410, i32 0, i32 0
  %355 = load i32, i32* %x411, align 4, !tbaa !67
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.408, %cond.true.404
  %cond413 = phi i32 [ %353, %cond.true.404 ], [ %355, %cond.false.408 ]
  %356 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox414 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %356, i32 0, i32 5
  %p415 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox414, i32 0, i32 0
  %x416 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p415, i32 0, i32 0
  store i32 %cond413, i32* %x416, align 4, !tbaa !67
  %357 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox417 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %357, i32 0, i32 5
  %p418 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox417, i32 0, i32 0
  %y419 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p418, i32 0, i32 1
  %358 = load i32, i32* %y419, align 4, !tbaa !68
  %359 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox420 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %359, i32 0, i32 5
  %p421 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox420, i32 0, i32 0
  %y422 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p421, i32 0, i32 1
  %360 = load i32, i32* %y422, align 4, !tbaa !68
  %cmp423 = icmp slt i32 %358, %360
  br i1 %cmp423, label %cond.true.425, label %cond.false.429

cond.true.425:                                    ; preds = %cond.end.412
  %361 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox426 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %361, i32 0, i32 5
  %p427 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox426, i32 0, i32 0
  %y428 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p427, i32 0, i32 1
  %362 = load i32, i32* %y428, align 4, !tbaa !68
  br label %cond.end.433

cond.false.429:                                   ; preds = %cond.end.412
  %363 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox430 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %363, i32 0, i32 5
  %p431 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox430, i32 0, i32 0
  %y432 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p431, i32 0, i32 1
  %364 = load i32, i32* %y432, align 4, !tbaa !68
  br label %cond.end.433

cond.end.433:                                     ; preds = %cond.false.429, %cond.true.425
  %cond434 = phi i32 [ %362, %cond.true.425 ], [ %364, %cond.false.429 ]
  %365 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox435 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %365, i32 0, i32 5
  %p436 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox435, i32 0, i32 0
  %y437 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p436, i32 0, i32 1
  store i32 %cond434, i32* %y437, align 4, !tbaa !68
  %366 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox438 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %366, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox438, i32 0, i32 1
  %x439 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %367 = load i32, i32* %x439, align 4, !tbaa !69
  %368 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox440 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %368, i32 0, i32 5
  %q441 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox440, i32 0, i32 1
  %x442 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q441, i32 0, i32 0
  %369 = load i32, i32* %x442, align 4, !tbaa !69
  %cmp443 = icmp sgt i32 %367, %369
  br i1 %cmp443, label %cond.true.445, label %cond.false.449

cond.true.445:                                    ; preds = %cond.end.433
  %370 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox446 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %370, i32 0, i32 5
  %q447 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox446, i32 0, i32 1
  %x448 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q447, i32 0, i32 0
  %371 = load i32, i32* %x448, align 4, !tbaa !69
  br label %cond.end.453

cond.false.449:                                   ; preds = %cond.end.433
  %372 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox450 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %372, i32 0, i32 5
  %q451 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox450, i32 0, i32 1
  %x452 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q451, i32 0, i32 0
  %373 = load i32, i32* %x452, align 4, !tbaa !69
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.449, %cond.true.445
  %cond454 = phi i32 [ %371, %cond.true.445 ], [ %373, %cond.false.449 ]
  %374 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox455 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %374, i32 0, i32 5
  %q456 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox455, i32 0, i32 1
  %x457 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q456, i32 0, i32 0
  store i32 %cond454, i32* %x457, align 4, !tbaa !69
  %375 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox458 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %375, i32 0, i32 5
  %q459 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox458, i32 0, i32 1
  %y460 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q459, i32 0, i32 1
  %376 = load i32, i32* %y460, align 4, !tbaa !70
  %377 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox461 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %377, i32 0, i32 5
  %q462 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox461, i32 0, i32 1
  %y463 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q462, i32 0, i32 1
  %378 = load i32, i32* %y463, align 4, !tbaa !70
  %cmp464 = icmp sgt i32 %376, %378
  br i1 %cmp464, label %cond.true.466, label %cond.false.470

cond.true.466:                                    ; preds = %cond.end.453
  %379 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox467 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %379, i32 0, i32 5
  %q468 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox467, i32 0, i32 1
  %y469 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q468, i32 0, i32 1
  %380 = load i32, i32* %y469, align 4, !tbaa !70
  br label %cond.end.474

cond.false.470:                                   ; preds = %cond.end.453
  %381 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox471 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %381, i32 0, i32 5
  %q472 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox471, i32 0, i32 1
  %y473 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q472, i32 0, i32 1
  %382 = load i32, i32* %y473, align 4, !tbaa !70
  br label %cond.end.474

cond.end.474:                                     ; preds = %cond.false.470, %cond.true.466
  %cond475 = phi i32 [ %380, %cond.true.466 ], [ %382, %cond.false.470 ]
  %383 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox476 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %383, i32 0, i32 5
  %q477 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox476, i32 0, i32 1
  %y478 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q477, i32 0, i32 1
  store i32 %cond475, i32* %y478, align 4, !tbaa !70
  br label %if.end.483

if.else.479:                                      ; preds = %if.then.394
  %384 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set480 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %384, i32 0, i32 9
  store i8 1, i8* %bbox_set480, align 1, !tbaa !66
  %385 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox481 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %385, i32 0, i32 5
  %386 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %bbox482 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %386, i32 0, i32 5
  %387 = bitcast %struct.gs_fixed_rect_s* %bbox481 to i8*
  %388 = bitcast %struct.gs_fixed_rect_s* %bbox482 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %387, i8* %388, i64 16, i32 4, i1 false), !tbaa.struct !71
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.479, %cond.end.474
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.end.392
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.485

cleanup.485:                                      ; preds = %if.end.484, %if.then.378, %if.then
  %389 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast %struct.gs_fixed_point_s* %expansion to i8*
  call void @llvm.lifetime.end(i64 8, i8* %390) #1
  %391 = bitcast i32* %flat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %392) #1
  %393 = load i32, i32* %retval
  ret i32 %393
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gx_path_unshare(%struct.gx_path_s*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_curve_monotonize(%struct.gx_path_s* %ppath, %struct.curve_segment* %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pc.addr = alloca %struct.curve_segment*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %notes = alloca i32, align 4
  %t = alloca [4 x double], align 16
  %tt = alloca double, align 8
  %tp = alloca double, align 8
  %c = alloca [4 x i32], align 16
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ax = alloca i32, align 4
  %bx = alloca i32, align 4
  %cx = alloca i32, align 4
  %ay = alloca i32, align 4
  %by = alloca i32, align 4
  %cy = alloca i32, align 4
  %v01 = alloca i32, align 4
  %v12 = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %qx = alloca i32, align 4
  %qy = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %delta = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %w = alloca i32, align 4
  %v = alloca double, align 8
  %ti = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %omt = alloca double, align 8
  %omt2 = alloca double, align 8
  %omt3 = alloca double, align 8
  %x222 = alloca double, align 8
  %y244 = alloca double, align 8
  %ddx = alloca double, align 8
  %ddy = alloca double, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !50
  store i32 %2, i32* %x0, align 4, !tbaa !5
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !51
  store i32 %5, i32* %y0, align 4, !tbaa !5
  %6 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %notes2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %7, i32 0, i32 3
  %8 = load i16, i16* %notes2, align 2, !tbaa !72
  %conv = zext i16 %8 to i32
  store i32 %conv, i32* %notes, align 4, !tbaa !7
  %9 = bitcast [4 x double]* %t to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast double* %tt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store double 1.000000e+00, double* %tt, align 8, !tbaa !24
  %11 = bitcast double* %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [4 x i32]* %c to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  %19 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %v01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %v12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast double* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store double 1.000000e-07, double* %delta, align 8, !tbaa !24
  %36 = load i32, i32* %x0, align 4, !tbaa !5
  %37 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %37, i32 0, i32 5
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %38 = load i32, i32* %x3, align 4, !tbaa !42
  %39 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %39, i32 0, i32 6
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %40 = load i32, i32* %x4, align 4, !tbaa !45
  %41 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %41, i32 0, i32 4
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %42 = load i32, i32* %x5, align 4, !tbaa !47
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i32 0
  %call = call i32 @gx_curve_monotonic_points(i32 %36, i32 %38, i32 %40, i32 %42, double* %arraydecay) #6
  store i32 %call, i32* %n0, align 4, !tbaa !5
  %43 = load i32, i32* %y0, align 4, !tbaa !5
  %44 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %44, i32 0, i32 5
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p16, i32 0, i32 1
  %45 = load i32, i32* %y7, align 4, !tbaa !44
  %46 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p28 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %46, i32 0, i32 6
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p28, i32 0, i32 1
  %47 = load i32, i32* %y9, align 4, !tbaa !46
  %48 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt10 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %48, i32 0, i32 4
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt10, i32 0, i32 1
  %49 = load i32, i32* %y11, align 4, !tbaa !48
  %arraydecay12 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i32 0
  %50 = load i32, i32* %n0, align 4, !tbaa !5
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds double, double* %arraydecay12, i64 %idx.ext
  %call13 = call i32 @gx_curve_monotonic_points(i32 %43, i32 %45, i32 %47, i32 %49, double* %add.ptr) #6
  store i32 %call13, i32* %n1, align 4, !tbaa !5
  %51 = load i32, i32* %n0, align 4, !tbaa !5
  %52 = load i32, i32* %n1, align 4, !tbaa !5
  %add = add nsw i32 %51, %52
  store i32 %add, i32* %n, align 4, !tbaa !5
  %53 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %55 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p115 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %55, i32 0, i32 5
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p115, i32 0, i32 0
  %56 = load i32, i32* %x16, align 4, !tbaa !42
  %57 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p117 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %57, i32 0, i32 5
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p117, i32 0, i32 1
  %58 = load i32, i32* %y18, align 4, !tbaa !44
  %59 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p219 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %59, i32 0, i32 6
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p219, i32 0, i32 0
  %60 = load i32, i32* %x20, align 4, !tbaa !45
  %61 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p221 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %61, i32 0, i32 6
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p221, i32 0, i32 1
  %62 = load i32, i32* %y22, align 4, !tbaa !46
  %63 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt23 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %63, i32 0, i32 4
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt23, i32 0, i32 0
  %64 = load i32, i32* %x24, align 4, !tbaa !47
  %65 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt25 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %65, i32 0, i32 4
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 1
  %66 = load i32, i32* %y26, align 4, !tbaa !48
  %67 = load i32, i32* %notes, align 4, !tbaa !7
  %call27 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %67) #6
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.453

if.end:                                           ; preds = %entry
  %68 = load i32, i32* %n0, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %68, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end
  %69 = load i32, i32* %n0, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %69, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 1
  store i32 1, i32* %arrayidx35, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %70 = load i32, i32* %n1, align 4, !tbaa !5
  %cmp37 = icmp sgt i32 %70, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %71 = load i32, i32* %n0, align 4, !tbaa !5
  %idxprom = sext i32 %71 to i64
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom
  store i32 2, i32* %arrayidx40, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %72 = load i32, i32* %n1, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %72, 1
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.41
  %73 = load i32, i32* %n0, align 4, !tbaa !5
  %add45 = add nsw i32 %73, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom46
  store i32 2, i32* %arrayidx47, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.41
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.48
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %75 = load i32, i32* %n, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %74, %75
  br i1 %cmp49, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %add51 = add nsw i32 %76, 1
  store i32 %add51, i32* %j, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %for.body
  %77 = load i32, i32* %j, align 4, !tbaa !5
  %78 = load i32, i32* %n, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %77, %78
  br i1 %cmp53, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %79 to i64
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom56
  %80 = load double, double* %arrayidx57, align 8, !tbaa !24
  %81 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %81 to i64
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom58
  %82 = load double, double* %arrayidx59, align 8, !tbaa !24
  %cmp60 = fcmp ogt double %80, %82
  br i1 %cmp60, label %if.then.62, label %if.end.79

if.then.62:                                       ; preds = %for.body.55
  %83 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %85 to i64
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom63
  %86 = load double, double* %arrayidx64, align 8, !tbaa !24
  store double %86, double* %v, align 8, !tbaa !24
  %87 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %87 to i64
  %arrayidx66 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom65
  %88 = load double, double* %arrayidx66, align 8, !tbaa !24
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = sext i32 %89 to i64
  %arrayidx68 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom67
  store double %88, double* %arrayidx68, align 8, !tbaa !24
  %90 = load double, double* %v, align 8, !tbaa !24
  %91 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %91 to i64
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom69
  store double %90, double* %arrayidx70, align 8, !tbaa !24
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = sext i32 %92 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom71
  %93 = load i32, i32* %arrayidx72, align 4, !tbaa !5
  store i32 %93, i32* %w, align 4, !tbaa !5
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom73 = sext i32 %94 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom73
  %95 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %96 to i64
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom75
  store i32 %95, i32* %arrayidx76, align 4, !tbaa !5
  %97 = load i32, i32* %w, align 4, !tbaa !5
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %98 to i64
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom77
  store i32 %97, i32* %arrayidx78, align 4, !tbaa !5
  %99 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.62, %for.body.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %102, 1
  store i32 %inc81, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.93, %for.end.82
  %103 = load i32, i32* %k, align 4, !tbaa !5
  %104 = load i32, i32* %n, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %103, %104
  br i1 %cmp84, label %for.body.86, label %for.end.95

for.body.86:                                      ; preds = %for.cond.83
  %105 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %105 to i64
  %arrayidx88 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom87
  %106 = load double, double* %arrayidx88, align 8, !tbaa !24
  %cmp89 = fcmp oge double %106, 1.000000e-07
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.body.86
  br label %for.end.95

if.end.92:                                        ; preds = %for.body.86
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %107 = load i32, i32* %k, align 4, !tbaa !5
  %inc94 = add nsw i32 %107, 1
  store i32 %inc94, i32* %k, align 4, !tbaa !5
  br label %for.cond.83

for.end.95:                                       ; preds = %if.then.91, %for.cond.83
  %108 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %108, 1
  %idxprom96 = sext i32 %sub to i64
  %arrayidx97 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom96
  %109 = load double, double* %arrayidx97, align 8, !tbaa !24
  %cmp98 = fcmp ogt double %109, 9.999999e-01
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.end.95
  %110 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %for.end.95
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %add102 = add nsw i32 %111, 1
  store i32 %add102, i32* %i, align 4, !tbaa !5
  %112 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %112, i32* %j, align 4, !tbaa !5
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.153, %if.end.101
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %114 = load i32, i32* %n, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %113, %114
  br i1 %cmp104, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.103
  %115 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom106 = sext i32 %115 to i64
  %arrayidx107 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom106
  %116 = load double, double* %arrayidx107, align 8, !tbaa !24
  %cmp108 = fcmp olt double %116, 9.999999e-01
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.103
  %117 = phi i1 [ false, %for.cond.103 ], [ %cmp108, %land.rhs ]
  br i1 %117, label %for.body.110, label %for.end.155

for.body.110:                                     ; preds = %land.end
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %118 to i64
  %arrayidx112 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom111
  %119 = load double, double* %arrayidx112, align 8, !tbaa !24
  %120 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom113 = sext i32 %120 to i64
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom113
  %121 = load double, double* %arrayidx114, align 8, !tbaa !24
  %sub115 = fsub double %119, %121
  %cmp116 = fcmp olt double %sub115, 0.000000e+00
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.110
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %122 to i64
  %arrayidx119 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom118
  %123 = load double, double* %arrayidx119, align 8, !tbaa !24
  %124 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom120 = sext i32 %124 to i64
  %arrayidx121 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom120
  %125 = load double, double* %arrayidx121, align 8, !tbaa !24
  %sub122 = fsub double %123, %125
  %sub123 = fsub double -0.000000e+00, %sub122
  br label %cond.end

cond.false:                                       ; preds = %for.body.110
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %126 to i64
  %arrayidx125 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom124
  %127 = load double, double* %arrayidx125, align 8, !tbaa !24
  %128 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom126 = sext i32 %128 to i64
  %arrayidx127 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom126
  %129 = load double, double* %arrayidx127, align 8, !tbaa !24
  %sub128 = fsub double %127, %129
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub123, %cond.true ], [ %sub128, %cond.false ]
  %cmp129 = fcmp olt double %cond, 1.000000e-07
  br i1 %cmp129, label %if.then.131, label %if.else

if.then.131:                                      ; preds = %cond.end
  %130 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom132 = sext i32 %130 to i64
  %arrayidx133 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom132
  %131 = load double, double* %arrayidx133, align 8, !tbaa !24
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom134 = sext i32 %132 to i64
  %arrayidx135 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom134
  %133 = load double, double* %arrayidx135, align 8, !tbaa !24
  %add136 = fadd double %131, %133
  %div = fdiv double %add136, 2.000000e+00
  %134 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom137 = sext i32 %134 to i64
  %arrayidx138 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom137
  store double %div, double* %arrayidx138, align 8, !tbaa !24
  %135 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom139 = sext i32 %135 to i64
  %arrayidx140 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom139
  %136 = load i32, i32* %arrayidx140, align 4, !tbaa !5
  %137 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom141 = sext i32 %137 to i64
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom141
  %138 = load i32, i32* %arrayidx142, align 4, !tbaa !5
  %or = or i32 %138, %136
  store i32 %or, i32* %arrayidx142, align 4, !tbaa !5
  br label %if.end.152

if.else:                                          ; preds = %cond.end
  %139 = load i32, i32* %j, align 4, !tbaa !5
  %inc143 = add nsw i32 %139, 1
  store i32 %inc143, i32* %j, align 4, !tbaa !5
  %140 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom144 = sext i32 %140 to i64
  %arrayidx145 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom144
  %141 = load double, double* %arrayidx145, align 8, !tbaa !24
  %142 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom146 = sext i32 %142 to i64
  %arrayidx147 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom146
  store double %141, double* %arrayidx147, align 8, !tbaa !24
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom148 = sext i32 %143 to i64
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom148
  %144 = load i32, i32* %arrayidx149, align 4, !tbaa !5
  %145 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom150 = sext i32 %145 to i64
  %arrayidx151 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom150
  store i32 %144, i32* %arrayidx151, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.else, %if.then.131
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %inc154 = add nsw i32 %146, 1
  store i32 %inc154, i32* %i, align 4, !tbaa !5
  br label %for.cond.103

for.end.155:                                      ; preds = %land.end
  %147 = load i32, i32* %j, align 4, !tbaa !5
  %add156 = add nsw i32 %147, 1
  store i32 %add156, i32* %n, align 4, !tbaa !5
  %148 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1157 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %148, i32 0, i32 5
  %x158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1157, i32 0, i32 0
  %149 = load i32, i32* %x158, align 4, !tbaa !42
  %150 = load i32, i32* %x0, align 4, !tbaa !5
  %sub159 = sub nsw i32 %149, %150
  store i32 %sub159, i32* %v01, align 4, !tbaa !5
  %151 = load i32, i32* %v01, align 4, !tbaa !5
  %shl = shl i32 %151, 1
  %152 = load i32, i32* %v01, align 4, !tbaa !5
  %add160 = add nsw i32 %shl, %152
  store i32 %add160, i32* %cx, align 4, !tbaa !5
  %153 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2161 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %153, i32 0, i32 6
  %x162 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2161, i32 0, i32 0
  %154 = load i32, i32* %x162, align 4, !tbaa !45
  %155 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1163 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %155, i32 0, i32 5
  %x164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1163, i32 0, i32 0
  %156 = load i32, i32* %x164, align 4, !tbaa !42
  %sub165 = sub nsw i32 %154, %156
  store i32 %sub165, i32* %v12, align 4, !tbaa !5
  %157 = load i32, i32* %v12, align 4, !tbaa !5
  %shl166 = shl i32 %157, 1
  %158 = load i32, i32* %v12, align 4, !tbaa !5
  %add167 = add nsw i32 %shl166, %158
  %159 = load i32, i32* %cx, align 4, !tbaa !5
  %sub168 = sub nsw i32 %add167, %159
  store i32 %sub168, i32* %bx, align 4, !tbaa !5
  %160 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt169 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %160, i32 0, i32 4
  %x170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt169, i32 0, i32 0
  %161 = load i32, i32* %x170, align 4, !tbaa !47
  %162 = load i32, i32* %bx, align 4, !tbaa !5
  %sub171 = sub nsw i32 %161, %162
  %163 = load i32, i32* %cx, align 4, !tbaa !5
  %sub172 = sub nsw i32 %sub171, %163
  %164 = load i32, i32* %x0, align 4, !tbaa !5
  %sub173 = sub nsw i32 %sub172, %164
  store i32 %sub173, i32* %ax, align 4, !tbaa !5
  %165 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1174 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %165, i32 0, i32 5
  %y175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1174, i32 0, i32 1
  %166 = load i32, i32* %y175, align 4, !tbaa !44
  %167 = load i32, i32* %y0, align 4, !tbaa !5
  %sub176 = sub nsw i32 %166, %167
  store i32 %sub176, i32* %v01, align 4, !tbaa !5
  %168 = load i32, i32* %v01, align 4, !tbaa !5
  %shl177 = shl i32 %168, 1
  %169 = load i32, i32* %v01, align 4, !tbaa !5
  %add178 = add nsw i32 %shl177, %169
  store i32 %add178, i32* %cy, align 4, !tbaa !5
  %170 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2179 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %170, i32 0, i32 6
  %y180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2179, i32 0, i32 1
  %171 = load i32, i32* %y180, align 4, !tbaa !46
  %172 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1181 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %172, i32 0, i32 5
  %y182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1181, i32 0, i32 1
  %173 = load i32, i32* %y182, align 4, !tbaa !44
  %sub183 = sub nsw i32 %171, %173
  store i32 %sub183, i32* %v12, align 4, !tbaa !5
  %174 = load i32, i32* %v12, align 4, !tbaa !5
  %shl184 = shl i32 %174, 1
  %175 = load i32, i32* %v12, align 4, !tbaa !5
  %add185 = add nsw i32 %shl184, %175
  %176 = load i32, i32* %cy, align 4, !tbaa !5
  %sub186 = sub nsw i32 %add185, %176
  store i32 %sub186, i32* %by, align 4, !tbaa !5
  %177 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt187 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %177, i32 0, i32 4
  %y188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt187, i32 0, i32 1
  %178 = load i32, i32* %y188, align 4, !tbaa !48
  %179 = load i32, i32* %by, align 4, !tbaa !5
  %sub189 = sub nsw i32 %178, %179
  %180 = load i32, i32* %cy, align 4, !tbaa !5
  %sub190 = sub nsw i32 %sub189, %180
  %181 = load i32, i32* %y0, align 4, !tbaa !5
  %sub191 = sub nsw i32 %sub190, %181
  store i32 %sub191, i32* %ay, align 4, !tbaa !5
  %182 = load i32, i32* %ax, align 4, !tbaa !5
  %mul = mul nsw i32 %182, 3
  store i32 %mul, i32* %ax, align 4, !tbaa !5
  %183 = load i32, i32* %bx, align 4, !tbaa !5
  %mul192 = mul nsw i32 %183, 2
  store i32 %mul192, i32* %bx, align 4, !tbaa !5
  %184 = load i32, i32* %ay, align 4, !tbaa !5
  %mul193 = mul nsw i32 %184, 3
  store i32 %mul193, i32* %ay, align 4, !tbaa !5
  %185 = load i32, i32* %by, align 4, !tbaa !5
  %mul194 = mul nsw i32 %185, 2
  store i32 %mul194, i32* %by, align 4, !tbaa !5
  %186 = load i32, i32* %x0, align 4, !tbaa !5
  store i32 %186, i32* %px, align 4, !tbaa !5
  %187 = load i32, i32* %y0, align 4, !tbaa !5
  store i32 %187, i32* %py, align 4, !tbaa !5
  %188 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1195 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %188, i32 0, i32 5
  %x196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1195, i32 0, i32 0
  %189 = load i32, i32* %x196, align 4, !tbaa !42
  %190 = load i32, i32* %px, align 4, !tbaa !5
  %sub197 = sub nsw i32 %189, %190
  %conv198 = sitofp i32 %sub197 to double
  %arrayidx199 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 0
  %191 = load double, double* %arrayidx199, align 8, !tbaa !24
  %mul200 = fmul double %conv198, %191
  %add201 = fadd double %mul200, 5.000000e-01
  %conv202 = fptosi double %add201 to i32
  store i32 %conv202, i32* %qx, align 4, !tbaa !5
  %192 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1203 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %192, i32 0, i32 5
  %y204 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1203, i32 0, i32 1
  %193 = load i32, i32* %y204, align 4, !tbaa !44
  %194 = load i32, i32* %py, align 4, !tbaa !5
  %sub205 = sub nsw i32 %193, %194
  %conv206 = sitofp i32 %sub205 to double
  %arrayidx207 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 0
  %195 = load double, double* %arrayidx207, align 8, !tbaa !24
  %mul208 = fmul double %conv206, %195
  %add209 = fadd double %mul208, 5.000000e-01
  %conv210 = fptosi double %add209 to i32
  store i32 %conv210, i32* %qy, align 4, !tbaa !5
  store double 0.000000e+00, double* %tp, align 8, !tbaa !24
  %196 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %196, i32* %i, align 4, !tbaa !5
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.393, %for.end.155
  %197 = load i32, i32* %i, align 4, !tbaa !5
  %198 = load i32, i32* %n, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %197, %198
  br i1 %cmp212, label %for.body.214, label %for.end.395

for.body.214:                                     ; preds = %for.cond.211
  %199 = bitcast double* %ti to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom215 = sext i32 %200 to i64
  %arrayidx216 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom215
  %201 = load double, double* %arrayidx216, align 8, !tbaa !24
  store double %201, double* %ti, align 8, !tbaa !24
  %202 = bitcast double* %t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  %203 = load double, double* %ti, align 8, !tbaa !24
  %204 = load double, double* %ti, align 8, !tbaa !24
  %mul217 = fmul double %203, %204
  store double %mul217, double* %t2, align 8, !tbaa !24
  %205 = bitcast double* %t3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #1
  %206 = load double, double* %t2, align 8, !tbaa !24
  %207 = load double, double* %ti, align 8, !tbaa !24
  %mul218 = fmul double %206, %207
  store double %mul218, double* %t3, align 8, !tbaa !24
  %208 = bitcast double* %omt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #1
  %209 = load double, double* %ti, align 8, !tbaa !24
  %sub219 = fsub double 1.000000e+00, %209
  store double %sub219, double* %omt, align 8, !tbaa !24
  %210 = bitcast double* %omt2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  %211 = load double, double* %omt, align 8, !tbaa !24
  %212 = load double, double* %omt, align 8, !tbaa !24
  %mul220 = fmul double %211, %212
  store double %mul220, double* %omt2, align 8, !tbaa !24
  %213 = bitcast double* %omt3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %213) #1
  %214 = load double, double* %omt2, align 8, !tbaa !24
  %215 = load double, double* %omt, align 8, !tbaa !24
  %mul221 = fmul double %214, %215
  store double %mul221, double* %omt3, align 8, !tbaa !24
  %216 = bitcast double* %x222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #1
  %217 = load i32, i32* %x0, align 4, !tbaa !5
  %conv223 = sitofp i32 %217 to double
  %218 = load double, double* %omt3, align 8, !tbaa !24
  %mul224 = fmul double %conv223, %218
  %219 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1225 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %219, i32 0, i32 5
  %x226 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1225, i32 0, i32 0
  %220 = load i32, i32* %x226, align 4, !tbaa !42
  %mul227 = mul nsw i32 3, %220
  %conv228 = sitofp i32 %mul227 to double
  %221 = load double, double* %omt2, align 8, !tbaa !24
  %mul229 = fmul double %conv228, %221
  %222 = load double, double* %ti, align 8, !tbaa !24
  %mul230 = fmul double %mul229, %222
  %add231 = fadd double %mul224, %mul230
  %223 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2232 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %223, i32 0, i32 6
  %x233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2232, i32 0, i32 0
  %224 = load i32, i32* %x233, align 4, !tbaa !45
  %mul234 = mul nsw i32 3, %224
  %conv235 = sitofp i32 %mul234 to double
  %225 = load double, double* %omt, align 8, !tbaa !24
  %mul236 = fmul double %conv235, %225
  %226 = load double, double* %t2, align 8, !tbaa !24
  %mul237 = fmul double %mul236, %226
  %add238 = fadd double %add231, %mul237
  %227 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt239 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %227, i32 0, i32 4
  %x240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt239, i32 0, i32 0
  %228 = load i32, i32* %x240, align 4, !tbaa !47
  %conv241 = sitofp i32 %228 to double
  %229 = load double, double* %t3, align 8, !tbaa !24
  %mul242 = fmul double %conv241, %229
  %add243 = fadd double %add238, %mul242
  store double %add243, double* %x222, align 8, !tbaa !24
  %230 = bitcast double* %y244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = load i32, i32* %y0, align 4, !tbaa !5
  %conv245 = sitofp i32 %231 to double
  %232 = load double, double* %omt3, align 8, !tbaa !24
  %mul246 = fmul double %conv245, %232
  %233 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p1247 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %233, i32 0, i32 5
  %y248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1247, i32 0, i32 1
  %234 = load i32, i32* %y248, align 4, !tbaa !44
  %mul249 = mul nsw i32 3, %234
  %conv250 = sitofp i32 %mul249 to double
  %235 = load double, double* %omt2, align 8, !tbaa !24
  %mul251 = fmul double %conv250, %235
  %236 = load double, double* %ti, align 8, !tbaa !24
  %mul252 = fmul double %mul251, %236
  %add253 = fadd double %mul246, %mul252
  %237 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2254 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %237, i32 0, i32 6
  %y255 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2254, i32 0, i32 1
  %238 = load i32, i32* %y255, align 4, !tbaa !46
  %mul256 = mul nsw i32 3, %238
  %conv257 = sitofp i32 %mul256 to double
  %239 = load double, double* %omt, align 8, !tbaa !24
  %mul258 = fmul double %conv257, %239
  %240 = load double, double* %t2, align 8, !tbaa !24
  %mul259 = fmul double %mul258, %240
  %add260 = fadd double %add253, %mul259
  %241 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt261 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %241, i32 0, i32 4
  %y262 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt261, i32 0, i32 1
  %242 = load i32, i32* %y262, align 4, !tbaa !48
  %conv263 = sitofp i32 %242 to double
  %243 = load double, double* %t3, align 8, !tbaa !24
  %mul264 = fmul double %conv263, %243
  %add265 = fadd double %add260, %mul264
  store double %add265, double* %y244, align 8, !tbaa !24
  %244 = bitcast double* %ddx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %244) #1
  %245 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom266 = sext i32 %245 to i64
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom266
  %246 = load i32, i32* %arrayidx267, align 4, !tbaa !5
  %and = and i32 %246, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %for.body.214
  br label %cond.end.277

cond.false.269:                                   ; preds = %for.body.214
  %247 = load i32, i32* %ax, align 4, !tbaa !5
  %conv270 = sitofp i32 %247 to double
  %248 = load double, double* %t2, align 8, !tbaa !24
  %mul271 = fmul double %conv270, %248
  %249 = load i32, i32* %bx, align 4, !tbaa !5
  %conv272 = sitofp i32 %249 to double
  %250 = load double, double* %ti, align 8, !tbaa !24
  %mul273 = fmul double %conv272, %250
  %add274 = fadd double %mul271, %mul273
  %251 = load i32, i32* %cx, align 4, !tbaa !5
  %conv275 = sitofp i32 %251 to double
  %add276 = fadd double %add274, %conv275
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.269, %cond.true.268
  %cond278 = phi double [ 0.000000e+00, %cond.true.268 ], [ %add276, %cond.false.269 ]
  store double %cond278, double* %ddx, align 8, !tbaa !24
  %252 = bitcast double* %ddy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #1
  %253 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom279 = sext i32 %253 to i64
  %arrayidx280 = getelementptr inbounds [4 x i32], [4 x i32]* %c, i32 0, i64 %idxprom279
  %254 = load i32, i32* %arrayidx280, align 4, !tbaa !5
  %and281 = and i32 %254, 2
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %cond.true.283, label %cond.false.284

cond.true.283:                                    ; preds = %cond.end.277
  br label %cond.end.292

cond.false.284:                                   ; preds = %cond.end.277
  %255 = load i32, i32* %ay, align 4, !tbaa !5
  %conv285 = sitofp i32 %255 to double
  %256 = load double, double* %t2, align 8, !tbaa !24
  %mul286 = fmul double %conv285, %256
  %257 = load i32, i32* %by, align 4, !tbaa !5
  %conv287 = sitofp i32 %257 to double
  %258 = load double, double* %ti, align 8, !tbaa !24
  %mul288 = fmul double %conv287, %258
  %add289 = fadd double %mul286, %mul288
  %259 = load i32, i32* %cy, align 4, !tbaa !5
  %conv290 = sitofp i32 %259 to double
  %add291 = fadd double %add289, %conv290
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.284, %cond.true.283
  %cond293 = phi double [ 0.000000e+00, %cond.true.283 ], [ %add291, %cond.false.284 ]
  store double %cond293, double* %ddy, align 8, !tbaa !24
  %260 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  %261 = load double, double* %ddx, align 8, !tbaa !24
  %add294 = fadd double %261, 5.000000e-01
  %conv295 = fptosi double %add294 to i32
  store i32 %conv295, i32* %dx, align 4, !tbaa !5
  %262 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  %263 = load double, double* %ddy, align 8, !tbaa !24
  %add296 = fadd double %263, 5.000000e-01
  %conv297 = fptosi double %add296 to i32
  store i32 %conv297, i32* %dy, align 4, !tbaa !5
  %264 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #1
  %265 = load i32, i32* %i, align 4, !tbaa !5
  %add298 = add nsw i32 %265, 1
  %266 = load i32, i32* %n, align 4, !tbaa !5
  %cmp299 = icmp slt i32 %add298, %266
  br i1 %cmp299, label %cond.true.301, label %cond.false.305

cond.true.301:                                    ; preds = %cond.end.292
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %add302 = add nsw i32 %267, 1
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom303
  %268 = load double, double* %arrayidx304, align 8, !tbaa !24
  br label %cond.end.306

cond.false.305:                                   ; preds = %cond.end.292
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.305, %cond.true.301
  %cond307 = phi double [ %268, %cond.true.301 ], [ 1.000000e+00, %cond.false.305 ]
  %269 = load double, double* %ti, align 8, !tbaa !24
  %sub308 = fsub double %cond307, %269
  store double %sub308, double* %tt, align 8, !tbaa !24
  %270 = load i32, i32* %dx, align 4, !tbaa !5
  %conv309 = sitofp i32 %270 to double
  %271 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom310 = sext i32 %271 to i64
  %arrayidx311 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom310
  %272 = load double, double* %arrayidx311, align 8, !tbaa !24
  %273 = load double, double* %tp, align 8, !tbaa !24
  %sub312 = fsub double %272, %273
  %mul313 = fmul double %conv309, %sub312
  %div314 = fdiv double %mul313, 3.000000e+00
  %add315 = fadd double %div314, 5.000000e-01
  %conv316 = fptosi double %add315 to i32
  store i32 %conv316, i32* %rx, align 4, !tbaa !5
  %274 = load i32, i32* %dy, align 4, !tbaa !5
  %conv317 = sitofp i32 %274 to double
  %275 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom318 = sext i32 %275 to i64
  %arrayidx319 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom318
  %276 = load double, double* %arrayidx319, align 8, !tbaa !24
  %277 = load double, double* %tp, align 8, !tbaa !24
  %sub320 = fsub double %276, %277
  %mul321 = fmul double %conv317, %sub320
  %div322 = fdiv double %mul321, 3.000000e+00
  %add323 = fadd double %div322, 5.000000e-01
  %conv324 = fptosi double %add323 to i32
  store i32 %conv324, i32* %ry, align 4, !tbaa !5
  %278 = load double, double* %x222, align 8, !tbaa !24
  %add325 = fadd double %278, 5.000000e-01
  %conv326 = fptosi double %add325 to i32
  store i32 %conv326, i32* %sx, align 4, !tbaa !5
  %279 = load double, double* %y244, align 8, !tbaa !24
  %add327 = fadd double %279, 5.000000e-01
  %conv328 = fptosi double %add327 to i32
  store i32 %conv328, i32* %sy, align 4, !tbaa !5
  %280 = load i32, i32* %sx, align 4, !tbaa !5
  %281 = load i32, i32* %px, align 4, !tbaa !5
  %sub329 = sub nsw i32 %280, %281
  %conv330 = sitofp i32 %sub329 to double
  %282 = load i32, i32* %qx, align 4, !tbaa !5
  %conv331 = sitofp i32 %282 to double
  %mul332 = fmul double %conv330, %conv331
  %283 = load i32, i32* %sy, align 4, !tbaa !5
  %284 = load i32, i32* %py, align 4, !tbaa !5
  %sub333 = sub nsw i32 %283, %284
  %conv334 = sitofp i32 %sub333 to double
  %285 = load i32, i32* %qy, align 4, !tbaa !5
  %conv335 = sitofp i32 %285 to double
  %mul336 = fmul double %conv334, %conv335
  %add337 = fadd double %mul332, %mul336
  %cmp338 = fcmp olt double %add337, 0.000000e+00
  br i1 %cmp338, label %if.then.340, label %if.end.343

if.then.340:                                      ; preds = %cond.end.306
  %286 = load i32, i32* %qx, align 4, !tbaa !5
  %sub341 = sub nsw i32 0, %286
  store i32 %sub341, i32* %qx, align 4, !tbaa !5
  %287 = load i32, i32* %qy, align 4, !tbaa !5
  %sub342 = sub nsw i32 0, %287
  store i32 %sub342, i32* %qy, align 4, !tbaa !5
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.340, %cond.end.306
  %288 = load i32, i32* %sx, align 4, !tbaa !5
  %289 = load i32, i32* %px, align 4, !tbaa !5
  %sub344 = sub nsw i32 %288, %289
  %conv345 = sitofp i32 %sub344 to double
  %290 = load i32, i32* %rx, align 4, !tbaa !5
  %conv346 = sitofp i32 %290 to double
  %mul347 = fmul double %conv345, %conv346
  %291 = load i32, i32* %sy, align 4, !tbaa !5
  %292 = load i32, i32* %py, align 4, !tbaa !5
  %sub348 = sub nsw i32 %291, %292
  %conv349 = sitofp i32 %sub348 to double
  %293 = load i32, i32* %ry, align 4, !tbaa !5
  %conv350 = sitofp i32 %293 to double
  %mul351 = fmul double %conv349, %conv350
  %add352 = fadd double %mul347, %mul351
  %cmp353 = fcmp olt double %add352, 0.000000e+00
  br i1 %cmp353, label %if.then.355, label %if.end.358

if.then.355:                                      ; preds = %if.end.343
  %294 = load i32, i32* %rx, align 4, !tbaa !5
  %sub356 = sub nsw i32 0, %294
  store i32 %sub356, i32* %rx, align 4, !tbaa !5
  %295 = load i32, i32* %qy, align 4, !tbaa !5
  %sub357 = sub nsw i32 0, %295
  store i32 %sub357, i32* %ry, align 4, !tbaa !5
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.355, %if.end.343
  %296 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %297 = load i32, i32* %px, align 4, !tbaa !5
  %298 = load i32, i32* %qx, align 4, !tbaa !5
  %add359 = add nsw i32 %297, %298
  %299 = load i32, i32* %py, align 4, !tbaa !5
  %300 = load i32, i32* %qy, align 4, !tbaa !5
  %add360 = add nsw i32 %299, %300
  %301 = load i32, i32* %sx, align 4, !tbaa !5
  %302 = load i32, i32* %rx, align 4, !tbaa !5
  %sub361 = sub nsw i32 %301, %302
  %303 = load i32, i32* %sy, align 4, !tbaa !5
  %304 = load i32, i32* %ry, align 4, !tbaa !5
  %sub362 = sub nsw i32 %303, %304
  %305 = load i32, i32* %sx, align 4, !tbaa !5
  %306 = load i32, i32* %sy, align 4, !tbaa !5
  %307 = load i32, i32* %notes, align 4, !tbaa !7
  %call363 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %296, i32 %add359, i32 %add360, i32 %sub361, i32 %sub362, i32 %305, i32 %306, i32 %307) #6
  store i32 %call363, i32* %code, align 4, !tbaa !5
  %308 = load i32, i32* %code, align 4, !tbaa !5
  %cmp364 = icmp slt i32 %308, 0
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.358
  %309 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.367:                                       ; preds = %if.end.358
  %310 = load i32, i32* %notes, align 4, !tbaa !7
  %or368 = or i32 %310, 1
  store i32 %or368, i32* %notes, align 4, !tbaa !7
  %311 = load i32, i32* %sx, align 4, !tbaa !5
  store i32 %311, i32* %px, align 4, !tbaa !5
  %312 = load i32, i32* %sy, align 4, !tbaa !5
  store i32 %312, i32* %py, align 4, !tbaa !5
  %313 = load i32, i32* %dx, align 4, !tbaa !5
  %conv369 = sitofp i32 %313 to double
  %314 = load double, double* %tt, align 8, !tbaa !24
  %mul370 = fmul double %conv369, %314
  %div371 = fdiv double %mul370, 3.000000e+00
  %add372 = fadd double %div371, 5.000000e-01
  %conv373 = fptosi double %add372 to i32
  store i32 %conv373, i32* %qx, align 4, !tbaa !5
  %315 = load i32, i32* %dy, align 4, !tbaa !5
  %conv374 = sitofp i32 %315 to double
  %316 = load double, double* %tt, align 8, !tbaa !24
  %mul375 = fmul double %conv374, %316
  %div376 = fdiv double %mul375, 3.000000e+00
  %add377 = fadd double %div376, 5.000000e-01
  %conv378 = fptosi double %add377 to i32
  store i32 %conv378, i32* %qy, align 4, !tbaa !5
  %317 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom379 = sext i32 %317 to i64
  %arrayidx380 = getelementptr inbounds [4 x double], [4 x double]* %t, i32 0, i64 %idxprom379
  %318 = load double, double* %arrayidx380, align 8, !tbaa !24
  store double %318, double* %tp, align 8, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.367, %if.then.366
  %319 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast double* %ddy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %322) #1
  %323 = bitcast double* %ddx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast double* %y244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast double* %x222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast double* %omt3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast double* %omt2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast double* %omt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast double* %t3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast double* %t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast double* %ti to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.453 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.393

for.inc.393:                                      ; preds = %cleanup.cont
  %332 = load i32, i32* %i, align 4, !tbaa !5
  %inc394 = add nsw i32 %332, 1
  store i32 %inc394, i32* %i, align 4, !tbaa !5
  br label %for.cond.211

for.end.395:                                      ; preds = %for.cond.211
  %333 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt396 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %333, i32 0, i32 4
  %x397 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt396, i32 0, i32 0
  %334 = load i32, i32* %x397, align 4, !tbaa !47
  store i32 %334, i32* %sx, align 4, !tbaa !5
  %335 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt398 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %335, i32 0, i32 4
  %y399 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt398, i32 0, i32 1
  %336 = load i32, i32* %y399, align 4, !tbaa !48
  store i32 %336, i32* %sy, align 4, !tbaa !5
  %337 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt400 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %337, i32 0, i32 4
  %x401 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt400, i32 0, i32 0
  %338 = load i32, i32* %x401, align 4, !tbaa !47
  %339 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2402 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %339, i32 0, i32 6
  %x403 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2402, i32 0, i32 0
  %340 = load i32, i32* %x403, align 4, !tbaa !45
  %sub404 = sub nsw i32 %338, %340
  %conv405 = sitofp i32 %sub404 to double
  %341 = load double, double* %tt, align 8, !tbaa !24
  %mul406 = fmul double %conv405, %341
  %add407 = fadd double %mul406, 5.000000e-01
  %conv408 = fptosi double %add407 to i32
  store i32 %conv408, i32* %rx, align 4, !tbaa !5
  %342 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %pt409 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %342, i32 0, i32 4
  %y410 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt409, i32 0, i32 1
  %343 = load i32, i32* %y410, align 4, !tbaa !48
  %344 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !1
  %p2411 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %344, i32 0, i32 6
  %y412 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2411, i32 0, i32 1
  %345 = load i32, i32* %y412, align 4, !tbaa !46
  %sub413 = sub nsw i32 %343, %345
  %conv414 = sitofp i32 %sub413 to double
  %346 = load double, double* %tt, align 8, !tbaa !24
  %mul415 = fmul double %conv414, %346
  %add416 = fadd double %mul415, 5.000000e-01
  %conv417 = fptosi double %add416 to i32
  store i32 %conv417, i32* %ry, align 4, !tbaa !5
  %347 = load i32, i32* %sx, align 4, !tbaa !5
  %348 = load i32, i32* %px, align 4, !tbaa !5
  %sub418 = sub nsw i32 %347, %348
  %conv419 = sitofp i32 %sub418 to double
  %349 = load i32, i32* %qx, align 4, !tbaa !5
  %conv420 = sitofp i32 %349 to double
  %mul421 = fmul double %conv419, %conv420
  %350 = load i32, i32* %sy, align 4, !tbaa !5
  %351 = load i32, i32* %py, align 4, !tbaa !5
  %sub422 = sub nsw i32 %350, %351
  %conv423 = sitofp i32 %sub422 to double
  %352 = load i32, i32* %qy, align 4, !tbaa !5
  %conv424 = sitofp i32 %352 to double
  %mul425 = fmul double %conv423, %conv424
  %add426 = fadd double %mul421, %mul425
  %cmp427 = fcmp olt double %add426, 0.000000e+00
  br i1 %cmp427, label %if.then.429, label %if.end.432

if.then.429:                                      ; preds = %for.end.395
  %353 = load i32, i32* %qx, align 4, !tbaa !5
  %sub430 = sub nsw i32 0, %353
  store i32 %sub430, i32* %qx, align 4, !tbaa !5
  %354 = load i32, i32* %qy, align 4, !tbaa !5
  %sub431 = sub nsw i32 0, %354
  store i32 %sub431, i32* %qy, align 4, !tbaa !5
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.429, %for.end.395
  %355 = load i32, i32* %sx, align 4, !tbaa !5
  %356 = load i32, i32* %px, align 4, !tbaa !5
  %sub433 = sub nsw i32 %355, %356
  %conv434 = sitofp i32 %sub433 to double
  %357 = load i32, i32* %rx, align 4, !tbaa !5
  %conv435 = sitofp i32 %357 to double
  %mul436 = fmul double %conv434, %conv435
  %358 = load i32, i32* %sy, align 4, !tbaa !5
  %359 = load i32, i32* %py, align 4, !tbaa !5
  %sub437 = sub nsw i32 %358, %359
  %conv438 = sitofp i32 %sub437 to double
  %360 = load i32, i32* %ry, align 4, !tbaa !5
  %conv439 = sitofp i32 %360 to double
  %mul440 = fmul double %conv438, %conv439
  %add441 = fadd double %mul436, %mul440
  %cmp442 = fcmp olt double %add441, 0.000000e+00
  br i1 %cmp442, label %if.then.444, label %if.end.447

if.then.444:                                      ; preds = %if.end.432
  %361 = load i32, i32* %rx, align 4, !tbaa !5
  %sub445 = sub nsw i32 0, %361
  store i32 %sub445, i32* %rx, align 4, !tbaa !5
  %362 = load i32, i32* %qy, align 4, !tbaa !5
  %sub446 = sub nsw i32 0, %362
  store i32 %sub446, i32* %ry, align 4, !tbaa !5
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.444, %if.end.432
  %363 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %364 = load i32, i32* %px, align 4, !tbaa !5
  %365 = load i32, i32* %qx, align 4, !tbaa !5
  %add448 = add nsw i32 %364, %365
  %366 = load i32, i32* %py, align 4, !tbaa !5
  %367 = load i32, i32* %qy, align 4, !tbaa !5
  %add449 = add nsw i32 %366, %367
  %368 = load i32, i32* %sx, align 4, !tbaa !5
  %369 = load i32, i32* %rx, align 4, !tbaa !5
  %sub450 = sub nsw i32 %368, %369
  %370 = load i32, i32* %sy, align 4, !tbaa !5
  %371 = load i32, i32* %ry, align 4, !tbaa !5
  %sub451 = sub nsw i32 %370, %371
  %372 = load i32, i32* %sx, align 4, !tbaa !5
  %373 = load i32, i32* %sy, align 4, !tbaa !5
  %374 = load i32, i32* %notes, align 4, !tbaa !7
  %call452 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %363, i32 %add448, i32 %add449, i32 %sub450, i32 %sub451, i32 %372, i32 %373, i32 %374) #6
  store i32 %call452, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.453

cleanup.453:                                      ; preds = %if.end.447, %cleanup, %if.then
  %375 = bitcast double* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast i32* %sy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #1
  %377 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  %380 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i32* %v12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #1
  %385 = bitcast i32* %v01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #1
  %386 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #1
  %387 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #1
  %394 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast [4 x i32]* %c to i8*
  call void @llvm.lifetime.end(i64 16, i8* %398) #1
  %399 = bitcast double* %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
  %400 = bitcast double* %tt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast [4 x double]* %t to i8*
  call void @llvm.lifetime.end(i64 32, i8* %401) #1
  %402 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = load i32, i32* %retval
  ret i32 %405
}

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @fixed_mult_quo(i32, i32, i32) #2

declare i32 @gx_curve_log2_samples(i32, i32, %struct.curve_segment*, i32) #2

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gx_subdivide_curve(%struct.gx_path_s*, i32, %struct.curve_segment*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @adjust_point_to_tangent(%struct.segment_s* %pseg, %struct.segment_s* %next, %struct.gs_fixed_point_s* %p1) #0 {
entry:
  %pseg.addr = alloca %struct.segment_s*, align 8
  %next.addr = alloca %struct.segment_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %fC = alloca i32, align 4
  %fD = alloca i32, align 4
  %DT = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %CT = alloca i32, align 4
  %C = alloca double, align 8
  %D = alloca double, align 8
  %T = alloca double, align 8
  store %struct.segment_s* %pseg, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  store %struct.segment_s* %next, %struct.segment_s** %next.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %1, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !40
  store i32 %2, i32* %x0, align 4, !tbaa !5
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt1 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %4, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !41
  store i32 %5, i32* %y0, align 4, !tbaa !5
  %6 = bitcast i32* %fC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4, !tbaa !27
  %9 = load i32, i32* %x0, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %fC, align 4, !tbaa !5
  %10 = bitcast i32* %fD to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 1
  %12 = load i32, i32* %y3, align 4, !tbaa !30
  %13 = load i32, i32* %y0, align 4, !tbaa !5
  %sub4 = sub nsw i32 %12, %13
  store i32 %sub4, i32* %fD, align 4, !tbaa !5
  %14 = load i32, i32* %fC, align 4, !tbaa !5
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = bitcast i32* %DT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.segment_s*, %struct.segment_s** %next.addr, align 8, !tbaa !1
  %pt5 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %16, i32 0, i32 4
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt5, i32 0, i32 1
  %17 = load i32, i32* %y6, align 4, !tbaa !41
  %18 = load i32, i32* %y0, align 4, !tbaa !5
  %sub7 = sub nsw i32 %17, %18
  %shr = ashr i32 %sub7, 2
  store i32 %shr, i32* %DT, align 4, !tbaa !5
  %19 = load i32, i32* %fD, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %DT, align 4, !tbaa !5
  %21 = load i32, i32* %fD, align 4, !tbaa !5
  %xor = xor i32 %20, %21
  %cmp10 = icmp sgt i32 %xor, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %do.end
  %22 = load i32, i32* %DT, align 4, !tbaa !5
  %23 = load i32, i32* %y0, align 4, !tbaa !5
  %add = add nsw i32 %22, %23
  %24 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt12 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %24, i32 0, i32 4
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt12, i32 0, i32 1
  store i32 %add, i32* %y13, align 4, !tbaa !41
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.9
  %25 = bitcast i32* %DT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.70

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %fD, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %26, 0
  br i1 %cmp15, label %if.then.16, label %if.else.31

if.then.16:                                       ; preds = %if.else
  %27 = bitcast i32* %CT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.segment_s*, %struct.segment_s** %next.addr, align 8, !tbaa !1
  %pt17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i32 0, i32 4
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 0
  %29 = load i32, i32* %x18, align 4, !tbaa !40
  %30 = load i32, i32* %x0, align 4, !tbaa !5
  %sub19 = sub nsw i32 %29, %30
  %shr20 = ashr i32 %sub19, 2
  store i32 %shr20, i32* %CT, align 4, !tbaa !5
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.16
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %31 = load i32, i32* %CT, align 4, !tbaa !5
  %32 = load i32, i32* %fC, align 4, !tbaa !5
  %xor24 = xor i32 %31, %32
  %cmp25 = icmp sgt i32 %xor24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %do.end.23
  %33 = load i32, i32* %CT, align 4, !tbaa !5
  %34 = load i32, i32* %x0, align 4, !tbaa !5
  %add27 = add nsw i32 %33, %34
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 4
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt28, i32 0, i32 0
  store i32 %add27, i32* %x29, align 4, !tbaa !40
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %do.end.23
  %36 = bitcast i32* %CT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %if.end.69

if.else.31:                                       ; preds = %if.else
  %37 = bitcast double* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i32, i32* %fC, align 4, !tbaa !5
  %conv = sitofp i32 %38 to double
  store double %conv, double* %C, align 8, !tbaa !24
  %39 = bitcast double* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load i32, i32* %fD, align 4, !tbaa !5
  %conv32 = sitofp i32 %40 to double
  store double %conv32, double* %D, align 8, !tbaa !24
  %41 = bitcast double* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load double, double* %C, align 8, !tbaa !24
  %43 = load %struct.segment_s*, %struct.segment_s** %next.addr, align 8, !tbaa !1
  %pt33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 4
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt33, i32 0, i32 0
  %44 = load i32, i32* %x34, align 4, !tbaa !40
  %45 = load i32, i32* %x0, align 4, !tbaa !5
  %sub35 = sub nsw i32 %44, %45
  %conv36 = sitofp i32 %sub35 to double
  %mul = fmul double %42, %conv36
  %46 = load double, double* %D, align 8, !tbaa !24
  %47 = load %struct.segment_s*, %struct.segment_s** %next.addr, align 8, !tbaa !1
  %pt37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %47, i32 0, i32 4
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt37, i32 0, i32 1
  %48 = load i32, i32* %y38, align 4, !tbaa !41
  %49 = load i32, i32* %y0, align 4, !tbaa !5
  %sub39 = sub nsw i32 %48, %49
  %conv40 = sitofp i32 %sub39 to double
  %mul41 = fmul double %46, %conv40
  %add42 = fadd double %mul, %mul41
  %50 = load double, double* %C, align 8, !tbaa !24
  %51 = load double, double* %C, align 8, !tbaa !24
  %mul43 = fmul double %50, %51
  %52 = load double, double* %D, align 8, !tbaa !24
  %53 = load double, double* %D, align 8, !tbaa !24
  %mul44 = fmul double %52, %53
  %add45 = fadd double %mul43, %mul44
  %div = fdiv double %add42, %add45
  store double %div, double* %T, align 8, !tbaa !24
  br label %do.body.46

do.body.46:                                       ; preds = %if.else.31
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.body.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  %54 = load double, double* %T, align 8, !tbaa !24
  %cmp49 = fcmp ogt double %54, 0.000000e+00
  br i1 %cmp49, label %if.then.51, label %if.end.68

if.then.51:                                       ; preds = %do.end.48
  %55 = load double, double* %T, align 8, !tbaa !24
  %cmp52 = fcmp ogt double %55, 1.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  store double 1.000000e+00, double* %T, align 8, !tbaa !24
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  %56 = load double, double* %C, align 8, !tbaa !24
  %57 = load double, double* %T, align 8, !tbaa !24
  %mul56 = fmul double %56, %57
  %conv57 = fptosi double %mul56 to i32
  %shr58 = ashr i32 %conv57, 2
  %58 = load i32, i32* %x0, align 4, !tbaa !5
  %add59 = add nsw i32 %shr58, %58
  %59 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt60 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %59, i32 0, i32 4
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt60, i32 0, i32 0
  store i32 %add59, i32* %x61, align 4, !tbaa !40
  %60 = load double, double* %D, align 8, !tbaa !24
  %61 = load double, double* %T, align 8, !tbaa !24
  %mul62 = fmul double %60, %61
  %conv63 = fptosi double %mul62 to i32
  %shr64 = ashr i32 %conv63, 2
  %62 = load i32, i32* %y0, align 4, !tbaa !5
  %add65 = add nsw i32 %shr64, %62
  %63 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt66 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %63, i32 0, i32 4
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt66, i32 0, i32 1
  store i32 %add65, i32* %y67, align 4, !tbaa !41
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.55, %do.end.48
  %64 = bitcast double* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast double* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast double* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.30
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %if.end.70, %cleanup
  %67 = bitcast i32* %fD to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %fC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %cleanup.dest.75 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.75, label %unreachable [
    i32 0, label %cleanup.cont.76
    i32 1, label %cleanup.cont.76
  ]

cleanup.cont.76:                                  ; preds = %cleanup.71, %cleanup.71
  ret void

unreachable:                                      ; preds = %cleanup.71
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @break_line_if_long(%struct.gx_path_s* %ppath, %struct.segment_s* %pseg) #4 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pseg.addr = alloca %struct.segment_s*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %y8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.segment_s* %pseg, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !50
  store i32 %2, i32* %x0, align 4, !tbaa !5
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !51
  store i32 %5, i32* %y0, align 4, !tbaa !5
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %6, i32 0, i32 4
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !40
  %8 = load i32, i32* %x0, align 4, !tbaa !5
  %call = call i32 @gx_check_fixed_diff_overflow(i32 %7, i32 %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt3 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 4
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt3, i32 0, i32 1
  %10 = load i32, i32* %y4, align 4, !tbaa !41
  %11 = load i32, i32* %y0, align 4, !tbaa !5
  %call5 = call i32 @gx_check_fixed_diff_overflow(i32 %10, i32 %11) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.38

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 4
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt9, i32 0, i32 0
  %15 = load i32, i32* %x10, align 4, !tbaa !40
  %16 = load i32, i32* %x0, align 4, !tbaa !5
  %call11 = call i32 @gx_check_fixed_sum_overflow(i32 %15, i32 %16) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %17 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 4
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt14, i32 0, i32 0
  %18 = load i32, i32* %x15, align 4, !tbaa !40
  %shr = ashr i32 %18, 1
  %19 = load i32, i32* %x0, align 4, !tbaa !5
  %shr16 = ashr i32 %19, 1
  %add = add nsw i32 %shr, %shr16
  store i32 %add, i32* %x7, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 4
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 0
  %21 = load i32, i32* %x18, align 4, !tbaa !40
  %22 = load i32, i32* %x0, align 4, !tbaa !5
  %add19 = add nsw i32 %21, %22
  %shr20 = ashr i32 %add19, 1
  store i32 %shr20, i32* %x7, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %23 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 1
  %24 = load i32, i32* %y22, align 4, !tbaa !41
  %25 = load i32, i32* %y0, align 4, !tbaa !5
  %call23 = call i32 @gx_check_fixed_sum_overflow(i32 %24, i32 %25) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.end
  %26 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %26, i32 0, i32 4
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt26, i32 0, i32 1
  %27 = load i32, i32* %y27, align 4, !tbaa !41
  %shr28 = ashr i32 %27, 1
  %28 = load i32, i32* %y0, align 4, !tbaa !5
  %shr29 = ashr i32 %28, 1
  %add30 = add nsw i32 %shr28, %shr29
  store i32 %add30, i32* %y8, align 4, !tbaa !5
  br label %if.end.36

if.else.31:                                       ; preds = %if.end
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt32 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 4
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt32, i32 0, i32 1
  %30 = load i32, i32* %y33, align 4, !tbaa !41
  %31 = load i32, i32* %y0, align 4, !tbaa !5
  %add34 = add nsw i32 %30, %31
  %shr35 = ashr i32 %add34, 1
  store i32 %shr35, i32* %y8, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.25
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %33 = load i32, i32* %x7, align 4, !tbaa !5
  %34 = load i32, i32* %y8, align 4, !tbaa !5
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 3
  %36 = load i16, i16* %notes, align 2, !tbaa !49
  %conv = zext i16 %36 to i32
  %call37 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %32, i32 %33, i32 %34, i32 %conv) #6
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %cleanup

if.end.38:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.end.36
  %39 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @break_gap_if_long(%struct.gx_path_s* %ppath, %struct.segment_s* %pseg) #4 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pseg.addr = alloca %struct.segment_s*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %y8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.segment_s* %pseg, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !50
  store i32 %2, i32* %x0, align 4, !tbaa !5
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !51
  store i32 %5, i32* %y0, align 4, !tbaa !5
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %6, i32 0, i32 4
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !40
  %8 = load i32, i32* %x0, align 4, !tbaa !5
  %call = call i32 @gx_check_fixed_diff_overflow(i32 %7, i32 %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt3 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 4
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt3, i32 0, i32 1
  %10 = load i32, i32* %y4, align 4, !tbaa !41
  %11 = load i32, i32* %y0, align 4, !tbaa !5
  %call5 = call i32 @gx_check_fixed_diff_overflow(i32 %10, i32 %11) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.38

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 4
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt9, i32 0, i32 0
  %15 = load i32, i32* %x10, align 4, !tbaa !40
  %16 = load i32, i32* %x0, align 4, !tbaa !5
  %call11 = call i32 @gx_check_fixed_sum_overflow(i32 %15, i32 %16) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %17 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 4
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt14, i32 0, i32 0
  %18 = load i32, i32* %x15, align 4, !tbaa !40
  %shr = ashr i32 %18, 1
  %19 = load i32, i32* %x0, align 4, !tbaa !5
  %shr16 = ashr i32 %19, 1
  %add = add nsw i32 %shr, %shr16
  store i32 %add, i32* %x7, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 4
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 0
  %21 = load i32, i32* %x18, align 4, !tbaa !40
  %22 = load i32, i32* %x0, align 4, !tbaa !5
  %add19 = add nsw i32 %21, %22
  %shr20 = ashr i32 %add19, 1
  store i32 %shr20, i32* %x7, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %23 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 1
  %24 = load i32, i32* %y22, align 4, !tbaa !41
  %25 = load i32, i32* %y0, align 4, !tbaa !5
  %call23 = call i32 @gx_check_fixed_sum_overflow(i32 %24, i32 %25) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.end
  %26 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %26, i32 0, i32 4
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt26, i32 0, i32 1
  %27 = load i32, i32* %y27, align 4, !tbaa !41
  %shr28 = ashr i32 %27, 1
  %28 = load i32, i32* %y0, align 4, !tbaa !5
  %shr29 = ashr i32 %28, 1
  %add30 = add nsw i32 %shr28, %shr29
  store i32 %add30, i32* %y8, align 4, !tbaa !5
  br label %if.end.36

if.else.31:                                       ; preds = %if.end
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %pt32 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 4
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt32, i32 0, i32 1
  %30 = load i32, i32* %y33, align 4, !tbaa !41
  %31 = load i32, i32* %y0, align 4, !tbaa !5
  %add34 = add nsw i32 %30, %31
  %shr35 = ashr i32 %add34, 1
  store i32 %shr35, i32* %y8, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.25
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %33 = load i32, i32* %x7, align 4, !tbaa !5
  %34 = load i32, i32* %y8, align 4, !tbaa !5
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 3
  %36 = load i16, i16* %notes, align 2, !tbaa !49
  %conv = zext i16 %36 to i32
  %call37 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %32, i32 %33, i32 %34, i32 %conv) #6
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast i32* %y8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %x7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %cleanup

if.end.38:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.end.36
  %39 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gx_path_add_gap_notes(%struct.gx_path_s*, i32, i32, i32) #2

declare i32 @gx_path_add_dash_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32) #2

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #2

declare i32 @gx_path_new(%struct.gx_path_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_path__check_curves(%struct.gx_path_s* %ppath, i32 %options, i32 %fixed_flat) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %options.addr = alloca i32, align 4
  %fixed_flat.addr = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  %pt0 = alloca %struct.gs_fixed_point_s, align 4
  %psub = alloca %struct.subpath_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pc = alloca %struct.curve_segment*, align 8
  %t = alloca [2 x double], align 16
  %nz = alloca i32, align 4
  %ax = alloca i32, align 4
  %bx = alloca i32, align 4
  %cx = alloca i32, align 4
  %ay = alloca i32, align 4
  %by = alloca i32, align 4
  %cy = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !7
  store i32 %fixed_flat, i32* %fixed_flat.addr, align 4, !tbaa !5
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !31
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !37
  %4 = bitcast %struct.subpath_s* %3 to %struct.segment_s*
  store %struct.segment_s* %4, %struct.segment_s** %pseg, align 8, !tbaa !1
  %5 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !30
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %tobool = icmp ne %struct.segment_s* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %7, i32 0, i32 2
  %8 = load i16, i16* %type, align 2, !tbaa !38
  %conv = zext i16 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 3, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %while.body
  %9 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %11 = bitcast %struct.segment_s* %10 to %struct.subpath_s*
  store %struct.subpath_s* %11, %struct.subpath_s** %psub, align 8, !tbaa !1
  %12 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %12, i32 0, i32 6
  %13 = load i32, i32* %curve_count, align 4, !tbaa !73
  %tobool1 = icmp ne i32 %13, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %14, i32 0, i32 5
  %15 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !53
  store %struct.segment_s* %15, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %16 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body, %while.body
  %17 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 4
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %18 = load i32, i32* %x3, align 4, !tbaa !40
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %19 = load i32, i32* %x4, align 4, !tbaa !27
  %call = call i32 @gx_check_fixed_diff_overflow(i32 %18, i32 %19) #6
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.2
  %20 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt6 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 4
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt6, i32 0, i32 1
  %21 = load i32, i32* %y7, align 4, !tbaa !41
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %22 = load i32, i32* %y8, align 4, !tbaa !30
  %call9 = call i32 @gx_check_fixed_diff_overflow(i32 %21, i32 %22) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %sw.bb.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.12:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %23 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %25 = bitcast %struct.segment_s* %24 to %struct.curve_segment*
  store %struct.curve_segment* %25, %struct.curve_segment** %pc, align 8, !tbaa !1
  %26 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and = and i32 %26, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %sw.bb.13
  %27 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.start(i64 16, i8* %27) #1
  %28 = bitcast i32* %nz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %29 = load i32, i32* %y16, align 4, !tbaa !30
  %30 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %30, i32 0, i32 5
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %31 = load i32, i32* %y17, align 4, !tbaa !44
  %32 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 6
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %33 = load i32, i32* %y18, align 4, !tbaa !46
  %34 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt19 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 4
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt19, i32 0, i32 1
  %35 = load i32, i32* %y20, align 4, !tbaa !48
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i32 0
  %call21 = call i32 @gx_curve_monotonic_points(i32 %29, i32 %31, i32 %33, i32 %35, double* %arraydecay) #6
  store i32 %call21, i32* %nz, align 4, !tbaa !5
  %36 = load i32, i32* %nz, align 4, !tbaa !5
  %cmp = icmp ne i32 %36, 0
  br i1 %cmp, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.15
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %37 = load i32, i32* %x25, align 4, !tbaa !27
  %38 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p126 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %38, i32 0, i32 5
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p126, i32 0, i32 0
  %39 = load i32, i32* %x27, align 4, !tbaa !42
  %40 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p228 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %40, i32 0, i32 6
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p228, i32 0, i32 0
  %41 = load i32, i32* %x29, align 4, !tbaa !45
  %42 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt30 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %42, i32 0, i32 4
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt30, i32 0, i32 0
  %43 = load i32, i32* %x31, align 4, !tbaa !47
  %arraydecay32 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i32 0
  %call33 = call i32 @gx_curve_monotonic_points(i32 %37, i32 %39, i32 %41, i32 %43, double* %arraydecay32) #6
  store i32 %call33, i32* %nz, align 4, !tbaa !5
  %44 = load i32, i32* %nz, align 4, !tbaa !5
  %cmp34 = icmp ne i32 %44, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.36, %if.then.23
  %45 = bitcast i32* %nz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.end.39:                                        ; preds = %cleanup.cont, %sw.bb.13
  %47 = load i32, i32* %options.addr, align 4, !tbaa !7
  %and40 = and i32 %47, 8
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.86

if.then.42:                                       ; preds = %if.end.39
  %48 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %55 = load i32, i32* %x43, align 4, !tbaa !27
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %56 = load i32, i32* %y44, align 4, !tbaa !30
  %57 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %58 = load i32, i32* %fixed_flat.addr, align 4, !tbaa !5
  %call45 = call i32 @gx_curve_log2_samples(i32 %55, i32 %56, %struct.curve_segment* %57, i32 %58) #6
  store i32 %call45, i32* %k, align 4, !tbaa !5
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %59 = load i32, i32* %x46, align 4, !tbaa !27
  %60 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p147 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 5
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p147, i32 0, i32 0
  %61 = load i32, i32* %x48, align 4, !tbaa !42
  %62 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p249 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %62, i32 0, i32 6
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p249, i32 0, i32 0
  %63 = load i32, i32* %x50, align 4, !tbaa !45
  %64 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt51 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %64, i32 0, i32 4
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt51, i32 0, i32 0
  %65 = load i32, i32* %x52, align 4, !tbaa !47
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %66 = load i32, i32* %y53, align 4, !tbaa !30
  %67 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p154 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %67, i32 0, i32 5
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p154, i32 0, i32 1
  %68 = load i32, i32* %y55, align 4, !tbaa !44
  %69 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p256 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %69, i32 0, i32 6
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p256, i32 0, i32 1
  %70 = load i32, i32* %y57, align 4, !tbaa !46
  %71 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %pt58 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %71, i32 0, i32 4
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt58, i32 0, i32 1
  %72 = load i32, i32* %y59, align 4, !tbaa !48
  %73 = load i32, i32* %k, align 4, !tbaa !5
  %call60 = call i32 @curve_coeffs_ranged(i32 %59, i32 %61, i32 %63, i32 %65, i32 %66, i32 %68, i32 %70, i32 %72, i32* %ax, i32* %bx, i32* %cx, i32* %ay, i32* %by, i32* %cy, i32 %73) #6
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.63:                                        ; preds = %if.then.42
  %74 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt64 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %74, i32 0, i32 4
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt64, i32 0, i32 0
  %75 = load i32, i32* %x65, align 4, !tbaa !40
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %76 = load i32, i32* %x66, align 4, !tbaa !27
  %call67 = call i32 @gx_check_fixed_diff_overflow(i32 %75, i32 %76) #6
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.75, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.end.63
  %77 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt70 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %77, i32 0, i32 4
  %y71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt70, i32 0, i32 1
  %78 = load i32, i32* %y71, align 4, !tbaa !41
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %79 = load i32, i32* %y72, align 4, !tbaa !30
  %call73 = call i32 @gx_check_fixed_diff_overflow(i32 %78, i32 %79) #6
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.69, %if.end.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.76:                                        ; preds = %lor.lhs.false.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %if.end.76, %if.then.75, %if.then.62
  %80 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %ay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %ax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.87 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.77
  br label %if.end.86

if.end.86:                                        ; preds = %cleanup.cont.85, %if.end.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %cleanup.77, %cleanup
  %87 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.91 [
    i32 0, label %cleanup.cont.89
  ]

cleanup.cont.89:                                  ; preds = %cleanup.87
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup.cont.89, %if.end.12, %if.end
  %88 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt90 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %88, i32 0, i32 4
  %89 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  %90 = bitcast %struct.gs_fixed_point_s* %pt90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 8, i32 4, i1 false), !tbaa.struct !74
  %91 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %91, i32 0, i32 1
  %92 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !58
  store %struct.segment_s* %92, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %while.end, %cleanup.87, %if.then.11
  %93 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @gx_check_fixed_diff_overflow(i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_curve_monotonic_points(i32 %v0, i32 %v1, i32 %v2, i32 %v3, double* %pst) #0 {
entry:
  %retval = alloca i32, align 4
  %v0.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %v3.addr = alloca i32, align 4
  %pst.addr = alloca double*, align 8
  %v01 = alloca i32, align 4
  %v12 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %b2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  %dv_end = alloca i32, align 4
  %b2abs = alloca i32, align 4
  %a3abs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nbf = alloca double, align 8
  %a3f = alloca double, align 8
  %radicand = alloca double, align 8
  %root = alloca double, align 8
  %nzeros = alloca i32, align 4
  %z = alloca double, align 8
  store i32 %v0, i32* %v0.addr, align 4, !tbaa !5
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !5
  store i32 %v2, i32* %v2.addr, align 4, !tbaa !5
  store i32 %v3, i32* %v3.addr, align 4, !tbaa !5
  store double* %pst, double** %pst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %v01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %v12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %a3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %dv_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %b2abs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %a3abs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %v1.addr, align 4, !tbaa !5
  %11 = load i32, i32* %v0.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  store i32 %sub, i32* %v01, align 4, !tbaa !5
  %12 = load i32, i32* %v01, align 4, !tbaa !5
  %shl = shl i32 %12, 1
  %13 = load i32, i32* %v01, align 4, !tbaa !5
  %add = add nsw i32 %shl, %13
  store i32 %add, i32* %c, align 4, !tbaa !5
  %14 = load i32, i32* %v2.addr, align 4, !tbaa !5
  %15 = load i32, i32* %v1.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %14, %15
  store i32 %sub1, i32* %v12, align 4, !tbaa !5
  %16 = load i32, i32* %v12, align 4, !tbaa !5
  %shl2 = shl i32 %16, 1
  %17 = load i32, i32* %v12, align 4, !tbaa !5
  %add3 = add nsw i32 %shl2, %17
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %sub4 = sub nsw i32 %add3, %18
  store i32 %sub4, i32* %b, align 4, !tbaa !5
  %19 = load i32, i32* %v3.addr, align 4, !tbaa !5
  %20 = load i32, i32* %b, align 4, !tbaa !5
  %sub5 = sub nsw i32 %19, %20
  %21 = load i32, i32* %c, align 4, !tbaa !5
  %sub6 = sub nsw i32 %sub5, %21
  %22 = load i32, i32* %v0.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 %sub6, %22
  store i32 %sub7, i32* %a, align 4, !tbaa !5
  %23 = load i32, i32* %b, align 4, !tbaa !5
  %shl8 = shl i32 %23, 1
  store i32 %shl8, i32* %b2, align 4, !tbaa !5
  %24 = load i32, i32* %a, align 4, !tbaa !5
  %shl9 = shl i32 %24, 1
  %25 = load i32, i32* %a, align 4, !tbaa !5
  %add10 = add nsw i32 %shl9, %25
  store i32 %add10, i32* %a3, align 4, !tbaa !5
  %26 = load i32, i32* %a, align 4, !tbaa !5
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load i32, i32* %b, align 4, !tbaa !5
  %28 = load i32, i32* %c, align 4, !tbaa !5
  %xor = xor i32 %27, %28
  %cmp11 = icmp slt i32 %xor, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %29 = load i32, i32* %c, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %29, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %30 = load i32, i32* %c, align 4, !tbaa !5
  %sub13 = sub nsw i32 0, %30
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub13, %cond.true ], [ %31, %cond.false ]
  %32 = load i32, i32* %b2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %32, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %33 = load i32, i32* %b2, align 4, !tbaa !5
  %sub16 = sub nsw i32 0, %33
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  %34 = load i32, i32* %b2, align 4, !tbaa !5
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %sub16, %cond.true.15 ], [ %34, %cond.false.17 ]
  %cmp20 = icmp slt i32 %cond, %cond19
  br i1 %cmp20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %cond.end.18
  %35 = load i32, i32* %c, align 4, !tbaa !5
  %cmp22 = icmp ne i32 %35, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.21
  %36 = load i32, i32* %c, align 4, !tbaa !5
  %sub24 = sub nsw i32 0, %36
  %conv = sitofp i32 %sub24 to double
  %37 = load i32, i32* %b2, align 4, !tbaa !5
  %conv25 = sitofp i32 %37 to double
  %div = fdiv double %conv, %conv25
  %38 = load double*, double** %pst.addr, align 8, !tbaa !1
  store double %div, double* %38, align 8, !tbaa !24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else:                                          ; preds = %land.lhs.true.21, %cond.end.18, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end:                                           ; preds = %entry
  %39 = load i32, i32* %c, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %39, 0
  br i1 %cmp26, label %if.then.28, label %if.else.58

if.then.28:                                       ; preds = %if.end
  %40 = load i32, i32* %a, align 4, !tbaa !5
  %41 = load i32, i32* %b, align 4, !tbaa !5
  %xor29 = xor i32 %40, %41
  %cmp30 = icmp slt i32 %xor29, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.57

land.lhs.true.32:                                 ; preds = %if.then.28
  %42 = load i32, i32* %b2, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %42, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %land.lhs.true.32
  %43 = load i32, i32* %b2, align 4, !tbaa !5
  %sub36 = sub nsw i32 0, %43
  br label %cond.end.38

cond.false.37:                                    ; preds = %land.lhs.true.32
  %44 = load i32, i32* %b2, align 4, !tbaa !5
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi i32 [ %sub36, %cond.true.35 ], [ %44, %cond.false.37 ]
  %45 = load i32, i32* %a3, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %45, 0
  br i1 %cmp40, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %cond.end.38
  %46 = load i32, i32* %a3, align 4, !tbaa !5
  %sub43 = sub nsw i32 0, %46
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.38
  %47 = load i32, i32* %a3, align 4, !tbaa !5
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi i32 [ %sub43, %cond.true.42 ], [ %47, %cond.false.44 ]
  %cmp47 = icmp slt i32 %cond39, %cond46
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.57

land.lhs.true.49:                                 ; preds = %cond.end.45
  %48 = load i32, i32* %b, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %48, 0
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %land.lhs.true.49
  %49 = load i32, i32* %b2, align 4, !tbaa !5
  %sub53 = sub nsw i32 0, %49
  %conv54 = sitofp i32 %sub53 to double
  %50 = load i32, i32* %a3, align 4, !tbaa !5
  %conv55 = sitofp i32 %50 to double
  %div56 = fdiv double %conv54, %conv55
  %51 = load double*, double** %pst.addr, align 8, !tbaa !1
  store double %div56, double* %51, align 8, !tbaa !24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.57:                                       ; preds = %land.lhs.true.49, %cond.end.45, %if.then.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.58:                                       ; preds = %if.end
  %52 = load i32, i32* %a3, align 4, !tbaa !5
  %53 = load i32, i32* %b2, align 4, !tbaa !5
  %add59 = add nsw i32 %52, %53
  %54 = load i32, i32* %c, align 4, !tbaa !5
  %add60 = add nsw i32 %add59, %54
  store i32 %add60, i32* %dv_end, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %add60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.95

if.then.63:                                       ; preds = %if.else.58
  %55 = load i32, i32* %a, align 4, !tbaa !5
  %56 = load i32, i32* %b, align 4, !tbaa !5
  %xor64 = xor i32 %55, %56
  %cmp65 = icmp slt i32 %xor64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.94

land.lhs.true.67:                                 ; preds = %if.then.63
  %57 = load i32, i32* %b2, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %57, 0
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %land.lhs.true.67
  %58 = load i32, i32* %b2, align 4, !tbaa !5
  %sub71 = sub nsw i32 0, %58
  br label %cond.end.73

cond.false.72:                                    ; preds = %land.lhs.true.67
  %59 = load i32, i32* %b2, align 4, !tbaa !5
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.70
  %cond74 = phi i32 [ %sub71, %cond.true.70 ], [ %59, %cond.false.72 ]
  store i32 %cond74, i32* %b2abs, align 4, !tbaa !5
  %60 = load i32, i32* %a3, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %60, 0
  br i1 %cmp75, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.end.73
  %61 = load i32, i32* %a3, align 4, !tbaa !5
  %sub78 = sub nsw i32 0, %61
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.73
  %62 = load i32, i32* %a3, align 4, !tbaa !5
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %sub78, %cond.true.77 ], [ %62, %cond.false.79 ]
  store i32 %cond81, i32* %a3abs, align 4, !tbaa !5
  %cmp82 = icmp sgt i32 %cond74, %cond81
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.94

land.lhs.true.84:                                 ; preds = %cond.end.80
  %63 = load i32, i32* %b2abs, align 4, !tbaa !5
  %64 = load i32, i32* %a3abs, align 4, !tbaa !5
  %shl85 = shl i32 %64, 1
  %cmp86 = icmp slt i32 %63, %shl85
  br i1 %cmp86, label %if.then.88, label %if.else.94

if.then.88:                                       ; preds = %land.lhs.true.84
  %65 = load i32, i32* %b2, align 4, !tbaa !5
  %sub89 = sub nsw i32 0, %65
  %66 = load i32, i32* %a3, align 4, !tbaa !5
  %sub90 = sub nsw i32 %sub89, %66
  %conv91 = sitofp i32 %sub90 to double
  %67 = load i32, i32* %a3, align 4, !tbaa !5
  %conv92 = sitofp i32 %67 to double
  %div93 = fdiv double %conv91, %conv92
  %68 = load double*, double** %pst.addr, align 8, !tbaa !1
  store double %div93, double* %68, align 8, !tbaa !24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.94:                                       ; preds = %land.lhs.true.84, %cond.end.80, %if.then.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.95:                                       ; preds = %if.else.58
  %69 = load i32, i32* %dv_end, align 4, !tbaa !5
  %70 = load i32, i32* %c, align 4, !tbaa !5
  %xor96 = xor i32 %69, %70
  %cmp97 = icmp slt i32 %xor96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.else.95
  br label %if.end.125

if.else.100:                                      ; preds = %if.else.95
  %71 = load i32, i32* %a, align 4, !tbaa !5
  %72 = load i32, i32* %b, align 4, !tbaa !5
  %xor101 = xor i32 %71, %72
  %cmp102 = icmp sge i32 %xor101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.else.100
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.else.105:                                      ; preds = %if.else.100
  %73 = load i32, i32* %b, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %73, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %if.else.105
  %74 = load i32, i32* %b, align 4, !tbaa !5
  %sub109 = sub nsw i32 0, %74
  br label %cond.end.111

cond.false.110:                                   ; preds = %if.else.105
  %75 = load i32, i32* %b, align 4, !tbaa !5
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.108
  %cond112 = phi i32 [ %sub109, %cond.true.108 ], [ %75, %cond.false.110 ]
  %76 = load i32, i32* %a3, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %76, 0
  br i1 %cmp113, label %cond.true.115, label %cond.false.117

cond.true.115:                                    ; preds = %cond.end.111
  %77 = load i32, i32* %a3, align 4, !tbaa !5
  %sub116 = sub nsw i32 0, %77
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.end.111
  %78 = load i32, i32* %a3, align 4, !tbaa !5
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.115
  %cond119 = phi i32 [ %sub116, %cond.true.115 ], [ %78, %cond.false.117 ]
  %cmp120 = icmp sge i32 %cond112, %cond119
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %cond.end.118
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.123:                                       ; preds = %cond.end.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.99
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126
  %79 = bitcast double* %nbf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i32, i32* %b, align 4, !tbaa !5
  %sub128 = sub nsw i32 0, %80
  %conv129 = sitofp i32 %sub128 to double
  store double %conv129, double* %nbf, align 8, !tbaa !24
  %81 = bitcast double* %a3f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load i32, i32* %a3, align 4, !tbaa !5
  %conv130 = sitofp i32 %82 to double
  store double %conv130, double* %a3f, align 8, !tbaa !24
  %83 = bitcast double* %radicand to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = load double, double* %nbf, align 8, !tbaa !24
  %85 = load double, double* %nbf, align 8, !tbaa !24
  %mul = fmul double %84, %85
  %86 = load double, double* %a3f, align 8, !tbaa !24
  %87 = load i32, i32* %c, align 4, !tbaa !5
  %conv131 = sitofp i32 %87 to double
  %mul132 = fmul double %86, %conv131
  %sub133 = fsub double %mul, %mul132
  store double %sub133, double* %radicand, align 8, !tbaa !24
  %88 = load double, double* %radicand, align 8, !tbaa !24
  %cmp134 = fcmp olt double %88, 0.000000e+00
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.127
  br label %do.body

do.body:                                          ; preds = %if.then.136
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.end.127
  %89 = bitcast double* %root to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load double, double* %radicand, align 8, !tbaa !24
  %call = call double @sqrt(double %90) #8
  store double %call, double* %root, align 8, !tbaa !24
  %91 = bitcast i32* %nzeros to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 0, i32* %nzeros, align 4, !tbaa !5
  %92 = bitcast double* %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load double, double* %nbf, align 8, !tbaa !24
  %94 = load double, double* %root, align 8, !tbaa !24
  %sub138 = fsub double %93, %94
  %95 = load double, double* %a3f, align 8, !tbaa !24
  %div139 = fdiv double %sub138, %95
  store double %div139, double* %z, align 8, !tbaa !24
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.137
  br label %do.cond.141

do.cond.141:                                      ; preds = %do.body.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  %96 = load double, double* %z, align 8, !tbaa !24
  %cmp143 = fcmp ogt double %96, 0.000000e+00
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.149

land.lhs.true.145:                                ; preds = %do.end.142
  %97 = load double, double* %z, align 8, !tbaa !24
  %cmp146 = fcmp olt double %97, 1.000000e+00
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %land.lhs.true.145
  %98 = load double, double* %z, align 8, !tbaa !24
  %99 = load double*, double** %pst.addr, align 8, !tbaa !1
  store double %98, double* %99, align 8, !tbaa !24
  store i32 1, i32* %nzeros, align 4, !tbaa !5
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %land.lhs.true.145, %do.end.142
  %100 = load double, double* %root, align 8, !tbaa !24
  %cmp150 = fcmp une double %100, 0.000000e+00
  br i1 %cmp150, label %if.then.152, label %if.end.169

if.then.152:                                      ; preds = %if.end.149
  %101 = load double, double* %nbf, align 8, !tbaa !24
  %102 = load double, double* %root, align 8, !tbaa !24
  %add153 = fadd double %101, %102
  %103 = load double, double* %a3f, align 8, !tbaa !24
  %div154 = fdiv double %add153, %103
  store double %div154, double* %z, align 8, !tbaa !24
  %104 = load double, double* %z, align 8, !tbaa !24
  %cmp155 = fcmp ogt double %104, 0.000000e+00
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.168

land.lhs.true.157:                                ; preds = %if.then.152
  %105 = load double, double* %z, align 8, !tbaa !24
  %cmp158 = fcmp olt double %105, 1.000000e+00
  br i1 %cmp158, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %land.lhs.true.157
  %106 = load i32, i32* %nzeros, align 4, !tbaa !5
  %tobool = icmp ne i32 %106, 0
  br i1 %tobool, label %land.lhs.true.161, label %if.else.165

land.lhs.true.161:                                ; preds = %if.then.160
  %107 = load double, double* %a3f, align 8, !tbaa !24
  %cmp162 = fcmp olt double %107, 0.000000e+00
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %land.lhs.true.161
  %108 = load double*, double** %pst.addr, align 8, !tbaa !1
  %109 = load double, double* %108, align 8, !tbaa !24
  %110 = load double*, double** %pst.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %110, i64 1
  store double %109, double* %arrayidx, align 8, !tbaa !24
  %111 = load double, double* %z, align 8, !tbaa !24
  %112 = load double*, double** %pst.addr, align 8, !tbaa !1
  store double %111, double* %112, align 8, !tbaa !24
  br label %if.end.167

if.else.165:                                      ; preds = %land.lhs.true.161, %if.then.160
  %113 = load double, double* %z, align 8, !tbaa !24
  %114 = load i32, i32* %nzeros, align 4, !tbaa !5
  %idxprom = sext i32 %114 to i64
  %115 = load double*, double** %pst.addr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds double, double* %115, i64 %idxprom
  store double %113, double* %arrayidx166, align 8, !tbaa !24
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.164
  %116 = load i32, i32* %nzeros, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %nzeros, align 4, !tbaa !5
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.157, %if.then.152
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.149
  %117 = load i32, i32* %nzeros, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %118 = bitcast double* %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i32* %nzeros to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast double* %root to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.169, %do.end
  %121 = bitcast double* %radicand to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast double* %a3f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast double* %nbf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %cleanup.172

cleanup.172:                                      ; preds = %cleanup, %if.then.122, %if.then.104, %if.else.94, %if.then.88, %if.else.57, %if.then.52, %if.else, %if.then.23
  %124 = bitcast i32* %a3abs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %b2abs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %dv_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %a3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %v12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %v01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare i32 @curve_coeffs_ranged(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_path_has_long_segments(%struct.gx_path_s* %ppath) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %pt0 = alloca %struct.gs_fixed_point_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !31
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !37
  %4 = bitcast %struct.subpath_s* %3 to %struct.segment_s*
  store %struct.segment_s* %4, %struct.segment_s** %pseg, align 8, !tbaa !1
  %5 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !30
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %tobool = icmp ne %struct.segment_s* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %7, i32 0, i32 2
  %8 = load i16, i16* %type, align 2, !tbaa !38
  %conv = zext i16 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %while.body
  %9 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 4
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %10 = load i32, i32* %x1, align 4, !tbaa !40
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 0
  %11 = load i32, i32* %x2, align 4, !tbaa !27
  %call = call i32 @gx_check_fixed_diff_overflow(i32 %10, i32 %11) #6
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %12 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %12, i32 0, i32 4
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 1
  %13 = load i32, i32* %y5, align 4, !tbaa !41
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt0, i32 0, i32 1
  %14 = load i32, i32* %y6, align 4, !tbaa !30
  %call7 = call i32 @gx_check_fixed_diff_overflow(i32 %13, i32 %14) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %while.body
  %15 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %15, i32 0, i32 4
  %16 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  %17 = bitcast %struct.gs_fixed_point_s* %pt9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 4, i1 false), !tbaa.struct !74
  %18 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %18, i32 0, i32 1
  %19 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !58
  store %struct.segment_s* %19, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %20 = bitcast %struct.gs_fixed_point_s* %pt0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define i32 @gx_path_merge_contacting_contours(%struct.gx_path_s* %ppath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %window = alloca i32, align 4
  %sp0 = alloca %struct.subpath_s*, align 8
  %sp0last = alloca %struct.segment_s*, align 8
  %sp1 = alloca %struct.subpath_s*, align 8
  %spnext = alloca %struct.subpath_s*, align 8
  %sp1p = alloca %struct.subpath_s*, align 8
  %count = alloca i32, align 4
  %sp1last = alloca %struct.segment_s*, align 8
  %sc0 = alloca %struct.segment_s*, align 8
  %sc1 = alloca %struct.segment_s*, align 8
  %old_first = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 30, i32* %window, align 4, !tbaa !5
  %1 = bitcast %struct.subpath_s** %sp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !31
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %3, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %4 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !37
  store %struct.subpath_s* %4, %struct.subpath_s** %sp0, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %entry
  %5 = load %struct.subpath_s*, %struct.subpath_s** %sp0, align 8, !tbaa !1
  %cmp = icmp ne %struct.subpath_s* %5, null
  br i1 %cmp, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.segment_s** %sp0last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.subpath_s*, %struct.subpath_s** %sp0, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %7, i32 0, i32 5
  %8 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !53
  store %struct.segment_s* %8, %struct.segment_s** %sp0last, align 8, !tbaa !1
  %9 = bitcast %struct.subpath_s** %sp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.segment_s*, %struct.segment_s** %sp0last, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %10, i32 0, i32 1
  %11 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !58
  %12 = bitcast %struct.segment_s* %11 to %struct.subpath_s*
  store %struct.subpath_s* %12, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %13 = bitcast %struct.subpath_s** %spnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.subpath_s** %sp1p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.subpath_s*, %struct.subpath_s** %sp0, align 8, !tbaa !1
  store %struct.subpath_s* %15, %struct.subpath_s** %sp1p, align 8, !tbaa !1
  %16 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %17 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.subpath_s* %17, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %18 = load i32, i32* %count, align 4, !tbaa !5
  %19 = load i32, i32* %window, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %20 = phi i1 [ false, %for.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %20, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %land.end
  %21 = bitcast %struct.segment_s** %sp1last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %last5 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %22, i32 0, i32 5
  %23 = load %struct.segment_s*, %struct.segment_s** %last5, align 8, !tbaa !53
  store %struct.segment_s* %23, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %24 = bitcast %struct.segment_s** %sc0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast %struct.segment_s** %sc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast %struct.segment_s** %old_first to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 1
  %28 = load %struct.segment_s*, %struct.segment_s** %next6, align 8, !tbaa !58
  %29 = bitcast %struct.segment_s* %28 to %struct.subpath_s*
  store %struct.subpath_s* %29, %struct.subpath_s** %spnext, align 8, !tbaa !1
  %30 = load %struct.subpath_s*, %struct.subpath_s** %sp0, align 8, !tbaa !1
  %31 = load %struct.segment_s*, %struct.segment_s** %sp0last, align 8, !tbaa !1
  %32 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %33 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %call = call i32 @find_contacting_segments(%struct.subpath_s* %30, %struct.segment_s* %31, %struct.subpath_s* %32, %struct.segment_s* %33, %struct.segment_s** %sc0, %struct.segment_s** %sc1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.102

if.then:                                          ; preds = %for.body.4
  %34 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %34, i32 0, i32 1
  %35 = load %struct.segment_s*, %struct.segment_s** %next7, align 8, !tbaa !58
  %36 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %36, i32 0, i32 0
  %37 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !75
  %next8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 1
  store %struct.segment_s* %35, %struct.segment_s** %next8, align 8, !tbaa !58
  %38 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %38, i32 0, i32 1
  %39 = load %struct.segment_s*, %struct.segment_s** %next9, align 8, !tbaa !58
  %cmp10 = icmp ne %struct.segment_s* %39, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %40 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %prev12 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %40, i32 0, i32 0
  %41 = load %struct.segment_s*, %struct.segment_s** %prev12, align 8, !tbaa !75
  %42 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next13 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %42, i32 0, i32 1
  %43 = load %struct.segment_s*, %struct.segment_s** %next13, align 8, !tbaa !58
  %prev14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 0
  store %struct.segment_s* %41, %struct.segment_s** %prev14, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %44 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %prev15 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %44, i32 0, i32 0
  store %struct.segment_s* null, %struct.segment_s** %prev15, align 8, !tbaa !75
  %45 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next16 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next16, align 8, !tbaa !58
  %46 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %next17 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %46, i32 0, i32 1
  %47 = load %struct.segment_s*, %struct.segment_s** %next17, align 8, !tbaa !76
  store %struct.segment_s* %47, %struct.segment_s** %old_first, align 8, !tbaa !1
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %48, i32 0, i32 3
  %49 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments18, align 8, !tbaa !31
  %contents19 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %49, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents19, i32 0, i32 1
  %50 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !52
  %51 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.subpath_s* %50, %51
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end
  %52 = load %struct.subpath_s*, %struct.subpath_s** %sp1p, align 8, !tbaa !1
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %53, i32 0, i32 3
  %54 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments22, align 8, !tbaa !31
  %contents23 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %54, i32 0, i32 1
  %subpath_current24 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents23, i32 0, i32 1
  store %struct.subpath_s* %52, %struct.subpath_s** %subpath_current24, align 8, !tbaa !52
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end
  %55 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %55, i32 0, i32 2
  %56 = load i16, i16* %type, align 2, !tbaa !38
  %conv = zext i16 %56 to i32
  %cmp26 = icmp eq i32 %conv, 2
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.25
  %57 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %type29 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %57, i32 0, i32 2
  store i16 1, i16* %type29, align 2, !tbaa !38
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %58, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !77
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %60 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !78
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !77
  %call31 = call %struct.gs_memory_s* %60(%struct.gs_memory_s* %62) #6
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call31, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !81
  %64 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %64, i32 0, i32 1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !77
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %stable35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 3
  %66 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable35, align 8, !tbaa !78
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %67, i32 0, i32 1
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !77
  %call37 = call %struct.gs_memory_s* %66(%struct.gs_memory_s* %68) #6
  %69 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %70 = bitcast %struct.subpath_s* %69 to i8*
  call void %63(%struct.gs_memory_s* %call37, i8* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #6
  br label %if.end.67

if.else:                                          ; preds = %if.end.25
  %71 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %72 = load i32, i32* %x, align 4, !tbaa !40
  %73 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %pt38 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %73, i32 0, i32 4
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt38, i32 0, i32 0
  %74 = load i32, i32* %x39, align 4, !tbaa !82
  %cmp40 = icmp eq i32 %72, %74
  br i1 %cmp40, label %land.lhs.true, label %if.else.60

land.lhs.true:                                    ; preds = %if.else
  %75 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %pt42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %75, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt42, i32 0, i32 1
  %76 = load i32, i32* %y, align 4, !tbaa !41
  %77 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %pt43 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %77, i32 0, i32 4
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt43, i32 0, i32 1
  %78 = load i32, i32* %y44, align 4, !tbaa !83
  %cmp45 = icmp eq i32 %76, %78
  br i1 %cmp45, label %if.then.47, label %if.else.60

if.then.47:                                       ; preds = %land.lhs.true
  %79 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %79, i32 0, i32 1
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !77
  %procs49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %stable50 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs49, i32 0, i32 3
  %81 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable50, align 8, !tbaa !78
  %82 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %82, i32 0, i32 1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !77
  %call52 = call %struct.gs_memory_s* %81(%struct.gs_memory_s* %83) #6
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call52, i32 0, i32 1
  %free_object54 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 2
  %84 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object54, align 8, !tbaa !81
  %85 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %85, i32 0, i32 1
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !77
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %stable57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 3
  %87 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable57, align 8, !tbaa !78
  %88 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %88, i32 0, i32 1
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !77
  %call59 = call %struct.gs_memory_s* %87(%struct.gs_memory_s* %89) #6
  %90 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %91 = bitcast %struct.subpath_s* %90 to i8*
  call void %84(%struct.gs_memory_s* %call59, i8* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #6
  br label %if.end.66

if.else.60:                                       ; preds = %land.lhs.true, %if.else
  %92 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %type61 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %92, i32 0, i32 2
  store i16 1, i16* %type61, align 2, !tbaa !84
  %93 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %94 = bitcast %struct.subpath_s* %93 to %struct.segment_s*
  %95 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next62 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %95, i32 0, i32 1
  store %struct.segment_s* %94, %struct.segment_s** %next62, align 8, !tbaa !58
  %96 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %next63 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %96, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next63, align 8, !tbaa !76
  %97 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %98 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %prev64 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %98, i32 0, i32 0
  store %struct.segment_s* %97, %struct.segment_s** %prev64, align 8, !tbaa !75
  %99 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %last65 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %99, i32 0, i32 5
  store %struct.segment_s* null, %struct.segment_s** %last65, align 8, !tbaa !53
  %100 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %101 = bitcast %struct.subpath_s* %100 to %struct.segment_s*
  store %struct.segment_s* %101, %struct.segment_s** %sp1last, align 8, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.60, %if.then.47
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.28
  store %struct.subpath_s* null, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %102 = load %struct.segment_s*, %struct.segment_s** %old_first, align 8, !tbaa !1
  %103 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next68 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %103, i32 0, i32 1
  store %struct.segment_s* %102, %struct.segment_s** %next68, align 8, !tbaa !58
  %104 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %105 = load %struct.segment_s*, %struct.segment_s** %old_first, align 8, !tbaa !1
  %prev69 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %105, i32 0, i32 0
  store %struct.segment_s* %104, %struct.segment_s** %prev69, align 8, !tbaa !59
  %106 = load %struct.segment_s*, %struct.segment_s** %sc1, align 8, !tbaa !1
  %prev70 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %106, i32 0, i32 0
  %107 = load %struct.segment_s*, %struct.segment_s** %prev70, align 8, !tbaa !59
  store %struct.segment_s* %107, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %108 = load %struct.segment_s*, %struct.segment_s** %sc1, align 8, !tbaa !1
  %prev71 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %108, i32 0, i32 0
  %109 = load %struct.segment_s*, %struct.segment_s** %prev71, align 8, !tbaa !59
  %next72 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %109, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next72, align 8, !tbaa !58
  %110 = load %struct.segment_s*, %struct.segment_s** %sc1, align 8, !tbaa !1
  %prev73 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %110, i32 0, i32 0
  store %struct.segment_s* null, %struct.segment_s** %prev73, align 8, !tbaa !59
  %111 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments74 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %111, i32 0, i32 3
  %112 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments74, align 8, !tbaa !31
  %contents75 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %112, i32 0, i32 1
  %subpath_current76 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents75, i32 0, i32 1
  %113 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current76, align 8, !tbaa !52
  %114 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %cmp77 = icmp eq %struct.subpath_s* %113, %114
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.67
  %115 = load %struct.subpath_s*, %struct.subpath_s** %sp1p, align 8, !tbaa !1
  %116 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments80 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %116, i32 0, i32 3
  %117 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments80, align 8, !tbaa !31
  %contents81 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %117, i32 0, i32 1
  %subpath_current82 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents81, i32 0, i32 1
  store %struct.subpath_s* %115, %struct.subpath_s** %subpath_current82, align 8, !tbaa !52
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.67
  %118 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory84 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %118, i32 0, i32 1
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory84, align 8, !tbaa !77
  %procs85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %stable86 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs85, i32 0, i32 3
  %120 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable86, align 8, !tbaa !78
  %121 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory87 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %121, i32 0, i32 1
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory87, align 8, !tbaa !77
  %call88 = call %struct.gs_memory_s* %120(%struct.gs_memory_s* %122) #6
  %procs89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call88, i32 0, i32 1
  %free_object90 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs89, i32 0, i32 2
  %123 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object90, align 8, !tbaa !81
  %124 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %124, i32 0, i32 1
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !77
  %procs92 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %stable93 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs92, i32 0, i32 3
  %126 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable93, align 8, !tbaa !78
  %127 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %memory94 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %127, i32 0, i32 1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !77
  %call95 = call %struct.gs_memory_s* %126(%struct.gs_memory_s* %128) #6
  %129 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %130 = bitcast %struct.subpath_s* %129 to i8*
  call void %123(%struct.gs_memory_s* %call95, i8* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #6
  store %struct.subpath_s* null, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %131 = load %struct.segment_s*, %struct.segment_s** %sc1, align 8, !tbaa !1
  %132 = load %struct.segment_s*, %struct.segment_s** %sc0, align 8, !tbaa !1
  %prev96 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %132, i32 0, i32 0
  %133 = load %struct.segment_s*, %struct.segment_s** %prev96, align 8, !tbaa !59
  %next97 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %133, i32 0, i32 1
  store %struct.segment_s* %131, %struct.segment_s** %next97, align 8, !tbaa !58
  %134 = load %struct.segment_s*, %struct.segment_s** %sc0, align 8, !tbaa !1
  %prev98 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %134, i32 0, i32 0
  %135 = load %struct.segment_s*, %struct.segment_s** %prev98, align 8, !tbaa !59
  %136 = load %struct.segment_s*, %struct.segment_s** %sc1, align 8, !tbaa !1
  %prev99 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %136, i32 0, i32 0
  store %struct.segment_s* %135, %struct.segment_s** %prev99, align 8, !tbaa !59
  %137 = load %struct.segment_s*, %struct.segment_s** %sc0, align 8, !tbaa !1
  %138 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %next100 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %138, i32 0, i32 1
  store %struct.segment_s* %137, %struct.segment_s** %next100, align 8, !tbaa !58
  %139 = load %struct.segment_s*, %struct.segment_s** %sp1last, align 8, !tbaa !1
  %140 = load %struct.segment_s*, %struct.segment_s** %sc0, align 8, !tbaa !1
  %prev101 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %140, i32 0, i32 0
  store %struct.segment_s* %139, %struct.segment_s** %prev101, align 8, !tbaa !59
  %141 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %141, i32 0, i32 12
  %142 = load i32, i32* %subpath_count, align 4, !tbaa !85
  %dec = add nsw i32 %142, -1
  store i32 %dec, i32* %subpath_count, align 4, !tbaa !85
  br label %if.end.103

if.else.102:                                      ; preds = %for.body.4
  %143 = load %struct.subpath_s*, %struct.subpath_s** %sp1, align 8, !tbaa !1
  store %struct.subpath_s* %143, %struct.subpath_s** %sp1p, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.end.83
  %144 = bitcast %struct.segment_s** %old_first to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct.segment_s** %sc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.segment_s** %sc0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.segment_s** %sp1last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %148 = load %struct.subpath_s*, %struct.subpath_s** %spnext, align 8, !tbaa !1
  store %struct.subpath_s* %148, %struct.subpath_s** %sp1, align 8, !tbaa !1
  %149 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %149, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %150 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast %struct.subpath_s** %sp1p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.subpath_s** %spnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.subpath_s** %sp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast %struct.segment_s** %sp0last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end
  %155 = load %struct.subpath_s*, %struct.subpath_s** %sp0, align 8, !tbaa !1
  %last105 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %155, i32 0, i32 5
  %156 = load %struct.segment_s*, %struct.segment_s** %last105, align 8, !tbaa !53
  %next106 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %156, i32 0, i32 1
  %157 = load %struct.segment_s*, %struct.segment_s** %next106, align 8, !tbaa !58
  %158 = bitcast %struct.segment_s* %157 to %struct.subpath_s*
  store %struct.subpath_s* %158, %struct.subpath_s** %sp0, align 8, !tbaa !1
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  %159 = bitcast %struct.subpath_s** %sp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @find_contacting_segments(%struct.subpath_s* %sp0, %struct.segment_s* %sp0last, %struct.subpath_s* %sp1, %struct.segment_s* %sp1last, %struct.segment_s** %sc0, %struct.segment_s** %sc1) #0 {
entry:
  %retval = alloca i32, align 4
  %sp0.addr = alloca %struct.subpath_s*, align 8
  %sp0last.addr = alloca %struct.segment_s*, align 8
  %sp1.addr = alloca %struct.subpath_s*, align 8
  %sp1last.addr = alloca %struct.segment_s*, align 8
  %sc0.addr = alloca %struct.segment_s**, align 8
  %sc1.addr = alloca %struct.segment_s**, align 8
  %s0 = alloca %struct.segment_s*, align 8
  %s1 = alloca %struct.segment_s*, align 8
  %s0s = alloca %struct.segment_s*, align 8
  %s1s = alloca %struct.segment_s*, align 8
  %count0 = alloca i32, align 4
  %count1 = alloca i32, align 4
  %search_limit = alloca i32, align 4
  %min_length = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %y0221 = alloca i32, align 4
  %y1236 = alloca i32, align 4
  store %struct.subpath_s* %sp0, %struct.subpath_s** %sp0.addr, align 8, !tbaa !1
  store %struct.segment_s* %sp0last, %struct.segment_s** %sp0last.addr, align 8, !tbaa !1
  store %struct.subpath_s* %sp1, %struct.subpath_s** %sp1.addr, align 8, !tbaa !1
  store %struct.segment_s* %sp1last, %struct.segment_s** %sp1last.addr, align 8, !tbaa !1
  store %struct.segment_s** %sc0, %struct.segment_s*** %sc0.addr, align 8, !tbaa !1
  store %struct.segment_s** %sc1, %struct.segment_s*** %sc1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %s0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.segment_s** %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.segment_s** %s0s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.segment_s** %s1s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %count0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %search_limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 50, i32* %search_limit, align 4, !tbaa !5
  %7 = bitcast i32* %min_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 256, i32* %min_length, align 4, !tbaa !5
  %8 = load %struct.segment_s*, %struct.segment_s** %sp0last.addr, align 8, !tbaa !1
  store %struct.segment_s* %8, %struct.segment_s** %s0, align 8, !tbaa !1
  store i32 0, i32* %count0, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.264, %entry
  %9 = load i32, i32* %count0, align 4, !tbaa !5
  %10 = load i32, i32* %search_limit, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %12 = load %struct.subpath_s*, %struct.subpath_s** %sp0.addr, align 8, !tbaa !1
  %13 = bitcast %struct.subpath_s* %12 to %struct.segment_s*
  %cmp1 = icmp ne %struct.segment_s* %11, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %14, label %for.body, label %for.end.267

for.body:                                         ; preds = %land.end
  %15 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %15, i32 0, i32 0
  %16 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !59
  store %struct.segment_s* %16, %struct.segment_s** %s0s, align 8, !tbaa !1
  %17 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 2
  %18 = load i16, i16* %type, align 2, !tbaa !38
  %conv = zext i16 %18 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %type4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %19, i32 0, i32 2
  %20 = load i16, i16* %type4, align 2, !tbaa !38
  %conv5 = zext i16 %20 to i32
  %cmp6 = icmp eq i32 %conv5, 5
  br i1 %cmp6, label %land.lhs.true, label %if.end.263

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %21 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !40
  %23 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt8, i32 0, i32 0
  %24 = load i32, i32* %x9, align 4, !tbaa !40
  %cmp10 = icmp eq i32 %22, %24
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %25 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt13 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 4
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt13, i32 0, i32 0
  %26 = load i32, i32* %x14, align 4, !tbaa !40
  %27 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt15 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 4
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt15, i32 0, i32 0
  %28 = load i32, i32* %x16, align 4, !tbaa !40
  %sub = sub nsw i32 %26, %28
  %cmp17 = icmp slt i32 %sub, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.12
  %29 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 4
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt19, i32 0, i32 0
  %30 = load i32, i32* %x20, align 4, !tbaa !40
  %31 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 4
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 0
  %32 = load i32, i32* %x22, align 4, !tbaa !40
  %sub23 = sub nsw i32 %30, %32
  %sub24 = sub nsw i32 0, %sub23
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.12
  %33 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt25 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 4
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 0
  %34 = load i32, i32* %x26, align 4, !tbaa !40
  %35 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt27 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 4
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt27, i32 0, i32 0
  %36 = load i32, i32* %x28, align 4, !tbaa !40
  %sub29 = sub nsw i32 %34, %36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub24, %cond.true ], [ %sub29, %cond.false ]
  %cmp30 = icmp eq i32 %cond, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.263

land.lhs.true.32:                                 ; preds = %cond.end
  %37 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt33, i32 0, i32 1
  %38 = load i32, i32* %y, align 4, !tbaa !41
  %39 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt34 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %39, i32 0, i32 4
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt34, i32 0, i32 1
  %40 = load i32, i32* %y35, align 4, !tbaa !41
  %sub36 = sub nsw i32 %38, %40
  %cmp37 = icmp slt i32 %sub36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.46

cond.true.39:                                     ; preds = %land.lhs.true.32
  %41 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt40 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %41, i32 0, i32 4
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt40, i32 0, i32 1
  %42 = load i32, i32* %y41, align 4, !tbaa !41
  %43 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 4
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt42, i32 0, i32 1
  %44 = load i32, i32* %y43, align 4, !tbaa !41
  %sub44 = sub nsw i32 %42, %44
  %sub45 = sub nsw i32 0, %sub44
  br label %cond.end.52

cond.false.46:                                    ; preds = %land.lhs.true.32
  %45 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt47 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 4
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt47, i32 0, i32 1
  %46 = load i32, i32* %y48, align 4, !tbaa !41
  %47 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %47, i32 0, i32 4
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt49, i32 0, i32 1
  %48 = load i32, i32* %y50, align 4, !tbaa !41
  %sub51 = sub nsw i32 %46, %48
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.46, %cond.true.39
  %cond53 = phi i32 [ %sub45, %cond.true.39 ], [ %sub51, %cond.false.46 ]
  %49 = load i32, i32* %min_length, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 %cond53, %49
  br i1 %cmp54, label %if.then, label %if.end.263

if.then:                                          ; preds = %cond.end.52, %land.lhs.true
  %50 = load %struct.segment_s*, %struct.segment_s** %sp1last.addr, align 8, !tbaa !1
  store %struct.segment_s* %50, %struct.segment_s** %s1, align 8, !tbaa !1
  store i32 0, i32* %count1, align 4, !tbaa !5
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %if.then
  %51 = load i32, i32* %count1, align 4, !tbaa !5
  %52 = load i32, i32* %search_limit, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %51, %52
  br i1 %cmp57, label %land.rhs.59, label %land.end.62

land.rhs.59:                                      ; preds = %for.cond.56
  %53 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %54 = load %struct.subpath_s*, %struct.subpath_s** %sp1.addr, align 8, !tbaa !1
  %55 = bitcast %struct.subpath_s* %54 to %struct.segment_s*
  %cmp60 = icmp ne %struct.segment_s* %53, %55
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.59, %for.cond.56
  %56 = phi i1 [ false, %for.cond.56 ], [ %cmp60, %land.rhs.59 ]
  br i1 %56, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %land.end.62
  %57 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %prev64 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %57, i32 0, i32 0
  %58 = load %struct.segment_s*, %struct.segment_s** %prev64, align 8, !tbaa !59
  store %struct.segment_s* %58, %struct.segment_s** %s1s, align 8, !tbaa !1
  %59 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %type65 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %59, i32 0, i32 2
  %60 = load i16, i16* %type65, align 2, !tbaa !38
  %conv66 = zext i16 %60 to i32
  %cmp67 = icmp eq i32 %conv66, 1
  br i1 %cmp67, label %land.lhs.true.74, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %for.body.63
  %61 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %type70 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %61, i32 0, i32 2
  %62 = load i16, i16* %type70, align 2, !tbaa !38
  %conv71 = zext i16 %62 to i32
  %cmp72 = icmp eq i32 %conv71, 5
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.261

land.lhs.true.74:                                 ; preds = %lor.lhs.false.69, %for.body.63
  %63 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt75 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %63, i32 0, i32 4
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt75, i32 0, i32 0
  %64 = load i32, i32* %x76, align 4, !tbaa !40
  %65 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt77 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %65, i32 0, i32 4
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt77, i32 0, i32 0
  %66 = load i32, i32* %x78, align 4, !tbaa !40
  %cmp79 = icmp eq i32 %64, %66
  br i1 %cmp79, label %if.then.131, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %land.lhs.true.74
  %67 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt82 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %67, i32 0, i32 4
  %x83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt82, i32 0, i32 0
  %68 = load i32, i32* %x83, align 4, !tbaa !40
  %69 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt84 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %69, i32 0, i32 4
  %x85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt84, i32 0, i32 0
  %70 = load i32, i32* %x85, align 4, !tbaa !40
  %sub86 = sub nsw i32 %68, %70
  %cmp87 = icmp slt i32 %sub86, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.96

cond.true.89:                                     ; preds = %lor.lhs.false.81
  %71 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt90 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 4
  %x91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt90, i32 0, i32 0
  %72 = load i32, i32* %x91, align 4, !tbaa !40
  %73 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt92 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %73, i32 0, i32 4
  %x93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt92, i32 0, i32 0
  %74 = load i32, i32* %x93, align 4, !tbaa !40
  %sub94 = sub nsw i32 %72, %74
  %sub95 = sub nsw i32 0, %sub94
  br label %cond.end.102

cond.false.96:                                    ; preds = %lor.lhs.false.81
  %75 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt97 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %75, i32 0, i32 4
  %x98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt97, i32 0, i32 0
  %76 = load i32, i32* %x98, align 4, !tbaa !40
  %77 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt99 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %77, i32 0, i32 4
  %x100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt99, i32 0, i32 0
  %78 = load i32, i32* %x100, align 4, !tbaa !40
  %sub101 = sub nsw i32 %76, %78
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.89
  %cond103 = phi i32 [ %sub95, %cond.true.89 ], [ %sub101, %cond.false.96 ]
  %cmp104 = icmp eq i32 %cond103, 1
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.261

land.lhs.true.106:                                ; preds = %cond.end.102
  %79 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt107 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %79, i32 0, i32 4
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt107, i32 0, i32 1
  %80 = load i32, i32* %y108, align 4, !tbaa !41
  %81 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt109 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %81, i32 0, i32 4
  %y110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt109, i32 0, i32 1
  %82 = load i32, i32* %y110, align 4, !tbaa !41
  %sub111 = sub nsw i32 %80, %82
  %cmp112 = icmp slt i32 %sub111, 0
  br i1 %cmp112, label %cond.true.114, label %cond.false.121

cond.true.114:                                    ; preds = %land.lhs.true.106
  %83 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt115 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %83, i32 0, i32 4
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt115, i32 0, i32 1
  %84 = load i32, i32* %y116, align 4, !tbaa !41
  %85 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt117 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %85, i32 0, i32 4
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt117, i32 0, i32 1
  %86 = load i32, i32* %y118, align 4, !tbaa !41
  %sub119 = sub nsw i32 %84, %86
  %sub120 = sub nsw i32 0, %sub119
  br label %cond.end.127

cond.false.121:                                   ; preds = %land.lhs.true.106
  %87 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt122 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %87, i32 0, i32 4
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt122, i32 0, i32 1
  %88 = load i32, i32* %y123, align 4, !tbaa !41
  %89 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt124 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %89, i32 0, i32 4
  %y125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt124, i32 0, i32 1
  %90 = load i32, i32* %y125, align 4, !tbaa !41
  %sub126 = sub nsw i32 %88, %90
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.121, %cond.true.114
  %cond128 = phi i32 [ %sub120, %cond.true.114 ], [ %sub126, %cond.false.121 ]
  %91 = load i32, i32* %min_length, align 4, !tbaa !5
  %cmp129 = icmp sgt i32 %cond128, %91
  br i1 %cmp129, label %if.then.131, label %if.end.261

if.then.131:                                      ; preds = %cond.end.127, %land.lhs.true.74
  %92 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt132 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %92, i32 0, i32 4
  %x133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt132, i32 0, i32 0
  %93 = load i32, i32* %x133, align 4, !tbaa !40
  %94 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt134 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %94, i32 0, i32 4
  %x135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt134, i32 0, i32 0
  %95 = load i32, i32* %x135, align 4, !tbaa !40
  %cmp136 = icmp eq i32 %93, %95
  br i1 %cmp136, label %if.then.159, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.then.131
  %96 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt139 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %96, i32 0, i32 4
  %x140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt139, i32 0, i32 0
  %97 = load i32, i32* %x140, align 4, !tbaa !40
  %98 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt141 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %98, i32 0, i32 4
  %x142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt141, i32 0, i32 0
  %99 = load i32, i32* %x142, align 4, !tbaa !40
  %cmp143 = icmp eq i32 %97, %99
  br i1 %cmp143, label %if.then.159, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.138
  %100 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt146 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %100, i32 0, i32 4
  %x147 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt146, i32 0, i32 0
  %101 = load i32, i32* %x147, align 4, !tbaa !40
  %102 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt148 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %102, i32 0, i32 4
  %x149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt148, i32 0, i32 0
  %103 = load i32, i32* %x149, align 4, !tbaa !40
  %cmp150 = icmp eq i32 %101, %103
  br i1 %cmp150, label %if.then.159, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.145
  %104 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt153 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %104, i32 0, i32 4
  %x154 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt153, i32 0, i32 0
  %105 = load i32, i32* %x154, align 4, !tbaa !40
  %106 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt155 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %106, i32 0, i32 4
  %x156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt155, i32 0, i32 0
  %107 = load i32, i32* %x156, align 4, !tbaa !40
  %cmp157 = icmp eq i32 %105, %107
  br i1 %cmp157, label %if.then.159, label %if.end.260

if.then.159:                                      ; preds = %lor.lhs.false.152, %lor.lhs.false.145, %lor.lhs.false.138, %if.then.131
  %108 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt160 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %108, i32 0, i32 4
  %y161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt160, i32 0, i32 1
  %109 = load i32, i32* %y161, align 4, !tbaa !41
  %110 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt162 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %110, i32 0, i32 4
  %y163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt162, i32 0, i32 1
  %111 = load i32, i32* %y163, align 4, !tbaa !41
  %cmp164 = icmp slt i32 %109, %111
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.206

land.lhs.true.166:                                ; preds = %if.then.159
  %112 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt167 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %112, i32 0, i32 4
  %y168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt167, i32 0, i32 1
  %113 = load i32, i32* %y168, align 4, !tbaa !41
  %114 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt169 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %114, i32 0, i32 4
  %y170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt169, i32 0, i32 1
  %115 = load i32, i32* %y170, align 4, !tbaa !41
  %cmp171 = icmp sgt i32 %113, %115
  br i1 %cmp171, label %if.then.173, label %if.end.206

if.then.173:                                      ; preds = %land.lhs.true.166
  %116 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt174 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %117, i32 0, i32 4
  %y175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt174, i32 0, i32 1
  %118 = load i32, i32* %y175, align 4, !tbaa !41
  %119 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt176 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %119, i32 0, i32 4
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt176, i32 0, i32 1
  %120 = load i32, i32* %y177, align 4, !tbaa !41
  %cmp178 = icmp sgt i32 %118, %120
  br i1 %cmp178, label %cond.true.180, label %cond.false.183

cond.true.180:                                    ; preds = %if.then.173
  %121 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt181 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %121, i32 0, i32 4
  %y182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt181, i32 0, i32 1
  %122 = load i32, i32* %y182, align 4, !tbaa !41
  br label %cond.end.186

cond.false.183:                                   ; preds = %if.then.173
  %123 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt184 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %123, i32 0, i32 4
  %y185 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt184, i32 0, i32 1
  %124 = load i32, i32* %y185, align 4, !tbaa !41
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.183, %cond.true.180
  %cond187 = phi i32 [ %122, %cond.true.180 ], [ %124, %cond.false.183 ]
  store i32 %cond187, i32* %y0, align 4, !tbaa !5
  %125 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt188 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %126, i32 0, i32 4
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt188, i32 0, i32 1
  %127 = load i32, i32* %y189, align 4, !tbaa !41
  %128 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt190 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %128, i32 0, i32 4
  %y191 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt190, i32 0, i32 1
  %129 = load i32, i32* %y191, align 4, !tbaa !41
  %cmp192 = icmp slt i32 %127, %129
  br i1 %cmp192, label %cond.true.194, label %cond.false.197

cond.true.194:                                    ; preds = %cond.end.186
  %130 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt195 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %130, i32 0, i32 4
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt195, i32 0, i32 1
  %131 = load i32, i32* %y196, align 4, !tbaa !41
  br label %cond.end.200

cond.false.197:                                   ; preds = %cond.end.186
  %132 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt198 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %132, i32 0, i32 4
  %y199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt198, i32 0, i32 1
  %133 = load i32, i32* %y199, align 4, !tbaa !41
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.197, %cond.true.194
  %cond201 = phi i32 [ %131, %cond.true.194 ], [ %133, %cond.false.197 ]
  store i32 %cond201, i32* %y1, align 4, !tbaa !5
  %134 = load i32, i32* %y0, align 4, !tbaa !5
  %135 = load i32, i32* %y1, align 4, !tbaa !5
  %cmp202 = icmp sle i32 %134, %135
  br i1 %cmp202, label %if.then.204, label %if.end

if.then.204:                                      ; preds = %cond.end.200
  %136 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %137 = load %struct.segment_s**, %struct.segment_s*** %sc0.addr, align 8, !tbaa !1
  store %struct.segment_s* %136, %struct.segment_s** %137, align 8, !tbaa !1
  %138 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %139 = load %struct.segment_s**, %struct.segment_s*** %sc1.addr, align 8, !tbaa !1
  store %struct.segment_s* %138, %struct.segment_s** %139, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.200
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.204
  %140 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.268 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.206

if.end.206:                                       ; preds = %cleanup.cont, %land.lhs.true.166, %if.then.159
  %142 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt207 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %142, i32 0, i32 4
  %y208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt207, i32 0, i32 1
  %143 = load i32, i32* %y208, align 4, !tbaa !41
  %144 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt209 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %144, i32 0, i32 4
  %y210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt209, i32 0, i32 1
  %145 = load i32, i32* %y210, align 4, !tbaa !41
  %cmp211 = icmp sgt i32 %143, %145
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.259

land.lhs.true.213:                                ; preds = %if.end.206
  %146 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt214 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %146, i32 0, i32 4
  %y215 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt214, i32 0, i32 1
  %147 = load i32, i32* %y215, align 4, !tbaa !41
  %148 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt216 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %148, i32 0, i32 4
  %y217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt216, i32 0, i32 1
  %149 = load i32, i32* %y217, align 4, !tbaa !41
  %cmp218 = icmp slt i32 %147, %149
  br i1 %cmp218, label %if.then.220, label %if.end.259

if.then.220:                                      ; preds = %land.lhs.true.213
  %150 = bitcast i32* %y0221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %151 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt222 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %151, i32 0, i32 4
  %y223 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt222, i32 0, i32 1
  %152 = load i32, i32* %y223, align 4, !tbaa !41
  %153 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt224 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %153, i32 0, i32 4
  %y225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt224, i32 0, i32 1
  %154 = load i32, i32* %y225, align 4, !tbaa !41
  %cmp226 = icmp sgt i32 %152, %154
  br i1 %cmp226, label %cond.true.228, label %cond.false.231

cond.true.228:                                    ; preds = %if.then.220
  %155 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %pt229 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %155, i32 0, i32 4
  %y230 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt229, i32 0, i32 1
  %156 = load i32, i32* %y230, align 4, !tbaa !41
  br label %cond.end.234

cond.false.231:                                   ; preds = %if.then.220
  %157 = load %struct.segment_s*, %struct.segment_s** %s1s, align 8, !tbaa !1
  %pt232 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %157, i32 0, i32 4
  %y233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt232, i32 0, i32 1
  %158 = load i32, i32* %y233, align 4, !tbaa !41
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.231, %cond.true.228
  %cond235 = phi i32 [ %156, %cond.true.228 ], [ %158, %cond.false.231 ]
  store i32 %cond235, i32* %y0221, align 4, !tbaa !5
  %159 = bitcast i32* %y1236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt237 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %160, i32 0, i32 4
  %y238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt237, i32 0, i32 1
  %161 = load i32, i32* %y238, align 4, !tbaa !41
  %162 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt239 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %162, i32 0, i32 4
  %y240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt239, i32 0, i32 1
  %163 = load i32, i32* %y240, align 4, !tbaa !41
  %cmp241 = icmp slt i32 %161, %163
  br i1 %cmp241, label %cond.true.243, label %cond.false.246

cond.true.243:                                    ; preds = %cond.end.234
  %164 = load %struct.segment_s*, %struct.segment_s** %s0s, align 8, !tbaa !1
  %pt244 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %164, i32 0, i32 4
  %y245 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt244, i32 0, i32 1
  %165 = load i32, i32* %y245, align 4, !tbaa !41
  br label %cond.end.249

cond.false.246:                                   ; preds = %cond.end.234
  %166 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %pt247 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %166, i32 0, i32 4
  %y248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt247, i32 0, i32 1
  %167 = load i32, i32* %y248, align 4, !tbaa !41
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.243
  %cond250 = phi i32 [ %165, %cond.true.243 ], [ %167, %cond.false.246 ]
  store i32 %cond250, i32* %y1236, align 4, !tbaa !5
  %168 = load i32, i32* %y0221, align 4, !tbaa !5
  %169 = load i32, i32* %y1236, align 4, !tbaa !5
  %cmp251 = icmp sle i32 %168, %169
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %cond.end.249
  %170 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %171 = load %struct.segment_s**, %struct.segment_s*** %sc0.addr, align 8, !tbaa !1
  store %struct.segment_s* %170, %struct.segment_s** %171, align 8, !tbaa !1
  %172 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %173 = load %struct.segment_s**, %struct.segment_s*** %sc1.addr, align 8, !tbaa !1
  store %struct.segment_s* %172, %struct.segment_s** %173, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.254:                                       ; preds = %cond.end.249
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.255

cleanup.255:                                      ; preds = %if.end.254, %if.then.253
  %174 = bitcast i32* %y1236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %y0221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %cleanup.dest.257 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.257, label %cleanup.268 [
    i32 0, label %cleanup.cont.258
  ]

cleanup.cont.258:                                 ; preds = %cleanup.255
  br label %if.end.259

if.end.259:                                       ; preds = %cleanup.cont.258, %land.lhs.true.213, %if.end.206
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %lor.lhs.false.152
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %cond.end.127, %cond.end.102, %lor.lhs.false.69
  br label %for.inc

for.inc:                                          ; preds = %if.end.261
  %176 = load %struct.segment_s*, %struct.segment_s** %s1, align 8, !tbaa !1
  %prev262 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %176, i32 0, i32 0
  %177 = load %struct.segment_s*, %struct.segment_s** %prev262, align 8, !tbaa !59
  store %struct.segment_s* %177, %struct.segment_s** %s1, align 8, !tbaa !1
  %178 = load i32, i32* %count1, align 4, !tbaa !5
  %inc = add nsw i32 %178, 1
  store i32 %inc, i32* %count1, align 4, !tbaa !5
  br label %for.cond.56

for.end:                                          ; preds = %land.end.62
  br label %if.end.263

if.end.263:                                       ; preds = %for.end, %cond.end.52, %cond.end, %lor.lhs.false
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.263
  %179 = load %struct.segment_s*, %struct.segment_s** %s0, align 8, !tbaa !1
  %prev265 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %179, i32 0, i32 0
  %180 = load %struct.segment_s*, %struct.segment_s** %prev265, align 8, !tbaa !59
  store %struct.segment_s* %180, %struct.segment_s** %s0, align 8, !tbaa !1
  %181 = load i32, i32* %count0, align 4, !tbaa !5
  %inc266 = add nsw i32 %181, 1
  store i32 %inc266, i32* %count0, align 4, !tbaa !5
  br label %for.cond

for.end.267:                                      ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

cleanup.268:                                      ; preds = %for.end.267, %cleanup.255, %cleanup
  %182 = bitcast i32* %min_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %search_limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %count0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast %struct.segment_s** %s1s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast %struct.segment_s** %s0s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast %struct.segment_s** %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast %struct.segment_s** %s0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = load i32, i32* %retval
  ret i32 %190
}

declare i32 @gx_check_fixed_sum_overflow(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !11, i64 24}
!9 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !6, i64 128, !14, i64 132, !6, i64 168, !15, i64 176, !15, i64 192, !6, i64 208, !6, i64 212, !17, i64 216, !3, i64 220, !18, i64 224, !18, i64 228, !19, i64 232, !20, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !11, i64 296, !21, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !11, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !22, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !23, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !23, i64 1336}
!10 = !{!"gx_line_params_s", !11, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 36, !12, i64 40, !13, i64 64}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!13 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !11, i64 12, !6, i64 16, !11, i64 20, !6, i64 24, !6, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !3, i64 0}
!17 = !{!"short", !3, i64 0}
!18 = !{!"gs_transparency_source_s", !11, i64 0}
!19 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!20 = !{!"long", !3, i64 0}
!21 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!22 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!23 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !20, i64 16, !3, i64 24}
!24 = !{!16, !16, i64 0}
!25 = !{!9, !11, i64 132}
!26 = !{!9, !11, i64 140}
!27 = !{!21, !6, i64 0}
!28 = !{!9, !11, i64 136}
!29 = !{!9, !11, i64 144}
!30 = !{!21, !6, i64 4}
!31 = !{!32, !2, i64 56}
!32 = !{!"gx_path_s", !33, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !36, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !21, i64 112, !2, i64 120}
!33 = !{!"gx_path_segments_s", !34, i64 0, !35, i64 24}
!34 = !{!"rc_header_s", !20, i64 0, !2, i64 8, !2, i64 16}
!35 = !{!"psc_", !2, i64 0, !2, i64 8}
!36 = !{!"gs_fixed_rect_s", !21, i64 0, !21, i64 8}
!37 = !{!33, !2, i64 24}
!38 = !{!39, !17, i64 16}
!39 = !{!"segment_s", !2, i64 0, !2, i64 8, !17, i64 16, !17, i64 18, !21, i64 20}
!40 = !{!39, !6, i64 20}
!41 = !{!39, !6, i64 24}
!42 = !{!43, !6, i64 28}
!43 = !{!"", !2, i64 0, !2, i64 8, !17, i64 16, !17, i64 18, !21, i64 20, !21, i64 28, !21, i64 36}
!44 = !{!43, !6, i64 32}
!45 = !{!43, !6, i64 36}
!46 = !{!43, !6, i64 40}
!47 = !{!43, !6, i64 20}
!48 = !{!43, !6, i64 24}
!49 = !{!39, !17, i64 18}
!50 = !{!32, !6, i64 112}
!51 = !{!32, !6, i64 116}
!52 = !{!33, !2, i64 32}
!53 = !{!54, !2, i64 32}
!54 = !{!"subpath_s", !2, i64 0, !2, i64 8, !17, i64 16, !17, i64 18, !21, i64 20, !2, i64 32, !6, i64 40, !55, i64 48, !3, i64 88}
!55 = !{!"", !2, i64 0, !2, i64 8, !17, i64 16, !17, i64 18, !21, i64 20, !2, i64 32}
!56 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !57, i64 18, i64 2, !57, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5}
!57 = !{!17, !17, i64 0}
!58 = !{!39, !2, i64 8}
!59 = !{!39, !2, i64 0}
!60 = !{!61, !6, i64 20}
!61 = !{!"", !2, i64 0, !2, i64 8, !17, i64 16, !17, i64 18, !21, i64 20, !21, i64 28}
!62 = !{!61, !6, i64 24}
!63 = !{!61, !6, i64 28}
!64 = !{!61, !6, i64 32}
!65 = !{!32, !3, i64 97}
!66 = !{!32, !3, i64 98}
!67 = !{!32, !6, i64 72}
!68 = !{!32, !6, i64 76}
!69 = !{!32, !6, i64 80}
!70 = !{!32, !6, i64 84}
!71 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!72 = !{!43, !17, i64 18}
!73 = !{!54, !6, i64 40}
!74 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!75 = !{!54, !2, i64 0}
!76 = !{!54, !2, i64 8}
!77 = !{!32, !2, i64 40}
!78 = !{!79, !2, i64 32}
!79 = !{!"gs_memory_s", !2, i64 0, !80, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!80 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!81 = !{!79, !2, i64 24}
!82 = !{!54, !6, i64 20}
!83 = !{!54, !6, i64 24}
!84 = !{!54, !17, i64 16}
!85 = !{!32, !6, i64 104}
