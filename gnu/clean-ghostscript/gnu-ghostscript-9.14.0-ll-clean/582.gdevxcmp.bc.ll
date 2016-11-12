; ModuleID = './gdevxcmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_X_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64, i32, i32, i8*, i64, %struct._XImage, %struct._XDisplay*, %struct.Screen*, %struct.XVisualInfo*, i64, i64, %struct._XGC*, i64, i64, i32, i64, %struct.gs_matrix_s, i64, i64, i64, %struct.anon, i64, i64, i64, %struct.anon.1, %struct.anon.2, i32, i32, i64, i64, i64, i64, i64, %struct.x11_cman_s, i64, i16, i8*, i32, i32, i8*, float, float, i8, i8, i8, i32, i32, i32, %struct.anon.4 }
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct._XDisplay = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.XVisualInfo = type { %struct.Visual*, i64, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct._XGC = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.anon = type { %struct.gs_int_rect_s, i64, i64, i32 }
%struct.anon.1 = type { i64, %struct._XGC*, i32, i32 }
%struct.anon.2 = type { i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.x11_cman_s = type { i32, %struct.cmm_, %struct.cmm_, %struct.anon.3, %struct.cmc_, i64*, %struct.cmd_ }
%struct.cmm_ = type { i16, i16, i16 }
%struct.anon.3 = type { %struct.XStandardColormap*, i32, %struct.x11_cmap_values_s, %struct.x11_cmap_values_s, %struct.x11_cmap_values_s, i32 }
%struct.XStandardColormap = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.x11_cmap_values_s = type { i32, [64 x i16], i32 }
%struct.cmc_ = type { i32, %struct.x11_rgb_s* }
%struct.x11_rgb_s = type { [3 x i16], i32 }
%struct.cmd_ = type { i32, %struct.x11_color_s**, i32, i32, i32 }
%struct.x11_color_s = type { %struct.XColor, %struct.x11_color_s* }
%struct.XColor = type { i64, i16, i16, i16, i8, i8 }
%struct.anon.4 = type { i32, i32, %struct.gs_int_point_s, i32, [12 x %struct.XTextItem], [25 x i8] }
%struct.XTextItem = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"GHOSTVIEW_COLORS\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%*s %ld %ld\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Malformed GHOSTVIEW_COLOR property.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unsupported X visual depth: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gdevx color_to_rgb\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown palette: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"x11_dynamic_color\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"x11 dither_colors\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"x11 cman.dynamic.colors\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"x11 color_to_rgb\00", align 1
@cv_tables = internal constant [8 x i16*] [i16* null, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @cv_tab1, i32 0, i32 0), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @cv_tab2, i32 0, i32 0), i16* getelementptr inbounds ([4 x i16], [4 x i16]* @cv_tab3, i32 0, i32 0), i16* getelementptr inbounds ([5 x i16], [5 x i16]* @cv_tab4, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @cv_tab5, i32 0, i32 0), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @cv_tab6, i32 0, i32 0), i16* getelementptr inbounds ([8 x i16], [8 x i16]* @cv_tab7, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [17 x i8] c"gdevx setup_cube\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"x11_setup_colors\00", align 1
@cv_tab1 = internal constant [2 x i16] [i16 0, i16 -1], align 2
@cv_tab2 = internal constant [3 x i16] [i16 0, i16 32767, i16 -1], align 2
@cv_tab3 = internal constant [4 x i16] [i16 0, i16 21845, i16 -21846, i16 -1], align 2
@cv_tab4 = internal constant [5 x i16] [i16 0, i16 16383, i16 32767, i16 -16385, i16 -1], align 2
@cv_tab5 = internal constant [6 x i16] [i16 0, i16 13107, i16 26214, i16 -26215, i16 -13108, i16 -1], align 2
@cv_tab6 = internal constant [7 x i16] [i16 0, i16 10922, i16 21845, i16 32767, i16 -21846, i16 -10924, i16 -1], align 2
@cv_tab7 = internal constant [8 x i16] [i16 0, i16 9362, i16 18724, i16 28086, i16 -28088, i16 -18726, i16 -9364, i16 -1], align 16

; Function Attrs: nounwind uwtable
define i32 @gdev_x_setup_colors(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %palette = alloca i8, align 1
  %gv_colors = alloca i64, align 8
  %type = alloca i64, align 8
  %format = alloca i32, align 4
  %nitems = alloca i64, align 8
  %bytes_after = alloca i64, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %ramp_size = alloca i32, align 4
  %ramp_size396 = alloca i32, align 4
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @llvm.lifetime.start(i64 1, i8* %palette) #1
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 60
  %1 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !6
  %class = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %1, i32 0, i32 4
  %2 = load i32, i32* %class, align 4, !tbaa !39
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 60
  %4 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo1, align 8, !tbaa !6
  %class2 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %4, i32 0, i32 4
  %5 = load i32, i32* %class2, align 4, !tbaa !39
  %cmp3 = icmp ne i32 %5, 1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 60
  %7 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo4, align 8, !tbaa !6
  %colormap_size = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %7, i32 0, i32 8
  %8 = load i32, i32* %colormap_size, align 4, !tbaa !41
  %cmp5 = icmp sgt i32 %8, 2
  %cond = select i1 %cmp5, i32 71, i32 77
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ 67, %cond.true ], [ %cond, %cond.false ]
  %conv = trunc i32 %cond6 to i8
  store i8 %conv, i8* %palette, align 1, !tbaa !42
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 66
  %10 = load i32, i32* %ghostview, align 4, !tbaa !43
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = bitcast i64* %gv_colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 58
  %13 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !44
  %call = call i64 @XInternAtom(%struct._XDisplay* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 0) #5
  store i64 %call, i64* %gv_colors, align 8, !tbaa !45
  %14 = bitcast i64* %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i64* %nitems to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %bytes_after to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy7 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 58
  %20 = load %struct._XDisplay*, %struct._XDisplay** %dpy7, align 8, !tbaa !44
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 62
  %22 = load i64, i64* %win, align 8, !tbaa !46
  %23 = load i64, i64* %gv_colors, align 8, !tbaa !45
  %24 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %24, i32 0, i32 73
  %25 = load i64, i64* %dest, align 8, !tbaa !47
  %cmp8 = icmp ne i64 %25, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @XGetWindowProperty(%struct._XDisplay* %20, i64 %22, i64 %23, i64 0, i64 256, i32 %conv9, i64 31, i64* %type, i32* %format, i64* %nitems, i64* %bytes_after, i8** %buf) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.48

land.lhs.true.13:                                 ; preds = %if.then
  %26 = load i64, i64* %type, align 8, !tbaa !45
  %cmp14 = icmp eq i64 %26, 31
  br i1 %cmp14, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %land.lhs.true.13
  %27 = load i8*, i8** %buf, align 8, !tbaa !2
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %28, i32 0, i32 84
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 83
  %call17 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64* %foreground, i64* %background) #6
  %conv18 = sext i32 %call17 to i64
  store i64 %conv18, i64* %nitems, align 8, !tbaa !45
  %30 = load i64, i64* %nitems, align 8, !tbaa !45
  %cmp19 = icmp ne i64 %30, 2
  br i1 %cmp19, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %31 = load i8*, i8** %buf, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !42
  %conv21 = sext i8 %32 to i32
  %cmp22 = icmp ne i32 %conv21, 77
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %lor.lhs.false
  %33 = load i8*, i8** %buf, align 8, !tbaa !2
  %34 = load i8, i8* %33, align 1, !tbaa !42
  %conv25 = sext i8 %34 to i32
  %cmp26 = icmp ne i32 %conv25, 71
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %35 = load i8*, i8** %buf, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !42
  %conv29 = sext i8 %36 to i32
  %cmp30 = icmp ne i32 %conv29, 67
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %land.lhs.true.28, %if.then.16
  %37 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %call33 = call i8* @gs_program_name() #5
  %call34 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %38, i8* %call33, i64 %call34) #5
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory35 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !48
  %call36 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.28, %land.lhs.true.24, %lor.lhs.false
  %41 = load i8, i8* %palette, align 1, !tbaa !42
  %conv37 = sext i8 %41 to i32
  %42 = load i8*, i8** %buf, align 8, !tbaa !2
  %43 = load i8, i8* %42, align 1, !tbaa !42
  %conv38 = sext i8 %43 to i32
  %cmp39 = icmp sgt i32 %conv37, %conv38
  br i1 %cmp39, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.end
  %44 = load i8, i8* %palette, align 1, !tbaa !42
  %conv42 = sext i8 %44 to i32
  br label %cond.end.45

cond.false.43:                                    ; preds = %if.end
  %45 = load i8*, i8** %buf, align 8, !tbaa !2
  %46 = load i8, i8* %45, align 1, !tbaa !42
  %conv44 = sext i8 %46 to i32
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i32 [ %conv42, %cond.true.41 ], [ %conv44, %cond.false.43 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, i8* %palette, align 1, !tbaa !42
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.45, %land.lhs.true.13, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.32
  %47 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %bytes_after to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %nitems to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i64* %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %gv_colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.552 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.97

if.else:                                          ; preds = %cond.end
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette54 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 91
  %54 = load i8*, i8** %palette54, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx, align 1, !tbaa !42
  %conv55 = sext i8 %55 to i32
  %cmp56 = icmp eq i32 %conv55, 99
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else
  %56 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette59 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %56, i32 0, i32 91
  %57 = load i8*, i8** %palette59, align 8, !tbaa !49
  %arrayidx60 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 67, i8* %arrayidx60, align 1, !tbaa !42
  br label %if.end.81

if.else.61:                                       ; preds = %if.else
  %58 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette62 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %58, i32 0, i32 91
  %59 = load i8*, i8** %palette62, align 8, !tbaa !49
  %arrayidx63 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx63, align 1, !tbaa !42
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp eq i32 %conv64, 103
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.61
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette68 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 91
  %62 = load i8*, i8** %palette68, align 8, !tbaa !49
  %arrayidx69 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 71, i8* %arrayidx69, align 1, !tbaa !42
  br label %if.end.80

if.else.70:                                       ; preds = %if.else.61
  %63 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %63, i32 0, i32 91
  %64 = load i8*, i8** %palette71, align 8, !tbaa !49
  %arrayidx72 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx72, align 1, !tbaa !42
  %conv73 = sext i8 %65 to i32
  %cmp74 = icmp eq i32 %conv73, 109
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.else.70
  %66 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette77 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %66, i32 0, i32 91
  %67 = load i8*, i8** %palette77, align 8, !tbaa !49
  %arrayidx78 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 77, i8* %arrayidx78, align 1, !tbaa !42
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.else.70
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.58
  %68 = load i8, i8* %palette, align 1, !tbaa !42
  %conv82 = sext i8 %68 to i32
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette83 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 91
  %70 = load i8*, i8** %palette83, align 8, !tbaa !49
  %arrayidx84 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx84, align 1, !tbaa !42
  %conv85 = sext i8 %71 to i32
  %cmp86 = icmp sgt i32 %conv82, %conv85
  br i1 %cmp86, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %if.end.81
  %72 = load i8, i8* %palette, align 1, !tbaa !42
  %conv89 = sext i8 %72 to i32
  br label %cond.end.94

cond.false.90:                                    ; preds = %if.end.81
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette91 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 91
  %74 = load i8*, i8** %palette91, align 8, !tbaa !49
  %arrayidx92 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx92, align 1, !tbaa !42
  %conv93 = sext i8 %75 to i32
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.90, %cond.true.88
  %cond95 = phi i32 [ %conv89, %cond.true.88 ], [ %conv93, %cond.false.90 ]
  %conv96 = trunc i32 %cond95 to i8
  store i8 %conv96, i8* %palette, align 1, !tbaa !42
  br label %if.end.97

if.end.97:                                        ; preds = %cond.end.94, %cleanup.cont
  %76 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo98 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %76, i32 0, i32 60
  %77 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo98, align 8, !tbaa !6
  %bits_per_rgb = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %77, i32 0, i32 9
  %78 = load i32, i32* %bits_per_rgb, align 4, !tbaa !50
  %shr = ashr i32 65535, %78
  %sub = sub nsw i32 65535, %shr
  %conv99 = trunc i32 %sub to i16
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 85
  %color_mask = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 1
  %blue = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask, i32 0, i32 2
  store i16 %conv99, i16* %blue, align 2, !tbaa !51
  %80 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman100 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %80, i32 0, i32 85
  %color_mask101 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman100, i32 0, i32 1
  %green = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask101, i32 0, i32 1
  store i16 %conv99, i16* %green, align 2, !tbaa !52
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman102 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 85
  %color_mask103 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman102, i32 0, i32 1
  %red = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask103, i32 0, i32 0
  store i16 %conv99, i16* %red, align 2, !tbaa !53
  %82 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %82, i32 0, i32 85
  %match_mask = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman104, i32 0, i32 2
  %83 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman105 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %83, i32 0, i32 85
  %color_mask106 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman105, i32 0, i32 1
  %84 = bitcast %struct.cmm_* %match_mask to i8*
  %85 = bitcast %struct.cmm_* %color_mask106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 6, i32 2, i1 false), !tbaa.struct !54
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %86, i32 0, i32 60
  %87 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo107, align 8, !tbaa !6
  %bits_per_rgb108 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %87, i32 0, i32 9
  %88 = load i32, i32* %bits_per_rgb108, align 4, !tbaa !50
  %shl = shl i32 1, %88
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman109 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 85
  %num_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman109, i32 0, i32 0
  store i32 %shl, i32* %num_rgb, align 4, !tbaa !56
  %90 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman110 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %90, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman110, i32 0, i32 3
  %map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 0
  store %struct.XStandardColormap* null, %struct.XStandardColormap** %map, align 8, !tbaa !57
  %91 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman111 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %91, i32 0, i32 85
  %std_cmap112 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman111, i32 0, i32 3
  %free_map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap112, i32 0, i32 5
  store i32 0, i32* %free_map, align 4, !tbaa !58
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman113 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %92, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman113, i32 0, i32 5
  store i64* null, i64** %dither_ramp, align 8, !tbaa !59
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman114 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman114, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  store %struct.x11_color_s** null, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %94 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman115 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %94, i32 0, i32 85
  %dynamic116 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman115, i32 0, i32 6
  %size = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic116, i32 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !61
  %95 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman117 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %95, i32 0, i32 85
  %dynamic118 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman117, i32 0, i32 6
  %used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic118, i32 0, i32 3
  store i32 0, i32* %used, align 4, !tbaa !62
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo119 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 60
  %97 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo119, align 8, !tbaa !6
  %depth = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %97, i32 0, i32 3
  %98 = load i32, i32* %depth, align 4, !tbaa !63
  switch i32 %98, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 24, label %sw.bb
    i32 32, label %sw.bb
    i32 15, label %sw.bb.124
  ]

sw.bb:                                            ; preds = %if.end.97, %if.end.97, %if.end.97, %if.end.97, %if.end.97, %if.end.97, %if.end.97
  %99 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo120 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %99, i32 0, i32 60
  %100 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo120, align 8, !tbaa !6
  %depth121 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %100, i32 0, i32 3
  %101 = load i32, i32* %depth121, align 4, !tbaa !63
  %conv122 = trunc i32 %101 to i16
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 11
  %depth123 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  store i16 %conv122, i16* %depth123, align 2, !tbaa !64
  br label %sw.epilog

sw.bb.124:                                        ; preds = %if.end.97
  %103 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info125 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %103, i32 0, i32 11
  %depth126 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info125, i32 0, i32 3
  store i16 16, i16* %depth126, align 2, !tbaa !64
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.97
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory127 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory127, align 8, !tbaa !48
  %call128 = call i8* @gs_program_name() #5
  %call129 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %105, i8* %call128, i64 %call129) #5
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory130, align 8, !tbaa !48
  %108 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo131 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %108, i32 0, i32 60
  %109 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo131, align 8, !tbaa !6
  %depth132 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %109, i32 0, i32 3
  %110 = load i32, i32* %depth132, align 4, !tbaa !63
  %call133 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %110) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.552

sw.epilog:                                        ; preds = %sw.bb.124, %sw.bb
  %111 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info134 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %112, i32 0, i32 11
  %depth135 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info134, i32 0, i32 3
  %113 = load i16, i16* %depth135, align 2, !tbaa !64
  %conv136 = zext i16 %113 to i32
  %cmp137 = icmp slt i32 %conv136, 8
  br i1 %cmp137, label %cond.true.139, label %cond.false.143

cond.true.139:                                    ; preds = %sw.epilog
  %114 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info140 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %114, i32 0, i32 11
  %depth141 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info140, i32 0, i32 3
  %115 = load i16, i16* %depth141, align 2, !tbaa !64
  %conv142 = zext i16 %115 to i32
  br label %cond.end.144

cond.false.143:                                   ; preds = %sw.epilog
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.139
  %cond145 = phi i32 [ %conv142, %cond.true.139 ], [ 8, %cond.false.143 ]
  %shl146 = shl i32 1, %cond145
  store i32 %shl146, i32* %count, align 4, !tbaa !65
  %116 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory147 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory147, align 8, !tbaa !48
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %119 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !69
  %120 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory148 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %120, i32 0, i32 3
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !48
  %non_gc_memory149 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory149, align 8, !tbaa !66
  %123 = load i32, i32* %count, align 4, !tbaa !65
  %call150 = call i8* %119(%struct.gs_memory_s* %122, i32 12, i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #5
  %124 = bitcast i8* %call150 to %struct.x11_rgb_s*
  %125 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman151 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %125, i32 0, i32 85
  %color_to_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman151, i32 0, i32 4
  %values = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb, i32 0, i32 1
  store %struct.x11_rgb_s* %124, %struct.x11_rgb_s** %values, align 8, !tbaa !70
  %126 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman152 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %126, i32 0, i32 85
  %color_to_rgb153 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman152, i32 0, i32 4
  %values154 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb153, i32 0, i32 1
  %127 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values154, align 8, !tbaa !70
  %tobool155 = icmp ne %struct.x11_rgb_s* %127, null
  br i1 %tobool155, label %if.then.156, label %if.else.166

if.then.156:                                      ; preds = %cond.end.144
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.156
  %129 = load i32, i32* %i, align 4, !tbaa !65
  %130 = load i32, i32* %count, align 4, !tbaa !65
  %cmp157 = icmp slt i32 %129, %130
  br i1 %cmp157, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %131 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %131 to i64
  %132 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman159 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %132, i32 0, i32 85
  %color_to_rgb160 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman159, i32 0, i32 4
  %values161 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb160, i32 0, i32 1
  %133 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values161, align 8, !tbaa !70
  %arrayidx162 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %133, i64 %idxprom
  %defined = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %arrayidx162, i32 0, i32 1
  store i32 0, i32* %defined, align 4, !tbaa !71
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %135 = load i32, i32* %count, align 4, !tbaa !65
  %136 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman163 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %136, i32 0, i32 85
  %color_to_rgb164 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman163, i32 0, i32 4
  %size165 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb164, i32 0, i32 0
  store i32 %135, i32* %size165, align 4, !tbaa !73
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  br label %if.end.170

if.else.166:                                      ; preds = %cond.end.144
  %138 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman167 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %138, i32 0, i32 85
  %color_to_rgb168 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman167, i32 0, i32 4
  %size169 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb168, i32 0, i32 0
  store i32 0, i32* %size169, align 4, !tbaa !73
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.166, %for.end
  %139 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = load i8, i8* %palette, align 1, !tbaa !42
  %conv171 = sext i8 %140 to i32
  switch i32 %conv171, label %sw.default.472 [
    i32 67, label %sw.bb.172
    i32 71, label %sw.bb.352
    i32 77, label %sw.bb.463
  ]

sw.bb.172:                                        ; preds = %if.end.170
  %141 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info173 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %141, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info173, i32 0, i32 1
  store i32 3, i32* %num_components, align 4, !tbaa !74
  %142 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman174 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %142, i32 0, i32 85
  %num_rgb175 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman174, i32 0, i32 0
  %143 = load i32, i32* %num_rgb175, align 4, !tbaa !56
  %sub176 = sub nsw i32 %143, 1
  %144 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info177 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %144, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info177, i32 0, i32 6
  store i32 %sub176, i32* %max_color, align 4, !tbaa !75
  %145 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info178 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %145, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info178, i32 0, i32 5
  store i32 %sub176, i32* %max_gray, align 4, !tbaa !76
  %146 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo179 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %146, i32 0, i32 60
  %147 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo179, align 8, !tbaa !6
  %visual = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %147, i32 0, i32 0
  %148 = load %struct.Visual*, %struct.Visual** %visual, align 8, !tbaa !77
  %149 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %149, i32 0, i32 59
  %150 = load %struct.Screen*, %struct.Screen** %scr, align 8, !tbaa !78
  %root_visual = getelementptr inbounds %struct.Screen, %struct.Screen* %150, i32 0, i32 10
  %151 = load %struct.Visual*, %struct.Visual** %root_visual, align 8, !tbaa !79
  %cmp180 = icmp eq %struct.Visual* %148, %151
  br i1 %cmp180, label %if.then.182, label %if.else.187

if.then.182:                                      ; preds = %sw.bb.172
  %152 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call183 = call %struct.XStandardColormap* @x_get_std_cmap(%struct.gx_device_X_s* %152, i64 27) #5
  %153 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman184 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %153, i32 0, i32 85
  %std_cmap185 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman184, i32 0, i32 3
  %map186 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap185, i32 0, i32 0
  store %struct.XStandardColormap* %call183, %struct.XStandardColormap** %map186, align 8, !tbaa !57
  br label %if.end.192

if.else.187:                                      ; preds = %sw.bb.172
  %154 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call188 = call %struct.XStandardColormap* @x_get_std_cmap(%struct.gx_device_X_s* %154, i64 25) #5
  %155 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman189 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %155, i32 0, i32 85
  %std_cmap190 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman189, i32 0, i32 3
  %map191 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap190, i32 0, i32 0
  store %struct.XStandardColormap* %call188, %struct.XStandardColormap** %map191, align 8, !tbaa !57
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.187, %if.then.182
  %156 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman193 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %156, i32 0, i32 85
  %std_cmap194 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman193, i32 0, i32 3
  %map195 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap194, i32 0, i32 0
  %157 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map195, align 8, !tbaa !57
  %tobool196 = icmp ne %struct.XStandardColormap* %157, null
  br i1 %tobool196, label %if.then.205, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %if.end.192
  %158 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo198 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %158, i32 0, i32 60
  %159 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo198, align 8, !tbaa !6
  %class199 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %159, i32 0, i32 4
  %160 = load i32, i32* %class199, align 4, !tbaa !39
  %cmp200 = icmp eq i32 %160, 4
  br i1 %cmp200, label %land.lhs.true.202, label %if.else.273

land.lhs.true.202:                                ; preds = %lor.lhs.false.197
  %161 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call203 = call i32 @alloc_std_cmap(%struct.gx_device_X_s* %161, i32 1) #5
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then.205, label %if.else.273

if.then.205:                                      ; preds = %land.lhs.true.202, %if.end.192
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman206 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 85
  %std_cmap207 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman206, i32 0, i32 3
  %map208 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap207, i32 0, i32 0
  %163 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map208, align 8, !tbaa !57
  %red_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %163, i32 0, i32 1
  %164 = load i64, i64* %red_max, align 8, !tbaa !81
  %165 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman209 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %165, i32 0, i32 85
  %std_cmap210 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman209, i32 0, i32 3
  %map211 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap210, i32 0, i32 0
  %166 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map211, align 8, !tbaa !57
  %green_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %166, i32 0, i32 3
  %167 = load i64, i64* %green_max, align 8, !tbaa !83
  %168 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman212 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %168, i32 0, i32 85
  %std_cmap213 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman212, i32 0, i32 3
  %map214 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap213, i32 0, i32 0
  %169 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map214, align 8, !tbaa !57
  %blue_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %169, i32 0, i32 5
  %170 = load i64, i64* %blue_max, align 8, !tbaa !84
  %cmp215 = icmp ult i64 %167, %170
  br i1 %cmp215, label %cond.true.217, label %cond.false.222

cond.true.217:                                    ; preds = %if.then.205
  %171 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman218 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %171, i32 0, i32 85
  %std_cmap219 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman218, i32 0, i32 3
  %map220 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap219, i32 0, i32 0
  %172 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map220, align 8, !tbaa !57
  %green_max221 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %172, i32 0, i32 3
  %173 = load i64, i64* %green_max221, align 8, !tbaa !83
  br label %cond.end.227

cond.false.222:                                   ; preds = %if.then.205
  %174 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman223 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %174, i32 0, i32 85
  %std_cmap224 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman223, i32 0, i32 3
  %map225 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap224, i32 0, i32 0
  %175 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map225, align 8, !tbaa !57
  %blue_max226 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %175, i32 0, i32 5
  %176 = load i64, i64* %blue_max226, align 8, !tbaa !84
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.222, %cond.true.217
  %cond228 = phi i64 [ %173, %cond.true.217 ], [ %176, %cond.false.222 ]
  %cmp229 = icmp ult i64 %164, %cond228
  br i1 %cmp229, label %cond.true.231, label %cond.false.236

cond.true.231:                                    ; preds = %cond.end.227
  %177 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman232 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %177, i32 0, i32 85
  %std_cmap233 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman232, i32 0, i32 3
  %map234 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap233, i32 0, i32 0
  %178 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map234, align 8, !tbaa !57
  %red_max235 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %178, i32 0, i32 1
  %179 = load i64, i64* %red_max235, align 8, !tbaa !81
  br label %cond.end.259

cond.false.236:                                   ; preds = %cond.end.227
  %180 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman237 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %180, i32 0, i32 85
  %std_cmap238 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman237, i32 0, i32 3
  %map239 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap238, i32 0, i32 0
  %181 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map239, align 8, !tbaa !57
  %green_max240 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %181, i32 0, i32 3
  %182 = load i64, i64* %green_max240, align 8, !tbaa !83
  %183 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman241 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %183, i32 0, i32 85
  %std_cmap242 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman241, i32 0, i32 3
  %map243 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap242, i32 0, i32 0
  %184 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map243, align 8, !tbaa !57
  %blue_max244 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %184, i32 0, i32 5
  %185 = load i64, i64* %blue_max244, align 8, !tbaa !84
  %cmp245 = icmp ult i64 %182, %185
  br i1 %cmp245, label %cond.true.247, label %cond.false.252

cond.true.247:                                    ; preds = %cond.false.236
  %186 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman248 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %186, i32 0, i32 85
  %std_cmap249 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman248, i32 0, i32 3
  %map250 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap249, i32 0, i32 0
  %187 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map250, align 8, !tbaa !57
  %green_max251 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %187, i32 0, i32 3
  %188 = load i64, i64* %green_max251, align 8, !tbaa !83
  br label %cond.end.257

cond.false.252:                                   ; preds = %cond.false.236
  %189 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman253 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %189, i32 0, i32 85
  %std_cmap254 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman253, i32 0, i32 3
  %map255 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap254, i32 0, i32 0
  %190 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map255, align 8, !tbaa !57
  %blue_max256 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %190, i32 0, i32 5
  %191 = load i64, i64* %blue_max256, align 8, !tbaa !84
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.252, %cond.true.247
  %cond258 = phi i64 [ %188, %cond.true.247 ], [ %191, %cond.false.252 ]
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.end.257, %cond.true.231
  %cond260 = phi i64 [ %179, %cond.true.231 ], [ %cond258, %cond.end.257 ]
  %add = add i64 %cond260, 1
  %conv261 = trunc i64 %add to i32
  %192 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info262 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %192, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info262, i32 0, i32 8
  store i32 %conv261, i32* %dither_colors, align 4, !tbaa !85
  %193 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info263 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %193, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info263, i32 0, i32 7
  store i32 %conv261, i32* %dither_grays, align 4, !tbaa !86
  %194 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman264 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %194, i32 0, i32 85
  %std_cmap265 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman264, i32 0, i32 3
  %map266 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap265, i32 0, i32 0
  %195 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map266, align 8, !tbaa !57
  %tobool267 = icmp ne %struct.XStandardColormap* %195, null
  br i1 %tobool267, label %if.then.268, label %if.end.272

if.then.268:                                      ; preds = %cond.end.259
  %196 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %197 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman269 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %197, i32 0, i32 85
  %std_cmap270 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman269, i32 0, i32 3
  %map271 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap270, i32 0, i32 0
  %198 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map271, align 8, !tbaa !57
  call void @set_std_cmap(%struct.gx_device_X_s* %196, %struct.XStandardColormap* %198) #5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.268, %cond.end.259
  br label %if.end.335

if.else.273:                                      ; preds = %land.lhs.true.202, %lor.lhs.false.197
  %199 = bitcast i32* %ramp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo274 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %200, i32 0, i32 60
  %201 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo274, align 8, !tbaa !6
  %colormap_size275 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %201, i32 0, i32 8
  %202 = load i32, i32* %colormap_size275, align 4, !tbaa !41
  %conv276 = sitofp i32 %202 to double
  %div = fdiv double %conv276, 2.000000e+00
  %call277 = call double @pow(double %div, double 0x3FD5555555555555) #6
  %conv278 = fptosi double %call277 to i32
  %203 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxRGBRamp = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %203, i32 0, i32 90
  %204 = load i32, i32* %maxRGBRamp, align 4, !tbaa !87
  %205 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman279 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %205, i32 0, i32 85
  %num_rgb280 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman279, i32 0, i32 0
  %206 = load i32, i32* %num_rgb280, align 4, !tbaa !56
  %cmp281 = icmp slt i32 %204, %206
  br i1 %cmp281, label %cond.true.283, label %cond.false.285

cond.true.283:                                    ; preds = %if.else.273
  %207 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxRGBRamp284 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %207, i32 0, i32 90
  %208 = load i32, i32* %maxRGBRamp284, align 4, !tbaa !87
  br label %cond.end.288

cond.false.285:                                   ; preds = %if.else.273
  %209 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman286 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %209, i32 0, i32 85
  %num_rgb287 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman286, i32 0, i32 0
  %210 = load i32, i32* %num_rgb287, align 4, !tbaa !56
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.285, %cond.true.283
  %cond289 = phi i32 [ %208, %cond.true.283 ], [ %210, %cond.false.285 ]
  %cmp290 = icmp slt i32 %conv278, %cond289
  br i1 %cmp290, label %cond.true.292, label %cond.false.299

cond.true.292:                                    ; preds = %cond.end.288
  %211 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo293 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %211, i32 0, i32 60
  %212 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo293, align 8, !tbaa !6
  %colormap_size294 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %212, i32 0, i32 8
  %213 = load i32, i32* %colormap_size294, align 4, !tbaa !41
  %conv295 = sitofp i32 %213 to double
  %div296 = fdiv double %conv295, 2.000000e+00
  %call297 = call double @pow(double %div296, double 0x3FD5555555555555) #6
  %conv298 = fptosi double %call297 to i32
  br label %cond.end.312

cond.false.299:                                   ; preds = %cond.end.288
  %214 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxRGBRamp300 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %214, i32 0, i32 90
  %215 = load i32, i32* %maxRGBRamp300, align 4, !tbaa !87
  %216 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman301 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %216, i32 0, i32 85
  %num_rgb302 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman301, i32 0, i32 0
  %217 = load i32, i32* %num_rgb302, align 4, !tbaa !56
  %cmp303 = icmp slt i32 %215, %217
  br i1 %cmp303, label %cond.true.305, label %cond.false.307

cond.true.305:                                    ; preds = %cond.false.299
  %218 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxRGBRamp306 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %218, i32 0, i32 90
  %219 = load i32, i32* %maxRGBRamp306, align 4, !tbaa !87
  br label %cond.end.310

cond.false.307:                                   ; preds = %cond.false.299
  %220 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman308 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %220, i32 0, i32 85
  %num_rgb309 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman308, i32 0, i32 0
  %221 = load i32, i32* %num_rgb309, align 4, !tbaa !56
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.307, %cond.true.305
  %cond311 = phi i32 [ %219, %cond.true.305 ], [ %221, %cond.false.307 ]
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.end.310, %cond.true.292
  %cond313 = phi i32 [ %conv298, %cond.true.292 ], [ %cond311, %cond.end.310 ]
  store i32 %cond313, i32* %ramp_size, align 4, !tbaa !65
  br label %while.cond

while.cond:                                       ; preds = %if.end.326, %if.then.325, %cond.end.312
  %222 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman314 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %222, i32 0, i32 85
  %dither_ramp315 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman314, i32 0, i32 5
  %223 = load i64*, i64** %dither_ramp315, align 8, !tbaa !59
  %tobool316 = icmp ne i64* %223, null
  br i1 %tobool316, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %224 = load i32, i32* %ramp_size, align 4, !tbaa !65
  %cmp317 = icmp sge i32 %224, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %225 = phi i1 [ false, %while.cond ], [ %cmp317, %land.rhs ]
  br i1 %225, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %226 = load i32, i32* %ramp_size, align 4, !tbaa !65
  %227 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info319 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %227, i32 0, i32 11
  %dither_colors320 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info319, i32 0, i32 8
  store i32 %226, i32* %dither_colors320, align 4, !tbaa !85
  %228 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info321 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %228, i32 0, i32 11
  %dither_grays322 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info321, i32 0, i32 7
  store i32 %226, i32* %dither_grays322, align 4, !tbaa !86
  %229 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %230 = load i32, i32* %ramp_size, align 4, !tbaa !65
  %call323 = call i32 @setup_cube(%struct.gx_device_X_s* %229, i32 %230, i32 1) #5
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.end.326, label %if.then.325

if.then.325:                                      ; preds = %while.body
  %231 = load i32, i32* %ramp_size, align 4, !tbaa !65
  %dec = add nsw i32 %231, -1
  store i32 %dec, i32* %ramp_size, align 4, !tbaa !65
  br label %while.cond

if.end.326:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %232 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman327 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %232, i32 0, i32 85
  %dither_ramp328 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman327, i32 0, i32 5
  %233 = load i64*, i64** %dither_ramp328, align 8, !tbaa !59
  %tobool329 = icmp ne i64* %233, null
  br i1 %tobool329, label %if.end.331, label %if.then.330

if.then.330:                                      ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.331:                                       ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.332

cleanup.332:                                      ; preds = %if.then.330, %if.end.331
  %234 = bitcast i32* %ramp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %cleanup.dest.333 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.333, label %cleanup.552 [
    i32 0, label %cleanup.cont.334
    i32 9, label %grayscale
  ]

cleanup.cont.334:                                 ; preds = %cleanup.332
  br label %if.end.335

if.end.335:                                       ; preds = %cleanup.cont.334, %if.end.272
  %235 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %236 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman336 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %236, i32 0, i32 85
  %num_rgb337 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman336, i32 0, i32 0
  %237 = load i32, i32* %num_rgb337, align 4, !tbaa !56
  %238 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman338 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %238, i32 0, i32 85
  %num_rgb339 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman338, i32 0, i32 0
  %239 = load i32, i32* %num_rgb339, align 4, !tbaa !56
  %mul = mul nsw i32 %237, %239
  %240 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman340 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %240, i32 0, i32 85
  %num_rgb341 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman340, i32 0, i32 0
  %241 = load i32, i32* %num_rgb341, align 4, !tbaa !56
  %mul342 = mul nsw i32 %mul, %241
  %242 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info343 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %242, i32 0, i32 11
  %dither_colors344 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info343, i32 0, i32 8
  %243 = load i32, i32* %dither_colors344, align 4, !tbaa !85
  %244 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info345 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %244, i32 0, i32 11
  %dither_colors346 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info345, i32 0, i32 8
  %245 = load i32, i32* %dither_colors346, align 4, !tbaa !85
  %mul347 = mul i32 %243, %245
  %246 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info348 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %246, i32 0, i32 11
  %dither_colors349 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info348, i32 0, i32 8
  %247 = load i32, i32* %dither_colors349, align 4, !tbaa !85
  %mul350 = mul i32 %mul347, %247
  %sub351 = sub i32 %mul342, %mul350
  call void @alloc_dynamic_colors(%struct.gx_device_X_s* %235, i32 %sub351) #5
  br label %sw.epilog.492

sw.bb.352:                                        ; preds = %if.end.170
  br label %grayscale

grayscale:                                        ; preds = %sw.bb.352, %cleanup.332
  %248 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info353 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %248, i32 0, i32 11
  %num_components354 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info353, i32 0, i32 1
  store i32 1, i32* %num_components354, align 4, !tbaa !74
  %249 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info355 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %249, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info355, i32 0, i32 4
  store i8 0, i8* %gray_index, align 1, !tbaa !88
  %250 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman356 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %250, i32 0, i32 85
  %num_rgb357 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman356, i32 0, i32 0
  %251 = load i32, i32* %num_rgb357, align 4, !tbaa !56
  %sub358 = sub nsw i32 %251, 1
  %252 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info359 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %252, i32 0, i32 11
  %max_gray360 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info359, i32 0, i32 5
  store i32 %sub358, i32* %max_gray360, align 4, !tbaa !76
  %253 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call361 = call %struct.XStandardColormap* @x_get_std_cmap(%struct.gx_device_X_s* %253, i64 28) #5
  %254 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman362 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %254, i32 0, i32 85
  %std_cmap363 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman362, i32 0, i32 3
  %map364 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap363, i32 0, i32 0
  store %struct.XStandardColormap* %call361, %struct.XStandardColormap** %map364, align 8, !tbaa !57
  %255 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman365 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %255, i32 0, i32 85
  %std_cmap366 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman365, i32 0, i32 3
  %map367 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap366, i32 0, i32 0
  %256 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map367, align 8, !tbaa !57
  %tobool368 = icmp ne %struct.XStandardColormap* %256, null
  br i1 %tobool368, label %if.then.377, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %grayscale
  %257 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo370 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %257, i32 0, i32 60
  %258 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo370, align 8, !tbaa !6
  %class371 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %258, i32 0, i32 4
  %259 = load i32, i32* %class371, align 4, !tbaa !39
  %cmp372 = icmp eq i32 %259, 0
  br i1 %cmp372, label %land.lhs.true.374, label %if.else.395

land.lhs.true.374:                                ; preds = %lor.lhs.false.369
  %260 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call375 = call i32 @alloc_std_cmap(%struct.gx_device_X_s* %260, i32 0) #5
  %tobool376 = icmp ne i32 %call375, 0
  br i1 %tobool376, label %if.then.377, label %if.else.395

if.then.377:                                      ; preds = %land.lhs.true.374, %grayscale
  %261 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman378 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %261, i32 0, i32 85
  %std_cmap379 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman378, i32 0, i32 3
  %map380 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap379, i32 0, i32 0
  %262 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map380, align 8, !tbaa !57
  %red_max381 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %262, i32 0, i32 1
  %263 = load i64, i64* %red_max381, align 8, !tbaa !81
  %add382 = add i64 %263, 1
  %conv383 = trunc i64 %add382 to i32
  %264 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info384 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %264, i32 0, i32 11
  %dither_grays385 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info384, i32 0, i32 7
  store i32 %conv383, i32* %dither_grays385, align 4, !tbaa !86
  %265 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman386 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %265, i32 0, i32 85
  %std_cmap387 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman386, i32 0, i32 3
  %map388 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap387, i32 0, i32 0
  %266 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map388, align 8, !tbaa !57
  %tobool389 = icmp ne %struct.XStandardColormap* %266, null
  br i1 %tobool389, label %if.then.390, label %if.end.394

if.then.390:                                      ; preds = %if.then.377
  %267 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %268 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman391 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %268, i32 0, i32 85
  %std_cmap392 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman391, i32 0, i32 3
  %map393 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap392, i32 0, i32 0
  %269 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map393, align 8, !tbaa !57
  call void @set_std_cmap(%struct.gx_device_X_s* %267, %struct.XStandardColormap* %269) #5
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.390, %if.then.377
  br label %if.end.457

if.else.395:                                      ; preds = %land.lhs.true.374, %lor.lhs.false.369
  %270 = bitcast i32* %ramp_size396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %270) #1
  %271 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo397 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %271, i32 0, i32 60
  %272 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo397, align 8, !tbaa !6
  %colormap_size398 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %272, i32 0, i32 8
  %273 = load i32, i32* %colormap_size398, align 4, !tbaa !41
  %div399 = sdiv i32 %273, 2
  %274 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxGrayRamp = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %274, i32 0, i32 89
  %275 = load i32, i32* %maxGrayRamp, align 4, !tbaa !89
  %276 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman400 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %276, i32 0, i32 85
  %num_rgb401 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman400, i32 0, i32 0
  %277 = load i32, i32* %num_rgb401, align 4, !tbaa !56
  %cmp402 = icmp slt i32 %275, %277
  br i1 %cmp402, label %cond.true.404, label %cond.false.406

cond.true.404:                                    ; preds = %if.else.395
  %278 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxGrayRamp405 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %278, i32 0, i32 89
  %279 = load i32, i32* %maxGrayRamp405, align 4, !tbaa !89
  br label %cond.end.409

cond.false.406:                                   ; preds = %if.else.395
  %280 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman407 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %280, i32 0, i32 85
  %num_rgb408 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman407, i32 0, i32 0
  %281 = load i32, i32* %num_rgb408, align 4, !tbaa !56
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.406, %cond.true.404
  %cond410 = phi i32 [ %279, %cond.true.404 ], [ %281, %cond.false.406 ]
  %cmp411 = icmp slt i32 %div399, %cond410
  br i1 %cmp411, label %cond.true.413, label %cond.false.417

cond.true.413:                                    ; preds = %cond.end.409
  %282 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo414 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %282, i32 0, i32 60
  %283 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo414, align 8, !tbaa !6
  %colormap_size415 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %283, i32 0, i32 8
  %284 = load i32, i32* %colormap_size415, align 4, !tbaa !41
  %div416 = sdiv i32 %284, 2
  br label %cond.end.430

cond.false.417:                                   ; preds = %cond.end.409
  %285 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxGrayRamp418 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %285, i32 0, i32 89
  %286 = load i32, i32* %maxGrayRamp418, align 4, !tbaa !89
  %287 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman419 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %287, i32 0, i32 85
  %num_rgb420 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman419, i32 0, i32 0
  %288 = load i32, i32* %num_rgb420, align 4, !tbaa !56
  %cmp421 = icmp slt i32 %286, %288
  br i1 %cmp421, label %cond.true.423, label %cond.false.425

cond.true.423:                                    ; preds = %cond.false.417
  %289 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %maxGrayRamp424 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %289, i32 0, i32 89
  %290 = load i32, i32* %maxGrayRamp424, align 4, !tbaa !89
  br label %cond.end.428

cond.false.425:                                   ; preds = %cond.false.417
  %291 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman426 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %291, i32 0, i32 85
  %num_rgb427 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman426, i32 0, i32 0
  %292 = load i32, i32* %num_rgb427, align 4, !tbaa !56
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.425, %cond.true.423
  %cond429 = phi i32 [ %290, %cond.true.423 ], [ %292, %cond.false.425 ]
  br label %cond.end.430

cond.end.430:                                     ; preds = %cond.end.428, %cond.true.413
  %cond431 = phi i32 [ %div416, %cond.true.413 ], [ %cond429, %cond.end.428 ]
  store i32 %cond431, i32* %ramp_size396, align 4, !tbaa !65
  br label %while.cond.432

while.cond.432:                                   ; preds = %if.end.447, %if.then.445, %cond.end.430
  %293 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman433 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %293, i32 0, i32 85
  %dither_ramp434 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman433, i32 0, i32 5
  %294 = load i64*, i64** %dither_ramp434, align 8, !tbaa !59
  %tobool435 = icmp ne i64* %294, null
  br i1 %tobool435, label %land.end.439, label %land.rhs.436

land.rhs.436:                                     ; preds = %while.cond.432
  %295 = load i32, i32* %ramp_size396, align 4, !tbaa !65
  %cmp437 = icmp sge i32 %295, 3
  br label %land.end.439

land.end.439:                                     ; preds = %land.rhs.436, %while.cond.432
  %296 = phi i1 [ false, %while.cond.432 ], [ %cmp437, %land.rhs.436 ]
  br i1 %296, label %while.body.440, label %while.end.448

while.body.440:                                   ; preds = %land.end.439
  %297 = load i32, i32* %ramp_size396, align 4, !tbaa !65
  %298 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info441 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %298, i32 0, i32 11
  %dither_grays442 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info441, i32 0, i32 7
  store i32 %297, i32* %dither_grays442, align 4, !tbaa !86
  %299 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %300 = load i32, i32* %ramp_size396, align 4, !tbaa !65
  %call443 = call i32 @setup_cube(%struct.gx_device_X_s* %299, i32 %300, i32 0) #5
  %tobool444 = icmp ne i32 %call443, 0
  br i1 %tobool444, label %if.end.447, label %if.then.445

if.then.445:                                      ; preds = %while.body.440
  %301 = load i32, i32* %ramp_size396, align 4, !tbaa !65
  %div446 = sdiv i32 %301, 2
  store i32 %div446, i32* %ramp_size396, align 4, !tbaa !65
  br label %while.cond.432

if.end.447:                                       ; preds = %while.body.440
  br label %while.cond.432

while.end.448:                                    ; preds = %land.end.439
  %302 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman449 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %302, i32 0, i32 85
  %dither_ramp450 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman449, i32 0, i32 5
  %303 = load i64*, i64** %dither_ramp450, align 8, !tbaa !59
  %tobool451 = icmp ne i64* %303, null
  br i1 %tobool451, label %if.end.453, label %if.then.452

if.then.452:                                      ; preds = %while.end.448
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.454

if.end.453:                                       ; preds = %while.end.448
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.454

cleanup.454:                                      ; preds = %if.then.452, %if.end.453
  %304 = bitcast i32* %ramp_size396 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %cleanup.dest.455 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.455, label %cleanup.552 [
    i32 0, label %cleanup.cont.456
    i32 12, label %monochrome
  ]

cleanup.cont.456:                                 ; preds = %cleanup.454
  br label %if.end.457

if.end.457:                                       ; preds = %cleanup.cont.456, %if.end.394
  %305 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %306 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman458 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %306, i32 0, i32 85
  %num_rgb459 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman458, i32 0, i32 0
  %307 = load i32, i32* %num_rgb459, align 4, !tbaa !56
  %308 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info460 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %308, i32 0, i32 11
  %dither_grays461 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info460, i32 0, i32 7
  %309 = load i32, i32* %dither_grays461, align 4, !tbaa !86
  %sub462 = sub i32 %307, %309
  call void @alloc_dynamic_colors(%struct.gx_device_X_s* %305, i32 %sub462) #5
  br label %sw.epilog.492

sw.bb.463:                                        ; preds = %if.end.170
  br label %monochrome

monochrome:                                       ; preds = %sw.bb.463, %cleanup.454
  %310 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info464 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %310, i32 0, i32 11
  %num_components465 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info464, i32 0, i32 1
  store i32 1, i32* %num_components465, align 4, !tbaa !74
  %311 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info466 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %311, i32 0, i32 11
  %gray_index467 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info466, i32 0, i32 4
  store i8 0, i8* %gray_index467, align 1, !tbaa !88
  %312 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info468 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %312, i32 0, i32 11
  %max_gray469 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info468, i32 0, i32 5
  store i32 1, i32* %max_gray469, align 4, !tbaa !76
  %313 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info470 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %313, i32 0, i32 11
  %dither_grays471 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info470, i32 0, i32 7
  store i32 2, i32* %dither_grays471, align 4, !tbaa !86
  br label %sw.epilog.492

sw.default.472:                                   ; preds = %if.end.170
  %314 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory473 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %314, i32 0, i32 3
  %315 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory473, align 8, !tbaa !48
  %call474 = call i8* @gs_program_name() #5
  %call475 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %315, i8* %call474, i64 %call475) #5
  %316 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory476 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %316, i32 0, i32 3
  %317 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory476, align 8, !tbaa !48
  %318 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %palette477 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %318, i32 0, i32 91
  %319 = load i8*, i8** %palette477, align 8, !tbaa !49
  %call478 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %319) #5
  %320 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman479 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %320, i32 0, i32 85
  %color_to_rgb480 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman479, i32 0, i32 4
  %values481 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb480, i32 0, i32 1
  %321 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values481, align 8, !tbaa !70
  %tobool482 = icmp ne %struct.x11_rgb_s* %321, null
  br i1 %tobool482, label %if.then.483, label %if.end.491

if.then.483:                                      ; preds = %sw.default.472
  %322 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory484 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %322, i32 0, i32 3
  %323 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory484, align 8, !tbaa !48
  %324 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman485 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %324, i32 0, i32 85
  %color_to_rgb486 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman485, i32 0, i32 4
  %values487 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb486, i32 0, i32 1
  %325 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values487, align 8, !tbaa !70
  %326 = bitcast %struct.x11_rgb_s* %325 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %323, i8* %326, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #5
  %327 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman488 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %327, i32 0, i32 85
  %color_to_rgb489 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman488, i32 0, i32 4
  %values490 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb489, i32 0, i32 1
  store %struct.x11_rgb_s* null, %struct.x11_rgb_s** %values490, align 8, !tbaa !70
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.483, %sw.default.472
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.552

sw.epilog.492:                                    ; preds = %monochrome, %if.end.457, %if.end.335
  %328 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info493 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %328, i32 0, i32 11
  %num_components494 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info493, i32 0, i32 1
  %329 = load i32, i32* %num_components494, align 4, !tbaa !74
  %cmp495 = icmp sgt i32 %329, 1
  br i1 %cmp495, label %cond.true.503, label %lor.lhs.false.497

lor.lhs.false.497:                                ; preds = %sw.epilog.492
  %330 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info498 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %330, i32 0, i32 11
  %gray_index499 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info498, i32 0, i32 4
  %331 = load i8, i8* %gray_index499, align 1, !tbaa !88
  %conv500 = zext i8 %331 to i32
  %cmp501 = icmp eq i32 %conv500, 255
  br i1 %cmp501, label %cond.true.503, label %cond.false.506

cond.true.503:                                    ; preds = %lor.lhs.false.497, %sw.epilog.492
  %332 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info504 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %332, i32 0, i32 11
  %max_color505 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info504, i32 0, i32 6
  %333 = load i32, i32* %max_color505, align 4, !tbaa !75
  br label %cond.end.509

cond.false.506:                                   ; preds = %lor.lhs.false.497
  %334 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info507 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %334, i32 0, i32 11
  %max_gray508 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info507, i32 0, i32 5
  %335 = load i32, i32* %max_gray508, align 4, !tbaa !76
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.506, %cond.true.503
  %cond510 = phi i32 [ %333, %cond.true.503 ], [ %335, %cond.false.506 ]
  %cmp511 = icmp ult i32 %cond510, 31
  br i1 %cmp511, label %if.end.551, label %if.then.513

if.then.513:                                      ; preds = %cond.end.509
  %336 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman514 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %336, i32 0, i32 85
  %std_cmap515 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman514, i32 0, i32 3
  %map516 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap515, i32 0, i32 0
  %337 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map516, align 8, !tbaa !57
  %tobool517 = icmp ne %struct.XStandardColormap* %337, null
  br i1 %tobool517, label %if.then.518, label %if.end.550

if.then.518:                                      ; preds = %if.then.513
  %338 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman519 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %338, i32 0, i32 85
  %std_cmap520 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman519, i32 0, i32 3
  %red521 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap520, i32 0, i32 2
  %cv_shift = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %red521, i32 0, i32 0
  %339 = load i32, i32* %cv_shift, align 4, !tbaa !90
  %shl522 = shl i32 65535, %339
  %340 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman523 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %340, i32 0, i32 85
  %match_mask524 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman523, i32 0, i32 2
  %red525 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask524, i32 0, i32 0
  %341 = load i16, i16* %red525, align 2, !tbaa !91
  %conv526 = zext i16 %341 to i32
  %and = and i32 %conv526, %shl522
  %conv527 = trunc i32 %and to i16
  store i16 %conv527, i16* %red525, align 2, !tbaa !91
  %342 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman528 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %342, i32 0, i32 85
  %std_cmap529 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman528, i32 0, i32 3
  %green530 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap529, i32 0, i32 3
  %cv_shift531 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %green530, i32 0, i32 0
  %343 = load i32, i32* %cv_shift531, align 4, !tbaa !92
  %shl532 = shl i32 65535, %343
  %344 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman533 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %344, i32 0, i32 85
  %match_mask534 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman533, i32 0, i32 2
  %green535 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask534, i32 0, i32 1
  %345 = load i16, i16* %green535, align 2, !tbaa !93
  %conv536 = zext i16 %345 to i32
  %and537 = and i32 %conv536, %shl532
  %conv538 = trunc i32 %and537 to i16
  store i16 %conv538, i16* %green535, align 2, !tbaa !93
  %346 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman539 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %346, i32 0, i32 85
  %std_cmap540 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman539, i32 0, i32 3
  %blue541 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap540, i32 0, i32 4
  %cv_shift542 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %blue541, i32 0, i32 0
  %347 = load i32, i32* %cv_shift542, align 4, !tbaa !94
  %shl543 = shl i32 65535, %347
  %348 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman544 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %348, i32 0, i32 85
  %match_mask545 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman544, i32 0, i32 2
  %blue546 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask545, i32 0, i32 2
  %349 = load i16, i16* %blue546, align 2, !tbaa !95
  %conv547 = zext i16 %349 to i32
  %and548 = and i32 %conv547, %shl543
  %conv549 = trunc i32 %and548 to i16
  store i16 %conv549, i16* %blue546, align 2, !tbaa !95
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.518, %if.then.513
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %cond.end.509
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.552

cleanup.552:                                      ; preds = %if.end.551, %if.end.491, %cleanup.454, %cleanup.332, %sw.default, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %palette) #1
  %350 = load i32, i32* %retval
  ret i32 %350
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #2

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct.XStandardColormap* @x_get_std_cmap(%struct.gx_device_X_s* %xdev, i64 %prop) #0 {
entry:
  %retval = alloca %struct.XStandardColormap*, align 8
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %prop.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %scmap = alloca %struct.XStandardColormap*, align 8
  %sp = alloca %struct.XStandardColormap*, align 8
  %nitems = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i64 %prop, i64* %prop.addr, align 8, !tbaa !45
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.XStandardColormap** %scmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.XStandardColormap** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %nitems to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 58
  %5 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !44
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 59
  %7 = load %struct.Screen*, %struct.Screen** %scr, align 8, !tbaa !78
  %root = getelementptr inbounds %struct.Screen, %struct.Screen* %7, i32 0, i32 2
  %8 = load i64, i64* %root, align 8, !tbaa !96
  %9 = load i64, i64* %prop.addr, align 8, !tbaa !45
  %call = call i32 @XGetRGBColormaps(%struct._XDisplay* %5, i64 %8, %struct.XStandardColormap** %scmap, i32* %nitems, i64 %9) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !65
  %10 = load %struct.XStandardColormap*, %struct.XStandardColormap** %scmap, align 8, !tbaa !2
  store %struct.XStandardColormap* %10, %struct.XStandardColormap** %sp, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4, !tbaa !65
  %12 = load i32, i32* %nitems, align 4, !tbaa !65
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 61
  %14 = load i64, i64* %cmap, align 8, !tbaa !97
  %15 = load %struct.XStandardColormap*, %struct.XStandardColormap** %sp, align 8, !tbaa !2
  %colormap = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %15, i32 0, i32 0
  %16 = load i64, i64* %colormap, align 8, !tbaa !98
  %cmp1 = icmp eq i64 %14, %16
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %17 = load %struct.XStandardColormap*, %struct.XStandardColormap** %sp, align 8, !tbaa !2
  store %struct.XStandardColormap* %17, %struct.XStandardColormap** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  %19 = load %struct.XStandardColormap*, %struct.XStandardColormap** %sp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %19, i32 1
  store %struct.XStandardColormap* %incdec.ptr, %struct.XStandardColormap** %sp, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  store %struct.XStandardColormap* null, %struct.XStandardColormap** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %20 = bitcast i32* %nitems to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.XStandardColormap** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.XStandardColormap** %scmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load %struct.XStandardColormap*, %struct.XStandardColormap** %retval
  ret %struct.XStandardColormap* %24
}

; Function Attrs: nounwind uwtable
define internal i32 @alloc_std_cmap(%struct.gx_device_X_s* %xdev, i32 %colored) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %colored.addr = alloca i32, align 4
  %cmap = alloca %struct.XStandardColormap*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32 %colored, i32* %colored.addr, align 4, !tbaa !65
  %0 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call %struct.XStandardColormap* @XAllocStandardColormap() #5
  store %struct.XStandardColormap* %call, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %1 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %cmp = icmp eq %struct.XStandardColormap* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 60
  %3 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !6
  %red_mask = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %3, i32 0, i32 5
  %4 = load i64, i64* %red_mask, align 8, !tbaa !99
  %5 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %5, i32 0, i32 1
  store i64 %4, i64* %red_max, align 8, !tbaa !81
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 60
  %7 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo3, align 8, !tbaa !6
  %depth = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %7, i32 0, i32 3
  %8 = load i32, i32* %depth, align 4, !tbaa !63
  %shl = shl i32 1, %8
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  %9 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max4 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %9, i32 0, i32 1
  store i64 %conv, i64* %red_max4, align 8, !tbaa !81
  %10 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %10, i32 0, i32 2
  store i64 1, i64* %red_mult, align 8, !tbaa !100
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %11 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult5 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %11, i32 0, i32 2
  store i64 1, i64* %red_mult5, align 8, !tbaa !100
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %12 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max6 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %12, i32 0, i32 1
  %13 = load i64, i64* %red_max6, align 8, !tbaa !81
  %and = and i64 %13, 1
  %cmp7 = icmp eq i64 %and, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max9 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %14, i32 0, i32 1
  %15 = load i64, i64* %red_max9, align 8, !tbaa !81
  %shr = lshr i64 %15, 1
  store i64 %shr, i64* %red_max9, align 8, !tbaa !81
  %16 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult10 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %16, i32 0, i32 2
  %17 = load i64, i64* %red_mult10, align 8, !tbaa !100
  %shl11 = shl i64 %17, 1
  store i64 %shl11, i64* %red_mult10, align 8, !tbaa !100
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.then.2
  %18 = load i32, i32* %colored.addr, align 4, !tbaa !65
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.13, label %if.else.38

if.then.13:                                       ; preds = %if.end.12
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo14 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 60
  %20 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo14, align 8, !tbaa !6
  %green_mask = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %20, i32 0, i32 6
  %21 = load i64, i64* %green_mask, align 8, !tbaa !101
  %22 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %22, i32 0, i32 3
  store i64 %21, i64* %green_max, align 8, !tbaa !83
  %23 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %23, i32 0, i32 4
  store i64 1, i64* %green_mult, align 8, !tbaa !102
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.body.20, %if.then.13
  %24 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max16 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %24, i32 0, i32 3
  %25 = load i64, i64* %green_max16, align 8, !tbaa !83
  %and17 = and i64 %25, 1
  %cmp18 = icmp eq i64 %and17, 0
  br i1 %cmp18, label %for.body.20, label %for.end.25

for.body.20:                                      ; preds = %for.cond.15
  %26 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max21 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %26, i32 0, i32 3
  %27 = load i64, i64* %green_max21, align 8, !tbaa !83
  %shr22 = lshr i64 %27, 1
  store i64 %shr22, i64* %green_max21, align 8, !tbaa !83
  %28 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult23 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %28, i32 0, i32 4
  %29 = load i64, i64* %green_mult23, align 8, !tbaa !102
  %shl24 = shl i64 %29, 1
  store i64 %shl24, i64* %green_mult23, align 8, !tbaa !102
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  %30 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %30, i32 0, i32 60
  %31 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo26, align 8, !tbaa !6
  %blue_mask = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %31, i32 0, i32 7
  %32 = load i64, i64* %blue_mask, align 8, !tbaa !103
  %33 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %33, i32 0, i32 5
  store i64 %32, i64* %blue_max, align 8, !tbaa !84
  %34 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %34, i32 0, i32 6
  store i64 1, i64* %blue_mult, align 8, !tbaa !104
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.body.32, %for.end.25
  %35 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max28 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %35, i32 0, i32 5
  %36 = load i64, i64* %blue_max28, align 8, !tbaa !84
  %and29 = and i64 %36, 1
  %cmp30 = icmp eq i64 %and29, 0
  br i1 %cmp30, label %for.body.32, label %for.end.37

for.body.32:                                      ; preds = %for.cond.27
  %37 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max33 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %37, i32 0, i32 5
  %38 = load i64, i64* %blue_max33, align 8, !tbaa !84
  %shr34 = lshr i64 %38, 1
  store i64 %shr34, i64* %blue_max33, align 8, !tbaa !84
  %39 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult35 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %39, i32 0, i32 6
  %40 = load i64, i64* %blue_mult35, align 8, !tbaa !104
  %shl36 = shl i64 %40, 1
  store i64 %shl36, i64* %blue_mult35, align 8, !tbaa !104
  br label %for.cond.27

for.end.37:                                       ; preds = %for.cond.27
  br label %if.end.45

if.else.38:                                       ; preds = %if.end.12
  %41 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max39 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %41, i32 0, i32 1
  %42 = load i64, i64* %red_max39, align 8, !tbaa !81
  %43 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max40 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %43, i32 0, i32 5
  store i64 %42, i64* %blue_max40, align 8, !tbaa !84
  %44 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max41 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %44, i32 0, i32 3
  store i64 %42, i64* %green_max41, align 8, !tbaa !83
  %45 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult42 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %45, i32 0, i32 2
  %46 = load i64, i64* %red_mult42, align 8, !tbaa !100
  %47 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult43 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %47, i32 0, i32 6
  store i64 %46, i64* %blue_mult43, align 8, !tbaa !104
  %48 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult44 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %48, i32 0, i32 4
  store i64 %46, i64* %green_mult44, align 8, !tbaa !102
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.38, %for.end.37
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %50 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  call void @set_std_cmap(%struct.gx_device_X_s* %49, %struct.XStandardColormap* %50) #5
  %51 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %51, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 3
  %free_map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 5
  store i32 1, i32* %free_map, align 4, !tbaa !58
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then
  %52 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @set_std_cmap(%struct.gx_device_X_s* %xdev, %struct.XStandardColormap* %map) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %map.addr = alloca %struct.XStandardColormap*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store %struct.XStandardColormap* %map, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %0 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 3
  %map1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 0
  store %struct.XStandardColormap* %0, %struct.XStandardColormap** %map1, align 8, !tbaa !57
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 85
  %std_cmap3 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman2, i32 0, i32 3
  %red = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap3, i32 0, i32 2
  %3 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %red_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %3, i32 0, i32 1
  %4 = load i64, i64* %red_max, align 8, !tbaa !81
  %conv = trunc i64 %4 to i32
  %5 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %red_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %5, i32 0, i32 2
  %6 = load i64, i64* %red_mult, align 8, !tbaa !100
  %conv4 = trunc i64 %6 to i32
  %call = call i32 @set_cmap_values(%struct.x11_cmap_values_s* %red, i32 %conv, i32 %conv4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 85
  %std_cmap6 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman5, i32 0, i32 3
  %green = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap6, i32 0, i32 3
  %8 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %green_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %8, i32 0, i32 3
  %9 = load i64, i64* %green_max, align 8, !tbaa !83
  %conv7 = trunc i64 %9 to i32
  %10 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %green_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %10, i32 0, i32 4
  %11 = load i64, i64* %green_mult, align 8, !tbaa !102
  %conv8 = trunc i64 %11 to i32
  %call9 = call i32 @set_cmap_values(%struct.x11_cmap_values_s* %green, i32 %conv7, i32 %conv8) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 85
  %std_cmap12 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman11, i32 0, i32 3
  %blue = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap12, i32 0, i32 4
  %13 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %blue_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %13, i32 0, i32 5
  %14 = load i64, i64* %blue_max, align 8, !tbaa !84
  %conv13 = trunc i64 %14 to i32
  %15 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map.addr, align 8, !tbaa !2
  %blue_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %15, i32 0, i32 6
  %16 = load i64, i64* %blue_mult, align 8, !tbaa !104
  %conv14 = trunc i64 %16 to i32
  %call15 = call i32 @set_cmap_values(%struct.x11_cmap_values_s* %blue, i32 %conv13, i32 %conv14) #5
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  %18 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman17 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %18, i32 0, i32 85
  %std_cmap18 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman17, i32 0, i32 3
  %fast = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap18, i32 0, i32 1
  store i32 %land.ext, i32* %fast, align 4, !tbaa !105
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @setup_cube(%struct.gx_device_X_s* %xdev, i32 %ramp_size, i32 %colors) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %ramp_size.addr = alloca i32, align 4
  %colors.addr = alloca i32, align 4
  %step = alloca i32, align 4
  %num_entries = alloca i32, align 4
  %max_rgb = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rgb_index = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %xc = alloca %struct.XColor, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32 %ramp_size, i32* %ramp_size.addr, align 4, !tbaa !65
  store i32 %colors, i32* %colors.addr, align 4, !tbaa !65
  %0 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %max_rgb, align 4, !tbaa !65
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %colors.addr, align 4, !tbaa !65
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %7 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %mul1 = mul nsw i32 %mul, %8
  store i32 %mul1, i32* %num_entries, align 4, !tbaa !65
  store i32 1, i32* %step, align 4, !tbaa !65
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  store i32 %9, i32* %num_entries, align 4, !tbaa !65
  %10 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %add = add nsw i32 %10, 1
  %11 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %mul2 = mul nsw i32 %add, %11
  %add3 = add nsw i32 %mul2, 1
  store i32 %add3, i32* %step, align 4, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !69
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !48
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !66
  %19 = load i32, i32* %num_entries, align 4, !tbaa !65
  %call = call i8* %15(%struct.gs_memory_s* %18, i32 8, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %20 = bitcast i8* %call to i64*
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 5
  store i64* %20, i64** %dither_ramp, align 8, !tbaa !59
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 85
  %dither_ramp7 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman6, i32 0, i32 5
  %23 = load i64*, i64** %dither_ramp7, align 8, !tbaa !59
  %cmp = icmp eq i64* %23, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.9:                                         ; preds = %if.end
  %24 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %24, i32 0, i32 84
  %25 = load i64, i64* %foreground, align 8, !tbaa !106
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 85
  %dither_ramp11 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman10, i32 0, i32 5
  %27 = load i64*, i64** %dither_ramp11, align 8, !tbaa !59
  %arrayidx = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %25, i64* %arrayidx, align 8, !tbaa !45
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %28, i32 0, i32 83
  %29 = load i64, i64* %background, align 8, !tbaa !107
  %30 = load i32, i32* %num_entries, align 4, !tbaa !65
  %sub12 = sub nsw i32 %30, 1
  %idxprom = sext i32 %sub12 to i64
  %31 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman13 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %31, i32 0, i32 85
  %dither_ramp14 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman13, i32 0, i32 5
  %32 = load i64*, i64** %dither_ramp14, align 8, !tbaa !59
  %arrayidx15 = getelementptr inbounds i64, i64* %32, i64 %idxprom
  store i64 %29, i64* %arrayidx15, align 8, !tbaa !45
  store i32 1, i32* %index, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %33 = load i32, i32* %index, align 4, !tbaa !65
  %34 = load i32, i32* %num_entries, align 4, !tbaa !65
  %sub16 = sub nsw i32 %34, 1
  %cmp17 = icmp slt i32 %33, %sub16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = bitcast i32* %rgb_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %index, align 4, !tbaa !65
  %37 = load i32, i32* %step, align 4, !tbaa !65
  %mul18 = mul nsw i32 %36, %37
  store i32 %mul18, i32* %rgb_index, align 4, !tbaa !65
  %38 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %rgb_index, align 4, !tbaa !65
  %40 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %div = sdiv i32 %39, %40
  store i32 %div, i32* %q, align 4, !tbaa !65
  %41 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %q, align 4, !tbaa !65
  %43 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %div19 = sdiv i32 %42, %43
  store i32 %div19, i32* %r, align 4, !tbaa !65
  %44 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %q, align 4, !tbaa !65
  %46 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %rem = srem i32 %45, %46
  store i32 %rem, i32* %g, align 4, !tbaa !65
  %47 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %rgb_index, align 4, !tbaa !65
  %49 = load i32, i32* %ramp_size.addr, align 4, !tbaa !65
  %rem20 = srem i32 %48, %49
  store i32 %rem20, i32* %b, align 4, !tbaa !65
  %50 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load i32, i32* %r, align 4, !tbaa !65
  %mul21 = mul nsw i32 65535, %51
  %52 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div22 = sdiv i32 %mul21, %52
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman23 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 85
  %color_mask = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman23, i32 0, i32 1
  %red = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask, i32 0, i32 0
  %54 = load i16, i16* %red, align 2, !tbaa !53
  %conv = zext i16 %54 to i32
  %and = and i32 %div22, %conv
  %conv24 = trunc i32 %and to i16
  %red25 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 1
  store i16 %conv24, i16* %red25, align 2, !tbaa !108
  %55 = load i32, i32* %g, align 4, !tbaa !65
  %mul26 = mul nsw i32 65535, %55
  %56 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div27 = sdiv i32 %mul26, %56
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman28 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 85
  %color_mask29 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman28, i32 0, i32 1
  %green = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask29, i32 0, i32 1
  %58 = load i16, i16* %green, align 2, !tbaa !52
  %conv30 = zext i16 %58 to i32
  %and31 = and i32 %div27, %conv30
  %conv32 = trunc i32 %and31 to i16
  %green33 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 2
  store i16 %conv32, i16* %green33, align 2, !tbaa !110
  %59 = load i32, i32* %b, align 4, !tbaa !65
  %mul34 = mul nsw i32 65535, %59
  %60 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div35 = sdiv i32 %mul34, %60
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman36 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 85
  %color_mask37 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman36, i32 0, i32 1
  %blue = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask37, i32 0, i32 2
  %62 = load i16, i16* %blue, align 2, !tbaa !51
  %conv38 = zext i16 %62 to i32
  %and39 = and i32 %div35, %conv38
  %conv40 = trunc i32 %and39 to i16
  %blue41 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 3
  store i16 %conv40, i16* %blue41, align 2, !tbaa !111
  %63 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call42 = call i32 @x_alloc_color(%struct.gx_device_X_s* %63, %struct.XColor* %xc) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %for.body
  %64 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %65 = load i32, i32* %index, align 4, !tbaa !65
  %66 = load i32, i32* %num_entries, align 4, !tbaa !65
  call void @free_ramp(%struct.gx_device_X_s* %64, i32 %65, i32 %66) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %for.body
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  %67 = load i64, i64* %pixel, align 8, !tbaa !112
  %68 = load i32, i32* %index, align 4, !tbaa !65
  %idxprom46 = sext i32 %68 to i64
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman47 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 85
  %dither_ramp48 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman47, i32 0, i32 5
  %70 = load i64*, i64** %dither_ramp48, align 8, !tbaa !59
  %arrayidx49 = getelementptr inbounds i64, i64* %70, i64 %idxprom46
  store i64 %67, i64* %arrayidx49, align 8, !tbaa !45
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %71 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %72 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %rgb_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %77 = load i32, i32* %index, align 4, !tbaa !65
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %index, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %for.end, %cleanup, %if.then.8
  %78 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %num_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal void @alloc_dynamic_colors(%struct.gx_device_X_s* %xdev, i32 %num_colors) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %num_colors.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32 %num_colors, i32* %num_colors.addr, align 4, !tbaa !65
  %0 = load i32, i32* %num_colors.addr, align 4, !tbaa !65
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %4 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !69
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !48
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !66
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 85
  %num_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 0
  %9 = load i32, i32* %num_rgb, align 4, !tbaa !56
  %call = call i8* %4(%struct.gs_memory_s* %7, i32 8, i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.x11_color_s**
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %11, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman3, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  store %struct.x11_color_s** %10, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 85
  %dynamic5 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman4, i32 0, i32 6
  %colors6 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic5, i32 0, i32 1
  %13 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors6, align 8, !tbaa !60
  %tobool = icmp ne %struct.x11_color_s** %13, null
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %15, i32 0, i32 85
  %num_rgb9 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman8, i32 0, i32 0
  %16 = load i32, i32* %num_rgb9, align 4, !tbaa !56
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 85
  %dynamic11 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman10, i32 0, i32 6
  %size = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic11, i32 0, i32 0
  store i32 %16, i32* %size, align 4, !tbaa !61
  %18 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %18, i32 0, i32 60
  %19 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !6
  %bits_per_rgb = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %19, i32 0, i32 9
  %20 = load i32, i32* %bits_per_rgb, align 4, !tbaa !50
  %sub = sub nsw i32 16, %20
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 85
  %dynamic13 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman12, i32 0, i32 6
  %shift = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic13, i32 0, i32 2
  store i32 %sub, i32* %shift, align 4, !tbaa !113
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %22 = load i32, i32* %i, align 4, !tbaa !65
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman14 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 85
  %num_rgb15 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman14, i32 0, i32 0
  %24 = load i32, i32* %num_rgb15, align 4, !tbaa !56
  %cmp16 = icmp slt i32 %22, %24
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman17 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 85
  %dynamic18 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman17, i32 0, i32 6
  %colors19 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic18, i32 0, i32 1
  %27 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors19, align 8, !tbaa !60
  %arrayidx = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %27, i64 %idxprom
  store %struct.x11_color_s* null, %struct.x11_color_s** %arrayidx, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %num_colors.addr, align 4, !tbaa !65
  %cmp20 = icmp slt i32 256, %29
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i32, i32* %num_colors.addr, align 4, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 256, %cond.true ], [ %30, %cond.false ]
  %31 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman21 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %31, i32 0, i32 85
  %dynamic22 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman21, i32 0, i32 6
  %max_used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic22, i32 0, i32 4
  store i32 %cond, i32* %max_used, align 4, !tbaa !114
  %32 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman23 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %32, i32 0, i32 85
  %dynamic24 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman23, i32 0, i32 6
  %used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic24, i32 0, i32 3
  store i32 0, i32* %used, align 4, !tbaa !62
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_x_free(%struct.gs_memory_s* %mem, i8* %obj, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !2
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !2
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !115
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !66
  %5 = load i8*, i8** %obj.addr, align 8, !tbaa !2
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !2
  call void %2(%struct.gs_memory_s* %4, i8* %5, i8* %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gdev_x_free_dynamic_colors(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %i = alloca i32, align 4
  %xcp = alloca %struct.x11_color_s*, align 8
  %next = alloca %struct.x11_color_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  %1 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %tobool = icmp ne %struct.x11_color_s** %1, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.x11_color_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !65
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 85
  %dynamic2 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman1, i32 0, i32 6
  %size = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic2, i32 0, i32 0
  %7 = load i32, i32* %size, align 4, !tbaa !61
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 85
  %dynamic4 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman3, i32 0, i32 6
  %colors5 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic4, i32 0, i32 1
  %10 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors5, align 8, !tbaa !60
  %arrayidx = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %10, i64 %idxprom
  %11 = load %struct.x11_color_s*, %struct.x11_color_s** %arrayidx, align 8, !tbaa !2
  store %struct.x11_color_s* %11, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %12 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %tobool7 = icmp ne %struct.x11_color_s* %12, null
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %13 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next9 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %13, i32 0, i32 1
  %14 = load %struct.x11_color_s*, %struct.x11_color_s** %next9, align 8, !tbaa !116
  store %struct.x11_color_s* %14, %struct.x11_color_s** %next, align 8, !tbaa !2
  %15 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %15, i32 0, i32 0
  %pad = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 5
  %16 = load i8, i8* %pad, align 1, !tbaa !118
  %tobool10 = icmp ne i8 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.8
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %18 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color12 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %18, i32 0, i32 0
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %color12, i32 0, i32 0
  call void @x_free_colors(%struct.gx_device_X_s* %17, i64* %pixel, i32 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body.8
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %21 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %22 = bitcast %struct.x11_color_s* %21 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct.x11_color_s*, %struct.x11_color_s** %next, align 8, !tbaa !2
  store %struct.x11_color_s* %23, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %24 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman14 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %25, i32 0, i32 85
  %dynamic15 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman14, i32 0, i32 6
  %colors16 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic15, i32 0, i32 1
  %26 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors16, align 8, !tbaa !60
  %arrayidx17 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %26, i64 %idxprom13
  store %struct.x11_color_s* null, %struct.x11_color_s** %arrayidx17, align 8, !tbaa !2
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman20 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %28, i32 0, i32 85
  %dynamic21 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman20, i32 0, i32 6
  %used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic21, i32 0, i32 3
  store i32 0, i32* %used, align 4, !tbaa !62
  %29 = bitcast %struct.x11_color_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %if.end.22

if.end.22:                                        ; preds = %for.end.19, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_free_colors(%struct.gx_device_X_s* %xdev, i64* %pixels, i32 %count) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %pixels.addr = alloca i64*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pixel = alloca i64, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i64* %pixels, i64** %pixels.addr, align 8, !tbaa !2
  store i32 %count, i32* %count.addr, align 4, !tbaa !65
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 58
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !44
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 61
  %5 = load i64, i64* %cmap, align 8, !tbaa !97
  %6 = load i64*, i64** %pixels.addr, align 8, !tbaa !2
  %7 = load i32, i32* %count.addr, align 4, !tbaa !65
  %call = call i32 @XFreeColors(%struct._XDisplay* %3, i64 %5, i64* %6, i32 %7, i64 0) #5
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !65
  %9 = load i32, i32* %count.addr, align 4, !tbaa !65
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %10 to i64
  %11 = load i64*, i64** %pixels.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !45
  store i64 %12, i64* %pixel, align 8, !tbaa !45
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 85
  %color_to_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 4
  %size = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb, i32 0, i32 0
  %14 = load i32, i32* %size, align 4, !tbaa !73
  %conv = sext i32 %14 to i64
  %cmp1 = icmp ult i64 %12, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i64, i64* %pixel, align 8, !tbaa !45
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 85
  %color_to_rgb4 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman3, i32 0, i32 4
  %values = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb4, i32 0, i32 1
  %17 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values, align 8, !tbaa !70
  %arrayidx5 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %17, i64 %15
  %defined = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %arrayidx5, i32 0, i32 1
  store i32 0, i32* %defined, align 4, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gdev_x_free_colors(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 3
  %free_map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 5
  %1 = load i32, i32* %free_map, align 4, !tbaa !58
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 85
  %std_cmap2 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman1, i32 0, i32 3
  %map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap2, i32 0, i32 0
  %3 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map, align 8, !tbaa !57
  %4 = bitcast %struct.XStandardColormap* %3 to i8*
  %call = call i32 @XFree(i8* %4) #5
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 85
  %std_cmap4 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman3, i32 0, i32 3
  %free_map5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap4, i32 0, i32 5
  store i32 0, i32* %free_map5, align 4, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 85
  %std_cmap7 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman6, i32 0, i32 3
  %map8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap7, i32 0, i32 0
  store %struct.XStandardColormap* null, %struct.XStandardColormap** %map8, align 8, !tbaa !57
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman9, i32 0, i32 5
  %8 = load i64*, i64** %dither_ramp, align 8, !tbaa !59
  %tobool10 = icmp ne i64* %8, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %11, i32 0, i32 85
  %dither_ramp13 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman12, i32 0, i32 5
  %12 = load i64*, i64** %dither_ramp13, align 8, !tbaa !59
  %13 = bitcast i64* %12 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %10, i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman15 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman15, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  %15 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %tobool16 = icmp ne %struct.x11_color_s** %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.14
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @gdev_x_free_dynamic_colors(%struct.gx_device_X_s* %16) #5
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory18 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !48
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman19 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 85
  %dynamic20 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman19, i32 0, i32 6
  %colors21 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic20, i32 0, i32 1
  %20 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors21, align 8, !tbaa !60
  %21 = bitcast %struct.x11_color_s** %20 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %18, i8* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #5
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman22 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 85
  %dynamic23 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman22, i32 0, i32 6
  %colors24 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic23, i32 0, i32 1
  store %struct.x11_color_s** null, %struct.x11_color_s*** %colors24, align 8, !tbaa !60
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.end.14
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 85
  %color_to_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman26, i32 0, i32 4
  %values = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb, i32 0, i32 1
  %24 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values, align 8, !tbaa !70
  %tobool27 = icmp ne %struct.x11_rgb_s* %24, null
  br i1 %tobool27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %if.end.25
  %25 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory29 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !48
  %27 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman30 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %27, i32 0, i32 85
  %color_to_rgb31 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman30, i32 0, i32 4
  %values32 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb31, i32 0, i32 1
  %28 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values32, align 8, !tbaa !70
  %29 = bitcast %struct.x11_rgb_s* %28 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %26, i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #5
  %30 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman33 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %30, i32 0, i32 85
  %color_to_rgb34 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman33, i32 0, i32 4
  %values35 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb34, i32 0, i32 1
  store %struct.x11_rgb_s* null, %struct.x11_rgb_s** %values35, align 8, !tbaa !70
  %31 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman36 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %31, i32 0, i32 85
  %color_to_rgb37 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman36, i32 0, i32 4
  %size = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb37, i32 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !73
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.28, %if.end.25
  ret void
}

declare i32 @XFree(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @gdev_x_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %dr = alloca i16, align 2
  %dg = alloca i16, align 2
  %db = alloca i16, align 2
  %mr = alloca i16, align 2
  %mg = alloca i16, align 2
  %mb = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %cmap = alloca %struct.XStandardColormap*, align 8
  %cr = alloca i32, align 4
  %cg = alloca i32, align 4
  %cb = alloca i32, align 4
  %cvr = alloca i16, align 2
  %cvg = alloca i16, align 2
  %cvb = alloca i16, align 2
  %pixel = alloca i64, align 8
  %cr227 = alloca i32, align 4
  %cvr228 = alloca i16, align 2
  %pixel252 = alloca i64, align 8
  %cr289 = alloca i32, align 4
  %cg290 = alloca i32, align 4
  %cb291 = alloca i32, align 4
  %cvr292 = alloca i16, align 2
  %cvg293 = alloca i16, align 2
  %cvb294 = alloca i16, align 2
  %dither_rgb = alloca i32, align 4
  %max_rgb = alloca i32, align 4
  %cv_tab = alloca i16*, align 8
  %pixel365 = alloca i64, align 8
  %cr397 = alloca i32, align 4
  %cvr398 = alloca i16, align 2
  %dither_grays = alloca i32, align 4
  %max_gray = alloca i32, align 4
  %pixel420 = alloca i64, align 8
  %i = alloca i32, align 4
  %xcp = alloca %struct.x11_color_s*, align 8
  %prev = alloca %struct.x11_color_s*, align 8
  %xc = alloca %struct.XColor, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !55
  store i16 %5, i16* %r, align 2, !tbaa !55
  %6 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx1, align 2, !tbaa !55
  store i16 %8, i16* %g, align 2, !tbaa !55
  %9 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx2, align 2, !tbaa !55
  store i16 %11, i16* %b, align 2, !tbaa !55
  %12 = bitcast i16* %dr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = load i16, i16* %r, align 2, !tbaa !55
  %conv = zext i16 %13 to i32
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 85
  %color_mask = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 1
  %red = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask, i32 0, i32 0
  %15 = load i16, i16* %red, align 2, !tbaa !53
  %conv3 = zext i16 %15 to i32
  %and = and i32 %conv, %conv3
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, i16* %dr, align 2, !tbaa !55
  %16 = bitcast i16* %dg to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #1
  %17 = load i16, i16* %g, align 2, !tbaa !55
  %conv5 = zext i16 %17 to i32
  %18 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %18, i32 0, i32 85
  %color_mask7 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman6, i32 0, i32 1
  %green = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask7, i32 0, i32 1
  %19 = load i16, i16* %green, align 2, !tbaa !52
  %conv8 = zext i16 %19 to i32
  %and9 = and i32 %conv5, %conv8
  %conv10 = trunc i32 %and9 to i16
  store i16 %conv10, i16* %dg, align 2, !tbaa !55
  %20 = bitcast i16* %db to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  %21 = load i16, i16* %b, align 2, !tbaa !55
  %conv11 = zext i16 %21 to i32
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 85
  %color_mask13 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman12, i32 0, i32 1
  %blue = getelementptr inbounds %struct.cmm_, %struct.cmm_* %color_mask13, i32 0, i32 2
  %23 = load i16, i16* %blue, align 2, !tbaa !51
  %conv14 = zext i16 %23 to i32
  %and15 = and i32 %conv11, %conv14
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %db, align 2, !tbaa !55
  %24 = bitcast i16* %mr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %24) #1
  %25 = load i16, i16* %r, align 2, !tbaa !55
  %conv17 = zext i16 %25 to i32
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman18 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 85
  %match_mask = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman18, i32 0, i32 2
  %red19 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask, i32 0, i32 0
  %27 = load i16, i16* %red19, align 2, !tbaa !91
  %conv20 = zext i16 %27 to i32
  %and21 = and i32 %conv17, %conv20
  %conv22 = trunc i32 %and21 to i16
  store i16 %conv22, i16* %mr, align 2, !tbaa !55
  %28 = bitcast i16* %mg to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  %29 = load i16, i16* %g, align 2, !tbaa !55
  %conv23 = zext i16 %29 to i32
  %30 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman24 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %30, i32 0, i32 85
  %match_mask25 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman24, i32 0, i32 2
  %green26 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask25, i32 0, i32 1
  %31 = load i16, i16* %green26, align 2, !tbaa !93
  %conv27 = zext i16 %31 to i32
  %and28 = and i32 %conv23, %conv27
  %conv29 = trunc i32 %and28 to i16
  store i16 %conv29, i16* %mg, align 2, !tbaa !55
  %32 = bitcast i16* %mb to i8*
  call void @llvm.lifetime.start(i64 2, i8* %32) #1
  %33 = load i16, i16* %b, align 2, !tbaa !55
  %conv30 = zext i16 %33 to i32
  %34 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman31 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %34, i32 0, i32 85
  %match_mask32 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman31, i32 0, i32 2
  %blue33 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask32, i32 0, i32 2
  %35 = load i16, i16* %blue33, align 2, !tbaa !95
  %conv34 = zext i16 %35 to i32
  %and35 = and i32 %conv30, %conv34
  %conv36 = trunc i32 %and35 to i16
  store i16 %conv36, i16* %mb, align 2, !tbaa !55
  %36 = load i16, i16* %mr, align 2, !tbaa !55
  %conv37 = zext i16 %36 to i32
  %37 = load i16, i16* %mg, align 2, !tbaa !55
  %conv38 = zext i16 %37 to i32
  %or = or i32 %conv37, %conv38
  %38 = load i16, i16* %mb, align 2, !tbaa !55
  %conv39 = zext i16 %38 to i32
  %or40 = or i32 %or, %conv39
  %cmp = icmp eq i32 %or40, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %39, i32 0, i32 84
  %40 = load i64, i64* %foreground, align 8, !tbaa !106
  store i64 %40, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %41 = load i16, i16* %mr, align 2, !tbaa !55
  %conv42 = zext i16 %41 to i32
  %42 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman43 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %42, i32 0, i32 85
  %match_mask44 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman43, i32 0, i32 2
  %red45 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask44, i32 0, i32 0
  %43 = load i16, i16* %red45, align 2, !tbaa !91
  %conv46 = zext i16 %43 to i32
  %cmp47 = icmp eq i32 %conv42, %conv46
  br i1 %cmp47, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end
  %44 = load i16, i16* %mg, align 2, !tbaa !55
  %conv49 = zext i16 %44 to i32
  %45 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman50 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %45, i32 0, i32 85
  %match_mask51 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman50, i32 0, i32 2
  %green52 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask51, i32 0, i32 1
  %46 = load i16, i16* %green52, align 2, !tbaa !93
  %conv53 = zext i16 %46 to i32
  %cmp54 = icmp eq i32 %conv49, %conv53
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.68

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %47 = load i16, i16* %mb, align 2, !tbaa !55
  %conv57 = zext i16 %47 to i32
  %48 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman58 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %48, i32 0, i32 85
  %match_mask59 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman58, i32 0, i32 2
  %blue60 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask59, i32 0, i32 2
  %49 = load i16, i16* %blue60, align 2, !tbaa !95
  %conv61 = zext i16 %49 to i32
  %cmp62 = icmp eq i32 %conv57, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %land.lhs.true.56
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 83
  %51 = load i64, i64* %background, align 8, !tbaa !107
  store i64 %51, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %land.lhs.true.56, %land.lhs.true, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %do.end.67, %do.end
  %52 = bitcast i16* %mb to i8*
  call void @llvm.lifetime.end(i64 2, i8* %52) #1
  %53 = bitcast i16* %mg to i8*
  call void @llvm.lifetime.end(i64 2, i8* %53) #1
  %54 = bitcast i16* %mr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.573 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman71, i32 0, i32 3
  %map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 0
  %56 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map, align 8, !tbaa !57
  %tobool = icmp ne %struct.XStandardColormap* %56, null
  br i1 %tobool, label %if.then.72, label %if.else.274

if.then.72:                                       ; preds = %cleanup.cont
  %57 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman73 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %58, i32 0, i32 85
  %std_cmap74 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman73, i32 0, i32 3
  %map75 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap74, i32 0, i32 0
  %59 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map75, align 8, !tbaa !57
  store %struct.XStandardColormap* %59, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %60 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %60, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %61 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp76 = icmp sgt i32 %61, 1
  br i1 %cmp76, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.72
  %62 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info78 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %62, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info78, i32 0, i32 4
  %63 = load i8, i8* %gray_index, align 1, !tbaa !88
  %conv79 = zext i8 %63 to i32
  %cmp80 = icmp eq i32 %conv79, 255
  br i1 %cmp80, label %if.then.82, label %if.else.226

if.then.82:                                       ; preds = %lor.lhs.false, %if.then.72
  %64 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %cg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = bitcast i16* %cvr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %67) #1
  %68 = bitcast i16* %cvg to i8*
  call void @llvm.lifetime.start(i64 2, i8* %68) #1
  %69 = bitcast i16* %cvb to i8*
  call void @llvm.lifetime.start(i64 2, i8* %69) #1
  %70 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman83 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %70, i32 0, i32 85
  %std_cmap84 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman83, i32 0, i32 3
  %fast = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap84, i32 0, i32 1
  %71 = load i32, i32* %fast, align 4, !tbaa !105
  %tobool85 = icmp ne i32 %71, 0
  br i1 %tobool85, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %if.then.82
  %72 = load i16, i16* %r, align 2, !tbaa !55
  %conv87 = zext i16 %72 to i32
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman88 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 85
  %std_cmap89 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman88, i32 0, i32 3
  %red90 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap89, i32 0, i32 2
  %cv_shift = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %red90, i32 0, i32 0
  %74 = load i32, i32* %cv_shift, align 4, !tbaa !90
  %shr = ashr i32 %conv87, %74
  store i32 %shr, i32* %cr, align 4, !tbaa !65
  %75 = load i32, i32* %cr, align 4, !tbaa !65
  %idxprom = zext i32 %75 to i64
  %76 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman91 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %76, i32 0, i32 85
  %std_cmap92 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman91, i32 0, i32 3
  %red93 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap92, i32 0, i32 2
  %nearest = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %red93, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [64 x i16], [64 x i16]* %nearest, i32 0, i64 %idxprom
  %77 = load i16, i16* %arrayidx94, align 2, !tbaa !55
  store i16 %77, i16* %cvr, align 2, !tbaa !55
  %78 = load i16, i16* %g, align 2, !tbaa !55
  %conv95 = zext i16 %78 to i32
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman96 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 85
  %std_cmap97 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman96, i32 0, i32 3
  %green98 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap97, i32 0, i32 3
  %cv_shift99 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %green98, i32 0, i32 0
  %80 = load i32, i32* %cv_shift99, align 4, !tbaa !92
  %shr100 = ashr i32 %conv95, %80
  store i32 %shr100, i32* %cg, align 4, !tbaa !65
  %81 = load i32, i32* %cg, align 4, !tbaa !65
  %idxprom101 = zext i32 %81 to i64
  %82 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman102 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %82, i32 0, i32 85
  %std_cmap103 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman102, i32 0, i32 3
  %green104 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap103, i32 0, i32 3
  %nearest105 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %green104, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [64 x i16], [64 x i16]* %nearest105, i32 0, i64 %idxprom101
  %83 = load i16, i16* %arrayidx106, align 2, !tbaa !55
  store i16 %83, i16* %cvg, align 2, !tbaa !55
  %84 = load i16, i16* %b, align 2, !tbaa !55
  %conv107 = zext i16 %84 to i32
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman108 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %85, i32 0, i32 85
  %std_cmap109 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman108, i32 0, i32 3
  %blue110 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap109, i32 0, i32 4
  %cv_shift111 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %blue110, i32 0, i32 0
  %86 = load i32, i32* %cv_shift111, align 4, !tbaa !94
  %shr112 = ashr i32 %conv107, %86
  store i32 %shr112, i32* %cb, align 4, !tbaa !65
  %87 = load i32, i32* %cb, align 4, !tbaa !65
  %idxprom113 = zext i32 %87 to i64
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman114 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 85
  %std_cmap115 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman114, i32 0, i32 3
  %blue116 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap115, i32 0, i32 4
  %nearest117 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %blue116, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [64 x i16], [64 x i16]* %nearest117, i32 0, i64 %idxprom113
  %89 = load i16, i16* %arrayidx118, align 2, !tbaa !55
  store i16 %89, i16* %cvb, align 2, !tbaa !55
  br label %if.end.146

if.else:                                          ; preds = %if.then.82
  %90 = load i16, i16* %r, align 2, !tbaa !55
  %conv119 = zext i16 %90 to i64
  %91 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %91, i32 0, i32 1
  %92 = load i64, i64* %red_max, align 8, !tbaa !81
  %add = add i64 %92, 1
  %mul = mul i64 %conv119, %add
  %div = udiv i64 %mul, 65536
  %conv120 = trunc i64 %div to i32
  store i32 %conv120, i32* %cr, align 4, !tbaa !65
  %93 = load i16, i16* %g, align 2, !tbaa !55
  %conv121 = zext i16 %93 to i64
  %94 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %94, i32 0, i32 3
  %95 = load i64, i64* %green_max, align 8, !tbaa !83
  %add122 = add i64 %95, 1
  %mul123 = mul i64 %conv121, %add122
  %div124 = udiv i64 %mul123, 65536
  %conv125 = trunc i64 %div124 to i32
  store i32 %conv125, i32* %cg, align 4, !tbaa !65
  %96 = load i16, i16* %b, align 2, !tbaa !55
  %conv126 = zext i16 %96 to i64
  %97 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %97, i32 0, i32 5
  %98 = load i64, i64* %blue_max, align 8, !tbaa !84
  %add127 = add i64 %98, 1
  %mul128 = mul i64 %conv126, %add127
  %div129 = udiv i64 %mul128, 65536
  %conv130 = trunc i64 %div129 to i32
  store i32 %conv130, i32* %cb, align 4, !tbaa !65
  %99 = load i32, i32* %cr, align 4, !tbaa !65
  %mul131 = mul i32 65535, %99
  %conv132 = zext i32 %mul131 to i64
  %100 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max133 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %100, i32 0, i32 1
  %101 = load i64, i64* %red_max133, align 8, !tbaa !81
  %div134 = udiv i64 %conv132, %101
  %conv135 = trunc i64 %div134 to i16
  store i16 %conv135, i16* %cvr, align 2, !tbaa !55
  %102 = load i32, i32* %cg, align 4, !tbaa !65
  %mul136 = mul i32 65535, %102
  %conv137 = zext i32 %mul136 to i64
  %103 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max138 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %103, i32 0, i32 3
  %104 = load i64, i64* %green_max138, align 8, !tbaa !83
  %div139 = udiv i64 %conv137, %104
  %conv140 = trunc i64 %div139 to i16
  store i16 %conv140, i16* %cvg, align 2, !tbaa !55
  %105 = load i32, i32* %cb, align 4, !tbaa !65
  %mul141 = mul i32 65535, %105
  %conv142 = zext i32 %mul141 to i64
  %106 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max143 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %106, i32 0, i32 5
  %107 = load i64, i64* %blue_max143, align 8, !tbaa !84
  %div144 = udiv i64 %conv142, %107
  %conv145 = trunc i64 %div144 to i16
  store i16 %conv145, i16* %cvb, align 2, !tbaa !55
  br label %if.end.146

if.end.146:                                       ; preds = %if.else, %if.then.86
  %108 = load i16, i16* %r, align 2, !tbaa !55
  %conv147 = zext i16 %108 to i32
  %109 = load i16, i16* %cvr, align 2, !tbaa !55
  %conv148 = zext i16 %109 to i32
  %sub = sub nsw i32 %conv147, %conv148
  %call = call i32 @iabs(i32 %sub) #5
  %110 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman149 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %110, i32 0, i32 85
  %match_mask150 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman149, i32 0, i32 2
  %red151 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask150, i32 0, i32 0
  %111 = load i16, i16* %red151, align 2, !tbaa !91
  %conv152 = zext i16 %111 to i32
  %and153 = and i32 %call, %conv152
  %cmp154 = icmp eq i32 %and153, 0
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.214

land.lhs.true.156:                                ; preds = %if.end.146
  %112 = load i16, i16* %g, align 2, !tbaa !55
  %conv157 = zext i16 %112 to i32
  %113 = load i16, i16* %cvg, align 2, !tbaa !55
  %conv158 = zext i16 %113 to i32
  %sub159 = sub nsw i32 %conv157, %conv158
  %call160 = call i32 @iabs(i32 %sub159) #5
  %114 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman161 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %114, i32 0, i32 85
  %match_mask162 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman161, i32 0, i32 2
  %green163 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask162, i32 0, i32 1
  %115 = load i16, i16* %green163, align 2, !tbaa !93
  %conv164 = zext i16 %115 to i32
  %and165 = and i32 %call160, %conv164
  %cmp166 = icmp eq i32 %and165, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.214

land.lhs.true.168:                                ; preds = %land.lhs.true.156
  %116 = load i16, i16* %b, align 2, !tbaa !55
  %conv169 = zext i16 %116 to i32
  %117 = load i16, i16* %cvb, align 2, !tbaa !55
  %conv170 = zext i16 %117 to i32
  %sub171 = sub nsw i32 %conv169, %conv170
  %call172 = call i32 @iabs(i32 %sub171) #5
  %118 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman173 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %118, i32 0, i32 85
  %match_mask174 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman173, i32 0, i32 2
  %blue175 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask174, i32 0, i32 2
  %119 = load i16, i16* %blue175, align 2, !tbaa !95
  %conv176 = zext i16 %119 to i32
  %and177 = and i32 %call172, %conv176
  %cmp178 = icmp eq i32 %and177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.214

if.then.180:                                      ; preds = %land.lhs.true.168
  %120 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman181 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %121, i32 0, i32 85
  %std_cmap182 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman181, i32 0, i32 3
  %fast183 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap182, i32 0, i32 1
  %122 = load i32, i32* %fast183, align 4, !tbaa !105
  %tobool184 = icmp ne i32 %122, 0
  br i1 %tobool184, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.180
  %123 = load i32, i32* %cr, align 4, !tbaa !65
  %124 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman185 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %124, i32 0, i32 85
  %std_cmap186 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman185, i32 0, i32 3
  %red187 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap186, i32 0, i32 2
  %pixel_shift = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %red187, i32 0, i32 2
  %125 = load i32, i32* %pixel_shift, align 4, !tbaa !119
  %shl = shl i32 %123, %125
  %126 = load i32, i32* %cg, align 4, !tbaa !65
  %127 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman188 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %127, i32 0, i32 85
  %std_cmap189 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman188, i32 0, i32 3
  %green190 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap189, i32 0, i32 3
  %pixel_shift191 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %green190, i32 0, i32 2
  %128 = load i32, i32* %pixel_shift191, align 4, !tbaa !120
  %shl192 = shl i32 %126, %128
  %add193 = add i32 %shl, %shl192
  %129 = load i32, i32* %cb, align 4, !tbaa !65
  %130 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman194 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %130, i32 0, i32 85
  %std_cmap195 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman194, i32 0, i32 3
  %blue196 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap195, i32 0, i32 4
  %pixel_shift197 = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %blue196, i32 0, i32 2
  %131 = load i32, i32* %pixel_shift197, align 4, !tbaa !121
  %shl198 = shl i32 %129, %131
  %add199 = add i32 %add193, %shl198
  %conv200 = zext i32 %add199 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.180
  %132 = load i32, i32* %cr, align 4, !tbaa !65
  %conv201 = zext i32 %132 to i64
  %133 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %133, i32 0, i32 2
  %134 = load i64, i64* %red_mult, align 8, !tbaa !100
  %mul202 = mul i64 %conv201, %134
  %135 = load i32, i32* %cg, align 4, !tbaa !65
  %conv203 = zext i32 %135 to i64
  %136 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %136, i32 0, i32 4
  %137 = load i64, i64* %green_mult, align 8, !tbaa !102
  %mul204 = mul i64 %conv203, %137
  %add205 = add i64 %mul202, %mul204
  %138 = load i32, i32* %cb, align 4, !tbaa !65
  %conv206 = zext i32 %138 to i64
  %139 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %139, i32 0, i32 6
  %140 = load i64, i64* %blue_mult, align 8, !tbaa !104
  %mul207 = mul i64 %conv206, %140
  %add208 = add i64 %add205, %mul207
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv200, %cond.true ], [ %add208, %cond.false ]
  %141 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %base_pixel = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %141, i32 0, i32 7
  %142 = load i64, i64* %base_pixel, align 8, !tbaa !122
  %add209 = add i64 %cond, %142
  store i64 %add209, i64* %pixel, align 8, !tbaa !45
  br label %do.body.210

do.body.210:                                      ; preds = %cond.end
  br label %do.cond.211

do.cond.211:                                      ; preds = %do.body.210
  br label %do.end.212

do.end.212:                                       ; preds = %do.cond.211
  %143 = load i64, i64* %pixel, align 8, !tbaa !45
  store i64 %143, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %144 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  br label %cleanup.218

if.end.214:                                       ; preds = %land.lhs.true.168, %land.lhs.true.156, %if.end.146
  br label %do.body.215

do.body.215:                                      ; preds = %if.end.214
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %do.end.217, %do.end.212
  %145 = bitcast i16* %cvb to i8*
  call void @llvm.lifetime.end(i64 2, i8* %145) #1
  %146 = bitcast i16* %cvg to i8*
  call void @llvm.lifetime.end(i64 2, i8* %146) #1
  %147 = bitcast i16* %cvr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147) #1
  %148 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %cg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %cleanup.dest.224 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.224, label %cleanup.271 [
    i32 0, label %cleanup.cont.225
  ]

cleanup.cont.225:                                 ; preds = %cleanup.218
  br label %if.end.270

if.else.226:                                      ; preds = %lor.lhs.false
  %151 = bitcast i32* %cr227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = bitcast i16* %cvr228 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %152) #1
  %153 = load i16, i16* %r, align 2, !tbaa !55
  %conv229 = zext i16 %153 to i64
  %154 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max230 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %154, i32 0, i32 1
  %155 = load i64, i64* %red_max230, align 8, !tbaa !81
  %add231 = add i64 %155, 1
  %mul232 = mul i64 %conv229, %add231
  %div233 = udiv i64 %mul232, 65536
  %conv234 = trunc i64 %div233 to i32
  store i32 %conv234, i32* %cr227, align 4, !tbaa !65
  %156 = load i32, i32* %cr227, align 4, !tbaa !65
  %mul235 = mul i32 65535, %156
  %conv236 = zext i32 %mul235 to i64
  %157 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max237 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %157, i32 0, i32 1
  %158 = load i64, i64* %red_max237, align 8, !tbaa !81
  %div238 = udiv i64 %conv236, %158
  %conv239 = trunc i64 %div238 to i16
  store i16 %conv239, i16* %cvr228, align 2, !tbaa !55
  %159 = load i16, i16* %r, align 2, !tbaa !55
  %conv240 = zext i16 %159 to i32
  %160 = load i16, i16* %cvr228, align 2, !tbaa !55
  %conv241 = zext i16 %160 to i32
  %sub242 = sub nsw i32 %conv240, %conv241
  %call243 = call i32 @iabs(i32 %sub242) #5
  %161 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman244 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %161, i32 0, i32 85
  %match_mask245 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman244, i32 0, i32 2
  %red246 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask245, i32 0, i32 0
  %162 = load i16, i16* %red246, align 2, !tbaa !91
  %conv247 = zext i16 %162 to i32
  %and248 = and i32 %call243, %conv247
  %cmp249 = icmp eq i32 %and248, 0
  br i1 %cmp249, label %if.then.251, label %if.end.262

if.then.251:                                      ; preds = %if.else.226
  %163 = bitcast i64* %pixel252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  %164 = load i32, i32* %cr227, align 4, !tbaa !65
  %conv253 = zext i32 %164 to i64
  %165 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult254 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %165, i32 0, i32 2
  %166 = load i64, i64* %red_mult254, align 8, !tbaa !100
  %mul255 = mul i64 %conv253, %166
  %167 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %base_pixel256 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %167, i32 0, i32 7
  %168 = load i64, i64* %base_pixel256, align 8, !tbaa !122
  %add257 = add i64 %mul255, %168
  store i64 %add257, i64* %pixel252, align 8, !tbaa !45
  br label %do.body.258

do.body.258:                                      ; preds = %if.then.251
  br label %do.cond.259

do.cond.259:                                      ; preds = %do.body.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.cond.259
  %169 = load i64, i64* %pixel252, align 8, !tbaa !45
  store i64 %169, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %170 = bitcast i64* %pixel252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  br label %cleanup.266

if.end.262:                                       ; preds = %if.else.226
  br label %do.body.263

do.body.263:                                      ; preds = %if.end.262
  br label %do.cond.264

do.cond.264:                                      ; preds = %do.body.263
  br label %do.end.265

do.end.265:                                       ; preds = %do.cond.264
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.266

cleanup.266:                                      ; preds = %do.end.265, %do.end.260
  %171 = bitcast i16* %cvr228 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %171) #1
  %172 = bitcast i32* %cr227 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %cleanup.dest.268 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.268, label %cleanup.271 [
    i32 0, label %cleanup.cont.269
  ]

cleanup.cont.269:                                 ; preds = %cleanup.266
  br label %if.end.270

if.end.270:                                       ; preds = %cleanup.cont.269, %cleanup.cont.225
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.271

cleanup.271:                                      ; preds = %if.end.270, %cleanup.266, %cleanup.218
  %173 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %cleanup.dest.272 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.272, label %cleanup.573 [
    i32 0, label %cleanup.cont.273
  ]

cleanup.cont.273:                                 ; preds = %cleanup.271
  br label %if.end.441

if.else.274:                                      ; preds = %cleanup.cont
  %174 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman275 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %174, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman275, i32 0, i32 5
  %175 = load i64*, i64** %dither_ramp, align 8, !tbaa !59
  %tobool276 = icmp ne i64* %175, null
  br i1 %tobool276, label %if.then.277, label %if.end.440

if.then.277:                                      ; preds = %if.else.274
  %176 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info278 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %176, i32 0, i32 11
  %num_components279 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info278, i32 0, i32 1
  %177 = load i32, i32* %num_components279, align 4, !tbaa !74
  %cmp280 = icmp sgt i32 %177, 1
  br i1 %cmp280, label %if.then.288, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %if.then.277
  %178 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info283 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %178, i32 0, i32 11
  %gray_index284 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info283, i32 0, i32 4
  %179 = load i8, i8* %gray_index284, align 1, !tbaa !88
  %conv285 = zext i8 %179 to i32
  %cmp286 = icmp eq i32 %conv285, 255
  br i1 %cmp286, label %if.then.288, label %if.else.396

if.then.288:                                      ; preds = %lor.lhs.false.282, %if.then.277
  %180 = bitcast i32* %cr289 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = bitcast i32* %cg290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %182 = bitcast i32* %cb291 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  %183 = bitcast i16* %cvr292 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %183) #1
  %184 = bitcast i16* %cvg293 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %184) #1
  %185 = bitcast i16* %cvb294 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %185) #1
  %186 = bitcast i32* %dither_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info295 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %187, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info295, i32 0, i32 8
  %188 = load i32, i32* %dither_colors, align 4, !tbaa !85
  store i32 %188, i32* %dither_rgb, align 4, !tbaa !65
  %189 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = load i32, i32* %dither_rgb, align 4, !tbaa !65
  %sub296 = sub nsw i32 %190, 1
  store i32 %sub296, i32* %max_rgb, align 4, !tbaa !65
  %191 = load i16, i16* %r, align 2, !tbaa !55
  %conv297 = zext i16 %191 to i32
  %192 = load i32, i32* %dither_rgb, align 4, !tbaa !65
  %mul298 = mul nsw i32 %conv297, %192
  %div299 = sdiv i32 %mul298, 65536
  store i32 %div299, i32* %cr289, align 4, !tbaa !65
  %193 = load i16, i16* %g, align 2, !tbaa !55
  %conv300 = zext i16 %193 to i32
  %194 = load i32, i32* %dither_rgb, align 4, !tbaa !65
  %mul301 = mul nsw i32 %conv300, %194
  %div302 = sdiv i32 %mul301, 65536
  store i32 %div302, i32* %cg290, align 4, !tbaa !65
  %195 = load i16, i16* %b, align 2, !tbaa !55
  %conv303 = zext i16 %195 to i32
  %196 = load i32, i32* %dither_rgb, align 4, !tbaa !65
  %mul304 = mul nsw i32 %conv303, %196
  %div305 = sdiv i32 %mul304, 65536
  store i32 %div305, i32* %cb291, align 4, !tbaa !65
  %197 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %conv306 = zext i32 %197 to i64
  %cmp307 = icmp ult i64 %conv306, 8
  br i1 %cmp307, label %if.then.309, label %if.else.318

if.then.309:                                      ; preds = %if.then.288
  %198 = bitcast i16** %cv_tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %198) #1
  %199 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %idxprom310 = zext i32 %199 to i64
  %arrayidx311 = getelementptr inbounds [8 x i16*], [8 x i16*]* @cv_tables, i32 0, i64 %idxprom310
  %200 = load i16*, i16** %arrayidx311, align 8, !tbaa !2
  store i16* %200, i16** %cv_tab, align 8, !tbaa !2
  %201 = load i32, i32* %cr289, align 4, !tbaa !65
  %idxprom312 = zext i32 %201 to i64
  %202 = load i16*, i16** %cv_tab, align 8, !tbaa !2
  %arrayidx313 = getelementptr inbounds i16, i16* %202, i64 %idxprom312
  %203 = load i16, i16* %arrayidx313, align 2, !tbaa !55
  store i16 %203, i16* %cvr292, align 2, !tbaa !55
  %204 = load i32, i32* %cg290, align 4, !tbaa !65
  %idxprom314 = zext i32 %204 to i64
  %205 = load i16*, i16** %cv_tab, align 8, !tbaa !2
  %arrayidx315 = getelementptr inbounds i16, i16* %205, i64 %idxprom314
  %206 = load i16, i16* %arrayidx315, align 2, !tbaa !55
  store i16 %206, i16* %cvg293, align 2, !tbaa !55
  %207 = load i32, i32* %cb291, align 4, !tbaa !65
  %idxprom316 = zext i32 %207 to i64
  %208 = load i16*, i16** %cv_tab, align 8, !tbaa !2
  %arrayidx317 = getelementptr inbounds i16, i16* %208, i64 %idxprom316
  %209 = load i16, i16* %arrayidx317, align 2, !tbaa !55
  store i16 %209, i16* %cvb294, align 2, !tbaa !55
  %210 = bitcast i16** %cv_tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  br label %if.end.328

if.else.318:                                      ; preds = %if.then.288
  %211 = load i32, i32* %cr289, align 4, !tbaa !65
  %mul319 = mul i32 65535, %211
  %212 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div320 = udiv i32 %mul319, %212
  %conv321 = trunc i32 %div320 to i16
  store i16 %conv321, i16* %cvr292, align 2, !tbaa !55
  %213 = load i32, i32* %cg290, align 4, !tbaa !65
  %mul322 = mul i32 65535, %213
  %214 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div323 = udiv i32 %mul322, %214
  %conv324 = trunc i32 %div323 to i16
  store i16 %conv324, i16* %cvg293, align 2, !tbaa !55
  %215 = load i32, i32* %cb291, align 4, !tbaa !65
  %mul325 = mul i32 65535, %215
  %216 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div326 = udiv i32 %mul325, %216
  %conv327 = trunc i32 %div326 to i16
  store i16 %conv327, i16* %cvb294, align 2, !tbaa !55
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.318, %if.then.309
  %217 = load i16, i16* %r, align 2, !tbaa !55
  %conv329 = zext i16 %217 to i32
  %218 = load i16, i16* %cvr292, align 2, !tbaa !55
  %conv330 = zext i16 %218 to i32
  %sub331 = sub nsw i32 %conv329, %conv330
  %call332 = call i32 @iabs(i32 %sub331) #5
  %219 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman333 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %219, i32 0, i32 85
  %match_mask334 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman333, i32 0, i32 2
  %red335 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask334, i32 0, i32 0
  %220 = load i16, i16* %red335, align 2, !tbaa !91
  %conv336 = zext i16 %220 to i32
  %and337 = and i32 %call332, %conv336
  %cmp338 = icmp eq i32 %and337, 0
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.382

land.lhs.true.340:                                ; preds = %if.end.328
  %221 = load i16, i16* %g, align 2, !tbaa !55
  %conv341 = zext i16 %221 to i32
  %222 = load i16, i16* %cvg293, align 2, !tbaa !55
  %conv342 = zext i16 %222 to i32
  %sub343 = sub nsw i32 %conv341, %conv342
  %call344 = call i32 @iabs(i32 %sub343) #5
  %223 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman345 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %223, i32 0, i32 85
  %match_mask346 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman345, i32 0, i32 2
  %green347 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask346, i32 0, i32 1
  %224 = load i16, i16* %green347, align 2, !tbaa !93
  %conv348 = zext i16 %224 to i32
  %and349 = and i32 %call344, %conv348
  %cmp350 = icmp eq i32 %and349, 0
  br i1 %cmp350, label %land.lhs.true.352, label %if.end.382

land.lhs.true.352:                                ; preds = %land.lhs.true.340
  %225 = load i16, i16* %b, align 2, !tbaa !55
  %conv353 = zext i16 %225 to i32
  %226 = load i16, i16* %cvb294, align 2, !tbaa !55
  %conv354 = zext i16 %226 to i32
  %sub355 = sub nsw i32 %conv353, %conv354
  %call356 = call i32 @iabs(i32 %sub355) #5
  %227 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman357 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %227, i32 0, i32 85
  %match_mask358 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman357, i32 0, i32 2
  %blue359 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask358, i32 0, i32 2
  %228 = load i16, i16* %blue359, align 2, !tbaa !95
  %conv360 = zext i16 %228 to i32
  %and361 = and i32 %call356, %conv360
  %cmp362 = icmp eq i32 %and361, 0
  br i1 %cmp362, label %if.then.364, label %if.end.382

if.then.364:                                      ; preds = %land.lhs.true.352
  %229 = bitcast i64* %pixel365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  %230 = load i32, i32* %cr289, align 4, !tbaa !65
  %231 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info366 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %231, i32 0, i32 11
  %dither_colors367 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info366, i32 0, i32 8
  %232 = load i32, i32* %dither_colors367, align 4, !tbaa !85
  %mul368 = mul i32 %230, %232
  %233 = load i32, i32* %cg290, align 4, !tbaa !65
  %add369 = add i32 %mul368, %233
  %234 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info370 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %234, i32 0, i32 11
  %dither_colors371 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info370, i32 0, i32 8
  %235 = load i32, i32* %dither_colors371, align 4, !tbaa !85
  %mul372 = mul i32 %add369, %235
  %236 = load i32, i32* %cb291, align 4, !tbaa !65
  %add373 = add i32 %mul372, %236
  %idxprom374 = zext i32 %add373 to i64
  %237 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman375 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %237, i32 0, i32 85
  %dither_ramp376 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman375, i32 0, i32 5
  %238 = load i64*, i64** %dither_ramp376, align 8, !tbaa !59
  %arrayidx377 = getelementptr inbounds i64, i64* %238, i64 %idxprom374
  %239 = load i64, i64* %arrayidx377, align 8, !tbaa !45
  store i64 %239, i64* %pixel365, align 8, !tbaa !45
  br label %do.body.378

do.body.378:                                      ; preds = %if.then.364
  br label %do.cond.379

do.cond.379:                                      ; preds = %do.body.378
  br label %do.end.380

do.end.380:                                       ; preds = %do.cond.379
  %240 = load i64, i64* %pixel365, align 8, !tbaa !45
  store i64 %240, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %241 = bitcast i64* %pixel365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  br label %cleanup.386

if.end.382:                                       ; preds = %land.lhs.true.352, %land.lhs.true.340, %if.end.328
  br label %do.body.383

do.body.383:                                      ; preds = %if.end.382
  br label %do.cond.384

do.cond.384:                                      ; preds = %do.body.383
  br label %do.end.385

do.end.385:                                       ; preds = %do.cond.384
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.386

cleanup.386:                                      ; preds = %do.end.385, %do.end.380
  %242 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %dither_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i16* %cvb294 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %244) #1
  %245 = bitcast i16* %cvg293 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %245) #1
  %246 = bitcast i16* %cvr292 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %246) #1
  %247 = bitcast i32* %cb291 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %cg290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %cr289 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %cleanup.dest.394 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.394, label %cleanup.573 [
    i32 0, label %cleanup.cont.395
  ]

cleanup.cont.395:                                 ; preds = %cleanup.386
  br label %if.end.439

if.else.396:                                      ; preds = %lor.lhs.false.282
  %250 = bitcast i32* %cr397 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = bitcast i16* %cvr398 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %251) #1
  %252 = bitcast i32* %dither_grays to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  %253 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info399 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %253, i32 0, i32 11
  %dither_grays400 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info399, i32 0, i32 7
  %254 = load i32, i32* %dither_grays400, align 4, !tbaa !86
  store i32 %254, i32* %dither_grays, align 4, !tbaa !65
  %255 = bitcast i32* %max_gray to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #1
  %256 = load i32, i32* %dither_grays, align 4, !tbaa !65
  %sub401 = sub nsw i32 %256, 1
  store i32 %sub401, i32* %max_gray, align 4, !tbaa !65
  %257 = load i16, i16* %r, align 2, !tbaa !55
  %conv402 = zext i16 %257 to i32
  %258 = load i32, i32* %dither_grays, align 4, !tbaa !65
  %mul403 = mul nsw i32 %conv402, %258
  %div404 = sdiv i32 %mul403, 65536
  store i32 %div404, i32* %cr397, align 4, !tbaa !65
  %259 = load i32, i32* %cr397, align 4, !tbaa !65
  %mul405 = mul i32 65535, %259
  %260 = load i32, i32* %max_gray, align 4, !tbaa !65
  %div406 = udiv i32 %mul405, %260
  %conv407 = trunc i32 %div406 to i16
  store i16 %conv407, i16* %cvr398, align 2, !tbaa !55
  %261 = load i16, i16* %r, align 2, !tbaa !55
  %conv408 = zext i16 %261 to i32
  %262 = load i16, i16* %cvr398, align 2, !tbaa !55
  %conv409 = zext i16 %262 to i32
  %sub410 = sub nsw i32 %conv408, %conv409
  %call411 = call i32 @iabs(i32 %sub410) #5
  %263 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman412 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %263, i32 0, i32 85
  %match_mask413 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman412, i32 0, i32 2
  %red414 = getelementptr inbounds %struct.cmm_, %struct.cmm_* %match_mask413, i32 0, i32 0
  %264 = load i16, i16* %red414, align 2, !tbaa !91
  %conv415 = zext i16 %264 to i32
  %and416 = and i32 %call411, %conv415
  %cmp417 = icmp eq i32 %and416, 0
  br i1 %cmp417, label %if.then.419, label %if.end.429

if.then.419:                                      ; preds = %if.else.396
  %265 = bitcast i64* %pixel420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #1
  %266 = load i32, i32* %cr397, align 4, !tbaa !65
  %idxprom421 = zext i32 %266 to i64
  %267 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman422 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %267, i32 0, i32 85
  %dither_ramp423 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman422, i32 0, i32 5
  %268 = load i64*, i64** %dither_ramp423, align 8, !tbaa !59
  %arrayidx424 = getelementptr inbounds i64, i64* %268, i64 %idxprom421
  %269 = load i64, i64* %arrayidx424, align 8, !tbaa !45
  store i64 %269, i64* %pixel420, align 8, !tbaa !45
  br label %do.body.425

do.body.425:                                      ; preds = %if.then.419
  br label %do.cond.426

do.cond.426:                                      ; preds = %do.body.425
  br label %do.end.427

do.end.427:                                       ; preds = %do.cond.426
  %270 = load i64, i64* %pixel420, align 8, !tbaa !45
  store i64 %270, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %271 = bitcast i64* %pixel420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  br label %cleanup.433

if.end.429:                                       ; preds = %if.else.396
  br label %do.body.430

do.body.430:                                      ; preds = %if.end.429
  br label %do.cond.431

do.cond.431:                                      ; preds = %do.body.430
  br label %do.end.432

do.end.432:                                       ; preds = %do.cond.431
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.433

cleanup.433:                                      ; preds = %do.end.432, %do.end.427
  %272 = bitcast i32* %max_gray to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32* %dither_grays to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast i16* %cvr398 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %274) #1
  %275 = bitcast i32* %cr397 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %cleanup.dest.437 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.437, label %cleanup.573 [
    i32 0, label %cleanup.cont.438
  ]

cleanup.cont.438:                                 ; preds = %cleanup.433
  br label %if.end.439

if.end.439:                                       ; preds = %cleanup.cont.438, %cleanup.cont.395
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.else.274
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %cleanup.cont.273
  %276 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman442 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %276, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman442, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  %277 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %tobool443 = icmp ne %struct.x11_color_s** %277, null
  br i1 %tobool443, label %if.then.444, label %if.end.569

if.then.444:                                      ; preds = %if.end.441
  %278 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %278) #1
  %279 = load i16, i16* %dr, align 2, !tbaa !55
  %conv445 = zext i16 %279 to i32
  %280 = load i16, i16* %dg, align 2, !tbaa !55
  %conv446 = zext i16 %280 to i32
  %xor = xor i32 %conv445, %conv446
  %281 = load i16, i16* %db, align 2, !tbaa !55
  %conv447 = zext i16 %281 to i32
  %xor448 = xor i32 %xor, %conv447
  %282 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman449 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %282, i32 0, i32 85
  %dynamic450 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman449, i32 0, i32 6
  %shift = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic450, i32 0, i32 2
  %283 = load i32, i32* %shift, align 4, !tbaa !113
  %shr451 = ashr i32 %xor448, %283
  store i32 %shr451, i32* %i, align 4, !tbaa !65
  %284 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  %285 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom452 = sext i32 %285 to i64
  %286 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman453 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %286, i32 0, i32 85
  %dynamic454 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman453, i32 0, i32 6
  %colors455 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic454, i32 0, i32 1
  %287 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors455, align 8, !tbaa !60
  %arrayidx456 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %287, i64 %idxprom452
  %288 = load %struct.x11_color_s*, %struct.x11_color_s** %arrayidx456, align 8, !tbaa !2
  store %struct.x11_color_s* %288, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %289 = bitcast %struct.x11_color_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #1
  store %struct.x11_color_s* null, %struct.x11_color_s** %prev, align 8, !tbaa !2
  %290 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %290) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.444
  %291 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %tobool457 = icmp ne %struct.x11_color_s* %291, null
  br i1 %tobool457, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %292 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %292, i32 0, i32 0
  %red458 = getelementptr inbounds %struct.XColor, %struct.XColor* %color, i32 0, i32 1
  %293 = load i16, i16* %red458, align 2, !tbaa !123
  %conv459 = zext i16 %293 to i32
  %294 = load i16, i16* %dr, align 2, !tbaa !55
  %conv460 = zext i16 %294 to i32
  %cmp461 = icmp eq i32 %conv459, %conv460
  br i1 %cmp461, label %land.lhs.true.463, label %if.end.505

land.lhs.true.463:                                ; preds = %for.body
  %295 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color464 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %295, i32 0, i32 0
  %green465 = getelementptr inbounds %struct.XColor, %struct.XColor* %color464, i32 0, i32 2
  %296 = load i16, i16* %green465, align 2, !tbaa !124
  %conv466 = zext i16 %296 to i32
  %297 = load i16, i16* %dg, align 2, !tbaa !55
  %conv467 = zext i16 %297 to i32
  %cmp468 = icmp eq i32 %conv466, %conv467
  br i1 %cmp468, label %land.lhs.true.470, label %if.end.505

land.lhs.true.470:                                ; preds = %land.lhs.true.463
  %298 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color471 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %298, i32 0, i32 0
  %blue472 = getelementptr inbounds %struct.XColor, %struct.XColor* %color471, i32 0, i32 3
  %299 = load i16, i16* %blue472, align 2, !tbaa !125
  %conv473 = zext i16 %299 to i32
  %300 = load i16, i16* %db, align 2, !tbaa !55
  %conv474 = zext i16 %300 to i32
  %cmp475 = icmp eq i32 %conv473, %conv474
  br i1 %cmp475, label %if.then.477, label %if.end.505

if.then.477:                                      ; preds = %land.lhs.true.470
  %301 = load %struct.x11_color_s*, %struct.x11_color_s** %prev, align 8, !tbaa !2
  %tobool478 = icmp ne %struct.x11_color_s* %301, null
  br i1 %tobool478, label %if.then.479, label %if.end.492

if.then.479:                                      ; preds = %if.then.477
  %302 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %302, i32 0, i32 1
  %303 = load %struct.x11_color_s*, %struct.x11_color_s** %next, align 8, !tbaa !116
  %304 = load %struct.x11_color_s*, %struct.x11_color_s** %prev, align 8, !tbaa !2
  %next480 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %304, i32 0, i32 1
  store %struct.x11_color_s* %303, %struct.x11_color_s** %next480, align 8, !tbaa !116
  %305 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom481 = sext i32 %305 to i64
  %306 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman482 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %306, i32 0, i32 85
  %dynamic483 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman482, i32 0, i32 6
  %colors484 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic483, i32 0, i32 1
  %307 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors484, align 8, !tbaa !60
  %arrayidx485 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %307, i64 %idxprom481
  %308 = load %struct.x11_color_s*, %struct.x11_color_s** %arrayidx485, align 8, !tbaa !2
  %309 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next486 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %309, i32 0, i32 1
  store %struct.x11_color_s* %308, %struct.x11_color_s** %next486, align 8, !tbaa !116
  %310 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %311 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom487 = sext i32 %311 to i64
  %312 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman488 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %312, i32 0, i32 85
  %dynamic489 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman488, i32 0, i32 6
  %colors490 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic489, i32 0, i32 1
  %313 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors490, align 8, !tbaa !60
  %arrayidx491 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %313, i64 %idxprom487
  store %struct.x11_color_s* %310, %struct.x11_color_s** %arrayidx491, align 8, !tbaa !2
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.479, %if.then.477
  %314 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color493 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %314, i32 0, i32 0
  %pad = getelementptr inbounds %struct.XColor, %struct.XColor* %color493, i32 0, i32 5
  %315 = load i8, i8* %pad, align 1, !tbaa !118
  %tobool494 = icmp ne i8 %315, 0
  br i1 %tobool494, label %if.then.495, label %if.else.501

if.then.495:                                      ; preds = %if.end.492
  br label %do.body.496

do.body.496:                                      ; preds = %if.then.495
  br label %do.cond.497

do.cond.497:                                      ; preds = %do.body.496
  br label %do.end.498

do.end.498:                                       ; preds = %do.cond.497
  %316 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color499 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %316, i32 0, i32 0
  %pixel500 = getelementptr inbounds %struct.XColor, %struct.XColor* %color499, i32 0, i32 0
  %317 = load i64, i64* %pixel500, align 8, !tbaa !126
  store i64 %317, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.else.501:                                      ; preds = %if.end.492
  br label %do.body.502

do.body.502:                                      ; preds = %if.else.501
  br label %do.cond.503

do.cond.503:                                      ; preds = %do.body.502
  br label %do.end.504

do.end.504:                                       ; preds = %do.cond.503
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.end.505:                                       ; preds = %land.lhs.true.470, %land.lhs.true.463, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.505
  %318 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  store %struct.x11_color_s* %318, %struct.x11_color_s** %prev, align 8, !tbaa !2
  %319 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next506 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %319, i32 0, i32 1
  %320 = load %struct.x11_color_s*, %struct.x11_color_s** %next506, align 8, !tbaa !116
  store %struct.x11_color_s* %320, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %321 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman507 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %321, i32 0, i32 85
  %dynamic508 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman507, i32 0, i32 6
  %used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic508, i32 0, i32 3
  %322 = load i32, i32* %used, align 4, !tbaa !62
  %323 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman509 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %323, i32 0, i32 85
  %dynamic510 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman509, i32 0, i32 6
  %max_used = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic510, i32 0, i32 4
  %324 = load i32, i32* %max_used, align 4, !tbaa !114
  %cmp511 = icmp sgt i32 %322, %324
  br i1 %cmp511, label %if.then.513, label %if.end.517

if.then.513:                                      ; preds = %for.end
  br label %do.body.514

do.body.514:                                      ; preds = %if.then.513
  br label %do.cond.515

do.cond.515:                                      ; preds = %do.body.514
  br label %do.end.516

do.end.516:                                       ; preds = %do.cond.515
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.end.517:                                       ; preds = %for.end
  %325 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %325, i32 0, i32 3
  %326 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %326, i32 0, i32 3
  %327 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !66
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %327, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %328 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !69
  %329 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %memory518 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %329, i32 0, i32 3
  %330 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory518, align 8, !tbaa !48
  %non_gc_memory519 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %330, i32 0, i32 3
  %331 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory519, align 8, !tbaa !66
  %call520 = call i8* %328(%struct.gs_memory_s* %331, i32 24, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #5
  %332 = bitcast i8* %call520 to %struct.x11_color_s*
  store %struct.x11_color_s* %332, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %333 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %tobool521 = icmp ne %struct.x11_color_s* %333, null
  br i1 %tobool521, label %if.end.523, label %if.then.522

if.then.522:                                      ; preds = %if.end.517
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.end.523:                                       ; preds = %if.end.517
  %334 = load i16, i16* %dr, align 2, !tbaa !55
  %335 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color524 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %335, i32 0, i32 0
  %red525 = getelementptr inbounds %struct.XColor, %struct.XColor* %color524, i32 0, i32 1
  store i16 %334, i16* %red525, align 2, !tbaa !123
  %red526 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 1
  store i16 %334, i16* %red526, align 2, !tbaa !108
  %336 = load i16, i16* %dg, align 2, !tbaa !55
  %337 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color527 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %337, i32 0, i32 0
  %green528 = getelementptr inbounds %struct.XColor, %struct.XColor* %color527, i32 0, i32 2
  store i16 %336, i16* %green528, align 2, !tbaa !124
  %green529 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 2
  store i16 %336, i16* %green529, align 2, !tbaa !110
  %338 = load i16, i16* %db, align 2, !tbaa !55
  %339 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color530 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %339, i32 0, i32 0
  %blue531 = getelementptr inbounds %struct.XColor, %struct.XColor* %color530, i32 0, i32 3
  store i16 %338, i16* %blue531, align 2, !tbaa !125
  %blue532 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 3
  store i16 %338, i16* %blue532, align 2, !tbaa !111
  %340 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom533 = sext i32 %340 to i64
  %341 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman534 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %341, i32 0, i32 85
  %dynamic535 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman534, i32 0, i32 6
  %colors536 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic535, i32 0, i32 1
  %342 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors536, align 8, !tbaa !60
  %arrayidx537 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %342, i64 %idxprom533
  %343 = load %struct.x11_color_s*, %struct.x11_color_s** %arrayidx537, align 8, !tbaa !2
  %344 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next538 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %344, i32 0, i32 1
  store %struct.x11_color_s* %343, %struct.x11_color_s** %next538, align 8, !tbaa !116
  %345 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %346 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom539 = sext i32 %346 to i64
  %347 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman540 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %347, i32 0, i32 85
  %dynamic541 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman540, i32 0, i32 6
  %colors542 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic541, i32 0, i32 1
  %348 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors542, align 8, !tbaa !60
  %arrayidx543 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %348, i64 %idxprom539
  store %struct.x11_color_s* %345, %struct.x11_color_s** %arrayidx543, align 8, !tbaa !2
  %349 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman544 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %349, i32 0, i32 85
  %dynamic545 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman544, i32 0, i32 6
  %used546 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic545, i32 0, i32 3
  %350 = load i32, i32* %used546, align 4, !tbaa !62
  %inc = add nsw i32 %350, 1
  store i32 %inc, i32* %used546, align 4, !tbaa !62
  %351 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %call547 = call i32 @x_alloc_color(%struct.gx_device_X_s* %351, %struct.XColor* %xc) #5
  %tobool548 = icmp ne i32 %call547, 0
  br i1 %tobool548, label %if.then.549, label %if.else.559

if.then.549:                                      ; preds = %if.end.523
  %pixel550 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  %352 = load i64, i64* %pixel550, align 8, !tbaa !112
  %353 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color551 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %353, i32 0, i32 0
  %pixel552 = getelementptr inbounds %struct.XColor, %struct.XColor* %color551, i32 0, i32 0
  store i64 %352, i64* %pixel552, align 8, !tbaa !126
  %354 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color553 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %354, i32 0, i32 0
  %pad554 = getelementptr inbounds %struct.XColor, %struct.XColor* %color553, i32 0, i32 5
  store i8 1, i8* %pad554, align 1, !tbaa !118
  br label %do.body.555

do.body.555:                                      ; preds = %if.then.549
  br label %do.cond.556

do.cond.556:                                      ; preds = %do.body.555
  br label %do.end.557

do.end.557:                                       ; preds = %do.cond.556
  %pixel558 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  %355 = load i64, i64* %pixel558, align 8, !tbaa !112
  store i64 %355, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

if.else.559:                                      ; preds = %if.end.523
  %356 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color560 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %356, i32 0, i32 0
  %pad561 = getelementptr inbounds %struct.XColor, %struct.XColor* %color560, i32 0, i32 5
  store i8 0, i8* %pad561, align 1, !tbaa !118
  br label %do.body.562

do.body.562:                                      ; preds = %if.else.559
  br label %do.cond.563

do.cond.563:                                      ; preds = %do.body.562
  br label %do.end.564

do.end.564:                                       ; preds = %do.cond.563
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.565

cleanup.565:                                      ; preds = %do.end.564, %do.end.557, %if.then.522, %do.end.516, %do.end.504, %do.end.498
  %357 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %357) #1
  %358 = bitcast %struct.x11_color_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  br label %cleanup.573

if.end.569:                                       ; preds = %if.end.441
  br label %do.body.570

do.body.570:                                      ; preds = %if.end.569
  br label %do.cond.571

do.cond.571:                                      ; preds = %do.body.570
  br label %do.end.572

do.end.572:                                       ; preds = %do.cond.571
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.573

cleanup.573:                                      ; preds = %do.end.572, %cleanup.565, %cleanup.433, %cleanup.386, %cleanup.271, %cleanup
  %361 = bitcast i16* %db to i8*
  call void @llvm.lifetime.end(i64 2, i8* %361) #1
  %362 = bitcast i16* %dg to i8*
  call void @llvm.lifetime.end(i64 2, i8* %362) #1
  %363 = bitcast i16* %dr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %363) #1
  %364 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %364) #1
  %365 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %365) #1
  %366 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %366) #1
  %367 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %368 = load i64, i64* %retval
  ret i64 %368
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #4 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !65
  %0 = load i32, i32* %x.addr, align 4, !tbaa !65
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !65
  %sub = sub nsw i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @x_alloc_color(%struct.gx_device_X_s* %xdev, %struct.XColor* %xcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %xcolor.addr = alloca %struct.XColor*, align 8
  %rgb = alloca %struct.x11_rgb_s, align 4
  %cleanup.dest.slot = alloca i32
  %pxrgb = alloca %struct.x11_rgb_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store %struct.XColor* %xcolor, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %0 = bitcast %struct.x11_rgb_s* %rgb to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %1 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %1, i32 0, i32 1
  %2 = load i16, i16* %red, align 2, !tbaa !108
  %rgb1 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %rgb, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb1, i32 0, i64 0
  store i16 %2, i16* %arrayidx, align 2, !tbaa !55
  %3 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %3, i32 0, i32 2
  %4 = load i16, i16* %green, align 2, !tbaa !110
  %rgb2 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %rgb, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb2, i32 0, i64 1
  store i16 %4, i16* %arrayidx3, align 2, !tbaa !55
  %5 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %5, i32 0, i32 3
  %6 = load i16, i16* %blue, align 2, !tbaa !111
  %rgb4 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %rgb, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb4, i32 0, i64 2
  store i16 %6, i16* %arrayidx5, align 2, !tbaa !55
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 58
  %8 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !44
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 61
  %10 = load i64, i64* %cmap, align 8, !tbaa !97
  %11 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %call = call i32 @XAllocColor(%struct._XDisplay* %8, i64 %10, %struct.XColor* %11) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %12, i32 0, i32 0
  %13 = load i64, i64* %pixel, align 8, !tbaa !112
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 85
  %color_to_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 4
  %size = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb, i32 0, i32 0
  %15 = load i32, i32* %size, align 4, !tbaa !73
  %conv = sext i32 %15 to i64
  %cmp = icmp ult i64 %13, %conv
  br i1 %cmp, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end
  %16 = bitcast %struct.x11_rgb_s** %pxrgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.XColor*, %struct.XColor** %xcolor.addr, align 8, !tbaa !2
  %pixel8 = getelementptr inbounds %struct.XColor, %struct.XColor* %17, i32 0, i32 0
  %18 = load i64, i64* %pixel8, align 8, !tbaa !112
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 85
  %color_to_rgb10 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman9, i32 0, i32 4
  %values = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb10, i32 0, i32 1
  %20 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values, align 8, !tbaa !70
  %arrayidx11 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %20, i64 %18
  store %struct.x11_rgb_s* %arrayidx11, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %21 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %rgb12 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %21, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb12, i32 0, i32 0
  %22 = bitcast i16* %arraydecay to i8*
  %rgb13 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %rgb, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb13, i32 0, i32 0
  %23 = bitcast i16* %arraydecay14 to i8*
  %call15 = call i8* @memcpy(i8* %22, i8* %23, i64 6) #6
  %24 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %defined = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %24, i32 0, i32 1
  store i32 1, i32* %defined, align 4, !tbaa !71
  %25 = bitcast %struct.x11_rgb_s** %pxrgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.7, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %26 = bitcast %struct.x11_rgb_s* %rgb to i8*
  call void @llvm.lifetime.end(i64 12, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gdev_x_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %cmap = alloca %struct.XStandardColormap*, align 8
  %cleanup.dest.slot = alloca i32
  %pxrgb = alloca %struct.x11_rgb_s*, align 8
  %value = alloca i64, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %size100 = alloca i32, align 4
  %size3 = alloca i32, align 4
  %i = alloca i32, align 4
  %max_rgb = alloca i32, align 4
  %q = alloca i32, align 4
  %r114 = alloca i32, align 4
  %g116 = alloca i32, align 4
  %b118 = alloca i32, align 4
  %size143 = alloca i32, align 4
  %i145 = alloca i32, align 4
  %i177 = alloca i32, align 4
  %xcp = alloca %struct.x11_color_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !45
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 85
  %std_cmap = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 3
  %map = getelementptr inbounds %struct.anon.3, %struct.anon.3* %std_cmap, i32 0, i32 0
  %5 = load %struct.XStandardColormap*, %struct.XStandardColormap** %map, align 8, !tbaa !57
  store %struct.XStandardColormap* %5, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !45
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 84
  %8 = load i64, i64* %foreground, align 8, !tbaa !106
  %cmp = icmp eq i64 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !55
  %10 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !55
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %color.addr, align 8, !tbaa !45
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 83
  %14 = load i64, i64* %background, align 8, !tbaa !107
  %cmp3 = icmp eq i64 %12, %14
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %15 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 2
  store i16 -1, i16* %arrayidx5, align 2, !tbaa !55
  %16 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %16, i64 1
  store i16 -1, i16* %arrayidx6, align 2, !tbaa !55
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i16, i16* %17, i64 0
  store i16 -1, i16* %arrayidx7, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215

if.end.8:                                         ; preds = %if.end
  %18 = load i64, i64* %color.addr, align 8, !tbaa !45
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 85
  %color_to_rgb = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman9, i32 0, i32 4
  %size = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb, i32 0, i32 0
  %20 = load i32, i32* %size, align 4, !tbaa !73
  %conv = sext i32 %20 to i64
  %cmp10 = icmp ult i64 %18, %conv
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %if.end.8
  %21 = bitcast %struct.x11_rgb_s** %pxrgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i64, i64* %color.addr, align 8, !tbaa !45
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman13 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 85
  %color_to_rgb14 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman13, i32 0, i32 4
  %values = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb14, i32 0, i32 1
  %24 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %values, align 8, !tbaa !70
  %arrayidx15 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %24, i64 %22
  store %struct.x11_rgb_s* %arrayidx15, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %25 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %defined = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %25, i32 0, i32 1
  %26 = load i32, i32* %defined, align 4, !tbaa !71
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.then.12
  %27 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %rgb = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %27, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %28 = load i16, i16* %arrayidx17, align 2, !tbaa !55
  %29 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i16, i16* %29, i64 0
  store i16 %28, i16* %arrayidx18, align 2, !tbaa !55
  %30 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %rgb19 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %30, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb19, i32 0, i64 1
  %31 = load i16, i16* %arrayidx20, align 2, !tbaa !55
  %32 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i16, i16* %32, i64 1
  store i16 %31, i16* %arrayidx21, align 2, !tbaa !55
  %33 = load %struct.x11_rgb_s*, %struct.x11_rgb_s** %pxrgb, align 8, !tbaa !2
  %rgb22 = getelementptr inbounds %struct.x11_rgb_s, %struct.x11_rgb_s* %33, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb22, i32 0, i64 2
  %34 = load i16, i16* %arrayidx23, align 2, !tbaa !55
  %35 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx24 = getelementptr inbounds i16, i16* %35, i64 2
  store i16 %34, i16* %arrayidx24, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.16
  %36 = bitcast %struct.x11_rgb_s** %pxrgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.215 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont, %if.end.8
  %37 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %tobool27 = icmp ne %struct.XStandardColormap* %37, null
  br i1 %tobool27, label %if.then.28, label %if.end.81

if.then.28:                                       ; preds = %if.end.26
  %38 = load i64, i64* %color.addr, align 8, !tbaa !45
  %39 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %base_pixel = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %39, i32 0, i32 7
  %40 = load i64, i64* %base_pixel, align 8, !tbaa !122
  %cmp29 = icmp uge i64 %38, %40
  br i1 %cmp29, label %if.then.31, label %if.end.80

if.then.31:                                       ; preds = %if.then.28
  %41 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i64, i64* %color.addr, align 8, !tbaa !45
  %43 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %base_pixel32 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %43, i32 0, i32 7
  %44 = load i64, i64* %base_pixel32, align 8, !tbaa !122
  %sub = sub i64 %42, %44
  store i64 %sub, i64* %value, align 8, !tbaa !45
  %45 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i64, i64* %value, align 8, !tbaa !45
  %47 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %47, i32 0, i32 2
  %48 = load i64, i64* %red_mult, align 8, !tbaa !100
  %div = udiv i64 %46, %48
  %49 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %49, i32 0, i32 1
  %50 = load i64, i64* %red_max, align 8, !tbaa !81
  %add = add i64 %50, 1
  %rem = urem i64 %div, %add
  %conv33 = trunc i64 %rem to i32
  store i32 %conv33, i32* %r, align 4, !tbaa !65
  %51 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i64, i64* %value, align 8, !tbaa !45
  %53 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %53, i32 0, i32 4
  %54 = load i64, i64* %green_mult, align 8, !tbaa !102
  %div34 = udiv i64 %52, %54
  %55 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %55, i32 0, i32 3
  %56 = load i64, i64* %green_max, align 8, !tbaa !83
  %add35 = add i64 %56, 1
  %rem36 = urem i64 %div34, %add35
  %conv37 = trunc i64 %rem36 to i32
  store i32 %conv37, i32* %g, align 4, !tbaa !65
  %57 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i64, i64* %value, align 8, !tbaa !45
  %59 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %59, i32 0, i32 6
  %60 = load i64, i64* %blue_mult, align 8, !tbaa !104
  %div38 = udiv i64 %58, %60
  %61 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %61, i32 0, i32 5
  %62 = load i64, i64* %blue_max, align 8, !tbaa !84
  %add39 = add i64 %62, 1
  %rem40 = urem i64 %div38, %add39
  %conv41 = trunc i64 %rem40 to i32
  store i32 %conv41, i32* %b, align 4, !tbaa !65
  %63 = load i64, i64* %value, align 8, !tbaa !45
  %64 = load i32, i32* %r, align 4, !tbaa !65
  %conv42 = zext i32 %64 to i64
  %65 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_mult43 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %65, i32 0, i32 2
  %66 = load i64, i64* %red_mult43, align 8, !tbaa !100
  %mul = mul i64 %conv42, %66
  %67 = load i32, i32* %g, align 4, !tbaa !65
  %conv44 = zext i32 %67 to i64
  %68 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_mult45 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %68, i32 0, i32 4
  %69 = load i64, i64* %green_mult45, align 8, !tbaa !102
  %mul46 = mul i64 %conv44, %69
  %add47 = add i64 %mul, %mul46
  %70 = load i32, i32* %b, align 4, !tbaa !65
  %conv48 = zext i32 %70 to i64
  %71 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_mult49 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %71, i32 0, i32 6
  %72 = load i64, i64* %blue_mult49, align 8, !tbaa !104
  %mul50 = mul i64 %conv48, %72
  %add51 = add i64 %add47, %mul50
  %cmp52 = icmp eq i64 %63, %add51
  br i1 %cmp52, label %if.then.54, label %if.end.73

if.then.54:                                       ; preds = %if.then.31
  %73 = load i32, i32* %r, align 4, !tbaa !65
  %mul55 = mul i32 %73, 65535
  %conv56 = zext i32 %mul55 to i64
  %74 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %red_max57 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %74, i32 0, i32 1
  %75 = load i64, i64* %red_max57, align 8, !tbaa !81
  %div58 = udiv i64 %conv56, %75
  %conv59 = trunc i64 %div58 to i16
  %76 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx60 = getelementptr inbounds i16, i16* %76, i64 0
  store i16 %conv59, i16* %arrayidx60, align 2, !tbaa !55
  %77 = load i32, i32* %g, align 4, !tbaa !65
  %mul61 = mul i32 %77, 65535
  %conv62 = zext i32 %mul61 to i64
  %78 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %green_max63 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %78, i32 0, i32 3
  %79 = load i64, i64* %green_max63, align 8, !tbaa !83
  %div64 = udiv i64 %conv62, %79
  %conv65 = trunc i64 %div64 to i16
  %80 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds i16, i16* %80, i64 1
  store i16 %conv65, i16* %arrayidx66, align 2, !tbaa !55
  %81 = load i32, i32* %b, align 4, !tbaa !65
  %mul67 = mul i32 %81, 65535
  %conv68 = zext i32 %mul67 to i64
  %82 = load %struct.XStandardColormap*, %struct.XStandardColormap** %cmap, align 8, !tbaa !2
  %blue_max69 = getelementptr inbounds %struct.XStandardColormap, %struct.XStandardColormap* %82, i32 0, i32 5
  %83 = load i64, i64* %blue_max69, align 8, !tbaa !84
  %div70 = udiv i64 %conv68, %83
  %conv71 = trunc i64 %div70 to i16
  %84 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx72 = getelementptr inbounds i16, i16* %84, i64 2
  store i16 %conv71, i16* %arrayidx72, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.73:                                        ; preds = %if.then.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %if.end.73, %if.then.54
  %85 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest.78 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.78, label %cleanup.215 [
    i32 0, label %cleanup.cont.79
  ]

cleanup.cont.79:                                  ; preds = %cleanup.74
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont.79, %if.then.28
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.26
  %89 = load i64, i64* %color.addr, align 8, !tbaa !45
  %90 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman82 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %90, i32 0, i32 85
  %color_to_rgb83 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman82, i32 0, i32 4
  %size84 = getelementptr inbounds %struct.cmc_, %struct.cmc_* %color_to_rgb83, i32 0, i32 0
  %91 = load i32, i32* %size84, align 4, !tbaa !73
  %conv85 = sext i32 %91 to i64
  %cmp86 = icmp ult i64 %89, %conv85
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.81
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215

if.end.89:                                        ; preds = %if.end.81
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman90 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %92, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman90, i32 0, i32 5
  %93 = load i64*, i64** %dither_ramp, align 8, !tbaa !59
  %tobool91 = icmp ne i64* %93, null
  br i1 %tobool91, label %if.then.92, label %if.end.173

if.then.92:                                       ; preds = %if.end.89
  %94 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %94, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %95 = load i32, i32* %num_components, align 4, !tbaa !74
  %cmp93 = icmp sgt i32 %95, 1
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.92
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info95 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info95, i32 0, i32 4
  %97 = load i8, i8* %gray_index, align 1, !tbaa !88
  %conv96 = zext i8 %97 to i32
  %cmp97 = icmp eq i32 %conv96, 255
  br i1 %cmp97, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %lor.lhs.false, %if.then.92
  %98 = bitcast i32* %size100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info101 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %99, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info101, i32 0, i32 8
  %100 = load i32, i32* %dither_colors, align 4, !tbaa !85
  store i32 %100, i32* %size100, align 4, !tbaa !65
  %101 = bitcast i32* %size3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = load i32, i32* %size100, align 4, !tbaa !65
  %103 = load i32, i32* %size100, align 4, !tbaa !65
  %mul102 = mul nsw i32 %102, %103
  %104 = load i32, i32* %size100, align 4, !tbaa !65
  %mul103 = mul nsw i32 %mul102, %104
  store i32 %mul103, i32* %size3, align 4, !tbaa !65
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.99
  %106 = load i32, i32* %i, align 4, !tbaa !65
  %107 = load i32, i32* %size3, align 4, !tbaa !65
  %cmp104 = icmp slt i32 %106, %107
  br i1 %cmp104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %108 to i64
  %109 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman106 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %109, i32 0, i32 85
  %dither_ramp107 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman106, i32 0, i32 5
  %110 = load i64*, i64** %dither_ramp107, align 8, !tbaa !59
  %arrayidx108 = getelementptr inbounds i64, i64* %110, i64 %idxprom
  %111 = load i64, i64* %arrayidx108, align 8, !tbaa !45
  %112 = load i64, i64* %color.addr, align 8, !tbaa !45
  %cmp109 = icmp eq i64 %111, %112
  br i1 %cmp109, label %if.then.111, label %if.end.137

if.then.111:                                      ; preds = %for.body
  %113 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i32, i32* %size100, align 4, !tbaa !65
  %sub112 = sub nsw i32 %114, 1
  store i32 %sub112, i32* %max_rgb, align 4, !tbaa !65
  %115 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i32, i32* %i, align 4, !tbaa !65
  %117 = load i32, i32* %size100, align 4, !tbaa !65
  %div113 = sdiv i32 %116, %117
  store i32 %div113, i32* %q, align 4, !tbaa !65
  %118 = bitcast i32* %r114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i32, i32* %q, align 4, !tbaa !65
  %120 = load i32, i32* %size100, align 4, !tbaa !65
  %div115 = udiv i32 %119, %120
  store i32 %div115, i32* %r114, align 4, !tbaa !65
  %121 = bitcast i32* %g116 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %122 = load i32, i32* %q, align 4, !tbaa !65
  %123 = load i32, i32* %size100, align 4, !tbaa !65
  %rem117 = urem i32 %122, %123
  store i32 %rem117, i32* %g116, align 4, !tbaa !65
  %124 = bitcast i32* %b118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %i, align 4, !tbaa !65
  %126 = load i32, i32* %size100, align 4, !tbaa !65
  %rem119 = srem i32 %125, %126
  store i32 %rem119, i32* %b118, align 4, !tbaa !65
  %127 = load i32, i32* %r114, align 4, !tbaa !65
  %mul120 = mul i32 %127, 65535
  %128 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div121 = udiv i32 %mul120, %128
  %conv122 = trunc i32 %div121 to i16
  %129 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx123 = getelementptr inbounds i16, i16* %129, i64 0
  store i16 %conv122, i16* %arrayidx123, align 2, !tbaa !55
  %130 = load i32, i32* %g116, align 4, !tbaa !65
  %mul124 = mul i32 %130, 65535
  %131 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div125 = udiv i32 %mul124, %131
  %conv126 = trunc i32 %div125 to i16
  %132 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx127 = getelementptr inbounds i16, i16* %132, i64 1
  store i16 %conv126, i16* %arrayidx127, align 2, !tbaa !55
  %133 = load i32, i32* %b118, align 4, !tbaa !65
  %mul128 = mul i32 %133, 65535
  %134 = load i32, i32* %max_rgb, align 4, !tbaa !65
  %div129 = udiv i32 %mul128, %134
  %conv130 = trunc i32 %div129 to i16
  %135 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx131 = getelementptr inbounds i16, i16* %135, i64 2
  store i16 %conv130, i16* %arrayidx131, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %136 = bitcast i32* %b118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %g116 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %r114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %max_rgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  br label %cleanup.138

if.end.137:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %141 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.138

cleanup.138:                                      ; preds = %for.end, %if.then.111
  %142 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %size3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %size100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %cleanup.215 [
    i32 0, label %cleanup.cont.142
  ]

cleanup.cont.142:                                 ; preds = %cleanup.138
  br label %if.end.172

if.else:                                          ; preds = %lor.lhs.false
  %145 = bitcast i32* %size143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info144 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %146, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info144, i32 0, i32 7
  %147 = load i32, i32* %dither_grays, align 4, !tbaa !86
  store i32 %147, i32* %size143, align 4, !tbaa !65
  %148 = bitcast i32* %i145 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  store i32 0, i32* %i145, align 4, !tbaa !65
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.165, %if.else
  %149 = load i32, i32* %i145, align 4, !tbaa !65
  %150 = load i32, i32* %size143, align 4, !tbaa !65
  %cmp147 = icmp slt i32 %149, %150
  br i1 %cmp147, label %for.body.149, label %for.end.167

for.body.149:                                     ; preds = %for.cond.146
  %151 = load i32, i32* %i145, align 4, !tbaa !65
  %idxprom150 = sext i32 %151 to i64
  %152 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman151 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %152, i32 0, i32 85
  %dither_ramp152 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman151, i32 0, i32 5
  %153 = load i64*, i64** %dither_ramp152, align 8, !tbaa !59
  %arrayidx153 = getelementptr inbounds i64, i64* %153, i64 %idxprom150
  %154 = load i64, i64* %arrayidx153, align 8, !tbaa !45
  %155 = load i64, i64* %color.addr, align 8, !tbaa !45
  %cmp154 = icmp eq i64 %154, %155
  br i1 %cmp154, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %for.body.149
  %156 = load i32, i32* %i145, align 4, !tbaa !65
  %mul157 = mul nsw i32 %156, 65535
  %157 = load i32, i32* %size143, align 4, !tbaa !65
  %sub158 = sub nsw i32 %157, 1
  %div159 = sdiv i32 %mul157, %sub158
  %conv160 = trunc i32 %div159 to i16
  %158 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds i16, i16* %158, i64 2
  store i16 %conv160, i16* %arrayidx161, align 2, !tbaa !55
  %159 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx162 = getelementptr inbounds i16, i16* %159, i64 1
  store i16 %conv160, i16* %arrayidx162, align 2, !tbaa !55
  %160 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx163 = getelementptr inbounds i16, i16* %160, i64 0
  store i16 %conv160, i16* %arrayidx163, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.164:                                       ; preds = %for.body.149
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %161 = load i32, i32* %i145, align 4, !tbaa !65
  %inc166 = add nsw i32 %161, 1
  store i32 %inc166, i32* %i145, align 4, !tbaa !65
  br label %for.cond.146

for.end.167:                                      ; preds = %for.cond.146
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.168

cleanup.168:                                      ; preds = %for.end.167, %if.then.156
  %162 = bitcast i32* %i145 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %size143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %cleanup.dest.170 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.170, label %cleanup.215 [
    i32 0, label %cleanup.cont.171
  ]

cleanup.cont.171:                                 ; preds = %cleanup.168
  br label %if.end.172

if.end.172:                                       ; preds = %cleanup.cont.171, %cleanup.cont.142
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.89
  %164 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman174 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %164, i32 0, i32 85
  %dynamic = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman174, i32 0, i32 6
  %colors = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic, i32 0, i32 1
  %165 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors, align 8, !tbaa !60
  %tobool175 = icmp ne %struct.x11_color_s** %165, null
  br i1 %tobool175, label %if.then.176, label %if.end.214

if.then.176:                                      ; preds = %if.end.173
  %166 = bitcast i32* %i177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #1
  %167 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman178 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %168, i32 0, i32 85
  %dynamic179 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman178, i32 0, i32 6
  %size180 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic179, i32 0, i32 0
  %169 = load i32, i32* %size180, align 4, !tbaa !61
  store i32 %169, i32* %i177, align 4, !tbaa !65
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.end.208, %if.then.176
  %170 = load i32, i32* %i177, align 4, !tbaa !65
  %dec = add nsw i32 %170, -1
  store i32 %dec, i32* %i177, align 4, !tbaa !65
  %cmp182 = icmp sge i32 %dec, 0
  br i1 %cmp182, label %for.body.184, label %for.end.209

for.body.184:                                     ; preds = %for.cond.181
  %171 = load i32, i32* %i177, align 4, !tbaa !65
  %idxprom185 = sext i32 %171 to i64
  %172 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cman186 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %172, i32 0, i32 85
  %dynamic187 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman186, i32 0, i32 6
  %colors188 = getelementptr inbounds %struct.cmd_, %struct.cmd_* %dynamic187, i32 0, i32 1
  %173 = load %struct.x11_color_s**, %struct.x11_color_s*** %colors188, align 8, !tbaa !60
  %arrayidx189 = getelementptr inbounds %struct.x11_color_s*, %struct.x11_color_s** %173, i64 %idxprom185
  %174 = load %struct.x11_color_s*, %struct.x11_color_s** %arrayidx189, align 8, !tbaa !2
  store %struct.x11_color_s* %174, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.207, %for.body.184
  %175 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %tobool191 = icmp ne %struct.x11_color_s* %175, null
  br i1 %tobool191, label %for.body.192, label %for.end.208

for.body.192:                                     ; preds = %for.cond.190
  %176 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color193 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %176, i32 0, i32 0
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %color193, i32 0, i32 0
  %177 = load i64, i64* %pixel, align 8, !tbaa !126
  %178 = load i64, i64* %color.addr, align 8, !tbaa !45
  %cmp194 = icmp eq i64 %177, %178
  br i1 %cmp194, label %land.lhs.true, label %if.end.206

land.lhs.true:                                    ; preds = %for.body.192
  %179 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color196 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %179, i32 0, i32 0
  %pad = getelementptr inbounds %struct.XColor, %struct.XColor* %color196, i32 0, i32 5
  %180 = load i8, i8* %pad, align 1, !tbaa !118
  %conv197 = sext i8 %180 to i32
  %tobool198 = icmp ne i32 %conv197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.206

if.then.199:                                      ; preds = %land.lhs.true
  %181 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color200 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %181, i32 0, i32 0
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %color200, i32 0, i32 1
  %182 = load i16, i16* %red, align 2, !tbaa !123
  %183 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx201 = getelementptr inbounds i16, i16* %183, i64 0
  store i16 %182, i16* %arrayidx201, align 2, !tbaa !55
  %184 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color202 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %184, i32 0, i32 0
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %color202, i32 0, i32 2
  %185 = load i16, i16* %green, align 2, !tbaa !124
  %186 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx203 = getelementptr inbounds i16, i16* %186, i64 1
  store i16 %185, i16* %arrayidx203, align 2, !tbaa !55
  %187 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %color204 = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %187, i32 0, i32 0
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %color204, i32 0, i32 3
  %188 = load i16, i16* %blue, align 2, !tbaa !125
  %189 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %arrayidx205 = getelementptr inbounds i16, i16* %189, i64 2
  store i16 %188, i16* %arrayidx205, align 2, !tbaa !55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end.206:                                       ; preds = %land.lhs.true, %for.body.192
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %190 = load %struct.x11_color_s*, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.x11_color_s, %struct.x11_color_s* %190, i32 0, i32 1
  %191 = load %struct.x11_color_s*, %struct.x11_color_s** %next, align 8, !tbaa !116
  store %struct.x11_color_s* %191, %struct.x11_color_s** %xcp, align 8, !tbaa !2
  br label %for.cond.190

for.end.208:                                      ; preds = %for.cond.190
  br label %for.cond.181

for.end.209:                                      ; preds = %for.cond.181
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %for.end.209, %if.then.199
  %192 = bitcast %struct.x11_color_s** %xcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i32* %i177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %cleanup.dest.212 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.212, label %cleanup.215 [
    i32 0, label %cleanup.cont.213
  ]

cleanup.cont.213:                                 ; preds = %cleanup.210
  br label %if.end.214

if.end.214:                                       ; preds = %cleanup.cont.213, %if.end.173
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215

cleanup.215:                                      ; preds = %if.end.214, %cleanup.210, %cleanup.168, %cleanup.138, %if.then.88, %cleanup.74, %cleanup, %if.then.4, %if.then
  %194 = bitcast %struct.XStandardColormap** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = load i32, i32* %retval
  ret i32 %196
}

declare i32 @XGetRGBColormaps(%struct._XDisplay*, i64, %struct.XStandardColormap**, i32*, i64) #2

declare %struct.XStandardColormap* @XAllocStandardColormap() #2

; Function Attrs: nounwind uwtable
define internal i32 @set_cmap_values(%struct.x11_cmap_values_s* %values, i32 %maxv, i32 %mult) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca %struct.x11_cmap_values_s*, align 8
  %maxv.addr = alloca i32, align 4
  %mult.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.x11_cmap_values_s* %values, %struct.x11_cmap_values_s** %values.addr, align 8, !tbaa !2
  store i32 %maxv, i32* %maxv.addr, align 4, !tbaa !65
  store i32 %mult, i32* %mult.addr, align 4, !tbaa !65
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %cmp1 = icmp sgt i32 %2, 63
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %4 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %add = add nsw i32 %4, 1
  %and = and i32 %3, %add
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.2
  %5 = load i32, i32* %mult.addr, align 4, !tbaa !65
  %6 = load i32, i32* %mult.addr, align 4, !tbaa !65
  %sub = sub nsw i32 %6, 1
  %and4 = and i32 %5, %sub
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %add6 = add nsw i32 %7, 1
  %rem = srem i32 %add6, 11
  %sub7 = sub nsw i32 %rem, 1
  %mul = mul nsw i32 %sub7, 3
  %sh_prom = zext i32 %mul to i64
  %shr = ashr i64 779895816, %sh_prom
  %conv = trunc i64 %shr to i32
  %and8 = and i32 %conv, 7
  %sub9 = sub i32 16, %and8
  %8 = load %struct.x11_cmap_values_s*, %struct.x11_cmap_values_s** %values.addr, align 8, !tbaa !2
  %cv_shift = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %8, i32 0, i32 0
  store i32 %sub9, i32* %cv_shift, align 4, !tbaa !127
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !65
  %10 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %cmp10 = icmp sle i32 %9, %10
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !65
  %mul12 = mul nsw i32 65535, %11
  %12 = load i32, i32* %maxv.addr, align 4, !tbaa !65
  %div = sdiv i32 %mul12, %12
  %conv13 = trunc i32 %div to i16
  %13 = load i32, i32* %i, align 4, !tbaa !65
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.x11_cmap_values_s*, %struct.x11_cmap_values_s** %values.addr, align 8, !tbaa !2
  %nearest = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %nearest, i32 0, i64 %idxprom
  store i16 %conv13, i16* %arrayidx, align 2, !tbaa !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !65
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !65
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !65
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.18, %for.end
  %16 = load i32, i32* %mult.addr, align 4, !tbaa !65
  %17 = load i32, i32* %i, align 4, !tbaa !65
  %shl = shl i32 1, %17
  %cmp15 = icmp ne i32 %16, %shl
  br i1 %cmp15, label %for.body.17, label %for.end.20

for.body.17:                                      ; preds = %for.cond.14
  br label %do.body

do.body:                                          ; preds = %for.body.17
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.18

for.inc.18:                                       ; preds = %do.end
  %18 = load i32, i32* %i, align 4, !tbaa !65
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !65
  br label %for.cond.14

for.end.20:                                       ; preds = %for.cond.14
  %19 = load i32, i32* %i, align 4, !tbaa !65
  %20 = load %struct.x11_cmap_values_s*, %struct.x11_cmap_values_s** %values.addr, align 8, !tbaa !2
  %pixel_shift = getelementptr inbounds %struct.x11_cmap_values_s, %struct.x11_cmap_values_s* %20, i32 0, i32 2
  store i32 %19, i32* %pixel_shift, align 4, !tbaa !128
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.20, %if.then
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @free_ramp(%struct.gx_device_X_s* %xdev, i32 %num_used, i32 %size) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %num_used.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32 %num_used, i32* %num_used.addr, align 4, !tbaa !65
  store i32 %size, i32* %size.addr, align 4, !tbaa !65
  %0 = load i32, i32* %num_used.addr, align 4, !tbaa !65
  %sub = sub nsw i32 %0, 1
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 85
  %dither_ramp = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman, i32 0, i32 5
  %3 = load i64*, i64** %dither_ramp, align 8, !tbaa !59
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i32, i32* %num_used.addr, align 4, !tbaa !65
  %sub1 = sub nsw i32 %4, 1
  call void @x_free_colors(%struct.gx_device_X_s* %1, i64* %add.ptr, i32 %sub1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 85
  %dither_ramp3 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman2, i32 0, i32 5
  %8 = load i64*, i64** %dither_ramp3, align 8, !tbaa !59
  %9 = bitcast i64* %8 to i8*
  call void @gs_x_free(%struct.gs_memory_s* %6, i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cman4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 85
  %dither_ramp5 = getelementptr inbounds %struct.x11_cman_s, %struct.x11_cman_s* %cman4, i32 0, i32 5
  store i64* null, i64** %dither_ramp5, align 8, !tbaa !59
  ret void
}

declare i32 @XFreeColors(%struct._XDisplay*, i64, i64*, i32, i64) #2

declare i32 @XAllocColor(%struct._XDisplay*, i64, %struct.XColor*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 2008}
!7 = !{!"gx_device_X_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !3, i64 1104, !4, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !8, i64 1736, !8, i64 1740, !20, i64 1744, !3, i64 1776, !8, i64 1784, !21, i64 1788, !10, i64 1808, !10, i64 1816, !10, i64 1824, !8, i64 1832, !8, i64 1836, !3, i64 1840, !10, i64 1848, !23, i64 1856, !3, i64 1992, !3, i64 2000, !3, i64 2008, !10, i64 2016, !10, i64 2024, !3, i64 2032, !10, i64 2040, !10, i64 2048, !8, i64 2056, !10, i64 2064, !25, i64 2072, !10, i64 2096, !10, i64 2104, !10, i64 2112, !27, i64 2120, !10, i64 2160, !10, i64 2168, !10, i64 2176, !30, i64 2184, !31, i64 2208, !8, i64 2264, !8, i64 2268, !10, i64 2272, !10, i64 2280, !10, i64 2288, !10, i64 2296, !10, i64 2304, !32, i64 2312, !10, i64 2808, !12, i64 2816, !3, i64 2824, !8, i64 2832, !8, i64 2836, !3, i64 2840, !26, i64 2848, !26, i64 2852, !4, i64 2856, !4, i64 2857, !4, i64 2858, !8, i64 2860, !8, i64 2864, !8, i64 2868, !38, i64 2872}
!8 = !{!"int", !4, i64 0}
!9 = !{!"rc_header_s", !10, i64 0, !3, i64 8, !3, i64 16}
!10 = !{!"long", !4, i64 0}
!11 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !4, i64 8, !12, i64 12, !4, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !4, i64 40, !4, i64 44, !4, i64 108, !4, i64 176, !3, i64 688, !4, i64 696, !10, i64 704, !8, i64 712}
!12 = !{!"short", !4, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !4, i64 4, !4, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !8, i64 32, !4, i64 36}
!17 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16}
!19 = !{!"gx_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !3, i64 272, !3, i64 280, !3, i64 288, !3, i64 296, !3, i64 304, !3, i64 312, !3, i64 320, !3, i64 328, !3, i64 336, !3, i64 344, !3, i64 352, !3, i64 360, !3, i64 368, !3, i64 376, !3, i64 384, !3, i64 392, !3, i64 400, !3, i64 408, !3, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488, !3, i64 496, !3, i64 504, !3, i64 512, !3, i64 520, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576}
!20 = !{!"gx_device_bbox_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!21 = !{!"gs_fixed_rect_s", !22, i64 0, !22, i64 8}
!22 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!23 = !{!"_XImage", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !3, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !3, i64 80, !24, i64 88}
!24 = !{!"funcs", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!25 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!26 = !{!"float", !4, i64 0}
!27 = !{!"", !28, i64 0, !10, i64 16, !10, i64 24, !8, i64 32}
!28 = !{!"gs_int_rect_s", !29, i64 0, !29, i64 8}
!29 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!30 = !{!"", !10, i64 0, !3, i64 8, !8, i64 16, !8, i64 20}
!31 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !10, i64 40, !10, i64 48}
!32 = !{!"x11_cman_s", !8, i64 0, !33, i64 4, !33, i64 10, !34, i64 16, !36, i64 440, !3, i64 456, !37, i64 464}
!33 = !{!"cmm_", !12, i64 0, !12, i64 2, !12, i64 4}
!34 = !{!"", !3, i64 0, !8, i64 8, !35, i64 12, !35, i64 148, !35, i64 284, !8, i64 420}
!35 = !{!"x11_cmap_values_s", !8, i64 0, !4, i64 4, !8, i64 132}
!36 = !{!"cmc_", !8, i64 0, !3, i64 8}
!37 = !{!"cmd_", !8, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!38 = !{!"", !8, i64 0, !8, i64 4, !29, i64 8, !8, i64 16, !4, i64 24, !4, i64 312}
!39 = !{!40, !8, i64 24}
!40 = !{!"", !3, i64 0, !10, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !8, i64 56, !8, i64 60}
!41 = !{!40, !8, i64 56}
!42 = !{!4, !4, i64 0}
!43 = !{!7, !8, i64 2056}
!44 = !{!7, !3, i64 1992}
!45 = !{!10, !10, i64 0}
!46 = !{!7, !10, i64 2024}
!47 = !{!7, !10, i64 2160}
!48 = !{!7, !3, i64 24}
!49 = !{!7, !3, i64 2840}
!50 = !{!40, !8, i64 60}
!51 = !{!7, !12, i64 2320}
!52 = !{!7, !12, i64 2318}
!53 = !{!7, !12, i64 2316}
!54 = !{i64 0, i64 2, !55, i64 2, i64 2, !55, i64 4, i64 2, !55}
!55 = !{!12, !12, i64 0}
!56 = !{!7, !8, i64 2312}
!57 = !{!7, !3, i64 2328}
!58 = !{!7, !8, i64 2748}
!59 = !{!7, !3, i64 2768}
!60 = !{!7, !3, i64 2784}
!61 = !{!7, !8, i64 2776}
!62 = !{!7, !8, i64 2796}
!63 = !{!40, !8, i64 20}
!64 = !{!7, !12, i64 108}
!65 = !{!8, !8, i64 0}
!66 = !{!67, !3, i64 200}
!67 = !{!"gs_memory_s", !3, i64 0, !68, i64 8, !3, i64 192, !3, i64 200, !3, i64 208}
!68 = !{!"gs_memory_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176}
!69 = !{!67, !3, i64 88}
!70 = !{!7, !3, i64 2760}
!71 = !{!72, !8, i64 8}
!72 = !{!"x11_rgb_s", !4, i64 0, !8, i64 8}
!73 = !{!7, !8, i64 2752}
!74 = !{!7, !8, i64 100}
!75 = !{!7, !8, i64 116}
!76 = !{!7, !8, i64 112}
!77 = !{!40, !3, i64 0}
!78 = !{!7, !3, i64 2000}
!79 = !{!80, !3, i64 64}
!80 = !{!"", !3, i64 0, !3, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 48, !8, i64 56, !3, i64 64, !3, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !10, i64 120}
!81 = !{!82, !10, i64 8}
!82 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!83 = !{!82, !10, i64 24}
!84 = !{!82, !10, i64 40}
!85 = !{!7, !8, i64 124}
!86 = !{!7, !8, i64 120}
!87 = !{!7, !8, i64 2836}
!88 = !{!7, !4, i64 110}
!89 = !{!7, !8, i64 2832}
!90 = !{!7, !8, i64 2340}
!91 = !{!7, !12, i64 2322}
!92 = !{!7, !8, i64 2476}
!93 = !{!7, !12, i64 2324}
!94 = !{!7, !8, i64 2612}
!95 = !{!7, !12, i64 2326}
!96 = !{!80, !10, i64 16}
!97 = !{!7, !10, i64 2016}
!98 = !{!82, !10, i64 0}
!99 = !{!40, !10, i64 32}
!100 = !{!82, !10, i64 16}
!101 = !{!40, !10, i64 40}
!102 = !{!82, !10, i64 32}
!103 = !{!40, !10, i64 48}
!104 = !{!82, !10, i64 48}
!105 = !{!7, !8, i64 2336}
!106 = !{!7, !10, i64 2304}
!107 = !{!7, !10, i64 2296}
!108 = !{!109, !12, i64 8}
!109 = !{!"", !10, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !4, i64 14, !4, i64 15}
!110 = !{!109, !12, i64 10}
!111 = !{!109, !12, i64 12}
!112 = !{!109, !10, i64 0}
!113 = !{!7, !8, i64 2792}
!114 = !{!7, !8, i64 2800}
!115 = !{!67, !3, i64 24}
!116 = !{!117, !3, i64 16}
!117 = !{!"x11_color_s", !109, i64 0, !3, i64 16}
!118 = !{!117, !4, i64 15}
!119 = !{!7, !8, i64 2472}
!120 = !{!7, !8, i64 2608}
!121 = !{!7, !8, i64 2744}
!122 = !{!82, !10, i64 56}
!123 = !{!117, !12, i64 8}
!124 = !{!117, !12, i64 10}
!125 = !{!117, !12, i64 12}
!126 = !{!117, !10, i64 0}
!127 = !{!35, !8, i64 0}
!128 = !{!35, !8, i64 132}
