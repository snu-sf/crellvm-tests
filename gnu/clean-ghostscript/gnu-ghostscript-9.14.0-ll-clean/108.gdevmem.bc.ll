; ModuleID = './gdevmem.bc'
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
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gs_point_s = type { double, double }
%union.s_ = type { i64 }
%struct.gs_font_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@.str = private unnamed_addr constant [17 x i8] c"gx_device_memory\00", align 1
@st_device_memory = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 2792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_memory_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_memory_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@b_w_palette_string = internal constant [6 x i8] c"\FF\FF\FF\00\00\00", align 1
@mem_mono_b_w_palette = constant %struct.gs_const_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b_w_palette_string, i32 0, i32 0), i32 6 }, align 8
@w_b_palette_string = internal constant [6 x i8] c"\00\00\00\FF\FF\FF", align 1
@mem_mono_w_b_palette = constant %struct.gs_const_string_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @w_b_palette_string, i32 0, i32 0), i32 6 }, align 8
@mem_x_device = external constant %struct.gx_device_memory_s, align 8
@mem_devices = internal constant [65 x %struct.gx_device_memory_s*] [%struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mono_device, %struct.gx_device_memory_s* @mem_mapped2_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mapped4_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mapped8_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true16_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true24_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true32_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true40_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true48_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true56_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true64_device], align 16
@mem_word_devices = internal constant [65 x %struct.gx_device_memory_s*] [%struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mono_device, %struct.gx_device_memory_s* @mem_mapped2_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mapped4_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_mapped8_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true24_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true32_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true40_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true48_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true56_word_device, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* null, %struct.gx_device_memory_s* @mem_true64_word_device], align 16
@mem_mono_device = external constant %struct.gx_device_memory_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"mem_open\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gdev_mem_open_scan_lines\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mem_close\00", align 1
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@mem_mapped2_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped4_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped8_device = external constant %struct.gx_device_memory_s, align 8
@mem_true16_device = external constant %struct.gx_device_memory_s, align 8
@mem_true24_device = external constant %struct.gx_device_memory_s, align 8
@mem_true32_device = external constant %struct.gx_device_memory_s, align 8
@mem_true40_device = external constant %struct.gx_device_memory_s, align 8
@mem_true48_device = external constant %struct.gx_device_memory_s, align 8
@mem_true56_device = external constant %struct.gx_device_memory_s, align 8
@mem_true64_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped2_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped4_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped8_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true24_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true32_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true40_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true48_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true56_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true64_word_device = external constant %struct.gx_device_memory_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_memory_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.8
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 3
  %8 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 1736, i32 %sub, %struct.enum_ptr_s* %8, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %9) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %foreign_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 47
  %11 = load i32, i32* %foreign_bits, align 4, !tbaa !9
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 45
  %13 = load i8*, i8** %base, align 8, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %13, %cond.false ]
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %14, i32 0, i32 0
  store i8* %cond, i8** %ptr, align 8, !tbaa !32
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %foreign_line_pointers = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 49
  %16 = load i32, i32* %foreign_line_pointers, align 4, !tbaa !34
  %tobool2 = icmp ne i32 %16, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %sw.bb.1
  br label %cond.end.5

cond.false.4:                                     ; preds = %sw.bb.1
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 52
  %18 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %19 = bitcast i8** %18 to i8*
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i8* [ null, %cond.true.3 ], [ %19, %cond.false.4 ]
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %cond6, i8** %ptr7, align 8, !tbaa !32
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %entry
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gx_device_memory_s*
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !36
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr9, align 8, !tbaa !32
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gx_device_memory_s*
  %palette10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 53
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette10, i32 0, i32 1
  %27 = load i32, i32* %size11, align 4, !tbaa !37
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 1
  store i32 %27, i32* %size12, align 4, !tbaa !38
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.8, %cond.end.5, %cond.end, %sw.default
  %29 = bitcast %struct.gx_device_memory_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %30
}

; Function Attrs: nounwind uwtable
define internal void @device_memory_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_device_memory_s*, align 8
  %base_old = alloca i8*, align 8
  %reloc = alloca i64, align 8
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %foreign_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 47
  %4 = load i32, i32* %foreign_bits, align 4, !tbaa !9
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast i8** %base_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 45
  %7 = load i8*, i8** %base, align 8, !tbaa !31
  store i8* %7, i8** %base_old, align 8, !tbaa !1
  %8 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 14
  %12 = load i32, i32* %height, align 4, !tbaa !39
  store i32 %12, i32* %h, align 4, !tbaa !5
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 17
  %14 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %16 = load i32, i32* %num_components, align 4, !tbaa !41
  %17 = load i32, i32* %h, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %16
  store i32 %mul, i32* %h, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gc_state_s* %18 to %struct.gc_procs_common_s**
  %20 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %19, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %20, i32 0, i32 0
  %21 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !42
  %22 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to %struct.gx_device_memory_s*
  %base3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 45
  %24 = load i8*, i8** %base3, align 8, !tbaa !31
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %21(i8* %24, %struct.gc_state_s* %25) #3
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gx_device_memory_s*
  %base4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 45
  store i8* %call, i8** %base4, align 8, !tbaa !31
  %28 = load i8*, i8** %base_old, align 8, !tbaa !1
  %29 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %base5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %29, i32 0, i32 45
  %30 = load i8*, i8** %base5, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %reloc, align 8, !tbaa !44
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %y, align 4, !tbaa !5
  %32 = load i32, i32* %h, align 4, !tbaa !5
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i64, i64* %reloc, align 8, !tbaa !44
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 52
  %36 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %idx.neg = sub i64 0, %33
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.neg
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %line_ptrs6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 52
  %40 = load i8**, i8*** %line_ptrs6, align 8, !tbaa !35
  %41 = bitcast i8** %40 to i8*
  %42 = load i64, i64* %reloc, align 8, !tbaa !44
  %idx.neg7 = sub i64 0, %42
  %add.ptr8 = getelementptr inbounds i8, i8* %41, i64 %idx.neg7
  %43 = bitcast i8* %add.ptr8 to i8**
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %line_ptrs9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 52
  store i8** %43, i8*** %line_ptrs9, align 8, !tbaa !35
  %45 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i8** %base_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %if.end.17

if.else:                                          ; preds = %entry
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mptr, align 8, !tbaa !1
  %foreign_line_pointers = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 49
  %50 = load i32, i32* %foreign_line_pointers, align 4, !tbaa !34
  %tobool10 = icmp ne i32 %50, 0
  br i1 %tobool10, label %if.end.16, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr12 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr12, align 8, !tbaa !42
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct.gx_device_memory_s*
  %line_ptrs13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 52
  %57 = load i8**, i8*** %line_ptrs13, align 8, !tbaa !35
  %58 = bitcast i8** %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call14 = call i8* %54(i8* %58, %struct.gc_state_s* %59) #3
  %60 = bitcast i8* %call14 to i8**
  %61 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %62 = bitcast i8* %61 to %struct.gx_device_memory_s*
  %line_ptrs15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 52
  store i8** %60, i8*** %line_ptrs15, align 8, !tbaa !35
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.end
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %64 = bitcast %struct.gc_state_s* %63 to %struct.gc_procs_common_s**
  %65 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %64, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %65, i32 0, i32 2
  %66 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !45
  %67 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %68 = bitcast i8* %67 to %struct.gx_device_memory_s*
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 53
  %69 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %66(%struct.gs_const_string_s* %palette, %struct.gc_state_s* %69) #3
  %70 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !46
  %71 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %70(i8* %71, i32 1736, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %72) #3
  %73 = bitcast %struct.gx_device_memory_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %bits_per_pixel) #0 {
entry:
  %bits_per_pixel.addr = alloca i32, align 4
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65 x %struct.gx_device_memory_s*], [65 x %struct.gx_device_memory_s*]* @mem_devices, i32 0, i64 %idxprom
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %arrayidx, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ @mem_x_device, %cond.true ], [ %2, %cond.false ]
  ret %struct.gx_device_memory_s* %cond
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_memory_s* @gdev_mem_word_device_for_bits(i32 %bits_per_pixel) #0 {
entry:
  %bits_per_pixel.addr = alloca i32, align 4
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %bits_per_pixel.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65 x %struct.gx_device_memory_s*], [65 x %struct.gx_device_memory_s*]* @mem_word_devices, i32 0, i64 %idxprom
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %arrayidx, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ null, %cond.true ], [ %2, %cond.false ]
  ret %struct.gx_device_memory_s* %cond
}

; Function Attrs: nounwind uwtable
define i32 @gs_device_is_memory(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bits_per_pixel = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !47
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %bits_per_pixel, align 4, !tbaa !5
  %3 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %4) #3
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_memory_s* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 30
  %7 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !49
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 42
  %draw_thin_line3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 30
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line3, align 8, !tbaa !50
  %cmp4 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %7, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %call6 = call %struct.gx_device_memory_s* @gdev_mem_word_device_for_bits(i32 %10) #3
  store %struct.gx_device_memory_s* %call6, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gx_device_memory_s* %11, null
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %draw_thin_line10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 30
  %13 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line10, align 8, !tbaa !49
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 42
  %draw_thin_line12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 30
  %15 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line12, align 8, !tbaa !50
  %cmp13 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %16 = phi i1 [ false, %if.end ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then
  %17 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gs_make_mem_device(%struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s* %mdproto, %struct.gs_memory_s* %mem, i32 %page_device, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %mdproto.addr = alloca %struct.gx_device_memory_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %page_device.addr = alloca i32, align 4
  %target.addr = alloca %struct.gx_device_s*, align 8
  %cv = alloca [64 x i16], align 16
  %k = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdproto, %struct.gx_device_memory_s** %mdproto.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %page_device, i32* %page_device.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_memory_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_memory_s* %2 to %struct.gx_device_s*
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* %3, %struct.gs_memory_s* %4, i32 1) #3
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 4
  store %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_memory to %struct.gs_memory_struct_type_s*), %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !51
  %6 = load i32, i32* %page_device.addr, align 4, !tbaa !5
  switch i32 %6, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !52
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 42
  %get_page_device3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device3, align 8, !tbaa !52
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %9, null
  br i1 %cmp, label %if.then, label %if.else.16

if.then:                                          ; preds = %sw.epilog
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %11 = load i16, i16* %depth, align 2, !tbaa !53
  %conv = zext i16 %11 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 12
  %black = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 0
  store i64 1, i64* %black, align 8, !tbaa !54
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cached_colors7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 12
  %white = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors7, i32 0, i32 1
  store i64 0, i64* %white, align 8, !tbaa !55
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cached_colors8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 12
  %black9 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors8, i32 0, i32 0
  store i64 0, i64* %black9, align 8, !tbaa !54
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 11
  %depth11 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 3
  %16 = load i16, i16* %depth11, align 2, !tbaa !53
  %conv12 = zext i16 %16 to i32
  %shl = shl i32 1, %conv12
  %sub = sub nsw i32 %shl, 1
  %conv13 = sext i32 %sub to i64
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cached_colors14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 12
  %white15 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors14, i32 0, i32 1
  store i64 %conv13, i64* %white15, align 8, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 40
  store i32 0, i32* %graphics_type_tag, align 4, !tbaa !56
  br label %if.end.24

if.else.16:                                       ; preds = %sw.epilog
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_memory_s* %19 to %struct.gx_device_forward_s*
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %20, %struct.gx_device_s* %21) #3
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_memory_s* %22 to %struct.gx_device_forward_s*
  call void @gx_device_forward_color_procs(%struct.gx_device_forward_s* %23) #3
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_memory_s* %24 to %struct.gx_device_s*
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_procs(%struct.gx_device_s* %25, %struct.gx_device_s* %26) #3
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %cached_colors17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 12
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cached_colors18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 12
  %29 = bitcast %struct.gx_device_cached_colors_s* %cached_colors17 to i8*
  %30 = bitcast %struct.gx_device_cached_colors_s* %cached_colors18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !57
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 40
  %32 = load i32, i32* %graphics_type_tag19, align 4, !tbaa !58
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag20 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 40
  store i32 %32, i32* %graphics_type_tag20, align 4, !tbaa !56
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 42
  %put_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 64
  %35 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image, align 8, !tbaa !59
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 42
  %put_image23 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs22, i32 0, i32 64
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %35, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image23, align 8, !tbaa !60
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.16, %if.end
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 11
  %depth26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 3
  %38 = load i16, i16* %depth26, align 2, !tbaa !53
  %conv27 = zext i16 %38 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %if.end.24
  %39 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %39) #2
  %40 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp31 = icmp ne %struct.gx_device_s* %41, null
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.30
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %42 = load i32, i32* %k, align 4, !tbaa !5
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info34, i32 0, i32 1
  %44 = load i32, i32* %num_components, align 4, !tbaa !61
  %cmp35 = icmp slt i32 %42, %44
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %if.then.30
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp38 = icmp eq %struct.gx_device_s* %48, null
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.37
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs40, i32 0, i32 51
  %50 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !63
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_memory_s* %51 to %struct.gx_device_s*
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call = call i64 %50(%struct.gx_device_s* %52, i16* %arraydecay) #3
  %cmp41 = icmp ne i64 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.37
  %53 = phi i1 [ true, %if.end.37 ], [ %cmp41, %lor.rhs ]
  %lor.ext = zext i1 %53 to i32
  call void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %47, i32 %lor.ext) #3
  %54 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %55) #2
  br label %if.end.43

if.end.43:                                        ; preds = %lor.end, %if.end.24
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_memory_s* %56 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %57) #3
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gx_device_memory_s* %58 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %59) #3
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %band_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 68
  store i32 0, i32* %band_y, align 4, !tbaa !64
  ret void
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

declare %struct.gx_device_s* @gx_default_get_page_device(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

declare void @gx_device_forward_color_procs(%struct.gx_device_forward_s*) #1

declare void @gx_device_copy_color_procs(%struct.gx_device_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %dev, i32 %black_is_1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %black_is_1.addr = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %black_is_1, i32* %black_is_1.addr, align 4, !tbaa !5
  %0 = load i32, i32* %black_is_1.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 53
  %2 = bitcast %struct.gs_const_string_s* %palette to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gs_const_string_s* @mem_mono_b_w_palette to i8*), i64 16, i32 8, i1 false), !tbaa.struct !65
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %palette1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 53
  %4 = bitcast %struct.gs_const_string_s* %palette1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.gs_const_string_s* @mem_mono_w_b_palette to i8*), i64 16, i32 8, i1 false), !tbaa.struct !65
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_make_mem_device_with_copydevice(%struct.gx_device_memory_s** %ppdev, %struct.gx_device_memory_s* %mdproto, %struct.gs_memory_s* %mem, i32 %page_device, %struct.gx_device_s* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdev.addr = alloca %struct.gx_device_memory_s**, align 8
  %mdproto.addr = alloca %struct.gx_device_memory_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %page_device.addr = alloca i32, align 4
  %target.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cv = alloca [3 x i16], align 2
  store %struct.gx_device_memory_s** %ppdev, %struct.gx_device_memory_s*** %ppdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdproto, %struct.gx_device_memory_s** %mdproto.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %page_device, i32* %page_device.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.gx_device_memory_s** %pdev to %struct.gx_device_s**
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_memory_s* %4 to %struct.gx_device_s*
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %3, %struct.gx_device_s* %5, %struct.gs_memory_s* %6) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load i32, i32* %page_device.addr, align 4, !tbaa !5
  switch i32 %9, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end.3
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !52
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.3
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 42
  %get_page_device6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device6, align 8, !tbaa !52
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.3, %sw.bb.4, %sw.bb
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_device_s* %12, null
  br i1 %cmp7, label %if.then.8, label %if.else.22

if.then.8:                                        ; preds = %sw.epilog
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !53
  %conv = zext i16 %14 to i32
  %cmp9 = icmp eq i32 %conv, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 12
  %black = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 0
  store i64 1, i64* %black, align 8, !tbaa !54
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %cached_colors12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 12
  %white = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors12, i32 0, i32 1
  store i64 0, i64* %white, align 8, !tbaa !55
  br label %if.end.21

if.else:                                          ; preds = %if.then.8
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %cached_colors13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 12
  %black14 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors13, i32 0, i32 0
  store i64 0, i64* %black14, align 8, !tbaa !54
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %color_info15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 11
  %depth16 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info15, i32 0, i32 3
  %19 = load i16, i16* %depth16, align 2, !tbaa !53
  %conv17 = zext i16 %19 to i32
  %shl = shl i32 1, %conv17
  %sub = sub nsw i32 %shl, 1
  %conv18 = sext i32 %sub to i64
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %cached_colors19 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 12
  %white20 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors19, i32 0, i32 1
  store i64 %conv18, i64* %white20, align 8, !tbaa !55
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.11
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 40
  store i32 0, i32* %graphics_type_tag, align 4, !tbaa !56
  br label %if.end.27

if.else.22:                                       ; preds = %sw.epilog
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_memory_s* %22 to %struct.gx_device_forward_s*
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %23, %struct.gx_device_s* %24) #3
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_memory_s* %25 to %struct.gx_device_forward_s*
  call void @gx_device_forward_color_procs(%struct.gx_device_forward_s* %26) #3
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_memory_s* %27 to %struct.gx_device_s*
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_procs(%struct.gx_device_s* %28, %struct.gx_device_s* %29) #3
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %cached_colors23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 12
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cached_colors24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 12
  %32 = bitcast %struct.gx_device_cached_colors_s* %cached_colors23 to i8*
  %33 = bitcast %struct.gx_device_cached_colors_s* %cached_colors24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !57
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 40
  %35 = load i32, i32* %graphics_type_tag25, align 4, !tbaa !58
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %graphics_type_tag26 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 40
  store i32 %35, i32* %graphics_type_tag26, align 4, !tbaa !56
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %if.end.21
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %color_info28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 11
  %depth29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info28, i32 0, i32 3
  %38 = load i16, i16* %depth29, align 2, !tbaa !53
  %conv30 = zext i16 %38 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.27
  %39 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %39) #2
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !62
  %arrayidx34 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 0, i16* %arrayidx34, align 2, !tbaa !62
  %arrayidx35 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 0, i16* %arrayidx35, align 2, !tbaa !62
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp36 = icmp eq %struct.gx_device_s* %41, null
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.33
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs38, i32 0, i32 51
  %43 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !63
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_memory_s* %44 to %struct.gx_device_s*
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call39 = call i64 %43(%struct.gx_device_s* %45, i16* %arraydecay) #3
  %cmp40 = icmp ne i64 %call39, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.33
  %46 = phi i1 [ true, %if.then.33 ], [ %cmp40, %lor.rhs ]
  %lor.ext = zext i1 %46 to i32
  call void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %40, i32 %lor.ext) #3
  %47 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %47) #2
  br label %if.end.42

if.end.42:                                        ; preds = %lor.end, %if.end.27
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %49 = bitcast %struct.gx_device_memory_s* %48 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %49) #3
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_memory_s* %50 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %51) #3
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %band_y = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 68
  store i32 0, i32* %band_y, align 4, !tbaa !64
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %54 = load %struct.gx_device_memory_s**, %struct.gx_device_memory_s*** %ppdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %53, %struct.gx_device_memory_s** %54, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.2, %if.then
  %55 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_make_mem_mono_device_with_copydevice(%struct.gx_device_memory_s** %ppdev, %struct.gs_memory_s* %mem, %struct.gx_device_s* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %ppdev.addr = alloca %struct.gx_device_memory_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s** %ppdev, %struct.gx_device_memory_s*** %ppdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.gx_device_memory_s** %pdev to %struct.gx_device_s**
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %3, %struct.gx_device_s* bitcast (%struct.gx_device_memory_s* @mem_mono_device to %struct.gx_device_s*), %struct.gs_memory_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !52
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_memory_s* %8 to %struct.gx_device_forward_s*
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %9, %struct.gx_device_s* %10) #3
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !66
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  call void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %12, i32 1) #3
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_memory_s* %13 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %14) #3
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_memory_s* %15 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %16) #3
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pdev, align 8, !tbaa !1
  %18 = load %struct.gx_device_memory_s**, %struct.gx_device_memory_s*** %ppdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %17, %struct.gx_device_memory_s** %18, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %19 = bitcast %struct.gx_device_memory_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

; Function Attrs: nounwind uwtable
define void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %dev, %struct.gs_memory_s* %mem, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_memory_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_memory_s* @mem_mono_device to %struct.gx_device_s*), %struct.gs_memory_s* %2, i32 1) #3
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !52
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_memory_s* %4 to %struct.gx_device_forward_s*
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %5, %struct.gx_device_s* %6) #3
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_memory_s* %7 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %8, i32 1) #3
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 44
  store i32 %call, i32* %raster, align 4, !tbaa !67
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  call void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %10, i32 1) #3
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_memory_s* %11 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %12) #3
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_memory_s* %13 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %14) #3
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !66
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !68
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %17, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 40
  %19 = load i32, i32* %graphics_type_tag, align 4, !tbaa !58
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ]
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 40
  store i32 %cond, i32* %graphics_type_tag3, align 4, !tbaa !56
  ret void
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #1

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %dev, i32 %width, i32 %height, i64* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %psize.addr = alloca i64*, align 8
  %num_planes = alloca i32, align 4
  %plane1 = alloca %struct.gx_render_plane_s, align 4
  %planes = alloca %struct.gx_render_plane_s*, align 8
  %size = alloca i64, align 8
  %pi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64* %psize, i64** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 17
  %2 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !41
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %num_planes, align 4, !tbaa !5
  %5 = bitcast %struct.gx_render_plane_s* %plane1 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #2
  %6 = bitcast %struct.gx_render_plane_s** %planes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %num_planes, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %planes2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 50
  %arraydecay = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes2, i32 0, i32 0
  store %struct.gx_render_plane_s* %arraydecay, %struct.gx_render_plane_s** %planes, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %cond.end
  store %struct.gx_render_plane_s* %plane1, %struct.gx_render_plane_s** %planes, align 8, !tbaa !1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 3
  %12 = load i16, i16* %depth, align 2, !tbaa !53
  %conv = zext i16 %12 to i32
  %depth4 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %plane1, i32 0, i32 0
  store i32 %conv, i32* %depth4, align 4, !tbaa !69
  store i32 1, i32* %num_planes, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 0, i64* %size, align 8, !tbaa !44
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %pi, align 4, !tbaa !5
  %14 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %width.addr, align 4, !tbaa !5
  %16 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %planes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %17, i64 %idxprom
  %depth6 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %depth6, align 4, !tbaa !69
  %mul = mul nsw i32 %15, %18
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 15
  %20 = load i32, i32* %pad, align 4, !tbaa !71
  %shl = shl i32 %20, 3
  %add = add nsw i32 %mul, %shl
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 16
  %22 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  %cmp7 = icmp slt i32 %22, 3
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %for.body
  br label %cond.end.12

cond.false.10:                                    ; preds = %for.body
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 16
  %24 = load i32, i32* %log2_align_mod11, align 4, !tbaa !72
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.9
  %cond13 = phi i32 [ 3, %cond.true.9 ], [ %24, %cond.false.10 ]
  %shl14 = shl i32 8, %cond13
  %sub = sub nsw i32 %shl14, 1
  %add15 = add nsw i32 %add, %sub
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 16
  %26 = load i32, i32* %log2_align_mod16, align 4, !tbaa !72
  %cmp17 = icmp slt i32 %26, 3
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.12
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end.12
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod21 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 16
  %28 = load i32, i32* %log2_align_mod21, align 4, !tbaa !72
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i32 [ 3, %cond.true.19 ], [ %28, %cond.false.20 ]
  %add24 = add nsw i32 %cond23, 3
  %shr = ashr i32 %add15, %add24
  %29 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %29, i32 0, i32 16
  %30 = load i32, i32* %log2_align_mod25, align 4, !tbaa !72
  %cmp26 = icmp slt i32 %30, 3
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.22
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.end.22
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 16
  %32 = load i32, i32* %log2_align_mod30, align 4, !tbaa !72
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ 3, %cond.true.28 ], [ %32, %cond.false.29 ]
  %shl33 = shl i32 %shr, %cond32
  %conv34 = zext i32 %shl33 to i64
  %33 = load i64, i64* %size, align 8, !tbaa !44
  %add35 = add i64 %33, %conv34
  store i64 %add35, i64* %size, align 8, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %34 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %for.end
  %36 = load i64, i64* %size, align 8, !tbaa !44
  %37 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv39 = sext i32 %37 to i64
  %div = udiv i64 -9, %conv39
  %cmp40 = icmp ugt i64 %36, %div
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.end
  %38 = load i64, i64* %size, align 8, !tbaa !44
  %39 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv45 = sext i32 %39 to i64
  %mul46 = mul i64 %38, %conv45
  %add47 = add i64 %mul46, 7
  %and = and i64 %add47, -8
  store i64 %and, i64* %size, align 8, !tbaa !44
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 16
  %41 = load i32, i32* %log2_align_mod48, align 4, !tbaa !72
  %cmp49 = icmp sgt i32 %41, 3
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.44
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod52 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 16
  %43 = load i32, i32* %log2_align_mod52, align 4, !tbaa !72
  %shl53 = shl i32 1, %43
  %conv54 = sext i32 %shl53 to i64
  %44 = load i64, i64* %size, align 8, !tbaa !44
  %add55 = add i64 %44, %conv54
  store i64 %add55, i64* %size, align 8, !tbaa !44
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.44
  %45 = load i64, i64* %size, align 8, !tbaa !44
  %46 = load i64*, i64** %psize.addr, align 8, !tbaa !1
  store i64 %45, i64* %46, align 8, !tbaa !44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.42
  %47 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_render_plane_s** %planes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gx_render_plane_s* %plane1 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %50) #2
  %51 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i64 @gdev_mem_line_ptrs_size(%struct.gx_device_memory_s* %dev, i32 %width, i32 %height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 17
  %2 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !41
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 1, %cond.false ]
  %conv1 = sext i32 %cond to i64
  %mul2 = mul i64 %mul, %conv1
  ret i64 %mul2
}

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %dev, i32 %width, i32 %height, i64* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %psize.addr = alloca i64*, align 8
  %bits_size = alloca i64, align 8
  %line_ptrs_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64* %psize, i64** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i64* %bits_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %line_ptrs_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %3 = load i32, i32* %width.addr, align 4, !tbaa !5
  %4 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i64 @gdev_mem_line_ptrs_size(%struct.gx_device_memory_s* %2, i32 %3, i32 %4) #3
  store i64 %call, i64* %line_ptrs_size, align 8, !tbaa !44
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %6 = load i32, i32* %width.addr, align 4, !tbaa !5
  %7 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call1 = call i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %5, i32 %6, i32 %7, i64* %bits_size) #3
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %bits_size, align 8, !tbaa !44
  %9 = load i64, i64* %line_ptrs_size, align 8, !tbaa !44
  %sub = sub i64 -1, %9
  %cmp2 = icmp ugt i64 %8, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, i64* %bits_size, align 8, !tbaa !44
  %11 = load i64, i64* %line_ptrs_size, align 8, !tbaa !44
  %add = add i64 %10, %11
  %12 = load i64*, i64** %psize.addr, align 8, !tbaa !1
  store i64 %add, i64* %12, align 8, !tbaa !44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i64* %line_ptrs_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i64* %bits_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_max_height(%struct.gx_device_memory_s* %dev, i32 %width, i64 %size, i32 %page_uses_transparency) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %width.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %page_uses_transparency.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %max_height = alloca i64, align 8
  %data_size = alloca i64, align 8
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i64 %size, i64* %size.addr, align 8, !tbaa !44
  store i32 %page_uses_transparency, i32* %page_uses_transparency.addr, align 4, !tbaa !5
  %0 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %max_height to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %data_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %page_uses_transparency.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !tbaa !44
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth, align 2, !tbaa !53
  %conv = zext i16 %7 to i32
  %mul = mul nsw i32 %5, %conv
  %8 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 %8, 8
  %mul2 = mul nsw i32 %mul1, 5
  %mul3 = mul nsw i32 3, %mul2
  %add = add nsw i32 %mul, %mul3
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 15
  %10 = load i32, i32* %pad, align 4, !tbaa !71
  %shl = shl i32 %10, 3
  %add4 = add nsw i32 %add, %shl
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 16
  %12 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  %cmp = icmp slt i32 %12, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 16
  %14 = load i32, i32* %log2_align_mod6, align 4, !tbaa !72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %14, %cond.false ]
  %shl7 = shl i32 8, %cond
  %sub = sub nsw i32 %shl7, 1
  %add8 = add nsw i32 %add4, %sub
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 16
  %16 = load i32, i32* %log2_align_mod9, align 4, !tbaa !72
  %cmp10 = icmp slt i32 %16, 3
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 16
  %18 = load i32, i32* %log2_align_mod14, align 4, !tbaa !72
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ 3, %cond.true.12 ], [ %18, %cond.false.13 ]
  %add17 = add nsw i32 %cond16, 3
  %shr = ashr i32 %add8, %add17
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod18 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 16
  %20 = load i32, i32* %log2_align_mod18, align 4, !tbaa !72
  %cmp19 = icmp slt i32 %20, 3
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.15
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.15
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 16
  %22 = load i32, i32* %log2_align_mod23, align 4, !tbaa !72
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i32 [ 3, %cond.true.21 ], [ %22, %cond.false.22 ]
  %shl26 = shl i32 %shr, %cond25
  %conv27 = zext i32 %shl26 to i64
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 17
  %24 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.end.24
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 1
  %26 = load i32, i32* %num_components, align 4, !tbaa !41
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end.24
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i32 [ %26, %cond.true.29 ], [ 1, %cond.false.31 ]
  %conv34 = sext i32 %cond33 to i64
  %mul35 = mul i64 8, %conv34
  %add36 = add i64 %conv27, %mul35
  %div = udiv i64 %4, %add36
  store i64 %div, i64* %max_height, align 8, !tbaa !44
  %27 = load i64, i64* %max_height, align 8, !tbaa !44
  %cmp37 = icmp ult i64 %27, 2147483647
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.32
  %28 = load i64, i64* %max_height, align 8, !tbaa !44
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end.32
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i64 [ %28, %cond.true.39 ], [ 2147483647, %cond.false.40 ]
  %conv43 = trunc i64 %cond42 to i32
  store i32 %conv43, i32* %height, align 4, !tbaa !5
  br label %if.end.106

if.else:                                          ; preds = %entry
  %29 = load i64, i64* %size.addr, align 8, !tbaa !44
  %30 = load i32, i32* %width.addr, align 4, !tbaa !5
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info44 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 11
  %depth45 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info44, i32 0, i32 3
  %32 = load i16, i16* %depth45, align 2, !tbaa !53
  %conv46 = zext i16 %32 to i32
  %mul47 = mul nsw i32 %30, %conv46
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %pad48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 15
  %34 = load i32, i32* %pad48, align 4, !tbaa !71
  %shl49 = shl i32 %34, 3
  %add50 = add nsw i32 %mul47, %shl49
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod51 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 16
  %36 = load i32, i32* %log2_align_mod51, align 4, !tbaa !72
  %cmp52 = icmp slt i32 %36, 3
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %if.else
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.else
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 16
  %38 = load i32, i32* %log2_align_mod56, align 4, !tbaa !72
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.54
  %cond58 = phi i32 [ 3, %cond.true.54 ], [ %38, %cond.false.55 ]
  %shl59 = shl i32 8, %cond58
  %sub60 = sub nsw i32 %shl59, 1
  %add61 = add nsw i32 %add50, %sub60
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 16
  %40 = load i32, i32* %log2_align_mod62, align 4, !tbaa !72
  %cmp63 = icmp slt i32 %40, 3
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.57
  br label %cond.end.68

cond.false.66:                                    ; preds = %cond.end.57
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod67 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 16
  %42 = load i32, i32* %log2_align_mod67, align 4, !tbaa !72
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.66, %cond.true.65
  %cond69 = phi i32 [ 3, %cond.true.65 ], [ %42, %cond.false.66 ]
  %add70 = add nsw i32 %cond69, 3
  %shr71 = ashr i32 %add61, %add70
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod72 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 16
  %44 = load i32, i32* %log2_align_mod72, align 4, !tbaa !72
  %cmp73 = icmp slt i32 %44, 3
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.68
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end.68
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod77 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 16
  %46 = load i32, i32* %log2_align_mod77, align 4, !tbaa !72
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i32 [ 3, %cond.true.75 ], [ %46, %cond.false.76 ]
  %shl80 = shl i32 %shr71, %cond79
  %conv81 = zext i32 %shl80 to i64
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %is_planar82 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 17
  %48 = load i32, i32* %is_planar82, align 4, !tbaa !40
  %tobool83 = icmp ne i32 %48, 0
  br i1 %tobool83, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %cond.end.78
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info85 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 11
  %num_components86 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info85, i32 0, i32 1
  %50 = load i32, i32* %num_components86, align 4, !tbaa !41
  br label %cond.end.88

cond.false.87:                                    ; preds = %cond.end.78
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.84
  %cond89 = phi i32 [ %50, %cond.true.84 ], [ 1, %cond.false.87 ]
  %conv90 = sext i32 %cond89 to i64
  %mul91 = mul i64 8, %conv90
  %add92 = add i64 %conv81, %mul91
  %div93 = udiv i64 %29, %add92
  store i64 %div93, i64* %max_height, align 8, !tbaa !44
  %51 = load i64, i64* %max_height, align 8, !tbaa !44
  %cmp94 = icmp ult i64 %51, 2147483647
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.end.88
  %52 = load i64, i64* %max_height, align 8, !tbaa !44
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.end.88
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.96
  %cond99 = phi i64 [ %52, %cond.true.96 ], [ 2147483647, %cond.false.97 ]
  %conv100 = trunc i64 %cond99 to i32
  store i32 %conv100, i32* %height, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.98
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %54 = load i32, i32* %width.addr, align 4, !tbaa !5
  %55 = load i32, i32* %height, align 4, !tbaa !5
  %call = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %53, i32 %54, i32 %55, i64* %data_size) #3
  %56 = load i64, i64* %data_size, align 8, !tbaa !44
  %57 = load i64, i64* %size.addr, align 8, !tbaa !44
  %cmp101 = icmp ule i64 %56, %57
  br i1 %cmp101, label %if.then.103, label %if.end

if.then.103:                                      ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %58 = load i32, i32* %height, align 4, !tbaa !5
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %height, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %59 = load i64, i64* %data_size, align 8, !tbaa !44
  %60 = load i64, i64* %size.addr, align 8, !tbaa !44
  %cmp104 = icmp ugt i64 %59, %60
  br i1 %cmp104, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.103
  br label %if.end.106

if.end.106:                                       ; preds = %do.end, %cond.end.41
  %61 = load i32, i32* %height, align 4, !tbaa !5
  %62 = bitcast i64* %data_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i64* %max_height to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @mem_open(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 17
  %4 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !73
  %call = call i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s* %5, i32 %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s* %mdev, i32 %setup_height) #0 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %setup_height.addr = alloca i32, align 4
  %line_pointers_adjacent = alloca i32, align 4
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %align = alloca i32, align 4
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i32 %setup_height, i32* %setup_height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %line_pointers_adjacent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %line_pointers_adjacent, align 4, !tbaa !5
  %1 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 14
  %5 = load i32, i32* %height, align 4, !tbaa !39
  %cmp1 = icmp sgt i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 46
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !74
  %cmp2 = icmp ne %struct.gs_memory_s* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = bitcast i32* %align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !75
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height4, align 4, !tbaa !39
  %call = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %9, i32 %11, i32 %13, i64* %size) #3
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.3
  %14 = load i64, i64* %size, align 8, !tbaa !44
  %conv = trunc i64 %14 to i32
  %conv8 = zext i32 %conv to i64
  %15 = load i64, i64* %size, align 8, !tbaa !44
  %cmp9 = icmp ne i64 %conv8, %15
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %bitmap_memory13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 46
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory13, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !76
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %bitmap_memory14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 46
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory14, align 8, !tbaa !74
  %21 = load i64, i64* %size, align 8, !tbaa !44
  %conv15 = trunc i64 %21 to i32
  %call16 = call i8* %18(%struct.gs_memory_s* %20, i32 %conv15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #3
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 45
  store i8* %call16, i8** %base, align 8, !tbaa !31
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 45
  %24 = load i8*, i8** %base17, align 8, !tbaa !31
  %cmp18 = icmp eq i8* %24, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.12
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.12
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 16
  %26 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  %shl = shl i32 1, %26
  store i32 %shl, i32* %align, align 4, !tbaa !5
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base22 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 45
  %28 = load i8*, i8** %base22, align 8, !tbaa !31
  %29 = ptrtoint i8* %28 to i32
  %sub = sub nsw i32 0, %29
  %30 = load i32, i32* %align, align 4, !tbaa !5
  %sub23 = sub nsw i32 %30, 1
  %and = and i32 %sub, %sub23
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %31, i32 0, i32 45
  %32 = load i8*, i8** %base24, align 8, !tbaa !31
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %base24, align 8, !tbaa !31
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %foreign_bits = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 47
  store i32 0, i32* %foreign_bits, align 4, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.11, %if.then.6
  %34 = bitcast i32* %align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.else:                                          ; preds = %if.end
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_pointer_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 48
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory, align 8, !tbaa !79
  %cmp25 = icmp ne %struct.gs_memory_s* %36, null
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %if.else
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_pointer_memory28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 48
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory28, align 8, !tbaa !79
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 10
  %39 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !80
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_pointer_memory30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 48
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory30, align 8, !tbaa !79
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height31 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 14
  %43 = load i32, i32* %height31, align 4, !tbaa !39
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 17
  %45 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %47 = load i32, i32* %num_components, align 4, !tbaa !41
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ 1, %cond.false ]
  %conv32 = sext i32 %cond to i64
  %mul = mul i64 8, %conv32
  %conv33 = trunc i64 %mul to i32
  %call34 = call i8* %39(%struct.gs_memory_s* %41, i32 %43, i32 %conv33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #3
  %48 = bitcast i8* %call34 to i8**
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 52
  store i8** %48, i8*** %line_ptrs, align 8, !tbaa !35
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 52
  %51 = load i8**, i8*** %line_ptrs35, align 8, !tbaa !35
  %cmp36 = icmp eq i8** %51, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.39:                                        ; preds = %cond.end
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %foreign_line_pointers = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 49
  store i32 0, i32* %foreign_line_pointers, align 4, !tbaa !34
  store i32 0, i32* %line_pointers_adjacent, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %cleanup.cont
  %53 = load i32, i32* %line_pointers_adjacent, align 4, !tbaa !5
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end.41
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 13
  %56 = load i32, i32* %width44, align 4, !tbaa !75
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height45 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 14
  %58 = load i32, i32* %height45, align 4, !tbaa !39
  %call46 = call i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %54, i32 %56, i32 %58, i64* %size) #3
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 45
  %60 = load i8*, i8** %base47, align 8, !tbaa !31
  %61 = load i64, i64* %size, align 8, !tbaa !44
  %add.ptr48 = getelementptr inbounds i8, i8* %60, i64 %61
  %62 = bitcast i8* %add.ptr48 to i8**
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs49 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 52
  store i8** %62, i8*** %line_ptrs49, align 8, !tbaa !35
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.end.41
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_memory_s* %64 to %struct.gx_device_s*
  %call51 = call i32 @gx_device_raster(%struct.gx_device_s* %65, i32 1) #3
  %66 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %66, i32 0, i32 44
  store i32 %call51, i32* %raster, align 4, !tbaa !67
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %68 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %call52 = call i32 @gdev_mem_set_line_ptrs(%struct.gx_device_memory_s* %67, i8* null, i32 0, i8** null, i32 %68) #3
  store i32 %call52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.50, %if.then.38, %cleanup, %if.then
  %69 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i32* %line_pointers_adjacent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_set_line_ptrs(%struct.gx_device_memory_s* %mdev, i8* %base, i32 %raster, i8** %line_ptrs, i32 %setup_height) #0 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %base.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %line_ptrs.addr = alloca i8**, align 8
  %setup_height.addr = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %pline = alloca i8**, align 8
  %data = alloca i8*, align 8
  %pi = alloca i32, align 4
  %align = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i8**, align 8
  %pend = alloca i8**, align 8
  %scan_line = alloca i8*, align 8
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8** %line_ptrs, i8*** %line_ptrs.addr, align 8, !tbaa !1
  store i32 %setup_height, i32* %setup_height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 17
  %2 = load i32, i32* %is_planar, align 4, !tbaa !40
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !41
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %num_planes, align 4, !tbaa !5
  %5 = bitcast i8*** %pline to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i8**, i8*** %line_ptrs.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8** %8, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i8**, i8*** %line_ptrs.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 52
  store i8** %9, i8*** %line_ptrs2, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 52
  %12 = load i8**, i8*** %line_ptrs3, align 8, !tbaa !35
  store i8** %12, i8*** %pline, align 8, !tbaa !1
  %13 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 45
  %15 = load i8*, i8** %base5, align 8, !tbaa !31
  store i8* %15, i8** %base.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 44
  %17 = load i32, i32* %raster6, align 4, !tbaa !67
  store i32 %17, i32* %raster.addr, align 4, !tbaa !5
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %18 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 45
  store i8* %18, i8** %base7, align 8, !tbaa !31
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 44
  store i32 %20, i32* %raster8, align 4, !tbaa !67
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 16
  %23 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  %cmp10 = icmp sgt i32 %23, 3
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.end.9
  %24 = bitcast i32* %align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %log2_align_mod12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 16
  %26 = load i32, i32* %log2_align_mod12, align 4, !tbaa !72
  %shl = shl i32 1, %26
  store i32 %shl, i32* %align, align 4, !tbaa !5
  %27 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %28 = ptrtoint i8* %27 to i32
  %sub = sub nsw i32 0, %28
  %29 = load i32, i32* %align, align 4, !tbaa !5
  %sub13 = sub nsw i32 %29, 1
  %and = and i32 %sub, %sub13
  store i32 %and, i32* %align, align 4, !tbaa !5
  %30 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %31 = load i32, i32* %align, align 4, !tbaa !5
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %32 = bitcast i32* %align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  br label %if.end.16

if.else.14:                                       ; preds = %if.end.9
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 45
  %34 = load i8*, i8** %base15, align 8, !tbaa !31
  store i8* %34, i8** %data, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.11
  %35 = load i32, i32* %num_planes, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %35, 0
  br i1 %tobool17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.end.16
  %36 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %tobool19 = icmp ne i8* %36, null
  br i1 %tobool19, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.18
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %plane_depth = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 67
  %38 = load i32, i32* %plane_depth, align 4, !tbaa !81
  %tobool20 = icmp ne i32 %38, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %land.lhs.true, %if.then.18
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.16
  store i32 1, i32* %num_planes, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.end.22
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %39 = load i32, i32* %pi, align 4, !tbaa !5
  %40 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %39, %40
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i8*** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = load i8**, i8*** %pline, align 8, !tbaa !1
  store i8** %42, i8*** %pptr, align 8, !tbaa !1
  %43 = bitcast i8*** %pend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load i8**, i8*** %pptr, align 8, !tbaa !1
  %45 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %idx.ext26 = sext i32 %45 to i64
  %add.ptr27 = getelementptr inbounds i8*, i8** %44, i64 %idx.ext26
  store i8** %add.ptr27, i8*** %pend, align 8, !tbaa !1
  %46 = bitcast i8** %scan_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %47, i8** %scan_line, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %48 = load i8**, i8*** %pptr, align 8, !tbaa !1
  %49 = load i8**, i8*** %pend, align 8, !tbaa !1
  %cmp28 = icmp ult i8** %48, %49
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %51 = load i8**, i8*** %pptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %incdec.ptr, i8*** %pptr, align 8, !tbaa !1
  store i8* %50, i8** %51, align 8, !tbaa !1
  %52 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %53 = load i8*, i8** %scan_line, align 8, !tbaa !1
  %idx.ext29 = sext i32 %52 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %53, i64 %idx.ext29
  store i8* %add.ptr30, i8** %scan_line, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 14
  %56 = load i32, i32* %height, align 4, !tbaa !39
  %mul = mul nsw i32 %54, %56
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext31 = sext i32 %mul to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %57, i64 %idx.ext31
  store i8* %add.ptr32, i8** %data, align 8, !tbaa !1
  %58 = load i32, i32* %setup_height.addr, align 4, !tbaa !5
  %59 = load i8**, i8*** %pline, align 8, !tbaa !1
  %idx.ext33 = sext i32 %58 to i64
  %add.ptr34 = getelementptr inbounds i8*, i8** %59, i64 %idx.ext33
  store i8** %add.ptr34, i8*** %pline, align 8, !tbaa !1
  %60 = bitcast i8** %scan_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i8*** %pend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i8*** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %63 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.21
  %64 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i8*** %pline to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define void @mem_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 51
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 0
  %4 = load float, float* %xx, align 4, !tbaa !82
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx1 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 0
  store float %4, float* %xx1, align 4, !tbaa !83
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 51
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix2, i32 0, i32 1
  %7 = load float, float* %xy, align 4, !tbaa !84
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 1
  store float %7, float* %xy3, align 4, !tbaa !85
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 51
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix4, i32 0, i32 2
  %10 = load float, float* %yx, align 4, !tbaa !86
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 2
  store float %10, float* %yx5, align 4, !tbaa !87
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 51
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix6, i32 0, i32 3
  %13 = load float, float* %yy, align 4, !tbaa !88
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 3
  store float %13, float* %yy7, align 4, !tbaa !89
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 51
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix8, i32 0, i32 4
  %16 = load float, float* %tx, align 4, !tbaa !90
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 4
  store float %16, float* %tx9, align 4, !tbaa !91
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %initial_matrix10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 51
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix10, i32 0, i32 5
  %19 = load float, float* %ty, align 4, !tbaa !92
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 5
  store float %19, float* %ty11, align 4, !tbaa !93
  %21 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mem_close(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 46
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !74
  %cmp = icmp ne %struct.gs_memory_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %bitmap_memory1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 46
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory1, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !94
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %bitmap_memory2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 46
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bitmap_memory2, align 8, !tbaa !74
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 45
  %11 = load i8*, i8** %base, align 8, !tbaa !31
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #3
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 45
  store i8* null, i8** %base3, align 8, !tbaa !31
  br label %if.end.11

if.else:                                          ; preds = %entry
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 48
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory, align 8, !tbaa !79
  %cmp4 = icmp ne %struct.gs_memory_s* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 48
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory6, align 8, !tbaa !79
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !94
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_pointer_memory9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 48
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %line_pointer_memory9, align 8, !tbaa !79
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 52
  %21 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %22 = bitcast i8** %21 to i8*
  call void %17(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #3
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 52
  store i8** null, i8*** %line_ptrs10, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %24 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mem_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %options = alloca i64, align 8
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copy_params = alloca %struct.gs_get_bits_params_s, align 8
  %base = alloca i8**, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %4, i32 0, i32 0
  %5 = load i64, i64* %options1, align 8, !tbaa !95
  store i64 %5, i64* %options, align 8, !tbaa !44
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4, !tbaa !97
  store i32 %8, i32* %x, align 4, !tbaa !5
  %9 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x3, align 4, !tbaa !100
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %13 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 1
  %15 = load i32, i32* %y5, align 4, !tbaa !101
  store i32 %15, i32* %y, align 4, !tbaa !5
  %16 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q6, i32 0, i32 1
  %18 = load i32, i32* %y7, align 4, !tbaa !102
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %sub8 = sub nsw i32 %18, %19
  store i32 %sub8, i32* %h, align 4, !tbaa !5
  %20 = load i64, i64* %options, align 8, !tbaa !44
  %cmp = icmp eq i64 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options9 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %21, i32 0, i32 0
  store i64 2012282897, i64* %options9, align 8, !tbaa !95
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end:                                           ; preds = %entry
  %22 = load i32, i32* %w, align 4, !tbaa !5
  %cmp10 = icmp sle i32 %22, 0
  %conv = zext i1 %cmp10 to i32
  %23 = load i32, i32* %h, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %23, 0
  %conv12 = zext i1 %cmp11 to i32
  %or = or i32 %conv, %conv12
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %24 = load i32, i32* %w, align 4, !tbaa !5
  %25 = load i32, i32* %h, align 4, !tbaa !5
  %or14 = or i32 %24, %25
  %cmp15 = icmp slt i32 %or14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.18:                                        ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.19:                                        ; preds = %if.end
  %26 = load i32, i32* %x, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %26, 0
  br i1 %cmp20, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %27 = load i32, i32* %w, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !103
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %sub22 = sub nsw i32 %29, %30
  %cmp23 = icmp sgt i32 %27, %sub22
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %y, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %31, 0
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %32 = load i32, i32* %h, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height, align 4, !tbaa !73
  %35 = load i32, i32* %y, align 4, !tbaa !5
  %sub29 = sub nsw i32 %34, %35
  %cmp30 = icmp sgt i32 %32, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false, %if.end.19
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end.33:                                        ; preds = %lor.lhs.false.28
  %36 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %36) #2
  %37 = bitcast i8*** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 52
  %40 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 %idxprom
  store i8** %arrayidx, i8*** %base, align 8, !tbaa !1
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 44
  %43 = load i32, i32* %raster, align 4, !tbaa !67
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 13
  %45 = load i32, i32* %width34, align 4, !tbaa !75
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %47 = load i16, i16* %depth, align 2, !tbaa !53
  %conv35 = zext i16 %47 to i32
  %mul = mul nsw i32 %45, %conv35
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  %cmp36 = icmp eq i32 %43, %shl
  %cond = select i1 %cmp36, i64 268435456, i64 536870912
  %or38 = or i64 65553, %cond
  %options39 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 0
  store i64 %or38, i64* %options39, align 8, !tbaa !95
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 44
  %49 = load i32, i32* %raster40, align 4, !tbaa !67
  %raster41 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 4
  store i32 %49, i32* %raster41, align 4, !tbaa !104
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = load i32, i32* %x, align 4, !tbaa !5
  %52 = load i32, i32* %h, align 4, !tbaa !5
  %53 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %54 = load i8**, i8*** %base, align 8, !tbaa !1
  %call = call i32 @gx_get_bits_return_pointer(%struct.gx_device_s* %50, i32 %51, i32 %52, %struct.gs_get_bits_params_s* %53, %struct.gs_get_bits_params_s* %copy_params, i8** %54) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %55, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.33
  %56 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.33
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %58 = load i32, i32* %x, align 4, !tbaa !5
  %59 = load i32, i32* %w, align 4, !tbaa !5
  %60 = load i32, i32* %h, align 4, !tbaa !5
  %61 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %62 = load i8**, i8*** %base, align 8, !tbaa !1
  %63 = load i8*, i8** %62, align 8, !tbaa !1
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call46 = call i32 @gx_device_raster(%struct.gx_device_s* %64, i32 1) #3
  %call47 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %57, i32 %58, i32 %59, i32 %60, %struct.gs_get_bits_params_s* %61, %struct.gs_get_bits_params_s* %copy_params, i8* %63, i32 %call46) #3
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i8*** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %67) #2
  br label %cleanup.50

cleanup.50:                                       ; preds = %cleanup, %if.then.32, %if.end.18, %if.then.17, %if.then
  %68 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare i32 @gx_get_bits_return_pointer(%struct.gx_device_s*, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8**) #1

declare i32 @gx_get_bits_copy(%struct.gx_device_s*, i32, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @mem_swap_byte_rect(i8* %base, i32 %raster, i32 %x, i32 %w, i32 %h, i32 %store) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %store.addr = alloca i32, align 4
  %xbit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %row = alloca i8*, align 8
  %nw = alloca i32, align 4
  %ny = alloca i32, align 4
  %nx = alloca i32, align 4
  %pw = alloca i32*, align 8
  %w15 = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %store, i32* %store.addr, align 4, !tbaa !5
  %0 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %1, 31
  store i32 %and, i32* %xbit, align 4, !tbaa !5
  %2 = load i32, i32* %store.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %xbit, align 4, !tbaa !5
  %4 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %cmp = icmp sgt i32 %add, 64
  br i1 %cmp, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.then
  %5 = load i32, i32* %xbit, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  %6 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %7 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %6, i32 %7, i32 %8, i32 1, i32 %9, i32 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.1
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add4 = add nsw i32 %11, %sub
  store i32 %add4, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and5 = and i32 %12, 31
  store i32 %and5, i32* %xbit, align 4, !tbaa !5
  %13 = load i32, i32* %xbit, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %13, 31
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 1, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %14 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %16, 5
  %shl = shl i32 %shr, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %17 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %xbit, align 4, !tbaa !5
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %18, %19
  %add12 = add nsw i32 %add11, 31
  %shr13 = ashr i32 %add12, 5
  store i32 %shr13, i32* %nw, align 4, !tbaa !5
  %20 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  store i32 %21, i32* %ny, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %22 = load i32, i32* %ny, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %22, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load i32, i32* %nw, align 4, !tbaa !5
  store i32 %24, i32* %nx, align 4, !tbaa !5
  %25 = bitcast i32** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i8*, i8** %row, align 8, !tbaa !1
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %pw, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %28 = bitcast i32* %w15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32*, i32** %pw, align 8, !tbaa !1
  %30 = load i32, i32* %29, align 4, !tbaa !5
  store i32 %30, i32* %w15, align 4, !tbaa !5
  %31 = load i32, i32* %w15, align 4, !tbaa !5
  %shr16 = lshr i32 %31, 24
  %32 = load i32, i32* %w15, align 4, !tbaa !5
  %shr17 = lshr i32 %32, 8
  %and18 = and i32 %shr17, 65280
  %add19 = add i32 %shr16, %and18
  %33 = load i32, i32* %w15, align 4, !tbaa !5
  %and20 = and i32 %33, 65280
  %shl21 = shl i32 %and20, 8
  %add22 = add i32 %add19, %shl21
  %34 = load i32, i32* %w15, align 4, !tbaa !5
  %shl23 = shl i32 %34, 24
  %add24 = add i32 %add22, %shl23
  %35 = load i32*, i32** %pw, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %pw, align 8, !tbaa !1
  store i32 %add24, i32* %35, align 4, !tbaa !5
  %36 = bitcast i32* %w15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %nx, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %nx, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %dec, 0
  br i1 %tobool25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %38 = bitcast i32** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %41 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext26 = zext i32 %40 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %41, i64 %idx.ext26
  store i8* %add.ptr27, i8** %row, align 8, !tbaa !1
  %42 = load i32, i32* %ny, align 4, !tbaa !5
  %dec28 = add nsw i32 %42, -1
  store i32 %dec28, i32* %ny, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %46 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
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
define i32 @mem_word_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %src = alloca i8*, align 8
  %dev_raster = alloca i32, align 4
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %bit_w = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 1) #3
  store i32 %call, i32* %dev_raster, align 4, !tbaa !5
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %8 = load i32, i32* %x1, align 4, !tbaa !97
  store i32 %8, i32* %x, align 4, !tbaa !5
  %9 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x2, align 4, !tbaa !100
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %13 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 1
  %15 = load i32, i32* %y4, align 4, !tbaa !101
  store i32 %15, i32* %y, align 4, !tbaa !5
  %16 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q5, i32 0, i32 1
  %18 = load i32, i32* %y6, align 4, !tbaa !102
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %sub7 = sub nsw i32 %18, %19
  store i32 %sub7, i32* %h, align 4, !tbaa !5
  %20 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.8

do.body.8:                                        ; preds = %do.body
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %or = or i32 %23, %24
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %do.body.8
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %26 = load i32, i32* %x, align 4, !tbaa !5
  %27 = load i32, i32* %w, align 4, !tbaa !5
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %28, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %29 = load i32, i32* %y, align 4, !tbaa !5
  %30 = load i32, i32* %h, align 4, !tbaa !5
  %add13 = add nsw i32 %30, %29
  store i32 %add13, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %31 = load i32, i32* %w, align 4, !tbaa !5
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 13
  %33 = load i32, i32* %width, align 4, !tbaa !103
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %sub17 = sub nsw i32 %33, %34
  %cmp18 = icmp sgt i32 %31, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.body.16
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 13
  %36 = load i32, i32* %width20, align 4, !tbaa !103
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %sub21 = sub nsw i32 %36, %37
  store i32 %sub21, i32* %w, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.body.16
  br label %do.cond.23

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %38 = load i32, i32* %h, align 4, !tbaa !5
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 14
  %40 = load i32, i32* %height, align 4, !tbaa !73
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %sub26 = sub nsw i32 %40, %41
  %cmp27 = icmp sgt i32 %38, %sub26
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %do.body.25
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 14
  %43 = load i32, i32* %height29, align 4, !tbaa !73
  %44 = load i32, i32* %y, align 4, !tbaa !5
  %sub30 = sub nsw i32 %43, %44
  store i32 %sub30, i32* %h, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.body.25
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %45 = load i32, i32* %w, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %45, 0
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.35
  %46 = load i32, i32* %h, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %46, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %do.end.35
  store i32 0, i32* %h, align 4, !tbaa !5
  store i32 0, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  %47 = load i32, i32* %x, align 4, !tbaa !5
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %49 = load i16, i16* %depth, align 2, !tbaa !47
  %conv = zext i16 %49 to i32
  %mul = mul nsw i32 %47, %conv
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %50 = load i32, i32* %w, align 4, !tbaa !5
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 11
  %depth41 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info40, i32 0, i32 3
  %52 = load i16, i16* %depth41, align 2, !tbaa !47
  %conv42 = zext i16 %52 to i32
  %mul43 = mul nsw i32 %50, %conv42
  store i32 %mul43, i32* %bit_w, align 4, !tbaa !5
  %53 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom = sext i32 %53 to i64
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 52
  %55 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %55, i64 %idxprom
  %56 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %56, i8** %src, align 8, !tbaa !1
  %57 = load i8*, i8** %src, align 8, !tbaa !1
  %58 = load i32, i32* %dev_raster, align 4, !tbaa !5
  %59 = load i32, i32* %bit_x, align 4, !tbaa !5
  %60 = load i32, i32* %bit_w, align 4, !tbaa !5
  %61 = load i32, i32* %h, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 0) #3
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %64 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %65 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call44 = call i32 @mem_get_bits_rectangle(%struct.gx_device_s* %62, %struct.gs_int_rect_s* %63, %struct.gs_get_bits_params_s* %64, %struct.gs_int_rect_s** %65) #3
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %66 = load i8*, i8** %src, align 8, !tbaa !1
  %67 = load i32, i32* %dev_raster, align 4, !tbaa !5
  %68 = load i32, i32* %bit_x, align 4, !tbaa !5
  %69 = load i32, i32* %bit_w, align 4, !tbaa !5
  %70 = load i32, i32* %h, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 0) #3
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i64 @mem_mapped_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %br = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %which = alloca i8*, align 8
  %best = alloca i32, align 4
  %bg = alloca i8, align 1
  %bb = alloca i8, align 1
  %diff = alloca i32, align 4
  %dg = alloca i32, align 4
  %db = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %diff69 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %br) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !62
  %conv = zext i16 %4 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = trunc i16 %conv1 to i8
  store i8 %conv2, i8* %br, align 1, !tbaa !105
  %5 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !106
  store i8* %7, i8** %pptr, align 8, !tbaa !1
  %8 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 53
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette3, i32 0, i32 1
  %10 = load i32, i32* %size, align 4, !tbaa !107
  store i32 %10, i32* %cnt, align 4, !tbaa !5
  %11 = bitcast i8** %which to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  store i8* null, i8** %which, align 8, !tbaa !1
  %12 = bitcast i32* %best to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 768, i32* %best, align 4, !tbaa !5
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %14 = load i32, i32* %num_components, align 4, !tbaa !41
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %bg) #2
  %15 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 1
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !62
  %conv6 = zext i16 %16 to i32
  %mul7 = mul i32 %conv6, 65281
  %add8 = add i32 %mul7, 8388608
  %shr9 = lshr i32 %add8, 24
  %conv10 = trunc i32 %shr9 to i16
  %conv11 = trunc i16 %conv10 to i8
  store i8 %conv11, i8* %bg, align 1, !tbaa !105
  call void @llvm.lifetime.start(i64 1, i8* %bb) #2
  %17 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %17, i64 2
  %18 = load i16, i16* %arrayidx12, align 2, !tbaa !62
  %conv13 = zext i16 %18 to i32
  %mul14 = mul i32 %conv13, 65281
  %add15 = add i32 %mul14, 8388608
  %shr16 = lshr i32 %add15, 24
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = trunc i16 %conv17 to i8
  store i8 %conv18, i8* %bb, align 1, !tbaa !105
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then
  %19 = load i32, i32* %cnt, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 3
  store i32 %sub, i32* %cnt, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %sub, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i8*, i8** %pptr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !105
  %conv21 = zext i8 %22 to i32
  %23 = load i8, i8* %br, align 1, !tbaa !105
  %conv22 = zext i8 %23 to i32
  %sub23 = sub nsw i32 %conv21, %conv22
  store i32 %sub23, i32* %diff, align 4, !tbaa !5
  %24 = load i32, i32* %diff, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %while.body
  %25 = load i32, i32* %diff, align 4, !tbaa !5
  %sub27 = sub nsw i32 0, %25
  store i32 %sub27, i32* %diff, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.26, %while.body
  %26 = load i32, i32* %diff, align 4, !tbaa !5
  %27 = load i32, i32* %best, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %if.then.30, label %if.end.59

if.then.30:                                       ; preds = %if.end
  %28 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx31, align 1, !tbaa !105
  %conv32 = zext i8 %30 to i32
  %31 = load i8, i8* %bg, align 1, !tbaa !105
  %conv33 = zext i8 %31 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  store i32 %sub34, i32* %dg, align 4, !tbaa !5
  %32 = load i32, i32* %dg, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %32, 0
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.30
  %33 = load i32, i32* %dg, align 4, !tbaa !5
  %sub38 = sub nsw i32 0, %33
  store i32 %sub38, i32* %dg, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.30
  %34 = load i32, i32* %dg, align 4, !tbaa !5
  %35 = load i32, i32* %diff, align 4, !tbaa !5
  %add40 = add nsw i32 %35, %34
  store i32 %add40, i32* %diff, align 4, !tbaa !5
  %36 = load i32, i32* %best, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %add40, %36
  br i1 %cmp41, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %if.end.39
  %37 = bitcast i32* %db to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !105
  %conv45 = zext i8 %39 to i32
  %40 = load i8, i8* %bb, align 1, !tbaa !105
  %conv46 = zext i8 %40 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %db, align 4, !tbaa !5
  %41 = load i32, i32* %db, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %41, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.43
  %42 = load i32, i32* %db, align 4, !tbaa !5
  %sub51 = sub nsw i32 0, %42
  store i32 %sub51, i32* %db, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.then.43
  %43 = load i32, i32* %db, align 4, !tbaa !5
  %44 = load i32, i32* %diff, align 4, !tbaa !5
  %add53 = add nsw i32 %44, %43
  store i32 %add53, i32* %diff, align 4, !tbaa !5
  %45 = load i32, i32* %best, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %add53, %45
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  %46 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8* %46, i8** %which, align 8, !tbaa !1
  %47 = load i32, i32* %diff, align 4, !tbaa !5
  store i32 %47, i32* %best, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.52
  %48 = bitcast i32* %db to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.39
  %49 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end
  %50 = load i32, i32* %diff, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %50, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.59
  %51 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %add.ptr, i8** %pptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.62
  %52 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %bb) #2
  call void @llvm.lifetime.end(i64 1, i8* %bg) #2
  br label %if.end.91

if.else:                                          ; preds = %entry
  br label %while.cond.64

while.cond.64:                                    ; preds = %cleanup.cont.89, %if.else
  %53 = load i32, i32* %cnt, align 4, !tbaa !5
  %sub65 = sub nsw i32 %53, 3
  store i32 %sub65, i32* %cnt, align 4, !tbaa !5
  %cmp66 = icmp sge i32 %sub65, 0
  br i1 %cmp66, label %while.body.68, label %while.end.90

while.body.68:                                    ; preds = %while.cond.64
  %54 = bitcast i32* %diff69 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i8*, i8** %pptr, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !105
  %conv70 = zext i8 %56 to i32
  %57 = load i8, i8* %br, align 1, !tbaa !105
  %conv71 = zext i8 %57 to i32
  %sub72 = sub nsw i32 %conv70, %conv71
  store i32 %sub72, i32* %diff69, align 4, !tbaa !5
  %58 = load i32, i32* %diff69, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %58, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %while.body.68
  %59 = load i32, i32* %diff69, align 4, !tbaa !5
  %sub76 = sub nsw i32 0, %59
  store i32 %sub76, i32* %diff69, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %while.body.68
  %60 = load i32, i32* %diff69, align 4, !tbaa !5
  %61 = load i32, i32* %best, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %60, %61
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  %62 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8* %62, i8** %which, align 8, !tbaa !1
  %63 = load i32, i32* %diff69, align 4, !tbaa !5
  store i32 %63, i32* %best, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.77
  %64 = load i32, i32* %diff69, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %64, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.85:                                        ; preds = %if.end.81
  %65 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds i8, i8* %65, i64 3
  store i8* %add.ptr86, i8** %pptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.85, %if.then.84
  %66 = bitcast i32* %diff69 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %unreachable [
    i32 0, label %cleanup.cont.89
    i32 5, label %while.end.90
  ]

cleanup.cont.89:                                  ; preds = %cleanup.87
  br label %while.cond.64

while.end.90:                                     ; preds = %cleanup.87, %while.cond.64
  br label %if.end.91

if.end.91:                                        ; preds = %while.end.90, %while.end
  %67 = load i8*, i8** %which, align 8, !tbaa !1
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette92 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 53
  %data93 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette92, i32 0, i32 0
  %69 = load i8*, i8** %data93, align 8, !tbaa !106
  %sub.ptr.lhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 3
  store i32 1, i32* %cleanup.dest.slot
  %70 = bitcast i32* %best to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i8** %which to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  call void @llvm.lifetime.end(i64 1, i8* %br) #2
  %74 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  ret i64 %div

unreachable:                                      ; preds = %cleanup.87, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @mem_mapped_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %pptr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !44
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !106
  %6 = load i64, i64* %color.addr, align 8, !tbaa !44
  %conv = trunc i64 %6 to i32
  %mul = mul nsw i32 %conv, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %pptr, align 8, !tbaa !1
  %7 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !105
  %conv1 = zext i8 %8 to i32
  %shl = shl i32 %conv1, 8
  %9 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx2, align 1, !tbaa !105
  %conv3 = zext i8 %10 to i32
  %shr = ashr i32 %conv3, 0
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !62
  %12 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !105
  %conv7 = zext i8 %13 to i32
  %shl8 = shl i32 %conv7, 8
  %14 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx9, align 1, !tbaa !105
  %conv10 = zext i8 %15 to i32
  %shr11 = ashr i32 %conv10, 0
  %add12 = add nsw i32 %shl8, %shr11
  %conv13 = trunc i32 %add12 to i16
  %16 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %16, i64 1
  store i16 %conv13, i16* %arrayidx14, align 2, !tbaa !62
  %17 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx15, align 1, !tbaa !105
  %conv16 = zext i8 %18 to i32
  %shl17 = shl i32 %conv16, 8
  %19 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx18, align 1, !tbaa !105
  %conv19 = zext i8 %20 to i32
  %shr20 = ashr i32 %conv19, 0
  %add21 = add nsw i32 %shl17, %shr20
  %conv22 = trunc i32 %add21 to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv22, i16* %arrayidx23, align 2, !tbaa !62
  %22 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mem_draw_thin_line(%struct.gx_device_s* %dev, i32 %fx0, i32 %fy0, i32 %fx1, i32 %fy1, %struct.gx_device_color_s* %pdcolor, i32 %lop, i32 %adjustx, i32 %adjusty) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fx0.addr = alloca i32, align 4
  %fy0.addr = alloca i32, align 4
  %fx1.addr = alloca i32, align 4
  %fy1.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %adjustx.addr = alloca i32, align 4
  %adjusty.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %fx0, i32* %fx0.addr, align 4, !tbaa !5
  store i32 %fy0, i32* %fy0.addr, align 4, !tbaa !5
  store i32 %fx1, i32* %fx1.addr, align 4, !tbaa !5
  store i32 %fy1, i32* %fy1.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %adjustx, i32* %adjustx.addr, align 4, !tbaa !5
  store i32 %adjusty, i32* %adjusty.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %2 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %3 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %4 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %6 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %7 = load i32, i32* %adjustx.addr, align 4, !tbaa !5
  %8 = load i32, i32* %adjusty.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_draw_thin_line(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.gx_device_color_s* %5, i32 %6, i32 %7, i32 %8) #3
  ret i32 %call
}

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

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
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !6, i64 1760}
!10 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !22, i64 2548, !2, i64 2576, !24, i64 2584, !25, i64 2600, !26, i64 2624, !27, i64 2656, !28, i64 2680, !29, i64 2720, !30, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !12, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!23 = !{!"float", !3, i64 0}
!24 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!25 = !{!"_c24", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!26 = !{!"_c40", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!27 = !{!"_c48", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c56", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!29 = !{!"_c64", !12, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!31 = !{!10, !2, i64 1744}
!32 = !{!33, !2, i64 0}
!33 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!34 = !{!10, !6, i64 1776}
!35 = !{!10, !2, i64 2576}
!36 = !{!24, !2, i64 0}
!37 = !{!24, !6, i64 8}
!38 = !{!33, !6, i64 8}
!39 = !{!10, !6, i64 836}
!40 = !{!10, !6, i64 848}
!41 = !{!10, !6, i64 100}
!42 = !{!43, !2, i64 0}
!43 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!44 = !{!12, !12, i64 0}
!45 = !{!43, !2, i64 16}
!46 = !{!8, !2, i64 40}
!47 = !{!48, !14, i64 108}
!48 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!49 = !{!48, !2, i64 1384}
!50 = !{!10, !2, i64 1384}
!51 = !{!10, !2, i64 32}
!52 = !{!10, !2, i64 1296}
!53 = !{!10, !14, i64 108}
!54 = !{!10, !12, i64 816}
!55 = !{!10, !12, i64 824}
!56 = !{!10, !3, i64 1112}
!57 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!58 = !{!48, !3, i64 1112}
!59 = !{!48, !2, i64 1656}
!60 = !{!10, !2, i64 1656}
!61 = !{!48, !6, i64 100}
!62 = !{!14, !14, i64 0}
!63 = !{!10, !2, i64 1552}
!64 = !{!10, !6, i64 2788}
!65 = !{i64 0, i64 8, !1, i64 8, i64 4, !5}
!66 = !{!10, !2, i64 1680}
!67 = !{!10, !6, i64 1736}
!68 = !{!10, !2, i64 1688}
!69 = !{!70, !6, i64 0}
!70 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!71 = !{!10, !6, i64 840}
!72 = !{!10, !6, i64 844}
!73 = !{!48, !6, i64 836}
!74 = !{!10, !2, i64 1752}
!75 = !{!10, !6, i64 832}
!76 = !{!77, !2, i64 64}
!77 = !{!"gs_memory_s", !2, i64 0, !78, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!78 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!79 = !{!10, !2, i64 1768}
!80 = !{!77, !2, i64 88}
!81 = !{!10, !6, i64 2784}
!82 = !{!10, !23, i64 2548}
!83 = !{!22, !23, i64 0}
!84 = !{!10, !23, i64 2552}
!85 = !{!22, !23, i64 4}
!86 = !{!10, !23, i64 2556}
!87 = !{!22, !23, i64 8}
!88 = !{!10, !23, i64 2560}
!89 = !{!22, !23, i64 12}
!90 = !{!10, !23, i64 2564}
!91 = !{!22, !23, i64 16}
!92 = !{!10, !23, i64 2568}
!93 = !{!22, !23, i64 20}
!94 = !{!77, !2, i64 24}
!95 = !{!96, !12, i64 0}
!96 = !{!"gs_get_bits_params_s", !12, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!97 = !{!98, !6, i64 0}
!98 = !{!"gs_int_rect_s", !99, i64 0, !99, i64 8}
!99 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!100 = !{!98, !6, i64 8}
!101 = !{!98, !6, i64 4}
!102 = !{!98, !6, i64 12}
!103 = !{!48, !6, i64 832}
!104 = !{!96, !6, i64 528}
!105 = !{!3, !3, i64 0}
!106 = !{!10, !2, i64 2584}
!107 = !{!10, !6, i64 2592}
