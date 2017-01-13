; ModuleID = './gdevdcrd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.7, %struct.anon.7, %struct.anon.7, %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.8 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.anon.8 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"CRDName\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"sample_device_crd_get_params\00", align 1
@bit_TransformPQR = internal constant %struct.gs_cie_transform_proc3_s { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* @bit_TransformPQR_proc, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.gs_const_string_s zeroinitializer, i8* null }, align 8
@bit_WhitePoint = internal constant %struct.gs_vector3_s { float 0x3FEE6A7F00000000, float 1.000000e+00, float 0x3FF16C8B40000000 }, align 4
@bit_RangePQR = internal constant %struct.gs_range3_s { [3 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 0x3FEE6A7F00000000 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 0x3FF16C8B40000000 }] }, align 4
@bit_EncodeLMN = internal constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @bit_EncodeLMN_proc, float (double, %struct.gs_cie_render_s*)* @bit_EncodeLMN_proc, float (double, %struct.gs_cie_render_s*)* @bit_EncodeLMN_proc] }, align 8
@bit_RangeLMN = internal constant %struct.gs_range3_s { [3 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 0x3FEE6A7F00000000 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 0x3FF16C8B40000000 }] }, align 4
@bit_MatrixABC = internal constant %struct.gs_matrix3_s { %struct.gs_vector3_s { float 0x4009ECCF60000000, float 0xBFEF017980000000, float 0x3FAC860560000000 }, %struct.gs_vector3_s { float 0xBFF8986980000000, float 0x3FFE031CE0000000, float 0xBFCA1D53C0000000 }, %struct.gs_vector3_s { float 0xBFDFE98DC0000000, float 0x3FA5421C00000000, float 0x3FF0E978E0000000 }, i32 0 }, align 4
@bit_EncodeABC = internal constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @bit_EncodeABC_proc, float (double, %struct.gs_cie_render_s*)* @bit_EncodeABC_proc, float (double, %struct.gs_cie_render_s*)* @bit_EncodeABC_proc] }, align 8
@bit_RenderTable = internal constant %struct.gs_cie_render_table_s { %struct.gx_color_lookup_table_s { i32 3, [4 x i32] [i32 2, i32 2, i32 2, i32 0], i32 3, %struct.gs_const_string_s* getelementptr inbounds ([2 x %struct.gs_const_string_s], [2 x %struct.gs_const_string_s]* @bit_rt_data, i32 0, i32 0) }, %struct.gs_cie_render_table_procs_s { [4 x i16 (i8, %struct.gs_cie_render_s*)*] [i16 (i8, %struct.gs_cie_render_s*)* @bit_rt_proc, i16 (i8, %struct.gs_cie_render_s*)* @bit_rt_proc, i16 (i8, %struct.gs_cie_render_s*)* @bit_rt_proc, i16 (i8, %struct.gs_cie_render_s*)* null] } }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"sd_crd_get_params(proc)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bitTPQRDefault\00", align 1
@bit_rt_data = internal constant [2 x %struct.gs_const_string_s] [%struct.gs_const_string_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @bit_rtt0, i32 0, i32 0), i32 12 }, %struct.gs_const_string_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @bit_rtt1, i32 0, i32 0), i32 12 }], align 16
@bit_rtt0 = internal constant [12 x i8] c"\00\00\00\00\00\FF\00\FF\00\00\FF\FF", align 1
@bit_rtt1 = internal constant [12 x i8] c"\FF\00\00\FF\00\FF\FF\FF\00\FF\FF\FF", align 1

; Function Attrs: nounwind uwtable
define i32 @sample_device_crd_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, i8* %crd_param_name) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %crd_param_name.addr = alloca i8*, align 8
  %ecode = alloca i32, align 4
  %cns = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %code13 = alloca i32, align 4
  %tpqr = alloca %struct.gs_cie_transform_proc3_s, align 8
  %my_proc = alloca i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, align 8
  %my_addr = alloca i8*, align 8
  %code67 = alloca i32, align 4
  %as = alloca %struct.gs_param_string_s, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %crd_param_name, i8** %crd_param_name.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %1, i32 0, i32 0
  %2 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !7
  %requested = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %2, i32 0, i32 5
  %3 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested, align 8, !tbaa !9
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_param_list_s* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_param_string_s* %cns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %crd_param_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %cns, i32 0, i32 0
  store i8* %7, i8** %data, align 8, !tbaa !11
  %8 = load i8*, i8** %crd_param_name.addr, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call1 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %cns, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !13
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %cns, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !14
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 @param_write_string(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_param_string_s* %cns) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_param_string_s* %cns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs7, align 8, !tbaa !7
  %requested8 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %15, i32 0, i32 5
  %16 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested8, align 8, !tbaa !9
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %crd_param_name.addr, align 8, !tbaa !1
  %call9 = call i32 %16(%struct.gs_param_list_s* %17, i8* %18) #5
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.56

if.then.12:                                       ; preds = %if.end.6
  %19 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %code13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !15
  %call14 = call i32 @gs_cie_render1_build(%struct.gs_cie_render_s** %pcrd, %struct.gs_memory_s* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call14, i32* %code13, align 4, !tbaa !5
  %23 = load i32, i32* %code13, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.51

if.then.17:                                       ; preds = %if.then.12
  %24 = bitcast %struct.gs_cie_transform_proc3_s* %tpqr to i8*
  call void @llvm.lifetime.start(i64 40, i8* %24) #1
  %25 = bitcast %struct.gs_cie_transform_proc3_s* %tpqr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.gs_cie_transform_proc3_s* @bit_TransformPQR to i8*), i64 40, i32 8, i1 false), !tbaa.struct !28
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 2
  %27 = load i8*, i8** %dname, align 8, !tbaa !29
  %driver_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %tpqr, i32 0, i32 3
  store i8* %27, i8** %driver_name, align 8, !tbaa !30
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !15
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %call19 = call i32 @gs_cie_render1_initialize(%struct.gs_memory_s* %29, %struct.gs_cie_render_s* %30, i8* null, %struct.gs_vector3_s* @bit_WhitePoint, %struct.gs_vector3_s* null, %struct.gs_matrix3_s* null, %struct.gs_range3_s* @bit_RangePQR, %struct.gs_cie_transform_proc3_s* %tpqr, %struct.gs_matrix3_s* null, %struct.gs_cie_render_proc3_s* @bit_EncodeLMN, %struct.gs_range3_s* @bit_RangeLMN, %struct.gs_matrix3_s* @bit_MatrixABC, %struct.gs_cie_render_proc3_s* @bit_EncodeABC, %struct.gs_range3_s* null, %struct.gs_cie_render_table_s* @bit_RenderTable) #5
  store i32 %call19, i32* %code13, align 4, !tbaa !5
  %31 = load i32, i32* %code13, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %31, 0
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.17
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %crd_param_name.addr, align 8, !tbaa !1
  %34 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !15
  %call24 = call i32 @param_write_cie_render1(%struct.gs_param_list_s* %32, i8* %33, %struct.gs_cie_render_s* %34, %struct.gs_memory_s* %36) #5
  store i32 %call24, i32* %code13, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %37 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_cie_render_s* %37, null
  br i1 %tobool, label %if.then.26, label %if.end.48

if.then.26:                                       ; preds = %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  br label %do.cond

do.cond:                                          ; preds = %do.body.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %38, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %39 = load i64, i64* %ref_count, align 8, !tbaa !33
  %add = add nsw i64 %39, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !33
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %40 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc31 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %40, i32 0, i32 1
  %ref_count32 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 0
  %41 = load i64, i64* %ref_count32, align 8, !tbaa !33
  %tobool33 = icmp ne i64 %41, 0
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %do.end.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.body.35
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %42 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc39 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %42, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc39, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !46
  %44 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc40 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %44, i32 0, i32 1
  %memory41 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc40, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !47
  %46 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %47 = bitcast %struct.gs_cie_render_s* %46 to i8*
  call void %43(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.38
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  store %struct.gs_cie_render_s* null, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  br label %if.end.47

if.else:                                          ; preds = %do.end.30
  br label %do.body.44

do.body.44:                                       ; preds = %if.else
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %48 = bitcast %struct.gs_cie_transform_proc3_s* %tpqr to i8*
  call void @llvm.lifetime.end(i64 40, i8* %48) #1
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %if.then.12
  %49 = load i32, i32* %code13, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %49, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %50 = load i32, i32* %code13, align 4, !tbaa !5
  store i32 %50, i32* %ecode, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %51 = bitcast i32* %code13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.6
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %53, i32 0, i32 0
  %54 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs57, align 8, !tbaa !7
  %requested58 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %54, i32 0, i32 5
  %55 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested58, align 8, !tbaa !9
  %56 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %57 = load i8*, i8** getelementptr inbounds (%struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* @bit_TransformPQR, i32 0, i32 1), align 8, !tbaa !48
  %call59 = call i32 %55(%struct.gs_param_list_s* %56, i8* %57) #5
  %cmp60 = icmp sgt i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.82

if.then.62:                                       ; preds = %if.end.56
  %58 = bitcast i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %my_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* @bit_TransformPQR_proc, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %my_proc, align 8, !tbaa !1
  %59 = bitcast i8** %my_addr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !15
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 16
  %62 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !49
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !15
  %call66 = call i8* %62(%struct.gs_memory_s* %64, i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call66, i8** %my_addr, align 8, !tbaa !1
  %65 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i8*, i8** %my_addr, align 8, !tbaa !1
  %cmp68 = icmp eq i8* %66, null
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.then.62
  store i32 -25, i32* %code67, align 4, !tbaa !5
  br label %if.end.77

if.else.71:                                       ; preds = %if.then.62
  %67 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.start(i64 16, i8* %67) #1
  %68 = load i8*, i8** %my_addr, align 8, !tbaa !1
  %69 = bitcast i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %my_proc to i8*
  %call72 = call i8* @memcpy(i8* %68, i8* %69, i64 8) #7
  %70 = load i8*, i8** %my_addr, align 8, !tbaa !1
  %data73 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 0
  store i8* %70, i8** %data73, align 8, !tbaa !11
  %size74 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 1
  store i32 8, i32* %size74, align 4, !tbaa !13
  %persistent75 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 2
  store i32 1, i32* %persistent75, align 4, !tbaa !14
  %71 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %72 = load i8*, i8** getelementptr inbounds (%struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* @bit_TransformPQR, i32 0, i32 1), align 8, !tbaa !48
  %call76 = call i32 @param_write_string(%struct.gs_param_list_s* %71, i8* %72, %struct.gs_param_string_s* %as) #5
  store i32 %call76, i32* %code67, align 4, !tbaa !5
  %73 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.71, %if.then.70
  %74 = load i32, i32* %code67, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %74, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  %75 = load i32, i32* %code67, align 4, !tbaa !5
  store i32 %75, i32* %ecode, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.77
  %76 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i8** %my_addr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %my_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.56
  %79 = load i32, i32* %ecode, align 4, !tbaa !5
  %80 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  ret i32 %79
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_cie_render1_build(%struct.gs_cie_render_s**, %struct.gs_memory_s*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_cie_render1_initialize(%struct.gs_memory_s*, %struct.gs_cie_render_s*, i8*, %struct.gs_vector3_s*, %struct.gs_vector3_s*, %struct.gs_matrix3_s*, %struct.gs_range3_s*, %struct.gs_cie_transform_proc3_s*, %struct.gs_matrix3_s*, %struct.gs_cie_render_proc3_s*, %struct.gs_range3_s*, %struct.gs_matrix3_s*, %struct.gs_cie_render_proc3_s*, %struct.gs_range3_s*, %struct.gs_cie_render_table_s*) #3

declare i32 @param_write_cie_render1(%struct.gs_param_list_s*, i8*, %struct.gs_cie_render_s*, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @bit_TransformPQR_proc(i32 %index, double %in, %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_render_s* %pcrd, float* %out) #0 {
entry:
  %index.addr = alloca i32, align 4
  %in.addr = alloca double, align 8
  %pwbsd.addr = alloca %struct.gs_cie_wbsd_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %out.addr = alloca float*, align 8
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store double %in, double* %in.addr, align 8, !tbaa !52
  store %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_wbsd_s** %pwbsd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !52
  %cmp = fcmp ole double %0, 5.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %in.addr, align 8, !tbaa !52
  %mul = fmul double %1, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %in.addr, align 8, !tbaa !52
  %sub = fsub double %2, 5.000000e-01
  %mul1 = fmul double %sub, 5.000000e-01
  %div = fdiv double %mul1, 5.000000e-01
  %add = fadd double %div, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ %add, %cond.false ]
  %conv = fptrunc double %cond to float
  %3 = load float*, float** %out.addr, align 8, !tbaa !1
  store float %conv, float* %3, align 4, !tbaa !54
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal float @bit_EncodeLMN_proc(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !52
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !52
  %cmp = fcmp ole double %0, 5.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %in.addr, align 8, !tbaa !52
  %mul = fmul double %1, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %in.addr, align 8, !tbaa !52
  %sub = fsub double %2, 5.000000e-01
  %mul1 = fmul double %sub, 5.000000e-01
  %div = fdiv double %mul1, 5.000000e-01
  %add = fadd double %div, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ %add, %cond.false ]
  %conv = fptrunc double %cond to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define internal float @bit_EncodeABC_proc(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !52
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !52
  %cmp = fcmp ogt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %in.addr, align 8, !tbaa !52
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %1, %cond.true ], [ 0.000000e+00, %cond.false ]
  %call = call double @pow(double %cond, double 4.500000e-01) #7
  %conv = fptrunc double %call to float
  ret float %conv
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define internal signext i16 @bit_rt_proc(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !55
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !55
  %conv = zext i8 %0 to i32
  %mul = mul nsw i32 32760, %conv
  %div = sdiv i32 %mul, 255
  %conv1 = trunc i32 %div to i16
  ret i16 %conv1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!9 = !{!10, !2, i64 40}
!10 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!11 = !{!12, !2, i64 0}
!12 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!13 = !{!12, !6, i64 8}
!14 = !{!12, !6, i64 12}
!15 = !{!16, !2, i64 24}
!16 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !17, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !19, i64 96, !22, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !18, i64 928, !18, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !18, i64 968, !18, i64 976, !23, i64 984, !6, i64 1052, !6, i64 1056, !24, i64 1064, !2, i64 1104, !3, i64 1112, !26, i64 1120, !27, i64 1144}
!17 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !20, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !18, i64 704, !6, i64 712}
!20 = !{!"short", !3, i64 0}
!21 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!22 = !{!"gx_device_cached_colors_s", !18, i64 0, !18, i64 8}
!23 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!24 = !{!"gdev_space_params_s", !18, i64 0, !18, i64 8, !25, i64 16, !6, i64 32, !3, i64 36}
!25 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !18, i64 8}
!26 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!28 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 32, i64 8, !1}
!29 = !{!16, !2, i64 16}
!30 = !{!31, !2, i64 32}
!31 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !32, i64 16, !2, i64 32}
!32 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!33 = !{!34, !18, i64 8}
!34 = !{!"gs_cie_render_s", !3, i64 0, !17, i64 8, !18, i64 32, !2, i64 40, !35, i64 48, !38, i64 72, !39, i64 112, !31, i64 136, !38, i64 176, !40, i64 216, !39, i64 240, !38, i64 264, !40, i64 304, !39, i64 328, !41, i64 352, !39, i64 416, !39, i64 440, !38, i64 464, !3, i64 504, !38, i64 516, !36, i64 556, !36, i64 568, !44, i64 584}
!35 = !{!"gs_cie_wb_s", !36, i64 0, !36, i64 12}
!36 = !{!"gs_vector3_s", !37, i64 0, !37, i64 4, !37, i64 8}
!37 = !{!"float", !3, i64 0}
!38 = !{!"gs_matrix3_s", !36, i64 0, !36, i64 12, !36, i64 24, !6, i64 36}
!39 = !{!"gs_range3_s", !3, i64 0}
!40 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!41 = !{!"gs_cie_render_table_s", !42, i64 0, !43, i64 32}
!42 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!43 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!44 = !{!"", !45, i64 0, !3, i64 24840, !3, i64 37368, !6, i64 45720}
!45 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!46 = !{!34, !2, i64 24}
!47 = !{!34, !2, i64 16}
!48 = !{!31, !2, i64 8}
!49 = !{!50, !2, i64 136}
!50 = !{!"gs_memory_s", !2, i64 0, !51, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!51 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !3, i64 0}
!54 = !{!37, !37, i64 0}
!55 = !{!3, !3, i64 0}
