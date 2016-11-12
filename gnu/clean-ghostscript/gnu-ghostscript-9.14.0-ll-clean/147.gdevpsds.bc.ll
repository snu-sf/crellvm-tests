; ModuleID = './gdevpsds.bc'
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.stream_1248_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }
%struct.stream_C2R_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_imager_state_s* }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gx_path_s = type opaque
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.stream_IE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, float*, %struct.gs_bytestring_s, [400 x i32], i32, i32, i32, i32, i32, i32 }
%struct.gs_bytestring_s = type { i8*, i32, i8* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.stream_Subsample_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, float, float, i32, i32, i32, i32, i32 }
%struct.stream_Downsample_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, float, float, i32, i32, i32, i32, i32 }
%struct.stream_Average_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.stream_Bicubic_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8* }
%struct.stream_compr_chooser_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64 }
%struct.stream_image_colors_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], [64 x i32], [128 x i32], [128 x float], %struct.gs_color_space_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, i32 (%struct.stream_image_colors_state_s*)* }

@st_1248_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_1_8_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_1_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_N_8_process, i32 1, i32 8, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_2_8_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_2_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_N_8_process, i32 1, i32 4, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_4_8_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_4_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_N_8_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_12_8_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_12_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_12_8_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_16_8_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_16_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_16_8_process, i32 1, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_8_1_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_1_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_8_N_process, i32 8, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_8_2_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_2_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_8_N_process, i32 4, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_8_4_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_1248_state, i32 (%struct.stream_state_s*)* @s_4_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_8_N_process, i32 2, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_C2R_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @c2r_reloc_ptrs to i8*) }, align 8
@s_C2R_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_C2R_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_C2R_process, i32 4, i32 3, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_C2R_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"stream_IE_state\00", align 1
@st_IE_state = constant %struct.gs_memory_struct_type_s { i32 1784, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ie_state_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ie_state_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_IE_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_IE_state, i32 (%struct.stream_state_s*)* @s_IE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_IE_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_IE_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@st_Subsample_state = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_Subsample_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_Subsample_state, i32 (%struct.stream_state_s*)* @s_Subsample_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Subsample_process, i32 4, i32 4, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_Downsample_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@st_Average_state = internal constant %struct.gs_memory_struct_type_s { i32 168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @avg_reloc_ptrs to i8*) }, align 8
@s_Average_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_Average_state, i32 (%struct.stream_state_s*)* @s_Average_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Average_process, i32 4, i32 4, void (%struct.stream_state_s*)* @s_Average_release, void (%struct.stream_state_s*)* @s_Average_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@st_Bicubic_state = internal constant %struct.gs_memory_struct_type_s { i32 184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @bcb_reloc_ptrs to i8*) }, align 8
@s_Bicubic_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_Bicubic_state, i32 (%struct.stream_state_s*)* @s_Bicubic_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Bicubic_process, i32 4, i32 4, void (%struct.stream_state_s*)* @s_Bicubic_release, void (%struct.stream_state_s*)* @s_Bicubic_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"s_compr_chooser_set_dimensions\00", align 1
@st_compr_chooser_state = internal constant %struct.gs_memory_struct_type_s { i32 176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @compr_chooser_reloc_ptrs to i8*) }, align 8
@s_compr_chooser_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_compr_chooser_state, i32 (%struct.stream_state_s*)* @s_compr_chooser_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_compr_chooser_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_compr_chooser_release, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_stream_image_colors_state = internal constant %struct.gs_memory_struct_type_s { i32 1752, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @stream_image_colors_reloc_ptrs to i8*) }, align 8
@s__image_colors_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_stream_image_colors_state, i32 (%struct.stream_state_s*)* @s_image_colors_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_image_colors_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"stream_1248_state\00", align 1
@s_N_8_process.b2 = internal constant [4 x i8] c"\00U\AA\FF", align 1
@s_N_8_process.b4 = internal constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"stream_C2R_state\00", align 1
@c2r_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @c2r_enum_ptrs, i32 0, i32 0) }, align 8
@c2r_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }], align 2
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"stream_Subsample_state\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Subsample filter does not support non-integer downsample factor (%f)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"stream_Average_state\00", align 1
@avg_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @avg_enum_ptrs, i32 0, i32 0) }, align 8
@avg_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 160 }], align 2
@.str.7 = private unnamed_addr constant [68 x i8] c"Average filter does not support non-integer downsample factor (%f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Average sums\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"stream_Bicubic_state\00", align 1
@bcb_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @bcb_enum_ptrs, i32 0, i32 0) }, align 8
@bcb_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 176 }], align 2
@.str.10 = private unnamed_addr constant [13 x i8] c"Bicubic data\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"stream_compr_chooser_state\00", align 1
@compr_chooser_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @compr_chooser_enum_ptrs, i32 0, i32 0) }, align 8
@compr_chooser_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 144 }], align 2
@.str.12 = private unnamed_addr constant [24 x i8] c"s_compr_chooser_release\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"stream_image_colors_state\00", align 1
@stream_image_colors_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @stream_image_colors_enum_ptrs, i32 0, i32 0) }, align 8
@stream_image_colors_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1720 }, %struct.gc_ptr_element_s { i16 0, i16 1728 }, %struct.gc_ptr_element_s { i16 0, i16 1736 }], align 2

; Function Attrs: nounwind uwtable
define i32 @s_1248_init(%struct.stream_1248_state_s* %ss, i32 %Columns, i32 %samples_per_pixel) #0 {
entry:
  %ss.addr = alloca %struct.stream_1248_state_s*, align 8
  %Columns.addr = alloca i32, align 4
  %samples_per_pixel.addr = alloca i32, align 4
  store %struct.stream_1248_state_s* %ss, %struct.stream_1248_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %Columns, i32* %Columns.addr, align 4, !tbaa !5
  store i32 %samples_per_pixel, i32* %samples_per_pixel.addr, align 4, !tbaa !5
  %0 = load i32, i32* %Columns.addr, align 4, !tbaa !5
  %1 = load i32, i32* %samples_per_pixel.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %1
  %2 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss.addr, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %2, i32 0, i32 5
  store i32 %mul, i32* %samples_per_row, align 4, !tbaa !7
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 0
  %4 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !9
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %4, i32 0, i32 1
  %5 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !10
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_1248_state_s* %6 to %struct.stream_state_s*
  %call = call i32 %5(%struct.stream_state_s* %7) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_1_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_1248_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  %5 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %left, align 4, !tbaa !12
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %6, i32 0, i32 6
  store i32 1, i32* %bits_per_sample, align 4, !tbaa !13
  %7 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_N_8_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_1248_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  %in = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %in66 = alloca i8, align 1
  %in125 = alloca i8, align 1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left3 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %16, i32 0, i32 7
  %17 = load i32, i32* %left3, align 4, !tbaa !12
  store i32 %17, i32* %left, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %20, i32 0, i32 6
  %21 = load i32, i32* %bits_per_sample, align 4, !tbaa !13
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.61
    i32 4, label %sw.bb.120
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp = icmp ult i8* %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %in) #1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !20
  store i8 %25, i8* %in, align 1, !tbaa !20
  %26 = load i32, i32* %left, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %26, 8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %27 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !5
  %28 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %29 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load i32, i32* %n, align 4, !tbaa !5
  %conv = sext i32 %30 to i64
  %cmp5 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %31 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %31, label %sw.epilog [
    i32 0, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 7, label %sw.bb.12
    i32 6, label %sw.bb.18
    i32 5, label %sw.bb.25
    i32 4, label %sw.bb.32
    i32 3, label %sw.bb.39
    i32 2, label %sw.bb.46
    i32 1, label %sw.bb.53
  ]

sw.bb.7:                                          ; preds = %if.end
  %32 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %32, i32 0, i32 5
  %33 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  store i32 %33, i32* %left, align 4, !tbaa !5
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %if.end
  %35 = load i8, i8* %in, align 1, !tbaa !20
  %conv9 = zext i8 %35 to i32
  %and = and i32 %conv9, 1
  %sub = sub nsw i32 0, %and
  %conv10 = trunc i32 %sub to i8
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %36, i64 8
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !20
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %if.end, %sw.bb.8
  %37 = load i8, i8* %in, align 1, !tbaa !20
  %conv13 = zext i8 %37 to i32
  %shr = ashr i32 %conv13, 1
  %and14 = and i32 %shr, 1
  %sub15 = sub nsw i32 0, %and14
  %conv16 = trunc i32 %sub15 to i8
  %38 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %38, i64 7
  store i8 %conv16, i8* %arrayidx17, align 1, !tbaa !20
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.end, %sw.bb.12
  %39 = load i8, i8* %in, align 1, !tbaa !20
  %conv19 = zext i8 %39 to i32
  %shr20 = ashr i32 %conv19, 2
  %and21 = and i32 %shr20, 1
  %sub22 = sub nsw i32 0, %and21
  %conv23 = trunc i32 %sub22 to i8
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %40, i64 6
  store i8 %conv23, i8* %arrayidx24, align 1, !tbaa !20
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end, %sw.bb.18
  %41 = load i8, i8* %in, align 1, !tbaa !20
  %conv26 = zext i8 %41 to i32
  %shr27 = ashr i32 %conv26, 3
  %and28 = and i32 %shr27, 1
  %sub29 = sub nsw i32 0, %and28
  %conv30 = trunc i32 %sub29 to i8
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 5
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !20
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %if.end, %sw.bb.25
  %43 = load i8, i8* %in, align 1, !tbaa !20
  %conv33 = zext i8 %43 to i32
  %shr34 = ashr i32 %conv33, 4
  %and35 = and i32 %shr34, 1
  %sub36 = sub nsw i32 0, %and35
  %conv37 = trunc i32 %sub36 to i8
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %44, i64 4
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !20
  br label %sw.bb.39

sw.bb.39:                                         ; preds = %if.end, %sw.bb.32
  %45 = load i8, i8* %in, align 1, !tbaa !20
  %conv40 = zext i8 %45 to i32
  %shr41 = ashr i32 %conv40, 5
  %and42 = and i32 %shr41, 1
  %sub43 = sub nsw i32 0, %and42
  %conv44 = trunc i32 %sub43 to i8
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %46, i64 3
  store i8 %conv44, i8* %arrayidx45, align 1, !tbaa !20
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %if.end, %sw.bb.39
  %47 = load i8, i8* %in, align 1, !tbaa !20
  %conv47 = zext i8 %47 to i32
  %shr48 = ashr i32 %conv47, 6
  %and49 = and i32 %shr48, 1
  %sub50 = sub nsw i32 0, %and49
  %conv51 = trunc i32 %sub50 to i8
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !20
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %if.end, %sw.bb.46
  %49 = load i8, i8* %in, align 1, !tbaa !20
  %conv54 = zext i8 %49 to i32
  %shr55 = ashr i32 %conv54, 7
  %sub56 = sub nsw i32 0, %shr55
  %conv57 = trunc i32 %sub56 to i8
  %50 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.53, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.7, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %in) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %51 = load i32, i32* %n, align 4, !tbaa !5
  %52 = load i32, i32* %left, align 4, !tbaa !5
  %sub59 = sub i32 %52, %51
  store i32 %sub59, i32* %left, align 4, !tbaa !5
  %53 = load i32, i32* %n, align 4, !tbaa !5
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  br label %sw.epilog.166

sw.bb.61:                                         ; preds = %entry
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.114, %sw.bb.61
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp63 = icmp ult i8* %56, %57
  br i1 %cmp63, label %for.body.65, label %for.end.119

for.body.65:                                      ; preds = %for.cond.62
  call void @llvm.lifetime.start(i64 1, i8* %in66) #1
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx67, align 1, !tbaa !20
  store i8 %59, i8* %in66, align 1, !tbaa !20
  %60 = load i32, i32* %left, align 4, !tbaa !5
  %cmp68 = icmp ult i32 %60, 4
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %for.body.65
  %61 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end.72

cond.false.71:                                    ; preds = %for.body.65
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi i32 [ %61, %cond.true.70 ], [ 4, %cond.false.71 ]
  store i32 %cond73, i32* %n, align 4, !tbaa !5
  %62 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %63 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast74 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %63 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  %64 = load i32, i32* %n, align 4, !tbaa !5
  %conv77 = sext i32 %64 to i64
  %cmp78 = icmp slt i64 %sub.ptr.sub76, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.72
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.111

if.end.81:                                        ; preds = %cond.end.72
  %65 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %65, label %sw.epilog.110 [
    i32 0, label %sw.bb.82
    i32 4, label %sw.bb.85
    i32 3, label %sw.bb.90
    i32 2, label %sw.bb.97
    i32 1, label %sw.bb.104
  ]

sw.bb.82:                                         ; preds = %if.end.81
  %66 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row83 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %66, i32 0, i32 5
  %67 = load i32, i32* %samples_per_row83, align 4, !tbaa !7
  store i32 %67, i32* %left, align 4, !tbaa !5
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %incdec.ptr84, i8** %p, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.111

sw.bb.85:                                         ; preds = %if.end.81
  %69 = load i8, i8* %in66, align 1, !tbaa !20
  %conv86 = zext i8 %69 to i32
  %and87 = and i32 %conv86, 3
  %idxprom = sext i32 %and87 to i64
  %arrayidx88 = getelementptr inbounds [4 x i8], [4 x i8]* @s_N_8_process.b2, i32 0, i64 %idxprom
  %70 = load i8, i8* %arrayidx88, align 1, !tbaa !20
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %71, i64 4
  store i8 %70, i8* %arrayidx89, align 1, !tbaa !20
  br label %sw.bb.90

sw.bb.90:                                         ; preds = %if.end.81, %sw.bb.85
  %72 = load i8, i8* %in66, align 1, !tbaa !20
  %conv91 = zext i8 %72 to i32
  %shr92 = ashr i32 %conv91, 2
  %and93 = and i32 %shr92, 3
  %idxprom94 = sext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* @s_N_8_process.b2, i32 0, i64 %idxprom94
  %73 = load i8, i8* %arrayidx95, align 1, !tbaa !20
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %74, i64 3
  store i8 %73, i8* %arrayidx96, align 1, !tbaa !20
  br label %sw.bb.97

sw.bb.97:                                         ; preds = %if.end.81, %sw.bb.90
  %75 = load i8, i8* %in66, align 1, !tbaa !20
  %conv98 = zext i8 %75 to i32
  %shr99 = ashr i32 %conv98, 4
  %and100 = and i32 %shr99, 3
  %idxprom101 = sext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* @s_N_8_process.b2, i32 0, i64 %idxprom101
  %76 = load i8, i8* %arrayidx102, align 1, !tbaa !20
  %77 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %77, i64 2
  store i8 %76, i8* %arrayidx103, align 1, !tbaa !20
  br label %sw.bb.104

sw.bb.104:                                        ; preds = %if.end.81, %sw.bb.97
  %78 = load i8, i8* %in66, align 1, !tbaa !20
  %conv105 = zext i8 %78 to i32
  %shr106 = ashr i32 %conv105, 6
  %idxprom107 = sext i32 %shr106 to i64
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* @s_N_8_process.b2, i32 0, i64 %idxprom107
  %79 = load i8, i8* %arrayidx108, align 1, !tbaa !20
  %80 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 %79, i8* %arrayidx109, align 1, !tbaa !20
  br label %sw.epilog.110

sw.epilog.110:                                    ; preds = %sw.bb.104, %if.end.81
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.111

cleanup.111:                                      ; preds = %sw.epilog.110, %sw.bb.82, %if.then.80
  call void @llvm.lifetime.end(i64 1, i8* %in66) #1
  %cleanup.dest.112 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.112, label %unreachable [
    i32 0, label %cleanup.cont.113
    i32 7, label %for.end.119
    i32 9, label %for.inc.114
  ]

cleanup.cont.113:                                 ; preds = %cleanup.111
  br label %for.inc.114

for.inc.114:                                      ; preds = %cleanup.cont.113, %cleanup.111
  %81 = load i32, i32* %n, align 4, !tbaa !5
  %82 = load i32, i32* %left, align 4, !tbaa !5
  %sub115 = sub i32 %82, %81
  store i32 %sub115, i32* %left, align 4, !tbaa !5
  %83 = load i32, i32* %n, align 4, !tbaa !5
  %84 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext116 = sext i32 %83 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %84, i64 %idx.ext116
  store i8* %add.ptr117, i8** %q, align 8, !tbaa !1
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr118, i8** %p, align 8, !tbaa !1
  br label %for.cond.62

for.end.119:                                      ; preds = %cleanup.111, %for.cond.62
  br label %sw.epilog.166

sw.bb.120:                                        ; preds = %entry
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.160, %sw.bb.120
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %87 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp122 = icmp ult i8* %86, %87
  br i1 %cmp122, label %for.body.124, label %for.end.165

for.body.124:                                     ; preds = %for.cond.121
  call void @llvm.lifetime.start(i64 1, i8* %in125) #1
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx126, align 1, !tbaa !20
  store i8 %89, i8* %in125, align 1, !tbaa !20
  %90 = load i32, i32* %left, align 4, !tbaa !5
  %cmp127 = icmp ult i32 %90, 2
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %for.body.124
  %91 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end.131

cond.false.130:                                   ; preds = %for.body.124
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i32 [ %91, %cond.true.129 ], [ 2, %cond.false.130 ]
  store i32 %cond132, i32* %n, align 4, !tbaa !5
  %92 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %93 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast133 = ptrtoint i8* %92 to i64
  %sub.ptr.rhs.cast134 = ptrtoint i8* %93 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %94 = load i32, i32* %n, align 4, !tbaa !5
  %conv136 = sext i32 %94 to i64
  %cmp137 = icmp slt i64 %sub.ptr.sub135, %conv136
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %cond.end.131
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.157

if.end.140:                                       ; preds = %cond.end.131
  %95 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %95, label %sw.epilog.156 [
    i32 0, label %sw.bb.141
    i32 2, label %sw.bb.144
    i32 1, label %sw.bb.150
  ]

sw.bb.141:                                        ; preds = %if.end.140
  %96 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row142 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %96, i32 0, i32 5
  %97 = load i32, i32* %samples_per_row142, align 4, !tbaa !7
  store i32 %97, i32* %left, align 4, !tbaa !5
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr143 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr143, i8** %p, align 8, !tbaa !1
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.157

sw.bb.144:                                        ; preds = %if.end.140
  %99 = load i8, i8* %in125, align 1, !tbaa !20
  %conv145 = zext i8 %99 to i32
  %and146 = and i32 %conv145, 15
  %idxprom147 = sext i32 %and146 to i64
  %arrayidx148 = getelementptr inbounds [16 x i8], [16 x i8]* @s_N_8_process.b4, i32 0, i64 %idxprom147
  %100 = load i8, i8* %arrayidx148, align 1, !tbaa !20
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 %100, i8* %arrayidx149, align 1, !tbaa !20
  br label %sw.bb.150

sw.bb.150:                                        ; preds = %if.end.140, %sw.bb.144
  %102 = load i8, i8* %in125, align 1, !tbaa !20
  %conv151 = zext i8 %102 to i32
  %shr152 = ashr i32 %conv151, 4
  %idxprom153 = sext i32 %shr152 to i64
  %arrayidx154 = getelementptr inbounds [16 x i8], [16 x i8]* @s_N_8_process.b4, i32 0, i64 %idxprom153
  %103 = load i8, i8* %arrayidx154, align 1, !tbaa !20
  %104 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %104, i64 1
  store i8 %103, i8* %arrayidx155, align 1, !tbaa !20
  br label %sw.epilog.156

sw.epilog.156:                                    ; preds = %sw.bb.150, %if.end.140
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.157

cleanup.157:                                      ; preds = %sw.epilog.156, %sw.bb.141, %if.then.139
  call void @llvm.lifetime.end(i64 1, i8* %in125) #1
  %cleanup.dest.158 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.158, label %unreachable [
    i32 0, label %cleanup.cont.159
    i32 11, label %for.end.165
    i32 13, label %for.inc.160
  ]

cleanup.cont.159:                                 ; preds = %cleanup.157
  br label %for.inc.160

for.inc.160:                                      ; preds = %cleanup.cont.159, %cleanup.157
  %105 = load i32, i32* %n, align 4, !tbaa !5
  %106 = load i32, i32* %left, align 4, !tbaa !5
  %sub161 = sub i32 %106, %105
  store i32 %sub161, i32* %left, align 4, !tbaa !5
  %107 = load i32, i32* %n, align 4, !tbaa !5
  %108 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext162 = sext i32 %107 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %108, i64 %idx.ext162
  store i8* %add.ptr163, i8** %q, align 8, !tbaa !1
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr164 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr164, i8** %p, align 8, !tbaa !1
  br label %for.cond.121

for.end.165:                                      ; preds = %cleanup.157, %for.cond.121
  br label %sw.epilog.166

sw.default:                                       ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

sw.epilog.166:                                    ; preds = %for.end.165, %for.end.119, %for.end
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %111 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr167 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %111, i32 0, i32 0
  store i8* %110, i8** %ptr167, align 8, !tbaa !14
  %112 = load i8*, i8** %q, align 8, !tbaa !1
  %113 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr168 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %113, i32 0, i32 1
  store i8* %112, i8** %ptr168, align 8, !tbaa !17
  %114 = load i32, i32* %left, align 4, !tbaa !5
  %115 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left169 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %115, i32 0, i32 7
  store i32 %114, i32* %left169, align 4, !tbaa !12
  %116 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.170

cleanup.170:                                      ; preds = %sw.epilog.166, %sw.default
  %117 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = load i32, i32* %retval
  ret i32 %125

unreachable:                                      ; preds = %cleanup.157, %cleanup.111, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @s_2_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_1248_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  %5 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %left, align 4, !tbaa !12
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %6, i32 0, i32 6
  store i32 2, i32* %bits_per_sample, align 4, !tbaa !13
  %7 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_4_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_1248_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  %5 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %left, align 4, !tbaa !12
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %6, i32 0, i32 6
  store i32 4, i32* %bits_per_sample, align 4, !tbaa !13
  %7 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_12_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_1248_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  %5 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %left, align 4, !tbaa !12
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %6, i32 0, i32 6
  store i32 12, i32* %bits_per_sample, align 4, !tbaa !13
  %7 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_12_8_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_1248_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left3 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %16, i32 0, i32 7
  %17 = load i32, i32* %left3, align 4, !tbaa !12
  store i32 %17, i32* %left, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %20, i32 0, i32 5
  %21 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  store i32 %21, i32* %n, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sge i64 %sub.ptr.sub, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %25 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp4 = icmp uge i8* %24, %25
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  %26 = load i32, i32* %left, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %26, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %27 = load i32, i32* %n, align 4, !tbaa !5
  store i32 %27, i32* %left, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %28 = load i32, i32* %n, align 4, !tbaa !5
  %29 = load i32, i32* %left, align 4, !tbaa !5
  %sub = sub i32 %28, %29
  %and = and i32 %sub, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %31 to i32
  %shl = shl i32 %conv, 4
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx9, align 1, !tbaa !20
  %conv10 = zext i8 %33 to i32
  %shr = ashr i32 %conv10, 4
  %or = or i32 %shl, %shr
  %conv11 = trunc i32 %or to i8
  %34 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !20
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %dec = add i32 %36, -1
  store i32 %dec, i32* %left, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.end.7
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %incdec.ptr, align 1, !tbaa !20
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %38, i8* %arrayidx13, align 1, !tbaa !20
  %40 = load i32, i32* %left, align 4, !tbaa !5
  %dec14 = add i32 %40, -1
  store i32 %dec14, i32* %left, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %dec14, 0
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr20, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %44, i32 0, i32 0
  store i8* %43, i8** %ptr21, align 8, !tbaa !14
  %45 = load i8*, i8** %q, align 8, !tbaa !1
  %46 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %46, i32 0, i32 1
  store i8* %45, i8** %ptr22, align 8, !tbaa !17
  %47 = load i32, i32* %left, align 4, !tbaa !5
  %48 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left23 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %48, i32 0, i32 7
  store i32 %47, i32* %left23, align 4, !tbaa !12
  %49 = load i32, i32* %status, align 4, !tbaa !5
  %50 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @s_16_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_1248_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  %5 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %left, align 4, !tbaa !12
  %6 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %6, i32 0, i32 6
  store i32 16, i32* %bits_per_sample, align 4, !tbaa !13
  %7 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_16_8_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_1248_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left3 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %16, i32 0, i32 7
  %17 = load i32, i32* %left3, align 4, !tbaa !12
  store i32 %17, i32* %left, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %20, i32 0, i32 5
  %21 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  store i32 %21, i32* %n, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sge i64 %sub.ptr.sub, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %25 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp4 = icmp uge i8* %24, %25
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %arrayidx5, align 1, !tbaa !20
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr6, align 8, !tbaa !14
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %34 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %34, i32 0, i32 1
  store i8* %33, i8** %ptr7, align 8, !tbaa !17
  %35 = load i32, i32* %left, align 4, !tbaa !5
  %36 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left8 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %36, i32 0, i32 7
  store i32 %35, i32* %left8, align 4, !tbaa !12
  %37 = load i32, i32* %status, align 4, !tbaa !5
  %38 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @s_8_N_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_1248_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  %out = alloca i8, align 1
  %out66 = alloca i8, align 1
  %out127 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_1248_state_s*
  store %struct.stream_1248_state_s* %2, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left3 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %16, i32 0, i32 7
  %17 = load i32, i32* %left3, align 4, !tbaa !12
  store i32 %17, i32* %left, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %20, i32 0, i32 6
  %21 = load i32, i32* %bits_per_sample, align 4, !tbaa !13
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.65
    i32 4, label %sw.bb.126
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %out) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %22 = load i8*, i8** %q, align 8, !tbaa !1
  %23 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp = icmp ult i8* %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %left, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %24, 8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !5
  %26 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = load i32, i32* %n, align 4, !tbaa !5
  %conv = sext i32 %28 to i64
  %cmp5 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %cond.end
  store i8 0, i8* %out, align 1, !tbaa !20
  %29 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %29, label %sw.epilog [
    i32 0, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 7, label %sw.bb.11
    i32 6, label %sw.bb.17
    i32 5, label %sw.bb.25
    i32 4, label %sw.bb.33
    i32 3, label %sw.bb.41
    i32 2, label %sw.bb.49
    i32 1, label %sw.bb.57
  ]

sw.bb.7:                                          ; preds = %if.end
  %30 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %30, i32 0, i32 5
  %31 = load i32, i32* %samples_per_row, align 4, !tbaa !7
  store i32 %31, i32* %left, align 4, !tbaa !5
  %32 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  br label %for.inc

sw.bb.8:                                          ; preds = %if.end
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 8
  %34 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv9 = zext i8 %34 to i32
  %shr = ashr i32 %conv9, 7
  %conv10 = trunc i32 %shr to i8
  store i8 %conv10, i8* %out, align 1, !tbaa !20
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end, %sw.bb.8
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %35, i64 7
  %36 = load i8, i8* %arrayidx12, align 1, !tbaa !20
  %conv13 = zext i8 %36 to i32
  %shr14 = ashr i32 %conv13, 7
  %shl = shl i32 %shr14, 1
  %37 = load i8, i8* %out, align 1, !tbaa !20
  %conv15 = zext i8 %37 to i32
  %or = or i32 %conv15, %shl
  %conv16 = trunc i32 %or to i8
  store i8 %conv16, i8* %out, align 1, !tbaa !20
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %if.end, %sw.bb.11
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %38, i64 6
  %39 = load i8, i8* %arrayidx18, align 1, !tbaa !20
  %conv19 = zext i8 %39 to i32
  %shr20 = ashr i32 %conv19, 7
  %shl21 = shl i32 %shr20, 2
  %40 = load i8, i8* %out, align 1, !tbaa !20
  %conv22 = zext i8 %40 to i32
  %or23 = or i32 %conv22, %shl21
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, i8* %out, align 1, !tbaa !20
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end, %sw.bb.17
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 5
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !20
  %conv27 = zext i8 %42 to i32
  %shr28 = ashr i32 %conv27, 7
  %shl29 = shl i32 %shr28, 3
  %43 = load i8, i8* %out, align 1, !tbaa !20
  %conv30 = zext i8 %43 to i32
  %or31 = or i32 %conv30, %shl29
  %conv32 = trunc i32 %or31 to i8
  store i8 %conv32, i8* %out, align 1, !tbaa !20
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %if.end, %sw.bb.25
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %44, i64 4
  %45 = load i8, i8* %arrayidx34, align 1, !tbaa !20
  %conv35 = zext i8 %45 to i32
  %shr36 = ashr i32 %conv35, 7
  %shl37 = shl i32 %shr36, 4
  %46 = load i8, i8* %out, align 1, !tbaa !20
  %conv38 = zext i8 %46 to i32
  %or39 = or i32 %conv38, %shl37
  %conv40 = trunc i32 %or39 to i8
  store i8 %conv40, i8* %out, align 1, !tbaa !20
  br label %sw.bb.41

sw.bb.41:                                         ; preds = %if.end, %sw.bb.33
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %47, i64 3
  %48 = load i8, i8* %arrayidx42, align 1, !tbaa !20
  %conv43 = zext i8 %48 to i32
  %shr44 = ashr i32 %conv43, 7
  %shl45 = shl i32 %shr44, 5
  %49 = load i8, i8* %out, align 1, !tbaa !20
  %conv46 = zext i8 %49 to i32
  %or47 = or i32 %conv46, %shl45
  %conv48 = trunc i32 %or47 to i8
  store i8 %conv48, i8* %out, align 1, !tbaa !20
  br label %sw.bb.49

sw.bb.49:                                         ; preds = %if.end, %sw.bb.41
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx50, align 1, !tbaa !20
  %conv51 = zext i8 %51 to i32
  %shr52 = ashr i32 %conv51, 7
  %shl53 = shl i32 %shr52, 6
  %52 = load i8, i8* %out, align 1, !tbaa !20
  %conv54 = zext i8 %52 to i32
  %or55 = or i32 %conv54, %shl53
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, i8* %out, align 1, !tbaa !20
  br label %sw.bb.57

sw.bb.57:                                         ; preds = %if.end, %sw.bb.49
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx58, align 1, !tbaa !20
  %conv59 = zext i8 %54 to i32
  %and = and i32 %conv59, 128
  %55 = load i8, i8* %out, align 1, !tbaa !20
  %conv60 = zext i8 %55 to i32
  %or61 = or i32 %conv60, %and
  %conv62 = trunc i32 %or61 to i8
  store i8 %conv62, i8* %out, align 1, !tbaa !20
  %56 = load i8, i8* %out, align 1, !tbaa !20
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %arrayidx63, align 1, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.57, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.bb.7
  %58 = load i32, i32* %n, align 4, !tbaa !5
  %59 = load i32, i32* %left, align 4, !tbaa !5
  %sub = sub i32 %59, %58
  store i32 %sub, i32* %left, align 4, !tbaa !5
  %60 = load i32, i32* %n, align 4, !tbaa !5
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr64, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %out) #1
  br label %sw.epilog.171

sw.bb.65:                                         ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %out66) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.120, %sw.bb.65
  %63 = load i8*, i8** %q, align 8, !tbaa !1
  %64 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp68 = icmp ult i8* %63, %64
  br i1 %cmp68, label %for.body.70, label %for.end.125

for.body.70:                                      ; preds = %for.cond.67
  %65 = load i32, i32* %left, align 4, !tbaa !5
  %cmp71 = icmp ult i32 %65, 4
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %for.body.70
  %66 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end.75

cond.false.74:                                    ; preds = %for.body.70
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi i32 [ %66, %cond.true.73 ], [ 4, %cond.false.74 ]
  store i32 %cond76, i32* %n, align 4, !tbaa !5
  %67 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast77 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast78 = ptrtoint i8* %68 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %69 = load i32, i32* %n, align 4, !tbaa !5
  %conv80 = sext i32 %69 to i64
  %cmp81 = icmp slt i64 %sub.ptr.sub79, %conv80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %cond.end.75
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.end.125

if.end.84:                                        ; preds = %cond.end.75
  store i8 0, i8* %out66, align 1, !tbaa !20
  %70 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %70, label %sw.epilog.119 [
    i32 0, label %sw.bb.85
    i32 4, label %sw.bb.88
    i32 3, label %sw.bb.95
    i32 2, label %sw.bb.103
    i32 1, label %sw.bb.111
  ]

sw.bb.85:                                         ; preds = %if.end.84
  %71 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row86 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %71, i32 0, i32 5
  %72 = load i32, i32* %samples_per_row86, align 4, !tbaa !7
  store i32 %72, i32* %left, align 4, !tbaa !5
  %73 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr87, i8** %q, align 8, !tbaa !1
  br label %for.inc.120

sw.bb.88:                                         ; preds = %if.end.84
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %74, i64 4
  %75 = load i8, i8* %arrayidx89, align 1, !tbaa !20
  %conv90 = zext i8 %75 to i32
  %shr91 = ashr i32 %conv90, 6
  %76 = load i8, i8* %out66, align 1, !tbaa !20
  %conv92 = zext i8 %76 to i32
  %or93 = or i32 %conv92, %shr91
  %conv94 = trunc i32 %or93 to i8
  store i8 %conv94, i8* %out66, align 1, !tbaa !20
  br label %sw.bb.95

sw.bb.95:                                         ; preds = %if.end.84, %sw.bb.88
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %77, i64 3
  %78 = load i8, i8* %arrayidx96, align 1, !tbaa !20
  %conv97 = zext i8 %78 to i32
  %shr98 = ashr i32 %conv97, 6
  %shl99 = shl i32 %shr98, 2
  %79 = load i8, i8* %out66, align 1, !tbaa !20
  %conv100 = zext i8 %79 to i32
  %or101 = or i32 %conv100, %shl99
  %conv102 = trunc i32 %or101 to i8
  store i8 %conv102, i8* %out66, align 1, !tbaa !20
  br label %sw.bb.103

sw.bb.103:                                        ; preds = %if.end.84, %sw.bb.95
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx104, align 1, !tbaa !20
  %conv105 = zext i8 %81 to i32
  %shr106 = ashr i32 %conv105, 6
  %shl107 = shl i32 %shr106, 4
  %82 = load i8, i8* %out66, align 1, !tbaa !20
  %conv108 = zext i8 %82 to i32
  %or109 = or i32 %conv108, %shl107
  %conv110 = trunc i32 %or109 to i8
  store i8 %conv110, i8* %out66, align 1, !tbaa !20
  br label %sw.bb.111

sw.bb.111:                                        ; preds = %if.end.84, %sw.bb.103
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx112, align 1, !tbaa !20
  %conv113 = zext i8 %84 to i32
  %and114 = and i32 %conv113, 192
  %85 = load i8, i8* %out66, align 1, !tbaa !20
  %conv115 = zext i8 %85 to i32
  %or116 = or i32 %conv115, %and114
  %conv117 = trunc i32 %or116 to i8
  store i8 %conv117, i8* %out66, align 1, !tbaa !20
  %86 = load i8, i8* %out66, align 1, !tbaa !20
  %87 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %arrayidx118, align 1, !tbaa !20
  br label %sw.epilog.119

sw.epilog.119:                                    ; preds = %sw.bb.111, %if.end.84
  br label %for.inc.120

for.inc.120:                                      ; preds = %sw.epilog.119, %sw.bb.85
  %88 = load i32, i32* %n, align 4, !tbaa !5
  %89 = load i32, i32* %left, align 4, !tbaa !5
  %sub121 = sub i32 %89, %88
  store i32 %sub121, i32* %left, align 4, !tbaa !5
  %90 = load i32, i32* %n, align 4, !tbaa !5
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext122 = sext i32 %90 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %91, i64 %idx.ext122
  store i8* %add.ptr123, i8** %p, align 8, !tbaa !1
  %92 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr124, i8** %q, align 8, !tbaa !1
  br label %for.cond.67

for.end.125:                                      ; preds = %if.then.83, %for.cond.67
  call void @llvm.lifetime.end(i64 1, i8* %out66) #1
  br label %sw.epilog.171

sw.bb.126:                                        ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %out127) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.165, %sw.bb.126
  %93 = load i8*, i8** %q, align 8, !tbaa !1
  %94 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp129 = icmp ult i8* %93, %94
  br i1 %cmp129, label %for.body.131, label %for.end.170

for.body.131:                                     ; preds = %for.cond.128
  %95 = load i32, i32* %left, align 4, !tbaa !5
  %cmp132 = icmp ult i32 %95, 2
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %for.body.131
  %96 = load i32, i32* %left, align 4, !tbaa !5
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.body.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.134
  %cond137 = phi i32 [ %96, %cond.true.134 ], [ 2, %cond.false.135 ]
  store i32 %cond137, i32* %n, align 4, !tbaa !5
  %97 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast138 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast139 = ptrtoint i8* %98 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %99 = load i32, i32* %n, align 4, !tbaa !5
  %conv141 = sext i32 %99 to i64
  %cmp142 = icmp slt i64 %sub.ptr.sub140, %conv141
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %cond.end.136
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.end.170

if.end.145:                                       ; preds = %cond.end.136
  store i8 0, i8* %out127, align 1, !tbaa !20
  %100 = load i32, i32* %n, align 4, !tbaa !5
  switch i32 %100, label %sw.epilog.164 [
    i32 0, label %sw.bb.146
    i32 2, label %sw.bb.149
    i32 1, label %sw.bb.156
  ]

sw.bb.146:                                        ; preds = %if.end.145
  %101 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %samples_per_row147 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %101, i32 0, i32 5
  %102 = load i32, i32* %samples_per_row147, align 4, !tbaa !7
  store i32 %102, i32* %left, align 4, !tbaa !5
  %103 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr148, i8** %q, align 8, !tbaa !1
  br label %for.inc.165

sw.bb.149:                                        ; preds = %if.end.145
  %104 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %104, i64 2
  %105 = load i8, i8* %arrayidx150, align 1, !tbaa !20
  %conv151 = zext i8 %105 to i32
  %shr152 = ashr i32 %conv151, 4
  %106 = load i8, i8* %out127, align 1, !tbaa !20
  %conv153 = zext i8 %106 to i32
  %or154 = or i32 %conv153, %shr152
  %conv155 = trunc i32 %or154 to i8
  store i8 %conv155, i8* %out127, align 1, !tbaa !20
  br label %sw.bb.156

sw.bb.156:                                        ; preds = %if.end.145, %sw.bb.149
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx157, align 1, !tbaa !20
  %conv158 = zext i8 %108 to i32
  %and159 = and i32 %conv158, 240
  %109 = load i8, i8* %out127, align 1, !tbaa !20
  %conv160 = zext i8 %109 to i32
  %or161 = or i32 %conv160, %and159
  %conv162 = trunc i32 %or161 to i8
  store i8 %conv162, i8* %out127, align 1, !tbaa !20
  %110 = load i8, i8* %out127, align 1, !tbaa !20
  %111 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %110, i8* %arrayidx163, align 1, !tbaa !20
  br label %sw.epilog.164

sw.epilog.164:                                    ; preds = %sw.bb.156, %if.end.145
  br label %for.inc.165

for.inc.165:                                      ; preds = %sw.epilog.164, %sw.bb.146
  %112 = load i32, i32* %n, align 4, !tbaa !5
  %113 = load i32, i32* %left, align 4, !tbaa !5
  %sub166 = sub i32 %113, %112
  store i32 %sub166, i32* %left, align 4, !tbaa !5
  %114 = load i32, i32* %n, align 4, !tbaa !5
  %115 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext167 = sext i32 %114 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %115, i64 %idx.ext167
  store i8* %add.ptr168, i8** %p, align 8, !tbaa !1
  %116 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr169, i8** %q, align 8, !tbaa !1
  br label %for.cond.128

for.end.170:                                      ; preds = %if.then.144, %for.cond.128
  call void @llvm.lifetime.end(i64 1, i8* %out127) #1
  br label %sw.epilog.171

sw.default:                                       ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.171:                                    ; preds = %for.end.170, %for.end.125, %for.end
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %118 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr172 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %118, i32 0, i32 0
  store i8* %117, i8** %ptr172, align 8, !tbaa !14
  %119 = load i8*, i8** %q, align 8, !tbaa !1
  %120 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr173 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %120, i32 0, i32 1
  store i8* %119, i8** %ptr173, align 8, !tbaa !17
  %121 = load i32, i32* %left, align 4, !tbaa !5
  %122 = load %struct.stream_1248_state_s*, %struct.stream_1248_state_s** %ss, align 8, !tbaa !1
  %left174 = getelementptr inbounds %struct.stream_1248_state_s, %struct.stream_1248_state_s* %122, i32 0, i32 7
  store i32 %121, i32* %left174, align 4, !tbaa !12
  %123 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.171, %sw.default
  %124 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.stream_1248_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define i32 @s_C2R_init(%struct.stream_C2R_state_s* %ss, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %ss.addr = alloca %struct.stream_C2R_state_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.stream_C2R_state_s* %ss, %struct.stream_C2R_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %1 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.stream_C2R_state_s, %struct.stream_C2R_state_s* %1, i32 0, i32 5
  store %struct.gs_imager_state_s* %0, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_C2R_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_C2R_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %bc = alloca i8, align 1
  %bm = alloca i8, align 1
  %by = alloca i8, align 1
  %bk = alloca i8, align 1
  %rgb = alloca [3 x i16], align 2
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_C2R_state_s*
  store %struct.stream_C2R_state_s* %2, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sge i64 %sub.ptr.sub, 4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %18 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %18 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %cmp6 = icmp sge i64 %sub.ptr.sub5, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start(i64 1, i8* %bc) #1
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !20
  store i8 %21, i8* %bc, align 1, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %bm) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx7, align 1, !tbaa !20
  store i8 %23, i8* %bm, align 1, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %by) #1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx8, align 1, !tbaa !20
  store i8 %25, i8* %by, align 1, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %bk) #1
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %26, i64 4
  %27 = load i8, i8* %arrayidx9, align 1, !tbaa !20
  store i8 %27, i8* %bk, align 1, !tbaa !20
  %28 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %28) #1
  %29 = load i8, i8* %bc, align 1, !tbaa !20
  %conv = zext i8 %29 to i16
  %conv10 = sext i16 %conv to i32
  %shl = shl i32 %conv10, 7
  %30 = load i8, i8* %bc, align 1, !tbaa !20
  %conv11 = zext i8 %30 to i32
  %shr = ashr i32 %conv11, 1
  %add = add nsw i32 %shl, %shr
  %31 = load i8, i8* %bc, align 1, !tbaa !20
  %conv12 = zext i8 %31 to i32
  %shr13 = ashr i32 %conv12, 5
  %sub = sub nsw i32 %add, %shr13
  %conv14 = trunc i32 %sub to i16
  %32 = load i8, i8* %bm, align 1, !tbaa !20
  %conv15 = zext i8 %32 to i16
  %conv16 = sext i16 %conv15 to i32
  %shl17 = shl i32 %conv16, 7
  %33 = load i8, i8* %bm, align 1, !tbaa !20
  %conv18 = zext i8 %33 to i32
  %shr19 = ashr i32 %conv18, 1
  %add20 = add nsw i32 %shl17, %shr19
  %34 = load i8, i8* %bm, align 1, !tbaa !20
  %conv21 = zext i8 %34 to i32
  %shr22 = ashr i32 %conv21, 5
  %sub23 = sub nsw i32 %add20, %shr22
  %conv24 = trunc i32 %sub23 to i16
  %35 = load i8, i8* %by, align 1, !tbaa !20
  %conv25 = zext i8 %35 to i16
  %conv26 = sext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 7
  %36 = load i8, i8* %by, align 1, !tbaa !20
  %conv28 = zext i8 %36 to i32
  %shr29 = ashr i32 %conv28, 1
  %add30 = add nsw i32 %shl27, %shr29
  %37 = load i8, i8* %by, align 1, !tbaa !20
  %conv31 = zext i8 %37 to i32
  %shr32 = ashr i32 %conv31, 5
  %sub33 = sub nsw i32 %add30, %shr32
  %conv34 = trunc i32 %sub33 to i16
  %38 = load i8, i8* %bk, align 1, !tbaa !20
  %conv35 = zext i8 %38 to i16
  %conv36 = sext i16 %conv35 to i32
  %shl37 = shl i32 %conv36, 7
  %39 = load i8, i8* %bk, align 1, !tbaa !20
  %conv38 = zext i8 %39 to i32
  %shr39 = ashr i32 %conv38, 1
  %add40 = add nsw i32 %shl37, %shr39
  %40 = load i8, i8* %bk, align 1, !tbaa !20
  %conv41 = zext i8 %40 to i32
  %shr42 = ashr i32 %conv41, 5
  %sub43 = sub nsw i32 %add40, %shr42
  %conv44 = trunc i32 %sub43 to i16
  %41 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.stream_C2R_state_s, %struct.stream_C2R_state_s* %41, i32 0, i32 5
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !21
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %43 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %pis45 = getelementptr inbounds %struct.stream_C2R_state_s, %struct.stream_C2R_state_s* %43, i32 0, i32 5
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis45, align 8, !tbaa !21
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  call void @color_cmyk_to_rgb(i16 signext %conv14, i16 signext %conv24, i16 signext %conv34, i16 signext %conv44, %struct.gs_imager_state_s* %42, i16* %arraydecay, %struct.gs_memory_s* %45) #7
  %arrayidx46 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %46 = load i16, i16* %arrayidx46, align 2, !tbaa !39
  %conv47 = sext i16 %46 to i32
  %shr48 = ashr i32 %conv47, 12
  %arrayidx49 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %47 = load i16, i16* %arrayidx49, align 2, !tbaa !39
  %conv50 = sext i16 %47 to i32
  %add51 = add nsw i32 %shr48, %conv50
  %shr52 = ashr i32 %add51, 7
  %conv53 = trunc i32 %shr52 to i8
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv53, i8* %arrayidx54, align 1, !tbaa !20
  %arrayidx55 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %49 = load i16, i16* %arrayidx55, align 2, !tbaa !39
  %conv56 = sext i16 %49 to i32
  %shr57 = ashr i32 %conv56, 12
  %arrayidx58 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %50 = load i16, i16* %arrayidx58, align 2, !tbaa !39
  %conv59 = sext i16 %50 to i32
  %add60 = add nsw i32 %shr57, %conv59
  %shr61 = ashr i32 %add60, 7
  %conv62 = trunc i32 %shr61 to i8
  %51 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %conv62, i8* %arrayidx63, align 1, !tbaa !20
  %arrayidx64 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %52 = load i16, i16* %arrayidx64, align 2, !tbaa !39
  %conv65 = sext i16 %52 to i32
  %shr66 = ashr i32 %conv65, 12
  %arrayidx67 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %53 = load i16, i16* %arrayidx67, align 2, !tbaa !39
  %conv68 = sext i16 %53 to i32
  %add69 = add nsw i32 %shr66, %conv68
  %shr70 = ashr i32 %add69, 7
  %conv71 = trunc i32 %shr70 to i8
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %54, i64 3
  store i8 %conv71, i8* %arrayidx72, align 1, !tbaa !20
  %55 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %55) #1
  call void @llvm.lifetime.end(i64 1, i8* %bk) #1
  call void @llvm.lifetime.end(i64 1, i8* %by) #1
  call void @llvm.lifetime.end(i64 1, i8* %bm) #1
  call void @llvm.lifetime.end(i64 1, i8* %bc) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %add.ptr73, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr74 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %59, i32 0, i32 0
  store i8* %58, i8** %ptr74, align 8, !tbaa !14
  %60 = load i8*, i8** %q, align 8, !tbaa !1
  %61 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr75 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %61, i32 0, i32 1
  store i8* %60, i8** %ptr75, align 8, !tbaa !17
  %62 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast76 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %63 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %cmp79 = icmp slt i64 %sub.ptr.sub78, 4
  %cond = select i1 %cmp79, i32 0, i32 1
  %64 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @s_C2R_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_C2R_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_C2R_state_s*
  store %struct.stream_C2R_state_s* %2, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_C2R_state_s*, %struct.stream_C2R_state_s** %ss, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.stream_C2R_state_s, %struct.stream_C2R_state_s* %3, i32 0, i32 5
  store %struct.gs_imager_state_s* null, %struct.gs_imager_state_s** %pis, align 8, !tbaa !21
  %4 = bitcast %struct.stream_C2R_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ie_state_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %st = alloca %struct.stream_IE_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IE_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_IE_state_s*
  store %struct.stream_IE_state_s* %2, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %4, i32 0, i32 9
  %5 = load float*, float** %Decode, align 8, !tbaa !40
  %6 = bitcast float* %5 to i8*
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr, align 8, !tbaa !43
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %9 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %9, i32 0, i32 10
  %call = call %struct.gs_ptr_procs_s* @enum_bytestring(%struct.enum_ptr_s* %8, %struct.gs_bytestring_s* %Table) #7
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.1, %sw.bb, %sw.default
  %10 = bitcast %struct.stream_IE_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @ie_state_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %st = alloca %struct.stream_IE_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IE_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_IE_state_s*
  store %struct.stream_IE_state_s* %2, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !45
  %7 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %7, i32 0, i32 9
  %8 = load float*, float** %Decode, align 8, !tbaa !40
  %9 = bitcast float* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #7
  %11 = bitcast i8* %call to float*
  %12 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %Decode1 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %12, i32 0, i32 9
  store float* %11, float** %Decode1, align 8, !tbaa !40
  %13 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %st, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %13, i32 0, i32 10
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @reloc_bytestring(%struct.gs_bytestring_s* %Table, %struct.gc_state_s* %14) #7
  %15 = bitcast %struct.stream_IE_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_IE_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IE_state_s*, align 8
  %key_index = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IE_state_s*
  store %struct.stream_IE_state_s* %2, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %key_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %BitsPerIndex = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %4, i32 0, i32 8
  %5 = load i32, i32* %BitsPerIndex, align 4, !tbaa !47
  %shl = shl i32 1, %5
  %6 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %NumComponents = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %6, i32 0, i32 6
  %7 = load i32, i32* %NumComponents, align 4, !tbaa !48
  %mul = mul nsw i32 %shl, %7
  store i32 %mul, i32* %key_index, align 4, !tbaa !5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %9, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !49
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table1 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %11, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table1, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !50
  %13 = load i32, i32* %key_index, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %12, %13
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table3 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %14, i32 0, i32 10
  %data4 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table3, i32 0, i32 0
  %15 = load i8*, i8** %data4, align 8, !tbaa !49
  %16 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %NumComponents5 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %16, i32 0, i32 6
  %17 = load i32, i32* %NumComponents5, align 4, !tbaa !48
  %conv = sext i32 %17 to i64
  %call = call i8* @memset(i8* %15, i32 0, i64 %conv) #8
  %18 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table6 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %18, i32 0, i32 10
  %size7 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table6, i32 0, i32 1
  %19 = load i32, i32* %size7, align 4, !tbaa !50
  %sub = sub i32 %19, 1
  %idxprom = zext i32 %sub to i64
  %20 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table8 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %20, i32 0, i32 10
  %data9 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table8, i32 0, i32 0
  %21 = load i8*, i8** %data9, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %conv10 = sext i32 %22 to i64
  %cmp11 = icmp ult i64 %conv10, 400
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %key_index, align 4, !tbaa !5
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %hash_table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %25, i32 0, i32 11
  %arrayidx14 = getelementptr inbounds [400 x i32], [400 x i32]* %hash_table, i32 0, i64 %idxprom13
  store i32 %23, i32* %arrayidx14, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %27, i32 0, i32 12
  store i32 0, i32* %next_index, align 4, !tbaa !51
  %28 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %in_bits_left = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %28, i32 0, i32 14
  store i32 0, i32* %in_bits_left, align 4, !tbaa !52
  %29 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_component = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %29, i32 0, i32 15
  store i32 0, i32* %next_component, align 4, !tbaa !53
  %30 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %byte_out = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %30, i32 0, i32 16
  store i32 1, i32* %byte_out, align 4, !tbaa !54
  %31 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %31, i32 0, i32 17
  store i32 0, i32* %x, align 4, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %key_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @s_IE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_IE_state_s*, align 8
  %bpc = alloca i32, align 4
  %num_components = alloca i32, align 4
  %end_index = alloca i32, align 4
  %table = alloca i8*, align 8
  %key = alloca i8*, align 8
  %byte_in = alloca i32, align 4
  %in_bits_left = alloca i32, align 4
  %next_component = alloca i32, align 4
  %byte_out = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %hash = alloca i32, align 4
  %reprobe = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %decode = alloca float*, align 8
  %sample = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IE_state_s*
  store %struct.stream_IE_state_s* %2, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %4, i32 0, i32 5
  %5 = load i32, i32* %BitsPerComponent, align 4, !tbaa !56
  store i32 %5, i32* %bpc, align 4, !tbaa !5
  %6 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %NumComponents = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %7, i32 0, i32 6
  %8 = load i32, i32* %NumComponents, align 4, !tbaa !48
  store i32 %8, i32* %num_components, align 4, !tbaa !5
  %9 = bitcast i32* %end_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %BitsPerIndex = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %10, i32 0, i32 8
  %11 = load i32, i32* %BitsPerIndex, align 4, !tbaa !47
  %shl = shl i32 1, %11
  %12 = load i32, i32* %num_components, align 4, !tbaa !5
  %mul = mul nsw i32 %shl, %12
  store i32 %mul, i32* %end_index, align 4, !tbaa !5
  %13 = bitcast i8** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %14, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !49
  store i8* %15, i8** %table, align 8, !tbaa !1
  %16 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %table, align 8, !tbaa !1
  %18 = load i32, i32* %end_index, align 4, !tbaa !5
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %key, align 8, !tbaa !1
  %19 = bitcast i32* %byte_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %byte_in1 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %20, i32 0, i32 13
  %21 = load i32, i32* %byte_in1, align 4, !tbaa !57
  store i32 %21, i32* %byte_in, align 4, !tbaa !5
  %22 = bitcast i32* %in_bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %in_bits_left2 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %23, i32 0, i32 14
  %24 = load i32, i32* %in_bits_left2, align 4, !tbaa !52
  store i32 %24, i32* %in_bits_left, align 4, !tbaa !5
  %25 = bitcast i32* %next_component to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_component3 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %26, i32 0, i32 15
  %27 = load i32, i32* %next_component3, align 4, !tbaa !53
  store i32 %27, i32* %next_component, align 4, !tbaa !5
  %28 = bitcast i32* %byte_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %byte_out4 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %29, i32 0, i32 16
  %30 = load i32, i32* %byte_out4, align 4, !tbaa !54
  store i32 %30, i32* %byte_out, align 4, !tbaa !5
  %31 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %32, i32 0, i32 0
  %33 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %33, i8** %p, align 8, !tbaa !1
  %34 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %36, i8** %rlimit, align 8, !tbaa !1
  %37 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %ptr5, align 8, !tbaa !17
  store i8* %39, i8** %q, align 8, !tbaa !1
  %40 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %41, i32 0, i32 2
  %42 = load i8*, i8** %limit6, align 8, !tbaa !19
  store i8* %42, i8** %wlimit, align 8, !tbaa !1
  %43 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.125, %entry
  %44 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %reprobe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %byte_out, align 4, !tbaa !5
  %cmp = icmp uge i32 %48, 256
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.cond
  %49 = load i8*, i8** %q, align 8, !tbaa !1
  %50 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp7 = icmp uge i8* %49, %50
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end:                                           ; preds = %if.then
  %51 = load i32, i32* %byte_out, align 4, !tbaa !5
  %conv = trunc i32 %51 to i8
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv, i8* %incdec.ptr, align 1, !tbaa !20
  store i32 1, i32* %byte_out, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.cond
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.9
  %53 = load i32, i32* %next_component, align 4, !tbaa !5
  %54 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %53, %54
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = bitcast float** %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i32, i32* %next_component, align 4, !tbaa !5
  %mul12 = mul nsw i32 %56, 2
  %idxprom = sext i32 %mul12 to i64
  %57 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %57, i32 0, i32 9
  %58 = load float*, float** %Decode, align 8, !tbaa !40
  %arrayidx = getelementptr inbounds float, float* %58, i64 %idxprom
  store float* %arrayidx, float** %decode, align 8, !tbaa !1
  %59 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %in_bits_left, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %60, 0
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %while.body
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp16 = icmp uge i8* %61, %62
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.15
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8, !tbaa !1
  %64 = load i8, i8* %incdec.ptr20, align 1, !tbaa !20
  %conv21 = zext i8 %64 to i32
  store i32 %conv21, i32* %byte_in, align 4, !tbaa !5
  store i32 8, i32* %in_bits_left, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %while.body
  %65 = load i32, i32* %bpc, align 4, !tbaa !5
  %66 = load i32, i32* %in_bits_left, align 4, !tbaa !5
  %sub = sub nsw i32 %66, %65
  store i32 %sub, i32* %in_bits_left, align 4, !tbaa !5
  %67 = load i32, i32* %byte_in, align 4, !tbaa !5
  %68 = load i32, i32* %in_bits_left, align 4, !tbaa !5
  %shr = lshr i32 %67, %68
  %69 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl23 = shl i32 1, %69
  %sub24 = sub nsw i32 %shl23, 1
  %and = and i32 %shr, %sub24
  store i32 %and, i32* %sample, align 4, !tbaa !5
  %70 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %70, i64 0
  %71 = load float, float* %arrayidx25, align 4, !tbaa !58
  %72 = load i32, i32* %sample, align 4, !tbaa !5
  %conv26 = sitofp i32 %72 to float
  %73 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl27 = shl i32 1, %73
  %sub28 = sub nsw i32 %shl27, 1
  %conv29 = sitofp i32 %sub28 to float
  %div = fdiv float %conv26, %conv29
  %74 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds float, float* %74, i64 1
  %75 = load float, float* %arrayidx30, align 4, !tbaa !58
  %76 = load float*, float** %decode, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %76, i64 0
  %77 = load float, float* %arrayidx31, align 4, !tbaa !58
  %sub32 = fsub float %75, %77
  %mul33 = fmul float %div, %sub32
  %add = fadd float %71, %mul33
  %mul34 = fmul float %add, 2.550000e+02
  %conv35 = fpext float %mul34 to double
  %add36 = fadd double %conv35, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  store i32 %conv37, i32* %sample, align 4, !tbaa !5
  %78 = load i32, i32* %sample, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %78, 0
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  br label %cond.end.46

cond.false:                                       ; preds = %if.end.22
  %79 = load i32, i32* %sample, align 4, !tbaa !5
  %cmp40 = icmp sgt i32 %79, 255
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false
  %80 = load i32, i32* %sample, align 4, !tbaa !5
  %conv44 = trunc i32 %80 to i8
  %conv45 = zext i8 %conv44 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.42
  %cond = phi i32 [ 255, %cond.true.42 ], [ %conv45, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end, %cond.true
  %cond47 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv48 = trunc i32 %cond47 to i8
  %81 = load i32, i32* %next_component, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %next_component, align 4, !tbaa !5
  %idxprom49 = sext i32 %81 to i64
  %82 = load i8*, i8** %key, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %82, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.18, %cond.end.46
  %83 = bitcast i32* %sample to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast float** %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %hash, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %while.end
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %86 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %85, %86
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.52
  %87 = load i32, i32* %hash, align 4, !tbaa !5
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %88 to i64
  %89 = load i8*, i8** %key, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %89, i64 %idxprom55
  %90 = load i8, i8* %arrayidx56, align 1, !tbaa !20
  %conv57 = zext i8 %90 to i32
  %mul58 = mul nsw i32 23, %conv57
  %add59 = add i32 %87, %mul58
  store i32 %add59, i32* %hash, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %91, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  %92 = load i32, i32* %hash, align 4, !tbaa !5
  %conv61 = zext i32 %92 to i64
  %div62 = udiv i64 %conv61, 400
  %or = or i64 %div62, 137
  %conv63 = trunc i64 %or to i32
  store i32 %conv63, i32* %reprobe, align 4, !tbaa !5
  %93 = load i32, i32* %hash, align 4, !tbaa !5
  %conv64 = zext i32 %93 to i64
  %rem = urem i64 %conv64, 400
  %conv65 = trunc i64 %rem to i32
  store i32 %conv65, i32* %hash, align 4, !tbaa !5
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.73, %for.end
  %94 = load i8*, i8** %table, align 8, !tbaa !1
  %95 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom67 = zext i32 %95 to i64
  %96 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %hash_table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %96, i32 0, i32 11
  %arrayidx68 = getelementptr inbounds [400 x i32], [400 x i32]* %hash_table, i32 0, i64 %idxprom67
  %97 = load i32, i32* %arrayidx68, align 4, !tbaa !5
  %idx.ext69 = sext i32 %97 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %94, i64 %idx.ext69
  %98 = load i8*, i8** %key, align 8, !tbaa !1
  %99 = load i32, i32* %num_components, align 4, !tbaa !5
  %conv71 = sext i32 %99 to i64
  %call = call i32 @memcmp(i8* %add.ptr70, i8* %98, i64 %conv71) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body.72, label %for.end.78

for.body.72:                                      ; preds = %for.cond.66
  br label %do.body

do.body:                                          ; preds = %for.body.72
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.73

for.inc.73:                                       ; preds = %do.end
  %100 = load i32, i32* %hash, align 4, !tbaa !5
  %101 = load i32, i32* %reprobe, align 4, !tbaa !5
  %add74 = add i32 %100, %101
  %conv75 = zext i32 %add74 to i64
  %rem76 = urem i64 %conv75, 400
  %conv77 = trunc i64 %rem76 to i32
  store i32 %conv77, i32* %hash, align 4, !tbaa !5
  br label %for.cond.66

for.end.78:                                       ; preds = %for.cond.66
  %102 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom79 = zext i32 %102 to i64
  %103 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %hash_table80 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %103, i32 0, i32 11
  %arrayidx81 = getelementptr inbounds [400 x i32], [400 x i32]* %hash_table80, i32 0, i64 %idxprom79
  %104 = load i32, i32* %arrayidx81, align 4, !tbaa !5
  store i32 %104, i32* %index, align 4, !tbaa !5
  %105 = load i32, i32* %index, align 4, !tbaa !5
  %106 = load i32, i32* %end_index, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %105, %106
  br i1 %cmp82, label %if.then.84, label %if.end.99

if.then.84:                                       ; preds = %for.end.78
  %107 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %107, i32 0, i32 12
  %108 = load i32, i32* %next_index, align 4, !tbaa !51
  %109 = load i32, i32* %end_index, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %108, %109
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  store i32 -2, i32* %status, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.88:                                        ; preds = %if.then.84
  %110 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index89 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %110, i32 0, i32 12
  %111 = load i32, i32* %next_index89, align 4, !tbaa !51
  store i32 %111, i32* %index, align 4, !tbaa !5
  %112 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom90 = zext i32 %112 to i64
  %113 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %hash_table91 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %113, i32 0, i32 11
  %arrayidx92 = getelementptr inbounds [400 x i32], [400 x i32]* %hash_table91, i32 0, i64 %idxprom90
  store i32 %111, i32* %arrayidx92, align 4, !tbaa !5
  %114 = load i32, i32* %num_components, align 4, !tbaa !5
  %115 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index93 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %115, i32 0, i32 12
  %116 = load i32, i32* %next_index93, align 4, !tbaa !51
  %add94 = add nsw i32 %116, %114
  store i32 %add94, i32* %next_index93, align 4, !tbaa !51
  %117 = load i8*, i8** %table, align 8, !tbaa !1
  %118 = load i32, i32* %index, align 4, !tbaa !5
  %idx.ext95 = sext i32 %118 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %117, i64 %idx.ext95
  %119 = load i8*, i8** %key, align 8, !tbaa !1
  %120 = load i32, i32* %num_components, align 4, !tbaa !5
  %conv97 = sext i32 %120 to i64
  %call98 = call i8* @memcpy(i8* %add.ptr96, i8* %119, i64 %conv97) #8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.88, %for.end.78
  %121 = load i32, i32* %byte_out, align 4, !tbaa !5
  %122 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %BitsPerIndex100 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %122, i32 0, i32 8
  %123 = load i32, i32* %BitsPerIndex100, align 4, !tbaa !47
  %shl101 = shl i32 %121, %123
  %124 = load i32, i32* %index, align 4, !tbaa !5
  %125 = load i32, i32* %num_components, align 4, !tbaa !5
  %div102 = sdiv i32 %124, %125
  %add103 = add i32 %shl101, %div102
  store i32 %add103, i32* %byte_out, align 4, !tbaa !5
  store i32 0, i32* %next_component, align 4, !tbaa !5
  %126 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %126, i32 0, i32 17
  %127 = load i32, i32* %x, align 4, !tbaa !55
  %inc104 = add nsw i32 %127, 1
  store i32 %inc104, i32* %x, align 4, !tbaa !55
  %128 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %128, i32 0, i32 7
  %129 = load i32, i32* %Width, align 4, !tbaa !59
  %cmp105 = icmp eq i32 %inc104, %129
  br i1 %cmp105, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %if.end.99
  store i32 0, i32* %in_bits_left, align 4, !tbaa !5
  %130 = load i32, i32* %byte_out, align 4, !tbaa !5
  %cmp108 = icmp ne i32 %130, 1
  br i1 %cmp108, label %if.then.110, label %if.end.117

if.then.110:                                      ; preds = %if.then.107
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.114, %if.then.110
  %131 = load i32, i32* %byte_out, align 4, !tbaa !5
  %cmp112 = icmp ult i32 %131, 256
  br i1 %cmp112, label %while.body.114, label %while.end.116

while.body.114:                                   ; preds = %while.cond.111
  %132 = load i32, i32* %byte_out, align 4, !tbaa !5
  %shl115 = shl i32 %132, 1
  store i32 %shl115, i32* %byte_out, align 4, !tbaa !5
  br label %while.cond.111

while.end.116:                                    ; preds = %while.cond.111
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %if.then.107
  %133 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %x118 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %133, i32 0, i32 17
  store i32 0, i32* %x118, align 4, !tbaa !55
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.117, %if.end.99
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.119, %if.then.87, %cleanup, %if.then.8
  %134 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %reprobe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest.124 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.124, label %cleanup.151 [
    i32 0, label %cleanup.cont.125
    i32 2, label %for.end.126
    i32 6, label %out
  ]

cleanup.cont.125:                                 ; preds = %cleanup.120
  br label %for.cond

for.end.126:                                      ; preds = %cleanup.120
  br label %out

out:                                              ; preds = %for.end.126, %cleanup.120
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %139 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr127 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %139, i32 0, i32 0
  store i8* %138, i8** %ptr127, align 8, !tbaa !14
  %140 = load i8*, i8** %q, align 8, !tbaa !1
  %141 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr128 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %141, i32 0, i32 1
  store i8* %140, i8** %ptr128, align 8, !tbaa !17
  %142 = load i32, i32* %byte_in, align 4, !tbaa !5
  %143 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %byte_in129 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %143, i32 0, i32 13
  store i32 %142, i32* %byte_in129, align 4, !tbaa !57
  %144 = load i32, i32* %in_bits_left, align 4, !tbaa !5
  %145 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %in_bits_left130 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %145, i32 0, i32 14
  store i32 %144, i32* %in_bits_left130, align 4, !tbaa !52
  %146 = load i32, i32* %next_component, align 4, !tbaa !5
  %147 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_component131 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %147, i32 0, i32 15
  store i32 %146, i32* %next_component131, align 4, !tbaa !53
  %148 = load i32, i32* %byte_out, align 4, !tbaa !5
  %149 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %byte_out132 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %149, i32 0, i32 16
  store i32 %148, i32* %byte_out132, align 4, !tbaa !54
  %150 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index133 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %150, i32 0, i32 12
  %151 = load i32, i32* %next_index133, align 4, !tbaa !51
  %cmp134 = icmp eq i32 %151, 0
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %out
  br label %cond.end.142

cond.false.137:                                   ; preds = %out
  %152 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %next_index138 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %152, i32 0, i32 12
  %153 = load i32, i32* %next_index138, align 4, !tbaa !51
  %154 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %NumComponents139 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %154, i32 0, i32 6
  %155 = load i32, i32* %NumComponents139, align 4, !tbaa !48
  %div140 = sdiv i32 %153, %155
  %sub141 = sub nsw i32 %div140, 1
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.137, %cond.true.136
  %cond143 = phi i32 [ 0, %cond.true.136 ], [ %sub141, %cond.false.137 ]
  %conv144 = trunc i32 %cond143 to i8
  %156 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table145 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %156, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table145, i32 0, i32 1
  %157 = load i32, i32* %size, align 4, !tbaa !50
  %sub146 = sub i32 %157, 1
  %idxprom147 = zext i32 %sub146 to i64
  %158 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table148 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %158, i32 0, i32 10
  %data149 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table148, i32 0, i32 0
  %159 = load i8*, i8** %data149, align 8, !tbaa !49
  %arrayidx150 = getelementptr inbounds i8, i8* %159, i64 %idxprom147
  store i8 %conv144, i8* %arrayidx150, align 1, !tbaa !20
  %160 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %cond.end.142, %cleanup.120
  %161 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %byte_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %next_component to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %in_bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %byte_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i8** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %end_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define internal void @s_IE_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IE_state_s*
  store %struct.stream_IE_state_s* %2, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %3, i32 0, i32 9
  store float* null, float** %Decode, align 8, !tbaa !40
  %4 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %4, i32 0, i32 10
  %data = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !60
  %5 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table1 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %5, i32 0, i32 10
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table1, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !61
  %6 = load %struct.stream_IE_state_s*, %struct.stream_IE_state_s** %ss, align 8, !tbaa !1
  %Table2 = getelementptr inbounds %struct.stream_IE_state_s, %struct.stream_IE_state_s* %6, i32 0, i32 10
  %bytes = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %Table2, i32 0, i32 2
  store i8* null, i8** %bytes, align 8, !tbaa !62
  %7 = bitcast %struct.stream_IE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_Downsample_size_out(i32 %size_in, float %factor, i32 %pad) #0 {
entry:
  %size_in.addr = alloca i32, align 4
  %factor.addr = alloca float, align 4
  %pad.addr = alloca i32, align 4
  store i32 %size_in, i32* %size_in.addr, align 4, !tbaa !5
  store float %factor, float* %factor.addr, align 4, !tbaa !58
  store i32 %pad, i32* %pad.addr, align 4, !tbaa !5
  %0 = load i32, i32* %pad.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %size_in.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to float
  %2 = load float, float* %factor.addr, align 4, !tbaa !58
  %add = fadd float %conv, %2
  %sub = fsub float %add, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %size_in.addr, align 4, !tbaa !5
  %conv1 = sitofp i32 %3 to float
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %conv1, %cond.false ]
  %4 = load float, float* %factor.addr, align 4, !tbaa !58
  %div = fdiv float %cond, %4
  %conv2 = fptosi float %div to i32
  ret i32 %conv2
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Subsample_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Subsample_state_s*, align 8
  %xf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Subsample_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Subsample_state_s*
  store %struct.stream_Subsample_state_s* %2, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %4, i32 0, i32 8
  %5 = load float, float* %XFactor, align 4, !tbaa !63
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xf, align 4, !tbaa !5
  %6 = load i32, i32* %xf, align 4, !tbaa !5
  %conv1 = sitofp i32 %6 to float
  %7 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %XFactor2 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %7, i32 0, i32 8
  %8 = load float, float* %XFactor2, align 4, !tbaa !63
  %cmp = fcmp une float %conv1, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %11 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %XFactor4 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %11, i32 0, i32 8
  %12 = load float, float* %XFactor4, align 4, !tbaa !63
  %conv5 = fpext float %12 to double
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0), double %conv5) #7
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call6 = call i32 @s_Downsample_init_common(%struct.stream_state_s* %13) #7
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.stream_Subsample_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Subsample_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_Subsample_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %spp = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xf = alloca i32, align 4
  %yf = alloca i32, align 4
  %xf2 = alloca i32, align 4
  %yf2 = alloca i32, align 4
  %xlimit = alloca i32, align 4
  %ylimit = alloca i32, align 4
  %xlast = alloca i32, align 4
  %ylast = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_Subsample_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Subsample_state_s*
  store %struct.stream_Subsample_state_s* %2, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %16, i32 0, i32 5
  %17 = load i32, i32* %Colors, align 4, !tbaa !67
  store i32 %17, i32* %spp, align 4, !tbaa !5
  %18 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %19, i32 0, i32 6
  %20 = load i32, i32* %WidthIn, align 4, !tbaa !68
  store i32 %20, i32* %width, align 4, !tbaa !5
  %21 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %HeightIn = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %22, i32 0, i32 7
  %23 = load i32, i32* %HeightIn, align 4, !tbaa !69
  store i32 %23, i32* %height, align 4, !tbaa !5
  %24 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %25, i32 0, i32 8
  %26 = load float, float* %XFactor, align 4, !tbaa !63
  %conv = fptosi float %26 to i32
  store i32 %conv, i32* %xf, align 4, !tbaa !5
  %27 = bitcast i32* %yf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %YFactor = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %28, i32 0, i32 9
  %29 = load float, float* %YFactor, align 4, !tbaa !70
  %conv3 = fptosi float %29 to i32
  store i32 %conv3, i32* %yf, align 4, !tbaa !5
  %30 = bitcast i32* %xf2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %xf, align 4, !tbaa !5
  %div = sdiv i32 %31, 2
  store i32 %div, i32* %xf2, align 4, !tbaa !5
  %32 = bitcast i32* %yf2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %yf, align 4, !tbaa !5
  %div4 = sdiv i32 %33, 2
  store i32 %div4, i32* %yf2, align 4, !tbaa !5
  %34 = bitcast i32* %xlimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %width, align 4, !tbaa !5
  %36 = load i32, i32* %xf, align 4, !tbaa !5
  %div5 = sdiv i32 %35, %36
  %37 = load i32, i32* %xf, align 4, !tbaa !5
  %mul = mul nsw i32 %div5, %37
  store i32 %mul, i32* %xlimit, align 4, !tbaa !5
  %38 = bitcast i32* %ylimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %height, align 4, !tbaa !5
  %40 = load i32, i32* %yf, align 4, !tbaa !5
  %div6 = sdiv i32 %39, %40
  %41 = load i32, i32* %yf, align 4, !tbaa !5
  %mul7 = mul nsw i32 %div6, %41
  store i32 %mul7, i32* %ylimit, align 4, !tbaa !5
  %42 = bitcast i32* %xlast to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %padX = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %43, i32 0, i32 11
  %44 = load i32, i32* %padX, align 4, !tbaa !71
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %45 = load i32, i32* %xlimit, align 4, !tbaa !5
  %46 = load i32, i32* %width, align 4, !tbaa !5
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %47 = load i32, i32* %xlimit, align 4, !tbaa !5
  %48 = load i32, i32* %width, align 4, !tbaa !5
  %49 = load i32, i32* %xf, align 4, !tbaa !5
  %rem = srem i32 %48, %49
  %div9 = sdiv i32 %rem, 2
  %add = add nsw i32 %47, %div9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %xlast, align 4, !tbaa !5
  %50 = bitcast i32* %ylast to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %padY = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %51, i32 0, i32 12
  %52 = load i32, i32* %padY, align 4, !tbaa !72
  %tobool10 = icmp ne i32 %52, 0
  br i1 %tobool10, label %land.lhs.true.11, label %cond.false.18

land.lhs.true.11:                                 ; preds = %cond.end
  %53 = load i32, i32* %ylimit, align 4, !tbaa !5
  %54 = load i32, i32* %height, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %53, %54
  br i1 %cmp12, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %land.lhs.true.11
  %55 = load i32, i32* %ylimit, align 4, !tbaa !5
  %56 = load i32, i32* %height, align 4, !tbaa !5
  %57 = load i32, i32* %yf, align 4, !tbaa !5
  %rem15 = srem i32 %56, %57
  %div16 = sdiv i32 %rem15, 2
  %add17 = add nsw i32 %55, %div16
  br label %cond.end.19

cond.false.18:                                    ; preds = %land.lhs.true.11, %cond.end
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.14
  %cond20 = phi i32 [ %add17, %cond.true.14 ], [ -1, %cond.false.18 ]
  store i32 %cond20, i32* %ylast, align 4, !tbaa !5
  %58 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %x21 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %59, i32 0, i32 13
  %60 = load i32, i32* %x21, align 4, !tbaa !73
  store i32 %60, i32* %x, align 4, !tbaa !5
  %61 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %y22 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %62, i32 0, i32 14
  %63 = load i32, i32* %y22, align 4, !tbaa !74
  store i32 %63, i32* %y, align 4, !tbaa !5
  %64 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %cond.end.19
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %65 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %67 = load i32, i32* %spp, align 4, !tbaa !5
  %conv23 = sext i32 %67 to i64
  %cmp24 = icmp sge i64 %sub.ptr.sub, %conv23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %y, align 4, !tbaa !5
  %69 = load i32, i32* %yf, align 4, !tbaa !5
  %rem26 = srem i32 %68, %69
  %70 = load i32, i32* %yf2, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %rem26, %70
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false

land.lhs.true.29:                                 ; preds = %for.body
  %71 = load i32, i32* %y, align 4, !tbaa !5
  %72 = load i32, i32* %ylimit, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %71, %72
  br i1 %cmp30, label %land.lhs.true.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.29, %for.body
  %73 = load i32, i32* %y, align 4, !tbaa !5
  %74 = load i32, i32* %ylast, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %73, %74
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.54

land.lhs.true.34:                                 ; preds = %lor.lhs.false, %land.lhs.true.29
  %75 = load i32, i32* %x, align 4, !tbaa !5
  %76 = load i32, i32* %xf, align 4, !tbaa !5
  %rem35 = srem i32 %75, %76
  %77 = load i32, i32* %xf2, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %rem35, %77
  br i1 %cmp36, label %land.lhs.true.38, label %lor.lhs.false.41

land.lhs.true.38:                                 ; preds = %land.lhs.true.34
  %78 = load i32, i32* %x, align 4, !tbaa !5
  %79 = load i32, i32* %xlimit, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %78, %79
  br i1 %cmp39, label %if.then, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.38, %land.lhs.true.34
  %80 = load i32, i32* %x, align 4, !tbaa !5
  %81 = load i32, i32* %xlast, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %80, %81
  br i1 %cmp42, label %if.then, label %if.end.54

if.then:                                          ; preds = %lor.lhs.false.41, %land.lhs.true.38
  %82 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %83 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast44 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %83 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %84 = load i32, i32* %spp, align 4, !tbaa !5
  %conv47 = sext i32 %84 to i64
  %cmp48 = icmp slt i64 %sub.ptr.sub46, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end

if.then.50:                                       ; preds = %if.then
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %if.then
  %85 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i32, i32* %spp, align 4, !tbaa !5
  %conv52 = sext i32 %87 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr51, i64 %conv52) #8
  %88 = load i32, i32* %spp, align 4, !tbaa !5
  %89 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext = sext i32 %88 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %89, i64 %idx.ext
  store i8* %add.ptr53, i8** %q, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %lor.lhs.false.41, %lor.lhs.false
  %90 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  %91 = load i32, i32* %width, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %inc, %91
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  store i32 0, i32* %x, align 4, !tbaa !5
  %92 = load i32, i32* %y, align 4, !tbaa !5
  %inc58 = add nsw i32 %92, 1
  store i32 %inc58, i32* %y, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %93 = load i32, i32* %spp, align 4, !tbaa !5
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext60 = sext i32 %93 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %94, i64 %idx.ext60
  store i8* %add.ptr61, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.50, %for.cond
  br label %do.body.62

do.body.62:                                       ; preds = %for.end
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %96 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr65 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %96, i32 0, i32 0
  store i8* %95, i8** %ptr65, align 8, !tbaa !14
  %97 = load i8*, i8** %q, align 8, !tbaa !1
  %98 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr66 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %98, i32 0, i32 1
  store i8* %97, i8** %ptr66, align 8, !tbaa !17
  %99 = load i32, i32* %x, align 4, !tbaa !5
  %100 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %x67 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %100, i32 0, i32 13
  store i32 %99, i32* %x67, align 4, !tbaa !73
  %101 = load i32, i32* %y, align 4, !tbaa !5
  %102 = load %struct.stream_Subsample_state_s*, %struct.stream_Subsample_state_s** %ss, align 8, !tbaa !1
  %y68 = getelementptr inbounds %struct.stream_Subsample_state_s, %struct.stream_Subsample_state_s* %102, i32 0, i32 14
  store i32 %101, i32* %y68, align 4, !tbaa !74
  %103 = load i32, i32* %status, align 4, !tbaa !5
  %104 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %ylast to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %xlast to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %ylimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %xlimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %yf2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %xf2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %yf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.stream_Subsample_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal void @s_Downsample_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Downsample_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Downsample_state_s*
  store %struct.stream_Downsample_state_s* %2, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padY = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %3, i32 0, i32 12
  store i32 0, i32* %padY, align 4, !tbaa !75
  %4 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %padX = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %4, i32 0, i32 11
  store i32 0, i32* %padX, align 4, !tbaa !77
  %5 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %AntiAlias = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %5, i32 0, i32 10
  store i32 0, i32* %AntiAlias, align 4, !tbaa !78
  %6 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Average_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Average_state_s*, align 8
  %xf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Average_state_s*
  store %struct.stream_Average_state_s* %2, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %4, i32 0, i32 8
  %5 = load float, float* %XFactor, align 4, !tbaa !79
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %xf, align 4, !tbaa !5
  %6 = load i32, i32* %xf, align 4, !tbaa !5
  %conv1 = sitofp i32 %6 to float
  %7 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %XFactor2 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %7, i32 0, i32 8
  %8 = load float, float* %XFactor2, align 4, !tbaa !79
  %cmp = fcmp une float %conv1, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %11 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %XFactor4 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %11, i32 0, i32 8
  %12 = load float, float* %XFactor4, align 4, !tbaa !79
  %conv5 = fpext float %12 to double
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), double %conv5) #7
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %13, i32 0, i32 5
  %14 = load i32, i32* %Colors, align 4, !tbaa !81
  %15 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %15, i32 0, i32 6
  %16 = load i32, i32* %WidthIn, align 4, !tbaa !82
  %17 = load i32, i32* %xf, align 4, !tbaa !5
  %add = add nsw i32 %16, %17
  %sub = sub nsw i32 %add, 1
  %18 = load i32, i32* %xf, align 4, !tbaa !5
  %div = sdiv i32 %sub, %18
  %mul = mul nsw i32 %14, %div
  %19 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sum_size = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %19, i32 0, i32 15
  store i32 %mul, i32* %sum_size, align 4, !tbaa !83
  %20 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sum_size6 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %20, i32 0, i32 15
  %21 = load i32, i32* %sum_size6, align 4, !tbaa !83
  %22 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %padX = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %22, i32 0, i32 11
  %23 = load i32, i32* %padX, align 4, !tbaa !84
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %WidthIn7 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %24, i32 0, i32 6
  %25 = load i32, i32* %WidthIn7, align 4, !tbaa !82
  %26 = load i32, i32* %xf, align 4, !tbaa !5
  %rem = srem i32 %25, %26
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %27 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %Colors10 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %27, i32 0, i32 5
  %28 = load i32, i32* %Colors10, align 4, !tbaa !81
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %sub11 = sub i32 %21, %cond
  %29 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %copy_size = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %29, i32 0, i32 16
  store i32 %sub11, i32* %copy_size, align 4, !tbaa !85
  %30 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %30, i32 0, i32 17
  %31 = load i32*, i32** %sums, align 8, !tbaa !86
  %tobool12 = icmp ne i32* %31, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %cond.end
  %32 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %32, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !65
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %35 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %35, i32 0, i32 1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !65
  %37 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums16 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %37, i32 0, i32 17
  %38 = load i32*, i32** %sums16, align 8, !tbaa !86
  %39 = bitcast i32* %38 to i8*
  call void %34(%struct.gs_memory_s* %36, i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %cond.end
  %40 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !65
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 10
  %42 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !90
  %43 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !65
  %45 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sum_size21 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %45, i32 0, i32 15
  %46 = load i32, i32* %sum_size21, align 4, !tbaa !83
  %call22 = call i8* %42(%struct.gs_memory_s* %44, i32 %46, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  %47 = bitcast i8* %call22 to i32*
  %48 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums23 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %48, i32 0, i32 17
  store i32* %47, i32** %sums23, align 8, !tbaa !86
  %49 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums24 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %49, i32 0, i32 17
  %50 = load i32*, i32** %sums24, align 8, !tbaa !86
  %cmp25 = icmp eq i32* %50, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.17
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.17
  %51 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums29 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %51, i32 0, i32 17
  %52 = load i32*, i32** %sums29, align 8, !tbaa !86
  %53 = bitcast i32* %52 to i8*
  %54 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sum_size30 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %54, i32 0, i32 15
  %55 = load i32, i32* %sum_size30, align 4, !tbaa !83
  %conv31 = zext i32 %55 to i64
  %mul32 = mul i64 %conv31, 4
  %call33 = call i8* @memset(i8* %53, i32 0, i64 %mul32) #8
  %56 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call34 = call i32 @s_Downsample_init_common(%struct.stream_state_s* %56) #7
  store i32 %call34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then
  %57 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Average_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_Average_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %spp = alloca i32, align 4
  %width = alloca i32, align 4
  %xf = alloca i32, align 4
  %yf = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sums = alloca i32*, align 8
  %status = alloca i32, align 4
  %ncopy = alloca i32, align 4
  %scale = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bp = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Average_state_s*
  store %struct.stream_Average_state_s* %2, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %16, i32 0, i32 5
  %17 = load i32, i32* %Colors, align 4, !tbaa !81
  store i32 %17, i32* %spp, align 4, !tbaa !5
  %18 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %19, i32 0, i32 6
  %20 = load i32, i32* %WidthIn, align 4, !tbaa !82
  store i32 %20, i32* %width, align 4, !tbaa !5
  %21 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %22, i32 0, i32 8
  %23 = load float, float* %XFactor, align 4, !tbaa !79
  %conv = fptosi float %23 to i32
  store i32 %conv, i32* %xf, align 4, !tbaa !5
  %24 = bitcast i32* %yf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %YFactor = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %25, i32 0, i32 9
  %26 = load float, float* %YFactor, align 4, !tbaa !91
  %conv3 = fptosi float %26 to i32
  store i32 %conv3, i32* %yf, align 4, !tbaa !5
  %27 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %28, i32 0, i32 13
  %29 = load i32, i32* %x4, align 4, !tbaa !92
  store i32 %29, i32* %x, align 4, !tbaa !5
  %30 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %y5 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %31, i32 0, i32 14
  %32 = load i32, i32* %y5, align 4, !tbaa !93
  store i32 %32, i32* %y, align 4, !tbaa !5
  %33 = bitcast i32** %sums to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums6 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %34, i32 0, i32 17
  %35 = load i32*, i32** %sums6, align 8, !tbaa !86
  store i32* %35, i32** %sums, align 8, !tbaa !1
  %36 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %top

top:                                              ; preds = %cleanup.60, %entry
  %37 = load i32, i32* %y, align 4, !tbaa !5
  %38 = load i32, i32* %yf, align 4, !tbaa !5
  %cmp = icmp eq i32 %37, %38
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %top
  %39 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %lor.lhs.false
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp8 = icmp uge i8* %40, %41
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.37

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %42 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %padY = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %42, i32 0, i32 12
  %43 = load i32, i32* %padY, align 4, !tbaa !94
  %tobool11 = icmp ne i32 %43, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.37

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %44 = load i32, i32* %y, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %44, 0
  br i1 %cmp13, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.12, %top
  %45 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %copy_size = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %46, i32 0, i32 16
  %47 = load i32, i32* %copy_size, align 4, !tbaa !85
  %48 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub i32 %47, %48
  %conv15 = zext i32 %sub to i64
  %49 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %50 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp16 = icmp slt i64 %conv15, %sub.ptr.sub
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %51 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %copy_size18 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %51, i32 0, i32 16
  %52 = load i32, i32* %copy_size18, align 4, !tbaa !85
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %sub19 = sub i32 %52, %53
  %conv20 = zext i32 %sub19 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %54 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %55 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast21 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %55 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv20, %cond.true ], [ %sub.ptr.sub23, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  store i32 %conv24, i32* %ncopy, align 4, !tbaa !5
  %56 = load i32, i32* %ncopy, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %56, 0
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %cond.end
  %57 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %xf, align 4, !tbaa !5
  %59 = load i32, i32* %y, align 4, !tbaa !5
  %mul = mul nsw i32 %58, %59
  store i32 %mul, i32* %scale, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.26
  %60 = load i32, i32* %ncopy, align 4, !tbaa !5
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %ncopy, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %dec, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %x, align 4, !tbaa !5
  %idxprom = sext i32 %61 to i64
  %62 = load i32*, i32** %sums, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %62, i64 %idxprom
  %63 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %64 = load i32, i32* %scale, align 4, !tbaa !5
  %div = udiv i32 %63, %64
  %conv29 = trunc i32 %div to i8
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv29, i8* %incdec.ptr, align 1, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %66 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end
  %67 = load i32, i32* %x, align 4, !tbaa !5
  %68 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %copy_size30 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %68, i32 0, i32 16
  %69 = load i32, i32* %copy_size30, align 4, !tbaa !85
  %cmp31 = icmp ult i32 %67, %69
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end
  store i32 1, i32* %status, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end
  store i32 0, i32* %y, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  %70 = load i32*, i32** %sums, align 8, !tbaa !1
  %71 = bitcast i32* %70 to i8*
  %72 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sum_size = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %72, i32 0, i32 15
  %73 = load i32, i32* %sum_size, align 4, !tbaa !83
  %conv35 = zext i32 %73 to i64
  %mul36 = mul i64 %conv35, 4
  %call = call i8* @memset(i8* %71, i32 0, i64 %mul36) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.33, %if.end.34
  %74 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
    i32 5, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %lor.lhs.false
  br label %while.cond.38

while.cond.38:                                    ; preds = %cleanup.cont.63, %if.end.37
  %75 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast39 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %76 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %77 = load i32, i32* %spp, align 4, !tbaa !5
  %conv42 = sext i32 %77 to i64
  %cmp43 = icmp sge i64 %sub.ptr.sub41, %conv42
  br i1 %cmp43, label %while.body.45, label %while.end.64

while.body.45:                                    ; preds = %while.cond.38
  %78 = bitcast i32** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load i32*, i32** %sums, align 8, !tbaa !1
  %80 = load i32, i32* %x, align 4, !tbaa !5
  %81 = load i32, i32* %xf, align 4, !tbaa !5
  %div46 = sdiv i32 %80, %81
  %82 = load i32, i32* %spp, align 4, !tbaa !5
  %mul47 = mul nsw i32 %div46, %82
  %idx.ext = sext i32 %mul47 to i64
  %add.ptr = getelementptr inbounds i32, i32* %79, i64 %idx.ext
  store i32* %add.ptr, i32** %bp, align 8, !tbaa !1
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i32, i32* %spp, align 4, !tbaa !5
  store i32 %84, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body.45
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %dec48 = add nsw i32 %85, -1
  store i32 %dec48, i32* %i, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %dec48, 0
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr51, i8** %p, align 8, !tbaa !1
  %87 = load i8, i8* %incdec.ptr51, align 1, !tbaa !20
  %conv52 = zext i8 %87 to i32
  %88 = load i32*, i32** %bp, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %incdec.ptr53, i32** %bp, align 8, !tbaa !1
  %89 = load i32, i32* %88, align 4, !tbaa !5
  %add = add i32 %89, %conv52
  store i32 %add, i32* %88, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load i32, i32* %x, align 4, !tbaa !5
  %inc54 = add nsw i32 %90, 1
  store i32 %inc54, i32* %x, align 4, !tbaa !5
  %91 = load i32, i32* %width, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %inc54, %91
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end
  store i32 0, i32* %x, align 4, !tbaa !5
  %92 = load i32, i32* %y, align 4, !tbaa !5
  %inc58 = add nsw i32 %92, 1
  store i32 %inc58, i32* %y, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.59:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.57
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %cleanup.dest.62 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.62, label %unreachable [
    i32 0, label %cleanup.cont.63
    i32 2, label %top
  ]

cleanup.cont.63:                                  ; preds = %cleanup.60
  br label %while.cond.38

while.end.64:                                     ; preds = %while.cond.38
  br label %out

out:                                              ; preds = %while.end.64, %cleanup
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %96 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr65 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %96, i32 0, i32 0
  store i8* %95, i8** %ptr65, align 8, !tbaa !14
  %97 = load i8*, i8** %q, align 8, !tbaa !1
  %98 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr66 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %98, i32 0, i32 1
  store i8* %97, i8** %ptr66, align 8, !tbaa !17
  %99 = load i32, i32* %x, align 4, !tbaa !5
  %100 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %x67 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %100, i32 0, i32 13
  store i32 %99, i32* %x67, align 4, !tbaa !92
  %101 = load i32, i32* %y, align 4, !tbaa !5
  %102 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %y68 = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %102, i32 0, i32 14
  store i32 %101, i32* %y68, align 4, !tbaa !93
  %103 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %out, %cleanup
  %104 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32** %sums to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %yf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %xf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %retval
  ret i32 %117

unreachable:                                      ; preds = %cleanup.60
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_Average_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Average_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Average_state_s*
  store %struct.stream_Average_state_s* %2, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !65
  %8 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %8, i32 0, i32 17
  %9 = load i32*, i32** %sums, align 8, !tbaa !86
  %10 = bitcast i32* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  %11 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_Average_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Average_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Average_state_s*
  store %struct.stream_Average_state_s* %2, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_Downsample_set_defaults(%struct.stream_state_s* %3) #7
  %4 = load %struct.stream_Average_state_s*, %struct.stream_Average_state_s** %ss, align 8, !tbaa !1
  %sums = getelementptr inbounds %struct.stream_Average_state_s, %struct.stream_Average_state_s* %4, i32 0, i32 17
  store i32* null, i32** %sums, align 8, !tbaa !86
  %5 = bitcast %struct.stream_Average_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Bicubic_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Bicubic_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Bicubic_state_s*
  store %struct.stream_Bicubic_state_s* %2, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %3, i32 0, i32 6
  %4 = load i32, i32* %WidthIn, align 4, !tbaa !95
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %HeightIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %5, i32 0, i32 7
  %6 = load i32, i32* %HeightIn, align 4, !tbaa !97
  %cmp1 = icmp slt i32 %6, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %WidthIn2 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %7, i32 0, i32 6
  %8 = load i32, i32* %WidthIn2, align 4, !tbaa !95
  %9 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %9, i32 0, i32 5
  %10 = load i32, i32* %Colors, align 4, !tbaa !98
  %mul = mul nsw i32 %8, %10
  %conv = sext i32 %mul to i64
  %11 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %11, i32 0, i32 16
  store i64 %conv, i64* %l_size, align 8, !tbaa !99
  %12 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size3 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %12, i32 0, i32 16
  %13 = load i64, i64* %l_size3, align 8, !tbaa !99
  %mul4 = mul i64 %13, 4
  %14 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %14, i32 0, i32 17
  store i64 %mul4, i64* %d_size, align 8, !tbaa !100
  %15 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %15, i32 0, i32 18
  store i64 0, i64* %d_len, align 8, !tbaa !101
  %16 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y_in = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %16, i32 0, i32 15
  store i32 0, i32* %y_in, align 4, !tbaa !102
  %17 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %17, i32 0, i32 19
  %18 = load i8*, i8** %data, align 8, !tbaa !103
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %19 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %22 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !65
  %24 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %24, i32 0, i32 19
  %25 = load i8*, i8** %data7, align 8, !tbaa !103
  call void %21(%struct.gs_memory_s* %23, i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !65
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !104
  %29 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %29, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !65
  %31 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size12 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %31, i32 0, i32 17
  %32 = load i64, i64* %d_size12, align 8, !tbaa !100
  %conv13 = trunc i64 %32 to i32
  %call = call i8* %28(%struct.gs_memory_s* %30, i32 %conv13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #7
  %33 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data14 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %33, i32 0, i32 19
  store i8* %call, i8** %data14, align 8, !tbaa !103
  %34 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %34, i32 0, i32 19
  %35 = load i8*, i8** %data15, align 8, !tbaa !103
  %cmp16 = icmp eq i8* %35, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.8
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.8
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call20 = call i32 @s_Downsample_init_common(%struct.stream_state_s* %36) #7
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %37 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Bicubic_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_Bicubic_state_s*, align 8
  %widthOut = alloca i32, align 4
  %heightOut = alloca i32, align 4
  %req_y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copy = alloca i64, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Bicubic_state_s*
  store %struct.stream_Bicubic_state_s* %2, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %widthOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %4, i32 0, i32 6
  %5 = load i32, i32* %WidthIn, align 4, !tbaa !95
  %6 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %6, i32 0, i32 8
  %7 = load float, float* %XFactor, align 4, !tbaa !105
  %8 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %padX = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %8, i32 0, i32 11
  %9 = load i32, i32* %padX, align 4, !tbaa !106
  %call = call i32 @s_Downsample_size_out(i32 %5, float %7, i32 %9) #7
  store i32 %call, i32* %widthOut, align 4, !tbaa !5
  %10 = bitcast i32* %heightOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %HeightIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %11, i32 0, i32 7
  %12 = load i32, i32* %HeightIn, align 4, !tbaa !97
  %13 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %YFactor = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %13, i32 0, i32 9
  %14 = load float, float* %YFactor, align 4, !tbaa !107
  %15 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %padY = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %15, i32 0, i32 12
  %16 = load i32, i32* %padY, align 4, !tbaa !108
  %call1 = call i32 @s_Downsample_size_out(i32 %12, float %14, i32 %16) #7
  store i32 %call1, i32* %heightOut, align 4, !tbaa !5
  %17 = bitcast i32* %req_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  br label %for.cond

for.cond:                                         ; preds = %while.end.102, %if.then.72, %entry
  %18 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %18, i32 0, i32 14
  %19 = load i32, i32* %y, align 4, !tbaa !109
  %conv = sitofp i32 %19 to float
  %20 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %YFactor2 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %20, i32 0, i32 9
  %21 = load float, float* %YFactor2, align 4, !tbaa !107
  %mul = fmul float %conv, %21
  %conv3 = fpext float %mul to double
  %call4 = call double @floor(double %conv3) #10
  %sub = fsub double %call4, 1.000000e+00
  %conv5 = fptosi double %sub to i32
  store i32 %conv5, i32* %req_y, align 4, !tbaa !5
  %22 = load i32, i32* %req_y, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 0, i32* %req_y, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %23 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y7 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %23, i32 0, i32 14
  %24 = load i32, i32* %y7, align 4, !tbaa !109
  %25 = load i32, i32* %heightOut, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %24, %25
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %limit, align 8, !tbaa !16
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr, align 8, !tbaa !14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %29 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %29, i32 0, i32 18
  %30 = load i64, i64* %d_len, align 8, !tbaa !101
  %31 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %31, i32 0, i32 17
  %32 = load i64, i64* %d_size, align 8, !tbaa !100
  %cmp12 = icmp ult i64 %30, %32
  br i1 %cmp12, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.11
  %33 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %33, i32 0, i32 0
  %34 = load i8*, i8** %ptr14, align 8, !tbaa !14
  %35 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit15 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %limit15, align 8, !tbaa !16
  %cmp16 = icmp ult i8* %34, %36
  br i1 %cmp16, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %land.lhs.true
  %37 = bitcast i64* %copy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size19 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %38, i32 0, i32 17
  %39 = load i64, i64* %d_size19, align 8, !tbaa !100
  %40 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len20 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %40, i32 0, i32 18
  %41 = load i64, i64* %d_len20, align 8, !tbaa !101
  %sub21 = sub i64 %39, %41
  %42 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit22 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %42, i32 0, i32 1
  %43 = load i8*, i8** %limit22, align 8, !tbaa !16
  %44 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %44, i32 0, i32 0
  %45 = load i8*, i8** %ptr23, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp24 = icmp ult i64 %sub21, %sub.ptr.sub
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %46 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size26 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %46, i32 0, i32 17
  %47 = load i64, i64* %d_size26, align 8, !tbaa !100
  %48 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len27 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %48, i32 0, i32 18
  %49 = load i64, i64* %d_len27, align 8, !tbaa !101
  %sub28 = sub i64 %47, %49
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  %50 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit29 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %50, i32 0, i32 1
  %51 = load i8*, i8** %limit29, align 8, !tbaa !16
  %52 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %ptr30, align 8, !tbaa !14
  %sub.ptr.lhs.cast31 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast32 = ptrtoint i8* %53 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub28, %cond.true ], [ %sub.ptr.sub33, %cond.false ]
  store i64 %cond, i64* %copy, align 8, !tbaa !110
  %54 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %54, i32 0, i32 19
  %55 = load i8*, i8** %data, align 8, !tbaa !103
  %56 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len34 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %56, i32 0, i32 18
  %57 = load i64, i64* %d_len34, align 8, !tbaa !101
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %57
  %58 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %58, i32 0, i32 0
  %59 = load i8*, i8** %ptr35, align 8, !tbaa !14
  %add.ptr36 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i64, i64* %copy, align 8, !tbaa !110
  %call37 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr36, i64 %60) #8
  %61 = load i64, i64* %copy, align 8, !tbaa !110
  %62 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len38 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %62, i32 0, i32 18
  %63 = load i64, i64* %d_len38, align 8, !tbaa !101
  %add = add i64 %63, %61
  store i64 %add, i64* %d_len38, align 8, !tbaa !101
  %64 = load i64, i64* %copy, align 8, !tbaa !110
  %65 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %65, i32 0, i32 0
  %66 = load i8*, i8** %ptr39, align 8, !tbaa !14
  %add.ptr40 = getelementptr inbounds i8, i8* %66, i64 %64
  store i8* %add.ptr40, i8** %ptr39, align 8, !tbaa !14
  %67 = bitcast i64* %copy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end, %land.lhs.true, %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.41
  %68 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y_in = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %68, i32 0, i32 15
  %69 = load i32, i32* %y_in, align 4, !tbaa !102
  %70 = load i32, i32* %req_y, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %69, %70
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %71 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len44 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %71, i32 0, i32 18
  %72 = load i64, i64* %d_len44, align 8, !tbaa !101
  %73 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %73, i32 0, i32 16
  %74 = load i64, i64* %l_size, align 8, !tbaa !99
  %cmp45 = icmp uge i64 %72, %74
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %75 = phi i1 [ false, %while.cond ], [ %cmp45, %land.rhs ]
  br i1 %75, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %76 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %76, i32 0, i32 19
  %77 = load i8*, i8** %data47, align 8, !tbaa !103
  %78 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data48 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %78, i32 0, i32 19
  %79 = load i8*, i8** %data48, align 8, !tbaa !103
  %80 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size49 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %80, i32 0, i32 16
  %81 = load i64, i64* %l_size49, align 8, !tbaa !99
  %add.ptr50 = getelementptr inbounds i8, i8* %79, i64 %81
  %82 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len51 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %82, i32 0, i32 18
  %83 = load i64, i64* %d_len51, align 8, !tbaa !101
  %84 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size52 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %84, i32 0, i32 16
  %85 = load i64, i64* %l_size52, align 8, !tbaa !99
  %sub53 = sub i64 %83, %85
  %call54 = call i8* @memmove(i8* %77, i8* %add.ptr50, i64 %sub53) #8
  %86 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %l_size55 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %86, i32 0, i32 16
  %87 = load i64, i64* %l_size55, align 8, !tbaa !99
  %88 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len56 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %88, i32 0, i32 18
  %89 = load i64, i64* %d_len56, align 8, !tbaa !101
  %sub57 = sub i64 %89, %87
  store i64 %sub57, i64* %d_len56, align 8, !tbaa !101
  %90 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y_in58 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %90, i32 0, i32 15
  %91 = load i32, i32* %y_in58, align 4, !tbaa !102
  %add59 = add nsw i32 %91, 1
  store i32 %add59, i32* %y_in58, align 4, !tbaa !102
  br label %while.cond

while.end:                                        ; preds = %land.end
  %92 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_len60 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %92, i32 0, i32 18
  %93 = load i64, i64* %d_len60, align 8, !tbaa !101
  %94 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %d_size61 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %94, i32 0, i32 17
  %95 = load i64, i64* %d_size61, align 8, !tbaa !100
  %cmp62 = icmp ult i64 %93, %95
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %96 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y_in64 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %96, i32 0, i32 15
  %97 = load i32, i32* %y_in64, align 4, !tbaa !102
  %98 = load i32, i32* %req_y, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %97, %98
  br i1 %cmp65, label %if.then.67, label %if.end.81

if.then.67:                                       ; preds = %lor.lhs.false, %while.end
  %99 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr68 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %99, i32 0, i32 0
  %100 = load i8*, i8** %ptr68, align 8, !tbaa !14
  %101 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit69 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %limit69, align 8, !tbaa !16
  %cmp70 = icmp ult i8* %100, %102
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.67
  br label %for.cond

if.end.73:                                        ; preds = %if.then.67
  %103 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %103, 0
  br i1 %tobool, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.end.73
  %104 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y_in76 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %104, i32 0, i32 15
  %105 = load i32, i32* %y_in76, align 4, !tbaa !102
  %106 = load i32, i32* %req_y, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %105, %106
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %if.end.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false
  br label %while.cond.82

while.cond.82:                                    ; preds = %if.end.92, %if.end.81
  %107 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %107, i32 0, i32 13
  %108 = load i32, i32* %x, align 4, !tbaa !111
  %109 = load i32, i32* %widthOut, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %108, %109
  br i1 %cmp83, label %while.body.85, label %while.end.102

while.body.85:                                    ; preds = %while.cond.82
  %110 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr86 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %110, i32 0, i32 1
  %111 = load i8*, i8** %ptr86, align 8, !tbaa !17
  %112 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %112, i32 0, i32 5
  %113 = load i32, i32* %Colors, align 4, !tbaa !98
  %idx.ext = sext i32 %113 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %111, i64 %idx.ext
  %114 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %114, i32 0, i32 2
  %115 = load i8*, i8** %limit88, align 8, !tbaa !19
  %cmp89 = icmp ugt i8* %add.ptr87, %115
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %while.body.85
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %while.body.85
  %116 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %117 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %x93 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %117, i32 0, i32 13
  %118 = load i32, i32* %x93, align 4, !tbaa !111
  %119 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y94 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %119, i32 0, i32 14
  %120 = load i32, i32* %y94, align 4, !tbaa !109
  %121 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr95 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %121, i32 0, i32 1
  %122 = load i8*, i8** %ptr95, align 8, !tbaa !17
  %add.ptr96 = getelementptr inbounds i8, i8* %122, i64 1
  call void @s_Bicubic_interpolate_pixel(%struct.stream_Bicubic_state_s* %116, i32 %118, i32 %120, i8* %add.ptr96) #7
  %123 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %x97 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %123, i32 0, i32 13
  %124 = load i32, i32* %x97, align 4, !tbaa !111
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %x97, align 4, !tbaa !111
  %125 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %Colors98 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %125, i32 0, i32 5
  %126 = load i32, i32* %Colors98, align 4, !tbaa !98
  %127 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr99 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %127, i32 0, i32 1
  %128 = load i8*, i8** %ptr99, align 8, !tbaa !17
  %idx.ext100 = sext i32 %126 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %128, i64 %idx.ext100
  store i8* %add.ptr101, i8** %ptr99, align 8, !tbaa !17
  br label %while.cond.82

while.end.102:                                    ; preds = %while.cond.82
  %129 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %x103 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %129, i32 0, i32 13
  store i32 0, i32* %x103, align 4, !tbaa !111
  %130 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %y104 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %130, i32 0, i32 14
  %131 = load i32, i32* %y104, align 4, !tbaa !109
  %add105 = add nsw i32 %131, 1
  store i32 %add105, i32* %y104, align 4, !tbaa !109
  br label %for.cond

cleanup:                                          ; preds = %if.then.91, %if.then.79, %if.then.74, %if.then.10
  %132 = bitcast i32* %req_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %heightOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %widthOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal void @s_Bicubic_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Bicubic_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Bicubic_state_s*
  store %struct.stream_Bicubic_state_s* %2, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !65
  %8 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %8, i32 0, i32 19
  %9 = load i8*, i8** %data, align 8, !tbaa !103
  call void %5(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #7
  %10 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_Bicubic_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Bicubic_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Bicubic_state_s*
  store %struct.stream_Bicubic_state_s* %2, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_Downsample_set_defaults(%struct.stream_state_s* %3) #7
  %4 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %4, i32 0, i32 19
  store i8* null, i8** %data, align 8, !tbaa !103
  %5 = bitcast %struct.stream_Bicubic_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_compr_chooser_set_dimensions(%struct.stream_compr_chooser_state_s* %ss, i32 %width, i32 %height, i32 %depth, i32 %bits_per_sample) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_compr_chooser_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  store %struct.stream_compr_chooser_state_s* %ss, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %0 = load i32, i32* %width.addr, align 4, !tbaa !5
  %1 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %1, i32 0, i32 6
  store i32 %0, i32* %width1, align 4, !tbaa !112
  %2 = load i32, i32* %height.addr, align 4, !tbaa !5
  %3 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %3, i32 0, i32 7
  store i32 %2, i32* %height2, align 4, !tbaa !114
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %5 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth3 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %5, i32 0, i32 8
  store i32 %4, i32* %depth3, align 4, !tbaa !115
  %6 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %7 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample4 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %7, i32 0, i32 9
  store i32 %6, i32* %bits_per_sample4, align 4, !tbaa !116
  %8 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !117
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !104
  %11 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !117
  %13 = load i32, i32* %width.addr, align 4, !tbaa !5
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %call = call i8* %10(%struct.gs_memory_s* %12, i32 %mul, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #7
  %15 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %15, i32 0, i32 13
  store i8* %call, i8** %sample, align 8, !tbaa !118
  %16 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %sample6 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %16, i32 0, i32 13
  %17 = load i8*, i8** %sample6, align 8, !tbaa !118
  %cmp = icmp eq i8* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @s_compr_chooser_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_compr_chooser_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_compr_chooser_state_s*
  store %struct.stream_compr_chooser_state_s* %2, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %choice = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %3, i32 0, i32 5
  store i32 0, i32* %choice, align 4, !tbaa !119
  %4 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %4, i32 0, i32 9
  store i32 0, i32* %bits_per_sample, align 4, !tbaa !116
  %5 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %5, i32 0, i32 8
  store i32 0, i32* %depth, align 4, !tbaa !115
  %6 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %6, i32 0, i32 7
  store i32 0, i32* %height, align 4, !tbaa !114
  %7 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %7, i32 0, i32 6
  store i32 0, i32* %width, align 4, !tbaa !112
  %8 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %8, i32 0, i32 13
  store i8* null, i8** %sample, align 8, !tbaa !118
  %9 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %samples_count = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %9, i32 0, i32 10
  store i32 0, i32* %samples_count, align 4, !tbaa !120
  %10 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %10, i32 0, i32 11
  store i32 0, i32* %bits_left, align 4, !tbaa !121
  %11 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %packed_data = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %11, i32 0, i32 12
  store i64 0, i64* %packed_data, align 8, !tbaa !122
  %12 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %upper_plateaus = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %12, i32 0, i32 14
  store i64 0, i64* %upper_plateaus, align 8, !tbaa !123
  %13 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %lower_plateaus = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %13, i32 0, i32 15
  store i64 0, i64* %lower_plateaus, align 8, !tbaa !124
  %14 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %gradients = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %14, i32 0, i32 16
  store i64 0, i64* %gradients, align 8, !tbaa !125
  %15 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_compr_chooser_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_compr_chooser_state_s*, align 8
  %l = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_compr_chooser_state_s*
  store %struct.stream_compr_chooser_state_s* %2, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !16
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %l, align 4, !tbaa !5
  %8 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %8, i32 0, i32 6
  %9 = load i32, i32* %width, align 4, !tbaa !112
  %cmp = icmp uge i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %11 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %ptr2, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i32, i32* %l, align 4, !tbaa !5
  call void @s_compr_chooser__unpack_and_recognize(%struct.stream_compr_chooser_state_s* %10, i8* %add.ptr, i32 %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %l, align 4, !tbaa !5
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr3, align 8, !tbaa !14
  %idx.ext = sext i32 %14 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr4, i8** %ptr3, align 8, !tbaa !14
  %17 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @s_compr_chooser_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_compr_chooser_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_compr_chooser_state_s*
  store %struct.stream_compr_chooser_state_s* %2, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !117
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %6 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !117
  %8 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss, align 8, !tbaa !1
  %sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %8, i32 0, i32 13
  %9 = load i8*, i8** %sample, align 8, !tbaa !118
  call void %5(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #7
  %10 = bitcast %struct.stream_compr_chooser_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_compr_chooser__get_choice(%struct.stream_compr_chooser_state_s* %ss, i32 %force) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_compr_chooser_state_s*, align 8
  %force.addr = alloca i32, align 4
  %plateaus = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_compr_chooser_state_s* %ss, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %force, i32* %force.addr, align 4, !tbaa !5
  %0 = bitcast i64* %plateaus to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %lower_plateaus = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %1, i32 0, i32 15
  %2 = load i64, i64* %lower_plateaus, align 8, !tbaa !124
  %3 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %upper_plateaus = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %3, i32 0, i32 14
  %4 = load i64, i64* %upper_plateaus, align 8, !tbaa !123
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %lower_plateaus1 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %5, i32 0, i32 15
  %6 = load i64, i64* %lower_plateaus1, align 8, !tbaa !124
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %upper_plateaus2 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %7, i32 0, i32 14
  %8 = load i64, i64* %upper_plateaus2, align 8, !tbaa !123
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %8, %cond.false ]
  store i64 %cond, i64* %plateaus, align 8, !tbaa !110
  %9 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %choice = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %9, i32 0, i32 5
  %10 = load i32, i32* %choice, align 4, !tbaa !119
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %choice3 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %11, i32 0, i32 5
  %12 = load i32, i32* %choice3, align 4, !tbaa !119
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %force.addr, align 4, !tbaa !5
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %14, i32 0, i32 16
  %15 = load i64, i64* %gradients, align 8, !tbaa !125
  %16 = load i64, i64* %plateaus, align 8, !tbaa !110
  %div = udiv i64 %16, 12
  %cmp6 = icmp ugt i64 %15, %div
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.5
  %17 = load i64, i64* %plateaus, align 8, !tbaa !110
  %div8 = udiv i64 %17, 5000
  %18 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients9 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %18, i32 0, i32 16
  %19 = load i64, i64* %gradients9, align 8, !tbaa !125
  %cmp10 = icmp uge i64 %div8, %19
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.11, %if.then.7, %if.then
  %20 = bitcast i64* %plateaus to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @s_image_colors_set_mask_colors(%struct.stream_image_colors_state_s* %ss, i32* %MaskColor) #0 {
entry:
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %MaskColor.addr = alloca i32*, align 8
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  store i32* %MaskColor, i32** %MaskColor.addr, align 8, !tbaa !1
  %0 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %convert_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %0, i32 0, i32 30
  store i32 (%struct.stream_image_colors_state_s*)* @s_image_colors_convert_color_to_mask, i32 (%struct.stream_image_colors_state_s*)** %convert_color, align 8, !tbaa !126
  %1 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %MaskColor1 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %1, i32 0, i32 25
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %MaskColor1, i32 0, i32 0
  %2 = bitcast i32* %arraydecay to i8*
  %3 = load i32*, i32** %MaskColor.addr, align 8, !tbaa !1
  %4 = bitcast i32* %3 to i8*
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 7
  %6 = load i32, i32* %depth, align 4, !tbaa !128
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %mul2 = mul i64 %mul, 2
  %call = call i8* @memcpy(i8* %2, i8* %4, i64 %mul2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_image_colors_convert_color_to_mask(%struct.stream_image_colors_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ii, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %3, i32 0, i32 7
  %4 = load i32, i32* %depth, align 4, !tbaa !128
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %input_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %6, i32 0, i32 23
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %input_color, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %8 = load i32, i32* %ii, align 4, !tbaa !5
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %MaskColor = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %9, i32 0, i32 25
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* %MaskColor, i32 0, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %7, %10
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %input_color5 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %12, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %input_color5, i32 0, i64 %idxprom4
  %13 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %14 = load i32, i32* %ii, align 4, !tbaa !5
  %add = add nsw i32 %14, 1
  %idxprom7 = sext i32 %add to i64
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %MaskColor8 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 25
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* %MaskColor8, i32 0, i64 %idxprom7
  %16 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp ugt i32 %13, %16
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %ii, align 4, !tbaa !5
  %add11 = add nsw i32 %18, 2
  store i32 %add11, i32* %ii, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth12 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %20, i32 0, i32 7
  %21 = load i32, i32* %depth12, align 4, !tbaa !128
  %cmp13 = icmp ult i32 %19, %21
  %cond = select i1 %cmp13, i32 1, i32 0
  %22 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %22, i32 0, i32 24
  %arrayidx14 = getelementptr inbounds [64 x i32], [64 x i32]* %output_color, i32 0, i64 0
  store i32 %cond, i32* %arrayidx14, align 4, !tbaa !5
  %23 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @s_image_colors_set_dimensions(%struct.stream_image_colors_state_s* %ss, i32 %width, i32 %height, i32 %depth, i32 %bits_per_sample) #0 {
entry:
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %0 = load i32, i32* %width.addr, align 4, !tbaa !5
  %1 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %1, i32 0, i32 5
  store i32 %0, i32* %width1, align 4, !tbaa !129
  %2 = load i32, i32* %height.addr, align 4, !tbaa !5
  %3 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %3, i32 0, i32 6
  store i32 %2, i32* %height2, align 4, !tbaa !130
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth3 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 7
  store i32 %4, i32* %depth3, align 4, !tbaa !128
  %6 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %7 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample4 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %7, i32 0, i32 8
  store i32 %6, i32* %bits_per_sample4, align 4, !tbaa !131
  %8 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %9 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul5 = mul nsw i32 %mul, %10
  %11 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %row_bits = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %11, i32 0, i32 16
  store i32 %mul5, i32* %row_bits, align 4, !tbaa !132
  %12 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %row_bits6 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %12, i32 0, i32 16
  %13 = load i32, i32* %row_bits6, align 4, !tbaa !132
  %add = add i32 %13, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  %14 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %14, i32 0, i32 15
  store i32 %shl, i32* %raster, align 4, !tbaa !133
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %row_alignment_bytes = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 18
  store i32 0, i32* %row_alignment_bytes, align 4, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define void @s_image_colors_set_color_space(%struct.stream_image_colors_state_s* %ss, %struct.gx_device_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis, float* %Decode) #0 {
entry:
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %Decode.addr = alloca float*, align 8
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store float* %Decode, float** %Decode.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %1 = load i32, i32* %num_components, align 4, !tbaa !135
  %2 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %2, i32 0, i32 13
  store i32 %1, i32* %output_depth, align 4, !tbaa !146
  %3 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_depth1 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %3, i32 0, i32 13
  %4 = load i32, i32* %output_depth1, align 4, !tbaa !146
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 12
  store i32 %4, i32* %output_component_index, align 4, !tbaa !147
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 12
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %8 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %8, i32 0, i32 14
  store i32 %conv, i32* %output_bits_per_sample, align 4, !tbaa !148
  %9 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %convert_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %9, i32 0, i32 30
  store i32 (%struct.stream_image_colors_state_s*)* @s_image_colors_convert_to_device_color, i32 (%struct.stream_image_colors_state_s*)** %convert_color, align 8, !tbaa !126
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pdev3 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %11, i32 0, i32 28
  store %struct.gx_device_s* %10, %struct.gx_device_s** %pdev3, align 8, !tbaa !149
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %13 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pcs4 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %13, i32 0, i32 27
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %pcs4, align 8, !tbaa !150
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 29
  store %struct.gs_imager_state_s* %14, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !151
  %16 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %Decode6 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %16, i32 0, i32 26
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Decode6, i32 0, i32 0
  %17 = bitcast float* %arraydecay to i8*
  %18 = load float*, float** %Decode.addr, align 8, !tbaa !1
  %19 = bitcast float* %18 to i8*
  %20 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %20, i32 0, i32 7
  %21 = load i32, i32* %depth, align 4, !tbaa !128
  %conv7 = zext i32 %21 to i64
  %mul = mul i64 %conv7, 4
  %mul8 = mul i64 %mul, 2
  %call = call i8* @memcpy(i8* %17, i8* %19, i64 %mul8) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_image_colors_convert_to_device_color(%struct.stream_image_colors_state_s* %ss) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %dc = alloca %struct.gx_device_color_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %v0 = alloca double, align 8
  %v1 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %m = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #1
  %1 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 8
  %6 = load i32, i32* %bits_per_sample, align 4, !tbaa !131
  %shl = shl i32 1, %6
  %sub = sub nsw i32 %shl, 1
  %conv = sitofp i32 %sub to double
  store double %conv, double* %v0, align 8, !tbaa !152
  %7 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %8, i32 0, i32 14
  %9 = load i32, i32* %output_bits_per_sample, align 4, !tbaa !148
  %shl1 = shl i32 1, %9
  %sub2 = sub nsw i32 %shl1, 1
  %conv3 = sitofp i32 %sub2 to double
  store double %conv3, double* %v1, align 8, !tbaa !152
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %11, i32 0, i32 7
  %12 = load i32, i32* %depth, align 4, !tbaa !128
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %input_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %14, i32 0, i32 23
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %input_color, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv5 = uitofp i32 %15 to float
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %16, 2
  %add = add nsw i32 %mul, 1
  %idxprom6 = sext i32 %add to i64
  %17 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %17, i32 0, i32 26
  %arrayidx7 = getelementptr inbounds [128 x float], [128 x float]* %Decode, i32 0, i64 %idxprom6
  %18 = load float, float* %arrayidx7, align 4, !tbaa !58
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %mul8 = mul nsw i32 %19, 2
  %idxprom9 = sext i32 %mul8 to i64
  %20 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %Decode10 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %20, i32 0, i32 26
  %arrayidx11 = getelementptr inbounds [128 x float], [128 x float]* %Decode10, i32 0, i64 %idxprom9
  %21 = load float, float* %arrayidx11, align 4, !tbaa !58
  %sub12 = fsub float %18, %21
  %mul13 = fmul float %conv5, %sub12
  %conv14 = fpext float %mul13 to double
  %22 = load double, double* %v0, align 8, !tbaa !152
  %div = fdiv double %conv14, %22
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %mul15 = mul nsw i32 %23, 2
  %idxprom16 = sext i32 %mul15 to i64
  %24 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %Decode17 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %24, i32 0, i32 26
  %arrayidx18 = getelementptr inbounds [128 x float], [128 x float]* %Decode17, i32 0, i64 %idxprom16
  %25 = load float, float* %arrayidx18, align 4, !tbaa !58
  %conv19 = fpext float %25 to double
  %add20 = fadd double %div, %conv19
  %conv21 = fptrunc double %add20 to float
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom22
  store float %conv21, float* %arrayidx23, align 4, !tbaa !58
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %28, i32 0, i32 27
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !150
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 0
  %30 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !153
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %30, i32 0, i32 10
  %31 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !155
  %32 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pcs24 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %32, i32 0, i32 27
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs24, align 8, !tbaa !150
  %34 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %34, i32 0, i32 29
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !151
  %36 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %36, i32 0, i32 28
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !149
  %call = call i32 %31(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %33, %struct.gx_device_color_s* %dc, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %37, i32 0) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %38, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.52, %if.end
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %41, i32 0, i32 13
  %42 = load i32, i32* %output_depth, align 4, !tbaa !146
  %cmp28 = icmp ult i32 %40, %42
  br i1 %cmp28, label %for.body.30, label %for.end.54

for.body.30:                                      ; preds = %for.cond.27
  %43 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %44 to i64
  %45 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pdev32 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %45, i32 0, i32 28
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev32, align 8, !tbaa !149
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 12
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom31
  %47 = load i8, i8* %arrayidx33, align 1, !tbaa !20
  %conv34 = zext i8 %47 to i32
  %shl35 = shl i32 1, %conv34
  %sub36 = sub nsw i32 %shl35, 1
  store i32 %sub36, i32* %m, align 4, !tbaa !5
  %48 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %49 = load i64, i64* %pure, align 8, !tbaa !110
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pdev38 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %51, i32 0, i32 28
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev38, align 8, !tbaa !149
  %color_info39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 11
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info39, i32 0, i32 11
  %arrayidx40 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom37
  %53 = load i8, i8* %arrayidx40, align 1, !tbaa !20
  %conv41 = zext i8 %53 to i32
  %sh_prom = zext i32 %conv41 to i64
  %shr = lshr i64 %49, %sh_prom
  %54 = load i32, i32* %m, align 4, !tbaa !5
  %conv42 = zext i32 %54 to i64
  %and = and i64 %shr, %conv42
  %conv43 = trunc i64 %and to i32
  store i32 %conv43, i32* %w, align 4, !tbaa !5
  %55 = load double, double* %v1, align 8, !tbaa !152
  %56 = load i32, i32* %w, align 4, !tbaa !5
  %conv44 = uitofp i32 %56 to double
  %mul45 = fmul double %55, %conv44
  %57 = load i32, i32* %m, align 4, !tbaa !5
  %conv46 = uitofp i32 %57 to double
  %div47 = fdiv double %mul45, %conv46
  %add48 = fadd double %div47, 5.000000e-01
  %conv49 = fptoui double %add48 to i32
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %58 to i64
  %59 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %59, i32 0, i32 24
  %arrayidx51 = getelementptr inbounds [64 x i32], [64 x i32]* %output_color, i32 0, i64 %idxprom50
  store i32 %conv49, i32* %arrayidx51, align 4, !tbaa !5
  %60 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.30
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %inc53 = add nsw i32 %62, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !5
  br label %for.cond.27

for.end.54:                                       ; preds = %for.cond.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.54, %if.then
  %63 = bitcast double* %v1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gx_device_color_s* %dc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %67) #1
  %68 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define void @s_new_image_colors_set_color_space(%struct.stream_image_colors_state_s* %ss, %struct.gx_device_s* %pdev, %struct.gs_color_space_s* %pcs, %struct.gs_imager_state_s* %pis, float* %Decode) #0 {
entry:
  %ss.addr = alloca %struct.stream_image_colors_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %Decode.addr = alloca float*, align 8
  store %struct.stream_image_colors_state_s* %ss, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store float* %Decode, float** %Decode.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %1 = load i32, i32* %num_components, align 4, !tbaa !135
  %2 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %2, i32 0, i32 13
  store i32 %1, i32* %output_depth, align 4, !tbaa !146
  %3 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_depth1 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %3, i32 0, i32 13
  %4 = load i32, i32* %output_depth1, align 4, !tbaa !146
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 12
  store i32 %4, i32* %output_component_index, align 4, !tbaa !147
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 12
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %7 to i32
  %8 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %output_bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %8, i32 0, i32 14
  store i32 %conv, i32* %output_bits_per_sample, align 4, !tbaa !148
  %9 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %convert_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %9, i32 0, i32 30
  store i32 (%struct.stream_image_colors_state_s*)* @s_image_colors_convert_to_device_color, i32 (%struct.stream_image_colors_state_s*)** %convert_color, align 8, !tbaa !126
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pdev3 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %11, i32 0, i32 28
  store %struct.gx_device_s* %10, %struct.gx_device_s** %pdev3, align 8, !tbaa !149
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %13 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pcs4 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %13, i32 0, i32 27
  store %struct.gs_color_space_s* %12, %struct.gs_color_space_s** %pcs4, align 8, !tbaa !150
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 29
  store %struct.gs_imager_state_s* %14, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !151
  %16 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %Decode6 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %16, i32 0, i32 26
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Decode6, i32 0, i32 0
  %17 = bitcast float* %arraydecay to i8*
  %18 = load float*, float** %Decode.addr, align 8, !tbaa !1
  %19 = bitcast float* %18 to i8*
  %20 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %20, i32 0, i32 7
  %21 = load i32, i32* %depth, align 4, !tbaa !128
  %conv7 = zext i32 %21 to i64
  %mul = mul i64 %conv7, 4
  %mul8 = mul i64 %mul, 2
  %call = call i8* @memcpy(i8* %17, i8* %19, i64 %mul8) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_image_colors_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_image_colors_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_image_colors_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_image_colors_state_s*
  store %struct.stream_image_colors_state_s* %2, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %3, i32 0, i32 8
  store i32 0, i32* %bits_per_sample, align 4, !tbaa !131
  %4 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %4, i32 0, i32 7
  store i32 0, i32* %depth, align 4, !tbaa !128
  %5 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %5, i32 0, i32 6
  store i32 0, i32* %height, align 4, !tbaa !130
  %6 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %6, i32 0, i32 5
  store i32 0, i32* %width, align 4, !tbaa !129
  %7 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %7, i32 0, i32 9
  store i8 0, i8* %output_bits_buffer, align 1, !tbaa !157
  %8 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %8, i32 0, i32 10
  store i32 0, i32* %output_bits_buffered, align 4, !tbaa !158
  %9 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %9, i32 0, i32 13
  store i32 1, i32* %output_depth, align 4, !tbaa !146
  %10 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_depth1 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %10, i32 0, i32 13
  %11 = load i32, i32* %output_depth1, align 4, !tbaa !146
  %12 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %12, i32 0, i32 12
  store i32 %11, i32* %output_component_index, align 4, !tbaa !147
  %13 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %13, i32 0, i32 14
  store i32 1, i32* %output_bits_per_sample, align 4, !tbaa !148
  %14 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_bits_written = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %14, i32 0, i32 11
  store i32 0, i32* %output_component_bits_written, align 4, !tbaa !159
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 15
  store i32 0, i32* %raster, align 4, !tbaa !133
  %16 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %16, i32 0, i32 16
  store i32 0, i32* %row_bits, align 4, !tbaa !132
  %17 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits_passed = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %17, i32 0, i32 17
  store i32 0, i32* %row_bits_passed, align 4, !tbaa !160
  %18 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %18, i32 0, i32 18
  store i32 0, i32* %row_alignment_bytes, align 4, !tbaa !134
  %19 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %19, i32 0, i32 19
  store i32 0, i32* %row_alignment_bytes_left, align 4, !tbaa !161
  %20 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %20, i32 0, i32 20
  store i32 0, i32* %input_component_index, align 4, !tbaa !162
  %21 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %21, i32 0, i32 21
  store i32 0, i32* %input_bits_buffer, align 4, !tbaa !163
  %22 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %22, i32 0, i32 22
  store i32 0, i32* %input_bits_buffered, align 4, !tbaa !164
  %23 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %convert_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %23, i32 0, i32 30
  store i32 (%struct.stream_image_colors_state_s*)* null, i32 (%struct.stream_image_colors_state_s*)** %convert_color, align 8, !tbaa !126
  %24 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %24, i32 0, i32 27
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !150
  %25 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %pdev = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %25, i32 0, i32 28
  store %struct.gx_device_s* null, %struct.gx_device_s** %pdev, align 8, !tbaa !149
  %26 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %26, i32 0, i32 29
  store %struct.gs_imager_state_s* null, %struct.gs_imager_state_s** %pis, align 8, !tbaa !151
  %27 = bitcast %struct.stream_image_colors_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_image_colors_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_image_colors_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %k = alloca i32, align 4
  %fitting = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %u = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %w120 = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_image_colors_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_image_colors_state_s*
  store %struct.stream_image_colors_state_s* %2, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.152, %for.end, %if.end.7, %entry
  %3 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %limit, align 8, !tbaa !19
  %cmp = icmp uge i8* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end:                                           ; preds = %for.cond
  %7 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits_passed = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %7, i32 0, i32 17
  %8 = load i32, i32* %row_bits_passed, align 4, !tbaa !160
  %9 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %9, i32 0, i32 16
  %10 = load i32, i32* %row_bits, align 4, !tbaa !132
  %cmp1 = icmp uge i32 %8, %10
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %11, i32 0, i32 18
  %12 = load i32, i32* %row_alignment_bytes, align 4, !tbaa !134
  %13 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %13, i32 0, i32 19
  store i32 %12, i32* %row_alignment_bytes_left, align 4, !tbaa !161
  %14 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %14, i32 0, i32 22
  store i32 0, i32* %input_bits_buffered, align 4, !tbaa !164
  %15 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %15, i32 0, i32 21
  store i32 0, i32* %input_bits_buffer, align 4, !tbaa !163
  %16 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %16, i32 0, i32 10
  %17 = load i32, i32* %output_bits_buffered, align 4, !tbaa !158
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.then.2
  %18 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %18, i32 0, i32 9
  %19 = load i8, i8* %output_bits_buffer, align 1, !tbaa !157
  %20 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %ptr4, align 8, !tbaa !17
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr4, align 8, !tbaa !17
  store i8 %19, i8* %incdec.ptr, align 1, !tbaa !20
  %22 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered5 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %22, i32 0, i32 10
  store i32 0, i32* %output_bits_buffered5, align 4, !tbaa !158
  %23 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer6 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %23, i32 0, i32 9
  store i8 0, i8* %output_bits_buffer6, align 1, !tbaa !157
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.then.2
  %24 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits_passed8 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %24, i32 0, i32 17
  store i32 0, i32* %row_bits_passed8, align 4, !tbaa !160
  br label %for.cond

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left10 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %25, i32 0, i32 19
  %26 = load i32, i32* %row_alignment_bytes_left10, align 4, !tbaa !161
  %tobool11 = icmp ne i32 %26, 0
  br i1 %tobool11, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %if.end.9
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit13 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %limit13, align 8, !tbaa !16
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr14, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %k, align 4, !tbaa !5
  %32 = load i32, i32* %k, align 4, !tbaa !5
  %33 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left15 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %33, i32 0, i32 19
  %34 = load i32, i32* %row_alignment_bytes_left15, align 4, !tbaa !161
  %cmp16 = icmp ugt i32 %32, %34
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.12
  %35 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left19 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %35, i32 0, i32 19
  %36 = load i32, i32* %row_alignment_bytes_left19, align 4, !tbaa !161
  store i32 %36, i32* %k, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.12
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %38 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr21 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %38, i32 0, i32 0
  %39 = load i8*, i8** %ptr21, align 8, !tbaa !14
  %idx.ext = zext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr21, align 8, !tbaa !14
  %40 = load i32, i32* %k, align 4, !tbaa !5
  %41 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_alignment_bytes_left22 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %41, i32 0, i32 19
  %42 = load i32, i32* %row_alignment_bytes_left22, align 4, !tbaa !161
  %sub = sub i32 %42, %40
  store i32 %sub, i32* %row_alignment_bytes_left22, align 4, !tbaa !161
  %43 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %43, i32 0, i32 0
  %44 = load i8*, i8** %ptr23, align 8, !tbaa !14
  %45 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %45, i32 0, i32 1
  %46 = load i8*, i8** %limit24, align 8, !tbaa !16
  %cmp25 = icmp uge i8* %44, %46
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.153 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.9
  %48 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %48, i32 0, i32 12
  %49 = load i32, i32* %output_component_index, align 4, !tbaa !147
  %50 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %50, i32 0, i32 13
  %51 = load i32, i32* %output_depth, align 4, !tbaa !146
  %cmp30 = icmp ult i32 %49, %51
  br i1 %cmp30, label %if.then.32, label %if.end.93

if.then.32:                                       ; preds = %if.end.29
  br label %for.cond.33

for.cond.33:                                      ; preds = %cleanup.cont.90, %if.then.32
  %52 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index34 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %52, i32 0, i32 12
  %53 = load i32, i32* %output_component_index34, align 4, !tbaa !147
  %54 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_depth35 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %54, i32 0, i32 13
  %55 = load i32, i32* %output_depth35, align 4, !tbaa !146
  %cmp36 = icmp ult i32 %53, %55
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.33
  %56 = bitcast i32* %fitting to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered38 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %57, i32 0, i32 10
  %58 = load i32, i32* %output_bits_buffered38, align 4, !tbaa !158
  %sub39 = sub i32 8, %58
  store i32 %sub39, i32* %fitting, align 4, !tbaa !5
  %59 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr40 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %ptr40, align 8, !tbaa !17
  %66 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %66, i32 0, i32 2
  %67 = load i8*, i8** %limit41, align 8, !tbaa !19
  %cmp42 = icmp uge i8* %65, %67
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.45:                                        ; preds = %for.body
  %68 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index46 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %68, i32 0, i32 12
  %69 = load i32, i32* %output_component_index46, align 4, !tbaa !147
  %idxprom = zext i32 %69 to i64
  %70 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %70, i32 0, i32 24
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %output_color, i32 0, i64 %idxprom
  %71 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %71, i32* %v, align 4, !tbaa !5
  %72 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %72, i32 0, i32 14
  %73 = load i32, i32* %output_bits_per_sample, align 4, !tbaa !148
  %74 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_bits_written = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %74, i32 0, i32 11
  %75 = load i32, i32* %output_component_bits_written, align 4, !tbaa !159
  %sub47 = sub i32 %73, %75
  store i32 %sub47, i32* %n, align 4, !tbaa !5
  %76 = load i32, i32* %v, align 4, !tbaa !5
  %77 = load i32, i32* %v, align 4, !tbaa !5
  %78 = load i32, i32* %n, align 4, !tbaa !5
  %shr = lshr i32 %77, %78
  %79 = load i32, i32* %n, align 4, !tbaa !5
  %shl = shl i32 %shr, %79
  %sub48 = sub i32 %76, %shl
  store i32 %sub48, i32* %w, align 4, !tbaa !5
  %80 = load i32, i32* %fitting, align 4, !tbaa !5
  %81 = load i32, i32* %n, align 4, !tbaa !5
  %cmp49 = icmp ugt i32 %80, %81
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.45
  %82 = load i32, i32* %n, align 4, !tbaa !5
  store i32 %82, i32* %fitting, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.45
  %83 = load i32, i32* %n, align 4, !tbaa !5
  %84 = load i32, i32* %fitting, align 4, !tbaa !5
  %sub53 = sub i32 %83, %84
  store i32 %sub53, i32* %m, align 4, !tbaa !5
  %85 = load i32, i32* %w, align 4, !tbaa !5
  %86 = load i32, i32* %m, align 4, !tbaa !5
  %shr54 = lshr i32 %85, %86
  store i32 %shr54, i32* %u, align 4, !tbaa !5
  %87 = load i32, i32* %u, align 4, !tbaa !5
  %88 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered55 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %88, i32 0, i32 10
  %89 = load i32, i32* %output_bits_buffered55, align 4, !tbaa !158
  %sub56 = sub i32 8, %89
  %90 = load i32, i32* %fitting, align 4, !tbaa !5
  %sub57 = sub i32 %sub56, %90
  %shl58 = shl i32 %87, %sub57
  %91 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer59 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %91, i32 0, i32 9
  %92 = load i8, i8* %output_bits_buffer59, align 1, !tbaa !157
  %conv60 = zext i8 %92 to i32
  %or = or i32 %conv60, %shl58
  %conv61 = trunc i32 %or to i8
  store i8 %conv61, i8* %output_bits_buffer59, align 1, !tbaa !157
  %93 = load i32, i32* %fitting, align 4, !tbaa !5
  %94 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered62 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %94, i32 0, i32 10
  %95 = load i32, i32* %output_bits_buffered62, align 4, !tbaa !158
  %add = add i32 %95, %93
  store i32 %add, i32* %output_bits_buffered62, align 4, !tbaa !158
  %96 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered63 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %96, i32 0, i32 10
  %97 = load i32, i32* %output_bits_buffered63, align 4, !tbaa !158
  %cmp64 = icmp uge i32 %97, 8
  br i1 %cmp64, label %if.then.66, label %if.end.72

if.then.66:                                       ; preds = %if.end.52
  %98 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer67 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %98, i32 0, i32 9
  %99 = load i8, i8* %output_bits_buffer67, align 1, !tbaa !157
  %100 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr68 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %100, i32 0, i32 1
  %101 = load i8*, i8** %ptr68, align 8, !tbaa !17
  %incdec.ptr69 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr69, i8** %ptr68, align 8, !tbaa !17
  store i8 %99, i8* %incdec.ptr69, align 1, !tbaa !20
  %102 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffered70 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %102, i32 0, i32 10
  store i32 0, i32* %output_bits_buffered70, align 4, !tbaa !158
  %103 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_buffer71 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %103, i32 0, i32 9
  store i8 0, i8* %output_bits_buffer71, align 1, !tbaa !157
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.66, %if.end.52
  %104 = load i32, i32* %fitting, align 4, !tbaa !5
  %105 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_bits_written73 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %105, i32 0, i32 11
  %106 = load i32, i32* %output_component_bits_written73, align 4, !tbaa !159
  %add74 = add i32 %106, %104
  store i32 %add74, i32* %output_component_bits_written73, align 4, !tbaa !159
  %107 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_bits_written75 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %107, i32 0, i32 11
  %108 = load i32, i32* %output_component_bits_written75, align 4, !tbaa !159
  %109 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_bits_per_sample76 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %109, i32 0, i32 14
  %110 = load i32, i32* %output_bits_per_sample76, align 4, !tbaa !148
  %cmp77 = icmp uge i32 %108, %110
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.72
  %111 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index80 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %111, i32 0, i32 12
  %112 = load i32, i32* %output_component_index80, align 4, !tbaa !147
  %inc = add i32 %112, 1
  store i32 %inc, i32* %output_component_index80, align 4, !tbaa !147
  %113 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_bits_written81 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %113, i32 0, i32 11
  store i32 0, i32* %output_component_bits_written81, align 4, !tbaa !159
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.72
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.82, %if.then.44
  %114 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %fitting to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %cleanup.dest.89 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.89, label %cleanup.153 [
    i32 0, label %cleanup.cont.90
  ]

cleanup.cont.90:                                  ; preds = %cleanup.83
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %120 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %120, i32 0, i32 8
  %121 = load i32, i32* %bits_per_sample, align 4, !tbaa !131
  %122 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %122, i32 0, i32 7
  %123 = load i32, i32* %depth, align 4, !tbaa !128
  %mul = mul i32 %121, %123
  %124 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %row_bits_passed91 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %124, i32 0, i32 17
  %125 = load i32, i32* %row_bits_passed91, align 4, !tbaa !160
  %add92 = add i32 %125, %mul
  store i32 %add92, i32* %row_bits_passed91, align 4, !tbaa !160
  br label %for.cond

if.end.93:                                        ; preds = %if.end.29
  %126 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered94 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %126, i32 0, i32 22
  %127 = load i32, i32* %input_bits_buffered94, align 4, !tbaa !164
  %128 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample95 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %128, i32 0, i32 8
  %129 = load i32, i32* %bits_per_sample95, align 4, !tbaa !131
  %cmp96 = icmp ult i32 %127, %129
  br i1 %cmp96, label %if.then.98, label %if.end.114

if.then.98:                                       ; preds = %if.end.93
  %130 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr99 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %130, i32 0, i32 0
  %131 = load i8*, i8** %ptr99, align 8, !tbaa !14
  %132 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit100 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %132, i32 0, i32 1
  %133 = load i8*, i8** %limit100, align 8, !tbaa !16
  %cmp101 = icmp uge i8* %131, %133
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.153

if.end.104:                                       ; preds = %if.then.98
  %134 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer105 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %134, i32 0, i32 21
  %135 = load i32, i32* %input_bits_buffer105, align 4, !tbaa !163
  %shl106 = shl i32 %135, 8
  %136 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr107 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %136, i32 0, i32 0
  %137 = load i8*, i8** %ptr107, align 8, !tbaa !14
  %incdec.ptr108 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr108, i8** %ptr107, align 8, !tbaa !14
  %138 = load i8, i8* %incdec.ptr108, align 1, !tbaa !20
  %conv109 = zext i8 %138 to i32
  %or110 = or i32 %shl106, %conv109
  %139 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer111 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %139, i32 0, i32 21
  store i32 %or110, i32* %input_bits_buffer111, align 4, !tbaa !163
  %140 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered112 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %140, i32 0, i32 22
  %141 = load i32, i32* %input_bits_buffered112, align 4, !tbaa !164
  %add113 = add i32 %141, 8
  store i32 %add113, i32* %input_bits_buffered112, align 4, !tbaa !164
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.104, %if.end.93
  %142 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered115 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %142, i32 0, i32 22
  %143 = load i32, i32* %input_bits_buffered115, align 4, !tbaa !164
  %144 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample116 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %144, i32 0, i32 8
  %145 = load i32, i32* %bits_per_sample116, align 4, !tbaa !131
  %cmp117 = icmp uge i32 %143, %145
  br i1 %cmp117, label %if.then.119, label %if.end.152

if.then.119:                                      ; preds = %if.end.114
  %146 = bitcast i32* %w120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %bits_per_sample121 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %147, i32 0, i32 8
  %148 = load i32, i32* %bits_per_sample121, align 4, !tbaa !131
  %149 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered122 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %149, i32 0, i32 22
  %150 = load i32, i32* %input_bits_buffered122, align 4, !tbaa !164
  %sub123 = sub i32 %150, %148
  store i32 %sub123, i32* %input_bits_buffered122, align 4, !tbaa !164
  %151 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer124 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %151, i32 0, i32 21
  %152 = load i32, i32* %input_bits_buffer124, align 4, !tbaa !163
  %153 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered125 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %153, i32 0, i32 22
  %154 = load i32, i32* %input_bits_buffered125, align 4, !tbaa !164
  %shr126 = lshr i32 %152, %154
  store i32 %shr126, i32* %w120, align 4, !tbaa !5
  %155 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_component_index = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %155, i32 0, i32 20
  %156 = load i32, i32* %input_component_index, align 4, !tbaa !162
  %idxprom127 = zext i32 %156 to i64
  %157 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %157, i32 0, i32 23
  %arrayidx128 = getelementptr inbounds [64 x i32], [64 x i32]* %input_color, i32 0, i64 %idxprom127
  store i32 %shr126, i32* %arrayidx128, align 4, !tbaa !5
  %158 = load i32, i32* %w120, align 4, !tbaa !5
  %159 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffered129 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %159, i32 0, i32 22
  %160 = load i32, i32* %input_bits_buffered129, align 4, !tbaa !164
  %shl130 = shl i32 %158, %160
  %neg = xor i32 %shl130, -1
  %161 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_bits_buffer131 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %161, i32 0, i32 21
  %162 = load i32, i32* %input_bits_buffer131, align 4, !tbaa !163
  %and = and i32 %162, %neg
  store i32 %and, i32* %input_bits_buffer131, align 4, !tbaa !163
  %163 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_component_index132 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %163, i32 0, i32 20
  %164 = load i32, i32* %input_component_index132, align 4, !tbaa !162
  %inc133 = add i32 %164, 1
  store i32 %inc133, i32* %input_component_index132, align 4, !tbaa !162
  %165 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_component_index134 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %165, i32 0, i32 20
  %166 = load i32, i32* %input_component_index134, align 4, !tbaa !162
  %167 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %depth135 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %167, i32 0, i32 7
  %168 = load i32, i32* %depth135, align 4, !tbaa !128
  %cmp136 = icmp uge i32 %166, %168
  br i1 %cmp136, label %if.then.138, label %if.end.148

if.then.138:                                      ; preds = %if.then.119
  %169 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  %170 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %convert_color = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %170, i32 0, i32 30
  %171 = load i32 (%struct.stream_image_colors_state_s*)*, i32 (%struct.stream_image_colors_state_s*)** %convert_color, align 8, !tbaa !126
  %172 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %call = call i32 %171(%struct.stream_image_colors_state_s* %172) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %173 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %173, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.138
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.142:                                       ; preds = %if.then.138
  %174 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %output_component_index143 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %174, i32 0, i32 12
  store i32 0, i32* %output_component_index143, align 4, !tbaa !147
  %175 = load %struct.stream_image_colors_state_s*, %struct.stream_image_colors_state_s** %ss, align 8, !tbaa !1
  %input_component_index144 = getelementptr inbounds %struct.stream_image_colors_state_s, %struct.stream_image_colors_state_s* %175, i32 0, i32 20
  store i32 0, i32* %input_component_index144, align 4, !tbaa !162
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %if.end.142, %if.then.141
  %176 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %cleanup.dest.146 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.146, label %cleanup.149 [
    i32 0, label %cleanup.cont.147
  ]

cleanup.cont.147:                                 ; preds = %cleanup.145
  br label %if.end.148

if.end.148:                                       ; preds = %cleanup.cont.147, %if.then.119
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.148, %cleanup.145
  %177 = bitcast i32* %w120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %cleanup.dest.150 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.150, label %cleanup.153 [
    i32 0, label %cleanup.cont.151
  ]

cleanup.cont.151:                                 ; preds = %cleanup.149
  br label %if.end.152

if.end.152:                                       ; preds = %cleanup.cont.151, %if.end.114
  br label %for.cond

cleanup.153:                                      ; preds = %cleanup.149, %if.then.103, %cleanup.83, %cleanup, %if.then
  %178 = bitcast %struct.stream_image_colors_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = load i32, i32* %retval
  ret i32 %179
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #3

declare %struct.gs_ptr_procs_s* @enum_bytestring(%struct.enum_ptr_s*, %struct.gs_bytestring_s*) #3

declare void @reloc_bytestring(%struct.gs_bytestring_s*, %struct.gc_state_s*) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @s_Downsample_init_common(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_Downsample_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_Downsample_state_s*
  store %struct.stream_Downsample_state_s* %2, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %3, i32 0, i32 14
  store i32 0, i32* %y, align 4, !tbaa !165
  %4 = load %struct.stream_Downsample_state_s*, %struct.stream_Downsample_state_s** %ss, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.stream_Downsample_state_s, %struct.stream_Downsample_state_s* %4, i32 0, i32 13
  store i32 0, i32* %x, align 4, !tbaa !166
  %5 = bitcast %struct.stream_Downsample_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @s_Bicubic_interpolate_pixel(%struct.stream_Bicubic_state_s* %ss, i32 %x_out, i32 %y_out, i8* %out) #0 {
entry:
  %ss.addr = alloca %struct.stream_Bicubic_state_s*, align 8
  %x_out.addr = alloca i32, align 4
  %y_out.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %v1 = alloca [4 x double], align 16
  %v2 = alloca [4 x double], align 16
  %v = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %start_x = alloca i32, align 4
  %start_y = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.stream_Bicubic_state_s* %ss, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %x_out, i32* %x_out.addr, align 4, !tbaa !5
  store i32 %y_out, i32* %y_out.addr, align 4, !tbaa !5
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast [4 x double]* %v1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast [4 x double]* %v2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %x_out.addr, align 4, !tbaa !5
  %conv = sitofp i32 %4 to float
  %5 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %XFactor = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %5, i32 0, i32 8
  %6 = load float, float* %XFactor, align 4, !tbaa !105
  %mul = fmul float %conv, %6
  %conv1 = fpext float %mul to double
  store double %conv1, double* %x, align 8, !tbaa !152
  %7 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %y_out.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %8 to float
  %9 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %YFactor = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %9, i32 0, i32 9
  %10 = load float, float* %YFactor, align 4, !tbaa !107
  %mul3 = fmul float %conv2, %10
  %conv4 = fpext float %mul3 to double
  store double %conv4, double* %y, align 8, !tbaa !152
  %11 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load double, double* %x, align 8, !tbaa !152
  %13 = load double, double* %x, align 8, !tbaa !152
  %call = call double @floor(double %13) #10
  %sub = fsub double %12, %call
  store double %sub, double* %dx, align 8, !tbaa !152
  %14 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load double, double* %y, align 8, !tbaa !152
  %16 = load double, double* %y, align 8, !tbaa !152
  %call5 = call double @floor(double %16) #10
  %sub6 = fsub double %15, %call5
  store double %sub6, double* %dy, align 8, !tbaa !152
  %17 = bitcast i32* %start_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load double, double* %x, align 8, !tbaa !152
  %call7 = call double @floor(double %18) #10
  %sub8 = fsub double %call7, 1.000000e+00
  %conv9 = fptosi double %sub8 to i32
  store i32 %conv9, i32* %start_x, align 4, !tbaa !5
  %19 = bitcast i32* %start_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load double, double* %y, align 8, !tbaa !152
  %call10 = call double @floor(double %20) #10
  %sub11 = fsub double %call10, 1.000000e+00
  %conv12 = fptosi double %sub11 to i32
  store i32 %conv12, i32* %start_y, align 4, !tbaa !5
  %21 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %entry
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %25 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %25, i32 0, i32 5
  %26 = load i32, i32* %Colors, align 4, !tbaa !98
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.28, %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %27, 4
  br i1 %cmp15, label %for.body.17, label %for.end.30

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.17
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %28, 4
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %29 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %30 = load i32, i32* %start_x, align 4, !tbaa !5
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %add = add nsw i32 %30, %31
  %32 = load i32, i32* %start_y, align 4, !tbaa !5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %add22 = add nsw i32 %32, %33
  %34 = load i32, i32* %c, align 4, !tbaa !5
  %call23 = call zeroext i8 @s_Bicubic_data_at(%struct.stream_Bicubic_state_s* %29, i32 %add, i32 %add22, i32 %34) #7
  %conv24 = uitofp i8 %call23 to double
  %35 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %v1, i32 0, i64 %idxprom
  store double %conv24, double* %arrayidx, align 8, !tbaa !152
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %v1, i32 0, i32 0
  %37 = load double, double* %dx, align 8, !tbaa !152
  %call25 = call double @s_Bicubic_interpolate(double* %arraydecay, double %37) #7
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %v2, i32 0, i64 %idxprom26
  store double %call25, double* %arrayidx27, align 8, !tbaa !152
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %39, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.end.30:                                       ; preds = %for.cond.14
  %arraydecay31 = getelementptr inbounds [4 x double], [4 x double]* %v2, i32 0, i32 0
  %40 = load double, double* %dy, align 8, !tbaa !152
  %call32 = call double @s_Bicubic_interpolate(double* %arraydecay31, double %40) #7
  store double %call32, double* %v, align 8, !tbaa !152
  %41 = load double, double* %v, align 8, !tbaa !152
  %cmp33 = fcmp olt double %41, 0.000000e+00
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.30
  br label %cond.end.43

cond.false:                                       ; preds = %for.end.30
  %42 = load double, double* %v, align 8, !tbaa !152
  %cmp35 = fcmp ogt double %42, 2.550000e+02
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false
  br label %cond.end

cond.false.38:                                    ; preds = %cond.false
  %43 = load double, double* %v, align 8, !tbaa !152
  %add39 = fadd double %43, 5.000000e-01
  %call40 = call double @floor(double %add39) #10
  %conv41 = fptoui double %call40 to i8
  %conv42 = zext i8 %conv41 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.37
  %cond = phi i32 [ 255, %cond.true.37 ], [ %conv42, %cond.false.38 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true
  %cond44 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv45 = trunc i32 %cond44 to i8
  %44 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom46 = sext i32 %44 to i64
  %45 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom46
  store i8 %conv45, i8* %arrayidx47, align 1, !tbaa !20
  br label %for.inc.48

for.inc.48:                                       ; preds = %cond.end.43
  %46 = load i32, i32* %c, align 4, !tbaa !5
  %inc49 = add nsw i32 %46, 1
  store i32 %inc49, i32* %c, align 4, !tbaa !5
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %start_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %start_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast [4 x double]* %v2 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #1
  %58 = bitcast [4 x double]* %v1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %58) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @s_Bicubic_data_at(%struct.stream_Bicubic_state_s* %ss, i32 %x, i32 %y, i32 %c) #6 {
entry:
  %ss.addr = alloca %struct.stream_Bicubic_state_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %idx = alloca i64, align 8
  store %struct.stream_Bicubic_state_s* %ss, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !5
  %2 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %HeightIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %2, i32 0, i32 7
  %3 = load i32, i32* %HeightIn, align 4, !tbaa !97
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %HeightIn1 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %4, i32 0, i32 7
  %5 = load i32, i32* %HeightIn1, align 4, !tbaa !97
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %y.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %y_in = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %6, i32 0, i32 15
  %7 = load i32, i32* %y_in, align 4, !tbaa !102
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %8, %7
  store i32 %sub2, i32* %y.addr, align 4, !tbaa !5
  %9 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %l_size = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %9, i32 0, i32 16
  %10 = load i64, i64* %l_size, align 8, !tbaa !99
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %12, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 %10, %conv
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.16

cond.false.7:                                     ; preds = %cond.end
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %WidthIn = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %15, i32 0, i32 6
  %16 = load i32, i32* %WidthIn, align 4, !tbaa !95
  %cmp8 = icmp sge i32 %14, %16
  br i1 %cmp8, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.false.7
  %17 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %WidthIn11 = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %17, i32 0, i32 6
  %18 = load i32, i32* %WidthIn11, align 4, !tbaa !95
  %sub12 = sub nsw i32 %18, 1
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.false.7
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.10
  %cond15 = phi i32 [ %sub12, %cond.true.10 ], [ %19, %cond.false.13 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end.14, %cond.true.6
  %cond17 = phi i32 [ 0, %cond.true.6 ], [ %cond15, %cond.end.14 ]
  %20 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %20, i32 0, i32 5
  %21 = load i32, i32* %Colors, align 4, !tbaa !98
  %mul18 = mul nsw i32 %cond17, %21
  %conv19 = sext i32 %mul18 to i64
  %add = add i64 %mul, %conv19
  %22 = load i32, i32* %c.addr, align 4, !tbaa !5
  %conv20 = sext i32 %22 to i64
  %add21 = add i64 %add, %conv20
  store i64 %add21, i64* %idx, align 8, !tbaa !110
  %23 = load i64, i64* %idx, align 8, !tbaa !110
  %24 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %d_len = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %24, i32 0, i32 18
  %25 = load i64, i64* %d_len, align 8, !tbaa !101
  %cmp22 = icmp ult i64 %23, %25
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end.16
  %26 = load i64, i64* %idx, align 8, !tbaa !110
  %27 = load %struct.stream_Bicubic_state_s*, %struct.stream_Bicubic_state_s** %ss.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_Bicubic_state_s, %struct.stream_Bicubic_state_s* %27, i32 0, i32 19
  %28 = load i8*, i8** %data, align 8, !tbaa !103
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %26
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv25 = zext i8 %29 to i32
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end.16
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi i32 [ %conv25, %cond.true.24 ], [ 0, %cond.false.26 ]
  %conv29 = trunc i32 %cond28 to i8
  %30 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i8 %conv29
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @s_Bicubic_interpolate(double* %b, double %delta) #6 {
entry:
  %b.addr = alloca double*, align 8
  %delta.addr = alloca double, align 8
  store double* %b, double** %b.addr, align 8, !tbaa !1
  store double %delta, double* %delta.addr, align 8, !tbaa !152
  %0 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8, !tbaa !152
  %2 = load double, double* %delta.addr, align 8, !tbaa !152
  %mul = fmul double 5.000000e-01, %2
  %3 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 2
  %4 = load double, double* %arrayidx1, align 8, !tbaa !152
  %5 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 0
  %6 = load double, double* %arrayidx2, align 8, !tbaa !152
  %sub = fsub double %4, %6
  %7 = load double, double* %delta.addr, align 8, !tbaa !152
  %8 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx3, align 8, !tbaa !152
  %mul4 = fmul double 2.000000e+00, %9
  %10 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double, double* %arrayidx5, align 8, !tbaa !152
  %mul6 = fmul double 5.000000e+00, %11
  %sub7 = fsub double %mul4, %mul6
  %12 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 2
  %13 = load double, double* %arrayidx8, align 8, !tbaa !152
  %mul9 = fmul double 4.000000e+00, %13
  %add = fadd double %sub7, %mul9
  %14 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 3
  %15 = load double, double* %arrayidx10, align 8, !tbaa !152
  %sub11 = fsub double %add, %15
  %16 = load double, double* %delta.addr, align 8, !tbaa !152
  %17 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 1
  %18 = load double, double* %arrayidx12, align 8, !tbaa !152
  %19 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %19, i64 2
  %20 = load double, double* %arrayidx13, align 8, !tbaa !152
  %sub14 = fsub double %18, %20
  %mul15 = fmul double 3.000000e+00, %sub14
  %21 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %21, i64 3
  %22 = load double, double* %arrayidx16, align 8, !tbaa !152
  %add17 = fadd double %mul15, %22
  %23 = load double*, double** %b.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %23, i64 0
  %24 = load double, double* %arrayidx18, align 8, !tbaa !152
  %sub19 = fsub double %add17, %24
  %mul20 = fmul double %16, %sub19
  %add21 = fadd double %sub11, %mul20
  %mul22 = fmul double %7, %add21
  %add23 = fadd double %sub, %mul22
  %mul24 = fmul double %mul, %add23
  %add25 = fadd double %1, %mul24
  ret double %add25
}

; Function Attrs: nounwind uwtable
define internal void @s_compr_chooser__unpack_and_recognize(%struct.stream_compr_chooser_state_s* %ss, i8* %data, i32 %length) #0 {
entry:
  %ss.addr = alloca %struct.stream_compr_chooser_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %k19 = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.stream_compr_chooser_state_s* %ss, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %samples_count = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %1, i32 0, i32 10
  %2 = load i32, i32* %samples_count, align 4, !tbaa !120
  %3 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %3, i32 0, i32 8
  %4 = load i32, i32* %depth, align 4, !tbaa !115
  %rem = urem i32 %2, %4
  %5 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %5, i32 0, i32 6
  %6 = load i32, i32* %width, align 4, !tbaa !112
  %mul = mul i32 %rem, %6
  store i32 %mul, i32* %i, align 4, !tbaa !5
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %samples_count1 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %8, i32 0, i32 10
  %9 = load i32, i32* %samples_count1, align 4, !tbaa !120
  %10 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth2 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %10, i32 0, i32 8
  %11 = load i32, i32* %depth2, align 4, !tbaa !115
  %div = udiv i32 %9, %11
  store i32 %div, i32* %j, align 4, !tbaa !5
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  %14 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %length.addr, align 4, !tbaa !5
  store i32 %15, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %while.body, label %while.end.68

while.body:                                       ; preds = %while.cond
  %17 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %17, i32 0, i32 11
  %18 = load i32, i32* %bits_left, align 4, !tbaa !121
  %cmp = icmp ult i32 %18, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left3 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %20, i32 0, i32 11
  %21 = load i32, i32* %bits_left3, align 4, !tbaa !121
  %conv = zext i32 %21 to i64
  %sub = sub i64 64, %conv
  %div4 = udiv i64 %sub, 8
  %conv5 = trunc i64 %div4 to i32
  store i32 %conv5, i32* %k, align 4, !tbaa !5
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %23 = load i32, i32* %l, align 4, !tbaa !5
  %cmp6 = icmp ult i32 %22, %23
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %24 = load i32, i32* %k, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %25 = load i32, i32* %l, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %26, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %packed_data = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %27, i32 0, i32 12
  %28 = load i64, i64* %packed_data, align 8, !tbaa !122
  %shl = shl i64 %28, 8
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !20
  %conv9 = zext i8 %30 to i64
  %add = add i64 %shl, %conv9
  %31 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %packed_data10 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %31, i32 0, i32 12
  store i64 %add, i64* %packed_data10, align 8, !tbaa !122
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %k, align 4, !tbaa !5
  %dec = add i32 %32, -1
  store i32 %dec, i32* %k, align 4, !tbaa !5
  %33 = load i32, i32* %l, align 4, !tbaa !5
  %dec11 = add nsw i32 %33, -1
  store i32 %dec11, i32* %l, align 4, !tbaa !5
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %35 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left12 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %35, i32 0, i32 11
  %36 = load i32, i32* %bits_left12, align 4, !tbaa !121
  %add13 = add i32 %36, 8
  store i32 %add13, i32* %bits_left12, align 4, !tbaa !121
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end.67, %if.end
  %38 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left15 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %38, i32 0, i32 11
  %39 = load i32, i32* %bits_left15, align 4, !tbaa !121
  %40 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %40, i32 0, i32 9
  %41 = load i32, i32* %bits_per_sample, align 4, !tbaa !116
  %cmp16 = icmp uge i32 %39, %41
  br i1 %cmp16, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %while.cond.14
  %42 = bitcast i32* %k19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left20 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %43, i32 0, i32 11
  %44 = load i32, i32* %bits_left20, align 4, !tbaa !121
  %45 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample21 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %45, i32 0, i32 9
  %46 = load i32, i32* %bits_per_sample21, align 4, !tbaa !116
  %sub22 = sub i32 %44, %46
  store i32 %sub22, i32* %k19, align 4, !tbaa !5
  %47 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %packed_data23 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %48, i32 0, i32 12
  %49 = load i64, i64* %packed_data23, align 8, !tbaa !122
  %50 = load i32, i32* %k19, align 4, !tbaa !5
  %sh_prom = zext i32 %50 to i64
  %shr = lshr i64 %49, %sh_prom
  store i64 %shr, i64* %v, align 8, !tbaa !110
  %51 = load i64, i64* %v, align 8, !tbaa !110
  %52 = load i32, i32* %k19, align 4, !tbaa !5
  %sh_prom24 = zext i32 %52 to i64
  %shl25 = shl i64 %51, %sh_prom24
  %53 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %packed_data26 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %53, i32 0, i32 12
  %54 = load i64, i64* %packed_data26, align 8, !tbaa !122
  %sub27 = sub i64 %54, %shl25
  store i64 %sub27, i64* %packed_data26, align 8, !tbaa !122
  %55 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample28 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %55, i32 0, i32 9
  %56 = load i32, i32* %bits_per_sample28, align 4, !tbaa !116
  %57 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left29 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %57, i32 0, i32 11
  %58 = load i32, i32* %bits_left29, align 4, !tbaa !121
  %sub30 = sub i32 %58, %56
  store i32 %sub30, i32* %bits_left29, align 4, !tbaa !121
  %59 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample31 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %59, i32 0, i32 9
  %60 = load i32, i32* %bits_per_sample31, align 4, !tbaa !116
  %cmp32 = icmp ugt i32 %60, 8
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %while.body.18
  %61 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample35 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %61, i32 0, i32 9
  %62 = load i32, i32* %bits_per_sample35, align 4, !tbaa !116
  %sub36 = sub i32 %62, 8
  %63 = load i64, i64* %v, align 8, !tbaa !110
  %sh_prom37 = zext i32 %sub36 to i64
  %shr38 = lshr i64 %63, %sh_prom37
  store i64 %shr38, i64* %v, align 8, !tbaa !110
  br label %if.end.43

if.else:                                          ; preds = %while.body.18
  %64 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_per_sample39 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %64, i32 0, i32 9
  %65 = load i32, i32* %bits_per_sample39, align 4, !tbaa !116
  %sub40 = sub i32 8, %65
  %66 = load i64, i64* %v, align 8, !tbaa !110
  %sh_prom41 = zext i32 %sub40 to i64
  %shl42 = shl i64 %66, %sh_prom41
  store i64 %shl42, i64* %v, align 8, !tbaa !110
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.34
  %67 = load i64, i64* %v, align 8, !tbaa !110
  %conv44 = trunc i64 %67 to i8
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %69 = load i32, i32* %j, align 4, !tbaa !5
  %add45 = add i32 %68, %69
  %idxprom = zext i32 %add45 to i64
  %70 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %70, i32 0, i32 13
  %71 = load i8*, i8** %sample, align 8, !tbaa !118
  %arrayidx = getelementptr inbounds i8, i8* %71, i64 %idxprom
  store i8 %conv44, i8* %arrayidx, align 1, !tbaa !20
  %72 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width46 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %72, i32 0, i32 6
  %73 = load i32, i32* %width46, align 4, !tbaa !112
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %add47 = add i32 %74, %73
  store i32 %add47, i32* %i, align 4, !tbaa !5
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %76 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width48 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %76, i32 0, i32 6
  %77 = load i32, i32* %width48, align 4, !tbaa !112
  %78 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth49 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %78, i32 0, i32 8
  %79 = load i32, i32* %depth49, align 4, !tbaa !115
  %mul50 = mul i32 %77, %79
  %cmp51 = icmp uge i32 %75, %mul50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.43
  store i32 0, i32* %i, align 4, !tbaa !5
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %80, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.43
  %81 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %samples_count55 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %81, i32 0, i32 10
  %82 = load i32, i32* %samples_count55, align 4, !tbaa !120
  %inc56 = add i32 %82, 1
  store i32 %inc56, i32* %samples_count55, align 4, !tbaa !120
  %83 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %samples_count57 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %83, i32 0, i32 10
  %84 = load i32, i32* %samples_count57, align 4, !tbaa !120
  %85 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width58 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %85, i32 0, i32 6
  %86 = load i32, i32* %width58, align 4, !tbaa !112
  %87 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth59 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %87, i32 0, i32 8
  %88 = load i32, i32* %depth59, align 4, !tbaa !115
  %mul60 = mul i32 %86, %88
  %cmp61 = icmp uge i32 %84, %mul60
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.54
  %89 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  call void @s_compr_chooser__recognize(%struct.stream_compr_chooser_state_s* %89) #7
  %90 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %packed_data64 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %90, i32 0, i32 12
  store i64 0, i64* %packed_data64, align 8, !tbaa !122
  %91 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left65 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %91, i32 0, i32 11
  store i32 0, i32* %bits_left65, align 4, !tbaa !121
  %92 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %samples_count66 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %92, i32 0, i32 10
  store i32 0, i32* %samples_count66, align 4, !tbaa !120
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.end.54
  %93 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %k19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  br label %while.cond.14

while.end:                                        ; preds = %while.cond.14
  br label %while.cond

while.end.68:                                     ; preds = %while.cond
  %95 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_compr_chooser__recognize(%struct.stream_compr_chooser_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_compr_chooser_state_s*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.stream_compr_chooser_state_s* %ss, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %sample = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %2, i32 0, i32 13
  %3 = load i8*, i8** %sample, align 8, !tbaa !118
  store i8* %3, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %5, i32 0, i32 8
  %6 = load i32, i32* %depth, align 4, !tbaa !115
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  call void @s_compr_chooser__estimate_row(%struct.stream_compr_chooser_state_s* %7, i8* %8) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %10 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %width, align 4, !tbaa !112
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_compr_chooser__estimate_row(%struct.stream_compr_chooser_state_s* %ss, i8* %p) #0 {
entry:
  %ss.addr = alloca %struct.stream_compr_chooser_state_s*, align 8
  %p.addr = alloca i8*, align 8
  %delta = alloca i32, align 4
  %max_lineart_boundary_width = alloca i32, align 4
  %max_gradient_constant = alloca i32, align 4
  %i = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %w0 = alloca i32, align 4
  %w1 = alloca i32, align 4
  %v = alloca i32, align 4
  %plateau_count = alloca i64, align 8
  %lower_plateaus = alloca i64, align 8
  %upper_plateaus = alloca i64, align 8
  %gradients = alloca i64, align 8
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %plateaus = alloca i32, align 4
  store %struct.stream_compr_chooser_state_s* %ss, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 16, i32* %delta, align 4, !tbaa !5
  %1 = bitcast i32* %max_lineart_boundary_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 3, i32* %max_lineart_boundary_width, align 4, !tbaa !5
  %2 = bitcast i32* %max_gradient_constant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 10, i32* %max_gradient_constant, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %j0, align 4, !tbaa !5
  %5 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %j1, align 4, !tbaa !5
  %6 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %w0, align 4, !tbaa !5
  %9 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx1, align 1, !tbaa !20
  %conv2 = zext i8 %11 to i32
  store i32 %conv2, i32* %w1, align 4, !tbaa !5
  %12 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i64* %plateau_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 0, i64* %plateau_count, align 8, !tbaa !110
  %14 = bitcast i64* %lower_plateaus to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 0, i64* %lower_plateaus, align 8, !tbaa !110
  %15 = bitcast i64* %upper_plateaus to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 0, i64* %upper_plateaus, align 8, !tbaa !110
  %16 = bitcast i64* %gradients to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 0, i64* %gradients, align 8, !tbaa !110
  %17 = bitcast i32* %lower to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %lower, align 4, !tbaa !5
  %18 = bitcast i32* %upper to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %upper, align 4, !tbaa !5
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %entry
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %20, i32 0, i32 6
  %21 = load i32, i32* %width, align 4, !tbaa !112
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end.138

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %22 to i64
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx4, align 1, !tbaa !20
  %conv5 = zext i8 %24 to i32
  store i32 %conv5, i32* %v, align 4, !tbaa !5
  %25 = load i32, i32* %lower, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.62, label %if.then

if.then:                                          ; preds = %for.body
  %26 = load i32, i32* %w1, align 4, !tbaa !5
  %27 = load i32, i32* %v, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %26, %27
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %28 = load i32, i32* %upper, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %28, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %29, 1
  store i32 %sub, i32* %j1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.8
  %30 = load i32, i32* %v, align 4, !tbaa !5
  store i32 %30, i32* %w1, align 4, !tbaa !5
  store i32 1, i32* %upper, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %if.then
  %31 = load i32, i32* %w1, align 4, !tbaa !5
  %32 = load i32, i32* %v, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %31, %32
  br i1 %cmp11, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %33 = load i32, i32* %j1, align 4, !tbaa !5
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %sub13 = sub nsw i32 %34, 10
  %cmp14 = icmp slt i32 %33, %sub13
  br i1 %cmp14, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %sub17 = sub nsw i32 %35, 10
  store i32 %sub17, i32* %j1, align 4, !tbaa !5
  br label %if.end.60

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %36 = load i32, i32* %upper, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %36, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.59

land.lhs.true.20:                                 ; preds = %if.else.18
  %37 = load i32, i32* %w1, align 4, !tbaa !5
  %sub21 = sub nsw i32 %37, 16
  %38 = load i32, i32* %v, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %sub21, %38
  br i1 %cmp22, label %if.then.24, label %if.end.59

if.then.24:                                       ; preds = %land.lhs.true.20
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %sub25 = sub nsw i32 %39, 1
  store i32 %sub25, i32* %j0, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.24
  %40 = load i32, i32* %j0, align 4, !tbaa !5
  %41 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %40, %41
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.26
  %42 = load i32, i32* %w1, align 4, !tbaa !5
  %sub29 = sub nsw i32 %42, 16
  %43 = load i32, i32* %j0, align 4, !tbaa !5
  %idxprom30 = sext i32 %43 to i64
  %44 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %44, i64 %idxprom30
  %45 = load i8, i8* %arrayidx31, align 1, !tbaa !20
  %conv32 = zext i8 %45 to i32
  %cmp33 = icmp sle i32 %sub29, %conv32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.26
  %46 = phi i1 [ false, %for.cond.26 ], [ %cmp33, %land.rhs ]
  br i1 %46, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body.35
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %47 = load i32, i32* %j0, align 4, !tbaa !5
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %j0, align 4, !tbaa !5
  br label %for.cond.26

for.end:                                          ; preds = %land.end
  %48 = load i32, i32* %j0, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %48, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.46

land.lhs.true.38:                                 ; preds = %for.end
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %50 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width39 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %50, i32 0, i32 6
  %51 = load i32, i32* %width39, align 4, !tbaa !112
  %sub40 = sub i32 %51, 1
  %cmp41 = icmp ult i32 %49, %sub40
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true.38
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %53 = load i32, i32* %j0, align 4, !tbaa !5
  %sub44 = sub nsw i32 %52, %53
  %conv45 = sext i32 %sub44 to i64
  %54 = load i64, i64* %upper_plateaus, align 8, !tbaa !110
  %add = add i64 %54, %conv45
  store i64 %add, i64* %upper_plateaus, align 8, !tbaa !110
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %land.lhs.true.38, %for.end
  %55 = load i64, i64* %plateau_count, align 8, !tbaa !110
  %inc = add i64 %55, 1
  store i64 %inc, i64* %plateau_count, align 8, !tbaa !110
  %56 = load i32, i32* %j0, align 4, !tbaa !5
  %57 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %56, %57
  br i1 %cmp47, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %if.end.46
  %58 = load i32, i32* %j0, align 4, !tbaa !5
  %59 = load i32, i32* %j1, align 4, !tbaa !5
  %add50 = add nsw i32 %59, 3
  %cmp51 = icmp sgt i32 %58, %add50
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.then.49
  %60 = load i32, i32* %j0, align 4, !tbaa !5
  %61 = load i32, i32* %j1, align 4, !tbaa !5
  %sub54 = sub nsw i32 %60, %61
  %conv55 = sext i32 %sub54 to i64
  %62 = load i64, i64* %gradients, align 8, !tbaa !110
  %add56 = add i64 %62, %conv55
  store i64 %add56, i64* %gradients, align 8, !tbaa !110
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.then.49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.46
  %63 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %63, i32* %j1, align 4, !tbaa !5
  store i32 0, i32* %upper, align 4, !tbaa !5
  %64 = load i32, i32* %w1, align 4, !tbaa !5
  store i32 %64, i32* %w0, align 4, !tbaa !5
  br label %for.inc.136

if.end.59:                                        ; preds = %land.lhs.true.20, %if.else.18
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.16
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body
  %65 = load i32, i32* %upper, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %65, 0
  br i1 %tobool63, label %if.end.135, label %if.then.64

if.then.64:                                       ; preds = %if.end.62
  %66 = load i32, i32* %w0, align 4, !tbaa !5
  %67 = load i32, i32* %v, align 4, !tbaa !5
  %cmp65 = icmp sgt i32 %66, %67
  br i1 %cmp65, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.then.64
  %68 = load i32, i32* %lower, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %68, 0
  br i1 %tobool68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %if.then.67
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %sub70 = sub nsw i32 %69, 1
  store i32 %sub70, i32* %j1, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.67
  %70 = load i32, i32* %v, align 4, !tbaa !5
  store i32 %70, i32* %w0, align 4, !tbaa !5
  store i32 1, i32* %lower, align 4, !tbaa !5
  br label %if.end.134

if.else.72:                                       ; preds = %if.then.64
  %71 = load i32, i32* %w0, align 4, !tbaa !5
  %72 = load i32, i32* %v, align 4, !tbaa !5
  %cmp73 = icmp eq i32 %71, %72
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.81

land.lhs.true.75:                                 ; preds = %if.else.72
  %73 = load i32, i32* %j1, align 4, !tbaa !5
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %sub76 = sub nsw i32 %74, 10
  %cmp77 = icmp slt i32 %73, %sub76
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %land.lhs.true.75
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %sub80 = sub nsw i32 %75, 10
  store i32 %sub80, i32* %j1, align 4, !tbaa !5
  br label %if.end.133

if.else.81:                                       ; preds = %land.lhs.true.75, %if.else.72
  %76 = load i32, i32* %lower, align 4, !tbaa !5
  %tobool82 = icmp ne i32 %76, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.132

land.lhs.true.83:                                 ; preds = %if.else.81
  %77 = load i32, i32* %w0, align 4, !tbaa !5
  %add84 = add nsw i32 %77, 16
  %78 = load i32, i32* %v, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %add84, %78
  br i1 %cmp85, label %if.then.87, label %if.end.132

if.then.87:                                       ; preds = %land.lhs.true.83
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %sub88 = sub nsw i32 %79, 1
  store i32 %sub88, i32* %j0, align 4, !tbaa !5
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.104, %if.then.87
  %80 = load i32, i32* %j0, align 4, !tbaa !5
  %81 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp90 = icmp sgt i32 %80, %81
  br i1 %cmp90, label %land.rhs.92, label %land.end.99

land.rhs.92:                                      ; preds = %for.cond.89
  %82 = load i32, i32* %w0, align 4, !tbaa !5
  %add93 = add nsw i32 %82, 16
  %83 = load i32, i32* %j0, align 4, !tbaa !5
  %idxprom94 = sext i32 %83 to i64
  %84 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %84, i64 %idxprom94
  %85 = load i8, i8* %arrayidx95, align 1, !tbaa !20
  %conv96 = zext i8 %85 to i32
  %cmp97 = icmp sge i32 %add93, %conv96
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.92, %for.cond.89
  %86 = phi i1 [ false, %for.cond.89 ], [ %cmp97, %land.rhs.92 ]
  br i1 %86, label %for.body.100, label %for.end.106

for.body.100:                                     ; preds = %land.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %for.body.100
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  br label %for.inc.104

for.inc.104:                                      ; preds = %do.end.103
  %87 = load i32, i32* %j0, align 4, !tbaa !5
  %dec105 = add nsw i32 %87, -1
  store i32 %dec105, i32* %j0, align 4, !tbaa !5
  br label %for.cond.89

for.end.106:                                      ; preds = %land.end.99
  %88 = load i32, i32* %j0, align 4, !tbaa !5
  %cmp107 = icmp sgt i32 %88, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.118

land.lhs.true.109:                                ; preds = %for.end.106
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %90 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width110 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %90, i32 0, i32 6
  %91 = load i32, i32* %width110, align 4, !tbaa !112
  %sub111 = sub i32 %91, 1
  %cmp112 = icmp ult i32 %89, %sub111
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %land.lhs.true.109
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %93 = load i32, i32* %j0, align 4, !tbaa !5
  %sub115 = sub nsw i32 %92, %93
  %conv116 = sext i32 %sub115 to i64
  %94 = load i64, i64* %lower_plateaus, align 8, !tbaa !110
  %add117 = add i64 %94, %conv116
  store i64 %add117, i64* %lower_plateaus, align 8, !tbaa !110
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %land.lhs.true.109, %for.end.106
  %95 = load i64, i64* %plateau_count, align 8, !tbaa !110
  %inc119 = add i64 %95, 1
  store i64 %inc119, i64* %plateau_count, align 8, !tbaa !110
  %96 = load i32, i32* %j0, align 4, !tbaa !5
  %97 = load i32, i32* %j1, align 4, !tbaa !5
  %cmp120 = icmp sgt i32 %96, %97
  br i1 %cmp120, label %if.then.122, label %if.end.131

if.then.122:                                      ; preds = %if.end.118
  %98 = load i32, i32* %j0, align 4, !tbaa !5
  %99 = load i32, i32* %j1, align 4, !tbaa !5
  %add123 = add nsw i32 %99, 3
  %cmp124 = icmp sgt i32 %98, %add123
  br i1 %cmp124, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.then.122
  %100 = load i32, i32* %j0, align 4, !tbaa !5
  %101 = load i32, i32* %j1, align 4, !tbaa !5
  %sub127 = sub nsw i32 %100, %101
  %conv128 = sext i32 %sub127 to i64
  %102 = load i64, i64* %gradients, align 8, !tbaa !110
  %add129 = add i64 %102, %conv128
  store i64 %add129, i64* %gradients, align 8, !tbaa !110
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %if.then.122
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.118
  %103 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %103, i32* %j1, align 4, !tbaa !5
  store i32 0, i32* %lower, align 4, !tbaa !5
  %104 = load i32, i32* %w0, align 4, !tbaa !5
  store i32 %104, i32* %w1, align 4, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %land.lhs.true.83, %if.else.81
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.79
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.71
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.62
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135, %if.end.58
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %inc137 = add nsw i32 %105, 1
  store i32 %inc137, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.138:                                      ; preds = %for.cond
  %106 = load i64, i64* %plateau_count, align 8, !tbaa !110
  %107 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %width139 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %107, i32 0, i32 6
  %108 = load i32, i32* %width139, align 4, !tbaa !112
  %div = udiv i32 %108, 6
  %conv140 = zext i32 %div to i64
  %cmp141 = icmp ugt i64 %106, %conv140
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %for.end.138
  br label %if.end.188

if.else.144:                                      ; preds = %for.end.138
  %109 = load i64, i64* %plateau_count, align 8, !tbaa !110
  %tobool145 = icmp ne i64 %109, 0
  br i1 %tobool145, label %if.else.150, label %if.then.146

if.then.146:                                      ; preds = %if.else.144
  br label %do.body.147

do.body.147:                                      ; preds = %if.then.146
  br label %do.cond.148

do.cond.148:                                      ; preds = %do.body.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.cond.148
  br label %if.end.187

if.else.150:                                      ; preds = %if.else.144
  %110 = bitcast i32* %plateaus to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = load i64, i64* %lower_plateaus, align 8, !tbaa !110
  %112 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %lower_plateaus151 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %112, i32 0, i32 15
  %113 = load i64, i64* %lower_plateaus151, align 8, !tbaa !124
  %add152 = add i64 %113, %111
  store i64 %add152, i64* %lower_plateaus151, align 8, !tbaa !124
  %114 = load i64, i64* %upper_plateaus, align 8, !tbaa !110
  %115 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %upper_plateaus153 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %115, i32 0, i32 14
  %116 = load i64, i64* %upper_plateaus153, align 8, !tbaa !123
  %add154 = add i64 %116, %114
  store i64 %add154, i64* %upper_plateaus153, align 8, !tbaa !123
  %117 = load i64, i64* %gradients, align 8, !tbaa !110
  %118 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients155 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %118, i32 0, i32 16
  %119 = load i64, i64* %gradients155, align 8, !tbaa !125
  %add156 = add i64 %119, %117
  store i64 %add156, i64* %gradients155, align 8, !tbaa !125
  %120 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %lower_plateaus157 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %120, i32 0, i32 15
  %121 = load i64, i64* %lower_plateaus157, align 8, !tbaa !124
  %122 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %upper_plateaus158 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %122, i32 0, i32 14
  %123 = load i64, i64* %upper_plateaus158, align 8, !tbaa !123
  %cmp159 = icmp ult i64 %121, %123
  br i1 %cmp159, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.150
  %124 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %lower_plateaus161 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %124, i32 0, i32 15
  %125 = load i64, i64* %lower_plateaus161, align 8, !tbaa !124
  br label %cond.end

cond.false:                                       ; preds = %if.else.150
  %126 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %upper_plateaus162 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %126, i32 0, i32 14
  %127 = load i64, i64* %upper_plateaus162, align 8, !tbaa !123
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %125, %cond.true ], [ %127, %cond.false ]
  %conv163 = trunc i64 %cond to i32
  store i32 %conv163, i32* %plateaus, align 4, !tbaa !5
  %128 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients164 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %128, i32 0, i32 16
  %129 = load i64, i64* %gradients164, align 8, !tbaa !125
  %cmp165 = icmp uge i64 %129, 10000
  br i1 %cmp165, label %land.lhs.true.167, label %if.else.174

land.lhs.true.167:                                ; preds = %cond.end
  %130 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients168 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %130, i32 0, i32 16
  %131 = load i64, i64* %gradients168, align 8, !tbaa !125
  %132 = load i32, i32* %plateaus, align 4, !tbaa !5
  %div169 = sdiv i32 %132, 6
  %conv170 = sext i32 %div169 to i64
  %cmp171 = icmp ugt i64 %131, %conv170
  br i1 %cmp171, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %land.lhs.true.167
  %133 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %choice = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %133, i32 0, i32 5
  store i32 1, i32* %choice, align 4, !tbaa !119
  br label %if.end.186

if.else.174:                                      ; preds = %land.lhs.true.167, %cond.end
  %134 = load i32, i32* %plateaus, align 4, !tbaa !5
  %cmp175 = icmp sge i32 %134, 100000
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.185

land.lhs.true.177:                                ; preds = %if.else.174
  %135 = load i32, i32* %plateaus, align 4, !tbaa !5
  %div178 = sdiv i32 %135, 5000
  %conv179 = sext i32 %div178 to i64
  %136 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %gradients180 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %136, i32 0, i32 16
  %137 = load i64, i64* %gradients180, align 8, !tbaa !125
  %cmp181 = icmp uge i64 %conv179, %137
  br i1 %cmp181, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %land.lhs.true.177
  %138 = load %struct.stream_compr_chooser_state_s*, %struct.stream_compr_chooser_state_s** %ss.addr, align 8, !tbaa !1
  %choice184 = getelementptr inbounds %struct.stream_compr_chooser_state_s, %struct.stream_compr_chooser_state_s* %138, i32 0, i32 5
  store i32 2, i32* %choice184, align 4, !tbaa !119
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %land.lhs.true.177, %if.else.174
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.173
  %139 = bitcast i32* %plateaus to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %do.end.149
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.143
  %140 = bitcast i32* %upper to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %lower to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i64* %gradients to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i64* %upper_plateaus to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i64* %lower_plateaus to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i64* %plateau_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %j0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %max_gradient_constant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %max_lineart_boundary_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 108}
!8 = !{!"stream_1248_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116}
!9 = !{!8, !2, i64 0}
!10 = !{!11, !2, i64 8}
!11 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!12 = !{!8, !6, i64 116}
!13 = !{!8, !6, i64 112}
!14 = !{!15, !2, i64 0}
!15 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!15, !2, i64 8}
!17 = !{!18, !2, i64 8}
!18 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!18, !2, i64 16}
!20 = !{!3, !3, i64 0}
!21 = !{!22, !2, i64 112}
!22 = !{!"stream_C2R_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 112}
!23 = !{!24, !2, i64 8}
!24 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !25, i64 24, !6, i64 128, !29, i64 132, !6, i64 168, !30, i64 176, !30, i64 192, !6, i64 208, !6, i64 212, !32, i64 216, !3, i64 220, !33, i64 224, !33, i64 228, !34, i64 232, !35, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !26, i64 296, !36, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !26, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !37, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !38, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !38, i64 1336}
!25 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !6, i64 36, !27, i64 40, !28, i64 64}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!28 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !26, i64 12, !6, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !26, i64 32}
!29 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !3, i64 0}
!32 = !{!"short", !3, i64 0}
!33 = !{!"gs_transparency_source_s", !26, i64 0}
!34 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!35 = !{!"long", !3, i64 0}
!36 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!37 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!38 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !35, i64 16, !3, i64 24}
!39 = !{!32, !32, i64 0}
!40 = !{!41, !2, i64 128}
!41 = !{!"stream_IE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !2, i64 128, !42, i64 136, !3, i64 160, !6, i64 1760, !6, i64 1764, !6, i64 1768, !6, i64 1772, !6, i64 1776, !6, i64 1780}
!42 = !{!"gs_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!43 = !{!44, !2, i64 0}
!44 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!45 = !{!46, !2, i64 0}
!46 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!47 = !{!41, !6, i64 120}
!48 = !{!41, !6, i64 112}
!49 = !{!41, !2, i64 136}
!50 = !{!41, !6, i64 144}
!51 = !{!41, !6, i64 1760}
!52 = !{!41, !6, i64 1768}
!53 = !{!41, !6, i64 1772}
!54 = !{!41, !6, i64 1776}
!55 = !{!41, !6, i64 1780}
!56 = !{!41, !6, i64 108}
!57 = !{!41, !6, i64 1764}
!58 = !{!26, !26, i64 0}
!59 = !{!41, !6, i64 116}
!60 = !{!42, !2, i64 0}
!61 = !{!42, !6, i64 8}
!62 = !{!42, !2, i64 16}
!63 = !{!64, !26, i64 120}
!64 = !{!"stream_Subsample_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144}
!65 = !{!66, !2, i64 8}
!66 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!67 = !{!64, !6, i64 108}
!68 = !{!64, !6, i64 112}
!69 = !{!64, !6, i64 116}
!70 = !{!64, !26, i64 124}
!71 = !{!64, !6, i64 132}
!72 = !{!64, !6, i64 136}
!73 = !{!64, !6, i64 140}
!74 = !{!64, !6, i64 144}
!75 = !{!76, !6, i64 136}
!76 = !{!"stream_Downsample_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144}
!77 = !{!76, !6, i64 132}
!78 = !{!76, !6, i64 128}
!79 = !{!80, !26, i64 120}
!80 = !{!"stream_Average_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !2, i64 160}
!81 = !{!80, !6, i64 108}
!82 = !{!80, !6, i64 112}
!83 = !{!80, !6, i64 148}
!84 = !{!80, !6, i64 132}
!85 = !{!80, !6, i64 152}
!86 = !{!80, !2, i64 160}
!87 = !{!88, !2, i64 24}
!88 = !{!"gs_memory_s", !2, i64 0, !89, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!89 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!90 = !{!88, !2, i64 88}
!91 = !{!80, !26, i64 124}
!92 = !{!80, !6, i64 140}
!93 = !{!80, !6, i64 144}
!94 = !{!80, !6, i64 136}
!95 = !{!96, !6, i64 112}
!96 = !{!"stream_Bicubic_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !35, i64 152, !35, i64 160, !35, i64 168, !2, i64 176}
!97 = !{!96, !6, i64 116}
!98 = !{!96, !6, i64 108}
!99 = !{!96, !35, i64 152}
!100 = !{!96, !35, i64 160}
!101 = !{!96, !35, i64 168}
!102 = !{!96, !6, i64 148}
!103 = !{!96, !2, i64 176}
!104 = !{!88, !2, i64 64}
!105 = !{!96, !26, i64 120}
!106 = !{!96, !6, i64 132}
!107 = !{!96, !26, i64 124}
!108 = !{!96, !6, i64 136}
!109 = !{!96, !6, i64 144}
!110 = !{!35, !35, i64 0}
!111 = !{!96, !6, i64 140}
!112 = !{!113, !6, i64 112}
!113 = !{!"stream_compr_chooser_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !35, i64 136, !2, i64 144, !35, i64 152, !35, i64 160, !35, i64 168}
!114 = !{!113, !6, i64 116}
!115 = !{!113, !6, i64 120}
!116 = !{!113, !6, i64 124}
!117 = !{!113, !2, i64 8}
!118 = !{!113, !2, i64 144}
!119 = !{!113, !6, i64 108}
!120 = !{!113, !6, i64 128}
!121 = !{!113, !6, i64 132}
!122 = !{!113, !35, i64 136}
!123 = !{!113, !35, i64 152}
!124 = !{!113, !35, i64 160}
!125 = !{!113, !35, i64 168}
!126 = !{!127, !2, i64 1744}
!127 = !{!"stream_image_colors_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !3, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !3, i64 180, !3, i64 436, !3, i64 692, !3, i64 1204, !2, i64 1720, !2, i64 1728, !2, i64 1736, !2, i64 1744}
!128 = !{!127, !6, i64 116}
!129 = !{!127, !6, i64 108}
!130 = !{!127, !6, i64 112}
!131 = !{!127, !6, i64 120}
!132 = !{!127, !6, i64 152}
!133 = !{!127, !6, i64 148}
!134 = !{!127, !6, i64 160}
!135 = !{!136, !6, i64 100}
!136 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !137, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !138, i64 96, !140, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !35, i64 928, !35, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !35, i64 968, !35, i64 976, !141, i64 984, !6, i64 1052, !6, i64 1056, !142, i64 1064, !2, i64 1104, !3, i64 1112, !144, i64 1120, !145, i64 1144}
!137 = !{!"rc_header_s", !35, i64 0, !2, i64 8, !2, i64 16}
!138 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !32, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !139, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !35, i64 704, !6, i64 712}
!139 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!140 = !{!"gx_device_cached_colors_s", !35, i64 0, !35, i64 8}
!141 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!142 = !{!"gdev_space_params_s", !35, i64 0, !35, i64 8, !143, i64 16, !6, i64 32, !3, i64 36}
!143 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !35, i64 8}
!144 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!145 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!146 = !{!127, !6, i64 140}
!147 = !{!127, !6, i64 136}
!148 = !{!127, !6, i64 144}
!149 = !{!127, !2, i64 1728}
!150 = !{!127, !2, i64 1720}
!151 = !{!127, !2, i64 1736}
!152 = !{!31, !31, i64 0}
!153 = !{!154, !2, i64 0}
!154 = !{!"gs_color_space_s", !2, i64 0, !137, i64 8, !35, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!155 = !{!156, !2, i64 72}
!156 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!157 = !{!127, !3, i64 124}
!158 = !{!127, !6, i64 128}
!159 = !{!127, !6, i64 132}
!160 = !{!127, !6, i64 156}
!161 = !{!127, !6, i64 164}
!162 = !{!127, !6, i64 168}
!163 = !{!127, !6, i64 172}
!164 = !{!127, !6, i64 176}
!165 = !{!76, !6, i64 144}
!166 = !{!76, !6, i64 140}
