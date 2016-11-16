; ModuleID = './gdevxini.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_ = type { i8, i32 (%struct._XDisplay*, %struct.XErrorEvent*)*, i32 (%struct._XDisplay*, %struct.XErrorEvent*)* }
%struct._XDisplay = type opaque
%struct.XErrorEvent = type { i32, %struct._XDisplay*, i64, i64, i8, i8, i8 }
%struct._WidgetClassRec = type opaque
%struct._XtResource = type { i8*, i8*, i8*, i32, i32, i8*, i8* }
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
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.XSizeHints = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, %struct.anon.5, i32, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%union._XEvent = type { [24 x i64] }
%struct._XtAppStruct = type opaque
%struct._WidgetRec = type opaque
%struct.XWindowAttributes = type { i32, i32, i32, i32, i32, i32, %struct.Visual*, i64, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, %struct.Screen* }
%struct.XWMHints = type { i64, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.XSetWindowAttributes = type { i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64 }
%struct.anon.7 = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct._XrmHashBucketRec = type opaque
%struct.XrmOptionDescRec = type { i8*, i8*, i32, i8* }
%struct.Arg = type { i8*, i64 }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@x_error_handler = internal global %struct.xv_ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot open X display `%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"GHOSTVIEW\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Cannot get Window ID from ghostview.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%ld %d %d %d %d %d %f %f %d %d %d %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Cannot get ghostview property.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Both destination and backing pixmap specified.\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Cannot get XVisualInfo.\0A\00", align 1
@gdev_x_fallback_resources = external global [0 x i8*], align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"ghostscript\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Ghostscript\00", align 1
@applicationShellWidgetClass = external global %struct._WidgetClassRec*, align 8
@gdev_x_resources = external global [0 x %struct._XtResource], align 8
@gdev_x_resource_count = external constant i32, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"%dx%d+%d+%d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@gs_x11_device = external constant %struct.gx_device_X_s, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"WindowID\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c".IsPageDevice\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"MaxTempPixmap\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"MaxTempImage\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"Requested pagesize %d x %d not supported by %s device\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"_NET_WORKAREA\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"_WIN_WORKAREA\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"memory device\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@gs_bbox_device = external constant %struct.gx_device_bbox_s, align 8
@gdev_x_box_procs = external constant %struct.gx_device_bbox_procs_s, align 8

; Function Attrs: nounwind uwtable
define i32 @x_catch_free_colors(%struct._XDisplay* %dpy, %struct.XErrorEvent* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %dpy.addr = alloca %struct._XDisplay*, align 8
  %err.addr = alloca %struct.XErrorEvent*, align 8
  store %struct._XDisplay* %dpy, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  store %struct.XErrorEvent* %err, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %0 = load %struct.XErrorEvent*, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %request_code = getelementptr inbounds %struct.XErrorEvent, %struct.XErrorEvent* %0, i32 0, i32 5
  %1 = load i8, i8* %request_code, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 88
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32 (%struct._XDisplay*, %struct.XErrorEvent*)*, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 1), align 8, !tbaa !10
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %4 = load %struct.XErrorEvent*, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %call = call i32 %2(%struct._XDisplay* %3, %struct.XErrorEvent* %4) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gdev_x_open(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %sizehints = alloca %struct.XSizeHints, align 8
  %window_id = alloca i8*, align 8
  %event = alloca %union._XEvent, align 8
  %xvinfo = alloca %struct.XVisualInfo, align 8
  %nitems = alloca i32, align 4
  %app_con = alloca %struct._XtAppStruct*, align 8
  %toplevel = alloca %struct._WidgetRec*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %xc = alloca %struct.XColor, align 8
  %zero = alloca i32, align 4
  %xid_height = alloca i32, align 4
  %xid_width = alloca i32, align 4
  %code = alloca i32, align 4
  %dispname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %attrib = alloca %struct.XWindowAttributes, align 8
  %attrib36 = alloca %struct.XWindowAttributes, align 8
  %type = alloca i64, align 8
  %format = alloca i32, align 4
  %nitems37 = alloca i64, align 8
  %bytes_after = alloca i64, align 8
  %buf = alloca i8*, align 8
  %ghostview_atom = alloca i64, align 8
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %left_margin = alloca i32, align 4
  %bottom_margin = alloca i32, align 4
  %right_margin = alloca i32, align 4
  %top_margin = alloca i32, align 4
  %page_orientation = alloca i32, align 4
  %xppp = alloca float, align 4
  %yppp = alloca float, align 4
  %root = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width96 = alloca i32, align 4
  %height97 = alloca i32, align 4
  %border_width = alloca i32, align 4
  %depth = alloca i32, align 4
  %scr228 = alloca %struct.Screen*, align 8
  %scrno = alloca i32, align 4
  %wm_hints = alloca %struct.XWMHints, align 8
  %xswa = alloca %struct.XSetWindowAttributes, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %xsize = alloca float, align 4
  %ysize = alloca float, align 4
  %workarea_width = alloca i32, align 4
  %workarea_height = alloca i32, align 4
  %dpi = alloca float, align 4
  %xdpi = alloca float, align 4
  %ydpi = alloca float, align 4
  %gstr = alloca [40 x i8], align 16
  %bitmask = alloca i32, align 4
  %attributes = alloca %struct.XSetWindowAttributes, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.XSizeHints* %sizehints to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  %1 = bitcast i8** %window_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.start(i64 192, i8* %2) #1
  %3 = bitcast %struct.XVisualInfo* %xvinfo to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast i32* %nitems to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._XtAppStruct** %app_con to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._WidgetRec** %toplevel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct._XDisplay** %dpy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %zero, align 4, !tbaa !12
  %10 = bitcast i32* %xid_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %xid_height, align 4, !tbaa !12
  %11 = bitcast i32* %xid_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %xid_width, align 4, !tbaa !12
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %call = call %struct._XDisplay* @XOpenDisplay(i8* null) #4
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 58
  store %struct._XDisplay* %call, %struct._XDisplay** %dpy1, align 8, !tbaa !13
  %tobool = icmp ne %struct._XDisplay* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = bitcast i8** %dispname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call2, i8** %dispname, align 8, !tbaa !2
  %15 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !44
  %call3 = call i8* @gs_program_name() #4
  %call4 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %16, i8* %call3, i64 %call4) #4
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !44
  %19 = load i8*, i8** %dispname, align 8, !tbaa !2
  %cmp = icmp eq i8* %19, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %20 = load i8*, i8** %dispname, align 8, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %cond.true ], [ %20, %cond.false ]
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* %cond) #4
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %21 = bitcast i8** %dispname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %cleanup.602

if.end:                                           ; preds = %entry
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 73
  store i64 0, i64* %dest, align 8, !tbaa !45
  %call7 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call7, i8** %window_id, align 8, !tbaa !2
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end
  %23 = load i8*, i8** %window_id, align 8, !tbaa !2
  %24 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %24, i32 0, i32 62
  %25 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %25, i32 0, i32 73
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64* %win, i64* %dest10) #5
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 66
  store i32 %call11, i32* %ghostview, align 4, !tbaa !46
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.19, label %if.then.13

if.then.13:                                       ; preds = %if.then.9
  %27 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory14 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !44
  %call15 = call i8* @gs_program_name() #4
  %call16 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %28, i8* %call15, i64 %call16) #4
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory17 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !44
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.602

if.end.19:                                        ; preds = %if.then.9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %31 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %pwin = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %31, i32 0, i32 64
  %32 = load i64, i64* %pwin, align 8, !tbaa !47
  %cmp21 = icmp ne i64 %32, 0
  br i1 %cmp21, label %if.then.22, label %if.else.32

if.then.22:                                       ; preds = %if.end.20
  %33 = bitcast %struct.XWindowAttributes* %attrib to i8*
  call void @llvm.lifetime.start(i64 136, i8* %33) #1
  %34 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %pwin23 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %34, i32 0, i32 64
  %35 = load i64, i64* %pwin23, align 8, !tbaa !47
  %36 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win24 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %36, i32 0, i32 62
  store i64 %35, i64* %win24, align 8, !tbaa !48
  %37 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy25 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %37, i32 0, i32 58
  %38 = load %struct._XDisplay*, %struct._XDisplay** %dpy25, align 8, !tbaa !13
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %39, i32 0, i32 62
  %40 = load i64, i64* %win26, align 8, !tbaa !48
  %call27 = call i32 @XGetWindowAttributes(%struct._XDisplay* %38, i64 %40, %struct.XWindowAttributes* %attrib) #4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.22
  %screen = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib, i32 0, i32 22
  %41 = load %struct.Screen*, %struct.Screen** %screen, align 8, !tbaa !49
  %42 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %42, i32 0, i32 59
  store %struct.Screen* %41, %struct.Screen** %scr, align 8, !tbaa !51
  %visual = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib, i32 0, i32 6
  %43 = load %struct.Visual*, %struct.Visual** %visual, align 8, !tbaa !52
  %visual30 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  store %struct.Visual* %43, %struct.Visual** %visual30, align 8, !tbaa !53
  %colormap = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib, i32 0, i32 15
  %44 = load i64, i64* %colormap, align 8, !tbaa !55
  %45 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %45, i32 0, i32 61
  store i64 %44, i64* %cmap, align 8, !tbaa !56
  %width = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib, i32 0, i32 2
  %46 = load i32, i32* %width, align 4, !tbaa !57
  store i32 %46, i32* %xid_width, align 4, !tbaa !12
  %height = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib, i32 0, i32 3
  %47 = load i32, i32* %height, align 4, !tbaa !58
  store i32 %47, i32* %xid_height, align 4, !tbaa !12
  br label %if.end.31

if.else:                                          ; preds = %if.then.22
  store i32 0, i32* %xid_height, align 4, !tbaa !12
  store i32 0, i32* %xid_width, align 4, !tbaa !12
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  %48 = bitcast %struct.XWindowAttributes* %attrib to i8*
  call void @llvm.lifetime.end(i64 136, i8* %48) #1
  br label %if.end.272

if.else.32:                                       ; preds = %if.end.20
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview33 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %49, i32 0, i32 66
  %50 = load i32, i32* %ghostview33, align 4, !tbaa !46
  %tobool34 = icmp ne i32 %50, 0
  br i1 %tobool34, label %if.then.35, label %if.else.227

if.then.35:                                       ; preds = %if.else.32
  %51 = bitcast %struct.XWindowAttributes* %attrib36 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %51) #1
  %52 = bitcast i64* %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i64* %nitems37 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast i64* %bytes_after to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast i64* %ghostview_atom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy38 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %58, i32 0, i32 58
  %59 = load %struct._XDisplay*, %struct._XDisplay** %dpy38, align 8, !tbaa !13
  %call39 = call i64 @XInternAtom(%struct._XDisplay* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0) #4
  store i64 %call39, i64* %ghostview_atom, align 8, !tbaa !59
  %60 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy40 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %60, i32 0, i32 58
  %61 = load %struct._XDisplay*, %struct._XDisplay** %dpy40, align 8, !tbaa !13
  %62 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win41 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %62, i32 0, i32 62
  %63 = load i64, i64* %win41, align 8, !tbaa !48
  %call42 = call i32 @XGetWindowAttributes(%struct._XDisplay* %61, i64 %63, %struct.XWindowAttributes* %attrib36) #4
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.then.35
  %screen45 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib36, i32 0, i32 22
  %64 = load %struct.Screen*, %struct.Screen** %screen45, align 8, !tbaa !49
  %65 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr46 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %65, i32 0, i32 59
  store %struct.Screen* %64, %struct.Screen** %scr46, align 8, !tbaa !51
  %visual47 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib36, i32 0, i32 6
  %66 = load %struct.Visual*, %struct.Visual** %visual47, align 8, !tbaa !52
  %visual48 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  store %struct.Visual* %66, %struct.Visual** %visual48, align 8, !tbaa !53
  %colormap49 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib36, i32 0, i32 15
  %67 = load i64, i64* %colormap49, align 8, !tbaa !55
  %68 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap50 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %68, i32 0, i32 61
  store i64 %67, i64* %cmap50, align 8, !tbaa !56
  %width51 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib36, i32 0, i32 2
  %69 = load i32, i32* %width51, align 4, !tbaa !57
  %70 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width52 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %70, i32 0, i32 13
  store i32 %69, i32* %width52, align 4, !tbaa !60
  %height53 = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %attrib36, i32 0, i32 3
  %71 = load i32, i32* %height53, align 4, !tbaa !58
  %72 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height54 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %72, i32 0, i32 14
  store i32 %71, i32* %height54, align 4, !tbaa !61
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.44, %if.then.35
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy56 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 58
  %74 = load %struct._XDisplay*, %struct._XDisplay** %dpy56, align 8, !tbaa !13
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win57 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 62
  %76 = load i64, i64* %win57, align 8, !tbaa !48
  %77 = load i64, i64* %ghostview_atom, align 8, !tbaa !59
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest58 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 73
  %79 = load i64, i64* %dest58, align 8, !tbaa !45
  %cmp59 = icmp ne i64 %79, 0
  %conv = zext i1 %cmp59 to i32
  %call60 = call i32 @XGetWindowProperty(%struct._XDisplay* %74, i64 %76, i64 %77, i64 0, i64 256, i32 %conv, i64 31, i64* %type, i32* %format, i64* %nitems37, i64* %bytes_after, i8** %buf) #4
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true, label %if.else.206

land.lhs.true:                                    ; preds = %if.end.55
  %80 = load i64, i64* %type, align 8, !tbaa !59
  %cmp63 = icmp eq i64 %80, 31
  br i1 %cmp63, label %if.then.65, label %if.else.206

if.then.65:                                       ; preds = %land.lhs.true
  %81 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i32* %left_margin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  store i32 0, i32* %left_margin, align 4, !tbaa !12
  %86 = bitcast i32* %bottom_margin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 0, i32* %bottom_margin, align 4, !tbaa !12
  %87 = bitcast i32* %right_margin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 0, i32* %right_margin, align 4, !tbaa !12
  %88 = bitcast i32* %top_margin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 0, i32* %top_margin, align 4, !tbaa !12
  %89 = bitcast i32* %page_orientation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast float* %xppp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = bitcast float* %yppp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load i8*, i8** %buf, align 8, !tbaa !2
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 65
  %94 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %94, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %95 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %95, i32 0, i32 22
  %arrayidx67 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution66, i32 0, i64 1
  %call68 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i64* %bpixmap, i32* %page_orientation, i32* %llx, i32* %lly, i32* %urx, i32* %ury, float* %arrayidx, float* %arrayidx67, i32* %left_margin, i32* %bottom_margin, i32* %right_margin, i32* %top_margin) #5
  %conv69 = sext i32 %call68 to i64
  store i64 %conv69, i64* %nitems37, align 8, !tbaa !59
  %96 = load i64, i64* %nitems37, align 8, !tbaa !59
  %cmp70 = icmp eq i64 %96, 8
  br i1 %cmp70, label %if.end.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %97 = load i64, i64* %nitems37, align 8, !tbaa !59
  %cmp72 = icmp eq i64 %97, 12
  br i1 %cmp72, label %if.end.80, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory75 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !44
  %call76 = call i8* @gs_program_name() #4
  %call77 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %99, i8* %call76, i64 %call77) #4
  %100 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory78 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !44
  %call79 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %lor.lhs.false, %if.then.65
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest81 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 73
  %103 = load i64, i64* %dest81, align 8, !tbaa !45
  %tobool82 = icmp ne i64 %103, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.92

land.lhs.true.83:                                 ; preds = %if.end.80
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %104, i32 0, i32 65
  %105 = load i64, i64* %bpixmap84, align 8, !tbaa !62
  %tobool85 = icmp ne i64 %105, 0
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %land.lhs.true.83
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory87 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory87, align 8, !tbaa !44
  %call88 = call i8* @gs_program_name() #4
  %call89 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %107, i8* %call88, i64 %call89) #4
  %108 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory90 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %108, i32 0, i32 3
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory90, align 8, !tbaa !44
  %call91 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %109, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0)) #4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %land.lhs.true.83, %if.end.80
  %110 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest93 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %110, i32 0, i32 73
  %111 = load i64, i64* %dest93, align 8, !tbaa !45
  %tobool94 = icmp ne i64 %111, 0
  br i1 %tobool94, label %if.then.95, label %if.end.106

if.then.95:                                       ; preds = %if.end.92
  %112 = bitcast i64* %root to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = bitcast i32* %width96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = bitcast i32* %height97 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = bitcast i32* %border_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy98 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %119, i32 0, i32 58
  %120 = load %struct._XDisplay*, %struct._XDisplay** %dpy98, align 8, !tbaa !13
  %121 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest99 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %121, i32 0, i32 73
  %122 = load i64, i64* %dest99, align 8, !tbaa !45
  %call100 = call i32 @XGetGeometry(%struct._XDisplay* %120, i64 %122, i64* %root, i32* %x, i32* %y, i32* %width96, i32* %height97, i32* %border_width, i32* %depth) #4
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.then.95
  %123 = load i32, i32* %width96, align 4, !tbaa !12
  %124 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width103 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %124, i32 0, i32 13
  store i32 %123, i32* %width103, align 4, !tbaa !60
  %125 = load i32, i32* %height97, align 4, !tbaa !12
  %126 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %126, i32 0, i32 14
  store i32 %125, i32* %height104, align 4, !tbaa !61
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.then.95
  %127 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %border_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %height97 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %width96 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i64* %root to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.92
  %134 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %134, i32 0, i32 22
  %arrayidx108 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution107, i32 0, i64 0
  %135 = load float, float* %arrayidx108, align 4, !tbaa !63
  %conv109 = fpext float %135 to double
  %div = fdiv double %conv109, 7.200000e+01
  %conv110 = fptrunc double %div to float
  store float %conv110, float* %xppp, align 4, !tbaa !63
  %136 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution111 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %136, i32 0, i32 22
  %arrayidx112 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution111, i32 0, i64 1
  %137 = load float, float* %arrayidx112, align 4, !tbaa !63
  %conv113 = fpext float %137 to double
  %div114 = fdiv double %conv113, 7.200000e+01
  %conv115 = fptrunc double %div114 to float
  store float %conv115, float* %yppp, align 4, !tbaa !63
  %138 = load i32, i32* %page_orientation, align 4, !tbaa !12
  switch i32 %138, label %sw.epilog [
    i32 0, label %sw.bb
    i32 90, label %sw.bb.125
    i32 180, label %sw.bb.144
    i32 270, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %if.end.106
  %139 = load float, float* %xppp, align 4, !tbaa !63
  %140 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %140, i32 0, i32 68
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 0
  store float %139, float* %xx, align 4, !tbaa !64
  %141 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix116 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %141, i32 0, i32 68
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix116, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !65
  %142 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix117 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %142, i32 0, i32 68
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix117, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !66
  %143 = load float, float* %yppp, align 4, !tbaa !63
  %sub = fsub float -0.000000e+00, %143
  %144 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix118 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %144, i32 0, i32 68
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix118, i32 0, i32 3
  store float %sub, float* %yy, align 4, !tbaa !67
  %145 = load i32, i32* %llx, align 4, !tbaa !12
  %sub119 = sub nsw i32 0, %145
  %conv120 = sitofp i32 %sub119 to float
  %146 = load float, float* %xppp, align 4, !tbaa !63
  %mul = fmul float %conv120, %146
  %147 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix121 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %147, i32 0, i32 68
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix121, i32 0, i32 4
  store float %mul, float* %tx, align 4, !tbaa !68
  %148 = load i32, i32* %ury, align 4, !tbaa !12
  %conv122 = sitofp i32 %148 to float
  %149 = load float, float* %yppp, align 4, !tbaa !63
  %mul123 = fmul float %conv122, %149
  %150 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix124 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %150, i32 0, i32 68
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix124, i32 0, i32 5
  store float %mul123, float* %ty, align 4, !tbaa !69
  br label %sw.epilog

sw.bb.125:                                        ; preds = %if.end.106
  %151 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix126 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %151, i32 0, i32 68
  %xx127 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix126, i32 0, i32 0
  store float 0.000000e+00, float* %xx127, align 4, !tbaa !64
  %152 = load float, float* %yppp, align 4, !tbaa !63
  %153 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix128 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %153, i32 0, i32 68
  %xy129 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix128, i32 0, i32 1
  store float %152, float* %xy129, align 4, !tbaa !65
  %154 = load float, float* %xppp, align 4, !tbaa !63
  %155 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %155, i32 0, i32 68
  %yx131 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix130, i32 0, i32 2
  store float %154, float* %yx131, align 4, !tbaa !66
  %156 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix132 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %156, i32 0, i32 68
  %yy133 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix132, i32 0, i32 3
  store float 0.000000e+00, float* %yy133, align 4, !tbaa !67
  %157 = load i32, i32* %lly, align 4, !tbaa !12
  %sub134 = sub nsw i32 0, %157
  %conv135 = sitofp i32 %sub134 to float
  %158 = load float, float* %xppp, align 4, !tbaa !63
  %mul136 = fmul float %conv135, %158
  %159 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix137 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %159, i32 0, i32 68
  %tx138 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix137, i32 0, i32 4
  store float %mul136, float* %tx138, align 4, !tbaa !68
  %160 = load i32, i32* %llx, align 4, !tbaa !12
  %sub139 = sub nsw i32 0, %160
  %conv140 = sitofp i32 %sub139 to float
  %161 = load float, float* %yppp, align 4, !tbaa !63
  %mul141 = fmul float %conv140, %161
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix142 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 68
  %ty143 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix142, i32 0, i32 5
  store float %mul141, float* %ty143, align 4, !tbaa !69
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.106
  %163 = load float, float* %xppp, align 4, !tbaa !63
  %sub145 = fsub float -0.000000e+00, %163
  %164 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix146 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %164, i32 0, i32 68
  %xx147 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix146, i32 0, i32 0
  store float %sub145, float* %xx147, align 4, !tbaa !64
  %165 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix148 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %165, i32 0, i32 68
  %xy149 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix148, i32 0, i32 1
  store float 0.000000e+00, float* %xy149, align 4, !tbaa !65
  %166 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix150 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %166, i32 0, i32 68
  %yx151 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix150, i32 0, i32 2
  store float 0.000000e+00, float* %yx151, align 4, !tbaa !66
  %167 = load float, float* %yppp, align 4, !tbaa !63
  %168 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix152 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %168, i32 0, i32 68
  %yy153 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix152, i32 0, i32 3
  store float %167, float* %yy153, align 4, !tbaa !67
  %169 = load i32, i32* %urx, align 4, !tbaa !12
  %conv154 = sitofp i32 %169 to float
  %170 = load float, float* %xppp, align 4, !tbaa !63
  %mul155 = fmul float %conv154, %170
  %171 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix156 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %171, i32 0, i32 68
  %tx157 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix156, i32 0, i32 4
  store float %mul155, float* %tx157, align 4, !tbaa !68
  %172 = load i32, i32* %lly, align 4, !tbaa !12
  %sub158 = sub nsw i32 0, %172
  %conv159 = sitofp i32 %sub158 to float
  %173 = load float, float* %yppp, align 4, !tbaa !63
  %mul160 = fmul float %conv159, %173
  %174 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix161 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %174, i32 0, i32 68
  %ty162 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix161, i32 0, i32 5
  store float %mul160, float* %ty162, align 4, !tbaa !69
  br label %sw.epilog

sw.bb.163:                                        ; preds = %if.end.106
  %175 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix164 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %175, i32 0, i32 68
  %xx165 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix164, i32 0, i32 0
  store float 0.000000e+00, float* %xx165, align 4, !tbaa !64
  %176 = load float, float* %yppp, align 4, !tbaa !63
  %sub166 = fsub float -0.000000e+00, %176
  %177 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix167 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %177, i32 0, i32 68
  %xy168 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix167, i32 0, i32 1
  store float %sub166, float* %xy168, align 4, !tbaa !65
  %178 = load float, float* %xppp, align 4, !tbaa !63
  %sub169 = fsub float -0.000000e+00, %178
  %179 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix170 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %179, i32 0, i32 68
  %yx171 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix170, i32 0, i32 2
  store float %sub169, float* %yx171, align 4, !tbaa !66
  %180 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix172 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %180, i32 0, i32 68
  %yy173 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix172, i32 0, i32 3
  store float 0.000000e+00, float* %yy173, align 4, !tbaa !67
  %181 = load i32, i32* %ury, align 4, !tbaa !12
  %conv174 = sitofp i32 %181 to float
  %182 = load float, float* %xppp, align 4, !tbaa !63
  %mul175 = fmul float %conv174, %182
  %183 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix176 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %183, i32 0, i32 68
  %tx177 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix176, i32 0, i32 4
  store float %mul175, float* %tx177, align 4, !tbaa !68
  %184 = load i32, i32* %urx, align 4, !tbaa !12
  %conv178 = sitofp i32 %184 to float
  %185 = load float, float* %yppp, align 4, !tbaa !63
  %mul179 = fmul float %conv178, %185
  %186 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix180 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %186, i32 0, i32 68
  %ty181 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix180, i32 0, i32 5
  store float %mul179, float* %ty181, align 4, !tbaa !69
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.106, %sw.bb.163, %sw.bb.144, %sw.bb.125, %sw.bb
  %187 = load i32, i32* %llx, align 4, !tbaa !12
  %188 = load i32, i32* %left_margin, align 4, !tbaa !12
  %sub182 = sub nsw i32 %187, %188
  %conv183 = sitofp i32 %sub182 to float
  %189 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ImagingBBox = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %189, i32 0, i32 20
  %arrayidx184 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i64 0
  store float %conv183, float* %arrayidx184, align 4, !tbaa !63
  %190 = load i32, i32* %lly, align 4, !tbaa !12
  %191 = load i32, i32* %bottom_margin, align 4, !tbaa !12
  %sub185 = sub nsw i32 %190, %191
  %conv186 = sitofp i32 %sub185 to float
  %192 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ImagingBBox187 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %192, i32 0, i32 20
  %arrayidx188 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox187, i32 0, i64 1
  store float %conv186, float* %arrayidx188, align 4, !tbaa !63
  %193 = load i32, i32* %urx, align 4, !tbaa !12
  %194 = load i32, i32* %right_margin, align 4, !tbaa !12
  %add = add nsw i32 %193, %194
  %conv189 = sitofp i32 %add to float
  %195 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ImagingBBox190 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %195, i32 0, i32 20
  %arrayidx191 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox190, i32 0, i64 2
  store float %conv189, float* %arrayidx191, align 4, !tbaa !63
  %196 = load i32, i32* %ury, align 4, !tbaa !12
  %197 = load i32, i32* %top_margin, align 4, !tbaa !12
  %add192 = add nsw i32 %196, %197
  %conv193 = sitofp i32 %add192 to float
  %198 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ImagingBBox194 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %198, i32 0, i32 20
  %arrayidx195 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox194, i32 0, i64 3
  store float %conv193, float* %arrayidx195, align 4, !tbaa !63
  %199 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %199, i32 0, i32 21
  store i32 1, i32* %ImagingBBox_set, align 4, !tbaa !70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.86, %if.then.74
  %200 = bitcast float* %yppp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast float* %xppp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %page_orientation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %top_margin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %right_margin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %bottom_margin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %left_margin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %ury to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %urx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %lly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %llx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.218 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.217

if.else.206:                                      ; preds = %land.lhs.true, %if.end.55
  %211 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %pwin207 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %211, i32 0, i32 64
  %212 = load i64, i64* %pwin207, align 8, !tbaa !47
  %cmp208 = icmp eq i64 %212, 0
  br i1 %cmp208, label %if.then.210, label %if.end.216

if.then.210:                                      ; preds = %if.else.206
  %213 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory211 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %213, i32 0, i32 3
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory211, align 8, !tbaa !44
  %call212 = call i8* @gs_program_name() #4
  %call213 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %214, i8* %call212, i64 %call213) #4
  %215 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory214 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %215, i32 0, i32 3
  %216 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory214, align 8, !tbaa !44
  %call215 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.216:                                       ; preds = %if.else.206
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %if.end.217, %if.then.210, %cleanup
  %217 = bitcast i64* %ghostview_atom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i64* %bytes_after to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i64* %nitems37 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i64* %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast %struct.XWindowAttributes* %attrib36 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %223) #1
  %cleanup.dest.225 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.225, label %cleanup.602 [
    i32 0, label %cleanup.cont.226
  ]

cleanup.cont.226:                                 ; preds = %cleanup.218
  br label %if.end.271

if.else.227:                                      ; preds = %if.else.32
  %224 = bitcast %struct.Screen** %scr228 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  %225 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy229 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %225, i32 0, i32 58
  %226 = load %struct._XDisplay*, %struct._XDisplay** %dpy229, align 8, !tbaa !13
  %227 = bitcast %struct._XDisplay* %226 to %struct.anon.7*
  %default_screen = getelementptr inbounds %struct.anon.7, %struct.anon.7* %227, i32 0, i32 33
  %228 = load i32, i32* %default_screen, align 4, !tbaa !71
  %idxprom = sext i32 %228 to i64
  %229 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy230 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %229, i32 0, i32 58
  %230 = load %struct._XDisplay*, %struct._XDisplay** %dpy230, align 8, !tbaa !13
  %231 = bitcast %struct._XDisplay* %230 to %struct.anon.7*
  %screens = getelementptr inbounds %struct.anon.7, %struct.anon.7* %231, i32 0, i32 35
  %232 = load %struct.Screen*, %struct.Screen** %screens, align 8, !tbaa !73
  %arrayidx231 = getelementptr inbounds %struct.Screen, %struct.Screen* %232, i64 %idxprom
  store %struct.Screen* %arrayidx231, %struct.Screen** %scr228, align 8, !tbaa !2
  %233 = load %struct.Screen*, %struct.Screen** %scr228, align 8, !tbaa !2
  %234 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr232 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %234, i32 0, i32 59
  store %struct.Screen* %233, %struct.Screen** %scr232, align 8, !tbaa !51
  %235 = load %struct.Screen*, %struct.Screen** %scr228, align 8, !tbaa !2
  %root_visual = getelementptr inbounds %struct.Screen, %struct.Screen* %235, i32 0, i32 10
  %236 = load %struct.Visual*, %struct.Visual** %root_visual, align 8, !tbaa !74
  %visual233 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  store %struct.Visual* %236, %struct.Visual** %visual233, align 8, !tbaa !53
  %237 = load %struct.Screen*, %struct.Screen** %scr228, align 8, !tbaa !2
  %cmap234 = getelementptr inbounds %struct.Screen, %struct.Screen* %237, i32 0, i32 12
  %238 = load i64, i64* %cmap234, align 8, !tbaa !76
  %239 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap235 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %239, i32 0, i32 61
  store i64 %238, i64* %cmap235, align 8, !tbaa !56
  %visual236 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  %240 = load %struct.Visual*, %struct.Visual** %visual236, align 8, !tbaa !53
  %class = getelementptr inbounds %struct.Visual, %struct.Visual* %240, i32 0, i32 2
  %241 = load i32, i32* %class, align 4, !tbaa !77
  %cmp237 = icmp ne i32 %241, 4
  br i1 %cmp237, label %if.then.239, label %if.end.270

if.then.239:                                      ; preds = %if.else.227
  %242 = bitcast i32* %scrno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy240 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %243, i32 0, i32 58
  %244 = load %struct._XDisplay*, %struct._XDisplay** %dpy240, align 8, !tbaa !13
  %245 = bitcast %struct._XDisplay* %244 to %struct.anon.7*
  %default_screen241 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %245, i32 0, i32 33
  %246 = load i32, i32* %default_screen241, align 4, !tbaa !71
  store i32 %246, i32* %scrno, align 4, !tbaa !12
  %247 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy242 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %247, i32 0, i32 58
  %248 = load %struct._XDisplay*, %struct._XDisplay** %dpy242, align 8, !tbaa !13
  %249 = load i32, i32* %scrno, align 4, !tbaa !12
  %call243 = call i32 @XMatchVisualInfo(%struct._XDisplay* %248, i32 %249, i32 24, i32 4, %struct.XVisualInfo* %xvinfo) #4
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.then.257, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %if.then.239
  %250 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy246 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %250, i32 0, i32 58
  %251 = load %struct._XDisplay*, %struct._XDisplay** %dpy246, align 8, !tbaa !13
  %252 = load i32, i32* %scrno, align 4, !tbaa !12
  %call247 = call i32 @XMatchVisualInfo(%struct._XDisplay* %251, i32 %252, i32 32, i32 4, %struct.XVisualInfo* %xvinfo) #4
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.257, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %lor.lhs.false.245
  %253 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy250 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %253, i32 0, i32 58
  %254 = load %struct._XDisplay*, %struct._XDisplay** %dpy250, align 8, !tbaa !13
  %255 = load i32, i32* %scrno, align 4, !tbaa !12
  %call251 = call i32 @XMatchVisualInfo(%struct._XDisplay* %254, i32 %255, i32 16, i32 4, %struct.XVisualInfo* %xvinfo) #4
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.257, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %lor.lhs.false.249
  %256 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy254 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %256, i32 0, i32 58
  %257 = load %struct._XDisplay*, %struct._XDisplay** %dpy254, align 8, !tbaa !13
  %258 = load i32, i32* %scrno, align 4, !tbaa !12
  %call255 = call i32 @XMatchVisualInfo(%struct._XDisplay* %257, i32 %258, i32 15, i32 4, %struct.XVisualInfo* %xvinfo) #4
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.then.257, label %if.end.269

if.then.257:                                      ; preds = %lor.lhs.false.253, %lor.lhs.false.249, %lor.lhs.false.245, %if.then.239
  %259 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy258 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %259, i32 0, i32 58
  %260 = load %struct._XDisplay*, %struct._XDisplay** %dpy258, align 8, !tbaa !13
  %261 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy259 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %261, i32 0, i32 58
  %262 = load %struct._XDisplay*, %struct._XDisplay** %dpy259, align 8, !tbaa !13
  %263 = bitcast %struct._XDisplay* %262 to %struct.anon.7*
  %default_screen260 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %263, i32 0, i32 33
  %264 = load i32, i32* %default_screen260, align 4, !tbaa !71
  %idxprom261 = sext i32 %264 to i64
  %265 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy262 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %265, i32 0, i32 58
  %266 = load %struct._XDisplay*, %struct._XDisplay** %dpy262, align 8, !tbaa !13
  %267 = bitcast %struct._XDisplay* %266 to %struct.anon.7*
  %screens263 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %267, i32 0, i32 35
  %268 = load %struct.Screen*, %struct.Screen** %screens263, align 8, !tbaa !73
  %arrayidx264 = getelementptr inbounds %struct.Screen, %struct.Screen* %268, i64 %idxprom261
  %root265 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx264, i32 0, i32 2
  %269 = load i64, i64* %root265, align 8, !tbaa !79
  %visual266 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  %270 = load %struct.Visual*, %struct.Visual** %visual266, align 8, !tbaa !53
  %call267 = call i64 @XCreateColormap(%struct._XDisplay* %260, i64 %269, %struct.Visual* %270, i32 0) #4
  %271 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap268 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %271, i32 0, i32 61
  store i64 %call267, i64* %cmap268, align 8, !tbaa !56
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.257, %lor.lhs.false.253
  %272 = bitcast i32* %scrno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.else.227
  %273 = bitcast %struct.Screen** %scr228 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %cleanup.cont.226
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.31
  %visual273 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 0
  %274 = load %struct.Visual*, %struct.Visual** %visual273, align 8, !tbaa !53
  %call274 = call i64 @XVisualIDFromVisual(%struct.Visual* %274) #4
  %visualid = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %xvinfo, i32 0, i32 1
  store i64 %call274, i64* %visualid, align 8, !tbaa !80
  %275 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy275 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %275, i32 0, i32 58
  %276 = load %struct._XDisplay*, %struct._XDisplay** %dpy275, align 8, !tbaa !13
  %call276 = call %struct.XVisualInfo* @XGetVisualInfo(%struct._XDisplay* %276, i64 1, %struct.XVisualInfo* %xvinfo, i32* %nitems) #4
  %277 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %277, i32 0, i32 60
  store %struct.XVisualInfo* %call276, %struct.XVisualInfo** %vinfo, align 8, !tbaa !81
  %278 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo277 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %278, i32 0, i32 60
  %279 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo277, align 8, !tbaa !81
  %cmp278 = icmp eq %struct.XVisualInfo* %279, null
  br i1 %cmp278, label %if.then.280, label %if.end.286

if.then.280:                                      ; preds = %if.end.272
  %280 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory281 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %280, i32 0, i32 3
  %281 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory281, align 8, !tbaa !44
  %call282 = call i8* @gs_program_name() #4
  %call283 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %281, i8* %call282, i64 %call283) #4
  %282 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory284 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %282, i32 0, i32 3
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory284, align 8, !tbaa !44
  %call285 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %283, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.602

if.end.286:                                       ; preds = %if.end.272
  %call287 = call i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @XSetErrorHandler(i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @x_catch_free_colors) #4
  store i32 (%struct._XDisplay*, %struct.XErrorEvent*)* %call287, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 1), align 8, !tbaa !10
  call void @XtToolkitInitialize() #4
  %call288 = call %struct._XtAppStruct* @XtCreateApplicationContext() #4
  store %struct._XtAppStruct* %call288, %struct._XtAppStruct** %app_con, align 8, !tbaa !2
  %284 = load %struct._XtAppStruct*, %struct._XtAppStruct** %app_con, align 8, !tbaa !2
  call void @XtAppSetFallbackResources(%struct._XtAppStruct* %284, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @gdev_x_fallback_resources, i32 0, i32 0)) #4
  %285 = load %struct._XtAppStruct*, %struct._XtAppStruct** %app_con, align 8, !tbaa !2
  %call289 = call %struct._XDisplay* @XtOpenDisplay(%struct._XtAppStruct* %285, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct.XrmOptionDescRec* null, i32 0, i32* %zero, i8** null) #4
  store %struct._XDisplay* %call289, %struct._XDisplay** %dpy, align 8, !tbaa !2
  %286 = load %struct._WidgetClassRec*, %struct._WidgetClassRec** @applicationShellWidgetClass, align 8, !tbaa !2
  %287 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !2
  %call290 = call %struct._WidgetRec* @XtAppCreateShell(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct._WidgetClassRec* %286, %struct._XDisplay* %287, %struct.Arg* null, i32 0) #4
  store %struct._WidgetRec* %call290, %struct._WidgetRec** %toplevel, align 8, !tbaa !2
  %288 = load %struct._WidgetRec*, %struct._WidgetRec** %toplevel, align 8, !tbaa !2
  %289 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %290 = bitcast %struct.gx_device_X_s* %289 to i8*
  %291 = load i32, i32* @gdev_x_resource_count, align 4, !tbaa !12
  call void @XtGetApplicationResources(%struct._WidgetRec* %288, i8* %290, %struct._XtResource* getelementptr inbounds ([0 x %struct._XtResource], [0 x %struct._XtResource]* @gdev_x_resources, i32 0, i32 0), i32 %291, %struct.Arg* null, i32 0) #4
  %292 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %292, i32 0, i32 84
  %293 = load i64, i64* %foreground, align 8, !tbaa !82
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  store i64 %293, i64* %pixel, align 8, !tbaa !83
  %294 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy291 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %294, i32 0, i32 58
  %295 = load %struct._XDisplay*, %struct._XDisplay** %dpy291, align 8, !tbaa !13
  %296 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy292 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %296, i32 0, i32 58
  %297 = load %struct._XDisplay*, %struct._XDisplay** %dpy292, align 8, !tbaa !13
  %298 = bitcast %struct._XDisplay* %297 to %struct.anon.7*
  %default_screen293 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %298, i32 0, i32 33
  %299 = load i32, i32* %default_screen293, align 4, !tbaa !71
  %idxprom294 = sext i32 %299 to i64
  %300 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy295 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %300, i32 0, i32 58
  %301 = load %struct._XDisplay*, %struct._XDisplay** %dpy295, align 8, !tbaa !13
  %302 = bitcast %struct._XDisplay* %301 to %struct.anon.7*
  %screens296 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %302, i32 0, i32 35
  %303 = load %struct.Screen*, %struct.Screen** %screens296, align 8, !tbaa !73
  %arrayidx297 = getelementptr inbounds %struct.Screen, %struct.Screen* %303, i64 %idxprom294
  %cmap298 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx297, i32 0, i32 12
  %304 = load i64, i64* %cmap298, align 8, !tbaa !76
  %call299 = call i32 @XQueryColor(%struct._XDisplay* %295, i64 %304, %struct.XColor* %xc) #4
  %305 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy300 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %305, i32 0, i32 58
  %306 = load %struct._XDisplay*, %struct._XDisplay** %dpy300, align 8, !tbaa !13
  %307 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap301 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %307, i32 0, i32 61
  %308 = load i64, i64* %cmap301, align 8, !tbaa !56
  %call302 = call i32 @XAllocColor(%struct._XDisplay* %306, i64 %308, %struct.XColor* %xc) #4
  %pixel303 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  %309 = load i64, i64* %pixel303, align 8, !tbaa !83
  %310 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %foreground304 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %310, i32 0, i32 84
  store i64 %309, i64* %foreground304, align 8, !tbaa !82
  %311 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %311, i32 0, i32 83
  %312 = load i64, i64* %background, align 8, !tbaa !85
  %pixel305 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  store i64 %312, i64* %pixel305, align 8, !tbaa !83
  %313 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy306 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %313, i32 0, i32 58
  %314 = load %struct._XDisplay*, %struct._XDisplay** %dpy306, align 8, !tbaa !13
  %315 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy307 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %315, i32 0, i32 58
  %316 = load %struct._XDisplay*, %struct._XDisplay** %dpy307, align 8, !tbaa !13
  %317 = bitcast %struct._XDisplay* %316 to %struct.anon.7*
  %default_screen308 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %317, i32 0, i32 33
  %318 = load i32, i32* %default_screen308, align 4, !tbaa !71
  %idxprom309 = sext i32 %318 to i64
  %319 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy310 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %319, i32 0, i32 58
  %320 = load %struct._XDisplay*, %struct._XDisplay** %dpy310, align 8, !tbaa !13
  %321 = bitcast %struct._XDisplay* %320 to %struct.anon.7*
  %screens311 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %321, i32 0, i32 35
  %322 = load %struct.Screen*, %struct.Screen** %screens311, align 8, !tbaa !73
  %arrayidx312 = getelementptr inbounds %struct.Screen, %struct.Screen* %322, i64 %idxprom309
  %cmap313 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx312, i32 0, i32 12
  %323 = load i64, i64* %cmap313, align 8, !tbaa !76
  %call314 = call i32 @XQueryColor(%struct._XDisplay* %314, i64 %323, %struct.XColor* %xc) #4
  %324 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy315 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %324, i32 0, i32 58
  %325 = load %struct._XDisplay*, %struct._XDisplay** %dpy315, align 8, !tbaa !13
  %326 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap316 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %326, i32 0, i32 61
  %327 = load i64, i64* %cmap316, align 8, !tbaa !56
  %call317 = call i32 @XAllocColor(%struct._XDisplay* %325, i64 %327, %struct.XColor* %xc) #4
  %pixel318 = getelementptr inbounds %struct.XColor, %struct.XColor* %xc, i32 0, i32 0
  %328 = load i64, i64* %pixel318, align 8, !tbaa !83
  %329 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background319 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %329, i32 0, i32 83
  store i64 %328, i64* %background319, align 8, !tbaa !85
  %330 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call320 = call i32 @gdev_x_setup_colors(%struct.gx_device_X_s* %330) #4
  store i32 %call320, i32* %code, align 4, !tbaa !12
  %331 = load i32, i32* %code, align 4, !tbaa !12
  %cmp321 = icmp slt i32 %331, 0
  br i1 %cmp321, label %if.then.323, label %if.end.326

if.then.323:                                      ; preds = %if.end.286
  %332 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy324 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %332, i32 0, i32 58
  %333 = load %struct._XDisplay*, %struct._XDisplay** %dpy324, align 8, !tbaa !13
  %call325 = call i32 @XCloseDisplay(%struct._XDisplay* %333) #4
  %334 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %334, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.602

if.end.326:                                       ; preds = %if.end.286
  %335 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %336 = bitcast %struct.gx_device_X_s* %335 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %336) #4
  %337 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview327 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %337, i32 0, i32 66
  %338 = load i32, i32* %ghostview327, align 4, !tbaa !46
  %tobool328 = icmp ne i32 %338, 0
  br i1 %tobool328, label %if.end.552, label %if.then.329

if.then.329:                                      ; preds = %if.end.326
  %339 = bitcast %struct.XWMHints* %wm_hints to i8*
  call void @llvm.lifetime.start(i64 56, i8* %339) #1
  %340 = bitcast %struct.XSetWindowAttributes* %xswa to i8*
  call void @llvm.lifetime.start(i64 112, i8* %340) #1
  %341 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #1
  %342 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %343 = bitcast %struct.gx_device_X_s* %342 to %struct.gx_device_s*
  store %struct.gx_device_s* %343, %struct.gx_device_s** %dev, align 8, !tbaa !2
  %344 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution330 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %344, i32 0, i32 22
  %arrayidx331 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution330, i32 0, i64 0
  %345 = load float, float* %arrayidx331, align 4, !tbaa !63
  %cmp332 = fcmp oeq float %345, 1.152000e+03
  br i1 %cmp332, label %if.then.339, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %if.then.329
  %346 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution335 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %346, i32 0, i32 22
  %arrayidx336 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution335, i32 0, i64 1
  %347 = load float, float* %arrayidx336, align 4, !tbaa !63
  %cmp337 = fcmp oeq float %347, 1.152000e+03
  br i1 %cmp337, label %if.then.339, label %if.end.475

if.then.339:                                      ; preds = %lor.lhs.false.334, %if.then.329
  %348 = bitcast float* %xsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %348) #1
  %349 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width340 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %349, i32 0, i32 13
  %350 = load i32, i32* %width340, align 4, !tbaa !60
  %conv341 = sitofp i32 %350 to float
  %351 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution342 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %351, i32 0, i32 22
  %arrayidx343 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution342, i32 0, i64 0
  %352 = load float, float* %arrayidx343, align 4, !tbaa !63
  %div344 = fdiv float %conv341, %352
  store float %div344, float* %xsize, align 4, !tbaa !63
  %353 = bitcast float* %ysize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #1
  %354 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height345 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %354, i32 0, i32 14
  %355 = load i32, i32* %height345, align 4, !tbaa !61
  %conv346 = sitofp i32 %355 to float
  %356 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution347 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %356, i32 0, i32 22
  %arrayidx348 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution347, i32 0, i64 1
  %357 = load float, float* %arrayidx348, align 4, !tbaa !63
  %div349 = fdiv float %conv346, %357
  store float %div349, float* %ysize, align 4, !tbaa !63
  %358 = bitcast i32* %workarea_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #1
  %359 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr350 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %359, i32 0, i32 59
  %360 = load %struct.Screen*, %struct.Screen** %scr350, align 8, !tbaa !51
  %width351 = getelementptr inbounds %struct.Screen, %struct.Screen* %360, i32 0, i32 3
  %361 = load i32, i32* %width351, align 4, !tbaa !86
  store i32 %361, i32* %workarea_width, align 4, !tbaa !12
  %362 = bitcast i32* %workarea_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %362) #1
  %363 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr352 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %363, i32 0, i32 59
  %364 = load %struct.Screen*, %struct.Screen** %scr352, align 8, !tbaa !51
  %height353 = getelementptr inbounds %struct.Screen, %struct.Screen* %364, i32 0, i32 4
  %365 = load i32, i32* %height353, align 4, !tbaa !87
  store i32 %365, i32* %workarea_height, align 4, !tbaa !12
  %366 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @x_get_work_area(%struct.gx_device_X_s* %366, i32* %workarea_width, i32* %workarea_height) #4
  %367 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %xResolution = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %367, i32 0, i32 92
  %368 = load float, float* %xResolution, align 4, !tbaa !88
  %conv354 = fpext float %368 to double
  %cmp355 = fcmp oeq double %conv354, 0.000000e+00
  br i1 %cmp355, label %land.lhs.true.357, label %if.else.410

land.lhs.true.357:                                ; preds = %if.then.339
  %369 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %yResolution = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %369, i32 0, i32 93
  %370 = load float, float* %yResolution, align 4, !tbaa !89
  %conv358 = fpext float %370 to double
  %cmp359 = fcmp oeq double %conv358, 0.000000e+00
  br i1 %cmp359, label %if.then.361, label %if.else.410

if.then.361:                                      ; preds = %land.lhs.true.357
  %371 = bitcast float* %dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %371) #1
  %372 = bitcast float* %xdpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372) #1
  %373 = bitcast float* %ydpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373) #1
  %374 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr362 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %374, i32 0, i32 59
  %375 = load %struct.Screen*, %struct.Screen** %scr362, align 8, !tbaa !51
  %width363 = getelementptr inbounds %struct.Screen, %struct.Screen* %375, i32 0, i32 3
  %376 = load i32, i32* %width363, align 4, !tbaa !86
  %conv364 = sitofp i32 %376 to double
  %mul365 = fmul double 2.540000e+01, %conv364
  %377 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr366 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %377, i32 0, i32 59
  %378 = load %struct.Screen*, %struct.Screen** %scr366, align 8, !tbaa !51
  %mwidth = getelementptr inbounds %struct.Screen, %struct.Screen* %378, i32 0, i32 5
  %379 = load i32, i32* %mwidth, align 4, !tbaa !90
  %conv367 = sitofp i32 %379 to double
  %div368 = fdiv double %mul365, %conv367
  %conv369 = fptrunc double %div368 to float
  store float %conv369, float* %xdpi, align 4, !tbaa !63
  %380 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr370 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %380, i32 0, i32 59
  %381 = load %struct.Screen*, %struct.Screen** %scr370, align 8, !tbaa !51
  %height371 = getelementptr inbounds %struct.Screen, %struct.Screen* %381, i32 0, i32 4
  %382 = load i32, i32* %height371, align 4, !tbaa !87
  %conv372 = sitofp i32 %382 to double
  %mul373 = fmul double 2.540000e+01, %conv372
  %383 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr374 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %383, i32 0, i32 59
  %384 = load %struct.Screen*, %struct.Screen** %scr374, align 8, !tbaa !51
  %mheight = getelementptr inbounds %struct.Screen, %struct.Screen* %384, i32 0, i32 6
  %385 = load i32, i32* %mheight, align 4, !tbaa !91
  %conv375 = sitofp i32 %385 to double
  %div376 = fdiv double %mul373, %conv375
  %conv377 = fptrunc double %div376 to float
  store float %conv377, float* %ydpi, align 4, !tbaa !63
  %386 = load float, float* %xdpi, align 4, !tbaa !63
  %387 = load float, float* %ydpi, align 4, !tbaa !63
  %cmp378 = fcmp olt float %386, %387
  br i1 %cmp378, label %cond.true.380, label %cond.false.381

cond.true.380:                                    ; preds = %if.then.361
  %388 = load float, float* %xdpi, align 4, !tbaa !63
  br label %cond.end.382

cond.false.381:                                   ; preds = %if.then.361
  %389 = load float, float* %ydpi, align 4, !tbaa !63
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.381, %cond.true.380
  %cond383 = phi float [ %388, %cond.true.380 ], [ %389, %cond.false.381 ]
  store float %cond383, float* %dpi, align 4, !tbaa !63
  %390 = load float, float* %dpi, align 4, !tbaa !63
  %cmp384 = fcmp olt float %390, 3.000000e+01
  br i1 %cmp384, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %cond.end.382
  store float 7.500000e+01, float* %dpi, align 4, !tbaa !63
  br label %if.end.405

if.else.387:                                      ; preds = %cond.end.382
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.387
  %391 = load float, float* %xsize, align 4, !tbaa !63
  %392 = load float, float* %dpi, align 4, !tbaa !63
  %mul388 = fmul float %391, %392
  %393 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr389 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %393, i32 0, i32 59
  %394 = load %struct.Screen*, %struct.Screen** %scr389, align 8, !tbaa !51
  %width390 = getelementptr inbounds %struct.Screen, %struct.Screen* %394, i32 0, i32 3
  %395 = load i32, i32* %width390, align 4, !tbaa !86
  %sub391 = sub nsw i32 %395, 32
  %conv392 = sitofp i32 %sub391 to float
  %cmp393 = fcmp ogt float %mul388, %conv392
  br i1 %cmp393, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %396 = load float, float* %ysize, align 4, !tbaa !63
  %397 = load float, float* %dpi, align 4, !tbaa !63
  %mul395 = fmul float %396, %397
  %398 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr396 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %398, i32 0, i32 59
  %399 = load %struct.Screen*, %struct.Screen** %scr396, align 8, !tbaa !51
  %height397 = getelementptr inbounds %struct.Screen, %struct.Screen* %399, i32 0, i32 4
  %400 = load i32, i32* %height397, align 4, !tbaa !87
  %sub398 = sub nsw i32 %400, 32
  %conv399 = sitofp i32 %sub398 to float
  %cmp400 = fcmp ogt float %mul395, %conv399
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %401 = phi i1 [ true, %while.cond ], [ %cmp400, %lor.rhs ]
  br i1 %401, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %402 = load float, float* %dpi, align 4, !tbaa !63
  %conv402 = fpext float %402 to double
  %mul403 = fmul double %conv402, 9.500000e-01
  %conv404 = fptrunc double %mul403 to float
  store float %conv404, float* %dpi, align 4, !tbaa !63
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %if.end.405

if.end.405:                                       ; preds = %while.end, %if.then.386
  %403 = load float, float* %dpi, align 4, !tbaa !63
  %404 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution406 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %404, i32 0, i32 22
  %arrayidx407 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution406, i32 0, i64 0
  store float %403, float* %arrayidx407, align 4, !tbaa !63
  %405 = load float, float* %dpi, align 4, !tbaa !63
  %406 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution408 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %406, i32 0, i32 22
  %arrayidx409 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution408, i32 0, i64 1
  store float %405, float* %arrayidx409, align 4, !tbaa !63
  %407 = bitcast float* %ydpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast float* %xdpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast float* %dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  br label %if.end.417

if.else.410:                                      ; preds = %land.lhs.true.357, %if.then.339
  %410 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %xResolution411 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %410, i32 0, i32 92
  %411 = load float, float* %xResolution411, align 4, !tbaa !88
  %412 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution412 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %412, i32 0, i32 22
  %arrayidx413 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution412, i32 0, i64 0
  store float %411, float* %arrayidx413, align 4, !tbaa !63
  %413 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %yResolution414 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %413, i32 0, i32 93
  %414 = load float, float* %yResolution414, align 4, !tbaa !89
  %415 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution415 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %415, i32 0, i32 22
  %arrayidx416 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution415, i32 0, i64 1
  store float %414, float* %arrayidx416, align 4, !tbaa !63
  br label %if.end.417

if.end.417:                                       ; preds = %if.else.410, %if.end.405
  %416 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width418 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %416, i32 0, i32 13
  %417 = load i32, i32* %width418, align 4, !tbaa !60
  %418 = load i32, i32* %workarea_width, align 4, !tbaa !12
  %cmp419 = icmp sgt i32 %417, %418
  br i1 %cmp419, label %if.then.421, label %if.end.438

if.then.421:                                      ; preds = %if.end.417
  %419 = load float, float* %xsize, align 4, !tbaa !63
  %420 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution422 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %420, i32 0, i32 22
  %arrayidx423 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution422, i32 0, i64 0
  %421 = load float, float* %arrayidx423, align 4, !tbaa !63
  %mul424 = fmul float %419, %421
  %422 = load i32, i32* %workarea_width, align 4, !tbaa !12
  %conv425 = sitofp i32 %422 to float
  %cmp426 = fcmp olt float %mul424, %conv425
  br i1 %cmp426, label %cond.true.428, label %cond.false.432

cond.true.428:                                    ; preds = %if.then.421
  %423 = load float, float* %xsize, align 4, !tbaa !63
  %424 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution429 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %424, i32 0, i32 22
  %arrayidx430 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution429, i32 0, i64 0
  %425 = load float, float* %arrayidx430, align 4, !tbaa !63
  %mul431 = fmul float %423, %425
  br label %cond.end.434

cond.false.432:                                   ; preds = %if.then.421
  %426 = load i32, i32* %workarea_width, align 4, !tbaa !12
  %conv433 = sitofp i32 %426 to float
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.false.432, %cond.true.428
  %cond435 = phi float [ %mul431, %cond.true.428 ], [ %conv433, %cond.false.432 ]
  %conv436 = fptosi float %cond435 to i32
  %427 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width437 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %427, i32 0, i32 13
  store i32 %conv436, i32* %width437, align 4, !tbaa !60
  br label %if.end.438

if.end.438:                                       ; preds = %cond.end.434, %if.end.417
  %428 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height439 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %428, i32 0, i32 14
  %429 = load i32, i32* %height439, align 4, !tbaa !61
  %430 = load i32, i32* %workarea_height, align 4, !tbaa !12
  %cmp440 = icmp sgt i32 %429, %430
  br i1 %cmp440, label %if.then.442, label %if.end.459

if.then.442:                                      ; preds = %if.end.438
  %431 = load float, float* %ysize, align 4, !tbaa !63
  %432 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution443 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %432, i32 0, i32 22
  %arrayidx444 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution443, i32 0, i64 1
  %433 = load float, float* %arrayidx444, align 4, !tbaa !63
  %mul445 = fmul float %431, %433
  %434 = load i32, i32* %workarea_height, align 4, !tbaa !12
  %conv446 = sitofp i32 %434 to float
  %cmp447 = fcmp olt float %mul445, %conv446
  br i1 %cmp447, label %cond.true.449, label %cond.false.453

cond.true.449:                                    ; preds = %if.then.442
  %435 = load float, float* %ysize, align 4, !tbaa !63
  %436 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution450 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %436, i32 0, i32 22
  %arrayidx451 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution450, i32 0, i64 1
  %437 = load float, float* %arrayidx451, align 4, !tbaa !63
  %mul452 = fmul float %435, %437
  br label %cond.end.455

cond.false.453:                                   ; preds = %if.then.442
  %438 = load i32, i32* %workarea_height, align 4, !tbaa !12
  %conv454 = sitofp i32 %438 to float
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.453, %cond.true.449
  %cond456 = phi float [ %mul452, %cond.true.449 ], [ %conv454, %cond.false.453 ]
  %conv457 = fptosi float %cond456 to i32
  %439 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height458 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %439, i32 0, i32 14
  store i32 %conv457, i32* %height458, align 4, !tbaa !61
  br label %if.end.459

if.end.459:                                       ; preds = %cond.end.455, %if.end.438
  %440 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width460 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %440, i32 0, i32 13
  %441 = load i32, i32* %width460, align 4, !tbaa !60
  %conv461 = sitofp i32 %441 to float
  %442 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution462 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %442, i32 0, i32 22
  %arrayidx463 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution462, i32 0, i64 0
  %443 = load float, float* %arrayidx463, align 4, !tbaa !63
  %div464 = fdiv float %conv461, %443
  %mul465 = fmul float %div464, 7.200000e+01
  %444 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %MediaSize = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %444, i32 0, i32 19
  %arrayidx466 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  store float %mul465, float* %arrayidx466, align 4, !tbaa !63
  %445 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height467 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %445, i32 0, i32 14
  %446 = load i32, i32* %height467, align 4, !tbaa !61
  %conv468 = sitofp i32 %446 to float
  %447 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %HWResolution469 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %447, i32 0, i32 22
  %arrayidx470 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution469, i32 0, i64 1
  %448 = load float, float* %arrayidx470, align 4, !tbaa !63
  %div471 = fdiv float %conv468, %448
  %mul472 = fmul float %div471, 7.200000e+01
  %449 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %MediaSize473 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %449, i32 0, i32 19
  %arrayidx474 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize473, i32 0, i64 1
  store float %mul472, float* %arrayidx474, align 4, !tbaa !63
  %450 = bitcast i32* %workarea_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %450) #1
  %451 = bitcast i32* %workarea_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast float* %ysize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast float* %xsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.459, %lor.lhs.false.334
  %x476 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 1
  store i32 0, i32* %x476, align 4, !tbaa !92
  %y477 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 2
  store i32 0, i32* %y477, align 4, !tbaa !95
  %454 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width478 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %454, i32 0, i32 13
  %455 = load i32, i32* %width478, align 4, !tbaa !60
  %width479 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 3
  store i32 %455, i32* %width479, align 4, !tbaa !96
  %456 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height480 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %456, i32 0, i32 14
  %457 = load i32, i32* %height480, align 4, !tbaa !61
  %height481 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 4
  store i32 %457, i32* %height481, align 4, !tbaa !97
  %flags = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 0
  store i64 0, i64* %flags, align 8, !tbaa !98
  %458 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %geometry = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %458, i32 0, i32 88
  %459 = load i8*, i8** %geometry, align 8, !tbaa !99
  %cmp482 = icmp ne i8* %459, null
  br i1 %cmp482, label %if.then.484, label %if.end.505

if.then.484:                                      ; preds = %if.end.475
  %460 = bitcast [40 x i8]* %gstr to i8*
  call void @llvm.lifetime.start(i64 40, i8* %460) #1
  %461 = bitcast i32* %bitmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %461) #1
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %gstr, i32 0, i32 0
  %width485 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 3
  %462 = load i32, i32* %width485, align 4, !tbaa !96
  %height486 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 4
  %463 = load i32, i32* %height486, align 4, !tbaa !97
  %x487 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 1
  %464 = load i32, i32* %x487, align 4, !tbaa !92
  %y488 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 2
  %465 = load i32, i32* %y488, align 4, !tbaa !95
  %call489 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 %462, i32 %463, i32 %464, i32 %465) #4
  %466 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy490 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %466, i32 0, i32 58
  %467 = load %struct._XDisplay*, %struct._XDisplay** %dpy490, align 8, !tbaa !13
  %468 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy491 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %468, i32 0, i32 58
  %469 = load %struct._XDisplay*, %struct._XDisplay** %dpy491, align 8, !tbaa !13
  %470 = bitcast %struct._XDisplay* %469 to %struct.anon.7*
  %default_screen492 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %470, i32 0, i32 33
  %471 = load i32, i32* %default_screen492, align 4, !tbaa !71
  %472 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %geometry493 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %472, i32 0, i32 88
  %473 = load i8*, i8** %geometry493, align 8, !tbaa !99
  %arraydecay494 = getelementptr inbounds [40 x i8], [40 x i8]* %gstr, i32 0, i32 0
  %474 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %borderWidth = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %474, i32 0, i32 87
  %475 = load i16, i16* %borderWidth, align 2, !tbaa !100
  %conv495 = zext i16 %475 to i32
  %x496 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 1
  %y497 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 2
  %width498 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 3
  %height499 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 4
  %win_gravity = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 15
  %call500 = call i32 @XWMGeometry(%struct._XDisplay* %467, i32 %471, i8* %473, i8* %arraydecay494, i32 %conv495, %struct.XSizeHints* %sizehints, i32* %x496, i32* %y497, i32* %width498, i32* %height499, i32* %win_gravity) #4
  store i32 %call500, i32* %bitmask, align 4, !tbaa !12
  %476 = load i32, i32* %bitmask, align 4, !tbaa !12
  %and = and i32 %476, 3
  %tobool501 = icmp ne i32 %and, 0
  br i1 %tobool501, label %if.then.502, label %if.end.504

if.then.502:                                      ; preds = %if.then.484
  %flags503 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 0
  %477 = load i64, i64* %flags503, align 8, !tbaa !98
  %or = or i64 %477, 1
  store i64 %or, i64* %flags503, align 8, !tbaa !98
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.502, %if.then.484
  %478 = bitcast i32* %bitmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast [40 x i8]* %gstr to i8*
  call void @llvm.lifetime.end(i64 40, i8* %479) #1
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.end.475
  %480 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !2
  %481 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix506 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %481, i32 0, i32 68
  call void @gx_default_get_initial_matrix(%struct.gx_device_s* %480, %struct.gs_matrix_s* %initial_matrix506) #4
  %482 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %pwin507 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %482, i32 0, i32 64
  %483 = load i64, i64* %pwin507, align 8, !tbaa !47
  %cmp508 = icmp ne i64 %483, 0
  br i1 %cmp508, label %land.lhs.true.510, label %if.else.523

land.lhs.true.510:                                ; preds = %if.end.505
  %484 = load i32, i32* %xid_width, align 4, !tbaa !12
  %cmp511 = icmp ne i32 %484, 0
  br i1 %cmp511, label %land.lhs.true.513, label %if.else.523

land.lhs.true.513:                                ; preds = %land.lhs.true.510
  %485 = load i32, i32* %xid_height, align 4, !tbaa !12
  %cmp514 = icmp ne i32 %485, 0
  br i1 %cmp514, label %if.then.516, label %if.else.523

if.then.516:                                      ; preds = %land.lhs.true.513
  %486 = load i32, i32* %xid_width, align 4, !tbaa !12
  %487 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width517 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %487, i32 0, i32 13
  store i32 %486, i32* %width517, align 4, !tbaa !60
  %488 = load i32, i32* %xid_height, align 4, !tbaa !12
  %489 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height518 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %489, i32 0, i32 14
  store i32 %488, i32* %height518, align 4, !tbaa !61
  %490 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height519 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %490, i32 0, i32 14
  %491 = load i32, i32* %height519, align 4, !tbaa !61
  %conv520 = sitofp i32 %491 to float
  %492 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %initial_matrix521 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %492, i32 0, i32 68
  %ty522 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix521, i32 0, i32 5
  store float %conv520, float* %ty522, align 4, !tbaa !69
  br label %if.end.551

if.else.523:                                      ; preds = %land.lhs.true.513, %land.lhs.true.510, %if.end.505
  %event_mask = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %xswa, i32 0, i32 10
  store i64 32768, i64* %event_mask, align 8, !tbaa !101
  %493 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background524 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %493, i32 0, i32 83
  %494 = load i64, i64* %background524, align 8, !tbaa !85
  %background_pixel = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %xswa, i32 0, i32 1
  store i64 %494, i64* %background_pixel, align 8, !tbaa !103
  %495 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %borderColor = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %495, i32 0, i32 86
  %496 = load i64, i64* %borderColor, align 8, !tbaa !104
  %border_pixel = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %xswa, i32 0, i32 3
  store i64 %496, i64* %border_pixel, align 8, !tbaa !105
  %497 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap525 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %497, i32 0, i32 61
  %498 = load i64, i64* %cmap525, align 8, !tbaa !56
  %colormap526 = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %xswa, i32 0, i32 13
  store i64 %498, i64* %colormap526, align 8, !tbaa !106
  %499 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy527 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %499, i32 0, i32 58
  %500 = load %struct._XDisplay*, %struct._XDisplay** %dpy527, align 8, !tbaa !13
  %501 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr528 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %501, i32 0, i32 59
  %502 = load %struct.Screen*, %struct.Screen** %scr528, align 8, !tbaa !51
  %root529 = getelementptr inbounds %struct.Screen, %struct.Screen* %502, i32 0, i32 2
  %503 = load i64, i64* %root529, align 8, !tbaa !79
  %x530 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 1
  %504 = load i32, i32* %x530, align 4, !tbaa !92
  %y531 = getelementptr inbounds %struct.XSizeHints, %struct.XSizeHints* %sizehints, i32 0, i32 2
  %505 = load i32, i32* %y531, align 4, !tbaa !95
  %506 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width532 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %506, i32 0, i32 13
  %507 = load i32, i32* %width532, align 4, !tbaa !60
  %508 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height533 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %508, i32 0, i32 14
  %509 = load i32, i32* %height533, align 4, !tbaa !61
  %510 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %borderWidth534 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %510, i32 0, i32 87
  %511 = load i16, i16* %borderWidth534, align 2, !tbaa !100
  %conv535 = zext i16 %511 to i32
  %512 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo536 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %512, i32 0, i32 60
  %513 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo536, align 8, !tbaa !81
  %depth537 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %513, i32 0, i32 3
  %514 = load i32, i32* %depth537, align 4, !tbaa !107
  %515 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo538 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %515, i32 0, i32 60
  %516 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo538, align 8, !tbaa !81
  %visual539 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %516, i32 0, i32 0
  %517 = load %struct.Visual*, %struct.Visual** %visual539, align 8, !tbaa !53
  %call540 = call i64 @XCreateWindow(%struct._XDisplay* %500, i64 %503, i32 %504, i32 %505, i32 %507, i32 %509, i32 %conv535, i32 %514, i32 1, %struct.Visual* %517, i64 10250, %struct.XSetWindowAttributes* %xswa) #4
  %518 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win541 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %518, i32 0, i32 62
  store i64 %call540, i64* %win541, align 8, !tbaa !48
  %519 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy542 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %519, i32 0, i32 58
  %520 = load %struct._XDisplay*, %struct._XDisplay** %dpy542, align 8, !tbaa !13
  %521 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win543 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %521, i32 0, i32 62
  %522 = load i64, i64* %win543, align 8, !tbaa !48
  %call544 = call i32 @XStoreName(%struct._XDisplay* %520, i64 %522, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #4
  %523 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy545 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %523, i32 0, i32 58
  %524 = load %struct._XDisplay*, %struct._XDisplay** %dpy545, align 8, !tbaa !13
  %525 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win546 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %525, i32 0, i32 62
  %526 = load i64, i64* %win546, align 8, !tbaa !48
  call void @XSetWMNormalHints(%struct._XDisplay* %524, i64 %526, %struct.XSizeHints* %sizehints) #4
  %flags547 = getelementptr inbounds %struct.XWMHints, %struct.XWMHints* %wm_hints, i32 0, i32 0
  store i64 1, i64* %flags547, align 8, !tbaa !108
  %input = getelementptr inbounds %struct.XWMHints, %struct.XWMHints* %wm_hints, i32 0, i32 1
  store i32 0, i32* %input, align 4, !tbaa !110
  %527 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy548 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %527, i32 0, i32 58
  %528 = load %struct._XDisplay*, %struct._XDisplay** %dpy548, align 8, !tbaa !13
  %529 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win549 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %529, i32 0, i32 62
  %530 = load i64, i64* %win549, align 8, !tbaa !48
  %call550 = call i32 @XSetWMHints(%struct._XDisplay* %528, i64 %530, %struct.XWMHints* %wm_hints) #4
  br label %if.end.551

if.end.551:                                       ; preds = %if.else.523, %if.then.516
  %531 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %531) #1
  %532 = bitcast %struct.XSetWindowAttributes* %xswa to i8*
  call void @llvm.lifetime.end(i64 112, i8* %532) #1
  %533 = bitcast %struct.XWMHints* %wm_hints to i8*
  call void @llvm.lifetime.end(i64 56, i8* %533) #1
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.end.326
  %534 = load %struct._WidgetRec*, %struct._WidgetRec** %toplevel, align 8, !tbaa !2
  call void @XtDestroyWidget(%struct._WidgetRec* %534) #4
  %535 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !2
  call void @XtCloseDisplay(%struct._XDisplay* %535) #4
  %536 = load %struct._XtAppStruct*, %struct._XtAppStruct** %app_con, align 8, !tbaa !2
  call void @XtDestroyApplicationContext(%struct._XtAppStruct* %536) #4
  %537 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ht = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %537, i32 0, i32 77
  %pixmap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht, i32 0, i32 0
  store i64 0, i64* %pixmap, align 8, !tbaa !111
  %538 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ht553 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %538, i32 0, i32 77
  %id = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht553, i32 0, i32 2
  store i64 0, i64* %id, align 8, !tbaa !112
  %539 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %539, i32 0, i32 79
  store i32 0, i32* %fill_style, align 4, !tbaa !113
  %540 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %540, i32 0, i32 78
  store i32 3, i32* %function, align 4, !tbaa !114
  %541 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fid = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %541, i32 0, i32 80
  store i64 0, i64* %fid, align 8, !tbaa !115
  %542 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy554 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %542, i32 0, i32 58
  %543 = load %struct._XDisplay*, %struct._XDisplay** %dpy554, align 8, !tbaa !13
  %544 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win555 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %544, i32 0, i32 62
  %545 = load i64, i64* %win555, align 8, !tbaa !48
  %call556 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %543, i64 %545, i64 0, %struct.XGCValues* null) #4
  %546 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %546, i32 0, i32 63
  store %struct._XGC* %call556, %struct._XGC** %gc, align 8, !tbaa !116
  %547 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy557 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %547, i32 0, i32 58
  %548 = load %struct._XDisplay*, %struct._XDisplay** %dpy557, align 8, !tbaa !13
  %549 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc558 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %549, i32 0, i32 63
  %550 = load %struct._XGC*, %struct._XGC** %gc558, align 8, !tbaa !116
  %call559 = call i32 @XSetFunction(%struct._XDisplay* %548, %struct._XGC* %550, i32 3) #4
  %551 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy560 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %551, i32 0, i32 58
  %552 = load %struct._XDisplay*, %struct._XDisplay** %dpy560, align 8, !tbaa !13
  %553 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc561 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %553, i32 0, i32 63
  %554 = load %struct._XGC*, %struct._XGC** %gc561, align 8, !tbaa !116
  %call562 = call i32 @XSetLineAttributes(%struct._XDisplay* %552, %struct._XGC* %554, i32 0, i32 0, i32 1, i32 0) #4
  %555 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @gdev_x_clear_window(%struct.gx_device_X_s* %555) #4
  %556 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview563 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %556, i32 0, i32 66
  %557 = load i32, i32* %ghostview563, align 4, !tbaa !46
  %tobool564 = icmp ne i32 %557, 0
  br i1 %tobool564, label %if.else.584, label %if.then.565

if.then.565:                                      ; preds = %if.end.552
  %558 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy566 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %558, i32 0, i32 58
  %559 = load %struct._XDisplay*, %struct._XDisplay** %dpy566, align 8, !tbaa !13
  %560 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win567 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %560, i32 0, i32 62
  %561 = load i64, i64* %win567, align 8, !tbaa !48
  %call568 = call i32 @XMapWindow(%struct._XDisplay* %559, i64 %561) #4
  %562 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy569 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %562, i32 0, i32 58
  %563 = load %struct._XDisplay*, %struct._XDisplay** %dpy569, align 8, !tbaa !13
  %call570 = call i32 @XSync(%struct._XDisplay* %563, i32 0) #4
  %564 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %pwin571 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %564, i32 0, i32 64
  %565 = load i64, i64* %pwin571, align 8, !tbaa !47
  %cmp572 = icmp eq i64 %565, 0
  br i1 %cmp572, label %if.then.574, label %if.end.577

if.then.574:                                      ; preds = %if.then.565
  %566 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy575 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %566, i32 0, i32 58
  %567 = load %struct._XDisplay*, %struct._XDisplay** %dpy575, align 8, !tbaa !13
  %call576 = call i32 @XNextEvent(%struct._XDisplay* %567, %union._XEvent* %event) #4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.574, %if.then.565
  %568 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy578 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %568, i32 0, i32 58
  %569 = load %struct._XDisplay*, %struct._XDisplay** %dpy578, align 8, !tbaa !13
  %570 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc579 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %570, i32 0, i32 63
  %571 = load %struct._XGC*, %struct._XGC** %gc579, align 8, !tbaa !116
  %call580 = call i32 @XSetGraphicsExposures(%struct._XDisplay* %569, %struct._XGC* %571, i32 0) #4
  %572 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy581 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %572, i32 0, i32 58
  %573 = load %struct._XDisplay*, %struct._XDisplay** %dpy581, align 8, !tbaa !13
  %574 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win582 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %574, i32 0, i32 62
  %575 = load i64, i64* %win582, align 8, !tbaa !48
  %call583 = call i32 @XSelectInput(%struct._XDisplay* %573, i64 %575, i64 0) #4
  br label %if.end.595

if.else.584:                                      ; preds = %if.end.552
  %576 = bitcast %struct.XSetWindowAttributes* %attributes to i8*
  call void @llvm.lifetime.start(i64 112, i8* %576) #1
  %override_redirect = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attributes, i32 0, i32 12
  store i32 1, i32* %override_redirect, align 4, !tbaa !117
  %577 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy585 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %577, i32 0, i32 58
  %578 = load %struct._XDisplay*, %struct._XDisplay** %dpy585, align 8, !tbaa !13
  %579 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr586 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %579, i32 0, i32 59
  %580 = load %struct.Screen*, %struct.Screen** %scr586, align 8, !tbaa !51
  %root587 = getelementptr inbounds %struct.Screen, %struct.Screen* %580, i32 0, i32 2
  %581 = load i64, i64* %root587, align 8, !tbaa !79
  %call588 = call i64 @XCreateWindow(%struct._XDisplay* %578, i64 %581, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, %struct.Visual* null, i64 512, %struct.XSetWindowAttributes* %attributes) #4
  %582 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %mwin = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %582, i32 0, i32 67
  store i64 %call588, i64* %mwin, align 8, !tbaa !118
  %583 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy589 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %583, i32 0, i32 58
  %584 = load %struct._XDisplay*, %struct._XDisplay** %dpy589, align 8, !tbaa !13
  %call590 = call i64 @XInternAtom(%struct._XDisplay* %584, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 0) #4
  %585 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %NEXT = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %585, i32 0, i32 69
  store i64 %call590, i64* %NEXT, align 8, !tbaa !119
  %586 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy591 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %586, i32 0, i32 58
  %587 = load %struct._XDisplay*, %struct._XDisplay** %dpy591, align 8, !tbaa !13
  %call592 = call i64 @XInternAtom(%struct._XDisplay* %587, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0) #4
  %588 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %PAGE = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %588, i32 0, i32 70
  store i64 %call592, i64* %PAGE, align 8, !tbaa !120
  %589 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy593 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %589, i32 0, i32 58
  %590 = load %struct._XDisplay*, %struct._XDisplay** %dpy593, align 8, !tbaa !13
  %call594 = call i64 @XInternAtom(%struct._XDisplay* %590, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0) #4
  %591 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %DONE = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %591, i32 0, i32 71
  store i64 %call594, i64* %DONE, align 8, !tbaa !121
  %592 = bitcast %struct.XSetWindowAttributes* %attributes to i8*
  call void @llvm.lifetime.end(i64 112, i8* %592) #1
  br label %if.end.595

if.end.595:                                       ; preds = %if.else.584, %if.end.577
  %593 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy596 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %593, i32 0, i32 58
  %594 = load %struct._XDisplay*, %struct._XDisplay** %dpy596, align 8, !tbaa !13
  %595 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win597 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %595, i32 0, i32 62
  %596 = load i64, i64* %win597, align 8, !tbaa !48
  %597 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo598 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %597, i32 0, i32 60
  %598 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo598, align 8, !tbaa !81
  %depth599 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %598, i32 0, i32 3
  %599 = load i32, i32* %depth599, align 4, !tbaa !107
  %call600 = call i64 @XCreatePixmap(%struct._XDisplay* %594, i64 %596, i32 1, i32 1, i32 %599) #4
  %600 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ht601 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %600, i32 0, i32 77
  %no_pixmap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht601, i32 0, i32 1
  store i64 %call600, i64* %no_pixmap, align 8, !tbaa !122
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.602

cleanup.602:                                      ; preds = %if.end.595, %if.then.323, %if.then.280, %cleanup.218, %if.then.13, %cond.end
  %601 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  %602 = bitcast i32* %xid_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %602) #1
  %603 = bitcast i32* %xid_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %603) #1
  %604 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %604) #1
  %605 = bitcast %struct.XColor* %xc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %605) #1
  %606 = bitcast %struct._XDisplay** %dpy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %606) #1
  %607 = bitcast %struct._WidgetRec** %toplevel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %607) #1
  %608 = bitcast %struct._XtAppStruct** %app_con to i8*
  call void @llvm.lifetime.end(i64 8, i8* %608) #1
  %609 = bitcast i32* %nitems to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast %struct.XVisualInfo* %xvinfo to i8*
  call void @llvm.lifetime.end(i64 64, i8* %610) #1
  %611 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.end(i64 192, i8* %611) #1
  %612 = bitcast i8** %window_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %612) #1
  %613 = bitcast %struct.XSizeHints* %sizehints to i8*
  call void @llvm.lifetime.end(i64 80, i8* %613) #1
  %614 = load i32, i32* %retval
  ret i32 %614
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._XDisplay* @XOpenDisplay(i8*) #2

declare i8* @getenv(i8*) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @XGetWindowAttributes(%struct._XDisplay*, i64, %struct.XWindowAttributes*) #2

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #2

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #2

declare i32 @XGetGeometry(%struct._XDisplay*, i64, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare i32 @XMatchVisualInfo(%struct._XDisplay*, i32, i32, i32, %struct.XVisualInfo*) #2

declare i64 @XCreateColormap(%struct._XDisplay*, i64, %struct.Visual*, i32) #2

declare i64 @XVisualIDFromVisual(%struct.Visual*) #2

declare %struct.XVisualInfo* @XGetVisualInfo(%struct._XDisplay*, i64, %struct.XVisualInfo*, i32*) #2

declare i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @XSetErrorHandler(i32 (%struct._XDisplay*, %struct.XErrorEvent*)*) #2

declare void @XtToolkitInitialize() #2

declare %struct._XtAppStruct* @XtCreateApplicationContext() #2

declare void @XtAppSetFallbackResources(%struct._XtAppStruct*, i8**) #2

declare %struct._XDisplay* @XtOpenDisplay(%struct._XtAppStruct*, i8*, i8*, i8*, %struct.XrmOptionDescRec*, i32, i32*, i8**) #2

declare %struct._WidgetRec* @XtAppCreateShell(i8*, i8*, %struct._WidgetClassRec*, %struct._XDisplay*, %struct.Arg*, i32) #2

declare void @XtGetApplicationResources(%struct._WidgetRec*, i8*, %struct._XtResource*, i32, %struct.Arg*, i32) #2

declare i32 @XQueryColor(%struct._XDisplay*, i64, %struct.XColor*) #2

declare i32 @XAllocColor(%struct._XDisplay*, i64, %struct.XColor*) #2

declare i32 @gdev_x_setup_colors(%struct.gx_device_X_s*) #2

declare i32 @XCloseDisplay(%struct._XDisplay*) #2

declare void @check_device_separable(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal void @x_get_work_area(%struct.gx_device_X_s* %xdev, i32* %pwidth, i32* %pheight) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %pwidth.addr = alloca i32*, align 8
  %pheight.addr = alloca i32*, align 8
  %area = alloca i64*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32* %pwidth, i32** %pwidth.addr, align 8, !tbaa !2
  store i32* %pheight, i32** %pheight.addr, align 8, !tbaa !2
  %0 = bitcast i64** %area to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call = call i64* @x_get_win_property(%struct.gx_device_X_s* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #4
  store i64* %call, i64** %area, align 8, !tbaa !2
  %cmp = icmp ne i64* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call1 = call i64* @x_get_win_property(%struct.gx_device_X_s* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #4
  store i64* %call1, i64** %area, align 8, !tbaa !2
  %cmp2 = icmp ne i64* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i64*, i64** %area, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 2
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !59
  %conv = trunc i64 %4 to i32
  %5 = load i32*, i32** %pwidth.addr, align 8, !tbaa !2
  store i32 %conv, i32* %5, align 4, !tbaa !12
  %6 = load i64*, i64** %area, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 3
  %7 = load i64, i64* %arrayidx3, align 8, !tbaa !59
  %conv4 = trunc i64 %7 to i32
  %8 = load i32*, i32** %pheight.addr, align 8, !tbaa !2
  store i32 %conv4, i32* %8, align 4, !tbaa !12
  %9 = load i64*, i64** %area, align 8, !tbaa !2
  %10 = bitcast i64* %9 to i8*
  %call5 = call i32 @XFree(i8* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = bitcast i64** %area to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @XWMGeometry(%struct._XDisplay*, i32, i8*, i8*, i32, %struct.XSizeHints*, i32*, i32*, i32*, i32*, i32*) #2

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare i64 @XCreateWindow(%struct._XDisplay*, i64, i32, i32, i32, i32, i32, i32, i32, %struct.Visual*, i64, %struct.XSetWindowAttributes*) #2

declare i32 @XStoreName(%struct._XDisplay*, i64, i8*) #2

declare void @XSetWMNormalHints(%struct._XDisplay*, i64, %struct.XSizeHints*) #2

declare i32 @XSetWMHints(%struct._XDisplay*, i64, %struct.XWMHints*) #2

declare void @XtDestroyWidget(%struct._WidgetRec*) #2

declare void @XtCloseDisplay(%struct._XDisplay*) #2

declare void @XtDestroyApplicationContext(%struct._XtAppStruct*) #2

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #2

declare i32 @XSetFunction(%struct._XDisplay*, %struct._XGC*, i32) #2

declare i32 @XSetLineAttributes(%struct._XDisplay*, %struct._XGC*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @gdev_x_clear_window(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 66
  %1 = load i32, i32* %ghostview, align 4, !tbaa !46
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.32, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %useBackingPixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 94
  %3 = load i8, i8* %useBackingPixmap, align 1, !tbaa !123
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 65
  %5 = load i64, i64* %bpixmap, align 8, !tbaa !62
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %if.then.2
  %call = call i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @XSetErrorHandler(i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @x_catch_alloc) #4
  store i32 (%struct._XDisplay*, %struct.XErrorEvent*)* %call, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 2), align 8, !tbaa !124
  store i8 0, i8* getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 0), align 1, !tbaa !125
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 58
  %7 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !13
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 62
  %9 = load i64, i64* %win, align 8, !tbaa !48
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !60
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height, align 4, !tbaa !61
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 60
  %15 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !81
  %depth = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %15, i32 0, i32 3
  %16 = load i32, i32* %depth, align 4, !tbaa !107
  %call4 = call i64 @XCreatePixmap(%struct._XDisplay* %7, i64 %9, i32 %11, i32 %13, i32 %16) #4
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 65
  store i64 %call4, i64* %bpixmap5, align 8, !tbaa !62
  %18 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %18, i32 0, i32 58
  %19 = load %struct._XDisplay*, %struct._XDisplay** %dpy6, align 8, !tbaa !13
  %call7 = call i32 @XSync(%struct._XDisplay* %19, i32 0) #4
  %20 = load i8, i8* getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 0), align 1, !tbaa !125
  %tobool8 = icmp ne i8 %20, 0
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.then.3
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %useBackingPixmap10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 94
  store i8 0, i8* %useBackingPixmap10, align 1, !tbaa !123
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 65
  %23 = load i64, i64* %bpixmap11, align 8, !tbaa !62
  %tobool12 = icmp ne i64 %23, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.9
  %24 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy14 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %24, i32 0, i32 58
  %25 = load %struct._XDisplay*, %struct._XDisplay** %dpy14, align 8, !tbaa !13
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap15 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 65
  %27 = load i64, i64* %bpixmap15, align 8, !tbaa !62
  %call16 = call i32 @XFreePixmap(%struct._XDisplay* %25, i64 %27) #4
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap17 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %28, i32 0, i32 65
  store i64 0, i64* %bpixmap17, align 8, !tbaa !62
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy18 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 58
  %30 = load %struct._XDisplay*, %struct._XDisplay** %dpy18, align 8, !tbaa !13
  %call19 = call i32 @XSync(%struct._XDisplay* %30, i32 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.3
  %31 = load i32 (%struct._XDisplay*, %struct.XErrorEvent*)*, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 2), align 8, !tbaa !124
  %call21 = call i32 (%struct._XDisplay*, %struct.XErrorEvent*)* @XSetErrorHandler(i32 (%struct._XDisplay*, %struct.XErrorEvent*)* %31) #4
  store i32 (%struct._XDisplay*, %struct.XErrorEvent*)* %call21, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 2), align 8, !tbaa !124
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.then.2
  br label %if.end.31

if.else:                                          ; preds = %if.then
  %32 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap23 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %32, i32 0, i32 65
  %33 = load i64, i64* %bpixmap23, align 8, !tbaa !62
  %cmp24 = icmp ne i64 %33, 0
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.else
  %34 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %34, i32 0, i32 58
  %35 = load %struct._XDisplay*, %struct._XDisplay** %dpy26, align 8, !tbaa !13
  %36 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap27 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %36, i32 0, i32 65
  %37 = load i64, i64* %bpixmap27, align 8, !tbaa !62
  %call28 = call i32 @XFreePixmap(%struct._XDisplay* %35, i64 %37) #4
  %38 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap29 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %38, i32 0, i32 65
  store i64 0, i64* %bpixmap29, align 8, !tbaa !62
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.22
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %entry
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %call33 = call i32 @x_set_buffer(%struct.gx_device_X_s* %39) #4
  %40 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %40, i32 0, i32 73
  %41 = load i64, i64* %dest, align 8, !tbaa !45
  %cmp34 = icmp eq i64 %41, 0
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.end.32
  %42 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap36 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %42, i32 0, i32 65
  %43 = load i64, i64* %bpixmap36, align 8, !tbaa !62
  %cmp37 = icmp ne i64 %43, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  %44 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap38 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %44, i32 0, i32 65
  %45 = load i64, i64* %bpixmap38, align 8, !tbaa !62
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win39 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 62
  %47 = load i64, i64* %win39, align 8, !tbaa !48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %45, %cond.true ], [ %47, %cond.false ]
  %48 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest40 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %48, i32 0, i32 73
  store i64 %cond, i64* %dest40, align 8, !tbaa !45
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end, %if.end.32
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest42 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %49, i32 0, i32 73
  %50 = load i64, i64* %dest42, align 8, !tbaa !45
  %cmp43 = icmp ne i64 %50, 0
  br i1 %cmp43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %if.end.41
  %51 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy45 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %51, i32 0, i32 58
  %52 = load %struct._XDisplay*, %struct._XDisplay** %dpy45, align 8, !tbaa !13
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 63
  %54 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !116
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 83
  %56 = load i64, i64* %background, align 8, !tbaa !85
  %call46 = call i32 @XSetForeground(%struct._XDisplay* %52, %struct._XGC* %54, i64 %56) #4
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy47 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 58
  %58 = load %struct._XDisplay*, %struct._XDisplay** %dpy47, align 8, !tbaa !13
  %59 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest48 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %59, i32 0, i32 73
  %60 = load i64, i64* %dest48, align 8, !tbaa !45
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc49 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 63
  %62 = load %struct._XGC*, %struct._XGC** %gc49, align 8, !tbaa !116
  %63 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width50 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %63, i32 0, i32 13
  %64 = load i32, i32* %width50, align 4, !tbaa !60
  %65 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height51 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height51, align 4, !tbaa !61
  %call52 = call i32 @XFillRectangle(%struct._XDisplay* %58, i64 %60, %struct._XGC* %62, i32 0, i32 0, i32 %64, i32 %66) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.44, %if.end.41
  %67 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap54 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %67, i32 0, i32 65
  %68 = load i64, i64* %bpixmap54, align 8, !tbaa !62
  %cmp55 = icmp ne i64 %68, 0
  br i1 %cmp55, label %if.then.56, label %if.end.75

if.then.56:                                       ; preds = %if.end.53
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview57 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 66
  %70 = load i32, i32* %ghostview57, align 4, !tbaa !46
  %tobool58 = icmp ne i32 %70, 0
  br i1 %tobool58, label %if.end.64, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  %71 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy60 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %71, i32 0, i32 58
  %72 = load %struct._XDisplay*, %struct._XDisplay** %dpy60, align 8, !tbaa !13
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 62
  %74 = load i64, i64* %win61, align 8, !tbaa !48
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap62 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 65
  %76 = load i64, i64* %bpixmap62, align 8, !tbaa !62
  %call63 = call i32 @XSetWindowBackgroundPixmap(%struct._XDisplay* %72, i64 %74, i64 %76) #4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.then.56
  %77 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy65 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %77, i32 0, i32 58
  %78 = load %struct._XDisplay*, %struct._XDisplay** %dpy65, align 8, !tbaa !13
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 63
  %80 = load %struct._XGC*, %struct._XGC** %gc66, align 8, !tbaa !116
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background67 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 83
  %82 = load i64, i64* %background67, align 8, !tbaa !85
  %call68 = call i32 @XSetForeground(%struct._XDisplay* %78, %struct._XGC* %80, i64 %82) #4
  %83 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy69 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %83, i32 0, i32 58
  %84 = load %struct._XDisplay*, %struct._XDisplay** %dpy69, align 8, !tbaa !13
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap70 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %85, i32 0, i32 65
  %86 = load i64, i64* %bpixmap70, align 8, !tbaa !62
  %87 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %87, i32 0, i32 63
  %88 = load %struct._XGC*, %struct._XGC** %gc71, align 8, !tbaa !116
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width72 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 13
  %90 = load i32, i32* %width72, align 4, !tbaa !60
  %91 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height73 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %91, i32 0, i32 14
  %92 = load i32, i32* %height73, align 4, !tbaa !61
  %call74 = call i32 @XFillRectangle(%struct._XDisplay* %84, i64 %86, %struct._XGC* %88, i32 0, i32 0, i32 %90, i32 %92) #4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.64, %if.end.53
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background76 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 83
  %94 = load i64, i64* %background76, align 8, !tbaa !85
  %95 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %back_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %95, i32 0, i32 81
  store i64 %94, i64* %back_color, align 8, !tbaa !126
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy77 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 58
  %97 = load %struct._XDisplay*, %struct._XDisplay** %dpy77, align 8, !tbaa !13
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc78 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 63
  %99 = load %struct._XGC*, %struct._XGC** %gc78, align 8, !tbaa !116
  %100 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background79 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %100, i32 0, i32 83
  %101 = load i64, i64* %background79, align 8, !tbaa !85
  %call80 = call i32 @XSetBackground(%struct._XDisplay* %97, %struct._XGC* %99, i64 %101) #4
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background81 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 83
  %103 = load i64, i64* %background81, align 8, !tbaa !85
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %104, i32 0, i32 82
  store i64 %103, i64* %fore_color, align 8, !tbaa !127
  %105 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy82 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %105, i32 0, i32 58
  %106 = load %struct._XDisplay*, %struct._XDisplay** %dpy82, align 8, !tbaa !13
  %107 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc83 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %107, i32 0, i32 63
  %108 = load %struct._XGC*, %struct._XGC** %gc83, align 8, !tbaa !116
  %109 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %109, i32 0, i32 83
  %110 = load i64, i64* %background84, align 8, !tbaa !85
  %call85 = call i32 @XSetForeground(%struct._XDisplay* %106, %struct._XGC* %108, i64 %110) #4
  %111 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %background86 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %111, i32 0, i32 83
  %112 = load i64, i64* %background86, align 8, !tbaa !85
  %113 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_and = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %113, i32 0, i32 75
  store i64 %112, i64* %colors_and, align 8, !tbaa !128
  %114 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_or = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %114, i32 0, i32 74
  store i64 %112, i64* %colors_or, align 8, !tbaa !129
  ret void
}

declare i32 @XMapWindow(%struct._XDisplay*, i64) #2

declare i32 @XSync(%struct._XDisplay*, i32) #2

declare i32 @XNextEvent(%struct._XDisplay*, %union._XEvent*) #2

declare i32 @XSetGraphicsExposures(%struct._XDisplay*, %struct._XGC*, i32) #2

declare i32 @XSelectInput(%struct._XDisplay*, i64, i64) #2

declare i64 @XCreatePixmap(%struct._XDisplay*, i64, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @x_catch_alloc(%struct._XDisplay* %dpy, %struct.XErrorEvent* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %dpy.addr = alloca %struct._XDisplay*, align 8
  %err.addr = alloca %struct.XErrorEvent*, align 8
  store %struct._XDisplay* %dpy, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  store %struct.XErrorEvent* %err, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %0 = load %struct.XErrorEvent*, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %error_code = getelementptr inbounds %struct.XErrorEvent, %struct.XErrorEvent* %0, i32 0, i32 4
  %1 = load i8, i8* %error_code, align 1, !tbaa !130
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 0), align 1, !tbaa !125
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 0), align 1, !tbaa !125
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32 (%struct._XDisplay*, %struct.XErrorEvent*)*, i32 (%struct._XDisplay*, %struct.XErrorEvent*)** getelementptr inbounds (%struct.xv_, %struct.xv_* @x_error_handler, i32 0, i32 2), align 8, !tbaa !124
  %4 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %5 = load %struct.XErrorEvent*, %struct.XErrorEvent** %err.addr, align 8, !tbaa !2
  %call = call i32 %3(%struct._XDisplay* %4, %struct.XErrorEvent* %5) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @XFreePixmap(%struct._XDisplay*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @x_set_buffer(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %buffered = alloca i32, align 4
  %procs2 = alloca %struct.gx_device_procs_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %buffer = alloca i8*, align 8
  %space = alloca i64, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !44
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %3 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !131
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !44
  %call = call %struct.gs_memory_s* %3(%struct.gs_memory_s* %5) #4
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %6 = bitcast i32* %buffered to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %space_params = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 38
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 0
  %8 = load i64, i64* %MaxBitmap, align 8, !tbaa !134
  %cmp = icmp sgt i64 %8, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %buffered, align 4, !tbaa !12
  %9 = bitcast %struct.gx_device_procs_s** %procs2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  br label %setup

setup:                                            ; preds = %cleanup.89, %entry
  %10 = load i32, i32* %buffered, align 4, !tbaa !12
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.92

if.then:                                          ; preds = %setup
  %11 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %target = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 43
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !135
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %14, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %cmp3 = icmp eq %struct.gx_device_memory_s* %15, null
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %17 = load i16, i16* %depth, align 2, !tbaa !136
  %conv5 = zext i16 %17 to i32
  %18 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %18, i32 0, i32 11
  %depth7 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 3
  %19 = load i16, i16* %depth7, align 2, !tbaa !145
  %conv8 = zext i16 %19 to i32
  %cmp9 = icmp ne i32 %conv5, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %20 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 11
  %depth13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 3
  %22 = load i16, i16* %depth13, align 2, !tbaa !145
  %conv14 = zext i16 %22 to i32
  %call15 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %conv14) #4
  store %struct.gx_device_memory_s* %call15, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !2
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !2
  %tobool16 = icmp ne %struct.gx_device_memory_s* %23, null
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then.11
  store i32 0, i32* %buffered, align 4, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.11
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %tobool18 = icmp ne %struct.gx_device_memory_s* %24, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %26 = bitcast %struct.gx_device_memory_s* %25 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %26, %struct.gx_device_s* null) #4
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 8
  %28 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !146
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %call21 = call i8* %28(%struct.gs_memory_s* %29, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #4
  %30 = bitcast i8* %call21 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %30, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %31 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %cmp22 = icmp eq %struct.gx_device_memory_s* %31, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  store i32 0, i32* %buffered, align 4, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !2
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %35 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %36 = bitcast %struct.gx_device_X_s* %35 to %struct.gx_device_s*
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %32, %struct.gx_device_memory_s* %33, %struct.gs_memory_s* %34, i32 0, %struct.gx_device_s* %36) #4
  %37 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %38 = bitcast %struct.gx_device_X_s* %37 to %struct.gx_device_forward_s*
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %40 = bitcast %struct.gx_device_memory_s* %39 to %struct.gx_device_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %38, %struct.gx_device_s* %40) #4
  %41 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %41, i32 0, i32 53
  store i32 1, i32* %is_buffered, align 4, !tbaa !147
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.17
  %42 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.89 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 13
  %44 = load i32, i32* %width, align 4, !tbaa !148
  %45 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width28 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width28, align 4, !tbaa !60
  %cmp29 = icmp ne i32 %44, %46
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.27
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height, align 4, !tbaa !149
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height32 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %49, i32 0, i32 14
  %50 = load i32, i32* %height32, align 4, !tbaa !61
  %cmp33 = icmp ne i32 %48, %50
  br i1 %cmp33, label %if.then.35, label %if.end.86

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.end.27
  %51 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = bitcast i64* %space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %54 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width36 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %54, i32 0, i32 13
  %55 = load i32, i32* %width36, align 4, !tbaa !60
  %56 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height37 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %56, i32 0, i32 14
  %57 = load i32, i32* %height37, align 4, !tbaa !61
  %call38 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %53, i32 %55, i32 %57, i64* %space) #4
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.46, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.then.35
  %58 = load i64, i64* %space, align 8, !tbaa !59
  %59 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %space_params42 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %59, i32 0, i32 38
  %MaxBitmap43 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params42, i32 0, i32 0
  %60 = load i64, i64* %MaxBitmap43, align 8, !tbaa !134
  %cmp44 = icmp ugt i64 %58, %60
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.41, %if.then.35
  store i32 0, i32* %buffered, align 4, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.47:                                        ; preds = %lor.lhs.false.41
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer48 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 55
  %62 = load i8*, i8** %buffer48, align 8, !tbaa !150
  %tobool49 = icmp ne i8* %62, null
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs50 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs50, i32 0, i32 1
  %64 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !151
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %66 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer51 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %66, i32 0, i32 55
  %67 = load i8*, i8** %buffer51, align 8, !tbaa !150
  %68 = load i64, i64* %space, align 8, !tbaa !59
  %conv52 = trunc i64 %68 to i32
  %call53 = call i8* %64(%struct.gs_memory_s* %65, i8* %67, i32 %conv52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 7
  %70 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !152
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %72 = load i64, i64* %space, align 8, !tbaa !59
  %conv55 = trunc i64 %72 to i32
  %call56 = call i8* %70(%struct.gs_memory_s* %71, i32 %conv55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call53, %cond.true ], [ %call56, %cond.false ]
  store i8* %cond, i8** %buffer, align 8, !tbaa !2
  %73 = load i8*, i8** %buffer, align 8, !tbaa !2
  %tobool57 = icmp ne i8* %73, null
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %cond.end
  store i32 0, i32* %buffered, align 4, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.59:                                        ; preds = %cond.end
  %74 = load i64, i64* %space, align 8, !tbaa !59
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer_size = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 56
  store i64 %74, i64* %buffer_size, align 8, !tbaa !153
  %76 = load i8*, i8** %buffer, align 8, !tbaa !2
  %77 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer60 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %77, i32 0, i32 55
  store i8* %76, i8** %buffer60, align 8, !tbaa !150
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 13
  %79 = load i32, i32* %width61, align 4, !tbaa !60
  %80 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %width62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %80, i32 0, i32 13
  store i32 %79, i32* %width62, align 4, !tbaa !148
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height63 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height63, align 4, !tbaa !61
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %height64 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 14
  store i32 %82, i32* %height64, align 4, !tbaa !149
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %icc_struct = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 39
  %85 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !154
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %icc_struct65 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %86, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %85, %struct.cmm_dev_profile_s** %icc_struct65, align 8, !tbaa !155
  br label %do.body

do.body:                                          ; preds = %if.end.59
  %87 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %icc_struct66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %87, i32 0, i32 39
  %88 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct66, align 8, !tbaa !154
  %tobool67 = icmp ne %struct.cmm_dev_profile_s* %88, null
  br i1 %tobool67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %do.body
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %icc_struct70 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 39
  %90 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct70, align 8, !tbaa !154
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %90, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %91 = load i64, i64* %ref_count, align 8, !tbaa !156
  %inc = add nsw i64 %91, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !156
  br label %do.body.71

do.body.71:                                       ; preds = %do.body.69
  br label %do.cond

do.cond:                                          ; preds = %do.body.71
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %color_info77 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 11
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info78 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 11
  %94 = bitcast %struct.gx_device_color_info_s* %color_info77 to i8*
  %95 = bitcast %struct.gx_device_color_info_s* %color_info78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 720, i32 8, i1 false), !tbaa.struct !158
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer79 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 55
  %97 = load i8*, i8** %buffer79, align 8, !tbaa !150
  %98 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %98, i32 0, i32 45
  store i8* %97, i8** %base, align 8, !tbaa !161
  %99 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %100 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height80 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %100, i32 0, i32 14
  %101 = load i32, i32* %height80, align 4, !tbaa !61
  %call81 = call i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s* %99, i32 %101) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %do.end.76, %if.then.58, %if.then.46
  %102 = bitcast i64* %space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.89 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.82
  br label %if.end.86

if.end.86:                                        ; preds = %cleanup.cont.85, %lor.lhs.false.31
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %105 = bitcast %struct.gx_device_X_s* %104 to %struct.gx_device_s*
  %call87 = call i64 @gx_device_white(%struct.gx_device_s* %105) #4
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %white = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 51
  store i64 %call87, i64* %white, align 8, !tbaa !162
  %107 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %108 = bitcast %struct.gx_device_X_s* %107 to %struct.gx_device_s*
  %call88 = call i64 @gx_device_black(%struct.gx_device_s* %108) #4
  %109 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %black = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %109, i32 0, i32 50
  store i64 %call88, i64* %black, align 8, !tbaa !163
  store %struct.gx_device_procs_s* getelementptr inbounds (%struct.gx_device_bbox_s, %struct.gx_device_bbox_s* @gs_bbox_device, i32 0, i32 42), %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.86, %cleanup.82, %cleanup
  %110 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %cleanup.dest.90 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.90, label %unreachable [
    i32 0, label %cleanup.cont.91
    i32 2, label %setup
  ]

cleanup.cont.91:                                  ; preds = %cleanup.89
  br label %if.end.103

if.else.92:                                       ; preds = %setup
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 2
  %112 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !164
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %114 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer94 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %114, i32 0, i32 55
  %115 = load i8*, i8** %buffer94, align 8, !tbaa !150
  call void %112(%struct.gs_memory_s* %113, i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #4
  %116 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer95 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %116, i32 0, i32 55
  store i8* null, i8** %buffer95, align 8, !tbaa !150
  %117 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %buffer_size96 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %117, i32 0, i32 56
  store i64 0, i64* %buffer_size96, align 8, !tbaa !153
  %118 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered97 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %118, i32 0, i32 53
  %119 = load i32, i32* %is_buffered97, align 4, !tbaa !147
  %tobool98 = icmp ne i32 %119, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.else.92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.100:                                       ; preds = %if.else.92
  %120 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %target101 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %120, i32 0, i32 43
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %target101, align 8, !tbaa !135
  %122 = bitcast %struct.gx_device_s* %121 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %122, %struct.gx_device_s* null) #4
  %123 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %124 = bitcast %struct.gx_device_X_s* %123 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %124, %struct.gx_device_s* null) #4
  %125 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered102 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %125, i32 0, i32 53
  store i32 0, i32* %is_buffered102, align 4, !tbaa !147
  store %struct.gx_device_procs_s* getelementptr inbounds (%struct.gx_device_X_s, %struct.gx_device_X_s* @gs_x11_device, i32 0, i32 42), %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %cleanup.cont.91
  %126 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %126, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs104, i32 0, i32 7
  %127 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !165
  %128 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_rectangle105 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %128, i32 0, i32 7
  %129 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle105, align 8, !tbaa !166
  %cmp106 = icmp ne i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %127, %129
  br i1 %cmp106, label %if.then.108, label %if.end.145

if.then.108:                                      ; preds = %if.end.103
  %130 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_rectangle109 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %130, i32 0, i32 7
  %131 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle109, align 8, !tbaa !166
  %132 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs110 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %132, i32 0, i32 42
  %fill_rectangle111 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs110, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %131, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle111, align 8, !tbaa !165
  %133 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %133, i32 0, i32 9
  %134 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !167
  %135 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs112 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %135, i32 0, i32 42
  %copy_mono113 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs112, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %134, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono113, align 8, !tbaa !168
  %136 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %136, i32 0, i32 10
  %137 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !169
  %138 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs114 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %138, i32 0, i32 42
  %copy_color115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %137, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color115, align 8, !tbaa !170
  %139 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %139, i32 0, i32 21
  %140 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !171
  %141 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs116 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %141, i32 0, i32 42
  %copy_alpha117 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %140, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha117, align 8, !tbaa !172
  %142 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %142, i32 0, i32 24
  %143 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !173
  %144 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs118 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %144, i32 0, i32 42
  %fill_path119 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 24
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %143, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path119, align 8, !tbaa !174
  %145 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %145, i32 0, i32 25
  %146 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !175
  %147 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs120 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %147, i32 0, i32 42
  %stroke_path121 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs120, i32 0, i32 25
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %146, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path121, align 8, !tbaa !176
  %148 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %148, i32 0, i32 26
  %149 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !177
  %150 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs122 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %150, i32 0, i32 42
  %fill_mask123 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs122, i32 0, i32 26
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* %149, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask123, align 8, !tbaa !178
  %151 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %151, i32 0, i32 27
  %152 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !179
  %153 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs124 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %153, i32 0, i32 42
  %fill_trapezoid125 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs124, i32 0, i32 27
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %152, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid125, align 8, !tbaa !180
  %154 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %154, i32 0, i32 28
  %155 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !181
  %156 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs126 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %156, i32 0, i32 42
  %fill_parallelogram127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs126, i32 0, i32 28
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %155, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram127, align 8, !tbaa !182
  %157 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %157, i32 0, i32 29
  %158 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !183
  %159 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs128 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %159, i32 0, i32 42
  %fill_triangle129 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs128, i32 0, i32 29
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %158, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle129, align 8, !tbaa !184
  %160 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %160, i32 0, i32 30
  %161 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !185
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 42
  %draw_thin_line131 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs130, i32 0, i32 30
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %161, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line131, align 8, !tbaa !186
  %163 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %163, i32 0, i32 34
  %164 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !187
  %165 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs132 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %165, i32 0, i32 42
  %strip_tile_rectangle133 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs132, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %164, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle133, align 8, !tbaa !188
  %166 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %166, i32 0, i32 35
  %167 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !189
  %168 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs134 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %168, i32 0, i32 42
  %strip_copy_rop135 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs134, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %167, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop135, align 8, !tbaa !190
  %169 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %169, i32 0, i32 37
  %170 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !191
  %171 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs136 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %171, i32 0, i32 42
  %begin_typed_image137 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs136, i32 0, i32 37
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %170, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image137, align 8, !tbaa !192
  %172 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs2, align 8, !tbaa !2
  %text_begin = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %172, i32 0, i32 42
  %173 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin, align 8, !tbaa !193
  %174 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %procs138 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %174, i32 0, i32 42
  %text_begin139 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs138, i32 0, i32 42
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %173, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin139, align 8, !tbaa !194
  %175 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered140 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %175, i32 0, i32 53
  %176 = load i32, i32* %is_buffered140, align 4, !tbaa !147
  %tobool141 = icmp ne i32 %176, 0
  br i1 %tobool141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.then.108
  %177 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %178 = bitcast %struct.gx_device_X_s* %177 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %178) #4
  %179 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %180 = bitcast %struct.gx_device_X_s* %179 to %struct.gx_device_forward_s*
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %180) #4
  %181 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %box_procs = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %181, i32 0, i32 46
  %182 = bitcast %struct.gx_device_bbox_procs_s* %box_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* bitcast (%struct.gx_device_bbox_procs_s* @gdev_x_box_procs to i8*), i64 32, i32 8, i1 false), !tbaa.struct !195
  %183 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %184 = bitcast %struct.gx_device_X_s* %183 to i8*
  %185 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %box_proc_data = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %185, i32 0, i32 47
  store i8* %184, i8** %box_proc_data, align 8, !tbaa !196
  br label %if.end.144

if.else.143:                                      ; preds = %if.then.108
  %186 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %187 = bitcast %struct.gx_device_X_s* %186 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %187) #4
  %188 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %189 = bitcast %struct.gx_device_X_s* %188 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %189) #4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.103
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.145, %if.then.99
  %190 = bitcast %struct.gx_device_procs_s** %procs2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32* %buffered to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = load i32, i32* %retval
  ret i32 %193

unreachable:                                      ; preds = %cleanup.89
  unreachable
}

declare i32 @XSetForeground(%struct._XDisplay*, %struct._XGC*, i64) #2

declare i32 @XFillRectangle(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i32, i32) #2

declare i32 @XSetWindowBackgroundPixmap(%struct._XDisplay*, i64, i64) #2

declare i32 @XSetBackground(%struct._XDisplay*, %struct._XGC*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_x_finish_copydevice(%struct.gx_device_s* %dev, %struct.gx_device_s* %from_dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %from_dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gx_device_s* %from_dev, %struct.gx_device_s** %from_dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_open = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 9
  store i32 0, i32* %is_open, align 4, !tbaa !197
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %target = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target, align 8, !tbaa !135
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %buffer = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 55
  store i8* null, i8** %buffer, align 8, !tbaa !150
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 58
  store %struct._XDisplay* null, %struct._XDisplay** %dpy, align 8, !tbaa !13
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 59
  store %struct.Screen* null, %struct.Screen** %scr, align 8, !tbaa !51
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 60
  store %struct.XVisualInfo* null, %struct.XVisualInfo** %vinfo, align 8, !tbaa !81
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 62
  store i64 0, i64* %win, align 8, !tbaa !48
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 65
  store i64 0, i64* %bpixmap, align 8, !tbaa !62
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %11, i32 0, i32 73
  store i64 0, i64* %dest, align 8, !tbaa !45
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 76
  %pixmap = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp, i32 0, i32 0
  store i64 0, i64* %pixmap, align 8, !tbaa !198
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 77
  %pixmap1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht, i32 0, i32 0
  store i64 0, i64* %pixmap1, align 8, !tbaa !111
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_buffered = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 53
  store i32 0, i32* %is_buffered, align 4, !tbaa !147
  %15 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** getelementptr inbounds (%struct.gx_device_X_s, %struct.gx_device_X_s* @gs_x11_device, i32 0, i32 42, i32 7), align 8, !tbaa !165
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %15, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !165
  %17 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_x_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %code = alloca i32, align 4
  %id = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call = call i32 @gx_default_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !12
  %6 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %pwin = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 64
  %8 = load i64, i64* %pwin, align 8, !tbaa !47
  store i64 %8, i64* %id, align 8, !tbaa !59
  %9 = load i32, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call1 = call i32 @param_write_long(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64* %id) #4
  store i32 %call1, i32* %code, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %IsPageDevice = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 54
  %call4 = call i32 @param_write_bool(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32* %IsPageDevice) #4
  store i32 %call4, i32* %code, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempPixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 98
  %call7 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32* %MaxTempPixmap) #4
  store i32 %call7, i32* %code, align 4, !tbaa !12
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempImage = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 99
  %call10 = call i32 @param_write_int(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32* %MaxTempImage) #4
  store i32 %call10, i32* %code, align 4, !tbaa !12
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.9
  %17 = load i32, i32* %code, align 4, !tbaa !12
  %18 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %17
}

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_x_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %values = alloca %struct.gx_device_X_s, align 8
  %orig_MaxBitmap = alloca i32, align 4
  %pwin = alloca i64, align 8
  %save_is_page = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %clear_window = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %area_width = alloca i32, align 4
  %area_height = alloca i32, align 4
  %dw = alloca i32, align 4
  %dh = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast %struct.gx_device_X_s* %values to i8*
  call void @llvm.lifetime.start(i64 3216, i8* %3) #1
  %4 = bitcast i32* %orig_MaxBitmap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %space_params = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 38
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 0
  %6 = load i64, i64* %MaxBitmap, align 8, !tbaa !134
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %orig_MaxBitmap, align 4, !tbaa !12
  %7 = bitcast i64* %pwin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %pwin1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 64
  %9 = load i64, i64* %pwin1, align 8, !tbaa !47
  store i64 %9, i64* %pwin, align 8, !tbaa !59
  %10 = bitcast i32* %save_is_page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %IsPageDevice = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %11, i32 0, i32 54
  %12 = load i32, i32* %IsPageDevice, align 4, !tbaa !199
  store i32 %12, i32* %save_is_page, align 4, !tbaa !12
  %13 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %ecode, align 4, !tbaa !12
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %clear_window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %clear_window, align 4, !tbaa !12
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %17 = bitcast %struct.gx_device_X_s* %values to i8*
  %18 = bitcast %struct.gx_device_X_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 3216, i32 8, i1 false), !tbaa.struct !200
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %20 = load i32, i32* %ecode, align 4, !tbaa !12
  %call = call i32 @param_put_long(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64* %pwin, i32 %20) #4
  store i32 %call, i32* %ecode, align 4, !tbaa !12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %IsPageDevice2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 54
  %22 = load i32, i32* %ecode, align 4, !tbaa !12
  %call3 = call i32 @param_put_bool(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32* %IsPageDevice2, i32 %22) #4
  store i32 %call3, i32* %ecode, align 4, !tbaa !12
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %MaxTempPixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 98
  %24 = load i32, i32* %ecode, align 4, !tbaa !12
  %call4 = call i32 @param_put_int(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32* %MaxTempPixmap, i32 %24) #4
  store i32 %call4, i32* %ecode, align 4, !tbaa !12
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %MaxTempImage = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 99
  %26 = load i32, i32* %ecode, align 4, !tbaa !12
  %call5 = call i32 @param_put_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32* %MaxTempImage, i32 %26) #4
  store i32 %call5, i32* %ecode, align 4, !tbaa !12
  %27 = load i32, i32* %ecode, align 4, !tbaa !12
  %cmp = icmp slt i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %ecode, align 4, !tbaa !12
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end:                                           ; preds = %entry
  %29 = load i64, i64* %pwin, align 8, !tbaa !59
  %30 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %pwin7 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %30, i32 0, i32 64
  %31 = load i64, i64* %pwin7, align 8, !tbaa !47
  %cmp8 = icmp eq i64 %29, %31
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 9
  store i32 0, i32* %is_open, align 4, !tbaa !201
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %IsPageDevice12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 54
  %33 = load i32, i32* %IsPageDevice12, align 4, !tbaa !199
  %34 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %IsPageDevice13 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %34, i32 0, i32 54
  store i32 %33, i32* %IsPageDevice13, align 4, !tbaa !199
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call14 = call i32 @gx_default_put_params(%struct.gx_device_s* %35, %struct.gs_param_list_s* %36) #4
  store i32 %call14, i32* %code, align 4, !tbaa !12
  %is_open15 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 9
  %37 = load i32, i32* %is_open15, align 4, !tbaa !197
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %is_open16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 9
  store i32 %37, i32* %is_open16, align 4, !tbaa !201
  %39 = load i32, i32* %code, align 4, !tbaa !12
  %cmp17 = icmp slt i32 %39, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.11
  %40 = load i32, i32* %save_is_page, align 4, !tbaa !12
  %41 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %IsPageDevice20 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %41, i32 0, i32 54
  store i32 %40, i32* %IsPageDevice20, align 4, !tbaa !199
  %42 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.21:                                        ; preds = %if.end.11
  %43 = load i64, i64* %pwin, align 8, !tbaa !59
  %44 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %pwin22 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %44, i32 0, i32 64
  %45 = load i64, i64* %pwin22, align 8, !tbaa !47
  %cmp23 = icmp ne i64 %43, %45
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.21
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_open26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 9
  %47 = load i32, i32* %is_open26, align 4, !tbaa !197
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.25
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call28 = call i32 @gs_closedevice(%struct.gx_device_s* %48) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  %49 = load i64, i64* %pwin, align 8, !tbaa !59
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %pwin30 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 64
  store i64 %49, i64* %pwin30, align 8, !tbaa !47
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.21
  %51 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_open32 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %51, i32 0, i32 9
  %52 = load i32, i32* %is_open32, align 4, !tbaa !197
  %tobool33 = icmp ne i32 %52, 0
  br i1 %tobool33, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.31
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 66
  %54 = load i32, i32* %ghostview, align 4, !tbaa !46
  %tobool34 = icmp ne i32 %54, 0
  br i1 %tobool34, label %if.then.35, label %if.end.59

if.then.35:                                       ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 13
  %55 = load i32, i32* %width, align 4, !tbaa !60
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 13
  store i32 %55, i32* %width36, align 4, !tbaa !203
  %height = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 14
  %57 = load i32, i32* %height, align 4, !tbaa !61
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 14
  store i32 %57, i32* %height37, align 4, !tbaa !204
  %HWResolution = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %59 = load float, float* %arrayidx, align 4, !tbaa !63
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 22
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution38, i32 0, i64 0
  store float %59, float* %arrayidx39, align 4, !tbaa !63
  %HWResolution40 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution40, i32 0, i64 1
  %61 = load float, float* %arrayidx41, align 4, !tbaa !63
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 22
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution42, i32 0, i64 1
  store float %61, float* %arrayidx43, align 4, !tbaa !63
  %HWResolution44 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution44, i32 0, i64 0
  %63 = load float, float* %arrayidx45, align 4, !tbaa !63
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution46 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 22
  %arrayidx47 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution46, i32 0, i64 0
  store float %63, float* %arrayidx47, align 4, !tbaa !63
  %HWResolution48 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx49 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution48, i32 0, i64 1
  %65 = load float, float* %arrayidx49, align 4, !tbaa !63
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution50 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 22
  %arrayidx51 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution50, i32 0, i64 1
  store float %65, float* %arrayidx51, align 4, !tbaa !63
  %MediaSize = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 19
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %67 = load float, float* %arrayidx52, align 4, !tbaa !63
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize53 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 19
  %arrayidx54 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize53, i32 0, i64 0
  store float %67, float* %arrayidx54, align 4, !tbaa !63
  %MediaSize55 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 19
  %arrayidx56 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize55, i32 0, i64 1
  %69 = load float, float* %arrayidx56, align 4, !tbaa !63
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 19
  %arrayidx58 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize57, i32 0, i64 1
  store float %69, float* %arrayidx58, align 4, !tbaa !63
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.35, %land.lhs.true, %if.end.31
  %71 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_open60 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %71, i32 0, i32 9
  %72 = load i32, i32* %is_open60, align 4, !tbaa !197
  %tobool61 = icmp ne i32 %72, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.205

land.lhs.true.62:                                 ; preds = %if.end.59
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ghostview63 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 66
  %74 = load i32, i32* %ghostview63, align 4, !tbaa !46
  %tobool64 = icmp ne i32 %74, 0
  br i1 %tobool64, label %if.end.205, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %land.lhs.true.62
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 13
  %76 = load i32, i32* %width66, align 4, !tbaa !203
  %width67 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 13
  %77 = load i32, i32* %width67, align 4, !tbaa !60
  %cmp68 = icmp ne i32 %76, %77
  br i1 %cmp68, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.65
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height70 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height70, align 4, !tbaa !204
  %height71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 14
  %80 = load i32, i32* %height71, align 4, !tbaa !61
  %cmp72 = icmp ne i32 %79, %80
  br i1 %cmp72, label %if.then.88, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 22
  %arrayidx76 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution75, i32 0, i64 0
  %82 = load float, float* %arrayidx76, align 4, !tbaa !63
  %HWResolution77 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx78 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution77, i32 0, i64 0
  %83 = load float, float* %arrayidx78, align 4, !tbaa !63
  %cmp79 = fcmp une float %82, %83
  br i1 %cmp79, label %if.then.88, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.74
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution82 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 22
  %arrayidx83 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution82, i32 0, i64 1
  %85 = load float, float* %arrayidx83, align 4, !tbaa !63
  %HWResolution84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution84, i32 0, i64 1
  %86 = load float, float* %arrayidx85, align 4, !tbaa !63
  %cmp86 = fcmp une float %85, %86
  br i1 %cmp86, label %if.then.88, label %if.end.205

if.then.88:                                       ; preds = %lor.lhs.false.81, %lor.lhs.false.74, %lor.lhs.false, %land.lhs.true.65
  %87 = bitcast i32* %area_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 59
  %89 = load %struct.Screen*, %struct.Screen** %scr, align 8, !tbaa !51
  %width89 = getelementptr inbounds %struct.Screen, %struct.Screen* %89, i32 0, i32 3
  %90 = load i32, i32* %width89, align 4, !tbaa !86
  store i32 %90, i32* %area_width, align 4, !tbaa !12
  %91 = bitcast i32* %area_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %scr90 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %92, i32 0, i32 59
  %93 = load %struct.Screen*, %struct.Screen** %scr90, align 8, !tbaa !51
  %height91 = getelementptr inbounds %struct.Screen, %struct.Screen* %93, i32 0, i32 4
  %94 = load i32, i32* %height91, align 4, !tbaa !87
  store i32 %94, i32* %area_height, align 4, !tbaa !12
  %95 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @x_get_work_area(%struct.gx_device_X_s* %97, i32* %area_width, i32* %area_height) #4
  %HWResolution92 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx93 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution92, i32 0, i64 0
  %98 = load float, float* %arrayidx93, align 4, !tbaa !63
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution94 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 22
  %arrayidx95 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution94, i32 0, i64 0
  store float %98, float* %arrayidx95, align 4, !tbaa !63
  %HWResolution96 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx97 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution96, i32 0, i64 1
  %100 = load float, float* %arrayidx97, align 4, !tbaa !63
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 22
  %arrayidx99 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution98, i32 0, i64 1
  store float %100, float* %arrayidx99, align 4, !tbaa !63
  %HWResolution100 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx101 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution100, i32 0, i64 0
  %102 = load float, float* %arrayidx101, align 4, !tbaa !63
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution102 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 22
  %arrayidx103 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution102, i32 0, i64 0
  store float %102, float* %arrayidx103, align 4, !tbaa !63
  %HWResolution104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 22
  %arrayidx105 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution104, i32 0, i64 1
  %104 = load float, float* %arrayidx105, align 4, !tbaa !63
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 22
  %arrayidx107 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution106, i32 0, i64 1
  store float %104, float* %arrayidx107, align 4, !tbaa !63
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width108 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 13
  %107 = load i32, i32* %width108, align 4, !tbaa !203
  %108 = load i32, i32* %area_width, align 4, !tbaa !12
  %cmp109 = icmp slt i32 %107, %108
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.88
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width111 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 13
  %110 = load i32, i32* %width111, align 4, !tbaa !203
  br label %cond.end

cond.false:                                       ; preds = %if.then.88
  %111 = load i32, i32* %area_width, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %110, %cond.true ], [ %111, %cond.false ]
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %112, i32 0, i32 13
  store i32 %cond, i32* %width112, align 4, !tbaa !203
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height113 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 14
  %114 = load i32, i32* %height113, align 4, !tbaa !204
  %115 = load i32, i32* %area_height, align 4, !tbaa !12
  %cmp114 = icmp slt i32 %114, %115
  br i1 %cmp114, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %cond.end
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %116, i32 0, i32 14
  %117 = load i32, i32* %height117, align 4, !tbaa !204
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end
  %118 = load i32, i32* %area_height, align 4, !tbaa !12
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.116
  %cond120 = phi i32 [ %117, %cond.true.116 ], [ %118, %cond.false.118 ]
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 14
  store i32 %cond120, i32* %height121, align 4, !tbaa !204
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 13
  %121 = load i32, i32* %width122, align 4, !tbaa !203
  %cmp123 = icmp sle i32 %121, 0
  br i1 %cmp123, label %if.then.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %cond.end.119
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height126 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %122, i32 0, i32 14
  %123 = load i32, i32* %height126, align 4, !tbaa !204
  %cmp127 = icmp sle i32 %123, 0
  br i1 %cmp127, label %if.then.129, label %if.end.136

if.then.129:                                      ; preds = %lor.lhs.false.125, %cond.end.119
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !205
  %call130 = call i8* @gs_program_name() #4
  %call131 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %125, i8* %call130, i64 %call131) #4
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %memory132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %126, i32 0, i32 3
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory132, align 8, !tbaa !205
  %128 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width133 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %128, i32 0, i32 13
  %129 = load i32, i32* %width133, align 4, !tbaa !203
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %130, i32 0, i32 14
  %131 = load i32, i32* %height134, align 4, !tbaa !204
  %132 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %132, i32 0, i32 2
  %133 = load i8*, i8** %dname, align 8, !tbaa !206
  %call135 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0), i32 %129, i32 %131, i8* %133) #4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %lor.lhs.false.125
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width137 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 13
  %135 = load i32, i32* %width137, align 4, !tbaa !203
  %conv138 = sitofp i32 %135 to float
  %136 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %HWResolution139 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %136, i32 0, i32 22
  %arrayidx140 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution139, i32 0, i64 0
  %137 = load float, float* %arrayidx140, align 4, !tbaa !63
  %div = fdiv float %conv138, %137
  %mul = fmul float %div, 7.200000e+01
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize141 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 19
  %arrayidx142 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize141, i32 0, i64 0
  store float %mul, float* %arrayidx142, align 4, !tbaa !63
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height143 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 14
  %140 = load i32, i32* %height143, align 4, !tbaa !204
  %conv144 = sitofp i32 %140 to float
  %141 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %HWResolution145 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %141, i32 0, i32 22
  %arrayidx146 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution145, i32 0, i64 1
  %142 = load float, float* %arrayidx146, align 4, !tbaa !63
  %div147 = fdiv float %conv144, %142
  %mul148 = fmul float %div147, 7.200000e+01
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize149 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 19
  %arrayidx150 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize149, i32 0, i64 1
  store float %mul148, float* %arrayidx150, align 4, !tbaa !63
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width151 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %144, i32 0, i32 13
  %145 = load i32, i32* %width151, align 4, !tbaa !203
  %width152 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 13
  %146 = load i32, i32* %width152, align 4, !tbaa !60
  %sub = sub nsw i32 %145, %146
  store i32 %sub, i32* %dw, align 4, !tbaa !12
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 14
  %148 = load i32, i32* %height153, align 4, !tbaa !204
  %height154 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 14
  %149 = load i32, i32* %height154, align 4, !tbaa !61
  %sub155 = sub nsw i32 %148, %149
  store i32 %sub155, i32* %dh, align 4, !tbaa !12
  %150 = load i32, i32* %dw, align 4, !tbaa !12
  %tobool156 = icmp ne i32 %150, 0
  br i1 %tobool156, label %if.then.159, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.136
  %151 = load i32, i32* %dh, align 4, !tbaa !12
  %tobool158 = icmp ne i32 %151, 0
  br i1 %tobool158, label %if.then.159, label %if.end.171

if.then.159:                                      ; preds = %lor.lhs.false.157, %if.end.136
  %152 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %152, i32 0, i32 58
  %153 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !13
  %154 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %154, i32 0, i32 62
  %155 = load i64, i64* %win, align 8, !tbaa !48
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width160 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %156, i32 0, i32 13
  %157 = load i32, i32* %width160, align 4, !tbaa !203
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height161 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %158, i32 0, i32 14
  %159 = load i32, i32* %height161, align 4, !tbaa !204
  %call162 = call i32 @XResizeWindow(%struct._XDisplay* %153, i64 %155, i32 %157, i32 %159) #4
  %160 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %160, i32 0, i32 65
  %161 = load i64, i64* %bpixmap, align 8, !tbaa !62
  %cmp163 = icmp ne i64 %161, 0
  br i1 %cmp163, label %if.then.165, label %if.end.170

if.then.165:                                      ; preds = %if.then.159
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy166 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 58
  %163 = load %struct._XDisplay*, %struct._XDisplay** %dpy166, align 8, !tbaa !13
  %164 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap167 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %164, i32 0, i32 65
  %165 = load i64, i64* %bpixmap167, align 8, !tbaa !62
  %call168 = call i32 @XFreePixmap(%struct._XDisplay* %163, i64 %165) #4
  %166 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap169 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %166, i32 0, i32 65
  store i64 0, i64* %bpixmap169, align 8, !tbaa !62
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.165, %if.then.159
  %167 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %167, i32 0, i32 73
  store i64 0, i64* %dest, align 8, !tbaa !45
  store i32 1, i32* %clear_window, align 4, !tbaa !12
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %lor.lhs.false.157
  %168 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %168, i32 0, i32 68
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 1
  %169 = load float, float* %xy, align 4, !tbaa !65
  %cmp172 = fcmp oeq float %169, 0.000000e+00
  br i1 %cmp172, label %if.then.174, label %if.else.185

if.then.174:                                      ; preds = %if.end.171
  %170 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix175 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %170, i32 0, i32 68
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix175, i32 0, i32 0
  %171 = load float, float* %xx, align 4, !tbaa !64
  %cmp176 = fcmp olt float %171, 0.000000e+00
  br i1 %cmp176, label %if.then.178, label %if.else

if.then.178:                                      ; preds = %if.then.174
  %172 = load i32, i32* %dw, align 4, !tbaa !12
  %conv179 = sitofp i32 %172 to float
  %173 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix180 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %173, i32 0, i32 68
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix180, i32 0, i32 4
  %174 = load float, float* %tx, align 4, !tbaa !68
  %add = fadd float %174, %conv179
  store float %add, float* %tx, align 4, !tbaa !68
  br label %if.end.184

if.else:                                          ; preds = %if.then.174
  %175 = load i32, i32* %dh, align 4, !tbaa !12
  %conv181 = sitofp i32 %175 to float
  %176 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix182 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %176, i32 0, i32 68
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix182, i32 0, i32 5
  %177 = load float, float* %ty, align 4, !tbaa !69
  %add183 = fadd float %177, %conv181
  store float %add183, float* %ty, align 4, !tbaa !69
  br label %if.end.184

if.end.184:                                       ; preds = %if.else, %if.then.178
  br label %if.end.201

if.else.185:                                      ; preds = %if.end.171
  %178 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix186 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %178, i32 0, i32 68
  %xy187 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix186, i32 0, i32 1
  %179 = load float, float* %xy187, align 4, !tbaa !65
  %cmp188 = fcmp olt float %179, 0.000000e+00
  br i1 %cmp188, label %if.then.190, label %if.else.199

if.then.190:                                      ; preds = %if.else.185
  %180 = load i32, i32* %dh, align 4, !tbaa !12
  %conv191 = sitofp i32 %180 to float
  %181 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix192 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %181, i32 0, i32 68
  %tx193 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix192, i32 0, i32 4
  %182 = load float, float* %tx193, align 4, !tbaa !68
  %add194 = fadd float %182, %conv191
  store float %add194, float* %tx193, align 4, !tbaa !68
  %183 = load i32, i32* %dw, align 4, !tbaa !12
  %conv195 = sitofp i32 %183 to float
  %184 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix196 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %184, i32 0, i32 68
  %ty197 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix196, i32 0, i32 5
  %185 = load float, float* %ty197, align 4, !tbaa !69
  %add198 = fadd float %185, %conv195
  store float %add198, float* %ty197, align 4, !tbaa !69
  br label %if.end.200

if.else.199:                                      ; preds = %if.else.185
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.199, %if.then.190
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.184
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.201, %if.then.129
  %186 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %area_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %area_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.223 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.205

if.end.205:                                       ; preds = %cleanup.cont, %lor.lhs.false.81, %land.lhs.true.62, %if.end.59
  %MaxTempPixmap206 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 98
  %190 = load i32, i32* %MaxTempPixmap206, align 4, !tbaa !207
  %191 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempPixmap207 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %191, i32 0, i32 98
  store i32 %190, i32* %MaxTempPixmap207, align 4, !tbaa !207
  %MaxTempImage208 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %values, i32 0, i32 99
  %192 = load i32, i32* %MaxTempImage208, align 4, !tbaa !208
  %193 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempImage209 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %193, i32 0, i32 99
  store i32 %192, i32* %MaxTempImage209, align 4, !tbaa !208
  %194 = load i32, i32* %clear_window, align 4, !tbaa !12
  %tobool210 = icmp ne i32 %194, 0
  br i1 %tobool210, label %if.then.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.end.205
  %195 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %space_params212 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %195, i32 0, i32 38
  %MaxBitmap213 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params212, i32 0, i32 0
  %196 = load i64, i64* %MaxBitmap213, align 8, !tbaa !134
  %197 = load i32, i32* %orig_MaxBitmap, align 4, !tbaa !12
  %conv214 = sext i32 %197 to i64
  %cmp215 = icmp ne i64 %196, %conv214
  br i1 %cmp215, label %if.then.217, label %if.end.222

if.then.217:                                      ; preds = %lor.lhs.false.211, %if.end.205
  %198 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %is_open218 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %198, i32 0, i32 9
  %199 = load i32, i32* %is_open218, align 4, !tbaa !197
  %tobool219 = icmp ne i32 %199, 0
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.then.217
  %200 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @gdev_x_clear_window(%struct.gx_device_X_s* %200) #4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.then.217
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %lor.lhs.false.211
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

cleanup.223:                                      ; preds = %if.end.222, %cleanup, %if.then.19, %if.then
  %201 = bitcast i32* %clear_window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %save_is_page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i64* %pwin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %orig_MaxBitmap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.gx_device_X_s* %values to i8*
  call void @llvm.lifetime.end(i64 3216, i8* %207) #1
  %208 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = load i32, i32* %retval
  ret i32 %209
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @param_put_long(%struct.gs_param_list_s*, i8*, i64*, i32) #2

declare i32 @param_put_bool(%struct.gs_param_list_s*, i8*, i32*, i32) #2

declare i32 @param_put_int(%struct.gs_param_list_s*, i8*, i32*, i32) #2

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

declare i32 @XResizeWindow(%struct._XDisplay*, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_x_close(%struct.gx_device_X_s* %xdev) #0 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 66
  %1 = load i32, i32* %ghostview, align 4, !tbaa !46
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %DONE = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 71
  %4 = load i64, i64* %DONE, align 8, !tbaa !121
  call void @gdev_x_send_event(%struct.gx_device_X_s* %2, i64 %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 60
  %6 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !81
  %tobool1 = icmp ne %struct.XVisualInfo* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 60
  %8 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo3, align 8, !tbaa !81
  %9 = bitcast %struct.XVisualInfo* %8 to i8*
  %call = call i32 @XFree(i8* %9) #4
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 60
  store %struct.XVisualInfo* null, %struct.XVisualInfo** %vinfo4, align 8, !tbaa !81
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @gdev_x_free_colors(%struct.gx_device_X_s* %11) #4
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 61
  %13 = load i64, i64* %cmap, align 8, !tbaa !56
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 59
  %15 = load %struct.Screen*, %struct.Screen** %scr, align 8, !tbaa !51
  %cmap6 = getelementptr inbounds %struct.Screen, %struct.Screen* %15, i32 0, i32 12
  %16 = load i64, i64* %cmap6, align 8, !tbaa !76
  %cmp = icmp ne i64 %13, %16
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 58
  %18 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !13
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %cmap8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 61
  %20 = load i64, i64* %cmap8, align 8, !tbaa !56
  %call9 = call i32 @XFreeColormap(%struct._XDisplay* %18, i64 %20) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 58
  %22 = load %struct._XDisplay*, %struct._XDisplay** %dpy11, align 8, !tbaa !13
  %call12 = call i32 @XCloseDisplay(%struct._XDisplay* %22) #4
  ret i32 0
}

declare void @gdev_x_send_event(%struct.gx_device_X_s*, i64) #2

declare i32 @XFree(i8*) #2

declare void @gdev_x_free_colors(%struct.gx_device_X_s*) #2

declare i32 @XFreeColormap(%struct._XDisplay*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64* @x_get_win_property(%struct.gx_device_X_s* %xdev, i8* %atom_name) #0 {
entry:
  %retval = alloca i64*, align 8
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %atom_name.addr = alloca i8*, align 8
  %r_type = alloca i64, align 8
  %r_format = alloca i32, align 4
  %count = alloca i64, align 8
  %bytes_remain = alloca i64, align 8
  %prop = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i8* %atom_name, i8** %atom_name.addr, align 8, !tbaa !2
  %0 = bitcast i64* %r_type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %r_type, align 8, !tbaa !59
  %1 = bitcast i32* %r_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %r_format, align 4, !tbaa !12
  %2 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %count, align 8, !tbaa !59
  %3 = bitcast i64* %bytes_remain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %prop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 58
  %6 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !13
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %scr = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 59
  %8 = load %struct.Screen*, %struct.Screen** %scr, align 8, !tbaa !51
  %root = getelementptr inbounds %struct.Screen, %struct.Screen* %8, i32 0, i32 2
  %9 = load i64, i64* %root, align 8, !tbaa !79
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 58
  %11 = load %struct._XDisplay*, %struct._XDisplay** %dpy1, align 8, !tbaa !13
  %12 = load i8*, i8** %atom_name.addr, align 8, !tbaa !2
  %call = call i64 @XInternAtom(%struct._XDisplay* %11, i8* %12, i32 0) #4
  %call2 = call i32 @XGetWindowProperty(%struct._XDisplay* %6, i64 %9, i64 %call, i64 0, i64 4, i32 0, i64 6, i64* %r_type, i32* %r_format, i64* %count, i64* %bytes_remain, i8** %prop) #4
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i8*, i8** %prop, align 8, !tbaa !2
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %14 = load i64, i64* %r_type, align 8, !tbaa !59
  %cmp4 = icmp eq i64 %14, 6
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %15 = load i32, i32* %r_format, align 4, !tbaa !12
  %cmp6 = icmp eq i32 %15, 32
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %16 = load i64, i64* %count, align 8, !tbaa !59
  %cmp8 = icmp eq i64 %16, 4
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %17 = load i64, i64* %bytes_remain, align 8, !tbaa !59
  %cmp10 = icmp eq i64 %17, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %18 = load i8*, i8** %prop, align 8, !tbaa !2
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %entry
  %20 = load i8*, i8** %prop, align 8, !tbaa !2
  %call11 = call i32 @XFree(i8* %20) #4
  store i64* null, i64** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i8** %prop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %bytes_remain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %r_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i64* %r_type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i64*, i64** %retval
  ret i64* %26
}

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #2

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #2

declare i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s*, i32) #2

declare i64 @gx_device_white(%struct.gx_device_s*) #2

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s*) #2

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !4, i64 33}
!7 = !{!"", !8, i64 0, !3, i64 8, !9, i64 16, !9, i64 24, !4, i64 32, !4, i64 33, !4, i64 34}
!8 = !{!"int", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!11, !3, i64 8}
!11 = !{!"xv_", !4, i64 0, !3, i64 8, !3, i64 16}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !3, i64 1992}
!14 = !{!"gx_device_X_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !15, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !16, i64 96, !19, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !9, i64 928, !9, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !9, i64 968, !9, i64 976, !20, i64 984, !8, i64 1052, !8, i64 1056, !21, i64 1064, !3, i64 1104, !4, i64 1112, !23, i64 1120, !24, i64 1144, !3, i64 1728, !8, i64 1736, !8, i64 1740, !25, i64 1744, !3, i64 1776, !8, i64 1784, !26, i64 1788, !9, i64 1808, !9, i64 1816, !9, i64 1824, !8, i64 1832, !8, i64 1836, !3, i64 1840, !9, i64 1848, !28, i64 1856, !3, i64 1992, !3, i64 2000, !3, i64 2008, !9, i64 2016, !9, i64 2024, !3, i64 2032, !9, i64 2040, !9, i64 2048, !8, i64 2056, !9, i64 2064, !30, i64 2072, !9, i64 2096, !9, i64 2104, !9, i64 2112, !32, i64 2120, !9, i64 2160, !9, i64 2168, !9, i64 2176, !35, i64 2184, !36, i64 2208, !8, i64 2264, !8, i64 2268, !9, i64 2272, !9, i64 2280, !9, i64 2288, !9, i64 2296, !9, i64 2304, !37, i64 2312, !9, i64 2808, !17, i64 2816, !3, i64 2824, !8, i64 2832, !8, i64 2836, !3, i64 2840, !31, i64 2848, !31, i64 2852, !4, i64 2856, !4, i64 2857, !4, i64 2858, !8, i64 2860, !8, i64 2864, !8, i64 2868, !43, i64 2872}
!15 = !{!"rc_header_s", !9, i64 0, !3, i64 8, !3, i64 16}
!16 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !4, i64 8, !17, i64 12, !4, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32, !4, i64 40, !4, i64 44, !4, i64 108, !4, i64 176, !3, i64 688, !4, i64 696, !9, i64 704, !8, i64 712}
!17 = !{!"short", !4, i64 0}
!18 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!19 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!20 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !4, i64 4, !4, i64 36}
!21 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !22, i64 16, !8, i64 32, !4, i64 36}
!22 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !9, i64 8}
!23 = !{!"gx_page_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16}
!24 = !{!"gx_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !3, i64 272, !3, i64 280, !3, i64 288, !3, i64 296, !3, i64 304, !3, i64 312, !3, i64 320, !3, i64 328, !3, i64 336, !3, i64 344, !3, i64 352, !3, i64 360, !3, i64 368, !3, i64 376, !3, i64 384, !3, i64 392, !3, i64 400, !3, i64 408, !3, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488, !3, i64 496, !3, i64 504, !3, i64 512, !3, i64 520, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576}
!25 = !{!"gx_device_bbox_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!26 = !{!"gs_fixed_rect_s", !27, i64 0, !27, i64 8}
!27 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!28 = !{!"_XImage", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !3, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !3, i64 80, !29, i64 88}
!29 = !{!"funcs", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!30 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!31 = !{!"float", !4, i64 0}
!32 = !{!"", !33, i64 0, !9, i64 16, !9, i64 24, !8, i64 32}
!33 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!34 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!35 = !{!"", !9, i64 0, !3, i64 8, !8, i64 16, !8, i64 20}
!36 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 40, !9, i64 48}
!37 = !{!"x11_cman_s", !8, i64 0, !38, i64 4, !38, i64 10, !39, i64 16, !41, i64 440, !3, i64 456, !42, i64 464}
!38 = !{!"cmm_", !17, i64 0, !17, i64 2, !17, i64 4}
!39 = !{!"", !3, i64 0, !8, i64 8, !40, i64 12, !40, i64 148, !40, i64 284, !8, i64 420}
!40 = !{!"x11_cmap_values_s", !8, i64 0, !4, i64 4, !8, i64 132}
!41 = !{!"cmc_", !8, i64 0, !3, i64 8}
!42 = !{!"cmd_", !8, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!43 = !{!"", !8, i64 0, !8, i64 4, !34, i64 8, !8, i64 16, !4, i64 24, !4, i64 312}
!44 = !{!14, !3, i64 24}
!45 = !{!14, !9, i64 2160}
!46 = !{!14, !8, i64 2056}
!47 = !{!14, !9, i64 2040}
!48 = !{!14, !9, i64 2024}
!49 = !{!50, !3, i64 128}
!50 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !3, i64 24, !9, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !9, i64 56, !9, i64 64, !8, i64 72, !9, i64 80, !8, i64 88, !8, i64 92, !9, i64 96, !9, i64 104, !9, i64 112, !8, i64 120, !3, i64 128}
!51 = !{!14, !3, i64 2000}
!52 = !{!50, !3, i64 24}
!53 = !{!54, !3, i64 0}
!54 = !{!"", !3, i64 0, !9, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !8, i64 56, !8, i64 60}
!55 = !{!50, !9, i64 80}
!56 = !{!14, !9, i64 2016}
!57 = !{!50, !8, i64 8}
!58 = !{!50, !8, i64 12}
!59 = !{!9, !9, i64 0}
!60 = !{!14, !8, i64 832}
!61 = !{!14, !8, i64 836}
!62 = !{!14, !9, i64 2048}
!63 = !{!31, !31, i64 0}
!64 = !{!14, !31, i64 2072}
!65 = !{!14, !31, i64 2076}
!66 = !{!14, !31, i64 2080}
!67 = !{!14, !31, i64 2084}
!68 = !{!14, !31, i64 2088}
!69 = !{!14, !31, i64 2092}
!70 = !{!14, !8, i64 880}
!71 = !{!72, !8, i64 224}
!72 = !{!"", !3, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !8, i64 64, !3, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !3, i64 104, !8, i64 112, !8, i64 116, !3, i64 120, !3, i64 128, !8, i64 136, !9, i64 144, !9, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !8, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !8, i64 224, !8, i64 228, !3, i64 232, !9, i64 240, !9, i64 248, !8, i64 256, !8, i64 260, !3, i64 264, !3, i64 272, !8, i64 280, !3, i64 288}
!73 = !{!72, !3, i64 232}
!74 = !{!75, !3, i64 64}
!75 = !{!"", !3, i64 0, !3, i64 8, !9, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 48, !8, i64 56, !3, i64 64, !3, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !9, i64 120}
!76 = !{!75, !9, i64 80}
!77 = !{!78, !8, i64 16}
!78 = !{!"", !3, i64 0, !9, i64 8, !8, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !8, i64 48, !8, i64 52}
!79 = !{!75, !9, i64 16}
!80 = !{!54, !9, i64 8}
!81 = !{!14, !3, i64 2008}
!82 = !{!14, !9, i64 2304}
!83 = !{!84, !9, i64 0}
!84 = !{!"", !9, i64 0, !17, i64 8, !17, i64 10, !17, i64 12, !4, i64 14, !4, i64 15}
!85 = !{!14, !9, i64 2296}
!86 = !{!75, !8, i64 24}
!87 = !{!75, !8, i64 28}
!88 = !{!14, !31, i64 2848}
!89 = !{!14, !31, i64 2852}
!90 = !{!75, !8, i64 32}
!91 = !{!75, !8, i64 36}
!92 = !{!93, !8, i64 8}
!93 = !{!"", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !94, i64 48, !94, i64 56, !8, i64 64, !8, i64 68, !8, i64 72}
!94 = !{!"", !8, i64 0, !8, i64 4}
!95 = !{!93, !8, i64 12}
!96 = !{!93, !8, i64 16}
!97 = !{!93, !8, i64 20}
!98 = !{!93, !9, i64 0}
!99 = !{!14, !3, i64 2824}
!100 = !{!14, !17, i64 2816}
!101 = !{!102, !9, i64 72}
!102 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !9, i64 48, !9, i64 56, !8, i64 64, !9, i64 72, !9, i64 80, !8, i64 88, !9, i64 96, !9, i64 104}
!103 = !{!102, !9, i64 8}
!104 = !{!14, !9, i64 2808}
!105 = !{!102, !9, i64 24}
!106 = !{!102, !9, i64 96}
!107 = !{!54, !8, i64 20}
!108 = !{!109, !9, i64 0}
!109 = !{!"", !9, i64 0, !8, i64 8, !8, i64 12, !9, i64 16, !9, i64 24, !8, i64 32, !8, i64 36, !9, i64 40, !9, i64 48}
!110 = !{!109, !8, i64 8}
!111 = !{!14, !9, i64 2208}
!112 = !{!14, !9, i64 2224}
!113 = !{!14, !8, i64 2268}
!114 = !{!14, !8, i64 2264}
!115 = !{!14, !9, i64 2272}
!116 = !{!14, !3, i64 2032}
!117 = !{!102, !8, i64 88}
!118 = !{!14, !9, i64 2064}
!119 = !{!14, !9, i64 2096}
!120 = !{!14, !9, i64 2104}
!121 = !{!14, !9, i64 2112}
!122 = !{!14, !9, i64 2216}
!123 = !{!14, !4, i64 2856}
!124 = !{!11, !3, i64 16}
!125 = !{!11, !4, i64 0}
!126 = !{!14, !9, i64 2280}
!127 = !{!14, !9, i64 2288}
!128 = !{!14, !9, i64 2176}
!129 = !{!14, !9, i64 2168}
!130 = !{!7, !4, i64 32}
!131 = !{!132, !3, i64 32}
!132 = !{!"gs_memory_s", !3, i64 0, !133, i64 8, !3, i64 192, !3, i64 200, !3, i64 208}
!133 = !{!"gs_memory_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176}
!134 = !{!14, !9, i64 1064}
!135 = !{!14, !3, i64 1728}
!136 = !{!137, !17, i64 108}
!137 = !{!"gx_device_memory_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !15, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !16, i64 96, !19, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !9, i64 928, !9, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !9, i64 968, !9, i64 976, !20, i64 984, !8, i64 1052, !8, i64 1056, !21, i64 1064, !3, i64 1104, !4, i64 1112, !23, i64 1120, !24, i64 1144, !3, i64 1728, !8, i64 1736, !3, i64 1744, !3, i64 1752, !8, i64 1760, !3, i64 1768, !8, i64 1776, !4, i64 1780, !30, i64 2548, !3, i64 2576, !138, i64 2584, !139, i64 2600, !140, i64 2624, !141, i64 2656, !142, i64 2680, !143, i64 2720, !144, i64 2736, !8, i64 2744, !8, i64 2748, !8, i64 2752, !8, i64 2756, !8, i64 2760, !9, i64 2768, !3, i64 2776, !8, i64 2784, !8, i64 2788}
!138 = !{!"gs_const_string_s", !3, i64 0, !8, i64 8}
!139 = !{!"_c24", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!140 = !{!"_c40", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!141 = !{!"_c48", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!142 = !{!"_c56", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!143 = !{!"_c64", !9, i64 0, !8, i64 8, !8, i64 12}
!144 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!145 = !{!14, !17, i64 108}
!146 = !{!132, !3, i64 72}
!147 = !{!14, !8, i64 1832}
!148 = !{!137, !8, i64 832}
!149 = !{!137, !8, i64 836}
!150 = !{!14, !3, i64 1840}
!151 = !{!132, !3, i64 16}
!152 = !{!132, !3, i64 64}
!153 = !{!14, !9, i64 1848}
!154 = !{!14, !3, i64 1104}
!155 = !{!137, !3, i64 1104}
!156 = !{!157, !9, i64 200}
!157 = !{!"cmm_dev_profile_s", !4, i64 0, !3, i64 32, !3, i64 40, !3, i64 48, !4, i64 56, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !3, i64 176, !8, i64 184, !3, i64 192, !15, i64 200}
!158 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !159, i64 12, i64 2, !160, i64 14, i64 1, !159, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 4, !12, i64 36, i64 4, !12, i64 40, i64 4, !159, i64 44, i64 64, !159, i64 108, i64 64, !159, i64 176, i64 512, !159, i64 688, i64 8, !2, i64 696, i64 4, !159, i64 704, i64 8, !59, i64 712, i64 4, !12}
!159 = !{!4, !4, i64 0}
!160 = !{!17, !17, i64 0}
!161 = !{!137, !3, i64 1744}
!162 = !{!14, !9, i64 1816}
!163 = !{!14, !9, i64 1808}
!164 = !{!132, !3, i64 24}
!165 = !{!14, !3, i64 1200}
!166 = !{!24, !3, i64 56}
!167 = !{!24, !3, i64 72}
!168 = !{!14, !3, i64 1216}
!169 = !{!24, !3, i64 80}
!170 = !{!14, !3, i64 1224}
!171 = !{!24, !3, i64 168}
!172 = !{!14, !3, i64 1312}
!173 = !{!24, !3, i64 192}
!174 = !{!14, !3, i64 1336}
!175 = !{!24, !3, i64 200}
!176 = !{!14, !3, i64 1344}
!177 = !{!24, !3, i64 208}
!178 = !{!14, !3, i64 1352}
!179 = !{!24, !3, i64 216}
!180 = !{!14, !3, i64 1360}
!181 = !{!24, !3, i64 224}
!182 = !{!14, !3, i64 1368}
!183 = !{!24, !3, i64 232}
!184 = !{!14, !3, i64 1376}
!185 = !{!24, !3, i64 240}
!186 = !{!14, !3, i64 1384}
!187 = !{!24, !3, i64 272}
!188 = !{!14, !3, i64 1416}
!189 = !{!24, !3, i64 280}
!190 = !{!14, !3, i64 1424}
!191 = !{!24, !3, i64 296}
!192 = !{!14, !3, i64 1440}
!193 = !{!24, !3, i64 336}
!194 = !{!14, !3, i64 1480}
!195 = !{i64 0, i64 8, !2, i64 8, i64 8, !2, i64 16, i64 8, !2, i64 24, i64 8, !2}
!196 = !{!14, !3, i64 1776}
!197 = !{!14, !8, i64 84}
!198 = !{!14, !9, i64 2184}
!199 = !{!14, !8, i64 1836}
!200 = !{i64 0, i64 4, !12, i64 8, i64 8, !2, i64 16, i64 8, !2, i64 24, i64 8, !2, i64 32, i64 8, !2, i64 40, i64 4, !12, i64 48, i64 8, !2, i64 56, i64 8, !59, i64 64, i64 8, !2, i64 72, i64 8, !2, i64 80, i64 4, !12, i64 84, i64 4, !12, i64 88, i64 4, !12, i64 96, i64 4, !12, i64 100, i64 4, !12, i64 104, i64 4, !159, i64 108, i64 2, !160, i64 110, i64 1, !159, i64 112, i64 4, !12, i64 116, i64 4, !12, i64 120, i64 4, !12, i64 124, i64 4, !12, i64 128, i64 4, !12, i64 132, i64 4, !12, i64 136, i64 4, !159, i64 140, i64 64, !159, i64 204, i64 64, !159, i64 272, i64 512, !159, i64 784, i64 8, !2, i64 792, i64 4, !159, i64 800, i64 8, !59, i64 808, i64 4, !12, i64 816, i64 8, !59, i64 824, i64 8, !59, i64 832, i64 4, !12, i64 836, i64 4, !12, i64 840, i64 4, !12, i64 844, i64 4, !12, i64 848, i64 4, !12, i64 852, i64 4, !12, i64 856, i64 8, !159, i64 864, i64 16, !159, i64 880, i64 4, !12, i64 884, i64 8, !159, i64 892, i64 8, !159, i64 900, i64 8, !159, i64 908, i64 16, !159, i64 928, i64 8, !59, i64 936, i64 8, !59, i64 944, i64 4, !12, i64 948, i64 4, !12, i64 952, i64 4, !12, i64 956, i64 4, !12, i64 960, i64 4, !12, i64 968, i64 8, !59, i64 976, i64 8, !59, i64 984, i64 4, !12, i64 988, i64 32, !159, i64 1020, i64 32, !159, i64 1052, i64 4, !12, i64 1056, i64 4, !12, i64 1064, i64 8, !59, i64 1072, i64 8, !59, i64 1080, i64 4, !12, i64 1084, i64 4, !12, i64 1088, i64 8, !59, i64 1096, i64 4, !12, i64 1100, i64 4, !159, i64 1104, i64 8, !2, i64 1112, i64 4, !159, i64 1120, i64 8, !2, i64 1128, i64 8, !2, i64 1136, i64 8, !2, i64 1144, i64 8, !2, i64 1152, i64 8, !2, i64 1160, i64 8, !2, i64 1168, i64 8, !2, i64 1176, i64 8, !2, i64 1184, i64 8, !2, i64 1192, i64 8, !2, i64 1200, i64 8, !2, i64 1208, i64 8, !2, i64 1216, i64 8, !2, i64 1224, i64 8, !2, i64 1232, i64 8, !2, i64 1240, i64 8, !2, i64 1248, i64 8, !2, i64 1256, i64 8, !2, i64 1264, i64 8, !2, i64 1272, i64 8, !2, i64 1280, i64 8, !2, i64 1288, i64 8, !2, i64 1296, i64 8, !2, i64 1304, i64 8, !2, i64 1312, i64 8, !2, i64 1320, i64 8, !2, i64 1328, i64 8, !2, i64 1336, i64 8, !2, i64 1344, i64 8, !2, i64 1352, i64 8, !2, i64 1360, i64 8, !2, i64 1368, i64 8, !2, i64 1376, i64 8, !2, i64 1384, i64 8, !2, i64 1392, i64 8, !2, i64 1400, i64 8, !2, i64 1408, i64 8, !2, i64 1416, i64 8, !2, i64 1424, i64 8, !2, i64 1432, i64 8, !2, i64 1440, i64 8, !2, i64 1448, i64 8, !2, i64 1456, i64 8, !2, i64 1464, i64 8, !2, i64 1472, i64 8, !2, i64 1480, i64 8, !2, i64 1488, i64 8, !2, i64 1496, i64 8, !2, i64 1504, i64 8, !2, i64 1512, i64 8, !2, i64 1520, i64 8, !2, i64 1528, i64 8, !2, i64 1536, i64 8, !2, i64 1544, i64 8, !2, i64 1552, i64 8, !2, i64 1560, i64 8, !2, i64 1568, i64 8, !2, i64 1576, i64 8, !2, i64 1584, i64 8, !2, i64 1592, i64 8, !2, i64 1600, i64 8, !2, i64 1608, i64 8, !2, i64 1616, i64 8, !2, i64 1624, i64 8, !2, i64 1632, i64 8, !2, i64 1640, i64 8, !2, i64 1648, i64 8, !2, i64 1656, i64 8, !2, i64 1664, i64 8, !2, i64 1672, i64 8, !2, i64 1680, i64 8, !2, i64 1688, i64 8, !2, i64 1696, i64 8, !2, i64 1704, i64 8, !2, i64 1712, i64 8, !2, i64 1720, i64 8, !2, i64 1728, i64 8, !2, i64 1736, i64 4, !12, i64 1740, i64 4, !12, i64 1744, i64 8, !2, i64 1752, i64 8, !2, i64 1760, i64 8, !2, i64 1768, i64 8, !2, i64 1776, i64 8, !2, i64 1784, i64 4, !12, i64 1788, i64 4, !12, i64 1792, i64 4, !12, i64 1796, i64 4, !12, i64 1800, i64 4, !12, i64 1808, i64 8, !59, i64 1816, i64 8, !59, i64 1824, i64 8, !59, i64 1832, i64 4, !12, i64 1836, i64 4, !12, i64 1840, i64 8, !2, i64 1848, i64 8, !59, i64 1856, i64 4, !12, i64 1860, i64 4, !12, i64 1864, i64 4, !12, i64 1868, i64 4, !12, i64 1872, i64 8, !2, i64 1880, i64 4, !12, i64 1884, i64 4, !12, i64 1888, i64 4, !12, i64 1892, i64 4, !12, i64 1896, i64 4, !12, i64 1900, i64 4, !12, i64 1904, i64 4, !12, i64 1912, i64 8, !59, i64 1920, i64 8, !59, i64 1928, i64 8, !59, i64 1936, i64 8, !2, i64 1944, i64 8, !2, i64 1952, i64 8, !2, i64 1960, i64 8, !2, i64 1968, i64 8, !2, i64 1976, i64 8, !2, i64 1984, i64 8, !2, i64 1992, i64 8, !2, i64 2000, i64 8, !2, i64 2008, i64 8, !2, i64 2016, i64 8, !59, i64 2024, i64 8, !59, i64 2032, i64 8, !2, i64 2040, i64 8, !59, i64 2048, i64 8, !59, i64 2056, i64 4, !12, i64 2064, i64 8, !59, i64 2072, i64 4, !63, i64 2076, i64 4, !63, i64 2080, i64 4, !63, i64 2084, i64 4, !63, i64 2088, i64 4, !63, i64 2092, i64 4, !63, i64 2096, i64 8, !59, i64 2104, i64 8, !59, i64 2112, i64 8, !59, i64 2120, i64 4, !12, i64 2124, i64 4, !12, i64 2128, i64 4, !12, i64 2132, i64 4, !12, i64 2136, i64 8, !59, i64 2144, i64 8, !59, i64 2152, i64 4, !12, i64 2160, i64 8, !59, i64 2168, i64 8, !59, i64 2176, i64 8, !59, i64 2184, i64 8, !59, i64 2192, i64 8, !2, i64 2200, i64 4, !12, i64 2204, i64 4, !12, i64 2208, i64 8, !59, i64 2216, i64 8, !59, i64 2224, i64 8, !59, i64 2232, i64 4, !12, i64 2236, i64 4, !12, i64 2240, i64 4, !12, i64 2248, i64 8, !59, i64 2256, i64 8, !59, i64 2264, i64 4, !12, i64 2268, i64 4, !12, i64 2272, i64 8, !59, i64 2280, i64 8, !59, i64 2288, i64 8, !59, i64 2296, i64 8, !59, i64 2304, i64 8, !59, i64 2312, i64 4, !12, i64 2316, i64 2, !160, i64 2318, i64 2, !160, i64 2320, i64 2, !160, i64 2322, i64 2, !160, i64 2324, i64 2, !160, i64 2326, i64 2, !160, i64 2328, i64 8, !2, i64 2336, i64 4, !12, i64 2340, i64 4, !12, i64 2344, i64 128, !159, i64 2472, i64 4, !12, i64 2476, i64 4, !12, i64 2480, i64 128, !159, i64 2608, i64 4, !12, i64 2612, i64 4, !12, i64 2616, i64 128, !159, i64 2744, i64 4, !12, i64 2748, i64 4, !12, i64 2752, i64 4, !12, i64 2760, i64 8, !2, i64 2768, i64 8, !2, i64 2776, i64 4, !12, i64 2784, i64 8, !2, i64 2792, i64 4, !12, i64 2796, i64 4, !12, i64 2800, i64 4, !12, i64 2808, i64 8, !59, i64 2816, i64 2, !160, i64 2824, i64 8, !2, i64 2832, i64 4, !12, i64 2836, i64 4, !12, i64 2840, i64 8, !2, i64 2848, i64 4, !63, i64 2852, i64 4, !63, i64 2856, i64 1, !159, i64 2857, i64 1, !159, i64 2858, i64 1, !159, i64 2860, i64 4, !12, i64 2864, i64 4, !12, i64 2868, i64 4, !12, i64 2872, i64 4, !12, i64 2876, i64 4, !12, i64 2880, i64 4, !12, i64 2884, i64 4, !12, i64 2888, i64 4, !12, i64 2896, i64 288, !159, i64 3184, i64 25, !159}
!201 = !{!202, !8, i64 84}
!202 = !{!"gx_device_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !15, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !16, i64 96, !19, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !9, i64 928, !9, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !9, i64 968, !9, i64 976, !20, i64 984, !8, i64 1052, !8, i64 1056, !21, i64 1064, !3, i64 1104, !4, i64 1112, !23, i64 1120, !24, i64 1144}
!203 = !{!202, !8, i64 832}
!204 = !{!202, !8, i64 836}
!205 = !{!202, !3, i64 24}
!206 = !{!202, !3, i64 16}
!207 = !{!14, !8, i64 2864}
!208 = !{!14, !8, i64 2868}
