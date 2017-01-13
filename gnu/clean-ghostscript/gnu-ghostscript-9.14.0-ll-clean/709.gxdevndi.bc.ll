; ModuleID = './gxdevndi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
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
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct._bin = type { %struct.gx_device_halftone_s*, [2 x i64], i32, i32, %struct.gx_ht_tile_s* }

@q0 = internal constant [1 x i16] zeroinitializer, align 2
@q1 = internal constant [2 x i16] [i16 0, i16 -1], align 2
@q2 = internal constant [3 x i16] [i16 0, i16 -32768, i16 -1], align 2
@q3 = internal constant [4 x i16] [i16 0, i16 21845, i16 -21846, i16 -1], align 2
@q4 = internal constant [5 x i16] [i16 0, i16 16384, i16 -32768, i16 -16385, i16 -1], align 2
@q5 = internal constant [6 x i16] [i16 0, i16 13107, i16 26214, i16 -26215, i16 -13108, i16 -1], align 2
@q6 = internal constant [7 x i16] [i16 0, i16 10923, i16 21845, i16 -32768, i16 -21846, i16 -10923, i16 -1], align 2
@q7 = internal constant [8 x i16] [i16 0, i16 9362, i16 18724, i16 28086, i16 -28087, i16 -18725, i16 -9363, i16 -1], align 16
@fc_color_quo = constant [8 x i16*] [i16* getelementptr inbounds ([1 x i16], [1 x i16]* @q0, i32 0, i32 0), i16* getelementptr inbounds ([2 x i16], [2 x i16]* @q1, i32 0, i32 0), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @q2, i32 0, i32 0), i16* getelementptr inbounds ([4 x i16], [4 x i16]* @q3, i32 0, i32 0), i16* getelementptr inbounds ([5 x i16], [5 x i16]* @q4, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @q5, i32 0, i32 0), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @q6, i32 0, i32 0), i16* getelementptr inbounds ([8 x i16], [8 x i16]* @q7, i32 0, i32 0)], align 16
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@gx_dc_type_ht_binary = external constant %struct.gx_device_color_type_s*, align 8

; Function Attrs: nounwind uwtable
define i32 @gx_render_device_DeviceN(i16* %pcolor, %struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, %struct.gx_device_halftone_s* %pdht, %struct.gs_int_point_s* %ht_phase) #0 {
entry:
  %retval = alloca i32, align 4
  %pcolor.addr = alloca i16*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %ht_phase.addr = alloca %struct.gs_int_point_s*, align 8
  %max_value = alloca [64 x i32], align 16
  %dither_check = alloca i16, align 2
  %int_color = alloca [64 x i32], align 16
  %vcolor = alloca [64 x i16], align 16
  %i = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %l_color = alloca [64 x i32], align 16
  %hsize = alloca i64, align 8
  %nshades = alloca i64, align 8
  %shade = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i16* %pcolor, i16** %pcolor.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %ht_phase, %struct.gs_int_point_s** %ht_phase.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i32]* %max_value to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = bitcast i16* %dither_check to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 0, i16* %dither_check, align 2, !tbaa !5
  %2 = bitcast [64 x i32]* %int_color to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  %3 = bitcast [64 x i16]* %vcolor to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %7, i32* %num_colors, align 4, !tbaa !20
  %8 = bitcast [64 x i32]* %l_color to i8*
  call void @llvm.lifetime.start(i64 256, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !20
  %10 = load i32, i32* %num_colors, align 4, !tbaa !20
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 4
  %12 = load i8, i8* %gray_index, align 1, !tbaa !21
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %i, align 4, !tbaa !20
  %cmp2 = icmp eq i32 %conv, %13
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 7
  %15 = load i32, i32* %dither_grays, align 4, !tbaa !22
  %sub = sub i32 %15, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 8
  %17 = load i32, i32* %dither_colors, align 4, !tbaa !23
  %sub6 = sub i32 %17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub6, %cond.false ]
  %18 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.40, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %21 = load i32, i32* %num_colors, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %20, %21
  br i1 %cmp8, label %for.body.10, label %for.end.42

for.body.10:                                      ; preds = %for.cond.7
  %22 = bitcast i64* %hsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_halftone_s* %23, null
  br i1 %tobool, label %cond.true.11, label %cond.false.14

cond.true.11:                                     ; preds = %for.body.10
  %24 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %25, i32 0, i32 4
  %26 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !24
  %arrayidx13 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %26, i64 %idxprom12
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx13, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %27 = load i32, i32* %num_levels, align 4, !tbaa !31
  br label %cond.end.15

cond.false.14:                                    ; preds = %for.body.10
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.11
  %cond16 = phi i32 [ %27, %cond.true.11 ], [ 1, %cond.false.14 ]
  %conv17 = zext i32 %cond16 to i64
  store i64 %conv17, i64* %hsize, align 8, !tbaa !33
  %28 = bitcast i64* %nshades to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i64, i64* %hsize, align 8, !tbaa !33
  %30 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom18
  %31 = load i32, i32* %arrayidx19, align 4, !tbaa !20
  %conv20 = zext i32 %31 to i64
  %mul = mul i64 %29, %conv20
  %add = add i64 %mul, 1
  store i64 %add, i64* %nshades, align 8, !tbaa !33
  %32 = bitcast i64* %shade to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom21 = sext i32 %33 to i64
  %34 = load i16*, i16** %pcolor.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %34, i64 %idxprom21
  %35 = load i16, i16* %arrayidx22, align 2, !tbaa !5
  %conv23 = sext i16 %35 to i64
  %36 = load i64, i64* %nshades, align 8, !tbaa !33
  %mul24 = mul i64 %conv23, %36
  %div = udiv i64 %mul24, 32761
  store i64 %div, i64* %shade, align 8, !tbaa !33
  %37 = load i64, i64* %shade, align 8, !tbaa !33
  %38 = load i64, i64* %hsize, align 8, !tbaa !33
  %div25 = udiv i64 %37, %38
  %conv26 = trunc i64 %div25 to i32
  %39 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds [64 x i32], [64 x i32]* %int_color, i32 0, i64 %idxprom27
  store i32 %conv26, i32* %arrayidx28, align 4, !tbaa !20
  %40 = load i64, i64* %shade, align 8, !tbaa !33
  %41 = load i64, i64* %hsize, align 8, !tbaa !33
  %rem = urem i64 %40, %41
  %conv29 = trunc i64 %rem to i32
  %42 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom30 = sext i32 %42 to i64
  %arrayidx31 = getelementptr inbounds [64 x i32], [64 x i32]* %l_color, i32 0, i64 %idxprom30
  store i32 %conv29, i32* %arrayidx31, align 4, !tbaa !20
  %43 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom32 = sext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom32
  %44 = load i32, i32* %arrayidx33, align 4, !tbaa !20
  %cmp34 = icmp ult i32 %44, 31
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.15
  %45 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom36 = sext i32 %45 to i64
  %arrayidx37 = getelementptr inbounds [64 x i32], [64 x i32]* %l_color, i32 0, i64 %idxprom36
  %46 = load i32, i32* %arrayidx37, align 4, !tbaa !20
  %47 = load i16, i16* %dither_check, align 2, !tbaa !5
  %conv38 = sext i16 %47 to i32
  %or = or i32 %conv38, %46
  %conv39 = trunc i32 %or to i16
  store i16 %conv39, i16* %dither_check, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.15
  %48 = bitcast i64* %shade to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %nshades to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i64* %hsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end
  %51 = load i32, i32* %i, align 4, !tbaa !20
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !20
  br label %for.cond.7

for.end.42:                                       ; preds = %for.cond.7
  %52 = load i16, i16* %dither_check, align 2, !tbaa !5
  %tobool43 = icmp ne i16 %52, 0
  br i1 %tobool43, label %if.end.87, label %if.then.44

if.then.44:                                       ; preds = %for.end.42
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.84, %if.then.44
  %53 = load i32, i32* %i, align 4, !tbaa !20
  %54 = load i32, i32* %num_colors, align 4, !tbaa !20
  %cmp46 = icmp slt i32 %53, %54
  br i1 %cmp46, label %for.body.48, label %for.end.86

for.body.48:                                      ; preds = %for.cond.45
  %55 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom49 = sext i32 %55 to i64
  %arrayidx50 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom49
  %56 = load i32, i32* %arrayidx50, align 4, !tbaa !20
  %cmp51 = icmp ule i32 %56, 7
  br i1 %cmp51, label %cond.true.53, label %cond.false.63

cond.true.53:                                     ; preds = %for.body.48
  %57 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds [64 x i32], [64 x i32]* %int_color, i32 0, i64 %idxprom54
  %58 = load i32, i32* %arrayidx55, align 4, !tbaa !20
  %idxprom56 = zext i32 %58 to i64
  %59 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom57 = sext i32 %59 to i64
  %arrayidx58 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom57
  %60 = load i32, i32* %arrayidx58, align 4, !tbaa !20
  %idxprom59 = zext i32 %60 to i64
  %arrayidx60 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom59
  %61 = load i16*, i16** %arrayidx60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %61, i64 %idxprom56
  %62 = load i16, i16* %arrayidx61, align 2, !tbaa !5
  %conv62 = zext i16 %62 to i32
  br label %cond.end.79

cond.false.63:                                    ; preds = %for.body.48
  %63 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom64 = sext i32 %63 to i64
  %arrayidx65 = getelementptr inbounds [64 x i32], [64 x i32]* %int_color, i32 0, i64 %idxprom64
  %64 = load i32, i32* %arrayidx65, align 4, !tbaa !20
  %conv66 = zext i32 %64 to i64
  %mul67 = mul nsw i64 %conv66, 131070
  %65 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom68 = sext i32 %65 to i64
  %arrayidx69 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom68
  %66 = load i32, i32* %arrayidx69, align 4, !tbaa !20
  %conv70 = zext i32 %66 to i64
  %add71 = add nsw i64 %mul67, %conv70
  %67 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom72 = sext i32 %67 to i64
  %arrayidx73 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom72
  %68 = load i32, i32* %arrayidx73, align 4, !tbaa !20
  %mul74 = mul i32 %68, 2
  %conv75 = zext i32 %mul74 to i64
  %div76 = sdiv i64 %add71, %conv75
  %conv77 = trunc i64 %div76 to i16
  %conv78 = zext i16 %conv77 to i32
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.63, %cond.true.53
  %cond80 = phi i32 [ %conv62, %cond.true.53 ], [ %conv78, %cond.false.63 ]
  %conv81 = trunc i32 %cond80 to i16
  %69 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom82 = sext i32 %69 to i64
  %arrayidx83 = getelementptr inbounds [64 x i16], [64 x i16]* %vcolor, i32 0, i64 %idxprom82
  store i16 %conv81, i16* %arrayidx83, align 2, !tbaa !5
  br label %for.inc.84

for.inc.84:                                       ; preds = %cond.end.79
  %70 = load i32, i32* %i, align 4, !tbaa !20
  %inc85 = add nsw i32 %70, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !20
  br label %for.cond.45

for.end.86:                                       ; preds = %for.cond.45
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %72 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !34
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %vcolor, i32 0, i32 0
  %call = call i64 %72(%struct.gx_device_s* %73, i16* %arraydecay) #3
  %74 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %74, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %call, i64* %pure, align 8, !tbaa !33
  %75 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %76, i32 0, i32 0
  store %struct.gx_device_color_type_s* %75, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %for.end.42
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.104, %if.end.87
  %77 = load i32, i32* %i, align 4, !tbaa !20
  %78 = load i32, i32* %num_colors, align 4, !tbaa !20
  %cmp89 = icmp slt i32 %77, %78
  br i1 %cmp89, label %for.body.91, label %for.end.106

for.body.91:                                      ; preds = %for.cond.88
  %79 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom92 = sext i32 %79 to i64
  %arrayidx93 = getelementptr inbounds [64 x i32], [64 x i32]* %int_color, i32 0, i64 %idxprom92
  %80 = load i32, i32* %arrayidx93, align 4, !tbaa !20
  %conv94 = trunc i32 %80 to i8
  %81 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom95 = sext i32 %81 to i64
  %82 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors96 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %82, i32 0, i32 1
  %colored = bitcast %union._c* %colors96 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom95
  store i8 %conv94, i8* %arrayidx97, align 1, !tbaa !42
  %83 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom98 = sext i32 %83 to i64
  %arrayidx99 = getelementptr inbounds [64 x i32], [64 x i32]* %l_color, i32 0, i64 %idxprom98
  %84 = load i32, i32* %arrayidx99, align 4, !tbaa !20
  %85 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom100 = sext i32 %85 to i64
  %86 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors101 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %86, i32 0, i32 1
  %colored102 = bitcast %union._c* %colors101 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored102, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom100
  store i32 %84, i32* %arrayidx103, align 4, !tbaa !20
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.91
  %87 = load i32, i32* %i, align 4, !tbaa !20
  %inc105 = add nsw i32 %87, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !20
  br label %for.cond.88

for.end.106:                                      ; preds = %for.cond.88
  %88 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %89 = load i32, i32* %num_colors, align 4, !tbaa !20
  %90 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  call void @gx_complete_halftone(%struct.gx_device_color_s* %88, i32 %89, %struct.gx_device_halftone_s* %90) #3
  %91 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ht_phase.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %91, i32 0, i32 0
  %92 = load i32, i32* %x, align 4, !tbaa !43
  %sub107 = sub nsw i32 0, %92
  %93 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %lcm_width = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %93, i32 0, i32 7
  %94 = load i32, i32* %lcm_width, align 4, !tbaa !44
  %call108 = call i32 @imod(i32 %sub107, i32 %94) #3
  %95 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %95, i32 0, i32 2
  %x109 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %call108, i32* %x109, align 4, !tbaa !45
  %96 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ht_phase.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %96, i32 0, i32 1
  %97 = load i32, i32* %y, align 4, !tbaa !46
  %sub110 = sub nsw i32 0, %97
  %98 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %lcm_height = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %98, i32 0, i32 8
  %99 = load i32, i32* %lcm_height, align 4, !tbaa !47
  %call111 = call i32 @imod(i32 %sub110, i32 %99) #3
  %100 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase112 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %100, i32 0, i32 2
  %y113 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase112, i32 0, i32 1
  store i32 %call111, i32* %y113, align 4, !tbaa !48
  %101 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors114 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %101, i32 0, i32 1
  %colored115 = bitcast %union._c* %colors114 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored115, i32 0, i32 5
  %102 = load i64, i64* %plane_mask, align 8, !tbaa !49
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors116 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %103, i32 0, i32 1
  %colored117 = bitcast %union._c* %colors116 to %struct._col*
  %plane_mask118 = getelementptr inbounds %struct._col, %struct._col* %colored117, i32 0, i32 5
  %104 = load i64, i64* %plane_mask118, align 8, !tbaa !49
  %sub119 = sub i64 %104, 1
  %and = and i64 %102, %sub119
  %tobool120 = icmp ne i64 %and, 0
  br i1 %tobool120, label %if.end.123, label %if.then.121

if.then.121:                                      ; preds = %for.end.106
  %105 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call122 = call i32 @gx_devn_reduce_colored_halftone(%struct.gx_device_color_s* %105, %struct.gx_device_s* %106) #3
  store i32 %call122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.123:                                       ; preds = %for.end.106
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.123, %if.then.121, %for.end.86
  %107 = bitcast [64 x i32]* %l_color to i8*
  call void @llvm.lifetime.end(i64 256, i8* %107) #1
  %108 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast [64 x i16]* %vcolor to i8*
  call void @llvm.lifetime.end(i64 128, i8* %110) #1
  %111 = bitcast [64 x i32]* %int_color to i8*
  call void @llvm.lifetime.end(i64 256, i8* %111) #1
  %112 = bitcast i16* %dither_check to i8*
  call void @llvm.lifetime.end(i64 2, i8* %112) #1
  %113 = bitcast [64 x i32]* %max_value to i8*
  call void @llvm.lifetime.end(i64 256, i8* %113) #1
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gx_complete_halftone(%struct.gx_device_color_s*, i32, %struct.gx_device_halftone_s*) #2

declare i32 @imod(i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_devn_reduce_colored_halftone(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %planes = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %max_value = alloca [64 x i32], align 16
  %b = alloca [64 x i32], align 16
  %v = alloca [64 x i16], align 16
  %c0 = alloca i64, align 8
  %c1 = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i51 = alloca i32, align 4
  %bi = alloca i32, align 4
  %pdht = alloca %struct.gx_device_halftone_s*, align 8
  %invert = alloca i32, align 4
  %level = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 5
  %2 = load i64, i64* %plane_mask, align 8, !tbaa !49
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %planes, align 4, !tbaa !20
  %3 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %5, i32* %num_colors, align 4, !tbaa !20
  %6 = bitcast [64 x i32]* %max_value to i8*
  call void @llvm.lifetime.start(i64 256, i8* %6) #1
  %7 = bitcast [64 x i32]* %b to i8*
  call void @llvm.lifetime.start(i64 256, i8* %7) #1
  %8 = bitcast [64 x i16]* %v to i8*
  call void @llvm.lifetime.start(i64 128, i8* %8) #1
  %9 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !20
  %13 = load i32, i32* %num_colors, align 4, !tbaa !20
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 4
  %15 = load i8, i8* %gray_index, align 1, !tbaa !21
  %conv3 = zext i8 %15 to i32
  %16 = load i32, i32* %i, align 4, !tbaa !20
  %cmp4 = icmp eq i32 %conv3, %16
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 7
  %18 = load i32, i32* %dither_grays, align 4, !tbaa !22
  %sub = sub i32 %18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 8
  %20 = load i32, i32* %dither_colors, align 4, !tbaa !23
  %sub8 = sub i32 %20, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ]
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !20
  %22 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 1
  %colored11 = bitcast %union._c* %colors10 to %struct._col*
  %c_base = getelementptr inbounds %struct._col, %struct._col* %colored11, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %c_base, i32 0, i64 %idxprom9
  %24 = load i8, i8* %arrayidx12, align 1, !tbaa !42
  %conv13 = zext i8 %24 to i32
  %25 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %b, i32 0, i64 %idxprom14
  store i32 %conv13, i32* %arrayidx15, align 4, !tbaa !20
  %26 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom16
  %27 = load i32, i32* %arrayidx17, align 4, !tbaa !20
  %cmp18 = icmp ule i32 %27, 7
  br i1 %cmp18, label %cond.true.20, label %cond.false.30

cond.true.20:                                     ; preds = %cond.end
  %28 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [64 x i32], [64 x i32]* %b, i32 0, i64 %idxprom21
  %29 = load i32, i32* %arrayidx22, align 4, !tbaa !20
  %idxprom23 = zext i32 %29 to i64
  %30 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom24
  %31 = load i32, i32* %arrayidx25, align 4, !tbaa !20
  %idxprom26 = zext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom26
  %32 = load i16*, i16** %arrayidx27, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %32, i64 %idxprom23
  %33 = load i16, i16* %arrayidx28, align 2, !tbaa !5
  %conv29 = zext i16 %33 to i32
  br label %cond.end.43

cond.false.30:                                    ; preds = %cond.end
  %34 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds [64 x i32], [64 x i32]* %b, i32 0, i64 %idxprom31
  %35 = load i32, i32* %arrayidx32, align 4, !tbaa !20
  %conv33 = zext i32 %35 to i64
  %mul = mul nsw i64 %conv33, 131070
  %36 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom34
  %37 = load i32, i32* %arrayidx35, align 4, !tbaa !20
  %conv36 = zext i32 %37 to i64
  %add = add nsw i64 %mul, %conv36
  %38 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom37
  %39 = load i32, i32* %arrayidx38, align 4, !tbaa !20
  %mul39 = mul i32 %39, 2
  %conv40 = zext i32 %mul39 to i64
  %div = sdiv i64 %add, %conv40
  %conv41 = trunc i64 %div to i16
  %conv42 = zext i16 %conv41 to i32
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.30, %cond.true.20
  %cond44 = phi i32 [ %conv29, %cond.true.20 ], [ %conv42, %cond.false.30 ]
  %conv45 = trunc i32 %cond44 to i16
  %40 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 %idxprom46
  store i16 %conv45, i16* %arrayidx47, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end.43
  %41 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %43 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !34
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i32 0
  %call = call i64 %43(%struct.gx_device_s* %44, i16* %arraydecay) #3
  store i64 %call, i64* %c0, align 8, !tbaa !33
  %45 = load i32, i32* %planes, align 4, !tbaa !20
  %cmp48 = icmp eq i32 %45, 0
  br i1 %cmp48, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %46 = load i64, i64* %c0, align 8, !tbaa !33
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %47, i32 0, i32 1
  %pure = bitcast %union._c* %colors50 to i64*
  store i64 %46, i64* %pure, align 8, !tbaa !33
  %48 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %49, i32 0, i32 0
  store %struct.gx_device_color_type_s* %48, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.end
  %50 = bitcast i32* %i51 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 0, i32* %i51, align 4, !tbaa !20
  %51 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors52 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %53, i32 0, i32 1
  %colored53 = bitcast %union._c* %colors52 to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored53, i32 0, i32 0
  %54 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !51
  store %struct.gx_device_halftone_s* %54, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %55 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 2
  %57 = load i32, i32* %polarity, align 4, !tbaa !52
  %cmp55 = icmp eq i32 %57, 0
  %conv56 = zext i1 %cmp55 to i32
  store i32 %conv56, i32* %invert, align 4, !tbaa !20
  %58 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %59 = load i32, i32* %planes, align 4, !tbaa !20
  %cmp57 = icmp sgt i32 %59, 7
  br i1 %cmp57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load i32, i32* %i51, align 4, !tbaa !20
  %add59 = add nsw i32 %60, 3
  store i32 %add59, i32* %i51, align 4, !tbaa !20
  %61 = load i32, i32* %planes, align 4, !tbaa !20
  %shr = ashr i32 %61, 3
  store i32 %shr, i32* %planes, align 4, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32, i32* %planes, align 4, !tbaa !20
  %shr60 = ashr i32 %62, 1
  %63 = load i32, i32* %i51, align 4, !tbaa !20
  %add61 = add nsw i32 %63, %shr60
  store i32 %add61, i32* %i51, align 4, !tbaa !20
  %64 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom62 = sext i32 %64 to i64
  %arrayidx63 = getelementptr inbounds [64 x i32], [64 x i32]* %b, i32 0, i64 %idxprom62
  %65 = load i32, i32* %arrayidx63, align 4, !tbaa !20
  %add64 = add i32 %65, 1
  store i32 %add64, i32* %bi, align 4, !tbaa !20
  %66 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom65 = sext i32 %66 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom65
  %67 = load i32, i32* %arrayidx66, align 4, !tbaa !20
  %cmp67 = icmp ule i32 %67, 7
  br i1 %cmp67, label %cond.true.69, label %cond.false.77

cond.true.69:                                     ; preds = %while.end
  %68 = load i32, i32* %bi, align 4, !tbaa !20
  %idxprom70 = zext i32 %68 to i64
  %69 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom71 = sext i32 %69 to i64
  %arrayidx72 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4, !tbaa !20
  %idxprom73 = zext i32 %70 to i64
  %arrayidx74 = getelementptr inbounds [8 x i16*], [8 x i16*]* @fc_color_quo, i32 0, i64 %idxprom73
  %71 = load i16*, i16** %arrayidx74, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %71, i64 %idxprom70
  %72 = load i16, i16* %arrayidx75, align 2, !tbaa !5
  %conv76 = zext i16 %72 to i32
  br label %cond.end.91

cond.false.77:                                    ; preds = %while.end
  %73 = load i32, i32* %bi, align 4, !tbaa !20
  %conv78 = zext i32 %73 to i64
  %mul79 = mul nsw i64 %conv78, 131070
  %74 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom80 = sext i32 %74 to i64
  %arrayidx81 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom80
  %75 = load i32, i32* %arrayidx81, align 4, !tbaa !20
  %conv82 = zext i32 %75 to i64
  %add83 = add nsw i64 %mul79, %conv82
  %76 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom84 = sext i32 %76 to i64
  %arrayidx85 = getelementptr inbounds [64 x i32], [64 x i32]* %max_value, i32 0, i64 %idxprom84
  %77 = load i32, i32* %arrayidx85, align 4, !tbaa !20
  %mul86 = mul i32 %77, 2
  %conv87 = zext i32 %mul86 to i64
  %div88 = sdiv i64 %add83, %conv87
  %conv89 = trunc i64 %div88 to i16
  %conv90 = zext i16 %conv89 to i32
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.77, %cond.true.69
  %cond92 = phi i32 [ %conv76, %cond.true.69 ], [ %conv90, %cond.false.77 ]
  %conv93 = trunc i32 %cond92 to i16
  %78 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom94 = sext i32 %78 to i64
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 %idxprom94
  store i16 %conv93, i16* %arrayidx95, align 2, !tbaa !5
  %79 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom96 = sext i32 %79 to i64
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors97 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 1
  %colored98 = bitcast %union._c* %colors97 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored98, i32 0, i32 3
  %arrayidx99 = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom96
  %81 = load i32, i32* %arrayidx99, align 4, !tbaa !20
  store i32 %81, i32* %level, align 4, !tbaa !20
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs100 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 42
  %encode_color101 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs100, i32 0, i32 51
  %83 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color101, align 8, !tbaa !34
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay102 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i32 0
  %call103 = call i64 %83(%struct.gx_device_s* %84, i16* %arraydecay102) #3
  store i64 %call103, i64* %c1, align 8, !tbaa !33
  %85 = load i32, i32* %invert, align 4, !tbaa !20
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %if.then.104, label %if.else.121

if.then.104:                                      ; preds = %cond.end.91
  %86 = load i32, i32* %i51, align 4, !tbaa !20
  %idxprom105 = sext i32 %86 to i64
  %87 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %87, i32 0, i32 4
  %88 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !24
  %arrayidx106 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %88, i64 %idxprom105
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx106, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %89 = load i32, i32* %num_levels, align 4, !tbaa !31
  %90 = load i32, i32* %level, align 4, !tbaa !20
  %sub107 = sub i32 %89, %90
  store i32 %sub107, i32* %level, align 4, !tbaa !20
  %91 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors108 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 1
  %binary = bitcast %union._c* %colors108 to %struct._bin*
  %b_ht = getelementptr inbounds %struct._bin, %struct._bin* %binary, i32 0, i32 0
  store %struct.gx_device_halftone_s* %91, %struct.gx_device_halftone_s** %b_ht, align 8, !tbaa !53
  %93 = load i32, i32* %i51, align 4, !tbaa !20
  %94 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors109 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %94, i32 0, i32 1
  %binary110 = bitcast %union._c* %colors109 to %struct._bin*
  %b_index = getelementptr inbounds %struct._bin, %struct._bin* %binary110, i32 0, i32 3
  store i32 %93, i32* %b_index, align 4, !tbaa !55
  %95 = load i64, i64* %c1, align 8, !tbaa !33
  %96 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors111 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %96, i32 0, i32 1
  %binary112 = bitcast %union._c* %colors111 to %struct._bin*
  %color = getelementptr inbounds %struct._bin, %struct._bin* %binary112, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  store i64 %95, i64* %arrayidx113, align 8, !tbaa !33
  %97 = load i64, i64* %c0, align 8, !tbaa !33
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors114 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %98, i32 0, i32 1
  %binary115 = bitcast %union._c* %colors114 to %struct._bin*
  %color116 = getelementptr inbounds %struct._bin, %struct._bin* %binary115, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [2 x i64], [2 x i64]* %color116, i32 0, i64 1
  store i64 %97, i64* %arrayidx117, align 8, !tbaa !33
  %99 = load i32, i32* %level, align 4, !tbaa !20
  %100 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors118 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %100, i32 0, i32 1
  %binary119 = bitcast %union._c* %colors118 to %struct._bin*
  %b_level = getelementptr inbounds %struct._bin, %struct._bin* %binary119, i32 0, i32 2
  store i32 %99, i32* %b_level, align 4, !tbaa !56
  %101 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_ht_binary, align 8, !tbaa !1
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type120 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %102, i32 0, i32 0
  store %struct.gx_device_color_type_s* %101, %struct.gx_device_color_type_s** %type120, align 8, !tbaa !35
  br label %if.end

if.else.121:                                      ; preds = %cond.end.91
  %103 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht, align 8, !tbaa !1
  %104 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors122 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %104, i32 0, i32 1
  %binary123 = bitcast %union._c* %colors122 to %struct._bin*
  %b_ht124 = getelementptr inbounds %struct._bin, %struct._bin* %binary123, i32 0, i32 0
  store %struct.gx_device_halftone_s* %103, %struct.gx_device_halftone_s** %b_ht124, align 8, !tbaa !53
  %105 = load i32, i32* %i51, align 4, !tbaa !20
  %106 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors125 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %106, i32 0, i32 1
  %binary126 = bitcast %union._c* %colors125 to %struct._bin*
  %b_index127 = getelementptr inbounds %struct._bin, %struct._bin* %binary126, i32 0, i32 3
  store i32 %105, i32* %b_index127, align 4, !tbaa !55
  %107 = load i64, i64* %c0, align 8, !tbaa !33
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors128 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %108, i32 0, i32 1
  %binary129 = bitcast %union._c* %colors128 to %struct._bin*
  %color130 = getelementptr inbounds %struct._bin, %struct._bin* %binary129, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [2 x i64], [2 x i64]* %color130, i32 0, i64 0
  store i64 %107, i64* %arrayidx131, align 8, !tbaa !33
  %109 = load i64, i64* %c1, align 8, !tbaa !33
  %110 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors132 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %110, i32 0, i32 1
  %binary133 = bitcast %union._c* %colors132 to %struct._bin*
  %color134 = getelementptr inbounds %struct._bin, %struct._bin* %binary133, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [2 x i64], [2 x i64]* %color134, i32 0, i64 1
  store i64 %109, i64* %arrayidx135, align 8, !tbaa !33
  %111 = load i32, i32* %level, align 4, !tbaa !20
  %112 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors136 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %112, i32 0, i32 1
  %binary137 = bitcast %union._c* %colors136 to %struct._bin*
  %b_level138 = getelementptr inbounds %struct._bin, %struct._bin* %binary137, i32 0, i32 2
  store i32 %111, i32* %b_level138, align 4, !tbaa !56
  %113 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_ht_binary, align 8, !tbaa !1
  %114 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type139 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %114, i32 0, i32 0
  store %struct.gx_device_color_type_s* %113, %struct.gx_device_color_type_s** %type139, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else.121, %if.then.104
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %115 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gx_device_halftone_s** %pdht to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %i51 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast [64 x i16]* %v to i8*
  call void @llvm.lifetime.end(i64 128, i8* %123) #1
  %124 = bitcast [64 x i32]* %b to i8*
  call void @llvm.lifetime.end(i64 256, i8* %124) #1
  %125 = bitcast [64 x i32]* %max_value to i8*
  call void @llvm.lifetime.end(i64 256, i8* %125) #1
  %126 = bitcast i32* %num_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !3, i64 0}
!7 = !{!8, !9, i64 100}
!8 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"int", !3, i64 0}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !6, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !9, i64 712}
!13 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!14 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !17, i64 16, !9, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !11, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!9, !9, i64 0}
!21 = !{!8, !3, i64 110}
!22 = !{!8, !9, i64 120}
!23 = !{!8, !9, i64 124}
!24 = !{!25, !2, i64 200}
!25 = !{!"gx_device_halftone_s", !26, i64 0, !10, i64 160, !11, i64 184, !3, i64 192, !2, i64 200, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220}
!26 = !{!"gx_ht_order_s", !27, i64 0, !6, i64 40, !6, i64 42, !6, i64 44, !6, i64 46, !6, i64 48, !6, i64 50, !9, i64 52, !9, i64 56, !9, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !28, i64 112, !2, i64 144, !9, i64 152}
!27 = !{!"gx_ht_cell_params_s", !6, i64 0, !6, i64 2, !6, i64 4, !6, i64 6, !6, i64 8, !6, i64 10, !11, i64 16, !6, i64 24, !6, i64 26, !9, i64 28, !9, i64 32, !9, i64 36}
!28 = !{!"gx_ht_order_screen_params_s", !29, i64 0, !11, i64 24}
!29 = !{!"gs_matrix_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20}
!30 = !{!"float", !3, i64 0}
!31 = !{!32, !9, i64 56}
!32 = !{!"gx_ht_order_component_s", !26, i64 0, !9, i64 160, !9, i64 164}
!33 = !{!11, !11, i64 0}
!34 = !{!8, !2, i64 1552}
!35 = !{!36, !2, i64 0}
!36 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !37, i64 352, !9, i64 360, !38, i64 368, !40, i64 632}
!37 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"_mask", !41, i64 0, !11, i64 8, !2, i64 16}
!41 = !{!"mp_", !9, i64 0, !9, i64 4}
!42 = !{!3, !3, i64 0}
!43 = !{!37, !9, i64 0}
!44 = !{!25, !9, i64 216}
!45 = !{!36, !9, i64 352}
!46 = !{!37, !9, i64 4}
!47 = !{!25, !9, i64 220}
!48 = !{!36, !9, i64 356}
!49 = !{!50, !11, i64 336}
!50 = !{!"_col", !2, i64 0, !6, i64 8, !3, i64 10, !3, i64 76, !6, i64 332, !11, i64 336}
!51 = !{!50, !2, i64 0}
!52 = !{!8, !3, i64 104}
!53 = !{!54, !2, i64 0}
!54 = !{!"_bin", !2, i64 0, !3, i64 8, !9, i64 24, !9, i64 28, !2, i64 32}
!55 = !{!54, !9, i64 28}
!56 = !{!54, !9, i64 24}
