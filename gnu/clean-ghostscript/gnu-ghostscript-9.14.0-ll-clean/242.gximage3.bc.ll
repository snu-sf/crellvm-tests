; ModuleID = './gximage3.bc'
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_device_mask_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%union._b = type { [2048 x i64] }
%struct.gs_image3_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, %struct.gs_data_image_s }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gx_image3_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_device_s*, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.gx_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64 }

@st_gs_image3 = internal constant %struct.gs_memory_struct_type_s { i32 1160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image3_reloc_ptrs to i8*) }, align 8
@gs_image_type_3 = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* @st_gs_image3, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image3, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_data_image_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image_no_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image_no_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image_default_release, i32 3 }, align 8
@st_image3_enum = internal constant %struct.gs_memory_struct_type_s { i32 672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image3_enum_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"gx_begin_image3\00", align 1
@image3_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @gx_image3_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @gx_image3_end_image, i32 (%struct.gx_image_enum_common_s*)* @gx_image3_flush, i32 (%struct.gx_image_enum_common_s*, i8*)* @gx_image3_planes_wanted }, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"gx_begin_image3(pixel_data)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"gx_begin_image3(mask_data)\00", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"gx_begin_image3(mdev)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gs_image3_t\00", align 1
@image3_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_gs_pixel_image, %struct.gc_ptr_element_s* null }, align 8
@st_gs_pixel_image = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"make_mid_default\00", align 1
@st_device_mask_clip = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"make_mcde_default\00", align 1
@gs_mask_clip_device = external constant %struct.gx_device_mask_clip_s, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"gx_image3_enum_t\00", align 1
@image3_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 6, i16 0, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_ptr_element_s* getelementptr inbounds ([6 x %struct.gc_ptr_element_s], [6 x %struct.gc_ptr_element_s]* @image3_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@image3_enum_enum_ptrs = internal constant [6 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 568 }, %struct.gc_ptr_element_s { i16 0, i16 576 }, %struct.gc_ptr_element_s { i16 0, i16 592 }, %struct.gc_ptr_element_s { i16 0, i16 584 }, %struct.gc_ptr_element_s { i16 0, i16 648 }, %struct.gc_ptr_element_s { i16 0, i16 640 }], align 16
@.str.8 = private unnamed_addr constant [31 x i8] c"gx_image3_end_image(mask_data)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"gx_image3_end_image(pixel_data)\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"gx_image3_end_image(pcdev)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gx_image3_end_image(mdev)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_begin_image3(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %3 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %4 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 @gx_begin_image3_generic(%struct.gx_device_s* %0, %struct.gs_imager_state_s* %1, %struct.gs_matrix_s* %2, %struct.gs_image_common_s* %3, %struct.gs_int_rect_s* %4, %struct.gx_device_color_s* %5, %struct.gx_clip_path_s* %6, %struct.gs_memory_s* %7, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)* @make_mid_default, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)* @make_mcde_default, %struct.gx_image_enum_common_s** %8) #5
  ret i32 %call
}

declare i32 @gx_data_image_source_size(%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*) #1

declare i32 @gx_image_no_sput(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**) #1

declare i32 @gx_image_no_sget(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*) #1

declare void @gx_image_default_release(%struct.gs_image_common_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define void @gs_image3_t_init(%struct.gs_image3_s* %pim, %struct.gs_color_space_s* %color_space, i32 %interleave_type) #0 {
entry:
  %pim.addr = alloca %struct.gs_image3_s*, align 8
  %color_space.addr = alloca %struct.gs_color_space_s*, align 8
  %interleave_type.addr = alloca i32, align 4
  store %struct.gs_image3_s* %pim, %struct.gs_image3_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %color_space, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  store i32 %interleave_type, i32* %interleave_type.addr, align 4, !tbaa !5
  %0 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image3_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  call void @gs_pixel_image_t_init(%struct.gs_pixel_image_s* %1, %struct.gs_color_space_s* %2) #5
  %3 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %3, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_3 to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !6
  %4 = load i32, i32* %interleave_type.addr, align 4, !tbaa !5
  %5 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim.addr, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %5, i32 0, i32 10
  store i32 %4, i32* %InterleaveType, align 4, !tbaa !12
  %6 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim.addr, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %6, i32 0, i32 11
  call void @gs_data_image_t_init(%struct.gs_data_image_s* %MaskDict, i32 -1) #5
  ret void
}

declare void @gs_pixel_image_t_init(%struct.gs_pixel_image_s*, %struct.gs_color_space_s*) #1

declare void @gs_data_image_t_init(%struct.gs_data_image_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_begin_image3_generic(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)* %make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)* %make_mcde, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %make_mid.addr = alloca i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)*, align 8
  %make_mcde.addr = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pim = alloca %struct.gs_image3_s*, align 8
  %local_pim = alloca %struct.gs_image3_s, align 8
  %penum = alloca %struct.gx_image3_enum_s*, align 8
  %mask_rect = alloca %struct.gs_int_rect_s, align 4
  %data_rect = alloca %struct.gs_int_rect_s, align 4
  %mdev = alloca %struct.gx_device_s*, align 8
  %pcdev = alloca %struct.gx_device_s*, align 8
  %i_pixel = alloca %struct.gs_image1_s, align 8
  %i_mask = alloca %struct.gs_image1_s, align 8
  %mi_pixel = alloca %struct.gs_matrix_s, align 4
  %mi_mask = alloca %struct.gs_matrix_s, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %mrect = alloca %struct.gs_rect_s, align 8
  %origin = alloca %struct.gs_int_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lmw = alloca i64, align 8
  %lmh = alloca i64, align 8
  %type1 = alloca %struct.gx_image_type_s*, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %m_mat = alloca %struct.gs_matrix_s, align 4
  %type1358 = alloca %struct.gx_image_type_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)* %make_mid, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)** %make_mid.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)* %make_mcde, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)** %make_mcde.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image3_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image3_s*
  store %struct.gs_image3_s* %2, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image3_s* %local_pim to i8*
  call void @llvm.lifetime.start(i64 1160, i8* %3) #2
  %4 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.gs_int_rect_s* %mask_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast %struct.gs_int_rect_s* %data_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store %struct.gx_device_s* null, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct.gx_device_s* null, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %9 = bitcast %struct.gs_image1_s* %i_pixel to i8*
  call void @llvm.lifetime.start(i64 600, i8* %9) #2
  %10 = bitcast %struct.gs_image1_s* %i_mask to i8*
  call void @llvm.lifetime.start(i64 600, i8* %10) #2
  %11 = bitcast %struct.gs_matrix_s* %mi_pixel to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #2
  %12 = bitcast %struct.gs_matrix_s* %mi_mask to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #2
  %13 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #2
  %14 = bitcast %struct.gs_rect_s* %mrect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #2
  %15 = bitcast %struct.gs_int_point_s* %origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %17, i32 0, i32 3
  %18 = load i32, i32* %Height, align 4, !tbaa !13
  %cmp = icmp sle i32 %18, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %19, i32 0, i32 11
  %Height1 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict, i32 0, i32 3
  %20 = load i32, i32* %Height1, align 4, !tbaa !14
  %cmp2 = icmp sle i32 %20, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end:                                           ; preds = %lor.lhs.false
  %21 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %21, i32 0, i32 10
  %22 = load i32, i32* %InterleaveType, align 4, !tbaa !12
  switch i32 %22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.31
  ]

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

sw.bb:                                            ; preds = %if.end
  %23 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict3 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %23, i32 0, i32 11
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict3, i32 0, i32 2
  %24 = load i32, i32* %Width, align 4, !tbaa !15
  %25 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width4 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %25, i32 0, i32 2
  %26 = load i32, i32* %Width4, align 4, !tbaa !16
  %cmp5 = icmp ne i32 %24, %26
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %sw.bb
  %27 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict7 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %27, i32 0, i32 11
  %Height8 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict7, i32 0, i32 3
  %28 = load i32, i32* %Height8, align 4, !tbaa !14
  %29 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height9 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %29, i32 0, i32 3
  %30 = load i32, i32* %Height9, align 4, !tbaa !13
  %cmp10 = icmp ne i32 %28, %30
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.6
  %31 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict12 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %31, i32 0, i32 11
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict12, i32 0, i32 4
  %32 = load i32, i32* %BitsPerComponent, align 4, !tbaa !17
  %33 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %BitsPerComponent13 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %33, i32 0, i32 4
  %34 = load i32, i32* %BitsPerComponent13, align 4, !tbaa !18
  %cmp14 = icmp ne i32 %32, %34
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %35 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %35, i32 0, i32 7
  %36 = load i32, i32* %format, align 4, !tbaa !19
  %cmp16 = icmp ne i32 %36, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.6, %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.18:                                        ; preds = %lor.lhs.false.15
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end
  %37 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict20 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %37, i32 0, i32 11
  %Height21 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict20, i32 0, i32 3
  %38 = load i32, i32* %Height21, align 4, !tbaa !14
  %39 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height22 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %39, i32 0, i32 3
  %40 = load i32, i32* %Height22, align 4, !tbaa !13
  %rem = srem i32 %38, %40
  %cmp23 = icmp ne i32 %rem, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %sw.bb.19
  %41 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height24 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %41, i32 0, i32 3
  %42 = load i32, i32* %Height24, align 4, !tbaa !13
  %43 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict25 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %43, i32 0, i32 11
  %Height26 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict25, i32 0, i32 3
  %44 = load i32, i32* %Height26, align 4, !tbaa !14
  %rem27 = srem i32 %42, %44
  %cmp28 = icmp ne i32 %rem27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.30:                                        ; preds = %land.lhs.true, %sw.bb.19
  br label %sw.bb.31

sw.bb.31:                                         ; preds = %if.end, %if.end.30
  %45 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict32 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %45, i32 0, i32 11
  %BitsPerComponent33 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict32, i32 0, i32 4
  %46 = load i32, i32* %BitsPerComponent33, align 4, !tbaa !17
  %cmp34 = icmp ne i32 %46, 1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.31
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.36:                                        ; preds = %sw.bb.31
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.36, %if.end.18
  %47 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %47, i32 0, i32 1
  %call = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %mi_pixel) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp37 = icmp slt i32 %call, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.epilog
  %48 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.39:                                        ; preds = %sw.epilog
  %49 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType40 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %49, i32 0, i32 10
  %50 = load i32, i32* %InterleaveType40, align 4, !tbaa !12
  %cmp41 = icmp eq i32 %50, 3
  br i1 %cmp41, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.39
  %51 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType43 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %51, i32 0, i32 10
  %52 = load i32, i32* %InterleaveType43, align 4, !tbaa !12
  %cmp44 = icmp eq i32 %52, 2
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.end.39
  %53 = bitcast %struct.gs_image3_s* %local_pim to i8*
  %54 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %55 = bitcast %struct.gs_image3_s* %54 to i8*
  %call46 = call i8* @memcpy(i8* %53, i8* %55, i64 1160) #6
  store %struct.gs_image3_s* %local_pim, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %56 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width47 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %56, i32 0, i32 2
  %57 = load i32, i32* %Width47, align 4, !tbaa !16
  %conv = sitofp i32 %57 to double
  %58 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict48 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %58, i32 0, i32 11
  %Width49 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict48, i32 0, i32 2
  %59 = load i32, i32* %Width49, align 4, !tbaa !15
  %conv50 = sitofp i32 %59 to double
  %div = fdiv double %conv, %conv50
  %60 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height51 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %60, i32 0, i32 3
  %61 = load i32, i32* %Height51, align 4, !tbaa !13
  %conv52 = sitofp i32 %61 to double
  %62 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict53 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %62, i32 0, i32 11
  %Height54 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict53, i32 0, i32 3
  %63 = load i32, i32* %Height54, align 4, !tbaa !14
  %conv55 = sitofp i32 %63 to double
  %div56 = fdiv double %conv52, %conv55
  %call57 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %mi_pixel, double %div, double %div56, %struct.gs_matrix_s* %mi_mask) #5
  %MaskDict58 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %local_pim, i32 0, i32 11
  %ImageMatrix59 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict58, i32 0, i32 1
  %call60 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %mi_mask, %struct.gs_matrix_s* %ImageMatrix59) #5
  store i32 %call60, i32* %code, align 4, !tbaa !20
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.45
  %64 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.64:                                        ; preds = %if.then.45
  br label %if.end.108

if.else:                                          ; preds = %lor.lhs.false.42
  %65 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict65 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %65, i32 0, i32 11
  %ImageMatrix66 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict65, i32 0, i32 1
  %call67 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix66, %struct.gs_matrix_s* %mi_mask) #5
  store i32 %call67, i32* %code, align 4, !tbaa !20
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.else
  %66 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.71:                                        ; preds = %if.else
  %67 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ImageMatrix72 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %67, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix72, i32 0, i32 0
  %68 = load float, float* %xx, align 4, !tbaa !21
  %conv73 = fpext float %68 to double
  %69 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict74 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %69, i32 0, i32 11
  %ImageMatrix75 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict74, i32 0, i32 1
  %xx76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix75, i32 0, i32 0
  %70 = load float, float* %xx76, align 4, !tbaa !22
  %conv77 = fpext float %70 to double
  %call78 = call i32 @check_image3_extent(double %conv73, double %conv77) #5
  %tobool = icmp ne i32 %call78, 0
  br i1 %tobool, label %lor.lhs.false.79, label %if.then.106

lor.lhs.false.79:                                 ; preds = %if.end.71
  %71 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ImageMatrix80 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %71, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix80, i32 0, i32 1
  %72 = load float, float* %xy, align 4, !tbaa !23
  %conv81 = fpext float %72 to double
  %73 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict82 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %73, i32 0, i32 11
  %ImageMatrix83 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict82, i32 0, i32 1
  %xy84 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix83, i32 0, i32 1
  %74 = load float, float* %xy84, align 4, !tbaa !24
  %conv85 = fpext float %74 to double
  %call86 = call i32 @check_image3_extent(double %conv81, double %conv85) #5
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %lor.lhs.false.88, label %if.then.106

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.79
  %75 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ImageMatrix89 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %75, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix89, i32 0, i32 2
  %76 = load float, float* %yx, align 4, !tbaa !25
  %conv90 = fpext float %76 to double
  %77 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict91 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %77, i32 0, i32 11
  %ImageMatrix92 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict91, i32 0, i32 1
  %yx93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix92, i32 0, i32 2
  %78 = load float, float* %yx93, align 4, !tbaa !26
  %conv94 = fpext float %78 to double
  %call95 = call i32 @check_image3_extent(double %conv90, double %conv94) #5
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %lor.lhs.false.97, label %if.then.106

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.88
  %79 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ImageMatrix98 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %79, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix98, i32 0, i32 3
  %80 = load float, float* %yy, align 4, !tbaa !27
  %conv99 = fpext float %80 to double
  %81 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict100 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %81, i32 0, i32 11
  %ImageMatrix101 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict100, i32 0, i32 1
  %yy102 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix101, i32 0, i32 3
  %82 = load float, float* %yy102, align 4, !tbaa !28
  %conv103 = fpext float %82 to double
  %call104 = call i32 @check_image3_extent(double %conv99, double %conv103) #5
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false.88, %lor.lhs.false.79, %if.end.71
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.107:                                       ; preds = %lor.lhs.false.97
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.64
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi_pixel, i32 0, i32 4
  %83 = load float, float* %tx, align 4, !tbaa !29
  %tx109 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi_mask, i32 0, i32 4
  %84 = load float, float* %tx109, align 4, !tbaa !29
  %sub = fsub float %83, %84
  %conv110 = fpext float %sub to double
  %call111 = call double @fabs(double %conv110) #7
  %cmp112 = fcmp oge double %call111, 5.000000e-01
  br i1 %cmp112, label %if.then.121, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.end.108
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi_pixel, i32 0, i32 5
  %85 = load float, float* %ty, align 4, !tbaa !30
  %ty115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mi_mask, i32 0, i32 5
  %86 = load float, float* %ty115, align 4, !tbaa !30
  %sub116 = fsub float %85, %86
  %conv117 = fpext float %sub116 to double
  %call118 = call double @fabs(double %conv117) #7
  %cmp119 = fcmp oge double %call118, 5.000000e-01
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %lor.lhs.false.114, %if.end.108
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.122:                                       ; preds = %lor.lhs.false.114
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %87, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %88 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call123 = call i8* %88(%struct.gs_memory_s* %89, %struct.gs_memory_struct_type_s* @st_image3_enum, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %90 = bitcast i8* %call123 to %struct.gx_image3_enum_s*
  store %struct.gx_image3_enum_s* %90, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %91 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %cmp124 = icmp eq %struct.gx_image3_enum_s* %91, null
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.122
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.127:                                       ; preds = %if.end.122
  %92 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %92, i32 0, i32 9
  %93 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !34
  %call128 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %93) #5
  %94 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %94, i32 0, i32 14
  store i32 %call128, i32* %num_components, align 4, !tbaa !35
  %95 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %96 = bitcast %struct.gx_image3_enum_s* %95 to %struct.gx_image_enum_common_s*
  %97 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %98 = bitcast %struct.gs_image3_s* %97 to %struct.gs_data_image_s*
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components129 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %100, i32 0, i32 14
  %101 = load i32, i32* %num_components129, align 4, !tbaa !35
  %add = add nsw i32 1, %101
  %102 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %format130 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %102, i32 0, i32 7
  %103 = load i32, i32* %format130, align 4, !tbaa !19
  %call131 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %96, %struct.gs_data_image_s* %98, %struct.gx_image_enum_procs_s* @image3_enum_procs, %struct.gx_device_s* %99, i32 %add, i32 %103) #5
  %104 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %104, i32 0, i32 22
  store i8* null, i8** %mask_data, align 8, !tbaa !38
  %105 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %105, i32 0, i32 23
  store i8* null, i8** %pixel_data, align 8, !tbaa !39
  %106 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool132 = icmp ne %struct.gs_int_rect_s* %106, null
  br i1 %tobool132, label %if.then.133, label %if.else.181

if.then.133:                                      ; preds = %if.end.127
  %107 = bitcast i64* %lmw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #2
  %108 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict134 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %108, i32 0, i32 11
  %Width135 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict134, i32 0, i32 2
  %109 = load i32, i32* %Width135, align 4, !tbaa !15
  %conv136 = sext i32 %109 to i64
  store i64 %conv136, i64* %lmw, align 8, !tbaa !40
  %110 = bitcast i64* %lmh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #2
  %111 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict137 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %111, i32 0, i32 11
  %Height138 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict137, i32 0, i32 3
  %112 = load i32, i32* %Height138, align 4, !tbaa !14
  %conv139 = sext i32 %112 to i64
  store i64 %conv139, i64* %lmh, align 8, !tbaa !40
  %113 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %114 = bitcast %struct.gs_int_rect_s* %data_rect to i8*
  %115 = bitcast %struct.gs_int_rect_s* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 16, i32 4, i1 false), !tbaa.struct !41
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %116 = load i32, i32* %x, align 4, !tbaa !42
  %conv140 = sext i32 %116 to i64
  %117 = load i64, i64* %lmw, align 8, !tbaa !40
  %mul = mul nsw i64 %conv140, %117
  %118 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width141 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %118, i32 0, i32 2
  %119 = load i32, i32* %Width141, align 4, !tbaa !16
  %conv142 = sext i32 %119 to i64
  %div143 = sdiv i64 %mul, %conv142
  %conv144 = trunc i64 %div143 to i32
  %p145 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %x146 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p145, i32 0, i32 0
  store i32 %conv144, i32* %x146, align 4, !tbaa !42
  %p147 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p147, i32 0, i32 1
  %120 = load i32, i32* %y, align 4, !tbaa !45
  %conv148 = sext i32 %120 to i64
  %121 = load i64, i64* %lmh, align 8, !tbaa !40
  %mul149 = mul nsw i64 %conv148, %121
  %122 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height150 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %122, i32 0, i32 3
  %123 = load i32, i32* %Height150, align 4, !tbaa !13
  %conv151 = sext i32 %123 to i64
  %div152 = sdiv i64 %mul149, %conv151
  %conv153 = trunc i64 %div152 to i32
  %p154 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %y155 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p154, i32 0, i32 1
  store i32 %conv153, i32* %y155, align 4, !tbaa !45
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %x156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %124 = load i32, i32* %x156, align 4, !tbaa !46
  %125 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width157 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %125, i32 0, i32 2
  %126 = load i32, i32* %Width157, align 4, !tbaa !16
  %add158 = add nsw i32 %124, %126
  %sub159 = sub nsw i32 %add158, 1
  %conv160 = sext i32 %sub159 to i64
  %127 = load i64, i64* %lmw, align 8, !tbaa !40
  %mul161 = mul nsw i64 %conv160, %127
  %128 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width162 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %128, i32 0, i32 2
  %129 = load i32, i32* %Width162, align 4, !tbaa !16
  %conv163 = sext i32 %129 to i64
  %div164 = sdiv i64 %mul161, %conv163
  %conv165 = trunc i64 %div164 to i32
  %q166 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %x167 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q166, i32 0, i32 0
  store i32 %conv165, i32* %x167, align 4, !tbaa !46
  %q168 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %y169 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q168, i32 0, i32 1
  %130 = load i32, i32* %y169, align 4, !tbaa !47
  %131 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height170 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %131, i32 0, i32 3
  %132 = load i32, i32* %Height170, align 4, !tbaa !13
  %add171 = add nsw i32 %130, %132
  %sub172 = sub nsw i32 %add171, 1
  %conv173 = sext i32 %sub172 to i64
  %133 = load i64, i64* %lmh, align 8, !tbaa !40
  %mul174 = mul nsw i64 %conv173, %133
  %134 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height175 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %134, i32 0, i32 3
  %135 = load i32, i32* %Height175, align 4, !tbaa !13
  %conv176 = sext i32 %135 to i64
  %div177 = sdiv i64 %mul174, %conv176
  %conv178 = trunc i64 %div177 to i32
  %q179 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %y180 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q179, i32 0, i32 1
  store i32 %conv178, i32* %y180, align 4, !tbaa !47
  %136 = bitcast i64* %lmh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i64* %lmw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  br label %if.end.204

if.else.181:                                      ; preds = %if.end.127
  %p182 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %y183 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p182, i32 0, i32 1
  store i32 0, i32* %y183, align 4, !tbaa !45
  %p184 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %x185 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p184, i32 0, i32 0
  store i32 0, i32* %x185, align 4, !tbaa !42
  %138 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict186 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %138, i32 0, i32 11
  %Width187 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict186, i32 0, i32 2
  %139 = load i32, i32* %Width187, align 4, !tbaa !15
  %q188 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %x189 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q188, i32 0, i32 0
  store i32 %139, i32* %x189, align 4, !tbaa !46
  %140 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict190 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %140, i32 0, i32 11
  %Height191 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict190, i32 0, i32 3
  %141 = load i32, i32* %Height191, align 4, !tbaa !14
  %q192 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %y193 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q192, i32 0, i32 1
  store i32 %141, i32* %y193, align 4, !tbaa !47
  %p194 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %y195 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p194, i32 0, i32 1
  store i32 0, i32* %y195, align 4, !tbaa !45
  %p196 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %x197 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p196, i32 0, i32 0
  store i32 0, i32* %x197, align 4, !tbaa !42
  %142 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width198 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %142, i32 0, i32 2
  %143 = load i32, i32* %Width198, align 4, !tbaa !16
  %q199 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %x200 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q199, i32 0, i32 0
  store i32 %143, i32* %x200, align 4, !tbaa !46
  %144 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height201 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %144, i32 0, i32 3
  %145 = load i32, i32* %Height201, align 4, !tbaa !13
  %q202 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %y203 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q202, i32 0, i32 1
  store i32 %145, i32* %y203, align 4, !tbaa !47
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.181, %if.then.133
  %q205 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %x206 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q205, i32 0, i32 0
  %146 = load i32, i32* %x206, align 4, !tbaa !46
  %p207 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %x208 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p207, i32 0, i32 0
  %147 = load i32, i32* %x208, align 4, !tbaa !42
  %sub209 = sub nsw i32 %146, %147
  %148 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_width = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %148, i32 0, i32 16
  store i32 %sub209, i32* %mask_width, align 4, !tbaa !48
  %q210 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 1
  %y211 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q210, i32 0, i32 1
  %149 = load i32, i32* %y211, align 4, !tbaa !47
  %p212 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %mask_rect, i32 0, i32 0
  %y213 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p212, i32 0, i32 1
  %150 = load i32, i32* %y213, align 4, !tbaa !45
  %sub214 = sub nsw i32 %149, %150
  %151 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %151, i32 0, i32 17
  store i32 %sub214, i32* %mask_height, align 4, !tbaa !49
  %152 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict215 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %152, i32 0, i32 11
  %Height216 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict215, i32 0, i32 3
  %153 = load i32, i32* %Height216, align 4, !tbaa !14
  %154 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_full_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %154, i32 0, i32 18
  store i32 %153, i32* %mask_full_height, align 4, !tbaa !50
  %155 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %155, i32 0, i32 24
  store i32 0, i32* %mask_y, align 4, !tbaa !51
  %156 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_skip = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %156, i32 0, i32 26
  store i32 0, i32* %mask_skip, align 4, !tbaa !52
  %q217 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %x218 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q217, i32 0, i32 0
  %157 = load i32, i32* %x218, align 4, !tbaa !46
  %p219 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %x220 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p219, i32 0, i32 0
  %158 = load i32, i32* %x220, align 4, !tbaa !42
  %sub221 = sub nsw i32 %157, %158
  %159 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_width = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %159, i32 0, i32 19
  store i32 %sub221, i32* %pixel_width, align 4, !tbaa !53
  %q222 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 1
  %y223 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q222, i32 0, i32 1
  %160 = load i32, i32* %y223, align 4, !tbaa !47
  %p224 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %data_rect, i32 0, i32 0
  %y225 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p224, i32 0, i32 1
  %161 = load i32, i32* %y225, align 4, !tbaa !45
  %sub226 = sub nsw i32 %160, %161
  %162 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %162, i32 0, i32 20
  store i32 %sub226, i32* %pixel_height, align 4, !tbaa !54
  %163 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Height227 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %163, i32 0, i32 3
  %164 = load i32, i32* %Height227, align 4, !tbaa !13
  %165 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_full_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %165, i32 0, i32 21
  store i32 %164, i32* %pixel_full_height, align 4, !tbaa !55
  %166 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %166, i32 0, i32 25
  store i32 0, i32* %pixel_y, align 4, !tbaa !56
  %167 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %167, i32 0, i32 11
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %mask_info, align 8, !tbaa !57
  %168 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %168, i32 0, i32 12
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %pixel_info, align 8, !tbaa !58
  %169 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType228 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %169, i32 0, i32 10
  %170 = load i32, i32* %InterleaveType228, align 4, !tbaa !12
  %cmp229 = icmp eq i32 %170, 1
  br i1 %cmp229, label %if.then.231, label %if.end.257

if.then.231:                                      ; preds = %if.end.204
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs232, i32 0, i32 7
  %172 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !59
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %174 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_width233 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %174, i32 0, i32 19
  %175 = load i32, i32* %pixel_width233, align 4, !tbaa !53
  %176 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %BitsPerComponent234 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %176, i32 0, i32 4
  %177 = load i32, i32* %BitsPerComponent234, align 4, !tbaa !18
  %mul235 = mul nsw i32 %175, %177
  %178 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components236 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %178, i32 0, i32 14
  %179 = load i32, i32* %num_components236, align 4, !tbaa !35
  %mul237 = mul nsw i32 %mul235, %179
  %add238 = add nsw i32 %mul237, 7
  %shr = ashr i32 %add238, 3
  %call239 = call i8* %172(%struct.gs_memory_s* %173, i32 %shr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  %180 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data240 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %180, i32 0, i32 23
  store i8* %call239, i8** %pixel_data240, align 8, !tbaa !39
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs241 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %181, i32 0, i32 1
  %alloc_bytes242 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs241, i32 0, i32 7
  %182 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes242, align 8, !tbaa !59
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %184 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_width243 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %184, i32 0, i32 16
  %185 = load i32, i32* %mask_width243, align 4, !tbaa !48
  %add244 = add nsw i32 %185, 7
  %shr245 = ashr i32 %add244, 3
  %call246 = call i8* %182(%struct.gs_memory_s* %183, i32 %shr245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #5
  %186 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data247 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %186, i32 0, i32 22
  store i8* %call246, i8** %mask_data247, align 8, !tbaa !38
  %187 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data248 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %187, i32 0, i32 23
  %188 = load i8*, i8** %pixel_data248, align 8, !tbaa !39
  %cmp249 = icmp eq i8* %188, null
  br i1 %cmp249, label %if.then.255, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %if.then.231
  %189 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data252 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %189, i32 0, i32 22
  %190 = load i8*, i8** %mask_data252, align 8, !tbaa !38
  %cmp253 = icmp eq i8* %190, null
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %lor.lhs.false.251, %if.then.231
  store i32 -25, i32* %code, align 4, !tbaa !20
  br label %out1

if.end.256:                                       ; preds = %lor.lhs.false.251
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.end.204
  %191 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType258 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %191, i32 0, i32 10
  %192 = load i32, i32* %InterleaveType258, align 4, !tbaa !12
  %193 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %InterleaveType259 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %193, i32 0, i32 13
  store i32 %192, i32* %InterleaveType259, align 4, !tbaa !60
  %194 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %BitsPerComponent260 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %194, i32 0, i32 4
  %195 = load i32, i32* %BitsPerComponent260, align 4, !tbaa !18
  %196 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %196, i32 0, i32 15
  store i32 %195, i32* %bpc, align 4, !tbaa !61
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %198 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %198, i32 0, i32 3
  store %struct.gs_memory_s* %197, %struct.gs_memory_s** %memory, align 8, !tbaa !62
  %p261 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y262 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p261, i32 0, i32 1
  store double 0.000000e+00, double* %y262, align 8, !tbaa !63
  %p263 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x264 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p263, i32 0, i32 0
  store double 0.000000e+00, double* %x264, align 8, !tbaa !67
  %199 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict265 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %199, i32 0, i32 11
  %Width266 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict265, i32 0, i32 2
  %200 = load i32, i32* %Width266, align 4, !tbaa !15
  %conv267 = sitofp i32 %200 to double
  %q268 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %x269 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q268, i32 0, i32 0
  store double %conv267, double* %x269, align 8, !tbaa !68
  %201 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict270 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %201, i32 0, i32 11
  %Height271 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict270, i32 0, i32 3
  %202 = load i32, i32* %Height271, align 4, !tbaa !14
  %conv272 = sitofp i32 %202 to double
  %q273 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %y274 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q273, i32 0, i32 1
  store double %conv272, double* %y274, align 8, !tbaa !69
  %203 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp275 = icmp eq %struct.gs_matrix_s* %203, null
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.end.257
  %204 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %204, i32 0, i32 5
  %205 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %205, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.257
  %206 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call279 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mi_mask, %struct.gs_matrix_s* %206, %struct.gs_matrix_s* %mat) #5
  store i32 %call279, i32* %code, align 4, !tbaa !20
  %cmp280 = icmp slt i32 %call279, 0
  br i1 %cmp280, label %if.then.286, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %if.end.278
  %call283 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %mrect, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %mrect) #5
  store i32 %call283, i32* %code, align 4, !tbaa !20
  %cmp284 = icmp slt i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %lor.lhs.false.282, %if.end.278
  %207 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %207, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

if.end.287:                                       ; preds = %lor.lhs.false.282
  %p288 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x289 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p288, i32 0, i32 0
  %208 = load double, double* %x289, align 8, !tbaa !67
  %cmp290 = fcmp olt double %208, 0.000000e+00
  br i1 %cmp290, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.287
  %p292 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x293 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p292, i32 0, i32 0
  %209 = load double, double* %x293, align 8, !tbaa !67
  %call294 = call double @ceil(double %209) #7
  %conv295 = fptosi double %call294 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.287
  %p296 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x297 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p296, i32 0, i32 0
  %210 = load double, double* %x297, align 8, !tbaa !67
  %call298 = call double @floor(double %210) #7
  %conv299 = fptosi double %call298 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv295, %cond.true ], [ %conv299, %cond.false ]
  %x300 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 0
  store i32 %cond, i32* %x300, align 4, !tbaa !70
  %p301 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y302 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p301, i32 0, i32 1
  %211 = load double, double* %y302, align 8, !tbaa !63
  %cmp303 = fcmp olt double %211, 0.000000e+00
  br i1 %cmp303, label %cond.true.305, label %cond.false.310

cond.true.305:                                    ; preds = %cond.end
  %p306 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y307 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p306, i32 0, i32 1
  %212 = load double, double* %y307, align 8, !tbaa !63
  %call308 = call double @ceil(double %212) #7
  %conv309 = fptosi double %call308 to i32
  br label %cond.end.315

cond.false.310:                                   ; preds = %cond.end
  %p311 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y312 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p311, i32 0, i32 1
  %213 = load double, double* %y312, align 8, !tbaa !63
  %call313 = call double @floor(double %213) #7
  %conv314 = fptosi double %call313 to i32
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.310, %cond.true.305
  %cond316 = phi i32 [ %conv309, %cond.true.305 ], [ %conv314, %cond.false.310 ]
  %y317 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 1
  store i32 %cond316, i32* %y317, align 4, !tbaa !71
  %214 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*)** %make_mid.addr, align 8, !tbaa !1
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %q318 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %x319 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q318, i32 0, i32 0
  %216 = load double, double* %x319, align 8, !tbaa !68
  %call320 = call double @ceil(double %216) #7
  %conv321 = fptosi double %call320 to i32
  %x322 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 0
  %217 = load i32, i32* %x322, align 4, !tbaa !70
  %sub323 = sub nsw i32 %conv321, %217
  %q324 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %y325 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q324, i32 0, i32 1
  %218 = load double, double* %y325, align 8, !tbaa !69
  %call326 = call double @ceil(double %218) #7
  %conv327 = fptosi double %call326 to i32
  %y328 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 1
  %219 = load i32, i32* %y328, align 4, !tbaa !71
  %sub329 = sub nsw i32 %conv327, %219
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call330 = call i32 %214(%struct.gx_device_s** %mdev, %struct.gx_device_s* %215, i32 %sub323, i32 %sub329, %struct.gs_memory_s* %220) #5
  store i32 %call330, i32* %code, align 4, !tbaa !20
  %221 = load i32, i32* %code, align 4, !tbaa !20
  %cmp331 = icmp slt i32 %221, 0
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %cond.end.315
  br label %out1

if.end.334:                                       ; preds = %cond.end.315
  %222 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %223 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mdev335 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %223, i32 0, i32 9
  store %struct.gx_device_s* %222, %struct.gx_device_s** %mdev335, align 8, !tbaa !72
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %i_mask, i32 0, i32 1) #5
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_mask, i32 0, i32 11
  store i32 0, i32* %adjust, align 4, !tbaa !73
  %224 = bitcast %struct.gx_image_type_s** %type1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #2
  %type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_mask, i32 0, i32 0
  %225 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !75
  store %struct.gx_image_type_s* %225, %struct.gx_image_type_s** %type1, align 8, !tbaa !1
  %226 = bitcast %struct.gs_image1_s* %i_mask to %struct.gs_data_image_s*
  %227 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict336 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %227, i32 0, i32 11
  %228 = bitcast %struct.gs_data_image_s* %226 to i8*
  %229 = bitcast %struct.gs_data_image_s* %MaskDict336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %229, i64 568, i32 8, i1 false), !tbaa.struct !76
  %230 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type1, align 8, !tbaa !1
  %type337 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_mask, i32 0, i32 0
  store %struct.gx_image_type_s* %230, %struct.gx_image_type_s** %type337, align 8, !tbaa !75
  %BitsPerComponent338 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_mask, i32 0, i32 4
  store i32 1, i32* %BitsPerComponent338, align 4, !tbaa !78
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_mask, i32 0, i32 13
  store i32 2, i32* %image_parent_type, align 4, !tbaa !79
  %231 = bitcast %struct.gx_image_type_s** %type1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %232) #2
  %233 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %233) #2
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 1, i64* %pure, align 8, !tbaa !40
  %234 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type339 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* %234, %struct.gx_device_color_type_s** %type339, align 8, !tbaa !80
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !86
  %235 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %236 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  %237 = bitcast %struct.gs_matrix_s* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %236, i8* %237, i64 24, i32 4, i1 false), !tbaa.struct !87
  %x340 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 0
  %238 = load i32, i32* %x340, align 4, !tbaa !70
  %conv341 = sitofp i32 %238 to float
  %tx342 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m_mat, i32 0, i32 4
  %239 = load float, float* %tx342, align 4, !tbaa !29
  %sub343 = fsub float %239, %conv341
  store float %sub343, float* %tx342, align 4, !tbaa !29
  %y344 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 1
  %240 = load i32, i32* %y344, align 4, !tbaa !71
  %conv345 = sitofp i32 %240 to float
  %ty346 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m_mat, i32 0, i32 5
  %241 = load float, float* %ty346, align 4, !tbaa !30
  %sub347 = fsub float %241, %conv345
  store float %sub347, float* %ty346, align 4, !tbaa !30
  %242 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %procs348 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %242, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs348, i32 0, i32 37
  %begin_typed_image349 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %243 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image349, align 8, !tbaa !88
  %244 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %245 = bitcast %struct.gs_image1_s* %i_mask to %struct.gs_image_common_s*
  %246 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %247 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info350 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %247, i32 0, i32 11
  %call351 = call i32 %243(%struct.gx_device_s* %244, %struct.gs_imager_state_s* null, %struct.gs_matrix_s* %m_mat, %struct.gs_image_common_s* %245, %struct.gs_int_rect_s* %mask_rect, %struct.gx_device_color_s* %dcolor, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %246, %struct.gx_image_enum_common_s** %mask_info350) #5
  store i32 %call351, i32* %code, align 4, !tbaa !20
  %248 = load i32, i32* %code, align 4, !tbaa !20
  %cmp352 = icmp slt i32 %248, 0
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.end.334
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.355:                                       ; preds = %if.end.334
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.354, %if.end.355
  %249 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %249) #2
  %250 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %250) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.434 [
    i32 0, label %cleanup.cont
    i32 4, label %out2
  ]

cleanup.cont:                                     ; preds = %cleanup
  %251 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %ColorSpace357 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %251, i32 0, i32 9
  %252 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace357, align 8, !tbaa !34
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %i_pixel, %struct.gs_color_space_s* %252, i32 1) #5
  %253 = bitcast %struct.gx_image_type_s** %type1358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #2
  %type359 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_pixel, i32 0, i32 0
  %254 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type359, align 8, !tbaa !75
  store %struct.gx_image_type_s* %254, %struct.gx_image_type_s** %type1358, align 8, !tbaa !1
  %255 = bitcast %struct.gs_image1_s* %i_pixel to %struct.gs_pixel_image_s*
  %256 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %257 = bitcast %struct.gs_image3_s* %256 to %struct.gs_pixel_image_s*
  %258 = bitcast %struct.gs_pixel_image_s* %255 to i8*
  %259 = bitcast %struct.gs_pixel_image_s* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %258, i8* %259, i64 584, i32 8, i1 false), !tbaa.struct !100
  %260 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type1358, align 8, !tbaa !1
  %type360 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_pixel, i32 0, i32 0
  store %struct.gx_image_type_s* %260, %struct.gx_image_type_s** %type360, align 8, !tbaa !75
  %image_parent_type361 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %i_pixel, i32 0, i32 13
  store i32 2, i32* %image_parent_type361, align 4, !tbaa !79
  %261 = bitcast %struct.gx_image_type_s** %type1358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #2
  %262 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gx_image_enum_common_s*, %struct.gs_int_point_s*)** %make_mcde.addr, align 8, !tbaa !1
  %263 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %264 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %265 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %266 = bitcast %struct.gs_image1_s* %i_pixel to %struct.gs_image_common_s*
  %267 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %268 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %269 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %270 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %271 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info362 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %271, i32 0, i32 12
  %272 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %273 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info363 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %273, i32 0, i32 11
  %274 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info363, align 8, !tbaa !57
  %call364 = call i32 %262(%struct.gx_device_s* %263, %struct.gs_imager_state_s* %264, %struct.gs_matrix_s* %265, %struct.gs_image_common_s* %266, %struct.gs_int_rect_s* %267, %struct.gx_device_color_s* %268, %struct.gx_clip_path_s* %269, %struct.gs_memory_s* %270, %struct.gx_image_enum_common_s** %pixel_info362, %struct.gx_device_s** %pcdev, %struct.gx_device_s* %272, %struct.gx_image_enum_common_s* %274, %struct.gs_int_point_s* %origin) #5
  store i32 %call364, i32* %code, align 4, !tbaa !20
  %275 = load i32, i32* %code, align 4, !tbaa !20
  %cmp365 = icmp slt i32 %275, 0
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %cleanup.cont
  br label %out3

if.end.368:                                       ; preds = %cleanup.cont
  %276 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %277 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pcdev369 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %277, i32 0, i32 10
  store %struct.gx_device_s* %276, %struct.gx_device_s** %pcdev369, align 8, !tbaa !101
  %278 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %InterleaveType370 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %278, i32 0, i32 10
  %279 = load i32, i32* %InterleaveType370, align 4, !tbaa !12
  switch i32 %279, label %sw.epilog.421 [
    i32 1, label %sw.bb.371
    i32 2, label %sw.bb.382
    i32 3, label %sw.bb.390
  ]

sw.bb.371:                                        ; preds = %if.end.368
  %280 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %280, i32 0, i32 6
  store i32 1, i32* %num_planes, align 4, !tbaa !102
  %281 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %Width372 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %281, i32 0, i32 2
  %282 = load i32, i32* %Width372, align 4, !tbaa !16
  %283 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %283, i32 0, i32 8
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i64 0
  store i32 %282, i32* %arrayidx, align 4, !tbaa !20
  %284 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info373 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %284, i32 0, i32 12
  %285 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info373, align 8, !tbaa !58
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %285, i32 0, i32 7
  %arrayidx374 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %286 = load i32, i32* %arrayidx374, align 4, !tbaa !20
  %287 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components375 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %287, i32 0, i32 14
  %288 = load i32, i32* %num_components375, align 4, !tbaa !35
  %add376 = add nsw i32 %288, 1
  %mul377 = mul nsw i32 %286, %add376
  %289 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components378 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %289, i32 0, i32 14
  %290 = load i32, i32* %num_components378, align 4, !tbaa !35
  %div379 = sdiv i32 %mul377, %290
  %291 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths380 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %291, i32 0, i32 7
  %arrayidx381 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths380, i32 0, i64 0
  store i32 %div379, i32* %arrayidx381, align 4, !tbaa !20
  br label %sw.epilog.421

sw.bb.382:                                        ; preds = %if.end.368
  %292 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_planes383 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %292, i32 0, i32 6
  store i32 1, i32* %num_planes383, align 4, !tbaa !102
  %293 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths384 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %293, i32 0, i32 7
  %arrayidx385 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths384, i32 0, i64 0
  store i32 1, i32* %arrayidx385, align 4, !tbaa !20
  %294 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict386 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %294, i32 0, i32 11
  %Width387 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict386, i32 0, i32 2
  %295 = load i32, i32* %Width387, align 4, !tbaa !15
  %296 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths388 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %296, i32 0, i32 8
  %arrayidx389 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths388, i32 0, i64 0
  store i32 %295, i32* %arrayidx389, align 4, !tbaa !20
  br label %sw.epilog.421

sw.bb.390:                                        ; preds = %if.end.368
  %297 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info391 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %297, i32 0, i32 12
  %298 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info391, align 8, !tbaa !58
  %num_planes392 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %298, i32 0, i32 6
  %299 = load i32, i32* %num_planes392, align 4, !tbaa !103
  %add393 = add nsw i32 %299, 1
  %300 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_planes394 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %300, i32 0, i32 6
  store i32 %add393, i32* %num_planes394, align 4, !tbaa !102
  %301 = load %struct.gs_image3_s*, %struct.gs_image3_s** %pim, align 8, !tbaa !1
  %MaskDict395 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %301, i32 0, i32 11
  %Width396 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict395, i32 0, i32 2
  %302 = load i32, i32* %Width396, align 4, !tbaa !15
  %303 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths397 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %303, i32 0, i32 8
  %arrayidx398 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths397, i32 0, i64 0
  store i32 %302, i32* %arrayidx398, align 4, !tbaa !20
  %304 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths399 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %304, i32 0, i32 7
  %arrayidx400 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths399, i32 0, i64 0
  store i32 1, i32* %arrayidx400, align 4, !tbaa !20
  %305 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths401 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %305, i32 0, i32 8
  %arrayidx402 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths401, i32 0, i64 1
  %306 = bitcast i32* %arrayidx402 to i8*
  %307 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info403 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %307, i32 0, i32 12
  %308 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info403, align 8, !tbaa !58
  %plane_widths404 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %308, i32 0, i32 8
  %arrayidx405 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths404, i32 0, i64 0
  %309 = bitcast i32* %arrayidx405 to i8*
  %310 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_planes406 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %310, i32 0, i32 6
  %311 = load i32, i32* %num_planes406, align 4, !tbaa !102
  %sub407 = sub nsw i32 %311, 1
  %conv408 = sext i32 %sub407 to i64
  %mul409 = mul i64 %conv408, 4
  %call410 = call i8* @memcpy(i8* %306, i8* %309, i64 %mul409) #6
  %312 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths411 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %312, i32 0, i32 7
  %arrayidx412 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths411, i32 0, i64 1
  %313 = bitcast i32* %arrayidx412 to i8*
  %314 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info413 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %314, i32 0, i32 12
  %315 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info413, align 8, !tbaa !58
  %plane_depths414 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %315, i32 0, i32 7
  %arrayidx415 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths414, i32 0, i64 0
  %316 = bitcast i32* %arrayidx415 to i8*
  %317 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_planes416 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %317, i32 0, i32 6
  %318 = load i32, i32* %num_planes416, align 4, !tbaa !102
  %sub417 = sub nsw i32 %318, 1
  %conv418 = sext i32 %sub417 to i64
  %mul419 = mul i64 %conv418, 4
  %call420 = call i8* @memcpy(i8* %313, i8* %316, i64 %mul419) #6
  br label %sw.epilog.421

sw.epilog.421:                                    ; preds = %if.end.368, %sw.bb.390, %sw.bb.382, %sw.bb.371
  %319 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %319, i32 1) #5
  %320 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %320, i32 1) #5
  %321 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %322 = bitcast %struct.gx_image3_enum_s* %321 to %struct.gx_image_enum_common_s*
  %323 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %322, %struct.gx_image_enum_common_s** %323, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

out3:                                             ; preds = %if.then.367
  %324 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info422 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %324, i32 0, i32 11
  %325 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info422, align 8, !tbaa !57
  %call423 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %325, i32 0) #5
  br label %out2

out2:                                             ; preds = %out3, %cleanup
  %326 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %call424 = call i32 @gs_closedevice(%struct.gx_device_s* %326) #5
  %327 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs425 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %327, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs425, i32 0, i32 2
  %328 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !105
  %329 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %330 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %331 = bitcast %struct.gx_device_s* %330 to i8*
  call void %328(%struct.gs_memory_s* %329, i8* %331, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %out1

out1:                                             ; preds = %out2, %if.then.333, %if.then.255
  %332 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs426 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %332, i32 0, i32 1
  %free_object427 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs426, i32 0, i32 2
  %333 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object427, align 8, !tbaa !105
  %334 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %335 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data428 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %335, i32 0, i32 22
  %336 = load i8*, i8** %mask_data428, align 8, !tbaa !38
  call void %333(%struct.gs_memory_s* %334, i8* %336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #5
  %337 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs429 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %337, i32 0, i32 1
  %free_object430 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs429, i32 0, i32 2
  %338 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object430, align 8, !tbaa !105
  %339 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %340 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data431 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %340, i32 0, i32 23
  %341 = load i8*, i8** %pixel_data431, align 8, !tbaa !39
  call void %338(%struct.gs_memory_s* %339, i8* %341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  %342 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs432 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %342, i32 0, i32 1
  %free_object433 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs432, i32 0, i32 2
  %343 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object433, align 8, !tbaa !105
  %344 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %345 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %346 = bitcast %struct.gx_image3_enum_s* %345 to i8*
  call void %343(%struct.gs_memory_s* %344, i8* %346, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %347 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %347, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.434

cleanup.434:                                      ; preds = %out1, %sw.epilog.421, %cleanup, %if.then.286, %if.then.126, %if.then.121, %if.then.106, %if.then.70, %if.then.63, %if.then.38, %if.then.35, %if.then.29, %if.then.17, %sw.default, %if.then
  %348 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #2
  %349 = bitcast %struct.gs_int_point_s* %origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #2
  %350 = bitcast %struct.gs_rect_s* %mrect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %350) #2
  %351 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %351) #2
  %352 = bitcast %struct.gs_matrix_s* %mi_mask to i8*
  call void @llvm.lifetime.end(i64 24, i8* %352) #2
  %353 = bitcast %struct.gs_matrix_s* %mi_pixel to i8*
  call void @llvm.lifetime.end(i64 24, i8* %353) #2
  %354 = bitcast %struct.gs_image1_s* %i_mask to i8*
  call void @llvm.lifetime.end(i64 600, i8* %354) #2
  %355 = bitcast %struct.gs_image1_s* %i_pixel to i8*
  call void @llvm.lifetime.end(i64 600, i8* %355) #2
  %356 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #2
  %357 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #2
  %358 = bitcast %struct.gs_int_rect_s* %data_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %358) #2
  %359 = bitcast %struct.gs_int_rect_s* %mask_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %359) #2
  %360 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #2
  %361 = bitcast %struct.gs_image3_s* %local_pim to i8*
  call void @llvm.lifetime.end(i64 1160, i8* %361) #2
  %362 = bitcast %struct.gs_image3_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #2
  %363 = load i32, i32* %retval
  ret i32 %363
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_image3_extent(double %mask_coeff, double %data_coeff) #0 {
entry:
  %retval = alloca i32, align 4
  %mask_coeff.addr = alloca double, align 8
  %data_coeff.addr = alloca double, align 8
  store double %mask_coeff, double* %mask_coeff.addr, align 8, !tbaa !106
  store double %data_coeff, double* %data_coeff.addr, align 8, !tbaa !106
  %0 = load double, double* %mask_coeff.addr, align 8, !tbaa !106
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %data_coeff.addr, align 8, !tbaa !106
  %cmp1 = fcmp oeq double %1, 0.000000e+00
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %data_coeff.addr, align 8, !tbaa !106
  %cmp2 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load double, double* %mask_coeff.addr, align 8, !tbaa !106
  %cmp4 = fcmp ogt double %3, 0.000000e+00
  %conv5 = zext i1 %cmp4 to i32
  %4 = load double, double* %data_coeff.addr, align 8, !tbaa !106
  %cmp6 = fcmp ogt double %4, 0.000000e+00
  %conv7 = zext i1 %cmp6 to i32
  %cmp8 = icmp ne i32 %conv5, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #1

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #1

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #1

declare i32 @gs_closedevice(%struct.gx_device_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @make_mid_default(%struct.gx_device_s** %pmidev, %struct.gx_device_s* %dev, i32 %width, i32 %height, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pmidev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %midev = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pmidev, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !20
  store i32 %height, i32* %height.addr, align 4, !tbaa !20
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %midev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %4, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %7, %struct.gs_memory_s* %8, %struct.gx_device_s* null) #5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 46
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !107
  %11 = load i32, i32* %width.addr, align 4, !tbaa !20
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 13
  store i32 %11, i32* %width1, align 4, !tbaa !116
  %13 = load i32, i32* %height.addr, align 4, !tbaa !20
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 14
  store i32 %13, i32* %height2, align 4, !tbaa !117
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_memory_s* %15 to %struct.gx_device_s*
  %call3 = call i32 @gx_device_raster(%struct.gx_device_s* %16, i32 1) #5
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 44
  store i32 %call3, i32* %raster, align 4, !tbaa !118
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_memory_s* %18 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %19) #5
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_memory_s* %20 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %21) #5
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 0
  %23 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !119
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_memory_s* %24 to %struct.gx_device_s*
  %call5 = call i32 %23(%struct.gx_device_s* %25) #5
  store i32 %call5, i32* %code, align 4, !tbaa !20
  %26 = load i32, i32* %code, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %26, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !105
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_memory_s* %30 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #5
  %32 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !120
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 7
  %35 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !121
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_memory_s* %36 to %struct.gx_device_s*
  %38 = load i32, i32* %width.addr, align 4, !tbaa !20
  %39 = load i32, i32* %height.addr, align 4, !tbaa !20
  %call11 = call i32 %35(%struct.gx_device_s* %37, i32 0, i32 0, i32 %38, i32 %39, i64 0) #5
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_memory_s* %40 to %struct.gx_device_s*
  %42 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %41, %struct.gx_device_s** %42, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast %struct.gx_device_memory_s** %midev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @make_mcde_default(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, %struct.gx_device_s** %pmcdev, %struct.gx_device_s* %midev, %struct.gx_image_enum_common_s* %pminfo, %struct.gs_int_point_s* %origin) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pmcdev.addr = alloca %struct.gx_device_s**, align 8
  %midev.addr = alloca %struct.gx_device_s*, align 8
  %pminfo.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %origin.addr = alloca %struct.gs_int_point_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %mcdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %bits = alloca %struct.gx_strip_bitmap_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pmcdev, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %midev, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pminfo, %struct.gx_image_enum_common_s** %pminfo.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %origin, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %midev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !31
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* @st_device_mask_clip, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #5
  %7 = bitcast i8* %call to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %7, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_strip_bitmap_s* %bits to i8*
  call void @llvm.lifetime.start(i64 48, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_mask_clip_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 45
  %12 = load i8*, i8** %base, align 8, !tbaa !122
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 0
  store i8* %12, i8** %data, align 8, !tbaa !123
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 44
  %14 = load i32, i32* %raster, align 4, !tbaa !118
  %raster1 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 1
  store i32 %14, i32* %raster1, align 4, !tbaa !125
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !116
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %16, i32* %x, align 4, !tbaa !126
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height, align 4, !tbaa !117
  %size2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size2, i32 0, i32 1
  store i32 %18, i32* %y, align 4, !tbaa !127
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 3
  store i64 0, i64* %id, align 8, !tbaa !128
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %bits, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !129
  %19 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %20 = bitcast %struct.gx_strip_bitmap_s* %bits to %struct.gx_bitmap_s*
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %22 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %22, i32 0, i32 0
  %23 = load i32, i32* %x3, align 4, !tbaa !70
  %24 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %24, i32 0, i32 1
  %25 = load i32, i32* %y4, align 4, !tbaa !71
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i32 @gx_mask_clip_initialize(%struct.gx_device_mask_clip_s* %19, %struct.gx_device_mask_clip_s* @gs_mask_clip_device, %struct.gx_bitmap_s* %20, %struct.gx_device_s* %21, i32 %23, i32 %25, %struct.gs_memory_s* %26) #5
  store i32 %call5, i32* %code, align 4, !tbaa !20
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %27, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !105
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_mask_clip_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #5
  %33 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %34 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %34, i32 0, i32 44
  %35 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  %36 = bitcast %struct.gx_strip_bitmap_s* %bits to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 48, i32 8, i1 false), !tbaa.struct !130
  %37 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %37, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 37
  %begin_typed_image11 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %38 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image11, align 8, !tbaa !132
  %39 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_mask_clip_s* %39 to %struct.gx_device_s*
  %41 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %43 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %44 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call12 = call i32 %38(%struct.gx_device_s* %40, %struct.gs_imager_state_s* %41, %struct.gs_matrix_s* %42, %struct.gs_image_common_s* %43, %struct.gs_int_rect_s* %44, %struct.gx_device_color_s* %45, %struct.gx_clip_path_s* %46, %struct.gs_memory_s* %47, %struct.gx_image_enum_common_s** %48) #5
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %49 = load i32, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %49, 0
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.9
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !105
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_mask_clip_s* %53 to i8*
  call void %51(%struct.gs_memory_s* %52, i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #5
  %55 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.9
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_mask_clip_s* %56 to %struct.gx_device_s*
  %58 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %57, %struct.gx_device_s** %58, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.14, %if.then.7, %if.then
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast %struct.gx_strip_bitmap_s* %bits to i8*
  call void @llvm.lifetime.end(i64 48, i8* %60) #2
  %61 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #1

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

declare i32 @gx_mask_clip_initialize(%struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s*, %struct.gx_bitmap_s*, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %penum = alloca %struct.gx_image3_enum_s*, align 8
  %pixel_height = alloca i32, align 4
  %pixel_used = alloca i32, align 4
  %mask_height = alloca i32, align 4
  %mask_used = alloca i32, align 4
  %h1 = alloca i32, align 4
  %h = alloca i32, align 4
  %pixel_planes = alloca %struct.gx_image_plane_s*, align 8
  %pixel_plane = alloca %struct.gx_image_plane_s, align 8
  %mask_plane = alloca %struct.gx_image_plane_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %h_orig = alloca i32, align 4
  %bpc = alloca i32, align 4
  %num_components = alloca i32, align 4
  %width = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %mptr = alloca i8*, align 8
  %mbit = alloca i32, align 4
  %mbbyte = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %pbit = alloca i32, align 4
  %pbbyte = alloca i8, align 1
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  %skip = alloca i32, align 4
  %mask_h = alloca i32, align 4
  %skip338 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !20
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3_enum_s*
  store %struct.gx_image3_enum_s* %2, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %pixel_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_height1 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %4, i32 0, i32 20
  %5 = load i32, i32* %pixel_height1, align 4, !tbaa !54
  store i32 %5, i32* %pixel_height, align 4, !tbaa !20
  %6 = bitcast i32* %pixel_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %pixel_used, align 4, !tbaa !20
  %7 = bitcast i32* %mask_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_height2 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %8, i32 0, i32 17
  %9 = load i32, i32* %mask_height2, align 4, !tbaa !49
  store i32 %9, i32* %mask_height, align 4, !tbaa !20
  %10 = bitcast i32* %mask_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %mask_used, align 4, !tbaa !20
  %11 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %pixel_height, align 4, !tbaa !20
  %13 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %13, i32 0, i32 25
  %14 = load i32, i32* %pixel_y, align 4, !tbaa !56
  %sub = sub nsw i32 %12, %14
  %15 = load i32, i32* %mask_height, align 4, !tbaa !20
  %16 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %16, i32 0, i32 24
  %17 = load i32, i32* %mask_y, align 4, !tbaa !51
  %sub3 = sub nsw i32 %15, %17
  %cmp = icmp sgt i32 %sub, %sub3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load i32, i32* %pixel_height, align 4, !tbaa !20
  %19 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_y4 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %19, i32 0, i32 25
  %20 = load i32, i32* %pixel_y4, align 4, !tbaa !56
  %sub5 = sub nsw i32 %18, %20
  br label %cond.end

cond.false:                                       ; preds = %entry
  %21 = load i32, i32* %mask_height, align 4, !tbaa !20
  %22 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y6 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %22, i32 0, i32 24
  %23 = load i32, i32* %mask_y6, align 4, !tbaa !51
  %sub7 = sub nsw i32 %21, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %sub7, %cond.false ]
  store i32 %cond, i32* %h1, align 4, !tbaa !20
  %24 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %height.addr, align 4, !tbaa !20
  %26 = load i32, i32* %h1, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %25, %26
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  %27 = load i32, i32* %height.addr, align 4, !tbaa !20
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  %28 = load i32, i32* %h1, align 4, !tbaa !20
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %27, %cond.true.9 ], [ %28, %cond.false.10 ]
  store i32 %cond12, i32* %h, align 4, !tbaa !20
  %29 = bitcast %struct.gx_image_plane_s** %pixel_planes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_image_plane_s* %pixel_plane to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #2
  %31 = bitcast %struct.gx_image_plane_s* %mask_plane to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #2
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 0, i32* %code, align 4, !tbaa !20
  %33 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 0, i32* %33, align 4, !tbaa !20
  %34 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %34, i32 0, i32 13
  %35 = load i32, i32* %InterleaveType, align 4, !tbaa !60
  switch i32 %35, label %sw.default.292 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.275
    i32 3, label %sw.bb.285
  ]

sw.bb:                                            ; preds = %cond.end.11
  %36 = load i32, i32* %h, align 4, !tbaa !20
  %cmp13 = icmp sle i32 %36, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

if.end:                                           ; preds = %sw.bb
  %37 = load i32, i32* %h, align 4, !tbaa !20
  %cmp14 = icmp sgt i32 %37, 1
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %38 = bitcast i32* %h_orig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i32, i32* %h, align 4, !tbaa !20
  store i32 %39, i32* %h_orig, align 4, !tbaa !20
  %40 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %40, i64 0
  %41 = bitcast %struct.gx_image_plane_s* %mask_plane to i8*
  %42 = bitcast %struct.gx_image_plane_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !134
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.15
  %43 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %44 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %call = call i32 @gx_image3_plane_data(%struct.gx_image_enum_common_s* %43, %struct.gx_image_plane_s* %mask_plane, i32 1, i32* %44) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %45 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %46 = load i32, i32* %45, align 4, !tbaa !20
  %47 = load i32, i32* %h, align 4, !tbaa !20
  %sub16 = sub nsw i32 %47, %46
  store i32 %sub16, i32* %h, align 4, !tbaa !20
  %48 = load i32, i32* %code, align 4, !tbaa !20
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body
  br label %do.end

if.end.18:                                        ; preds = %do.body
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 2
  %49 = load i32, i32* %raster, align 4, !tbaa !135
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8, !tbaa !137
  %idx.ext = zext i32 %49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !137
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %51 = load i32, i32* %h, align 4, !tbaa !20
  %tobool19 = icmp ne i32 %51, 0
  br i1 %tobool19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.17
  %52 = load i32, i32* %h_orig, align 4, !tbaa !20
  %53 = load i32, i32* %h, align 4, !tbaa !20
  %sub20 = sub nsw i32 %52, %53
  %54 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %sub20, i32* %54, align 4, !tbaa !20
  %55 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %56 = bitcast i32* %h_orig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  br label %cleanup.386

if.end.21:                                        ; preds = %if.end
  %57 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %bpc22 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %58, i32 0, i32 15
  %59 = load i32, i32* %bpc22, align 4, !tbaa !61
  store i32 %59, i32* %bpc, align 4, !tbaa !20
  %60 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %num_components23 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %61, i32 0, i32 14
  %62 = load i32, i32* %num_components23, align 4, !tbaa !35
  store i32 %62, i32* %num_components, align 4, !tbaa !20
  %63 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_width = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %64, i32 0, i32 19
  %65 = load i32, i32* %pixel_width, align 4, !tbaa !53
  store i32 %65, i32* %width, align 4, !tbaa !20
  %66 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i32, i32* %bpc, align 4, !tbaa !20
  %68 = load i32, i32* %num_components, align 4, !tbaa !20
  %add = add nsw i32 %68, 1
  %mul = mul nsw i32 %67, %add
  %69 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %69, i64 0
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx24, i32 0, i32 1
  %70 = load i32, i32* %data_x, align 4, !tbaa !138
  %mul25 = mul nsw i32 %mul, %70
  store i32 %mul25, i32* %bit_x, align 4, !tbaa !20
  %71 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #2
  %72 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %72, i64 0
  %data27 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx26, i32 0, i32 0
  %73 = load i8*, i8** %data27, align 8, !tbaa !137
  %74 = load i32, i32* %bit_x, align 4, !tbaa !20
  %shr = lshr i32 %74, 3
  %idx.ext28 = zext i32 %shr to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %73, i64 %idx.ext28
  store i8* %add.ptr29, i8** %sptr, align 8, !tbaa !1
  %75 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = load i32, i32* %bit_x, align 4, !tbaa !20
  %and = and i32 %76, 7
  store i32 %and, i32* %sbit, align 4, !tbaa !20
  %77 = bitcast i8** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %78, i32 0, i32 22
  %79 = load i8*, i8** %mask_data, align 8, !tbaa !38
  store i8* %79, i8** %mptr, align 8, !tbaa !1
  %80 = bitcast i32* %mbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  store i32 0, i32* %mbit, align 4, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %mbbyte) #2
  %81 = load i32, i32* %mbit, align 4, !tbaa !20
  %tobool30 = icmp ne i32 %81, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %if.end.21
  %82 = load i8*, i8** %mptr, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !5
  %conv = zext i8 %83 to i32
  %84 = load i32, i32* %mbit, align 4, !tbaa !20
  %shr32 = ashr i32 65280, %84
  %and33 = and i32 %conv, %shr32
  %conv34 = trunc i32 %and33 to i8
  %conv35 = zext i8 %conv34 to i32
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.end.21
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.31
  %cond38 = phi i32 [ %conv35, %cond.true.31 ], [ 0, %cond.false.36 ]
  %conv39 = trunc i32 %cond38 to i8
  store i8 %conv39, i8* %mbbyte, align 1, !tbaa !5
  %85 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %86, i32 0, i32 23
  %87 = load i8*, i8** %pixel_data, align 8, !tbaa !39
  store i8* %87, i8** %pptr, align 8, !tbaa !1
  %88 = bitcast i32* %pbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #2
  store i32 0, i32* %pbit, align 4, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %pbbyte) #2
  %89 = load i32, i32* %pbit, align 4, !tbaa !20
  %tobool40 = icmp ne i32 %89, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.47

cond.true.41:                                     ; preds = %cond.end.37
  %90 = load i8*, i8** %pptr, align 8, !tbaa !1
  %91 = load i8, i8* %90, align 1, !tbaa !5
  %conv42 = zext i8 %91 to i32
  %92 = load i32, i32* %pbit, align 4, !tbaa !20
  %shr43 = ashr i32 65280, %92
  %and44 = and i32 %conv42, %shr43
  %conv45 = trunc i32 %and44 to i8
  %conv46 = zext i8 %conv45 to i32
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.end.37
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.41
  %cond49 = phi i32 [ %conv46, %cond.true.41 ], [ 0, %cond.false.47 ]
  %conv50 = trunc i32 %cond49 to i8
  store i8 %conv50, i8* %pbbyte, align 1, !tbaa !5
  %93 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load i8*, i8** %mptr, align 8, !tbaa !1
  %data51 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 0
  store i8* %94, i8** %data51, align 8, !tbaa !137
  %data_x52 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 1
  store i32 0, i32* %data_x52, align 4, !tbaa !138
  %raster53 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 2
  store i32 0, i32* %raster53, align 4, !tbaa !135
  %95 = load i8*, i8** %pptr, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %pixel_plane, i32 0, i32 0
  store i8* %95, i8** %data54, align 8, !tbaa !137
  %data_x55 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %pixel_plane, i32 0, i32 1
  store i32 0, i32* %data_x55, align 4, !tbaa !138
  store %struct.gx_image_plane_s* %pixel_plane, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.237, %cond.end.48
  %96 = load i32, i32* %x, align 4, !tbaa !20
  %97 = load i32, i32* %width, align 4, !tbaa !20
  %cmp56 = icmp slt i32 %96, %97
  br i1 %cmp56, label %for.body, label %for.end.239

for.body:                                         ; preds = %for.cond
  %98 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #2
  br label %do.body.58

do.body.58:                                       ; preds = %for.body
  %100 = load i32, i32* %bpc, align 4, !tbaa !20
  %shr59 = ashr i32 %100, 2
  switch i32 %shr59, label %sw.default [
    i32 0, label %sw.bb.60
    i32 1, label %sw.bb.66
    i32 2, label %sw.bb.71
    i32 3, label %sw.bb.73
  ]

sw.bb.60:                                         ; preds = %do.body.58
  %101 = load i8*, i8** %sptr, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !5
  %conv61 = zext i8 %102 to i32
  %103 = load i32, i32* %sbit, align 4, !tbaa !20
  %sub62 = sub nsw i32 8, %103
  %104 = load i32, i32* %bpc, align 4, !tbaa !20
  %sub63 = sub nsw i32 %sub62, %104
  %shr64 = ashr i32 %conv61, %sub63
  %105 = load i32, i32* %bpc, align 4, !tbaa !20
  %or = or i32 %105, 1
  %and65 = and i32 %shr64, %or
  store i32 %and65, i32* %value, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.66:                                         ; preds = %do.body.58
  %106 = load i8*, i8** %sptr, align 8, !tbaa !1
  %107 = load i8, i8* %106, align 1, !tbaa !5
  %conv67 = zext i8 %107 to i32
  %108 = load i32, i32* %sbit, align 4, !tbaa !20
  %sub68 = sub nsw i32 4, %108
  %shr69 = ashr i32 %conv67, %sub68
  %and70 = and i32 %shr69, 15
  store i32 %and70, i32* %value, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.71:                                         ; preds = %do.body.58
  %109 = load i8*, i8** %sptr, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !5
  %conv72 = zext i8 %110 to i32
  store i32 %conv72, i32* %value, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.73:                                         ; preds = %do.body.58
  %111 = load i32, i32* %sbit, align 4, !tbaa !20
  %tobool74 = icmp ne i32 %111, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.81

cond.true.75:                                     ; preds = %sw.bb.73
  %112 = load i8*, i8** %sptr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !5
  %conv76 = zext i8 %113 to i32
  %and77 = and i32 %conv76, 15
  %shl = shl i32 %and77, 8
  %114 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx78, align 1, !tbaa !5
  %conv79 = zext i8 %115 to i32
  %or80 = or i32 %shl, %conv79
  br label %cond.end.88

cond.false.81:                                    ; preds = %sw.bb.73
  %116 = load i8*, i8** %sptr, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !5
  %conv82 = zext i8 %117 to i32
  %shl83 = shl i32 %conv82, 4
  %118 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx84, align 1, !tbaa !5
  %conv85 = zext i8 %119 to i32
  %shr86 = ashr i32 %conv85, 4
  %or87 = or i32 %shl83, %shr86
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.81, %cond.true.75
  %cond89 = phi i32 [ %or80, %cond.true.75 ], [ %or87, %cond.false.81 ]
  store i32 %cond89, i32* %value, align 4, !tbaa !20
  br label %sw.epilog

sw.default:                                       ; preds = %do.body.58
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %cond.end.88, %sw.bb.71, %sw.bb.66, %sw.bb.60
  br label %do.cond.90

do.cond.90:                                       ; preds = %sw.epilog
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %120 = load i32, i32* %bpc, align 4, !tbaa !20
  %121 = load i32, i32* %sbit, align 4, !tbaa !20
  %add93 = add nsw i32 %121, %120
  store i32 %add93, i32* %sbit, align 4, !tbaa !20
  %122 = load i32, i32* %sbit, align 4, !tbaa !20
  %shr94 = ashr i32 %122, 3
  %123 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext95 = sext i32 %shr94 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %123, i64 %idx.ext95
  store i8* %add.ptr96, i8** %sptr, align 8, !tbaa !1
  %124 = load i32, i32* %sbit, align 4, !tbaa !20
  %and97 = and i32 %124, 7
  store i32 %and97, i32* %sbit, align 4, !tbaa !20
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.92
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %125 = load i32, i32* %mbit, align 4, !tbaa !20
  %add101 = add nsw i32 %125, 1
  store i32 %add101, i32* %mbit, align 4, !tbaa !20
  %cmp102 = icmp eq i32 %add101, 8
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %do.body.100
  %126 = load i8, i8* %mbbyte, align 1, !tbaa !5
  %conv105 = zext i8 %126 to i32
  %127 = load i32, i32* %value, align 4, !tbaa !20
  %cmp106 = icmp ne i32 %127, 0
  %conv107 = zext i1 %cmp106 to i32
  %conv108 = trunc i32 %conv107 to i8
  %conv109 = zext i8 %conv108 to i32
  %or110 = or i32 %conv105, %conv109
  %conv111 = trunc i32 %or110 to i8
  %128 = load i8*, i8** %mptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr, i8** %mptr, align 8, !tbaa !1
  store i8 %conv111, i8* %128, align 1, !tbaa !5
  store i8 0, i8* %mbbyte, align 1, !tbaa !5
  store i32 0, i32* %mbit, align 4, !tbaa !20
  br label %if.end.121

if.else:                                          ; preds = %do.body.100
  %129 = load i32, i32* %value, align 4, !tbaa !20
  %cmp112 = icmp ne i32 %129, 0
  %conv113 = zext i1 %cmp112 to i32
  %130 = load i32, i32* %mbit, align 4, !tbaa !20
  %sub114 = sub nsw i32 8, %130
  %shl115 = shl i32 %conv113, %sub114
  %conv116 = trunc i32 %shl115 to i8
  %conv117 = zext i8 %conv116 to i32
  %131 = load i8, i8* %mbbyte, align 1, !tbaa !5
  %conv118 = zext i8 %131 to i32
  %or119 = or i32 %conv118, %conv117
  %conv120 = trunc i32 %or119 to i8
  store i8 %conv120, i8* %mbbyte, align 1, !tbaa !5
  br label %if.end.121

if.end.121:                                       ; preds = %if.else, %if.then.104
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc, %do.end.123
  %132 = load i32, i32* %i, align 4, !tbaa !20
  %133 = load i32, i32* %num_components, align 4, !tbaa !20
  %cmp125 = icmp slt i32 %132, %133
  br i1 %cmp125, label %for.body.127, label %for.end

for.body.127:                                     ; preds = %for.cond.124
  br label %do.body.128

do.body.128:                                      ; preds = %for.body.127
  %134 = load i32, i32* %bpc, align 4, !tbaa !20
  %shr129 = ashr i32 %134, 2
  switch i32 %shr129, label %sw.default.162 [
    i32 0, label %sw.bb.130
    i32 1, label %sw.bb.137
    i32 2, label %sw.bb.142
    i32 3, label %sw.bb.144
  ]

sw.bb.130:                                        ; preds = %do.body.128
  %135 = load i8*, i8** %sptr, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !5
  %conv131 = zext i8 %136 to i32
  %137 = load i32, i32* %sbit, align 4, !tbaa !20
  %sub132 = sub nsw i32 8, %137
  %138 = load i32, i32* %bpc, align 4, !tbaa !20
  %sub133 = sub nsw i32 %sub132, %138
  %shr134 = ashr i32 %conv131, %sub133
  %139 = load i32, i32* %bpc, align 4, !tbaa !20
  %or135 = or i32 %139, 1
  %and136 = and i32 %shr134, %or135
  store i32 %and136, i32* %value, align 4, !tbaa !20
  br label %sw.epilog.163

sw.bb.137:                                        ; preds = %do.body.128
  %140 = load i8*, i8** %sptr, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !5
  %conv138 = zext i8 %141 to i32
  %142 = load i32, i32* %sbit, align 4, !tbaa !20
  %sub139 = sub nsw i32 4, %142
  %shr140 = ashr i32 %conv138, %sub139
  %and141 = and i32 %shr140, 15
  store i32 %and141, i32* %value, align 4, !tbaa !20
  br label %sw.epilog.163

sw.bb.142:                                        ; preds = %do.body.128
  %143 = load i8*, i8** %sptr, align 8, !tbaa !1
  %144 = load i8, i8* %143, align 1, !tbaa !5
  %conv143 = zext i8 %144 to i32
  store i32 %conv143, i32* %value, align 4, !tbaa !20
  br label %sw.epilog.163

sw.bb.144:                                        ; preds = %do.body.128
  %145 = load i32, i32* %sbit, align 4, !tbaa !20
  %tobool145 = icmp ne i32 %145, 0
  br i1 %tobool145, label %cond.true.146, label %cond.false.153

cond.true.146:                                    ; preds = %sw.bb.144
  %146 = load i8*, i8** %sptr, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !5
  %conv147 = zext i8 %147 to i32
  %and148 = and i32 %conv147, 15
  %shl149 = shl i32 %and148, 8
  %148 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %148, i64 1
  %149 = load i8, i8* %arrayidx150, align 1, !tbaa !5
  %conv151 = zext i8 %149 to i32
  %or152 = or i32 %shl149, %conv151
  br label %cond.end.160

cond.false.153:                                   ; preds = %sw.bb.144
  %150 = load i8*, i8** %sptr, align 8, !tbaa !1
  %151 = load i8, i8* %150, align 1, !tbaa !5
  %conv154 = zext i8 %151 to i32
  %shl155 = shl i32 %conv154, 4
  %152 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %152, i64 1
  %153 = load i8, i8* %arrayidx156, align 1, !tbaa !5
  %conv157 = zext i8 %153 to i32
  %shr158 = ashr i32 %conv157, 4
  %or159 = or i32 %shl155, %shr158
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.153, %cond.true.146
  %cond161 = phi i32 [ %or152, %cond.true.146 ], [ %or159, %cond.false.153 ]
  store i32 %cond161, i32* %value, align 4, !tbaa !20
  br label %sw.epilog.163

sw.default.162:                                   ; preds = %do.body.128
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.163:                                    ; preds = %cond.end.160, %sw.bb.142, %sw.bb.137, %sw.bb.130
  br label %do.cond.164

do.cond.164:                                      ; preds = %sw.epilog.163
  br label %do.end.165

do.end.165:                                       ; preds = %do.cond.164
  br label %do.body.166

do.body.166:                                      ; preds = %do.end.165
  %154 = load i32, i32* %bpc, align 4, !tbaa !20
  %155 = load i32, i32* %sbit, align 4, !tbaa !20
  %add167 = add nsw i32 %155, %154
  store i32 %add167, i32* %sbit, align 4, !tbaa !20
  %156 = load i32, i32* %sbit, align 4, !tbaa !20
  %shr168 = ashr i32 %156, 3
  %157 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext169 = sext i32 %shr168 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %157, i64 %idx.ext169
  store i8* %add.ptr170, i8** %sptr, align 8, !tbaa !1
  %158 = load i32, i32* %sbit, align 4, !tbaa !20
  %and171 = and i32 %158, 7
  store i32 %and171, i32* %sbit, align 4, !tbaa !20
  br label %do.cond.172

do.cond.172:                                      ; preds = %do.body.166
  br label %do.end.173

do.end.173:                                       ; preds = %do.cond.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %159 = load i32, i32* %bpc, align 4, !tbaa !20
  %shr175 = ashr i32 %159, 2
  switch i32 %shr175, label %sw.default.232 [
    i32 0, label %sw.bb.176
    i32 1, label %sw.bb.196
    i32 3, label %sw.bb.209
    i32 2, label %sw.bb.229
  ]

sw.bb.176:                                        ; preds = %do.body.174
  %160 = load i32, i32* %bpc, align 4, !tbaa !20
  %161 = load i32, i32* %pbit, align 4, !tbaa !20
  %add177 = add nsw i32 %161, %160
  store i32 %add177, i32* %pbit, align 4, !tbaa !20
  %cmp178 = icmp eq i32 %add177, 8
  br i1 %cmp178, label %if.then.180, label %if.else.187

if.then.180:                                      ; preds = %sw.bb.176
  %162 = load i8, i8* %pbbyte, align 1, !tbaa !5
  %conv181 = zext i8 %162 to i32
  %163 = load i32, i32* %value, align 4, !tbaa !20
  %conv182 = trunc i32 %163 to i8
  %conv183 = zext i8 %conv182 to i32
  %or184 = or i32 %conv181, %conv183
  %conv185 = trunc i32 %or184 to i8
  %164 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr186 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr186, i8** %pptr, align 8, !tbaa !1
  store i8 %conv185, i8* %164, align 1, !tbaa !5
  store i8 0, i8* %pbbyte, align 1, !tbaa !5
  store i32 0, i32* %pbit, align 4, !tbaa !20
  br label %if.end.195

if.else.187:                                      ; preds = %sw.bb.176
  %165 = load i32, i32* %value, align 4, !tbaa !20
  %166 = load i32, i32* %pbit, align 4, !tbaa !20
  %sub188 = sub nsw i32 8, %166
  %shl189 = shl i32 %165, %sub188
  %conv190 = trunc i32 %shl189 to i8
  %conv191 = zext i8 %conv190 to i32
  %167 = load i8, i8* %pbbyte, align 1, !tbaa !5
  %conv192 = zext i8 %167 to i32
  %or193 = or i32 %conv192, %conv191
  %conv194 = trunc i32 %or193 to i8
  store i8 %conv194, i8* %pbbyte, align 1, !tbaa !5
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.187, %if.then.180
  br label %sw.epilog.233

sw.bb.196:                                        ; preds = %do.body.174
  %168 = load i32, i32* %pbit, align 4, !tbaa !20
  %xor = xor i32 %168, 4
  store i32 %xor, i32* %pbit, align 4, !tbaa !20
  %tobool197 = icmp ne i32 %xor, 0
  br i1 %tobool197, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %sw.bb.196
  %169 = load i32, i32* %value, align 4, !tbaa !20
  %shl199 = shl i32 %169, 4
  %conv200 = trunc i32 %shl199 to i8
  store i8 %conv200, i8* %pbbyte, align 1, !tbaa !5
  br label %if.end.208

if.else.201:                                      ; preds = %sw.bb.196
  %170 = load i8, i8* %pbbyte, align 1, !tbaa !5
  %conv202 = zext i8 %170 to i32
  %171 = load i32, i32* %value, align 4, !tbaa !20
  %conv203 = trunc i32 %171 to i8
  %conv204 = zext i8 %conv203 to i32
  %or205 = or i32 %conv202, %conv204
  %conv206 = trunc i32 %or205 to i8
  %172 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr207 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr207, i8** %pptr, align 8, !tbaa !1
  store i8 %conv206, i8* %172, align 1, !tbaa !5
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.201, %if.then.198
  br label %sw.epilog.233

sw.bb.209:                                        ; preds = %do.body.174
  %173 = load i32, i32* %pbit, align 4, !tbaa !20
  %xor210 = xor i32 %173, 4
  store i32 %xor210, i32* %pbit, align 4, !tbaa !20
  %tobool211 = icmp ne i32 %xor210, 0
  br i1 %tobool211, label %if.then.212, label %if.else.218

if.then.212:                                      ; preds = %sw.bb.209
  %174 = load i32, i32* %value, align 4, !tbaa !20
  %shr213 = lshr i32 %174, 4
  %conv214 = trunc i32 %shr213 to i8
  %175 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr215 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr215, i8** %pptr, align 8, !tbaa !1
  store i8 %conv214, i8* %175, align 1, !tbaa !5
  %176 = load i32, i32* %value, align 4, !tbaa !20
  %shl216 = shl i32 %176, 4
  %conv217 = trunc i32 %shl216 to i8
  store i8 %conv217, i8* %pbbyte, align 1, !tbaa !5
  br label %if.end.228

if.else.218:                                      ; preds = %sw.bb.209
  %177 = load i8, i8* %pbbyte, align 1, !tbaa !5
  %conv219 = zext i8 %177 to i32
  %178 = load i32, i32* %value, align 4, !tbaa !20
  %shr220 = lshr i32 %178, 8
  %conv221 = trunc i32 %shr220 to i8
  %conv222 = zext i8 %conv221 to i32
  %or223 = or i32 %conv219, %conv222
  %conv224 = trunc i32 %or223 to i8
  %179 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv224, i8* %179, align 1, !tbaa !5
  %180 = load i32, i32* %value, align 4, !tbaa !20
  %conv225 = trunc i32 %180 to i8
  %181 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 %conv225, i8* %arrayidx226, align 1, !tbaa !5
  %182 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr227 = getelementptr inbounds i8, i8* %182, i64 2
  store i8* %add.ptr227, i8** %pptr, align 8, !tbaa !1
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.218, %if.then.212
  br label %sw.epilog.233

sw.bb.229:                                        ; preds = %do.body.174
  %183 = load i32, i32* %value, align 4, !tbaa !20
  %conv230 = trunc i32 %183 to i8
  %184 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr231 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr231, i8** %pptr, align 8, !tbaa !1
  store i8 %conv230, i8* %184, align 1, !tbaa !5
  br label %sw.epilog.233

sw.default.232:                                   ; preds = %do.body.174
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.233:                                    ; preds = %sw.bb.229, %if.end.228, %if.end.208, %if.end.195
  br label %do.cond.234

do.cond.234:                                      ; preds = %sw.epilog.233
  br label %do.end.235

do.end.235:                                       ; preds = %do.cond.234
  br label %for.inc

for.inc:                                          ; preds = %do.end.235
  %185 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %185, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond.124

for.end:                                          ; preds = %for.cond.124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default.232, %sw.default.162, %sw.default
  %186 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.260 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.237

for.inc.237:                                      ; preds = %cleanup.cont
  %188 = load i32, i32* %x, align 4, !tbaa !20
  %inc238 = add nsw i32 %188, 1
  store i32 %inc238, i32* %x, align 4, !tbaa !20
  br label %for.cond

for.end.239:                                      ; preds = %for.cond
  %189 = load i32, i32* %mbit, align 4, !tbaa !20
  %cmp240 = icmp ne i32 %189, 0
  br i1 %cmp240, label %if.then.242, label %if.end.249

if.then.242:                                      ; preds = %for.end.239
  %190 = load i8, i8* %mbbyte, align 1, !tbaa !5
  %conv243 = zext i8 %190 to i32
  %191 = load i8*, i8** %mptr, align 8, !tbaa !1
  %192 = load i8, i8* %191, align 1, !tbaa !5
  %conv244 = zext i8 %192 to i32
  %193 = load i32, i32* %mbit, align 4, !tbaa !20
  %shr245 = ashr i32 255, %193
  %and246 = and i32 %conv244, %shr245
  %or247 = or i32 %conv243, %and246
  %conv248 = trunc i32 %or247 to i8
  %194 = load i8*, i8** %mptr, align 8, !tbaa !1
  store i8 %conv248, i8* %194, align 1, !tbaa !5
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.242, %for.end.239
  %195 = load i32, i32* %pbit, align 4, !tbaa !20
  %cmp250 = icmp ne i32 %195, 0
  br i1 %cmp250, label %if.then.252, label %if.end.259

if.then.252:                                      ; preds = %if.end.249
  %196 = load i8, i8* %pbbyte, align 1, !tbaa !5
  %conv253 = zext i8 %196 to i32
  %197 = load i8*, i8** %pptr, align 8, !tbaa !1
  %198 = load i8, i8* %197, align 1, !tbaa !5
  %conv254 = zext i8 %198 to i32
  %199 = load i32, i32* %pbit, align 4, !tbaa !20
  %shr255 = ashr i32 255, %199
  %and256 = and i32 %conv254, %shr255
  %or257 = or i32 %conv253, %and256
  %conv258 = trunc i32 %or257 to i8
  %200 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv258, i8* %200, align 1, !tbaa !5
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.252, %if.end.249
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.260

cleanup.260:                                      ; preds = %if.end.259, %cleanup
  %201 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  call void @llvm.lifetime.end(i64 1, i8* %pbbyte) #2
  %202 = bitcast i32* %pbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #2
  %203 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #2
  call void @llvm.lifetime.end(i64 1, i8* %mbbyte) #2
  %204 = bitcast i32* %mbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #2
  %205 = bitcast i8** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  %206 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #2
  %207 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #2
  %208 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #2
  %211 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #2
  %cleanup.dest.273 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.273, label %cleanup.386 [
    i32 0, label %cleanup.cont.274
  ]

cleanup.cont.274:                                 ; preds = %cleanup.260
  br label %sw.epilog.293

sw.bb.275:                                        ; preds = %cond.end.11
  %212 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %call276 = call i32 @planes_next(%struct.gx_image3_enum_s* %212) #5
  %cmp277 = icmp sge i32 %call276, 0
  br i1 %cmp277, label %if.then.279, label %if.else.282

if.then.279:                                      ; preds = %sw.bb.275
  %213 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %213, i64 0
  %214 = bitcast %struct.gx_image_plane_s* %mask_plane to i8*
  %215 = bitcast %struct.gx_image_plane_s* %arrayidx280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %215, i64 16, i32 8, i1 false), !tbaa.struct !134
  store %struct.gx_image_plane_s* %pixel_plane, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %data281 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %pixel_plane, i32 0, i32 0
  store i8* null, i8** %data281, align 8, !tbaa !137
  br label %if.end.284

if.else.282:                                      ; preds = %sw.bb.275
  %data283 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 0
  store i8* null, i8** %data283, align 8, !tbaa !137
  %216 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %216, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.282, %if.then.279
  br label %sw.epilog.293

sw.bb.285:                                        ; preds = %cond.end.11
  %217 = load i32, i32* %h, align 4, !tbaa !20
  %cmp286 = icmp sgt i32 %217, 1
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %sw.bb.285
  store i32 1, i32* %h, align 4, !tbaa !20
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.288, %sw.bb.285
  %218 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %218, i64 0
  %219 = bitcast %struct.gx_image_plane_s* %mask_plane to i8*
  %220 = bitcast %struct.gx_image_plane_s* %arrayidx290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %219, i8* %220, i64 16, i32 8, i1 false), !tbaa.struct !134
  %221 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %add.ptr291 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %221, i64 1
  store %struct.gx_image_plane_s* %add.ptr291, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  br label %sw.epilog.293

sw.default.292:                                   ; preds = %cond.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

sw.epilog.293:                                    ; preds = %if.end.289, %if.end.284, %cleanup.cont.274
  %data294 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 0
  %222 = load i8*, i8** %data294, align 8, !tbaa !137
  %tobool295 = icmp ne i8* %222, null
  br i1 %tobool295, label %if.then.296, label %if.end.322

if.then.296:                                      ; preds = %sw.epilog.293
  %223 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #2
  %224 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_skip = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %224, i32 0, i32 26
  %225 = load i32, i32* %mask_skip, align 4, !tbaa !52
  store i32 %225, i32* %skip, align 4, !tbaa !20
  %226 = load i32, i32* %skip, align 4, !tbaa !20
  %227 = load i32, i32* %h, align 4, !tbaa !20
  %cmp297 = icmp sge i32 %226, %227
  br i1 %cmp297, label %if.then.299, label %if.else.302

if.then.299:                                      ; preds = %if.then.296
  %228 = load i32, i32* %skip, align 4, !tbaa !20
  %229 = load i32, i32* %h, align 4, !tbaa !20
  store i32 %229, i32* %mask_used, align 4, !tbaa !20
  %sub300 = sub nsw i32 %228, %229
  %230 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_skip301 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %230, i32 0, i32 26
  store i32 %sub300, i32* %mask_skip301, align 4, !tbaa !52
  br label %if.end.312

if.else.302:                                      ; preds = %if.then.296
  %231 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #2
  %232 = load i32, i32* %h, align 4, !tbaa !20
  %233 = load i32, i32* %skip, align 4, !tbaa !20
  %sub303 = sub nsw i32 %232, %233
  store i32 %sub303, i32* %mask_h, align 4, !tbaa !20
  %234 = load i32, i32* %skip, align 4, !tbaa !20
  %raster304 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 2
  %235 = load i32, i32* %raster304, align 4, !tbaa !135
  %mul305 = mul i32 %234, %235
  %data306 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %mask_plane, i32 0, i32 0
  %236 = load i8*, i8** %data306, align 8, !tbaa !137
  %idx.ext307 = zext i32 %mul305 to i64
  %add.ptr308 = getelementptr inbounds i8, i8* %236, i64 %idx.ext307
  store i8* %add.ptr308, i8** %data306, align 8, !tbaa !137
  %237 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_skip309 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %237, i32 0, i32 26
  store i32 0, i32* %mask_skip309, align 4, !tbaa !52
  %238 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %238, i32 0, i32 11
  %239 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info, align 8, !tbaa !57
  %240 = load i32, i32* %mask_h, align 4, !tbaa !20
  %call310 = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %239, %struct.gx_image_plane_s* %mask_plane, i32 %240, i32* %mask_used) #5
  store i32 %call310, i32* %code, align 4, !tbaa !20
  %241 = load i32, i32* %skip, align 4, !tbaa !20
  %242 = load i32, i32* %mask_used, align 4, !tbaa !20
  %add311 = add nsw i32 %242, %241
  store i32 %add311, i32* %mask_used, align 4, !tbaa !20
  %243 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #2
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.302, %if.then.299
  %244 = load i32, i32* %mask_used, align 4, !tbaa !20
  %245 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %244, i32* %245, align 4, !tbaa !20
  %246 = load i32, i32* %mask_used, align 4, !tbaa !20
  %247 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y313 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %247, i32 0, i32 24
  %248 = load i32, i32* %mask_y313, align 4, !tbaa !51
  %add314 = add nsw i32 %248, %246
  store i32 %add314, i32* %mask_y313, align 4, !tbaa !51
  %249 = load i32, i32* %code, align 4, !tbaa !20
  %cmp315 = icmp slt i32 %249, 0
  br i1 %cmp315, label %if.then.317, label %if.end.318

if.then.317:                                      ; preds = %if.end.312
  %250 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %250, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.319

if.end.318:                                       ; preds = %if.end.312
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.319

cleanup.319:                                      ; preds = %if.end.318, %if.then.317
  %251 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %cleanup.dest.320 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.320, label %cleanup.386 [
    i32 0, label %cleanup.cont.321
  ]

cleanup.cont.321:                                 ; preds = %cleanup.319
  br label %if.end.322

if.end.322:                                       ; preds = %cleanup.cont.321, %sw.epilog.293
  %252 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %252, i64 0
  %data324 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx323, i32 0, i32 0
  %253 = load i8*, i8** %data324, align 8, !tbaa !137
  %tobool325 = icmp ne i8* %253, null
  br i1 %tobool325, label %if.then.326, label %if.end.345

if.then.326:                                      ; preds = %if.end.322
  %254 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info327 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %254, i32 0, i32 11
  %255 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info327, align 8, !tbaa !57
  %call328 = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %255) #5
  %256 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %256, i32 0, i32 12
  %257 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info, align 8, !tbaa !58
  %258 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %259 = load i32, i32* %h, align 4, !tbaa !20
  %call329 = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %257, %struct.gx_image_plane_s* %258, i32 %259, i32* %pixel_used) #5
  store i32 %call329, i32* %code, align 4, !tbaa !20
  %260 = load i32, i32* %pixel_used, align 4, !tbaa !20
  %261 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %260, i32* %261, align 4, !tbaa !20
  %262 = load i32, i32* %pixel_used, align 4, !tbaa !20
  %263 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_y330 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %263, i32 0, i32 25
  %264 = load i32, i32* %pixel_y330, align 4, !tbaa !56
  %add331 = add nsw i32 %264, %262
  store i32 %add331, i32* %pixel_y330, align 4, !tbaa !56
  %265 = load i32, i32* %code, align 4, !tbaa !20
  %cmp332 = icmp slt i32 %265, 0
  br i1 %cmp332, label %if.then.334, label %if.end.344

if.then.334:                                      ; preds = %if.then.326
  %266 = load i32, i32* %mask_used, align 4, !tbaa !20
  %267 = load i32, i32* %pixel_used, align 4, !tbaa !20
  %cmp335 = icmp sgt i32 %266, %267
  br i1 %cmp335, label %if.then.337, label %if.end.343

if.then.337:                                      ; preds = %if.then.334
  %268 = bitcast i32* %skip338 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %268) #2
  %269 = load i32, i32* %mask_used, align 4, !tbaa !20
  %270 = load i32, i32* %pixel_used, align 4, !tbaa !20
  %sub339 = sub nsw i32 %269, %270
  store i32 %sub339, i32* %skip338, align 4, !tbaa !20
  %271 = load i32, i32* %skip338, align 4, !tbaa !20
  %272 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_skip340 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %272, i32 0, i32 26
  store i32 %271, i32* %mask_skip340, align 4, !tbaa !52
  %273 = load i32, i32* %skip338, align 4, !tbaa !20
  %274 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y341 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %274, i32 0, i32 24
  %275 = load i32, i32* %mask_y341, align 4, !tbaa !51
  %sub342 = sub nsw i32 %275, %273
  store i32 %sub342, i32* %mask_y341, align 4, !tbaa !51
  %276 = load i32, i32* %pixel_used, align 4, !tbaa !20
  store i32 %276, i32* %mask_used, align 4, !tbaa !20
  %277 = bitcast i32* %skip338 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.337, %if.then.334
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.then.326
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.322
  br label %do.body.346

do.body.346:                                      ; preds = %if.end.345
  br label %do.cond.347

do.cond.347:                                      ; preds = %do.body.346
  br label %do.end.348

do.end.348:                                       ; preds = %do.cond.347
  %278 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_y349 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %278, i32 0, i32 24
  %279 = load i32, i32* %mask_y349, align 4, !tbaa !51
  %280 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_height350 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %280, i32 0, i32 17
  %281 = load i32, i32* %mask_height350, align 4, !tbaa !49
  %cmp351 = icmp sge i32 %279, %281
  br i1 %cmp351, label %land.lhs.true, label %if.end.358

land.lhs.true:                                    ; preds = %do.end.348
  %282 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_y353 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %282, i32 0, i32 25
  %283 = load i32, i32* %pixel_y353, align 4, !tbaa !56
  %284 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_height354 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %284, i32 0, i32 20
  %285 = load i32, i32* %pixel_height354, align 4, !tbaa !54
  %cmp355 = icmp sge i32 %283, %285
  br i1 %cmp355, label %if.then.357, label %if.end.358

if.then.357:                                      ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

if.end.358:                                       ; preds = %land.lhs.true, %do.end.348
  %286 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %InterleaveType359 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %286, i32 0, i32 13
  %287 = load i32, i32* %InterleaveType359, align 4, !tbaa !60
  %cmp360 = icmp eq i32 %287, 2
  br i1 %cmp360, label %if.then.362, label %if.end.379

if.then.362:                                      ; preds = %if.end.358
  %288 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %call363 = call i32 @planes_next(%struct.gx_image3_enum_s* %288) #5
  %cmp364 = icmp sge i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.else.369

if.then.366:                                      ; preds = %if.then.362
  %289 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_width = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %289, i32 0, i32 16
  %290 = load i32, i32* %mask_width, align 4, !tbaa !48
  %291 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %291, i32 0, i32 8
  %arrayidx367 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i64 0
  store i32 %290, i32* %arrayidx367, align 4, !tbaa !20
  %292 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %292, i32 0, i32 7
  %arrayidx368 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  store i32 1, i32* %arrayidx368, align 4, !tbaa !20
  br label %if.end.378

if.else.369:                                      ; preds = %if.then.362
  %293 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_width370 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %293, i32 0, i32 19
  %294 = load i32, i32* %pixel_width370, align 4, !tbaa !53
  %295 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_widths371 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %295, i32 0, i32 8
  %arrayidx372 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths371, i32 0, i64 0
  store i32 %294, i32* %arrayidx372, align 4, !tbaa !20
  %296 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info373 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %296, i32 0, i32 12
  %297 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info373, align 8, !tbaa !58
  %plane_depths374 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %297, i32 0, i32 7
  %arrayidx375 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths374, i32 0, i64 0
  %298 = load i32, i32* %arrayidx375, align 4, !tbaa !20
  %299 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %plane_depths376 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %299, i32 0, i32 7
  %arrayidx377 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths376, i32 0, i64 0
  store i32 %298, i32* %arrayidx377, align 4, !tbaa !20
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.369, %if.then.366
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.end.358
  %300 = load i32, i32* %code, align 4, !tbaa !20
  %cmp380 = icmp slt i32 %300, 0
  br i1 %cmp380, label %cond.true.382, label %cond.false.383

cond.true.382:                                    ; preds = %if.end.379
  %301 = load i32, i32* %code, align 4, !tbaa !20
  br label %cond.end.384

cond.false.383:                                   ; preds = %if.end.379
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.383, %cond.true.382
  %cond385 = phi i32 [ %301, %cond.true.382 ], [ 0, %cond.false.383 ]
  store i32 %cond385, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

cleanup.386:                                      ; preds = %cond.end.384, %if.then.357, %cleanup.319, %sw.default.292, %cleanup.260, %do.end, %if.then
  %302 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast %struct.gx_image_plane_s* %mask_plane to i8*
  call void @llvm.lifetime.end(i64 16, i8* %303) #2
  %304 = bitcast %struct.gx_image_plane_s* %pixel_plane to i8*
  call void @llvm.lifetime.end(i64 16, i8* %304) #2
  %305 = bitcast %struct.gx_image_plane_s** %pixel_planes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #2
  %306 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %mask_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %mask_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %pixel_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %pixel_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #2
  %313 = load i32, i32* %retval
  ret i32 %313
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %penum = alloca %struct.gx_image3_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %mdev = alloca %struct.gx_device_s*, align 8
  %mcode = alloca i32, align 4
  %pcdev = alloca %struct.gx_device_s*, align 8
  %pcode = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3_enum_s*
  store %struct.gx_image3_enum_s* %2, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !62
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %7, i32 0, i32 9
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev1, align 8, !tbaa !72
  store %struct.gx_device_s* %8, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %9 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %10, i32 0, i32 11
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info, align 8, !tbaa !57
  %12 = load i32, i32* %draw_last.addr, align 4, !tbaa !20
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %11, i32 %12) #5
  store i32 %call, i32* %mcode, align 4, !tbaa !20
  %13 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pcdev2 = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %14, i32 0, i32 10
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev2, align 8, !tbaa !101
  store %struct.gx_device_s* %15, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %16 = bitcast i32* %pcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %17, i32 0, i32 12
  %18 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info, align 8, !tbaa !58
  %19 = load i32, i32* %draw_last.addr, align 4, !tbaa !20
  %call3 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %18, i32 %19) #5
  store i32 %call3, i32* %pcode, align 4, !tbaa !20
  %20 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %call4 = call i32 @gs_closedevice(%struct.gx_device_s* %21) #5
  store i32 %call4, i32* %code1, align 4, !tbaa !20
  %22 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %call5 = call i32 @gs_closedevice(%struct.gx_device_s* %23) #5
  store i32 %call5, i32* %code2, align 4, !tbaa !20
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !105
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %27, i32 0, i32 22
  %28 = load i8*, i8** %mask_data, align 8, !tbaa !38
  call void %25(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #5
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !105
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_data = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %32, i32 0, i32 23
  %33 = load i8*, i8** %pixel_data, align 8, !tbaa !39
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)) #5
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !105
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_s* %37 to i8*
  call void %35(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #5
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !105
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_s* %42 to i8*
  call void %40(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #5
  %44 = load i32, i32* %pcode, align 4, !tbaa !20
  %cmp = icmp slt i32 %44, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %45 = load i32, i32* %pcode, align 4, !tbaa !20
  br label %cond.end.20

cond.false:                                       ; preds = %entry
  %46 = load i32, i32* %mcode, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %46, 0
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  %47 = load i32, i32* %mcode, align 4, !tbaa !20
  br label %cond.end.18

cond.false.14:                                    ; preds = %cond.false
  %48 = load i32, i32* %code1, align 4, !tbaa !20
  %cmp15 = icmp slt i32 %48, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false.14
  %49 = load i32, i32* %code1, align 4, !tbaa !20
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false.14
  %50 = load i32, i32* %code2, align 4, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ %49, %cond.true.16 ], [ %50, %cond.false.17 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true.13
  %cond19 = phi i32 [ %47, %cond.true.13 ], [ %cond, %cond.end ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.18, %cond.true
  %cond21 = phi i32 [ %45, %cond.true ], [ %cond19, %cond.end.18 ]
  %51 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %pcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gx_device_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  ret i32 %cond21
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3_flush(%struct.gx_image_enum_common_s* %info) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %penum = alloca %struct.gx_image3_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3_enum_s*
  store %struct.gx_image3_enum_s* %2, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %mask_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %4, i32 0, i32 11
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %mask_info, align 8, !tbaa !57
  %call = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %6 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %pixel_info = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %7, i32 0, i32 12
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pixel_info, align 8, !tbaa !58
  %call1 = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %8) #5
  store i32 %call1, i32* %code, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3_planes_wanted(%struct.gx_image_enum_common_s* %info, i8* %wanted) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %wanted.addr = alloca i8*, align 8
  %penum = alloca %struct.gx_image3_enum_s*, align 8
  %cleanup.dest.slot = alloca i32
  %next = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8* %wanted, i8** %wanted.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3_enum_s*
  store %struct.gx_image3_enum_s* %2, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %3 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %3, i32 0, i32 13
  %4 = load i32, i32* %InterleaveType, align 4, !tbaa !60
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 -1, i8* %arrayidx, align 1, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 -1, i8* %arrayidx2, align 1, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %7 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum, align 8, !tbaa !1
  %call = call i32 @planes_next(%struct.gx_image3_enum_s* %8) #5
  store i32 %call, i32* %next, align 4, !tbaa !20
  %9 = load i32, i32* %next, align 4, !tbaa !20
  %cmp = icmp sge i32 %9, 0
  %cond = select i1 %cmp, i32 255, i32 0
  %conv = trunc i32 %cond to i8
  %10 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %conv, i8* %arrayidx4, align 1, !tbaa !5
  %11 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i32, i32* %next, align 4, !tbaa !20
  %cmp5 = icmp sle i32 %12, 0
  %cond7 = select i1 %cmp5, i32 255, i32 0
  %13 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %13, i32 0, i32 6
  %14 = load i32, i32* %num_planes, align 4, !tbaa !103
  %sub = sub nsw i32 %14, 1
  %conv8 = sext i32 %sub to i64
  %call9 = call i8* @memset(i8* %add.ptr, i32 %cond7, i64 %conv8) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %15 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  br label %cleanup

sw.default:                                       ; preds = %entry
  %16 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %17 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes10 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %17, i32 0, i32 6
  %18 = load i32, i32* %num_planes10, align 4, !tbaa !103
  %conv11 = sext i32 %18 to i64
  %call12 = call i8* @memset(i8* %16, i32 0, i64 %conv11) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %sw.bb
  %19 = bitcast %struct.gx_image3_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @planes_next(%struct.gx_image3_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gx_image3_enum_s*, align 8
  %mask_h = alloca i32, align 4
  %pixel_h = alloca i32, align 4
  %current = alloca i64, align 8
  store %struct.gx_image3_enum_s* %penum, %struct.gx_image3_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_full_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %1, i32 0, i32 18
  %2 = load i32, i32* %mask_full_height, align 4, !tbaa !50
  store i32 %2, i32* %mask_h, align 4, !tbaa !20
  %3 = bitcast i32* %pixel_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum.addr, align 8, !tbaa !1
  %pixel_full_height = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %4, i32 0, i32 21
  %5 = load i32, i32* %pixel_full_height, align 4, !tbaa !55
  store i32 %5, i32* %pixel_h, align 4, !tbaa !20
  %6 = bitcast i64* %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum.addr, align 8, !tbaa !1
  %pixel_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %7, i32 0, i32 25
  %8 = load i32, i32* %pixel_y, align 4, !tbaa !56
  %conv = sext i32 %8 to i64
  %9 = load i32, i32* %mask_h, align 4, !tbaa !20
  %conv1 = sext i32 %9 to i64
  %mul = mul nsw i64 %conv, %conv1
  %10 = load %struct.gx_image3_enum_s*, %struct.gx_image3_enum_s** %penum.addr, align 8, !tbaa !1
  %mask_y = getelementptr inbounds %struct.gx_image3_enum_s, %struct.gx_image3_enum_s* %10, i32 0, i32 24
  %11 = load i32, i32* %mask_y, align 4, !tbaa !51
  %conv2 = sext i32 %11 to i64
  %12 = load i32, i32* %pixel_h, align 4, !tbaa !20
  %conv3 = sext i32 %12 to i64
  %mul4 = mul nsw i64 %conv2, %conv3
  %sub = sub nsw i64 %mul, %mul4
  store i64 %sub, i64* %current, align 8, !tbaa !40
  %13 = load i32, i32* %mask_h, align 4, !tbaa !20
  %conv5 = sext i32 %13 to i64
  %14 = load i64, i64* %current, align 8, !tbaa !40
  %add = add nsw i64 %14, %conv5
  store i64 %add, i64* %current, align 8, !tbaa !40
  %cmp = icmp sle i64 %add, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %current, align 8, !tbaa !40
  %16 = load i32, i32* %pixel_h, align 4, !tbaa !20
  %conv7 = sext i32 %16 to i64
  %sub8 = sub nsw i64 %15, %conv7
  %cmp9 = icmp sle i64 %sub8, 0
  %cond = select i1 %cmp9, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %17 = bitcast i64* %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %pixel_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i32 %cond11
}

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #1

declare i32 @gx_image_flush(%struct.gx_image_enum_common_s*) #1

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 0}
!7 = !{!"gs_image3_s", !2, i64 0, !8, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !3, i64 44, !10, i64 564, !3, i64 568, !10, i64 572, !2, i64 576, !10, i64 584, !11, i64 592}
!8 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!9 = !{!"float", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!"gs_data_image_s", !2, i64 0, !8, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !3, i64 44, !10, i64 564}
!12 = !{!7, !10, i64 584}
!13 = !{!7, !10, i64 36}
!14 = !{!7, !10, i64 628}
!15 = !{!7, !10, i64 624}
!16 = !{!7, !10, i64 32}
!17 = !{!7, !10, i64 632}
!18 = !{!7, !10, i64 40}
!19 = !{!7, !3, i64 568}
!20 = !{!10, !10, i64 0}
!21 = !{!7, !9, i64 8}
!22 = !{!7, !9, i64 600}
!23 = !{!7, !9, i64 12}
!24 = !{!7, !9, i64 604}
!25 = !{!7, !9, i64 16}
!26 = !{!7, !9, i64 608}
!27 = !{!7, !9, i64 20}
!28 = !{!7, !9, i64 612}
!29 = !{!8, !9, i64 16}
!30 = !{!8, !9, i64 20}
!31 = !{!32, !2, i64 72}
!32 = !{!"gs_memory_s", !2, i64 0, !33, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!33 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!34 = !{!7, !2, i64 576}
!35 = !{!36, !10, i64 604}
!36 = !{!"gx_image3_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !37, i64 32, !10, i64 40, !10, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !2, i64 584, !2, i64 592, !3, i64 600, !10, i64 604, !10, i64 608, !10, i64 612, !10, i64 616, !10, i64 620, !10, i64 624, !10, i64 628, !10, i64 632, !2, i64 640, !2, i64 648, !10, i64 656, !10, i64 660, !10, i64 664}
!37 = !{!"long", !3, i64 0}
!38 = !{!36, !2, i64 640}
!39 = !{!36, !2, i64 648}
!40 = !{!37, !37, i64 0}
!41 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20}
!42 = !{!43, !10, i64 0}
!43 = !{!"gs_int_rect_s", !44, i64 0, !44, i64 8}
!44 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!45 = !{!43, !10, i64 4}
!46 = !{!43, !10, i64 8}
!47 = !{!43, !10, i64 12}
!48 = !{!36, !10, i64 612}
!49 = !{!36, !10, i64 616}
!50 = !{!36, !10, i64 620}
!51 = !{!36, !10, i64 656}
!52 = !{!36, !10, i64 664}
!53 = !{!36, !10, i64 624}
!54 = !{!36, !10, i64 628}
!55 = !{!36, !10, i64 632}
!56 = !{!36, !10, i64 660}
!57 = !{!36, !2, i64 584}
!58 = !{!36, !2, i64 592}
!59 = !{!32, !2, i64 64}
!60 = !{!36, !3, i64 600}
!61 = !{!36, !10, i64 608}
!62 = !{!36, !2, i64 24}
!63 = !{!64, !66, i64 8}
!64 = !{!"gs_rect_s", !65, i64 0, !65, i64 16}
!65 = !{!"gs_point_s", !66, i64 0, !66, i64 8}
!66 = !{!"double", !3, i64 0}
!67 = !{!64, !66, i64 0}
!68 = !{!64, !66, i64 16}
!69 = !{!64, !66, i64 24}
!70 = !{!44, !10, i64 0}
!71 = !{!44, !10, i64 4}
!72 = !{!36, !2, i64 568}
!73 = !{!74, !10, i64 588}
!74 = !{!"gs_image1_s", !2, i64 0, !8, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !3, i64 44, !10, i64 564, !3, i64 568, !10, i64 572, !2, i64 576, !10, i64 584, !10, i64 588, !3, i64 592, !3, i64 596}
!75 = !{!74, !2, i64 0}
!76 = !{i64 0, i64 8, !1, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77, i64 24, i64 4, !77, i64 28, i64 4, !77, i64 32, i64 4, !20, i64 36, i64 4, !20, i64 40, i64 4, !20, i64 44, i64 520, !5, i64 564, i64 4, !20}
!77 = !{!9, !9, i64 0}
!78 = !{!74, !10, i64 40}
!79 = !{!74, !3, i64 596}
!80 = !{!81, !2, i64 0}
!81 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !44, i64 352, !10, i64 360, !82, i64 368, !84, i64 632}
!82 = !{!"gs_client_color_s", !2, i64 0, !83, i64 8}
!83 = !{!"gs_paint_color_s", !3, i64 0}
!84 = !{!"_mask", !85, i64 0, !37, i64 8, !2, i64 16}
!85 = !{!"mp_", !10, i64 0, !10, i64 4}
!86 = !{!81, !10, i64 360}
!87 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77}
!88 = !{!89, !2, i64 1440}
!89 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !90, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !91, i64 96, !94, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !37, i64 928, !37, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !37, i64 968, !37, i64 976, !95, i64 984, !10, i64 1052, !10, i64 1056, !96, i64 1064, !2, i64 1104, !3, i64 1112, !98, i64 1120, !99, i64 1144}
!90 = !{!"rc_header_s", !37, i64 0, !2, i64 8, !2, i64 16}
!91 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !92, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !93, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !37, i64 704, !10, i64 712}
!92 = !{!"short", !3, i64 0}
!93 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!94 = !{!"gx_device_cached_colors_s", !37, i64 0, !37, i64 8}
!95 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!96 = !{!"gdev_space_params_s", !37, i64 0, !37, i64 8, !97, i64 16, !10, i64 32, !3, i64 36}
!97 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !37, i64 8}
!98 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!99 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!100 = !{i64 0, i64 8, !1, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77, i64 24, i64 4, !77, i64 28, i64 4, !77, i64 32, i64 4, !20, i64 36, i64 4, !20, i64 40, i64 4, !20, i64 44, i64 520, !5, i64 564, i64 4, !20, i64 568, i64 4, !5, i64 572, i64 4, !20, i64 576, i64 8, !1}
!101 = !{!36, !2, i64 576}
!102 = !{!36, !10, i64 44}
!103 = !{!104, !10, i64 44}
!104 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !37, i64 32, !10, i64 40, !10, i64 44, !3, i64 48, !3, i64 308}
!105 = !{!32, !2, i64 24}
!106 = !{!66, !66, i64 0}
!107 = !{!108, !2, i64 1752}
!108 = !{!"gx_device_memory_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !90, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !91, i64 96, !94, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !37, i64 928, !37, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !37, i64 968, !37, i64 976, !95, i64 984, !10, i64 1052, !10, i64 1056, !96, i64 1064, !2, i64 1104, !3, i64 1112, !98, i64 1120, !99, i64 1144, !2, i64 1728, !10, i64 1736, !2, i64 1744, !2, i64 1752, !10, i64 1760, !2, i64 1768, !10, i64 1776, !3, i64 1780, !8, i64 2548, !2, i64 2576, !109, i64 2584, !110, i64 2600, !111, i64 2624, !112, i64 2656, !113, i64 2680, !114, i64 2720, !115, i64 2736, !10, i64 2744, !10, i64 2748, !10, i64 2752, !10, i64 2756, !10, i64 2760, !37, i64 2768, !2, i64 2776, !10, i64 2784, !10, i64 2788}
!109 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!110 = !{!"_c24", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!111 = !{!"_c40", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!112 = !{!"_c48", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!113 = !{!"_c56", !37, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!114 = !{!"_c64", !37, i64 0, !10, i64 8, !10, i64 12}
!115 = !{!"gs_log2_scale_point_s", !10, i64 0, !10, i64 4}
!116 = !{!108, !10, i64 832}
!117 = !{!108, !10, i64 836}
!118 = !{!108, !10, i64 1736}
!119 = !{!108, !2, i64 1144}
!120 = !{!108, !10, i64 84}
!121 = !{!108, !2, i64 1200}
!122 = !{!108, !2, i64 1744}
!123 = !{!124, !2, i64 0}
!124 = !{!"gx_strip_bitmap_s", !2, i64 0, !10, i64 8, !44, i64 12, !37, i64 24, !92, i64 32, !92, i64 34, !92, i64 36, !92, i64 38, !10, i64 40}
!125 = !{!124, !10, i64 8}
!126 = !{!124, !10, i64 12}
!127 = !{!124, !10, i64 16}
!128 = !{!124, !37, i64 24}
!129 = !{!124, !10, i64 40}
!130 = !{i64 0, i64 8, !1, i64 8, i64 4, !20, i64 12, i64 4, !20, i64 16, i64 4, !20, i64 24, i64 8, !40, i64 32, i64 2, !131, i64 34, i64 2, !131, i64 36, i64 2, !131, i64 38, i64 2, !131, i64 40, i64 4, !20}
!131 = !{!92, !92, i64 0}
!132 = !{!133, !2, i64 1440}
!133 = !{!"gx_device_mask_clip_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !90, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !91, i64 96, !94, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !37, i64 928, !37, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !37, i64 968, !37, i64 976, !95, i64 984, !10, i64 1052, !10, i64 1056, !96, i64 1064, !2, i64 1104, !3, i64 1112, !98, i64 1120, !99, i64 1144, !2, i64 1728, !124, i64 1736, !108, i64 1784, !44, i64 4576, !3, i64 4584}
!134 = !{i64 0, i64 8, !1, i64 8, i64 4, !20, i64 12, i64 4, !20}
!135 = !{!136, !10, i64 12}
!136 = !{!"gx_image_plane_s", !2, i64 0, !10, i64 8, !10, i64 12}
!137 = !{!136, !2, i64 0}
!138 = !{!136, !10, i64 8}
