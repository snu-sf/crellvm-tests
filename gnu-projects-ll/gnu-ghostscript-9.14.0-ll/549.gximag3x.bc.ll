; ModuleID = './gximag3x.bc'
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
%struct.gs_image3x_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s }
%struct.gs_image3x_mask_s = type { i32, [64 x float], i32, %struct.gs_data_image_s }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gx_image3x_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_device_s*, i32, i32, [2 x %struct.image3x_channel_state_s], %struct.image3x_channel_state_s }
%struct.image3x_channel_state_s = type { %struct.gx_image_enum_common_s*, %struct.gx_device_s*, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.image3x_channel_values_s = type { %struct.gs_matrix_s, %struct.gs_point_s, %struct.gs_int_rect_s, %struct.gs_image1_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }

@st_gs_image3x = internal constant %struct.gs_memory_struct_type_s { i32 2248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image3x_reloc_ptrs to i8*) }, align 8
@gs_image_type_3x = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* @st_gs_image3x, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image3x, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_data_image_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image_no_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image_no_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image_default_release, i32 103 }, align 8
@st_image3x_enum = internal constant %struct.gs_memory_struct_type_s { i32 752, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image3x_enum_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [17 x i8] c"gx_begin_image3x\00", align 1
@image3x_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @gx_image3x_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @gx_image3x_end_image, i32 (%struct.gx_image_enum_common_s*)* @gx_image3x_flush, i32 (%struct.gx_image_enum_common_s*, i8*)* @gx_image3x_planes_wanted }, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"gx_begin_image3x(pixel.data)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gx_begin_image3x(mask[1].mdev)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gx_begin_image3x(mask[0].mdev)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gx_begin_image3x(mask[0].data)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gx_begin_image3x(mask[1].data)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gs_image3x_t\00", align 1
@image3x_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 0, i16 0, %struct.gs_memory_struct_type_s* @st_gs_pixel_image, %struct.gc_ptr_element_s* null }, align 8
@st_gs_pixel_image = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"gx_image3x_enum_t\00", align 1
@image3x_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 9, i16 0, %struct.gs_memory_struct_type_s* @st_gx_image_enum_common, %struct.gc_ptr_element_s* getelementptr inbounds ([9 x %struct.gc_ptr_element_s], [9 x %struct.gc_ptr_element_s]* @image3x_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_gx_image_enum_common = external constant %struct.gs_memory_struct_type_s, align 8
@image3x_enum_enum_ptrs = internal constant [9 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 568 }, %struct.gc_ptr_element_s { i16 0, i16 584 }, %struct.gc_ptr_element_s { i16 0, i16 592 }, %struct.gc_ptr_element_s { i16 0, i16 624 }, %struct.gc_ptr_element_s { i16 0, i16 640 }, %struct.gc_ptr_element_s { i16 0, i16 648 }, %struct.gc_ptr_element_s { i16 0, i16 680 }, %struct.gc_ptr_element_s { i16 0, i16 696 }, %struct.gc_ptr_element_s { i16 0, i16 736 }], align 16
@.str.8 = private unnamed_addr constant [40 x i8] c"gx_image3x_end_image(pcdev->icc_struct)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"gx_image3x_end_image(mask[0].data)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"gx_image3x_end_image(mask[1].data)\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"gx_image3x_end_image(pixel.data)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gx_image3x_end_image(pcdev)\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"gx_image3x_end_image(mask[0].mdev)\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"gx_image3x_end_image(mask[1].mdev)\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"gx_begin_image3x(mask data)\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"make_mid_default\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"make_midx_default\00", align 1
@st_device_bbox = external constant %struct.gs_memory_struct_type_s, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"make_mcdex_default\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_begin_image3x(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
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
  %call = call i32 @gx_begin_image3x_generic(%struct.gx_device_s* %0, %struct.gs_imager_state_s* %1, %struct.gs_matrix_s* %2, %struct.gs_image_common_s* %3, %struct.gs_int_rect_s* %4, %struct.gx_device_color_s* %5, %struct.gx_clip_path_s* %6, %struct.gs_memory_s* %7, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)* @make_midx_default, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)* @make_mcdex_default, %struct.gx_image_enum_common_s** %8) #5
  ret i32 %call
}

declare i32 @gx_data_image_source_size(%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*) #1

declare i32 @gx_image_no_sput(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**) #1

declare i32 @gx_image_no_sget(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*) #1

declare void @gx_image_default_release(%struct.gs_image_common_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define void @gs_image3x_t_init(%struct.gs_image3x_s* %pim, %struct.gs_color_space_s* %color_space) #0 {
entry:
  %pim.addr = alloca %struct.gs_image3x_s*, align 8
  %color_space.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_image3x_s* %pim, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %color_space, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_image3x_s* %0 to %struct.gs_pixel_image_s*
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space.addr, align 8, !tbaa !1
  call void @gs_pixel_image_t_init(%struct.gs_pixel_image_s* %1, %struct.gs_color_space_s* %2) #5
  %3 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %3, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_3x to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !5
  %4 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Opacity = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %4, i32 0, i32 10
  call void @gs_image3x_mask_init(%struct.gs_image3x_mask_s* %Opacity) #5
  %5 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Shape = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %5, i32 0, i32 11
  call void @gs_image3x_mask_init(%struct.gs_image3x_mask_s* %Shape) #5
  ret void
}

declare void @gs_pixel_image_t_init(%struct.gs_pixel_image_s*, %struct.gs_color_space_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gs_image3x_mask_init(%struct.gs_image3x_mask_s* %pimm) #0 {
entry:
  %pimm.addr = alloca %struct.gs_image3x_mask_s*, align 8
  store %struct.gs_image3x_mask_s* %pimm, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %0, i32 0, i32 0
  store i32 0, i32* %InterleaveType, align 4, !tbaa !12
  %1 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %has_Matte = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %1, i32 0, i32 2
  store i32 0, i32* %has_Matte, align 4, !tbaa !13
  %2 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %2, i32 0, i32 3
  call void @gs_data_image_t_init(%struct.gs_data_image_s* %MaskDict, i32 1) #5
  %3 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict1 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %3, i32 0, i32 3
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict1, i32 0, i32 4
  store i32 0, i32* %BitsPerComponent, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_begin_image3x_generic(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)* %make_mid, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)* %make_mcde, %struct.gx_image_enum_common_s** %pinfo) #0 {
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
  %make_mid.addr = alloca i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)*, align 8
  %make_mcde.addr = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pim = alloca %struct.gs_image3x_s*, align 8
  %penum = alloca %struct.gx_image3x_enum_s*, align 8
  %pcdev = alloca %struct.gx_device_s*, align 8
  %mask = alloca [2 x %struct.image3x_channel_values_s], align 16
  %pixel = alloca %struct.image3x_channel_values_s, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %midev = alloca [2 x %struct.gx_device_s*], align 16
  %minfo = alloca [2 x %struct.gx_image_enum_common_s*], align 16
  %origin = alloca [2 x %struct.gs_int_point_s], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mrect = alloca %struct.gs_rect_s, align 8
  %mdev113 = alloca %struct.gx_device_s*, align 8
  %pmcs = alloca %struct.gs_color_space_s*, align 8
  %type1 = alloca %struct.gx_image_type_s*, align 8
  %pixm = alloca %struct.gs_image3x_mask_s*, align 8
  %m_mat = alloca %struct.gs_matrix_s, align 4
  %type1299 = alloca %struct.gx_image_type_s*, align 8
  %added_depth = alloca i32, align 4
  %pi = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)* %make_mid, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)** %make_mid.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)* %make_mcde, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)** %make_mcde.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image3x_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image3x_s*
  store %struct.gs_image3x_s* %2, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %3 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store %struct.gx_device_s* null, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %5 = bitcast [2 x %struct.image3x_channel_values_s]* %mask to i8*
  call void @llvm.lifetime.start(i64 1312, i8* %5) #2
  %6 = bitcast %struct.image3x_channel_values_s* %pixel to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = bitcast [2 x %struct.gx_device_s*]* %midev to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast [2 x %struct.gx_image_enum_common_s*]* %minfo to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = bitcast [2 x %struct.gs_int_point_s]* %origin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %13, i32 0, i32 3
  %14 = load i32, i32* %Height, align 4, !tbaa !15
  %cmp = icmp sle i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.465

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %16 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %16(%struct.gs_memory_s* %17, %struct.gs_memory_struct_type_s* @st_image3x_enum, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  %18 = bitcast i8* %call to %struct.gx_image3x_enum_s*
  store %struct.gx_image3x_enum_s* %18, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %19 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_image3x_enum_s* %19, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.465

if.end.3:                                         ; preds = %if.end
  %20 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %20, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask4, i32 0, i64 0
  %info = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx, i32 0, i32 0
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !19
  %21 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask5 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %21, i32 0, i32 12
  %arrayidx6 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask5, i32 0, i64 0
  %mdev = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx6, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %mdev, align 8, !tbaa !21
  %22 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %22, i32 0, i32 12
  %arrayidx8 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask7, i32 0, i64 0
  %data = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx8, i32 0, i32 7
  store i8* null, i8** %data, align 8, !tbaa !22
  %23 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask9 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %23, i32 0, i32 12
  %arrayidx10 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask9, i32 0, i64 1
  %info11 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx10, i32 0, i32 0
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %info11, align 8, !tbaa !19
  %24 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask12 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %24, i32 0, i32 12
  %arrayidx13 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask12, i32 0, i64 1
  %mdev14 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx13, i32 0, i32 1
  store %struct.gx_device_s* null, %struct.gx_device_s** %mdev14, align 8, !tbaa !21
  %25 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask15 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %25, i32 0, i32 12
  %arrayidx16 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask15, i32 0, i64 1
  %data17 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx16, i32 0, i32 7
  store i8* null, i8** %data17, align 8, !tbaa !22
  %26 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel18 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %26, i32 0, i32 13
  %info19 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel18, i32 0, i32 0
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %info19, align 8, !tbaa !23
  %27 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel20 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %27, i32 0, i32 13
  %data21 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel20, i32 0, i32 7
  store i8* null, i8** %data21, align 8, !tbaa !26
  %28 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_int_rect_s* %28, null
  br i1 %tobool, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.3
  %rect = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %29 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gs_int_rect_s* %rect to i8*
  %31 = bitcast %struct.gs_int_rect_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 4, i1 false), !tbaa.struct !27
  br label %if.end.32

if.else:                                          ; preds = %if.end.3
  %rect23 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect23, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !29
  %rect24 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %p25 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect24, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p25, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !36
  %32 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %32, i32 0, i32 2
  %33 = load i32, i32* %Width, align 4, !tbaa !37
  %rect26 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect26, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %33, i32* %x27, align 4, !tbaa !38
  %34 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Height28 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %34, i32 0, i32 3
  %35 = load i32, i32* %Height28, align 4, !tbaa !15
  %rect29 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %q30 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect29, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q30, i32 0, i32 1
  store i32 %35, i32* %y31, align 4, !tbaa !39
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.22
  %36 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %36, i32 0, i32 1
  %matrix = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 0
  %call33 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %matrix) #5
  store i32 %call33, i32* %code, align 4, !tbaa !28
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %37 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Width35 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %37, i32 0, i32 2
  %38 = load i32, i32* %Width35, align 4, !tbaa !37
  %conv = sitofp i32 %38 to double
  %39 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Height36 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %39, i32 0, i32 3
  %40 = load i32, i32* %Height36, align 4, !tbaa !15
  %conv37 = sitofp i32 %40 to double
  %matrix38 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 0
  %corner = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 1
  %call39 = call i32 @gs_point_transform(double %conv, double %conv37, %struct.gs_matrix_s* %matrix38, %struct.gs_point_s* %corner) #5
  store i32 %call39, i32* %code, align 4, !tbaa !28
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.56, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %41 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %42 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Opacity = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %42, i32 0, i32 10
  %arrayidx43 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 0
  %43 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask44 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %43, i32 0, i32 12
  %arrayidx45 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask44, i32 0, i64 0
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call46 = call i32 @check_image3x_mask(%struct.gs_image3x_s* %41, %struct.gs_image3x_mask_s* %Opacity, %struct.image3x_channel_values_s* %pixel, %struct.image3x_channel_values_s* %arrayidx43, %struct.image3x_channel_state_s* %arrayidx45, %struct.gs_memory_s* %44) #5
  store i32 %call46, i32* %code, align 4, !tbaa !28
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.56, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.42
  %45 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %46 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Shape = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %46, i32 0, i32 11
  %arrayidx50 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 1
  %47 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask51 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %47, i32 0, i32 12
  %arrayidx52 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask51, i32 0, i64 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call53 = call i32 @check_image3x_mask(%struct.gs_image3x_s* %45, %struct.gs_image3x_mask_s* %Shape, %struct.image3x_channel_values_s* %pixel, %struct.image3x_channel_values_s* %arrayidx50, %struct.image3x_channel_state_s* %arrayidx52, %struct.gs_memory_s* %48) #5
  store i32 %call53, i32* %code, align 4, !tbaa !28
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.42, %lor.lhs.false, %if.end.32
  br label %out0

if.end.57:                                        ; preds = %lor.lhs.false.49
  %49 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %49, i32 0, i32 9
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !40
  %call58 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %50) #5
  %51 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %51, i32 0, i32 10
  store i32 %call58, i32* %num_components, align 4, !tbaa !41
  %52 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %53 = bitcast %struct.gx_image3x_enum_s* %52 to %struct.gx_image_enum_common_s*
  %54 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %55 = bitcast %struct.gs_image3x_s* %54 to %struct.gs_data_image_s*
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %57 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %num_components59 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %57, i32 0, i32 10
  %58 = load i32, i32* %num_components59, align 4, !tbaa !41
  %add = add nsw i32 1, %58
  %59 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %59, i32 0, i32 7
  %60 = load i32, i32* %format, align 4, !tbaa !42
  %call60 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %53, %struct.gs_data_image_s* %55, %struct.gx_image_enum_procs_s* @image3x_enum_procs, %struct.gx_device_s* %56, i32 %add, i32 %60) #5
  %rect61 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %q62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect61, i32 0, i32 1
  %x63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q62, i32 0, i32 0
  %61 = load i32, i32* %x63, align 4, !tbaa !38
  %rect64 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %p65 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect64, i32 0, i32 0
  %x66 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p65, i32 0, i32 0
  %62 = load i32, i32* %x66, align 4, !tbaa !36
  %sub = sub nsw i32 %61, %62
  %63 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel67 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %63, i32 0, i32 13
  %width = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel67, i32 0, i32 3
  store i32 %sub, i32* %width, align 4, !tbaa !43
  %rect68 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %q69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect68, i32 0, i32 1
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q69, i32 0, i32 1
  %64 = load i32, i32* %y70, align 4, !tbaa !39
  %rect71 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 2
  %p72 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect71, i32 0, i32 0
  %y73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p72, i32 0, i32 1
  %65 = load i32, i32* %y73, align 4, !tbaa !29
  %sub74 = sub nsw i32 %64, %65
  %66 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel75 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %66, i32 0, i32 13
  %height = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel75, i32 0, i32 4
  store i32 %sub74, i32* %height, align 4, !tbaa !44
  %67 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Height76 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %67, i32 0, i32 3
  %68 = load i32, i32* %Height76, align 4, !tbaa !15
  %69 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel77 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %69, i32 0, i32 13
  %full_height = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel77, i32 0, i32 5
  store i32 %68, i32* %full_height, align 4, !tbaa !45
  %70 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel78 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %70, i32 0, i32 13
  %y79 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel78, i32 0, i32 8
  store i32 0, i32* %y79, align 4, !tbaa !46
  %71 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask80 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %71, i32 0, i32 12
  %arrayidx81 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask80, i32 0, i64 0
  %data82 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx81, i32 0, i32 7
  %72 = load i8*, i8** %data82, align 8, !tbaa !22
  %tobool83 = icmp ne i8* %72, null
  br i1 %tobool83, label %if.then.89, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.end.57
  %73 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask85 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %73, i32 0, i32 12
  %arrayidx86 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask85, i32 0, i64 1
  %data87 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx86, i32 0, i32 7
  %74 = load i8*, i8** %data87, align 8, !tbaa !22
  %tobool88 = icmp ne i8* %74, null
  br i1 %tobool88, label %if.then.89, label %if.end.105

if.then.89:                                       ; preds = %lor.lhs.false.84, %if.end.57
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs90, i32 0, i32 7
  %76 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !47
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %78 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel91 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %78, i32 0, i32 13
  %width92 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel91, i32 0, i32 3
  %79 = load i32, i32* %width92, align 4, !tbaa !43
  %80 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %80, i32 0, i32 4
  %81 = load i32, i32* %BitsPerComponent, align 4, !tbaa !48
  %mul = mul nsw i32 %79, %81
  %82 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %num_components93 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %82, i32 0, i32 10
  %83 = load i32, i32* %num_components93, align 4, !tbaa !41
  %mul94 = mul nsw i32 %mul, %83
  %add95 = add nsw i32 %mul94, 7
  %shr = ashr i32 %add95, 3
  %call96 = call i8* %76(%struct.gs_memory_s* %77, i32 %shr, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  %84 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel97 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %84, i32 0, i32 13
  %data98 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel97, i32 0, i32 7
  store i8* %call96, i8** %data98, align 8, !tbaa !26
  %85 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel99 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %85, i32 0, i32 13
  %data100 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel99, i32 0, i32 7
  %86 = load i8*, i8** %data100, align 8, !tbaa !26
  %cmp101 = icmp eq i8* %86, null
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.89
  store i32 -25, i32* %code, align 4, !tbaa !28
  br label %out1

if.end.104:                                       ; preds = %if.then.89
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %lor.lhs.false.84
  %87 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %BitsPerComponent106 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %87, i32 0, i32 4
  %88 = load i32, i32* %BitsPerComponent106, align 4, !tbaa !48
  %89 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %89, i32 0, i32 11
  store i32 %88, i32* %bpc, align 4, !tbaa !49
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %91 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %91, i32 0, i32 3
  store %struct.gs_memory_s* %90, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %92 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp107 = icmp eq %struct.gs_matrix_s* %92, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.105
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 5
  %94 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %94, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.105
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.110
  %95 = load i32, i32* %i, align 4, !tbaa !28
  %cmp111 = icmp slt i32 %95, 2
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %96 = bitcast %struct.gs_rect_s* %mrect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %96) #2
  %97 = bitcast %struct.gx_device_s** %mdev113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  %98 = bitcast %struct.gs_color_space_s** %pmcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #2
  %99 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %99 to i64
  %100 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask114 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %100, i32 0, i32 12
  %arrayidx115 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask114, i32 0, i64 %idxprom
  %depth = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx115, i32 0, i32 6
  %101 = load i32, i32* %depth, align 4, !tbaa !51
  %cmp116 = icmp eq i32 %101, 0
  br i1 %cmp116, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %for.body
  %102 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom119 = sext i32 %102 to i64
  %arrayidx120 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 %idxprom119
  store %struct.gx_device_s* null, %struct.gx_device_s** %arrayidx120, align 8, !tbaa !1
  %103 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom121 = sext i32 %103 to i64
  %arrayidx122 = getelementptr inbounds [2 x %struct.gx_image_enum_common_s*], [2 x %struct.gx_image_enum_common_s*]* %minfo, i32 0, i64 %idxprom121
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %arrayidx122, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.123:                                       ; preds = %for.body
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %105 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom124 = sext i32 %105 to i64
  %106 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask125 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %106, i32 0, i32 12
  %arrayidx126 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask125, i32 0, i64 %idxprom124
  %depth127 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx126, i32 0, i32 6
  %107 = load i32, i32* %depth127, align 4, !tbaa !51
  %call128 = call i32 @gs_cspace_new_DevicePixel(%struct.gs_memory_s* %104, %struct.gs_color_space_s** %pmcs, i32 %107) #5
  store i32 %call128, i32* %code, align 4, !tbaa !28
  %108 = load i32, i32* %code, align 4, !tbaa !28
  %cmp129 = icmp slt i32 %108, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.123
  %109 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.132:                                       ; preds = %if.end.123
  %p133 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p133, i32 0, i32 1
  store double 0.000000e+00, double* %y134, align 8, !tbaa !52
  %p135 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x136 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p135, i32 0, i32 0
  store double 0.000000e+00, double* %x136, align 8, !tbaa !54
  %110 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom137 = sext i32 %110 to i64
  %111 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask138 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %111, i32 0, i32 12
  %arrayidx139 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask138, i32 0, i64 %idxprom137
  %width140 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx139, i32 0, i32 3
  %112 = load i32, i32* %width140, align 4, !tbaa !55
  %conv141 = sitofp i32 %112 to double
  %q142 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %x143 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q142, i32 0, i32 0
  store double %conv141, double* %x143, align 8, !tbaa !56
  %113 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom144 = sext i32 %113 to i64
  %114 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask145 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %114, i32 0, i32 12
  %arrayidx146 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask145, i32 0, i64 %idxprom144
  %height147 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx146, i32 0, i32 4
  %115 = load i32, i32* %height147, align 4, !tbaa !57
  %conv148 = sitofp i32 %115 to double
  %q149 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %y150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q149, i32 0, i32 1
  store double %conv148, double* %y150, align 8, !tbaa !58
  %116 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom151 = sext i32 %116 to i64
  %arrayidx152 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom151
  %matrix153 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx152, i32 0, i32 0
  %117 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call154 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %matrix153, %struct.gs_matrix_s* %117, %struct.gs_matrix_s* %mat) #5
  store i32 %call154, i32* %code, align 4, !tbaa !28
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then.161, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.132
  %call158 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %mrect, %struct.gs_matrix_s* %mat, %struct.gs_rect_s* %mrect) #5
  store i32 %call158, i32* %code, align 4, !tbaa !28
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %lor.lhs.false.157, %if.end.132
  %118 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.162:                                       ; preds = %lor.lhs.false.157
  %p163 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %x164 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p163, i32 0, i32 0
  %119 = load double, double* %x164, align 8, !tbaa !54
  %call165 = call double @floor(double %119) #6
  %conv166 = fptosi double %call165 to i32
  %120 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom167 = sext i32 %120 to i64
  %arrayidx168 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom167
  %x169 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx168, i32 0, i32 0
  store i32 %conv166, i32* %x169, align 4, !tbaa !59
  %p170 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 0
  %y171 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p170, i32 0, i32 1
  %121 = load double, double* %y171, align 8, !tbaa !52
  %call172 = call double @floor(double %121) #6
  %conv173 = fptosi double %call172 to i32
  %122 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom174 = sext i32 %122 to i64
  %arrayidx175 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom174
  %y176 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx175, i32 0, i32 1
  store i32 %conv173, i32* %y176, align 4, !tbaa !60
  %123 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, i32, i32, %struct.gs_memory_s*)** %make_mid.addr, align 8, !tbaa !1
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %q177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q177, i32 0, i32 0
  %125 = load double, double* %x178, align 8, !tbaa !56
  %call179 = call double @ceil(double %125) #6
  %conv180 = fptosi double %call179 to i32
  %126 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom181 = sext i32 %126 to i64
  %arrayidx182 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom181
  %x183 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx182, i32 0, i32 0
  %127 = load i32, i32* %x183, align 4, !tbaa !59
  %sub184 = sub nsw i32 %conv180, %127
  %q185 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %mrect, i32 0, i32 1
  %y186 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q185, i32 0, i32 1
  %128 = load double, double* %y186, align 8, !tbaa !58
  %call187 = call double @ceil(double %128) #6
  %conv188 = fptosi double %call187 to i32
  %129 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom189 = sext i32 %129 to i64
  %arrayidx190 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom189
  %y191 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx190, i32 0, i32 1
  %130 = load i32, i32* %y191, align 4, !tbaa !60
  %sub192 = sub nsw i32 %conv188, %130
  %131 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom193 = sext i32 %131 to i64
  %132 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask194 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %132, i32 0, i32 12
  %arrayidx195 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask194, i32 0, i64 %idxprom193
  %depth196 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx195, i32 0, i32 6
  %133 = load i32, i32* %depth196, align 4, !tbaa !51
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call197 = call i32 %123(%struct.gx_device_s** %mdev113, %struct.gx_device_s* %124, i32 %sub184, i32 %sub192, i32 %133, %struct.gs_memory_s* %134) #5
  store i32 %call197, i32* %code, align 4, !tbaa !28
  %135 = load i32, i32* %code, align 4, !tbaa !28
  %cmp198 = icmp slt i32 %135, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.162
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.201:                                       ; preds = %if.end.162
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs202 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %136, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs202, i32 0, i32 67
  %137 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !61
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 39
  %call203 = call i32 %137(%struct.gx_device_s* %138, %struct.cmm_dev_profile_s** %icc_struct) #5
  store i32 %call203, i32* %code, align 4, !tbaa !28
  %140 = load i32, i32* %code, align 4, !tbaa !28
  %cmp204 = icmp slt i32 %140, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.201
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.291

if.end.207:                                       ; preds = %if.end.201
  br label %do.body

do.body:                                          ; preds = %if.end.207
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %icc_struct208 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %141, i32 0, i32 39
  %142 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct208, align 8, !tbaa !73
  %tobool209 = icmp ne %struct.cmm_dev_profile_s* %142, null
  br i1 %tobool209, label %if.then.210, label %if.end.216

if.then.210:                                      ; preds = %do.body
  br label %do.body.211

do.body.211:                                      ; preds = %if.then.210
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %icc_struct212 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 39
  %144 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct212, align 8, !tbaa !73
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %144, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %145 = load i64, i64* %ref_count, align 8, !tbaa !74
  %inc = add nsw i64 %145, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !74
  br label %do.body.213

do.body.213:                                      ; preds = %do.body.211
  br label %do.cond

do.cond:                                          ; preds = %do.body.213
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.214

do.cond.214:                                      ; preds = %do.end
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  br label %if.end.216

if.end.216:                                       ; preds = %do.end.215, %do.body
  br label %do.cond.217

do.cond.217:                                      ; preds = %if.end.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %147 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom219 = sext i32 %147 to i64
  %148 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask220 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %148, i32 0, i32 12
  %arrayidx221 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask220, i32 0, i64 %idxprom219
  %mdev222 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx221, i32 0, i32 1
  store %struct.gx_device_s* %146, %struct.gx_device_s** %mdev222, align 8, !tbaa !21
  %149 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom223 = sext i32 %149 to i64
  %arrayidx224 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom223
  %image = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx224, i32 0, i32 3
  %150 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pmcs, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %150, i32 1) #5
  %151 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pmcs, align 8, !tbaa !1
  %152 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom225 = sext i32 %152 to i64
  %arrayidx226 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom225
  %image227 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx226, i32 0, i32 3
  %ColorSpace228 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image227, i32 0, i32 9
  store %struct.gs_color_space_s* %151, %struct.gs_color_space_s** %ColorSpace228, align 8, !tbaa !76
  %153 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom229 = sext i32 %153 to i64
  %arrayidx230 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom229
  %image231 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx230, i32 0, i32 3
  %adjust = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image231, i32 0, i32 11
  store i32 0, i32* %adjust, align 4, !tbaa !77
  %154 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom232 = sext i32 %154 to i64
  %arrayidx233 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom232
  %image234 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx233, i32 0, i32 3
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image234, i32 0, i32 13
  store i32 3, i32* %image_parent_type, align 4, !tbaa !78
  %155 = bitcast %struct.gx_image_type_s** %type1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #2
  %156 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom235 = sext i32 %156 to i64
  %arrayidx236 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom235
  %image237 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx236, i32 0, i32 3
  %type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image237, i32 0, i32 0
  %157 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !79
  store %struct.gx_image_type_s* %157, %struct.gx_image_type_s** %type1, align 8, !tbaa !1
  %158 = bitcast %struct.gs_image3x_mask_s** %pixm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #2
  %159 = load i32, i32* %i, align 4, !tbaa !28
  %cmp238 = icmp eq i32 %159, 0
  br i1 %cmp238, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.218
  %160 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Opacity240 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %160, i32 0, i32 10
  br label %cond.end

cond.false:                                       ; preds = %do.end.218
  %161 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %Shape241 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %161, i32 0, i32 11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_image3x_mask_s* [ %Opacity240, %cond.true ], [ %Shape241, %cond.false ]
  store %struct.gs_image3x_mask_s* %cond, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  %162 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom242 = sext i32 %162 to i64
  %arrayidx243 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom242
  %image244 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx243, i32 0, i32 3
  %163 = bitcast %struct.gs_image1_s* %image244 to i8*
  %164 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %164, i32 0, i32 3
  %165 = bitcast %struct.gs_data_image_s* %MaskDict to i8*
  %call245 = call i8* @memcpy(i8* %163, i8* %165, i64 568) #7
  %166 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type1, align 8, !tbaa !1
  %167 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom246 = sext i32 %167 to i64
  %arrayidx247 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom246
  %image248 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx247, i32 0, i32 3
  %type249 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image248, i32 0, i32 0
  store %struct.gx_image_type_s* %166, %struct.gx_image_type_s** %type249, align 8, !tbaa !79
  %168 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pixm, align 8, !tbaa !1
  %MaskDict250 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %168, i32 0, i32 3
  %BitsPerComponent251 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict250, i32 0, i32 4
  %169 = load i32, i32* %BitsPerComponent251, align 4, !tbaa !14
  %170 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom252 = sext i32 %170 to i64
  %arrayidx253 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom252
  %image254 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx253, i32 0, i32 3
  %BitsPerComponent255 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image254, i32 0, i32 4
  store i32 %169, i32* %BitsPerComponent255, align 4, !tbaa !80
  %171 = bitcast %struct.gs_image3x_mask_s** %pixm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast %struct.gx_image_type_s** %type1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %173) #2
  %174 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %175 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  %176 = bitcast %struct.gs_matrix_s* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 24, i32 4, i1 false), !tbaa.struct !81
  %177 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom256 = sext i32 %177 to i64
  %arrayidx257 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom256
  %x258 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx257, i32 0, i32 0
  %178 = load i32, i32* %x258, align 4, !tbaa !59
  %conv259 = sitofp i32 %178 to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m_mat, i32 0, i32 4
  %179 = load float, float* %tx, align 4, !tbaa !83
  %sub260 = fsub float %179, %conv259
  store float %sub260, float* %tx, align 4, !tbaa !83
  %180 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom261 = sext i32 %180 to i64
  %arrayidx262 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i64 %idxprom261
  %y263 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %arrayidx262, i32 0, i32 1
  %181 = load i32, i32* %y263, align 4, !tbaa !60
  %conv264 = sitofp i32 %181 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m_mat, i32 0, i32 5
  %182 = load float, float* %ty, align 4, !tbaa !84
  %sub265 = fsub float %182, %conv264
  store float %sub265, float* %ty, align 4, !tbaa !84
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %procs266 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %183, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs266, i32 0, i32 37
  %begin_typed_image267 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %184 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image267, align 8, !tbaa !85
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %186 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %187 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom268 = sext i32 %187 to i64
  %arrayidx269 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom268
  %image270 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx269, i32 0, i32 3
  %188 = bitcast %struct.gs_image1_s* %image270 to %struct.gs_image_common_s*
  %189 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom271 = sext i32 %189 to i64
  %arrayidx272 = getelementptr inbounds [2 x %struct.image3x_channel_values_s], [2 x %struct.image3x_channel_values_s]* %mask, i32 0, i64 %idxprom271
  %rect273 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %arrayidx272, i32 0, i32 2
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %191 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom274 = sext i32 %191 to i64
  %192 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask275 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %192, i32 0, i32 12
  %arrayidx276 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask275, i32 0, i64 %idxprom274
  %info277 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx276, i32 0, i32 0
  %call278 = call i32 %184(%struct.gx_device_s* %185, %struct.gs_imager_state_s* %186, %struct.gs_matrix_s* %m_mat, %struct.gs_image_common_s* %188, %struct.gs_int_rect_s* %rect273, %struct.gx_device_color_s* null, %struct.gx_clip_path_s* null, %struct.gs_memory_s* %190, %struct.gx_image_enum_common_s** %info277) #5
  store i32 %call278, i32* %code, align 4, !tbaa !28
  %193 = load i32, i32* %code, align 4, !tbaa !28
  %cmp279 = icmp slt i32 %193, 0
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %cond.end
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.end.282:                                       ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.281, %if.end.282
  %194 = bitcast %struct.gs_matrix_s* %m_mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %194) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.291 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %195 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev113, align 8, !tbaa !1
  %196 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom283 = sext i32 %196 to i64
  %arrayidx284 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 %idxprom283
  store %struct.gx_device_s* %195, %struct.gx_device_s** %arrayidx284, align 8, !tbaa !1
  %197 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom285 = sext i32 %197 to i64
  %198 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask286 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %198, i32 0, i32 12
  %arrayidx287 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask286, i32 0, i64 %idxprom285
  %info288 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx287, i32 0, i32 0
  %199 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info288, align 8, !tbaa !19
  %200 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom289 = sext i32 %200 to i64
  %arrayidx290 = getelementptr inbounds [2 x %struct.gx_image_enum_common_s*], [2 x %struct.gx_image_enum_common_s*]* %minfo, i32 0, i64 %idxprom289
  store %struct.gx_image_enum_common_s* %199, %struct.gx_image_enum_common_s** %arrayidx290, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.291

cleanup.291:                                      ; preds = %if.then.206, %if.then.200, %cleanup.cont, %cleanup, %if.then.161, %if.then.131, %if.then.118
  %201 = bitcast %struct.gs_color_space_s** %pmcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #2
  %202 = bitcast %struct.gx_device_s** %mdev113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #2
  %203 = bitcast %struct.gs_rect_s* %mrect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %203) #2
  %cleanup.dest.294 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.294, label %cleanup.465 [
    i32 0, label %cleanup.cont.295
    i32 6, label %for.inc
    i32 13, label %out2
    i32 3, label %out1
  ]

cleanup.cont.295:                                 ; preds = %cleanup.291
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.295, %cleanup.291
  %204 = load i32, i32* %i, align 4, !tbaa !28
  %inc296 = add nsw i32 %204, 1
  store i32 %inc296, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %image297 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %205 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %ColorSpace298 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %205, i32 0, i32 9
  %206 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace298, align 8, !tbaa !40
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image297, %struct.gs_color_space_s* %206, i32 1) #5
  %207 = bitcast %struct.gx_image_type_s** %type1299 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #2
  %image300 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %type301 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image300, i32 0, i32 0
  %208 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type301, align 8, !tbaa !79
  store %struct.gx_image_type_s* %208, %struct.gx_image_type_s** %type1299, align 8, !tbaa !1
  %image302 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %209 = bitcast %struct.gs_image1_s* %image302 to %struct.gs_pixel_image_s*
  %210 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %211 = bitcast %struct.gs_image3x_s* %210 to %struct.gs_pixel_image_s*
  %212 = bitcast %struct.gs_pixel_image_s* %209 to i8*
  %213 = bitcast %struct.gs_pixel_image_s* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 584, i32 8, i1 false), !tbaa.struct !86
  %214 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type1299, align 8, !tbaa !1
  %image303 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %type304 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image303, i32 0, i32 0
  store %struct.gx_image_type_s* %214, %struct.gx_image_type_s** %type304, align 8, !tbaa !79
  %image305 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %image_parent_type306 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image305, i32 0, i32 13
  store i32 3, i32* %image_parent_type306, align 4, !tbaa !78
  %215 = bitcast %struct.gx_image_type_s** %type1299 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #2
  %216 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**, %struct.gx_device_s**, %struct.gx_device_s**, %struct.gx_image_enum_common_s**, %struct.gs_int_point_s*, %struct.gs_image3x_s*)** %make_mcde.addr, align 8, !tbaa !1
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %218 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %219 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %image307 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %pixel, i32 0, i32 3
  %220 = bitcast %struct.gs_image1_s* %image307 to %struct.gs_image_common_s*
  %221 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %222 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %223 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %224 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %225 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel308 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %225, i32 0, i32 13
  %info309 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel308, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i32 0
  %arraydecay310 = getelementptr inbounds [2 x %struct.gx_image_enum_common_s*], [2 x %struct.gx_image_enum_common_s*]* %minfo, i32 0, i32 0
  %arraydecay311 = getelementptr inbounds [2 x %struct.gs_int_point_s], [2 x %struct.gs_int_point_s]* %origin, i32 0, i32 0
  %226 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %call312 = call i32 %216(%struct.gx_device_s* %217, %struct.gs_imager_state_s* %218, %struct.gs_matrix_s* %219, %struct.gs_image_common_s* %220, %struct.gs_int_rect_s* %221, %struct.gx_device_color_s* %222, %struct.gx_clip_path_s* %223, %struct.gs_memory_s* %224, %struct.gx_image_enum_common_s** %info309, %struct.gx_device_s** %pcdev, %struct.gx_device_s** %arraydecay, %struct.gx_image_enum_common_s** %arraydecay310, %struct.gs_int_point_s* %arraydecay311, %struct.gs_image3x_s* %226) #5
  store i32 %call312, i32* %code, align 4, !tbaa !28
  %227 = load i32, i32* %code, align 4, !tbaa !28
  %cmp313 = icmp slt i32 %227, 0
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %for.end
  br label %out3

if.end.316:                                       ; preds = %for.end
  %228 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %229 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pcdev317 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %229, i32 0, i32 9
  store %struct.gx_device_s* %228, %struct.gx_device_s** %pcdev317, align 8, !tbaa !88
  %230 = bitcast i32* %added_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #2
  store i32 0, i32* %added_depth, align 4, !tbaa !28
  %231 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #2
  store i32 0, i32* %pi, align 4, !tbaa !28
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.318

for.cond.318:                                     ; preds = %for.inc.349, %if.end.316
  %232 = load i32, i32* %i, align 4, !tbaa !28
  %cmp319 = icmp slt i32 %232, 2
  br i1 %cmp319, label %for.body.321, label %for.end.351

for.body.321:                                     ; preds = %for.cond.318
  %233 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom322 = sext i32 %233 to i64
  %234 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask323 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %234, i32 0, i32 12
  %arrayidx324 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask323, i32 0, i64 %idxprom322
  %depth325 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx324, i32 0, i32 6
  %235 = load i32, i32* %depth325, align 4, !tbaa !51
  %cmp326 = icmp eq i32 %235, 0
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %for.body.321
  br label %for.inc.349

if.end.329:                                       ; preds = %for.body.321
  %236 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom330 = sext i32 %236 to i64
  %237 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask331 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %237, i32 0, i32 12
  %arrayidx332 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask331, i32 0, i64 %idxprom330
  %InterleaveType = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx332, i32 0, i32 2
  %238 = load i32, i32* %InterleaveType, align 4, !tbaa !89
  switch i32 %238, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.335
  ]

sw.bb:                                            ; preds = %if.end.329
  %239 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim, align 8, !tbaa !1
  %BitsPerComponent333 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %239, i32 0, i32 4
  %240 = load i32, i32* %BitsPerComponent333, align 4, !tbaa !48
  %241 = load i32, i32* %added_depth, align 4, !tbaa !28
  %add334 = add nsw i32 %241, %240
  store i32 %add334, i32* %added_depth, align 4, !tbaa !28
  br label %sw.epilog

sw.bb.335:                                        ; preds = %if.end.329
  %242 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom336 = sext i32 %242 to i64
  %243 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask337 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %243, i32 0, i32 12
  %arrayidx338 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask337, i32 0, i64 %idxprom336
  %width339 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx338, i32 0, i32 3
  %244 = load i32, i32* %width339, align 4, !tbaa !55
  %245 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom340 = sext i32 %245 to i64
  %246 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %plane_widths = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %246, i32 0, i32 8
  %arrayidx341 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths, i32 0, i64 %idxprom340
  store i32 %244, i32* %arrayidx341, align 4, !tbaa !28
  %247 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom342 = sext i32 %247 to i64
  %248 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask343 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %248, i32 0, i32 12
  %arrayidx344 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask343, i32 0, i64 %idxprom342
  %depth345 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx344, i32 0, i32 6
  %249 = load i32, i32* %depth345, align 4, !tbaa !51
  %250 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom346 = sext i32 %250 to i64
  %251 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %251, i32 0, i32 7
  %arrayidx347 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 %idxprom346
  store i32 %249, i32* %arrayidx347, align 4, !tbaa !28
  %252 = load i32, i32* %pi, align 4, !tbaa !28
  %inc348 = add nsw i32 %252, 1
  store i32 %inc348, i32* %pi, align 4, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.329
  store i32 -100, i32* %code, align 4, !tbaa !28
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.386

sw.epilog:                                        ; preds = %sw.bb.335, %sw.bb
  br label %for.inc.349

for.inc.349:                                      ; preds = %sw.epilog, %if.then.328
  %253 = load i32, i32* %i, align 4, !tbaa !28
  %inc350 = add nsw i32 %253, 1
  store i32 %inc350, i32* %i, align 4, !tbaa !28
  br label %for.cond.318

for.end.351:                                      ; preds = %for.cond.318
  %254 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom352 = sext i32 %254 to i64
  %255 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %plane_widths353 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %255, i32 0, i32 8
  %arrayidx354 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths353, i32 0, i64 %idxprom352
  %256 = bitcast i32* %arrayidx354 to i8*
  %257 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel355 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %257, i32 0, i32 13
  %info356 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel355, i32 0, i32 0
  %258 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info356, align 8, !tbaa !23
  %plane_widths357 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %258, i32 0, i32 8
  %arrayidx358 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_widths357, i32 0, i64 0
  %259 = bitcast i32* %arrayidx358 to i8*
  %260 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel359 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %260, i32 0, i32 13
  %info360 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel359, i32 0, i32 0
  %261 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info360, align 8, !tbaa !23
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %261, i32 0, i32 6
  %262 = load i32, i32* %num_planes, align 4, !tbaa !90
  %conv361 = sext i32 %262 to i64
  %mul362 = mul i64 %conv361, 4
  %call363 = call i8* @memcpy(i8* %256, i8* %259, i64 %mul362) #7
  %263 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom364 = sext i32 %263 to i64
  %264 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %plane_depths365 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %264, i32 0, i32 7
  %arrayidx366 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths365, i32 0, i64 %idxprom364
  %265 = bitcast i32* %arrayidx366 to i8*
  %266 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel367 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %266, i32 0, i32 13
  %info368 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel367, i32 0, i32 0
  %267 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info368, align 8, !tbaa !23
  %plane_depths369 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %267, i32 0, i32 7
  %arrayidx370 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths369, i32 0, i64 0
  %268 = bitcast i32* %arrayidx370 to i8*
  %269 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel371 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %269, i32 0, i32 13
  %info372 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel371, i32 0, i32 0
  %270 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info372, align 8, !tbaa !23
  %num_planes373 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %270, i32 0, i32 6
  %271 = load i32, i32* %num_planes373, align 4, !tbaa !90
  %conv374 = sext i32 %271 to i64
  %mul375 = mul i64 %conv374, 4
  %call376 = call i8* @memcpy(i8* %265, i8* %268, i64 %mul375) #7
  %272 = load i32, i32* %added_depth, align 4, !tbaa !28
  %273 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom377 = sext i32 %273 to i64
  %274 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %plane_depths378 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %274, i32 0, i32 7
  %arrayidx379 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths378, i32 0, i64 %idxprom377
  %275 = load i32, i32* %arrayidx379, align 4, !tbaa !28
  %add380 = add nsw i32 %275, %272
  store i32 %add380, i32* %arrayidx379, align 4, !tbaa !28
  %276 = load i32, i32* %pi, align 4, !tbaa !28
  %277 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel381 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %277, i32 0, i32 13
  %info382 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel381, i32 0, i32 0
  %278 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info382, align 8, !tbaa !23
  %num_planes383 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %278, i32 0, i32 6
  %279 = load i32, i32* %num_planes383, align 4, !tbaa !90
  %add384 = add nsw i32 %276, %279
  %280 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %num_planes385 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %280, i32 0, i32 6
  store i32 %add384, i32* %num_planes385, align 4, !tbaa !92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.386

cleanup.386:                                      ; preds = %sw.default, %for.end.351
  %281 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %added_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %cleanup.dest.388 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.388, label %cleanup.465 [
    i32 0, label %cleanup.cont.389
    i32 14, label %out3
  ]

cleanup.cont.389:                                 ; preds = %cleanup.386
  %arrayidx390 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 0
  %283 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx390, align 8, !tbaa !1
  %tobool391 = icmp ne %struct.gx_device_s* %283, null
  br i1 %tobool391, label %if.then.392, label %if.end.394

if.then.392:                                      ; preds = %cleanup.cont.389
  %arrayidx393 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 0
  %284 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx393, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %284, i32 1) #5
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.392, %cleanup.cont.389
  %arrayidx395 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 1
  %285 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx395, align 8, !tbaa !1
  %tobool396 = icmp ne %struct.gx_device_s* %285, null
  br i1 %tobool396, label %if.then.397, label %if.end.399

if.then.397:                                      ; preds = %if.end.394
  %arrayidx398 = getelementptr inbounds [2 x %struct.gx_device_s*], [2 x %struct.gx_device_s*]* %midev, i32 0, i64 1
  %286 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx398, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %286, i32 1) #5
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.397, %if.end.394
  %287 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %287, i32 1) #5
  %288 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %289 = bitcast %struct.gx_image3x_enum_s* %288 to %struct.gx_image_enum_common_s*
  %290 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %289, %struct.gx_image_enum_common_s** %290, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.465

out3:                                             ; preds = %cleanup.386, %if.then.315
  %291 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask400 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %291, i32 0, i32 12
  %arrayidx401 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask400, i32 0, i64 1
  %info402 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx401, i32 0, i32 0
  %292 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info402, align 8, !tbaa !19
  %tobool403 = icmp ne %struct.gx_image_enum_common_s* %292, null
  br i1 %tobool403, label %if.then.404, label %if.end.409

if.then.404:                                      ; preds = %out3
  %293 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask405 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %293, i32 0, i32 12
  %arrayidx406 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask405, i32 0, i64 1
  %info407 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx406, i32 0, i32 0
  %294 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info407, align 8, !tbaa !19
  %call408 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %294, i32 0) #5
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.404, %out3
  %295 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask410 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %295, i32 0, i32 12
  %arrayidx411 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask410, i32 0, i64 0
  %info412 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx411, i32 0, i32 0
  %296 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info412, align 8, !tbaa !19
  %tobool413 = icmp ne %struct.gx_image_enum_common_s* %296, null
  br i1 %tobool413, label %if.then.414, label %if.end.419

if.then.414:                                      ; preds = %if.end.409
  %297 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask415 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %297, i32 0, i32 12
  %arrayidx416 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask415, i32 0, i64 0
  %info417 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx416, i32 0, i32 0
  %298 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info417, align 8, !tbaa !19
  %call418 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %298, i32 0) #5
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.414, %if.end.409
  br label %out2

out2:                                             ; preds = %if.end.419, %cleanup.291
  %299 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask420 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %299, i32 0, i32 12
  %arrayidx421 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask420, i32 0, i64 1
  %mdev422 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx421, i32 0, i32 1
  %300 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev422, align 8, !tbaa !21
  %tobool423 = icmp ne %struct.gx_device_s* %300, null
  br i1 %tobool423, label %if.then.424, label %if.end.433

if.then.424:                                      ; preds = %out2
  %301 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask425 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %301, i32 0, i32 12
  %arrayidx426 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask425, i32 0, i64 1
  %mdev427 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx426, i32 0, i32 1
  %302 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev427, align 8, !tbaa !21
  %call428 = call i32 @gs_closedevice(%struct.gx_device_s* %302) #5
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs429 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %303, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs429, i32 0, i32 2
  %304 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !93
  %305 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %306 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask430 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %306, i32 0, i32 12
  %arrayidx431 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask430, i32 0, i64 1
  %mdev432 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx431, i32 0, i32 1
  %307 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev432, align 8, !tbaa !21
  %308 = bitcast %struct.gx_device_s* %307 to i8*
  call void %304(%struct.gs_memory_s* %305, i8* %308, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #5
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.424, %out2
  %309 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask434 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %309, i32 0, i32 12
  %arrayidx435 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask434, i32 0, i64 0
  %mdev436 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx435, i32 0, i32 1
  %310 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev436, align 8, !tbaa !21
  %tobool437 = icmp ne %struct.gx_device_s* %310, null
  br i1 %tobool437, label %if.then.438, label %if.end.448

if.then.438:                                      ; preds = %if.end.433
  %311 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask439 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %311, i32 0, i32 12
  %arrayidx440 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask439, i32 0, i64 0
  %mdev441 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx440, i32 0, i32 1
  %312 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev441, align 8, !tbaa !21
  %call442 = call i32 @gs_closedevice(%struct.gx_device_s* %312) #5
  %313 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs443 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %313, i32 0, i32 1
  %free_object444 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs443, i32 0, i32 2
  %314 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object444, align 8, !tbaa !93
  %315 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %316 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask445 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %316, i32 0, i32 12
  %arrayidx446 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask445, i32 0, i64 0
  %mdev447 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx446, i32 0, i32 1
  %317 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev447, align 8, !tbaa !21
  %318 = bitcast %struct.gx_device_s* %317 to i8*
  call void %314(%struct.gs_memory_s* %315, i8* %318, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.438, %if.end.433
  br label %out1

out1:                                             ; preds = %if.end.448, %cleanup.291, %if.then.103
  %319 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs449 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %319, i32 0, i32 1
  %free_object450 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs449, i32 0, i32 2
  %320 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object450, align 8, !tbaa !93
  %321 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %322 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask451 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %322, i32 0, i32 12
  %arrayidx452 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask451, i32 0, i64 0
  %data453 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx452, i32 0, i32 7
  %323 = load i8*, i8** %data453, align 8, !tbaa !22
  call void %320(%struct.gs_memory_s* %321, i8* %323, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #5
  %324 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs454 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %324, i32 0, i32 1
  %free_object455 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs454, i32 0, i32 2
  %325 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object455, align 8, !tbaa !93
  %326 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %327 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask456 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %327, i32 0, i32 12
  %arrayidx457 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask456, i32 0, i64 1
  %data458 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx457, i32 0, i32 7
  %328 = load i8*, i8** %data458, align 8, !tbaa !22
  call void %325(%struct.gs_memory_s* %326, i8* %328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #5
  %329 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs459 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %329, i32 0, i32 1
  %free_object460 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs459, i32 0, i32 2
  %330 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object460, align 8, !tbaa !93
  %331 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %332 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel461 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %332, i32 0, i32 13
  %data462 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel461, i32 0, i32 7
  %333 = load i8*, i8** %data462, align 8, !tbaa !26
  call void %330(%struct.gs_memory_s* %331, i8* %333, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %out0

out0:                                             ; preds = %out1, %if.then.56
  %334 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs463 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %334, i32 0, i32 1
  %free_object464 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs463, i32 0, i32 2
  %335 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object464, align 8, !tbaa !93
  %336 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %337 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %338 = bitcast %struct.gx_image3x_enum_s* %337 to i8*
  call void %335(%struct.gs_memory_s* %336, i8* %338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  %339 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %339, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.465

cleanup.465:                                      ; preds = %out0, %if.end.399, %cleanup.386, %cleanup.291, %if.then.2, %if.then
  %340 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #2
  %341 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #2
  %342 = bitcast [2 x %struct.gs_int_point_s]* %origin to i8*
  call void @llvm.lifetime.end(i64 16, i8* %342) #2
  %343 = bitcast [2 x %struct.gx_image_enum_common_s*]* %minfo to i8*
  call void @llvm.lifetime.end(i64 16, i8* %343) #2
  %344 = bitcast [2 x %struct.gx_device_s*]* %midev to i8*
  call void @llvm.lifetime.end(i64 16, i8* %344) #2
  %345 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %345) #2
  %346 = bitcast %struct.image3x_channel_values_s* %pixel to i8*
  call void @llvm.lifetime.end(i64 656, i8* %346) #2
  %347 = bitcast [2 x %struct.image3x_channel_values_s]* %mask to i8*
  call void @llvm.lifetime.end(i64 1312, i8* %347) #2
  %348 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #2
  %349 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #2
  %350 = bitcast %struct.gs_image3x_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #2
  %351 = load i32, i32* %retval
  ret i32 %351
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_image3x_mask(%struct.gs_image3x_s* %pim, %struct.gs_image3x_mask_s* %pimm, %struct.image3x_channel_values_s* %ppcv, %struct.image3x_channel_values_s* %pmcv, %struct.image3x_channel_state_s* %pmcs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pim.addr = alloca %struct.gs_image3x_s*, align 8
  %pimm.addr = alloca %struct.gs_image3x_mask_s*, align 8
  %ppcv.addr = alloca %struct.image3x_channel_values_s*, align 8
  %pmcv.addr = alloca %struct.image3x_channel_values_s*, align 8
  %pmcs.addr = alloca %struct.image3x_channel_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %mask_width = alloca i32, align 4
  %mask_height = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_image3x_s* %pim, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_image3x_mask_s* %pimm, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  store %struct.image3x_channel_values_s* %ppcv, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  store %struct.image3x_channel_values_s* %pmcv, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  store %struct.image3x_channel_state_s* %pmcs, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mask_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %1, i32 0, i32 3
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict, i32 0, i32 2
  %2 = load i32, i32* %Width, align 4, !tbaa !94
  store i32 %2, i32* %mask_width, align 4, !tbaa !28
  %3 = bitcast i32* %mask_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict1 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %4, i32 0, i32 3
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict1, i32 0, i32 3
  %5 = load i32, i32* %Height, align 4, !tbaa !95
  store i32 %5, i32* %mask_height, align 4, !tbaa !28
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict2 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %7, i32 0, i32 3
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict2, i32 0, i32 4
  %8 = load i32, i32* %BitsPerComponent, align 4, !tbaa !14
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %9, i32 0, i32 6
  store i32 0, i32* %depth, align 4, !tbaa !51
  %10 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %InterleaveType = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %10, i32 0, i32 2
  store i32 0, i32* %InterleaveType, align 4, !tbaa !89
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %mask_height, align 4, !tbaa !28
  %cmp3 = icmp sle i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %InterleaveType6 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %12, i32 0, i32 0
  %13 = load i32, i32* %InterleaveType6, align 4, !tbaa !12
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.20
  ]

sw.default:                                       ; preds = %if.end.5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.end.5
  %14 = load i32, i32* %mask_width, align 4, !tbaa !28
  %15 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Width7 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %15, i32 0, i32 2
  %16 = load i32, i32* %Width7, align 4, !tbaa !37
  %cmp8 = icmp ne i32 %14, %16
  br i1 %cmp8, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %17 = load i32, i32* %mask_height, align 4, !tbaa !28
  %18 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Height9 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %18, i32 0, i32 3
  %19 = load i32, i32* %Height9, align 4, !tbaa !15
  %cmp10 = icmp ne i32 %17, %19
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %20 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict12 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %20, i32 0, i32 3
  %BitsPerComponent13 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict12, i32 0, i32 4
  %21 = load i32, i32* %BitsPerComponent13, align 4, !tbaa !14
  %22 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent14 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %22, i32 0, i32 4
  %23 = load i32, i32* %BitsPerComponent14, align 4, !tbaa !48
  %cmp15 = icmp ne i32 %21, %23
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %24 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %24, i32 0, i32 7
  %25 = load i32, i32* %format, align 4, !tbaa !42
  %cmp17 = icmp ne i32 %25, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.11, %lor.lhs.false, %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false.16
  br label %sw.epilog.25

sw.bb.20:                                         ; preds = %if.end.5
  %26 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict21 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %26, i32 0, i32 3
  %BitsPerComponent22 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict21, i32 0, i32 4
  %27 = load i32, i32* %BitsPerComponent22, align 4, !tbaa !14
  switch i32 %27, label %sw.default.24 [
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.23
    i32 4, label %sw.bb.23
    i32 8, label %sw.bb.23
    i32 12, label %sw.bb.23
    i32 16, label %sw.bb.23
  ]

sw.bb.23:                                         ; preds = %sw.bb.20, %sw.bb.20, %sw.bb.20, %sw.bb.20, %sw.bb.20, %sw.bb.20
  br label %sw.epilog

sw.default.24:                                    ; preds = %sw.bb.20
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.23
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %sw.epilog, %if.end.19
  %28 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %28, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 0
  %29 = load float, float* %xx, align 4, !tbaa !96
  %conv = fpext float %29 to double
  %30 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict26 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %30, i32 0, i32 3
  %ImageMatrix27 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict26, i32 0, i32 1
  %xx28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix27, i32 0, i32 0
  %31 = load float, float* %xx28, align 4, !tbaa !97
  %conv29 = fpext float %31 to double
  %call = call i32 @check_image3x_extent(double %conv, double %conv29) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.30, label %if.then.57

lor.lhs.false.30:                                 ; preds = %sw.epilog.25
  %32 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix31 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %32, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix31, i32 0, i32 1
  %33 = load float, float* %xy, align 4, !tbaa !98
  %conv32 = fpext float %33 to double
  %34 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict33 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %34, i32 0, i32 3
  %ImageMatrix34 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict33, i32 0, i32 1
  %xy35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix34, i32 0, i32 1
  %35 = load float, float* %xy35, align 4, !tbaa !99
  %conv36 = fpext float %35 to double
  %call37 = call i32 @check_image3x_extent(double %conv32, double %conv36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.57

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.30
  %36 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix40 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %36, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix40, i32 0, i32 2
  %37 = load float, float* %yx, align 4, !tbaa !100
  %conv41 = fpext float %37 to double
  %38 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict42 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %38, i32 0, i32 3
  %ImageMatrix43 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict42, i32 0, i32 1
  %yx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix43, i32 0, i32 2
  %39 = load float, float* %yx44, align 4, !tbaa !101
  %conv45 = fpext float %39 to double
  %call46 = call i32 @check_image3x_extent(double %conv41, double %conv45) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.57

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.39
  %40 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix49 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %40, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix49, i32 0, i32 3
  %41 = load float, float* %yy, align 4, !tbaa !102
  %conv50 = fpext float %41 to double
  %42 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict51 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %42, i32 0, i32 3
  %ImageMatrix52 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict51, i32 0, i32 1
  %yy53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix52, i32 0, i32 3
  %43 = load float, float* %yy53, align 4, !tbaa !103
  %conv54 = fpext float %43 to double
  %call55 = call i32 @check_image3x_extent(double %conv50, double %conv54) #5
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.39, %lor.lhs.false.30, %sw.epilog.25
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %lor.lhs.false.48
  %44 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict59 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %44, i32 0, i32 3
  %ImageMatrix60 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict59, i32 0, i32 1
  %45 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %45, i32 0, i32 0
  %call61 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ImageMatrix60, %struct.gs_matrix_s* %matrix) #5
  store i32 %call61, i32* %code, align 4, !tbaa !28
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.71, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.end.58
  %46 = load i32, i32* %mask_width, align 4, !tbaa !28
  %conv65 = sitofp i32 %46 to double
  %47 = load i32, i32* %mask_height, align 4, !tbaa !28
  %conv66 = sitofp i32 %47 to double
  %48 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %matrix67 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %48, i32 0, i32 0
  %49 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %corner = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %49, i32 0, i32 1
  %call68 = call i32 @gs_point_transform(double %conv65, double %conv66, %struct.gs_matrix_s* %matrix67, %struct.gs_point_s* %corner) #5
  store i32 %call68, i32* %code, align 4, !tbaa !28
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false.64, %if.end.58
  %50 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %lor.lhs.false.64
  %51 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %matrix73 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %51, i32 0, i32 0
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix73, i32 0, i32 4
  %52 = load float, float* %tx, align 4, !tbaa !104
  %53 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %matrix74 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %53, i32 0, i32 0
  %tx75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix74, i32 0, i32 4
  %54 = load float, float* %tx75, align 4, !tbaa !104
  %sub = fsub float %52, %54
  %conv76 = fpext float %sub to double
  %call77 = call double @fabs(double %conv76) #6
  %cmp78 = fcmp oge double %call77, 5.000000e-01
  br i1 %cmp78, label %if.then.105, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.72
  %55 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %matrix81 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %55, i32 0, i32 0
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix81, i32 0, i32 5
  %56 = load float, float* %ty, align 4, !tbaa !105
  %57 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %matrix82 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %57, i32 0, i32 0
  %ty83 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix82, i32 0, i32 5
  %58 = load float, float* %ty83, align 4, !tbaa !105
  %sub84 = fsub float %56, %58
  %conv85 = fpext float %sub84 to double
  %call86 = call double @fabs(double %conv85) #6
  %cmp87 = fcmp oge double %call86, 5.000000e-01
  br i1 %cmp87, label %if.then.105, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.80
  %59 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %corner90 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %59, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %corner90, i32 0, i32 0
  %60 = load double, double* %x, align 8, !tbaa !106
  %61 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %corner91 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %61, i32 0, i32 1
  %x92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %corner91, i32 0, i32 0
  %62 = load double, double* %x92, align 8, !tbaa !106
  %sub93 = fsub double %60, %62
  %call94 = call double @fabs(double %sub93) #6
  %cmp95 = fcmp oge double %call94, 5.000000e-01
  br i1 %cmp95, label %if.then.105, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.89
  %63 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %corner98 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %63, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %corner98, i32 0, i32 1
  %64 = load double, double* %y, align 8, !tbaa !107
  %65 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %corner99 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %65, i32 0, i32 1
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %corner99, i32 0, i32 1
  %66 = load double, double* %y100, align 8, !tbaa !107
  %sub101 = fsub double %64, %66
  %call102 = call double @fabs(double %sub101) #6
  %cmp103 = fcmp oge double %call102, 5.000000e-01
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false.89, %lor.lhs.false.80, %if.end.72
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %lor.lhs.false.97
  %67 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %67, i32 0, i32 2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %68 = load i32, i32* %x107, align 4, !tbaa !36
  %69 = load i32, i32* %mask_width, align 4, !tbaa !28
  %mul = mul nsw i32 %68, %69
  %70 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Width108 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %70, i32 0, i32 2
  %71 = load i32, i32* %Width108, align 4, !tbaa !37
  %div = sdiv i32 %mul, %71
  %72 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect109 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %72, i32 0, i32 2
  %p110 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect109, i32 0, i32 0
  %x111 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p110, i32 0, i32 0
  store i32 %div, i32* %x111, align 4, !tbaa !36
  %73 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %rect112 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %73, i32 0, i32 2
  %p113 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect112, i32 0, i32 0
  %y114 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p113, i32 0, i32 1
  %74 = load i32, i32* %y114, align 4, !tbaa !29
  %75 = load i32, i32* %mask_height, align 4, !tbaa !28
  %mul115 = mul nsw i32 %74, %75
  %76 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Height116 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %76, i32 0, i32 3
  %77 = load i32, i32* %Height116, align 4, !tbaa !15
  %div117 = sdiv i32 %mul115, %77
  %78 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect118 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %78, i32 0, i32 2
  %p119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect118, i32 0, i32 0
  %y120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p119, i32 0, i32 1
  store i32 %div117, i32* %y120, align 4, !tbaa !29
  %79 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %rect121 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %79, i32 0, i32 2
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect121, i32 0, i32 1
  %x122 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %80 = load i32, i32* %x122, align 4, !tbaa !38
  %81 = load i32, i32* %mask_width, align 4, !tbaa !28
  %mul123 = mul nsw i32 %80, %81
  %82 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Width124 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %82, i32 0, i32 2
  %83 = load i32, i32* %Width124, align 4, !tbaa !37
  %add = add nsw i32 %mul123, %83
  %sub125 = sub nsw i32 %add, 1
  %84 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Width126 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %84, i32 0, i32 2
  %85 = load i32, i32* %Width126, align 4, !tbaa !37
  %div127 = sdiv i32 %sub125, %85
  %86 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect128 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %86, i32 0, i32 2
  %q129 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect128, i32 0, i32 1
  %x130 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q129, i32 0, i32 0
  store i32 %div127, i32* %x130, align 4, !tbaa !38
  %87 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %ppcv.addr, align 8, !tbaa !1
  %rect131 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %87, i32 0, i32 2
  %q132 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect131, i32 0, i32 1
  %y133 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q132, i32 0, i32 1
  %88 = load i32, i32* %y133, align 4, !tbaa !39
  %89 = load i32, i32* %mask_height, align 4, !tbaa !28
  %mul134 = mul nsw i32 %88, %89
  %90 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Height135 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %90, i32 0, i32 3
  %91 = load i32, i32* %Height135, align 4, !tbaa !15
  %add136 = add nsw i32 %mul134, %91
  %sub137 = sub nsw i32 %add136, 1
  %92 = load %struct.gs_image3x_s*, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %Height138 = getelementptr inbounds %struct.gs_image3x_s, %struct.gs_image3x_s* %92, i32 0, i32 3
  %93 = load i32, i32* %Height138, align 4, !tbaa !15
  %div139 = sdiv i32 %sub137, %93
  %94 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect140 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %94, i32 0, i32 2
  %q141 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect140, i32 0, i32 1
  %y142 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q141, i32 0, i32 1
  store i32 %div139, i32* %y142, align 4, !tbaa !39
  %95 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %InterleaveType143 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %95, i32 0, i32 0
  %96 = load i32, i32* %InterleaveType143, align 4, !tbaa !12
  %97 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %InterleaveType144 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %97, i32 0, i32 2
  store i32 %96, i32* %InterleaveType144, align 4, !tbaa !89
  %98 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect145 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %98, i32 0, i32 2
  %q146 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect145, i32 0, i32 1
  %x147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q146, i32 0, i32 0
  %99 = load i32, i32* %x147, align 4, !tbaa !38
  %100 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect148 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %100, i32 0, i32 2
  %p149 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect148, i32 0, i32 0
  %x150 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p149, i32 0, i32 0
  %101 = load i32, i32* %x150, align 4, !tbaa !36
  %sub151 = sub nsw i32 %99, %101
  %102 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %102, i32 0, i32 3
  store i32 %sub151, i32* %width, align 4, !tbaa !55
  %103 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect152 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %103, i32 0, i32 2
  %q153 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect152, i32 0, i32 1
  %y154 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q153, i32 0, i32 1
  %104 = load i32, i32* %y154, align 4, !tbaa !39
  %105 = load %struct.image3x_channel_values_s*, %struct.image3x_channel_values_s** %pmcv.addr, align 8, !tbaa !1
  %rect155 = getelementptr inbounds %struct.image3x_channel_values_s, %struct.image3x_channel_values_s* %105, i32 0, i32 2
  %p156 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect155, i32 0, i32 0
  %y157 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p156, i32 0, i32 1
  %106 = load i32, i32* %y157, align 4, !tbaa !29
  %sub158 = sub nsw i32 %104, %106
  %107 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %107, i32 0, i32 4
  store i32 %sub158, i32* %height, align 4, !tbaa !57
  %108 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict159 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %108, i32 0, i32 3
  %Height160 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict159, i32 0, i32 3
  %109 = load i32, i32* %Height160, align 4, !tbaa !95
  %110 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %110, i32 0, i32 5
  store i32 %109, i32* %full_height, align 4, !tbaa !108
  %111 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict161 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %111, i32 0, i32 3
  %BitsPerComponent162 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict161, i32 0, i32 4
  %112 = load i32, i32* %BitsPerComponent162, align 4, !tbaa !14
  %113 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %depth163 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %113, i32 0, i32 6
  store i32 %112, i32* %depth163, align 4, !tbaa !51
  %114 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %InterleaveType164 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %114, i32 0, i32 2
  %115 = load i32, i32* %InterleaveType164, align 4, !tbaa !89
  %cmp165 = icmp eq i32 %115, 1
  br i1 %cmp165, label %if.then.167, label %if.end.179

if.then.167:                                      ; preds = %if.end.106
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %117 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !47
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %119 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %width168 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %119, i32 0, i32 3
  %120 = load i32, i32* %width168, align 4, !tbaa !55
  %121 = load %struct.gs_image3x_mask_s*, %struct.gs_image3x_mask_s** %pimm.addr, align 8, !tbaa !1
  %MaskDict169 = getelementptr inbounds %struct.gs_image3x_mask_s, %struct.gs_image3x_mask_s* %121, i32 0, i32 3
  %BitsPerComponent170 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %MaskDict169, i32 0, i32 4
  %122 = load i32, i32* %BitsPerComponent170, align 4, !tbaa !14
  %mul171 = mul nsw i32 %120, %122
  %add172 = add nsw i32 %mul171, 7
  %shr = ashr i32 %add172, 3
  %call173 = call i8* %117(%struct.gs_memory_s* %118, i32 %shr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0)) #5
  %123 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %123, i32 0, i32 7
  store i8* %call173, i8** %data, align 8, !tbaa !22
  %124 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %data174 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %124, i32 0, i32 7
  %125 = load i8*, i8** %data174, align 8, !tbaa !22
  %cmp175 = icmp eq i8* %125, null
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.then.167
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.then.167
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.106
  %126 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %126, i32 0, i32 9
  store i32 0, i32* %skip, align 4, !tbaa !109
  %127 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pmcs.addr, align 8, !tbaa !1
  %y180 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %127, i32 0, i32 8
  store i32 0, i32* %y180, align 4, !tbaa !110
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.179, %if.then.177, %if.then.105, %if.then.71, %if.then.57, %sw.default.24, %if.then.18, %sw.default, %if.then.4, %if.then
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %mask_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %mask_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #1

declare i32 @gs_cspace_new_DevicePixel(%struct.gs_memory_s*, %struct.gs_color_space_s**, i32) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #1

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #1

declare i32 @gs_closedevice(%struct.gx_device_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_data_image_t_init(%struct.gs_data_image_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3x_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %penum = alloca %struct.gx_image3x_enum_s*, align 8
  %pixel_height = alloca i32, align 4
  %pixel_used = alloca i32, align 4
  %mask_height = alloca [2 x i32], align 4
  %mask_used = alloca [2 x i32], align 4
  %h1 = alloca i32, align 4
  %h = alloca i32, align 4
  %pixel_planes = alloca %struct.gx_image_plane_s*, align 8
  %pixel_plane = alloca %struct.gx_image_plane_s, align 8
  %mask_plane = alloca [2 x %struct.gx_image_plane_s], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %pi = alloca i32, align 4
  %num_chunky = alloca i32, align 4
  %mh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bpc = alloca i32, align 4
  %num_components = alloca i32, align 4
  %width = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %pptr = alloca i8*, align 8
  %pbit = alloca i32, align 4
  %pbbyte = alloca i8, align 1
  %dptr = alloca [2 x i8*], align 16
  %dbit = alloca [2 x i32], align 4
  %dbbyte = alloca [2 x i8], align 1
  %depth103 = alloca [2 x i32], align 4
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %skip = alloca i32, align 4
  %mask_h = alloca i32, align 4
  %skip598 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !28
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3x_enum_s*
  store %struct.gx_image3x_enum_s* %2, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %pixel_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %4, i32 0, i32 13
  %height1 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel, i32 0, i32 4
  %5 = load i32, i32* %height1, align 4, !tbaa !44
  store i32 %5, i32* %pixel_height, align 4, !tbaa !28
  %6 = bitcast i32* %pixel_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %pixel_used, align 4, !tbaa !28
  %7 = bitcast [2 x i32]* %mask_height to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast [2 x i32]* %mask_used to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %pixel_height, align 4, !tbaa !28
  %11 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel2 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %11, i32 0, i32 13
  %y = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel2, i32 0, i32 8
  %12 = load i32, i32* %y, align 4, !tbaa !46
  %sub = sub nsw i32 %10, %12
  store i32 %sub, i32* %h1, align 4, !tbaa !28
  %13 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_image_plane_s** %pixel_planes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_image_plane_s* %pixel_plane to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = bitcast [2 x %struct.gx_image_plane_s]* %mask_plane to i8*
  call void @llvm.lifetime.start(i64 32, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %code, align 4, !tbaa !28
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %pi, align 4, !tbaa !28
  %20 = bitcast i32* %num_chunky to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  store i32 0, i32* %num_chunky, align 4, !tbaa !28
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp slt i32 %21, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast i32* %mh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %24, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask, i32 0, i64 %idxprom
  %height3 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx, i32 0, i32 4
  %25 = load i32, i32* %height3, align 4, !tbaa !57
  %26 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom4 = sext i32 %26 to i64
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_height, i32 0, i64 %idxprom4
  store i32 %25, i32* %arrayidx5, align 4, !tbaa !28
  store i32 %25, i32* %mh, align 4, !tbaa !28
  %27 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom6 = sext i32 %27 to i64
  %arrayidx7 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom6
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx7, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !111
  %28 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom8 = sext i32 %28 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4, !tbaa !28
  %29 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom10 = sext i32 %29 to i64
  %30 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask11 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %30, i32 0, i32 12
  %arrayidx12 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask11, i32 0, i64 %idxprom10
  %depth = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx12, i32 0, i32 6
  %31 = load i32, i32* %depth, align 4, !tbaa !51
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %32 = load i32, i32* %h1, align 4, !tbaa !28
  %33 = load i32, i32* %mh, align 4, !tbaa !28
  %34 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom13 = sext i32 %34 to i64
  %35 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask14 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %35, i32 0, i32 12
  %arrayidx15 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask14, i32 0, i64 %idxprom13
  %y16 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx15, i32 0, i32 8
  %36 = load i32, i32* %y16, align 4, !tbaa !110
  %cmp17 = icmp sgt i32 %33, %36
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %37 = load i32, i32* %mh, align 4, !tbaa !28
  %38 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom18 = sext i32 %38 to i64
  %39 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %39, i32 0, i32 12
  %arrayidx20 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask19, i32 0, i64 %idxprom18
  %y21 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx20, i32 0, i32 8
  %40 = load i32, i32* %y21, align 4, !tbaa !110
  %sub22 = sub nsw i32 %37, %40
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %41 = load i32, i32* %mh, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ %41, %cond.false ]
  %cmp23 = icmp slt i32 %32, %cond
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end
  %42 = load i32, i32* %h1, align 4, !tbaa !28
  br label %cond.end.40

cond.false.25:                                    ; preds = %cond.end
  %43 = load i32, i32* %mh, align 4, !tbaa !28
  %44 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom26 = sext i32 %44 to i64
  %45 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask27 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %45, i32 0, i32 12
  %arrayidx28 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask27, i32 0, i64 %idxprom26
  %y29 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx28, i32 0, i32 8
  %46 = load i32, i32* %y29, align 4, !tbaa !110
  %cmp30 = icmp sgt i32 %43, %46
  br i1 %cmp30, label %cond.true.31, label %cond.false.37

cond.true.31:                                     ; preds = %cond.false.25
  %47 = load i32, i32* %mh, align 4, !tbaa !28
  %48 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom32 = sext i32 %48 to i64
  %49 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask33 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %49, i32 0, i32 12
  %arrayidx34 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask33, i32 0, i64 %idxprom32
  %y35 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx34, i32 0, i32 8
  %50 = load i32, i32* %y35, align 4, !tbaa !110
  %sub36 = sub nsw i32 %47, %50
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.false.25
  %51 = load i32, i32* %mh, align 4, !tbaa !28
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.31
  %cond39 = phi i32 [ %sub36, %cond.true.31 ], [ %51, %cond.false.37 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.24
  %cond41 = phi i32 [ %42, %cond.true.24 ], [ %cond39, %cond.end.38 ]
  store i32 %cond41, i32* %h1, align 4, !tbaa !28
  %52 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom42 = sext i32 %52 to i64
  %53 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask43 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %53, i32 0, i32 12
  %arrayidx44 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask43, i32 0, i64 %idxprom42
  %InterleaveType = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx44, i32 0, i32 2
  %54 = load i32, i32* %InterleaveType, align 4, !tbaa !89
  %cmp45 = icmp eq i32 %54, 1
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.40
  %55 = load i32, i32* %num_chunky, align 4, !tbaa !28
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %num_chunky, align 4, !tbaa !28
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %cond.end.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then
  %56 = bitcast i32* %mh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %57 = load i32, i32* %i, align 4, !tbaa !28
  %inc48 = add nsw i32 %57, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %height.addr, align 4, !tbaa !28
  %59 = load i32, i32* %h1, align 4, !tbaa !28
  %cmp49 = icmp slt i32 %58, %59
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %for.end
  %60 = load i32, i32* %height.addr, align 4, !tbaa !28
  br label %cond.end.52

cond.false.51:                                    ; preds = %for.end
  %61 = load i32, i32* %h1, align 4, !tbaa !28
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %60, %cond.true.50 ], [ %61, %cond.false.51 ]
  store i32 %cond53, i32* %h, align 4, !tbaa !28
  %62 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 0, i32* %62, align 4, !tbaa !28
  %63 = load i32, i32* %h, align 4, !tbaa !28
  %cmp54 = icmp sle i32 %63, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %cond.end.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.56:                                        ; preds = %cond.end.52
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.75, %if.end.56
  %64 = load i32, i32* %i, align 4, !tbaa !28
  %cmp58 = icmp slt i32 %64, 2
  br i1 %cmp58, label %for.body.59, label %for.end.77

for.body.59:                                      ; preds = %for.cond.57
  %65 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom60 = sext i32 %65 to i64
  %66 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask61 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %66, i32 0, i32 12
  %arrayidx62 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask61, i32 0, i64 %idxprom60
  %InterleaveType63 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx62, i32 0, i32 2
  %67 = load i32, i32* %InterleaveType63, align 4, !tbaa !89
  %cmp64 = icmp eq i32 %67, 3
  br i1 %cmp64, label %if.then.65, label %if.end.74

if.then.65:                                       ; preds = %for.body.59
  %68 = load i32, i32* %h, align 4, !tbaa !28
  %cmp66 = icmp sgt i32 %68, 1
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.65
  store i32 1, i32* %h, align 4, !tbaa !28
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.65
  %69 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom69
  %70 = load i32, i32* %pi, align 4, !tbaa !28
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, i32* %pi, align 4, !tbaa !28
  %idxprom72 = sext i32 %70 to i64
  %71 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %71, i64 %idxprom72
  %72 = bitcast %struct.gx_image_plane_s* %arrayidx70 to i8*
  %73 = bitcast %struct.gx_image_plane_s* %arrayidx73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 16, i32 8, i1 false), !tbaa.struct !113
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.68, %for.body.59
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %74 = load i32, i32* %i, align 4, !tbaa !28
  %inc76 = add nsw i32 %74, 1
  store i32 %inc76, i32* %i, align 4, !tbaa !28
  br label %for.cond.57

for.end.77:                                       ; preds = %for.cond.57
  %75 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom78 = sext i32 %75 to i64
  %76 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %76, i64 %idxprom78
  store %struct.gx_image_plane_s* %arrayidx79, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %77 = load i32, i32* %num_chunky, align 4, !tbaa !28
  %tobool80 = icmp ne i32 %77, 0
  br i1 %tobool80, label %if.then.81, label %if.end.487

if.then.81:                                       ; preds = %for.end.77
  %78 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #2
  %79 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %bpc82 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %79, i32 0, i32 11
  %80 = load i32, i32* %bpc82, align 4, !tbaa !49
  store i32 %80, i32* %bpc, align 4, !tbaa !28
  %81 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %num_components83 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %82, i32 0, i32 10
  %83 = load i32, i32* %num_components83, align 4, !tbaa !41
  store i32 %83, i32* %num_components, align 4, !tbaa !28
  %84 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %85 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel84 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %85, i32 0, i32 13
  %width85 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel84, i32 0, i32 3
  %86 = load i32, i32* %width85, align 4, !tbaa !43
  store i32 %86, i32* %width, align 4, !tbaa !28
  %87 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #2
  %88 = load i32, i32* %bpc, align 4, !tbaa !28
  %89 = load i32, i32* %num_components, align 4, !tbaa !28
  %90 = load i32, i32* %num_chunky, align 4, !tbaa !28
  %add = add nsw i32 %89, %90
  %mul = mul nsw i32 %88, %add
  %91 = load i32, i32* %pi, align 4, !tbaa !28
  %idxprom86 = sext i32 %91 to i64
  %92 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %92, i64 %idxprom86
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx87, i32 0, i32 1
  %93 = load i32, i32* %data_x, align 4, !tbaa !114
  %mul88 = mul nsw i32 %mul, %93
  store i32 %mul88, i32* %bit_x, align 4, !tbaa !28
  %94 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #2
  %95 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %95, i64 0
  %data90 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx89, i32 0, i32 0
  %96 = load i8*, i8** %data90, align 8, !tbaa !111
  %97 = load i32, i32* %bit_x, align 4, !tbaa !28
  %shr = lshr i32 %97, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 %idx.ext
  store i8* %add.ptr, i8** %sptr, align 8, !tbaa !1
  %98 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %99 = load i32, i32* %bit_x, align 4, !tbaa !28
  %and = and i32 %99, 7
  store i32 %and, i32* %sbit, align 4, !tbaa !28
  %100 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel91 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %101, i32 0, i32 13
  %data92 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel91, i32 0, i32 7
  %102 = load i8*, i8** %data92, align 8, !tbaa !26
  store i8* %102, i8** %pptr, align 8, !tbaa !1
  %103 = bitcast i32* %pbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  store i32 0, i32* %pbit, align 4, !tbaa !28
  call void @llvm.lifetime.start(i64 1, i8* %pbbyte) #2
  %104 = load i32, i32* %pbit, align 4, !tbaa !28
  %tobool93 = icmp ne i32 %104, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.99

cond.true.94:                                     ; preds = %if.then.81
  %105 = load i8*, i8** %pptr, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !87
  %conv = zext i8 %106 to i32
  %107 = load i32, i32* %pbit, align 4, !tbaa !28
  %shr95 = ashr i32 65280, %107
  %and96 = and i32 %conv, %shr95
  %conv97 = trunc i32 %and96 to i8
  %conv98 = zext i8 %conv97 to i32
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.then.81
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.94
  %cond101 = phi i32 [ %conv98, %cond.true.94 ], [ 0, %cond.false.99 ]
  %conv102 = trunc i32 %cond101 to i8
  store i8 %conv102, i8* %pbbyte, align 1, !tbaa !87
  %108 = bitcast [2 x i8*]* %dptr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %108) #2
  %109 = bitcast [2 x i32]* %dbit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #2
  %110 = bitcast [2 x i8]* %dbbyte to i8*
  call void @llvm.lifetime.start(i64 2, i8* %110) #2
  %111 = bitcast [2 x i32]* %depth103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #2
  %112 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load i32, i32* %h, align 4, !tbaa !28
  %cmp104 = icmp sgt i32 %113, 1
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %cond.end.100
  store i32 1, i32* %h, align 4, !tbaa !28
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %cond.end.100
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.143, %if.end.107
  %114 = load i32, i32* %i, align 4, !tbaa !28
  %cmp109 = icmp slt i32 %114, 2
  br i1 %cmp109, label %for.body.111, label %for.end.145

for.body.111:                                     ; preds = %for.cond.108
  %115 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom112 = sext i32 %115 to i64
  %116 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask113 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %116, i32 0, i32 12
  %arrayidx114 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask113, i32 0, i64 %idxprom112
  %data115 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx114, i32 0, i32 7
  %117 = load i8*, i8** %data115, align 8, !tbaa !22
  %tobool116 = icmp ne i8* %117, null
  br i1 %tobool116, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %for.body.111
  %118 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom118 = sext i32 %118 to i64
  %119 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask119 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %119, i32 0, i32 12
  %arrayidx120 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask119, i32 0, i64 %idxprom118
  %depth121 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx120, i32 0, i32 6
  %120 = load i32, i32* %depth121, align 4, !tbaa !51
  %121 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom122 = sext i32 %121 to i64
  %arrayidx123 = getelementptr inbounds [2 x i32], [2 x i32]* %depth103, i32 0, i64 %idxprom122
  store i32 %120, i32* %arrayidx123, align 4, !tbaa !28
  %122 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom124 = sext i32 %122 to i64
  %123 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask125 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %123, i32 0, i32 12
  %arrayidx126 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask125, i32 0, i64 %idxprom124
  %data127 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx126, i32 0, i32 7
  %124 = load i8*, i8** %data127, align 8, !tbaa !22
  %125 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom128 = sext i32 %125 to i64
  %arrayidx129 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom128
  store i8* %124, i8** %arrayidx129, align 8, !tbaa !1
  %126 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom130 = sext i32 %126 to i64
  %arrayidx131 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom130
  %data132 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx131, i32 0, i32 0
  store i8* %124, i8** %data132, align 8, !tbaa !111
  %127 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom133 = sext i32 %127 to i64
  %arrayidx134 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom133
  %data_x135 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx134, i32 0, i32 1
  store i32 0, i32* %data_x135, align 4, !tbaa !114
  %128 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom136 = sext i32 %128 to i64
  %arrayidx137 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom136
  store i32 0, i32* %arrayidx137, align 4, !tbaa !28
  %129 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom138 = sext i32 %129 to i64
  %arrayidx139 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom138
  store i8 0, i8* %arrayidx139, align 1, !tbaa !87
  br label %if.end.142

if.else:                                          ; preds = %for.body.111
  %130 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom140 = sext i32 %130 to i64
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %depth103, i32 0, i64 %idxprom140
  store i32 0, i32* %arrayidx141, align 4, !tbaa !28
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.then.117
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %131 = load i32, i32* %i, align 4, !tbaa !28
  %inc144 = add nsw i32 %131, 1
  store i32 %inc144, i32* %i, align 4, !tbaa !28
  br label %for.cond.108

for.end.145:                                      ; preds = %for.cond.108
  %132 = load i8*, i8** %pptr, align 8, !tbaa !1
  %data146 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %pixel_plane, i32 0, i32 0
  store i8* %132, i8** %data146, align 8, !tbaa !111
  %data_x147 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %pixel_plane, i32 0, i32 1
  store i32 0, i32* %data_x147, align 4, !tbaa !114
  store %struct.gx_image_plane_s* %pixel_plane, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !28
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.424, %for.end.145
  %133 = load i32, i32* %x, align 4, !tbaa !28
  %134 = load i32, i32* %width, align 4, !tbaa !28
  %cmp149 = icmp slt i32 %133, %134
  br i1 %cmp149, label %for.body.151, label %for.end.426

for.body.151:                                     ; preds = %for.cond.148
  %135 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.302, %for.body.151
  %136 = load i32, i32* %i, align 4, !tbaa !28
  %cmp153 = icmp slt i32 %136, 2
  br i1 %cmp153, label %for.body.155, label %for.end.304

for.body.155:                                     ; preds = %for.cond.152
  %137 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom156 = sext i32 %137 to i64
  %arrayidx157 = getelementptr inbounds [2 x i32], [2 x i32]* %depth103, i32 0, i64 %idxprom156
  %138 = load i32, i32* %arrayidx157, align 4, !tbaa !28
  %tobool158 = icmp ne i32 %138, 0
  br i1 %tobool158, label %if.then.159, label %if.end.301

if.then.159:                                      ; preds = %for.body.155
  br label %do.body

do.body:                                          ; preds = %if.then.159
  %139 = load i32, i32* %bpc, align 4, !tbaa !28
  %shr160 = ashr i32 %139, 2
  switch i32 %shr160, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.166
    i32 2, label %sw.bb.171
    i32 3, label %sw.bb.173
  ]

sw.bb:                                            ; preds = %do.body
  %140 = load i8*, i8** %sptr, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !87
  %conv161 = zext i8 %141 to i32
  %142 = load i32, i32* %sbit, align 4, !tbaa !28
  %sub162 = sub nsw i32 8, %142
  %143 = load i32, i32* %bpc, align 4, !tbaa !28
  %sub163 = sub nsw i32 %sub162, %143
  %shr164 = ashr i32 %conv161, %sub163
  %144 = load i32, i32* %bpc, align 4, !tbaa !28
  %or = or i32 %144, 1
  %and165 = and i32 %shr164, %or
  store i32 %and165, i32* %value, align 4, !tbaa !28
  br label %sw.epilog

sw.bb.166:                                        ; preds = %do.body
  %145 = load i8*, i8** %sptr, align 8, !tbaa !1
  %146 = load i8, i8* %145, align 1, !tbaa !87
  %conv167 = zext i8 %146 to i32
  %147 = load i32, i32* %sbit, align 4, !tbaa !28
  %sub168 = sub nsw i32 4, %147
  %shr169 = ashr i32 %conv167, %sub168
  %and170 = and i32 %shr169, 15
  store i32 %and170, i32* %value, align 4, !tbaa !28
  br label %sw.epilog

sw.bb.171:                                        ; preds = %do.body
  %148 = load i8*, i8** %sptr, align 8, !tbaa !1
  %149 = load i8, i8* %148, align 1, !tbaa !87
  %conv172 = zext i8 %149 to i32
  store i32 %conv172, i32* %value, align 4, !tbaa !28
  br label %sw.epilog

sw.bb.173:                                        ; preds = %do.body
  %150 = load i32, i32* %sbit, align 4, !tbaa !28
  %tobool174 = icmp ne i32 %150, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.181

cond.true.175:                                    ; preds = %sw.bb.173
  %151 = load i8*, i8** %sptr, align 8, !tbaa !1
  %152 = load i8, i8* %151, align 1, !tbaa !87
  %conv176 = zext i8 %152 to i32
  %and177 = and i32 %conv176, 15
  %shl = shl i32 %and177, 8
  %153 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %153, i64 1
  %154 = load i8, i8* %arrayidx178, align 1, !tbaa !87
  %conv179 = zext i8 %154 to i32
  %or180 = or i32 %shl, %conv179
  br label %cond.end.188

cond.false.181:                                   ; preds = %sw.bb.173
  %155 = load i8*, i8** %sptr, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !87
  %conv182 = zext i8 %156 to i32
  %shl183 = shl i32 %conv182, 4
  %157 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx184, align 1, !tbaa !87
  %conv185 = zext i8 %158 to i32
  %shr186 = ashr i32 %conv185, 4
  %or187 = or i32 %shl183, %shr186
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.181, %cond.true.175
  %cond189 = phi i32 [ %or180, %cond.true.175 ], [ %or187, %cond.false.181 ]
  store i32 %cond189, i32* %value, align 4, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

sw.epilog:                                        ; preds = %cond.end.188, %sw.bb.171, %sw.bb.166, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.190

do.body.190:                                      ; preds = %do.end
  %159 = load i32, i32* %bpc, align 4, !tbaa !28
  %160 = load i32, i32* %sbit, align 4, !tbaa !28
  %add191 = add nsw i32 %160, %159
  store i32 %add191, i32* %sbit, align 4, !tbaa !28
  %161 = load i32, i32* %sbit, align 4, !tbaa !28
  %shr192 = ashr i32 %161, 3
  %162 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext193 = sext i32 %shr192 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %162, i64 %idx.ext193
  store i8* %add.ptr194, i8** %sptr, align 8, !tbaa !1
  %163 = load i32, i32* %sbit, align 4, !tbaa !28
  %and195 = and i32 %163, 7
  store i32 %and195, i32* %sbit, align 4, !tbaa !28
  br label %do.cond.196

do.cond.196:                                      ; preds = %do.body.190
  br label %do.end.197

do.end.197:                                       ; preds = %do.cond.196
  br label %do.body.198

do.body.198:                                      ; preds = %do.end.197
  %164 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom199 = sext i32 %164 to i64
  %arrayidx200 = getelementptr inbounds [2 x i32], [2 x i32]* %depth103, i32 0, i64 %idxprom199
  %165 = load i32, i32* %arrayidx200, align 4, !tbaa !28
  %shr201 = ashr i32 %165, 2
  switch i32 %shr201, label %sw.default.297 [
    i32 0, label %sw.bb.202
    i32 1, label %sw.bb.237
    i32 3, label %sw.bb.258
    i32 2, label %sw.bb.292
  ]

sw.bb.202:                                        ; preds = %do.body.198
  %166 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom203 = sext i32 %166 to i64
  %arrayidx204 = getelementptr inbounds [2 x i32], [2 x i32]* %depth103, i32 0, i64 %idxprom203
  %167 = load i32, i32* %arrayidx204, align 4, !tbaa !28
  %168 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom205 = sext i32 %168 to i64
  %arrayidx206 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom205
  %169 = load i32, i32* %arrayidx206, align 4, !tbaa !28
  %add207 = add nsw i32 %169, %167
  store i32 %add207, i32* %arrayidx206, align 4, !tbaa !28
  %cmp208 = icmp eq i32 %add207, 8
  br i1 %cmp208, label %if.then.210, label %if.else.224

if.then.210:                                      ; preds = %sw.bb.202
  %170 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom211 = sext i32 %170 to i64
  %arrayidx212 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom211
  %171 = load i8, i8* %arrayidx212, align 1, !tbaa !87
  %conv213 = zext i8 %171 to i32
  %172 = load i32, i32* %value, align 4, !tbaa !28
  %conv214 = trunc i32 %172 to i8
  %conv215 = zext i8 %conv214 to i32
  %or216 = or i32 %conv213, %conv215
  %conv217 = trunc i32 %or216 to i8
  %173 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom218 = sext i32 %173 to i64
  %arrayidx219 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom218
  %174 = load i8*, i8** %arrayidx219, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr, i8** %arrayidx219, align 8, !tbaa !1
  store i8 %conv217, i8* %174, align 1, !tbaa !87
  %175 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom220 = sext i32 %175 to i64
  %arrayidx221 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom220
  store i8 0, i8* %arrayidx221, align 1, !tbaa !87
  %176 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom222 = sext i32 %176 to i64
  %arrayidx223 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom222
  store i32 0, i32* %arrayidx223, align 4, !tbaa !28
  br label %if.end.236

if.else.224:                                      ; preds = %sw.bb.202
  %177 = load i32, i32* %value, align 4, !tbaa !28
  %178 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom225 = sext i32 %178 to i64
  %arrayidx226 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom225
  %179 = load i32, i32* %arrayidx226, align 4, !tbaa !28
  %sub227 = sub nsw i32 8, %179
  %shl228 = shl i32 %177, %sub227
  %conv229 = trunc i32 %shl228 to i8
  %conv230 = zext i8 %conv229 to i32
  %180 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom231 = sext i32 %180 to i64
  %arrayidx232 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom231
  %181 = load i8, i8* %arrayidx232, align 1, !tbaa !87
  %conv233 = zext i8 %181 to i32
  %or234 = or i32 %conv233, %conv230
  %conv235 = trunc i32 %or234 to i8
  store i8 %conv235, i8* %arrayidx232, align 1, !tbaa !87
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.224, %if.then.210
  br label %sw.epilog.298

sw.bb.237:                                        ; preds = %do.body.198
  %182 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom238 = sext i32 %182 to i64
  %arrayidx239 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom238
  %183 = load i32, i32* %arrayidx239, align 4, !tbaa !28
  %xor = xor i32 %183, 4
  store i32 %xor, i32* %arrayidx239, align 4, !tbaa !28
  %tobool240 = icmp ne i32 %xor, 0
  br i1 %tobool240, label %if.then.241, label %if.else.246

if.then.241:                                      ; preds = %sw.bb.237
  %184 = load i32, i32* %value, align 4, !tbaa !28
  %shl242 = shl i32 %184, 4
  %conv243 = trunc i32 %shl242 to i8
  %185 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom244 = sext i32 %185 to i64
  %arrayidx245 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom244
  store i8 %conv243, i8* %arrayidx245, align 1, !tbaa !87
  br label %if.end.257

if.else.246:                                      ; preds = %sw.bb.237
  %186 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom247 = sext i32 %186 to i64
  %arrayidx248 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom247
  %187 = load i8, i8* %arrayidx248, align 1, !tbaa !87
  %conv249 = zext i8 %187 to i32
  %188 = load i32, i32* %value, align 4, !tbaa !28
  %conv250 = trunc i32 %188 to i8
  %conv251 = zext i8 %conv250 to i32
  %or252 = or i32 %conv249, %conv251
  %conv253 = trunc i32 %or252 to i8
  %189 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom254 = sext i32 %189 to i64
  %arrayidx255 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom254
  %190 = load i8*, i8** %arrayidx255, align 8, !tbaa !1
  %incdec.ptr256 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr256, i8** %arrayidx255, align 8, !tbaa !1
  store i8 %conv253, i8* %190, align 1, !tbaa !87
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.246, %if.then.241
  br label %sw.epilog.298

sw.bb.258:                                        ; preds = %do.body.198
  %191 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom259 = sext i32 %191 to i64
  %arrayidx260 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom259
  %192 = load i32, i32* %arrayidx260, align 4, !tbaa !28
  %xor261 = xor i32 %192, 4
  store i32 %xor261, i32* %arrayidx260, align 4, !tbaa !28
  %tobool262 = icmp ne i32 %xor261, 0
  br i1 %tobool262, label %if.then.263, label %if.else.273

if.then.263:                                      ; preds = %sw.bb.258
  %193 = load i32, i32* %value, align 4, !tbaa !28
  %shr264 = lshr i32 %193, 4
  %conv265 = trunc i32 %shr264 to i8
  %194 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom266 = sext i32 %194 to i64
  %arrayidx267 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom266
  %195 = load i8*, i8** %arrayidx267, align 8, !tbaa !1
  %incdec.ptr268 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr268, i8** %arrayidx267, align 8, !tbaa !1
  store i8 %conv265, i8* %195, align 1, !tbaa !87
  %196 = load i32, i32* %value, align 4, !tbaa !28
  %shl269 = shl i32 %196, 4
  %conv270 = trunc i32 %shl269 to i8
  %197 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom271 = sext i32 %197 to i64
  %arrayidx272 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom271
  store i8 %conv270, i8* %arrayidx272, align 1, !tbaa !87
  br label %if.end.291

if.else.273:                                      ; preds = %sw.bb.258
  %198 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom274 = sext i32 %198 to i64
  %arrayidx275 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom274
  %199 = load i8, i8* %arrayidx275, align 1, !tbaa !87
  %conv276 = zext i8 %199 to i32
  %200 = load i32, i32* %value, align 4, !tbaa !28
  %shr277 = lshr i32 %200, 8
  %conv278 = trunc i32 %shr277 to i8
  %conv279 = zext i8 %conv278 to i32
  %or280 = or i32 %conv276, %conv279
  %conv281 = trunc i32 %or280 to i8
  %201 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom282 = sext i32 %201 to i64
  %arrayidx283 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom282
  %202 = load i8*, i8** %arrayidx283, align 8, !tbaa !1
  store i8 %conv281, i8* %202, align 1, !tbaa !87
  %203 = load i32, i32* %value, align 4, !tbaa !28
  %conv284 = trunc i32 %203 to i8
  %204 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom285 = sext i32 %204 to i64
  %arrayidx286 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom285
  %205 = load i8*, i8** %arrayidx286, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 %conv284, i8* %arrayidx287, align 1, !tbaa !87
  %206 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom288 = sext i32 %206 to i64
  %arrayidx289 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom288
  %207 = load i8*, i8** %arrayidx289, align 8, !tbaa !1
  %add.ptr290 = getelementptr inbounds i8, i8* %207, i64 2
  store i8* %add.ptr290, i8** %arrayidx289, align 8, !tbaa !1
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.273, %if.then.263
  br label %sw.epilog.298

sw.bb.292:                                        ; preds = %do.body.198
  %208 = load i32, i32* %value, align 4, !tbaa !28
  %conv293 = trunc i32 %208 to i8
  %209 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom294 = sext i32 %209 to i64
  %arrayidx295 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom294
  %210 = load i8*, i8** %arrayidx295, align 8, !tbaa !1
  %incdec.ptr296 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr296, i8** %arrayidx295, align 8, !tbaa !1
  store i8 %conv293, i8* %210, align 1, !tbaa !87
  br label %sw.epilog.298

sw.default.297:                                   ; preds = %do.body.198
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

sw.epilog.298:                                    ; preds = %sw.bb.292, %if.end.291, %if.end.257, %if.end.236
  br label %do.cond.299

do.cond.299:                                      ; preds = %sw.epilog.298
  br label %do.end.300

do.end.300:                                       ; preds = %do.cond.299
  br label %if.end.301

if.end.301:                                       ; preds = %do.end.300, %for.body.155
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %211 = load i32, i32* %i, align 4, !tbaa !28
  %inc303 = add nsw i32 %211, 1
  store i32 %inc303, i32* %i, align 4, !tbaa !28
  br label %for.cond.152

for.end.304:                                      ; preds = %for.cond.152
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.418, %for.end.304
  %212 = load i32, i32* %i, align 4, !tbaa !28
  %213 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp306 = icmp slt i32 %212, %213
  br i1 %cmp306, label %for.body.308, label %for.end.420

for.body.308:                                     ; preds = %for.cond.305
  br label %do.body.309

do.body.309:                                      ; preds = %for.body.308
  %214 = load i32, i32* %bpc, align 4, !tbaa !28
  %shr310 = ashr i32 %214, 2
  switch i32 %shr310, label %sw.default.343 [
    i32 0, label %sw.bb.311
    i32 1, label %sw.bb.318
    i32 2, label %sw.bb.323
    i32 3, label %sw.bb.325
  ]

sw.bb.311:                                        ; preds = %do.body.309
  %215 = load i8*, i8** %sptr, align 8, !tbaa !1
  %216 = load i8, i8* %215, align 1, !tbaa !87
  %conv312 = zext i8 %216 to i32
  %217 = load i32, i32* %sbit, align 4, !tbaa !28
  %sub313 = sub nsw i32 8, %217
  %218 = load i32, i32* %bpc, align 4, !tbaa !28
  %sub314 = sub nsw i32 %sub313, %218
  %shr315 = ashr i32 %conv312, %sub314
  %219 = load i32, i32* %bpc, align 4, !tbaa !28
  %or316 = or i32 %219, 1
  %and317 = and i32 %shr315, %or316
  store i32 %and317, i32* %value, align 4, !tbaa !28
  br label %sw.epilog.344

sw.bb.318:                                        ; preds = %do.body.309
  %220 = load i8*, i8** %sptr, align 8, !tbaa !1
  %221 = load i8, i8* %220, align 1, !tbaa !87
  %conv319 = zext i8 %221 to i32
  %222 = load i32, i32* %sbit, align 4, !tbaa !28
  %sub320 = sub nsw i32 4, %222
  %shr321 = ashr i32 %conv319, %sub320
  %and322 = and i32 %shr321, 15
  store i32 %and322, i32* %value, align 4, !tbaa !28
  br label %sw.epilog.344

sw.bb.323:                                        ; preds = %do.body.309
  %223 = load i8*, i8** %sptr, align 8, !tbaa !1
  %224 = load i8, i8* %223, align 1, !tbaa !87
  %conv324 = zext i8 %224 to i32
  store i32 %conv324, i32* %value, align 4, !tbaa !28
  br label %sw.epilog.344

sw.bb.325:                                        ; preds = %do.body.309
  %225 = load i32, i32* %sbit, align 4, !tbaa !28
  %tobool326 = icmp ne i32 %225, 0
  br i1 %tobool326, label %cond.true.327, label %cond.false.334

cond.true.327:                                    ; preds = %sw.bb.325
  %226 = load i8*, i8** %sptr, align 8, !tbaa !1
  %227 = load i8, i8* %226, align 1, !tbaa !87
  %conv328 = zext i8 %227 to i32
  %and329 = and i32 %conv328, 15
  %shl330 = shl i32 %and329, 8
  %228 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i8, i8* %228, i64 1
  %229 = load i8, i8* %arrayidx331, align 1, !tbaa !87
  %conv332 = zext i8 %229 to i32
  %or333 = or i32 %shl330, %conv332
  br label %cond.end.341

cond.false.334:                                   ; preds = %sw.bb.325
  %230 = load i8*, i8** %sptr, align 8, !tbaa !1
  %231 = load i8, i8* %230, align 1, !tbaa !87
  %conv335 = zext i8 %231 to i32
  %shl336 = shl i32 %conv335, 4
  %232 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load i8, i8* %arrayidx337, align 1, !tbaa !87
  %conv338 = zext i8 %233 to i32
  %shr339 = ashr i32 %conv338, 4
  %or340 = or i32 %shl336, %shr339
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.334, %cond.true.327
  %cond342 = phi i32 [ %or333, %cond.true.327 ], [ %or340, %cond.false.334 ]
  store i32 %cond342, i32* %value, align 4, !tbaa !28
  br label %sw.epilog.344

sw.default.343:                                   ; preds = %do.body.309
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

sw.epilog.344:                                    ; preds = %cond.end.341, %sw.bb.323, %sw.bb.318, %sw.bb.311
  br label %do.cond.345

do.cond.345:                                      ; preds = %sw.epilog.344
  br label %do.end.346

do.end.346:                                       ; preds = %do.cond.345
  br label %do.body.347

do.body.347:                                      ; preds = %do.end.346
  %234 = load i32, i32* %bpc, align 4, !tbaa !28
  %235 = load i32, i32* %sbit, align 4, !tbaa !28
  %add348 = add nsw i32 %235, %234
  store i32 %add348, i32* %sbit, align 4, !tbaa !28
  %236 = load i32, i32* %sbit, align 4, !tbaa !28
  %shr349 = ashr i32 %236, 3
  %237 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext350 = sext i32 %shr349 to i64
  %add.ptr351 = getelementptr inbounds i8, i8* %237, i64 %idx.ext350
  store i8* %add.ptr351, i8** %sptr, align 8, !tbaa !1
  %238 = load i32, i32* %sbit, align 4, !tbaa !28
  %and352 = and i32 %238, 7
  store i32 %and352, i32* %sbit, align 4, !tbaa !28
  br label %do.cond.353

do.cond.353:                                      ; preds = %do.body.347
  br label %do.end.354

do.end.354:                                       ; preds = %do.cond.353
  br label %do.body.355

do.body.355:                                      ; preds = %do.end.354
  %239 = load i32, i32* %bpc, align 4, !tbaa !28
  %shr356 = ashr i32 %239, 2
  switch i32 %shr356, label %sw.default.414 [
    i32 0, label %sw.bb.357
    i32 1, label %sw.bb.377
    i32 3, label %sw.bb.391
    i32 2, label %sw.bb.411
  ]

sw.bb.357:                                        ; preds = %do.body.355
  %240 = load i32, i32* %bpc, align 4, !tbaa !28
  %241 = load i32, i32* %pbit, align 4, !tbaa !28
  %add358 = add nsw i32 %241, %240
  store i32 %add358, i32* %pbit, align 4, !tbaa !28
  %cmp359 = icmp eq i32 %add358, 8
  br i1 %cmp359, label %if.then.361, label %if.else.368

if.then.361:                                      ; preds = %sw.bb.357
  %242 = load i8, i8* %pbbyte, align 1, !tbaa !87
  %conv362 = zext i8 %242 to i32
  %243 = load i32, i32* %value, align 4, !tbaa !28
  %conv363 = trunc i32 %243 to i8
  %conv364 = zext i8 %conv363 to i32
  %or365 = or i32 %conv362, %conv364
  %conv366 = trunc i32 %or365 to i8
  %244 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr367 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr367, i8** %pptr, align 8, !tbaa !1
  store i8 %conv366, i8* %244, align 1, !tbaa !87
  store i8 0, i8* %pbbyte, align 1, !tbaa !87
  store i32 0, i32* %pbit, align 4, !tbaa !28
  br label %if.end.376

if.else.368:                                      ; preds = %sw.bb.357
  %245 = load i32, i32* %value, align 4, !tbaa !28
  %246 = load i32, i32* %pbit, align 4, !tbaa !28
  %sub369 = sub nsw i32 8, %246
  %shl370 = shl i32 %245, %sub369
  %conv371 = trunc i32 %shl370 to i8
  %conv372 = zext i8 %conv371 to i32
  %247 = load i8, i8* %pbbyte, align 1, !tbaa !87
  %conv373 = zext i8 %247 to i32
  %or374 = or i32 %conv373, %conv372
  %conv375 = trunc i32 %or374 to i8
  store i8 %conv375, i8* %pbbyte, align 1, !tbaa !87
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.368, %if.then.361
  br label %sw.epilog.415

sw.bb.377:                                        ; preds = %do.body.355
  %248 = load i32, i32* %pbit, align 4, !tbaa !28
  %xor378 = xor i32 %248, 4
  store i32 %xor378, i32* %pbit, align 4, !tbaa !28
  %tobool379 = icmp ne i32 %xor378, 0
  br i1 %tobool379, label %if.then.380, label %if.else.383

if.then.380:                                      ; preds = %sw.bb.377
  %249 = load i32, i32* %value, align 4, !tbaa !28
  %shl381 = shl i32 %249, 4
  %conv382 = trunc i32 %shl381 to i8
  store i8 %conv382, i8* %pbbyte, align 1, !tbaa !87
  br label %if.end.390

if.else.383:                                      ; preds = %sw.bb.377
  %250 = load i8, i8* %pbbyte, align 1, !tbaa !87
  %conv384 = zext i8 %250 to i32
  %251 = load i32, i32* %value, align 4, !tbaa !28
  %conv385 = trunc i32 %251 to i8
  %conv386 = zext i8 %conv385 to i32
  %or387 = or i32 %conv384, %conv386
  %conv388 = trunc i32 %or387 to i8
  %252 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr389 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr389, i8** %pptr, align 8, !tbaa !1
  store i8 %conv388, i8* %252, align 1, !tbaa !87
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.383, %if.then.380
  br label %sw.epilog.415

sw.bb.391:                                        ; preds = %do.body.355
  %253 = load i32, i32* %pbit, align 4, !tbaa !28
  %xor392 = xor i32 %253, 4
  store i32 %xor392, i32* %pbit, align 4, !tbaa !28
  %tobool393 = icmp ne i32 %xor392, 0
  br i1 %tobool393, label %if.then.394, label %if.else.400

if.then.394:                                      ; preds = %sw.bb.391
  %254 = load i32, i32* %value, align 4, !tbaa !28
  %shr395 = lshr i32 %254, 4
  %conv396 = trunc i32 %shr395 to i8
  %255 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr397, i8** %pptr, align 8, !tbaa !1
  store i8 %conv396, i8* %255, align 1, !tbaa !87
  %256 = load i32, i32* %value, align 4, !tbaa !28
  %shl398 = shl i32 %256, 4
  %conv399 = trunc i32 %shl398 to i8
  store i8 %conv399, i8* %pbbyte, align 1, !tbaa !87
  br label %if.end.410

if.else.400:                                      ; preds = %sw.bb.391
  %257 = load i8, i8* %pbbyte, align 1, !tbaa !87
  %conv401 = zext i8 %257 to i32
  %258 = load i32, i32* %value, align 4, !tbaa !28
  %shr402 = lshr i32 %258, 8
  %conv403 = trunc i32 %shr402 to i8
  %conv404 = zext i8 %conv403 to i32
  %or405 = or i32 %conv401, %conv404
  %conv406 = trunc i32 %or405 to i8
  %259 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv406, i8* %259, align 1, !tbaa !87
  %260 = load i32, i32* %value, align 4, !tbaa !28
  %conv407 = trunc i32 %260 to i8
  %261 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i8, i8* %261, i64 1
  store i8 %conv407, i8* %arrayidx408, align 1, !tbaa !87
  %262 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr409 = getelementptr inbounds i8, i8* %262, i64 2
  store i8* %add.ptr409, i8** %pptr, align 8, !tbaa !1
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.400, %if.then.394
  br label %sw.epilog.415

sw.bb.411:                                        ; preds = %do.body.355
  %263 = load i32, i32* %value, align 4, !tbaa !28
  %conv412 = trunc i32 %263 to i8
  %264 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr413 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr413, i8** %pptr, align 8, !tbaa !1
  store i8 %conv412, i8* %264, align 1, !tbaa !87
  br label %sw.epilog.415

sw.default.414:                                   ; preds = %do.body.355
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

sw.epilog.415:                                    ; preds = %sw.bb.411, %if.end.410, %if.end.390, %if.end.376
  br label %do.cond.416

do.cond.416:                                      ; preds = %sw.epilog.415
  br label %do.end.417

do.end.417:                                       ; preds = %do.cond.416
  br label %for.inc.418

for.inc.418:                                      ; preds = %do.end.417
  %265 = load i32, i32* %i, align 4, !tbaa !28
  %inc419 = add nsw i32 %265, 1
  store i32 %inc419, i32* %i, align 4, !tbaa !28
  br label %for.cond.305

for.end.420:                                      ; preds = %for.cond.305
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.421

cleanup.421:                                      ; preds = %for.end.420, %sw.default.414, %sw.default.343, %sw.default.297, %sw.default
  %266 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %cleanup.dest.422 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.422, label %cleanup.471 [
    i32 0, label %cleanup.cont.423
  ]

cleanup.cont.423:                                 ; preds = %cleanup.421
  br label %for.inc.424

for.inc.424:                                      ; preds = %cleanup.cont.423
  %267 = load i32, i32* %x, align 4, !tbaa !28
  %inc425 = add nsw i32 %267, 1
  store i32 %inc425, i32* %x, align 4, !tbaa !28
  br label %for.cond.148

for.end.426:                                      ; preds = %for.cond.148
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.427

for.cond.427:                                     ; preds = %for.inc.458, %for.end.426
  %268 = load i32, i32* %i, align 4, !tbaa !28
  %cmp428 = icmp slt i32 %268, 2
  br i1 %cmp428, label %for.body.430, label %for.end.460

for.body.430:                                     ; preds = %for.cond.427
  %269 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom431 = sext i32 %269 to i64
  %270 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask432 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %270, i32 0, i32 12
  %arrayidx433 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask432, i32 0, i64 %idxprom431
  %data434 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx433, i32 0, i32 7
  %271 = load i8*, i8** %data434, align 8, !tbaa !22
  %tobool435 = icmp ne i8* %271, null
  br i1 %tobool435, label %if.then.436, label %if.end.457

if.then.436:                                      ; preds = %for.body.430
  %272 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom437 = sext i32 %272 to i64
  %arrayidx438 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom437
  %273 = load i32, i32* %arrayidx438, align 4, !tbaa !28
  %cmp439 = icmp ne i32 %273, 0
  br i1 %cmp439, label %if.then.441, label %if.end.456

if.then.441:                                      ; preds = %if.then.436
  %274 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom442 = sext i32 %274 to i64
  %arrayidx443 = getelementptr inbounds [2 x i8], [2 x i8]* %dbbyte, i32 0, i64 %idxprom442
  %275 = load i8, i8* %arrayidx443, align 1, !tbaa !87
  %conv444 = zext i8 %275 to i32
  %276 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom445 = sext i32 %276 to i64
  %arrayidx446 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom445
  %277 = load i8*, i8** %arrayidx446, align 8, !tbaa !1
  %278 = load i8, i8* %277, align 1, !tbaa !87
  %conv447 = zext i8 %278 to i32
  %279 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom448 = sext i32 %279 to i64
  %arrayidx449 = getelementptr inbounds [2 x i32], [2 x i32]* %dbit, i32 0, i64 %idxprom448
  %280 = load i32, i32* %arrayidx449, align 4, !tbaa !28
  %shr450 = ashr i32 255, %280
  %and451 = and i32 %conv447, %shr450
  %or452 = or i32 %conv444, %and451
  %conv453 = trunc i32 %or452 to i8
  %281 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom454 = sext i32 %281 to i64
  %arrayidx455 = getelementptr inbounds [2 x i8*], [2 x i8*]* %dptr, i32 0, i64 %idxprom454
  %282 = load i8*, i8** %arrayidx455, align 8, !tbaa !1
  store i8 %conv453, i8* %282, align 1, !tbaa !87
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.441, %if.then.436
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %for.body.430
  br label %for.inc.458

for.inc.458:                                      ; preds = %if.end.457
  %283 = load i32, i32* %i, align 4, !tbaa !28
  %inc459 = add nsw i32 %283, 1
  store i32 %inc459, i32* %i, align 4, !tbaa !28
  br label %for.cond.427

for.end.460:                                      ; preds = %for.cond.427
  %284 = load i32, i32* %pbit, align 4, !tbaa !28
  %cmp461 = icmp ne i32 %284, 0
  br i1 %cmp461, label %if.then.463, label %if.end.470

if.then.463:                                      ; preds = %for.end.460
  %285 = load i8, i8* %pbbyte, align 1, !tbaa !87
  %conv464 = zext i8 %285 to i32
  %286 = load i8*, i8** %pptr, align 8, !tbaa !1
  %287 = load i8, i8* %286, align 1, !tbaa !87
  %conv465 = zext i8 %287 to i32
  %288 = load i32, i32* %pbit, align 4, !tbaa !28
  %shr466 = ashr i32 255, %288
  %and467 = and i32 %conv465, %shr466
  %or468 = or i32 %conv464, %and467
  %conv469 = trunc i32 %or468 to i8
  %289 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv469, i8* %289, align 1, !tbaa !87
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.463, %for.end.460
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.471

cleanup.471:                                      ; preds = %if.end.470, %cleanup.421
  %290 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #2
  %291 = bitcast [2 x i32]* %depth103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #2
  %292 = bitcast [2 x i8]* %dbbyte to i8*
  call void @llvm.lifetime.end(i64 2, i8* %292) #2
  %293 = bitcast [2 x i32]* %dbit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #2
  %294 = bitcast [2 x i8*]* %dptr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %294) #2
  call void @llvm.lifetime.end(i64 1, i8* %pbbyte) #2
  %295 = bitcast i32* %pbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #2
  %297 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #2
  %298 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #2
  %299 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #2
  %301 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  %302 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %cleanup.dest.485 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.485, label %cleanup.667 [
    i32 0, label %cleanup.cont.486
  ]

cleanup.cont.486:                                 ; preds = %cleanup.471
  br label %if.end.487

if.end.487:                                       ; preds = %cleanup.cont.486, %for.end.77
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.488

for.cond.488:                                     ; preds = %for.inc.554, %if.end.487
  %303 = load i32, i32* %i, align 4, !tbaa !28
  %cmp489 = icmp slt i32 %303, 2
  br i1 %cmp489, label %for.body.491, label %for.end.556

for.body.491:                                     ; preds = %for.cond.488
  %304 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom492 = sext i32 %304 to i64
  %arrayidx493 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom492
  %data494 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx493, i32 0, i32 0
  %305 = load i8*, i8** %data494, align 8, !tbaa !111
  %tobool495 = icmp ne i8* %305, null
  br i1 %tobool495, label %if.then.496, label %if.end.553

if.then.496:                                      ; preds = %for.body.491
  %306 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %306) #2
  %307 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom497 = sext i32 %307 to i64
  %308 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask498 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %308, i32 0, i32 12
  %arrayidx499 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask498, i32 0, i64 %idxprom497
  %skip500 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx499, i32 0, i32 9
  %309 = load i32, i32* %skip500, align 4, !tbaa !109
  store i32 %309, i32* %skip, align 4, !tbaa !28
  %310 = load i32, i32* %skip, align 4, !tbaa !28
  %311 = load i32, i32* %h, align 4, !tbaa !28
  %cmp501 = icmp sge i32 %310, %311
  br i1 %cmp501, label %if.then.503, label %if.else.511

if.then.503:                                      ; preds = %if.then.496
  %312 = load i32, i32* %skip, align 4, !tbaa !28
  %313 = load i32, i32* %h, align 4, !tbaa !28
  %314 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom504 = sext i32 %314 to i64
  %arrayidx505 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom504
  store i32 %313, i32* %arrayidx505, align 4, !tbaa !28
  %sub506 = sub nsw i32 %312, %313
  %315 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom507 = sext i32 %315 to i64
  %316 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask508 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %316, i32 0, i32 12
  %arrayidx509 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask508, i32 0, i64 %idxprom507
  %skip510 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx509, i32 0, i32 9
  store i32 %sub506, i32* %skip510, align 4, !tbaa !109
  br label %if.end.536

if.else.511:                                      ; preds = %if.then.496
  %317 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #2
  %318 = load i32, i32* %h, align 4, !tbaa !28
  %319 = load i32, i32* %skip, align 4, !tbaa !28
  %sub512 = sub nsw i32 %318, %319
  store i32 %sub512, i32* %mask_h, align 4, !tbaa !28
  %320 = load i32, i32* %skip, align 4, !tbaa !28
  %321 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom513 = sext i32 %321 to i64
  %arrayidx514 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom513
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx514, i32 0, i32 2
  %322 = load i32, i32* %raster, align 4, !tbaa !115
  %mul515 = mul i32 %320, %322
  %323 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom516 = sext i32 %323 to i64
  %arrayidx517 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom516
  %data518 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx517, i32 0, i32 0
  %324 = load i8*, i8** %data518, align 8, !tbaa !111
  %idx.ext519 = zext i32 %mul515 to i64
  %add.ptr520 = getelementptr inbounds i8, i8* %324, i64 %idx.ext519
  store i8* %add.ptr520, i8** %data518, align 8, !tbaa !111
  %325 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom521 = sext i32 %325 to i64
  %326 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask522 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %326, i32 0, i32 12
  %arrayidx523 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask522, i32 0, i64 %idxprom521
  %skip524 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx523, i32 0, i32 9
  store i32 0, i32* %skip524, align 4, !tbaa !109
  %327 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom525 = sext i32 %327 to i64
  %328 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask526 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %328, i32 0, i32 12
  %arrayidx527 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask526, i32 0, i64 %idxprom525
  %info528 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx527, i32 0, i32 0
  %329 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info528, align 8, !tbaa !19
  %330 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom529 = sext i32 %330 to i64
  %arrayidx530 = getelementptr inbounds [2 x %struct.gx_image_plane_s], [2 x %struct.gx_image_plane_s]* %mask_plane, i32 0, i64 %idxprom529
  %331 = load i32, i32* %mask_h, align 4, !tbaa !28
  %332 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom531 = sext i32 %332 to i64
  %arrayidx532 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom531
  %call = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %329, %struct.gx_image_plane_s* %arrayidx530, i32 %331, i32* %arrayidx532) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %333 = load i32, i32* %skip, align 4, !tbaa !28
  %334 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom533 = sext i32 %334 to i64
  %arrayidx534 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom533
  %335 = load i32, i32* %arrayidx534, align 4, !tbaa !28
  %add535 = add nsw i32 %335, %333
  store i32 %add535, i32* %arrayidx534, align 4, !tbaa !28
  %336 = bitcast i32* %mask_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #2
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.511, %if.then.503
  %337 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom537 = sext i32 %337 to i64
  %arrayidx538 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom537
  %338 = load i32, i32* %arrayidx538, align 4, !tbaa !28
  %339 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %338, i32* %339, align 4, !tbaa !28
  %340 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom539 = sext i32 %340 to i64
  %arrayidx540 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom539
  %341 = load i32, i32* %arrayidx540, align 4, !tbaa !28
  %342 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom541 = sext i32 %342 to i64
  %343 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask542 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %343, i32 0, i32 12
  %arrayidx543 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask542, i32 0, i64 %idxprom541
  %y544 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx543, i32 0, i32 8
  %344 = load i32, i32* %y544, align 4, !tbaa !110
  %add545 = add nsw i32 %344, %341
  store i32 %add545, i32* %y544, align 4, !tbaa !110
  %345 = load i32, i32* %code, align 4, !tbaa !28
  %cmp546 = icmp slt i32 %345, 0
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.end.536
  %346 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %346, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.550

if.end.549:                                       ; preds = %if.end.536
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.550

cleanup.550:                                      ; preds = %if.end.549, %if.then.548
  %347 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #2
  %cleanup.dest.551 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.551, label %cleanup.667 [
    i32 0, label %cleanup.cont.552
  ]

cleanup.cont.552:                                 ; preds = %cleanup.550
  br label %if.end.553

if.end.553:                                       ; preds = %cleanup.cont.552, %for.body.491
  br label %for.inc.554

for.inc.554:                                      ; preds = %if.end.553
  %348 = load i32, i32* %i, align 4, !tbaa !28
  %inc555 = add nsw i32 %348, 1
  store i32 %inc555, i32* %i, align 4, !tbaa !28
  br label %for.cond.488

for.end.556:                                      ; preds = %for.cond.488
  %349 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %349, i64 0
  %data558 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx557, i32 0, i32 0
  %350 = load i8*, i8** %data558, align 8, !tbaa !111
  %tobool559 = icmp ne i8* %350, null
  br i1 %tobool559, label %if.then.560, label %if.end.618

if.then.560:                                      ; preds = %for.end.556
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.561

for.cond.561:                                     ; preds = %for.inc.577, %if.then.560
  %351 = load i32, i32* %i, align 4, !tbaa !28
  %cmp562 = icmp slt i32 %351, 2
  br i1 %cmp562, label %for.body.564, label %for.end.579

for.body.564:                                     ; preds = %for.cond.561
  %352 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom565 = sext i32 %352 to i64
  %353 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask566 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %353, i32 0, i32 12
  %arrayidx567 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask566, i32 0, i64 %idxprom565
  %info568 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx567, i32 0, i32 0
  %354 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info568, align 8, !tbaa !19
  %tobool569 = icmp ne %struct.gx_image_enum_common_s* %354, null
  br i1 %tobool569, label %if.then.570, label %if.end.576

if.then.570:                                      ; preds = %for.body.564
  %355 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom571 = sext i32 %355 to i64
  %356 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask572 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %356, i32 0, i32 12
  %arrayidx573 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask572, i32 0, i64 %idxprom571
  %info574 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx573, i32 0, i32 0
  %357 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info574, align 8, !tbaa !19
  %call575 = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %357) #5
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.570, %for.body.564
  br label %for.inc.577

for.inc.577:                                      ; preds = %if.end.576
  %358 = load i32, i32* %i, align 4, !tbaa !28
  %inc578 = add nsw i32 %358, 1
  store i32 %inc578, i32* %i, align 4, !tbaa !28
  br label %for.cond.561

for.end.579:                                      ; preds = %for.cond.561
  %359 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel580 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %359, i32 0, i32 13
  %info581 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel580, i32 0, i32 0
  %360 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info581, align 8, !tbaa !23
  %361 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pixel_planes, align 8, !tbaa !1
  %362 = load i32, i32* %h, align 4, !tbaa !28
  %call582 = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %360, %struct.gx_image_plane_s* %361, i32 %362, i32* %pixel_used) #5
  store i32 %call582, i32* %code, align 4, !tbaa !28
  %363 = load i32, i32* %pixel_used, align 4, !tbaa !28
  %364 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %363, i32* %364, align 4, !tbaa !28
  %365 = load i32, i32* %pixel_used, align 4, !tbaa !28
  %366 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel583 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %366, i32 0, i32 13
  %y584 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel583, i32 0, i32 8
  %367 = load i32, i32* %y584, align 4, !tbaa !46
  %add585 = add nsw i32 %367, %365
  store i32 %add585, i32* %y584, align 4, !tbaa !46
  %368 = load i32, i32* %code, align 4, !tbaa !28
  %cmp586 = icmp slt i32 %368, 0
  br i1 %cmp586, label %if.then.588, label %if.end.617

if.then.588:                                      ; preds = %for.end.579
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.589

for.cond.589:                                     ; preds = %for.inc.614, %if.then.588
  %369 = load i32, i32* %i, align 4, !tbaa !28
  %cmp590 = icmp slt i32 %369, 2
  br i1 %cmp590, label %for.body.592, label %for.end.616

for.body.592:                                     ; preds = %for.cond.589
  %370 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom593 = sext i32 %370 to i64
  %arrayidx594 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom593
  %371 = load i32, i32* %arrayidx594, align 4, !tbaa !28
  %372 = load i32, i32* %pixel_used, align 4, !tbaa !28
  %cmp595 = icmp sgt i32 %371, %372
  br i1 %cmp595, label %if.then.597, label %if.end.613

if.then.597:                                      ; preds = %for.body.592
  %373 = bitcast i32* %skip598 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373) #2
  %374 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom599 = sext i32 %374 to i64
  %arrayidx600 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom599
  %375 = load i32, i32* %arrayidx600, align 4, !tbaa !28
  %376 = load i32, i32* %pixel_used, align 4, !tbaa !28
  %sub601 = sub nsw i32 %375, %376
  store i32 %sub601, i32* %skip598, align 4, !tbaa !28
  %377 = load i32, i32* %skip598, align 4, !tbaa !28
  %378 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom602 = sext i32 %378 to i64
  %379 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask603 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %379, i32 0, i32 12
  %arrayidx604 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask603, i32 0, i64 %idxprom602
  %skip605 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx604, i32 0, i32 9
  store i32 %377, i32* %skip605, align 4, !tbaa !109
  %380 = load i32, i32* %skip598, align 4, !tbaa !28
  %381 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom606 = sext i32 %381 to i64
  %382 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask607 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %382, i32 0, i32 12
  %arrayidx608 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask607, i32 0, i64 %idxprom606
  %y609 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx608, i32 0, i32 8
  %383 = load i32, i32* %y609, align 4, !tbaa !110
  %sub610 = sub nsw i32 %383, %380
  store i32 %sub610, i32* %y609, align 4, !tbaa !110
  %384 = load i32, i32* %pixel_used, align 4, !tbaa !28
  %385 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom611 = sext i32 %385 to i64
  %arrayidx612 = getelementptr inbounds [2 x i32], [2 x i32]* %mask_used, i32 0, i64 %idxprom611
  store i32 %384, i32* %arrayidx612, align 4, !tbaa !28
  %386 = bitcast i32* %skip598 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #2
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.597, %for.body.592
  br label %for.inc.614

for.inc.614:                                      ; preds = %if.end.613
  %387 = load i32, i32* %i, align 4, !tbaa !28
  %inc615 = add nsw i32 %387, 1
  store i32 %inc615, i32* %i, align 4, !tbaa !28
  br label %for.cond.589

for.end.616:                                      ; preds = %for.cond.589
  br label %if.end.617

if.end.617:                                       ; preds = %for.end.616, %for.end.579
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.617, %for.end.556
  br label %do.body.619

do.body.619:                                      ; preds = %if.end.618
  br label %do.cond.620

do.cond.620:                                      ; preds = %do.body.619
  br label %do.end.621

do.end.621:                                       ; preds = %do.cond.620
  %388 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask622 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %388, i32 0, i32 12
  %arrayidx623 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask622, i32 0, i64 0
  %depth624 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx623, i32 0, i32 6
  %389 = load i32, i32* %depth624, align 4, !tbaa !51
  %cmp625 = icmp eq i32 %389, 0
  br i1 %cmp625, label %if.then.635, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.621
  %390 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask627 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %390, i32 0, i32 12
  %arrayidx628 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask627, i32 0, i64 0
  %y629 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx628, i32 0, i32 8
  %391 = load i32, i32* %y629, align 4, !tbaa !110
  %392 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask630 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %392, i32 0, i32 12
  %arrayidx631 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask630, i32 0, i64 0
  %height632 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx631, i32 0, i32 4
  %393 = load i32, i32* %height632, align 4, !tbaa !57
  %cmp633 = icmp sge i32 %391, %393
  br i1 %cmp633, label %if.then.635, label %if.end.660

if.then.635:                                      ; preds = %lor.lhs.false, %do.end.621
  %394 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask636 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %394, i32 0, i32 12
  %arrayidx637 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask636, i32 0, i64 1
  %depth638 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx637, i32 0, i32 6
  %395 = load i32, i32* %depth638, align 4, !tbaa !51
  %cmp639 = icmp eq i32 %395, 0
  br i1 %cmp639, label %if.then.650, label %lor.lhs.false.641

lor.lhs.false.641:                                ; preds = %if.then.635
  %396 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask642 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %396, i32 0, i32 12
  %arrayidx643 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask642, i32 0, i64 1
  %y644 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx643, i32 0, i32 8
  %397 = load i32, i32* %y644, align 4, !tbaa !110
  %398 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask645 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %398, i32 0, i32 12
  %arrayidx646 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask645, i32 0, i64 1
  %height647 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx646, i32 0, i32 4
  %399 = load i32, i32* %height647, align 4, !tbaa !57
  %cmp648 = icmp sge i32 %397, %399
  br i1 %cmp648, label %if.then.650, label %if.end.659

if.then.650:                                      ; preds = %lor.lhs.false.641, %if.then.635
  %400 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel651 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %400, i32 0, i32 13
  %y652 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel651, i32 0, i32 8
  %401 = load i32, i32* %y652, align 4, !tbaa !46
  %402 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel653 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %402, i32 0, i32 13
  %height654 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel653, i32 0, i32 4
  %403 = load i32, i32* %height654, align 4, !tbaa !44
  %cmp655 = icmp sge i32 %401, %403
  br i1 %cmp655, label %if.then.657, label %if.end.658

if.then.657:                                      ; preds = %if.then.650
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.658:                                       ; preds = %if.then.650
  br label %if.end.659

if.end.659:                                       ; preds = %if.end.658, %lor.lhs.false.641
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.659, %lor.lhs.false
  %404 = load i32, i32* %code, align 4, !tbaa !28
  %cmp661 = icmp slt i32 %404, 0
  br i1 %cmp661, label %cond.true.663, label %cond.false.664

cond.true.663:                                    ; preds = %if.end.660
  %405 = load i32, i32* %code, align 4, !tbaa !28
  br label %cond.end.665

cond.false.664:                                   ; preds = %if.end.660
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.664, %cond.true.663
  %cond666 = phi i32 [ %405, %cond.true.663 ], [ 0, %cond.false.664 ]
  store i32 %cond666, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

cleanup.667:                                      ; preds = %cond.end.665, %if.then.657, %cleanup.550, %cleanup.471, %if.then.55
  %406 = bitcast i32* %num_chunky to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #2
  %407 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #2
  %408 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #2
  %409 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #2
  %410 = bitcast [2 x %struct.gx_image_plane_s]* %mask_plane to i8*
  call void @llvm.lifetime.end(i64 32, i8* %410) #2
  %411 = bitcast %struct.gx_image_plane_s* %pixel_plane to i8*
  call void @llvm.lifetime.end(i64 16, i8* %411) #2
  %412 = bitcast %struct.gx_image_plane_s** %pixel_planes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #2
  %413 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #2
  %414 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #2
  %415 = bitcast [2 x i32]* %mask_used to i8*
  call void @llvm.lifetime.end(i64 8, i8* %415) #2
  %416 = bitcast [2 x i32]* %mask_height to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #2
  %417 = bitcast i32* %pixel_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #2
  %418 = bitcast i32* %pixel_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #2
  %419 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #2
  %420 = load i32, i32* %retval
  ret i32 %420

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3x_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %penum = alloca %struct.gx_image3x_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %mdev0 = alloca %struct.gx_device_s*, align 8
  %ocode = alloca i32, align 4
  %mdev1 = alloca %struct.gx_device_s*, align 8
  %scode = alloca i32, align 4
  %pcdev = alloca %struct.gx_device_s*, align 8
  %pcode = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !28
  %0 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3x_enum_s*
  store %struct.gx_image3x_enum_s* %2, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %mdev0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %7, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask, i32 0, i64 0
  %mdev = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx, i32 0, i32 1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev, align 8, !tbaa !21
  store %struct.gx_device_s* %8, %struct.gx_device_s** %mdev0, align 8, !tbaa !1
  %9 = bitcast i32* %ocode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %10, i32 0, i32 12
  %arrayidx2 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask1, i32 0, i64 0
  %info3 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx2, i32 0, i32 0
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info3, align 8, !tbaa !19
  %tobool = icmp ne %struct.gx_image_enum_common_s* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %12, i32 0, i32 12
  %arrayidx5 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask4, i32 0, i64 0
  %info6 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx5, i32 0, i32 0
  %13 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info6, align 8, !tbaa !19
  %14 = load i32, i32* %draw_last.addr, align 4, !tbaa !28
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %13, i32 %14) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %ocode, align 4, !tbaa !28
  %15 = bitcast %struct.gx_device_s** %mdev1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask7 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %16, i32 0, i32 12
  %arrayidx8 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask7, i32 0, i64 1
  %mdev9 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx8, i32 0, i32 1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev9, align 8, !tbaa !21
  store %struct.gx_device_s* %17, %struct.gx_device_s** %mdev1, align 8, !tbaa !1
  %18 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask10 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %19, i32 0, i32 12
  %arrayidx11 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask10, i32 0, i64 1
  %info12 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx11, i32 0, i32 0
  %20 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info12, align 8, !tbaa !19
  %tobool13 = icmp ne %struct.gx_image_enum_common_s* %20, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %cond.end
  %21 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask15 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %21, i32 0, i32 12
  %arrayidx16 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask15, i32 0, i64 1
  %info17 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx16, i32 0, i32 0
  %22 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info17, align 8, !tbaa !19
  %23 = load i32, i32* %draw_last.addr, align 4, !tbaa !28
  %call18 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %22, i32 %23) #5
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.14
  %cond21 = phi i32 [ %call18, %cond.true.14 ], [ 0, %cond.false.19 ]
  store i32 %cond21, i32* %scode, align 4, !tbaa !28
  %24 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pcdev22 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %25, i32 0, i32 9
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev22, align 8, !tbaa !88
  store %struct.gx_device_s* %26, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %27 = bitcast i32* %pcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %28, i32 0, i32 13
  %info23 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel, i32 0, i32 0
  %29 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info23, align 8, !tbaa !23
  %30 = load i32, i32* %draw_last.addr, align 4, !tbaa !28
  %call24 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %29, i32 %30) #5
  store i32 %call24, i32* %pcode, align 4, !tbaa !28
  br label %do.body

do.body:                                          ; preds = %cond.end.20
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 39
  %32 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !73
  %tobool25 = icmp ne %struct.cmm_dev_profile_s* %32, null
  br i1 %tobool25, label %if.then, label %if.end.52

if.then:                                          ; preds = %do.body
  br label %do.body.26

do.body.26:                                       ; preds = %if.then
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.26
  br label %do.cond

do.cond:                                          ; preds = %do.body.27
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 39
  %34 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct28, align 8, !tbaa !73
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %34, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %35 = load i64, i64* %ref_count, align 8, !tbaa !74
  %add = add nsw i64 %35, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !74
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 39
  %37 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct31, align 8, !tbaa !73
  %rc32 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %37, i32 0, i32 14
  %ref_count33 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc32, i32 0, i32 0
  %38 = load i64, i64* %ref_count33, align 8, !tbaa !74
  %tobool34 = icmp ne i64 %38, 0
  br i1 %tobool34, label %if.else, label %if.then.35

if.then.35:                                       ; preds = %do.end.30
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.body.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 39
  %40 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct40, align 8, !tbaa !73
  %rc41 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %40, i32 0, i32 14
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !116
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 39
  %43 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct42, align 8, !tbaa !73
  %rc43 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %43, i32 0, i32 14
  %memory44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !117
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 39
  %46 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct45, align 8, !tbaa !73
  %47 = bitcast %struct.cmm_dev_profile_s* %46 to i8*
  call void %41(%struct.gs_memory_s* %44, i8* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.39
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct48, align 8, !tbaa !73
  br label %if.end

if.else:                                          ; preds = %do.end.30
  br label %do.body.49

do.body.49:                                       ; preds = %if.else
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end

if.end:                                           ; preds = %do.end.51, %do.end.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %do.body
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %icc_struct55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct55, align 8, !tbaa !73
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %call56 = call i32 @gs_closedevice(%struct.gx_device_s* %50) #5
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev0, align 8, !tbaa !1
  %tobool57 = icmp ne %struct.gx_device_s* %51, null
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %do.end.54
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev0, align 8, !tbaa !1
  %call59 = call i32 @gs_closedevice(%struct.gx_device_s* %52) #5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %do.end.54
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev1, align 8, !tbaa !1
  %tobool61 = icmp ne %struct.gx_device_s* %53, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev1, align 8, !tbaa !1
  %call63 = call i32 @gs_closedevice(%struct.gx_device_s* %54) #5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.60
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !93
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %58 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask65 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %58, i32 0, i32 12
  %arrayidx66 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask65, i32 0, i64 0
  %data = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx66, i32 0, i32 7
  %59 = load i8*, i8** %data, align 8, !tbaa !22
  call void %56(%struct.gs_memory_s* %57, i8* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0)) #5
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %free_object68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object68, align 8, !tbaa !93
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %63 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask69 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %63, i32 0, i32 12
  %arrayidx70 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask69, i32 0, i64 1
  %data71 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx70, i32 0, i32 7
  %64 = load i8*, i8** %data71, align 8, !tbaa !22
  call void %61(%struct.gs_memory_s* %62, i8* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object73 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs72, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object73, align 8, !tbaa !93
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %68 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel74 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %68, i32 0, i32 13
  %data75 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel74, i32 0, i32 7
  %69 = load i8*, i8** %data75, align 8, !tbaa !26
  call void %66(%struct.gs_memory_s* %67, i8* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #5
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 1
  %free_object77 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs76, i32 0, i32 2
  %71 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object77, align 8, !tbaa !93
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pcdev, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_s* %73 to i8*
  call void %71(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #5
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object79 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs78, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object79, align 8, !tbaa !93
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev0, align 8, !tbaa !1
  %79 = bitcast %struct.gx_device_s* %78 to i8*
  call void %76(%struct.gs_memory_s* %77, i8* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0)) #5
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs80 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 1
  %free_object81 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs80, i32 0, i32 2
  %81 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object81, align 8, !tbaa !93
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %mdev1, align 8, !tbaa !1
  %84 = bitcast %struct.gx_device_s* %83 to i8*
  call void %81(%struct.gs_memory_s* %82, i8* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #5
  %85 = load i32, i32* %pcode, align 4, !tbaa !28
  %cmp = icmp slt i32 %85, 0
  br i1 %cmp, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.end.64
  %86 = load i32, i32* %pcode, align 4, !tbaa !28
  br label %cond.end.89

cond.false.83:                                    ; preds = %if.end.64
  %87 = load i32, i32* %scode, align 4, !tbaa !28
  %cmp84 = icmp slt i32 %87, 0
  br i1 %cmp84, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.false.83
  %88 = load i32, i32* %scode, align 4, !tbaa !28
  br label %cond.end.87

cond.false.86:                                    ; preds = %cond.false.83
  %89 = load i32, i32* %ocode, align 4, !tbaa !28
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi i32 [ %88, %cond.true.85 ], [ %89, %cond.false.86 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.82
  %cond90 = phi i32 [ %86, %cond.true.82 ], [ %cond88, %cond.end.87 ]
  %90 = bitcast i32* %pcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct.gx_device_s** %pcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i32* %scode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast %struct.gx_device_s** %mdev1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %ocode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast %struct.gx_device_s** %mdev0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  ret i32 %cond90
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3x_flush(%struct.gx_image_enum_common_s* %info) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %penum = alloca %struct.gx_image3x_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3x_enum_s*
  store %struct.gx_image3x_enum_s* %2, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %4, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask, i32 0, i64 0
  %info1 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx, i32 0, i32 0
  %5 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info1, align 8, !tbaa !19
  %call = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %6 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %7, i32 0, i32 12
  %arrayidx3 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask2, i32 0, i64 1
  %info4 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx3, i32 0, i32 0
  %8 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info4, align 8, !tbaa !19
  %call5 = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %8) #5
  store i32 %call5, i32* %code, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !28
  %cmp6 = icmp sge i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %10, i32 0, i32 13
  %info8 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %pixel, i32 0, i32 0
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info8, align 8, !tbaa !23
  %call9 = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %11) #5
  store i32 %call9, i32* %code, align 4, !tbaa !28
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !28
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image3x_planes_wanted(%struct.gx_image_enum_common_s* %info, i8* %wanted) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %wanted.addr = alloca i8*, align 8
  %penum = alloca %struct.gx_image3x_enum_s*, align 8
  %sso = alloca i32, align 4
  %sss = alloca i32, align 4
  %mask_next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pics = alloca %struct.image3x_channel_state_s*, align 8
  %mask_next39 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8* %wanted, i8** %wanted.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image3x_enum_s*
  store %struct.gx_image3x_enum_s* %2, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %sso to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %4, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask, i32 0, i64 0
  %InterleaveType = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %InterleaveType, align 4, !tbaa !89
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %sso, align 4, !tbaa !28
  %6 = bitcast i32* %sss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask1 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %7, i32 0, i32 12
  %arrayidx2 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask1, i32 0, i64 1
  %InterleaveType3 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %arrayidx2, i32 0, i32 2
  %8 = load i32, i32* %InterleaveType3, align 4, !tbaa !89
  %cmp4 = icmp eq i32 %8, 3
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %sss, align 4, !tbaa !28
  %9 = load i32, i32* %sso, align 4, !tbaa !28
  %10 = load i32, i32* %sss, align 4, !tbaa !28
  %and = and i32 %9, %10
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.30

if.then:                                          ; preds = %entry
  %11 = bitcast i32* %mask_next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask6 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %12, i32 0, i32 12
  %arrayidx7 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask6, i32 0, i64 1
  %13 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %13, i32 0, i32 13
  %call = call i32 @channel_next(%struct.image3x_channel_state_s* %arrayidx7, %struct.image3x_channel_state_s* %pixel) #5
  store i32 %call, i32* %mask_next, align 4, !tbaa !28
  %14 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i32, i32* %mask_next, align 4, !tbaa !28
  %cmp8 = icmp sle i32 %15, 0
  %cond = select i1 %cmp8, i32 255, i32 0
  %16 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %16, i32 0, i32 6
  %17 = load i32, i32* %num_planes, align 4, !tbaa !90
  %sub = sub nsw i32 %17, 2
  %conv10 = sext i32 %sub to i64
  %call11 = call i8* @memset(i8* %add.ptr, i32 %cond, i64 %conv10) #7
  %18 = load i32, i32* %mask_next, align 4, !tbaa !28
  %cmp12 = icmp sge i32 %18, 0
  %cond14 = select i1 %cmp12, i32 255, i32 0
  %conv15 = trunc i32 %cond14 to i8
  %19 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !87
  %20 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx17, align 1, !tbaa !87
  %tobool18 = icmp ne i8 %21, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then
  %22 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask20 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %22, i32 0, i32 12
  %arrayidx21 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask20, i32 0, i64 0
  %23 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask22 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %23, i32 0, i32 12
  %arrayidx23 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask22, i32 0, i64 1
  %call24 = call i32 @channel_next(%struct.image3x_channel_state_s* %arrayidx21, %struct.image3x_channel_state_s* %arrayidx23) #5
  store i32 %call24, i32* %mask_next, align 4, !tbaa !28
  %24 = load i32, i32* %mask_next, align 4, !tbaa !28
  %cmp25 = icmp sge i32 %24, 0
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = trunc i32 %conv26 to i8
  %25 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !87
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %arrayidx29, align 1, !tbaa !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %27 = bitcast i32* %mask_next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  br label %cleanup

if.else.30:                                       ; preds = %entry
  %28 = load i32, i32* %sso, align 4, !tbaa !28
  %29 = load i32, i32* %sss, align 4, !tbaa !28
  %or = or i32 %28, %29
  %tobool31 = icmp ne i32 %or, 0
  br i1 %tobool31, label %if.then.32, label %if.else.55

if.then.32:                                       ; preds = %if.else.30
  %30 = bitcast %struct.image3x_channel_state_s** %pics to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load i32, i32* %sso, align 4, !tbaa !28
  %tobool33 = icmp ne i32 %31, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  %32 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask34 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %32, i32 0, i32 12
  %arrayidx35 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask34, i32 0, i64 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  %33 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %mask36 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %33, i32 0, i32 12
  %arrayidx37 = getelementptr inbounds [2 x %struct.image3x_channel_state_s], [2 x %struct.image3x_channel_state_s]* %mask36, i32 0, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi %struct.image3x_channel_state_s* [ %arrayidx35, %cond.true ], [ %arrayidx37, %cond.false ]
  store %struct.image3x_channel_state_s* %cond38, %struct.image3x_channel_state_s** %pics, align 8, !tbaa !1
  %34 = bitcast i32* %mask_next39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pics, align 8, !tbaa !1
  %36 = load %struct.gx_image3x_enum_s*, %struct.gx_image3x_enum_s** %penum, align 8, !tbaa !1
  %pixel40 = getelementptr inbounds %struct.gx_image3x_enum_s, %struct.gx_image3x_enum_s* %36, i32 0, i32 13
  %call41 = call i32 @channel_next(%struct.image3x_channel_state_s* %35, %struct.image3x_channel_state_s* %pixel40) #5
  store i32 %call41, i32* %mask_next39, align 4, !tbaa !28
  %37 = load i32, i32* %mask_next39, align 4, !tbaa !28
  %cmp42 = icmp sge i32 %37, 0
  %cond44 = select i1 %cmp42, i32 255, i32 0
  %conv45 = trunc i32 %cond44 to i8
  %38 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %conv45, i8* %arrayidx46, align 1, !tbaa !87
  %39 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i32, i32* %mask_next39, align 4, !tbaa !28
  %cmp48 = icmp sle i32 %40, 0
  %cond50 = select i1 %cmp48, i32 255, i32 0
  %41 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %num_planes51 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %41, i32 0, i32 6
  %42 = load i32, i32* %num_planes51, align 4, !tbaa !90
  %sub52 = sub nsw i32 %42, 1
  %conv53 = sext i32 %sub52 to i64
  %call54 = call i8* @memset(i8* %add.ptr47, i32 %cond50, i64 %conv53) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %43 = bitcast i32* %mask_next39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast %struct.image3x_channel_state_s** %pics to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  br label %cleanup

if.else.55:                                       ; preds = %if.else.30
  %45 = load i8*, i8** %wanted.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 -1, i8* %arrayidx56, align 1, !tbaa !87
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.55, %cond.end, %if.end
  %46 = bitcast i32* %sss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %sso to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_image3x_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #1

declare i32 @gx_image_flush(%struct.gx_image_enum_common_s*) #1

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #1

; Function Attrs: nounwind uwtable
define internal i32 @channel_next(%struct.image3x_channel_state_s* %pics1, %struct.image3x_channel_state_s* %pics2) #0 {
entry:
  %pics1.addr = alloca %struct.image3x_channel_state_s*, align 8
  %pics2.addr = alloca %struct.image3x_channel_state_s*, align 8
  %h1 = alloca i32, align 4
  %h2 = alloca i32, align 4
  %current = alloca i64, align 8
  store %struct.image3x_channel_state_s* %pics1, %struct.image3x_channel_state_s** %pics1.addr, align 8, !tbaa !1
  store %struct.image3x_channel_state_s* %pics2, %struct.image3x_channel_state_s** %pics2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pics1.addr, align 8, !tbaa !1
  %full_height = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %1, i32 0, i32 5
  %2 = load i32, i32* %full_height, align 4, !tbaa !108
  store i32 %2, i32* %h1, align 4, !tbaa !28
  %3 = bitcast i32* %h2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pics2.addr, align 8, !tbaa !1
  %full_height1 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %4, i32 0, i32 5
  %5 = load i32, i32* %full_height1, align 4, !tbaa !108
  store i32 %5, i32* %h2, align 4, !tbaa !28
  %6 = bitcast i64* %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pics1.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %7, i32 0, i32 8
  %8 = load i32, i32* %y, align 4, !tbaa !110
  %conv = sext i32 %8 to i64
  %9 = load i32, i32* %h2, align 4, !tbaa !28
  %conv2 = sext i32 %9 to i64
  %mul = mul nsw i64 %conv, %conv2
  %10 = load %struct.image3x_channel_state_s*, %struct.image3x_channel_state_s** %pics2.addr, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.image3x_channel_state_s, %struct.image3x_channel_state_s* %10, i32 0, i32 8
  %11 = load i32, i32* %y3, align 4, !tbaa !110
  %conv4 = sext i32 %11 to i64
  %12 = load i32, i32* %h1, align 4, !tbaa !28
  %conv5 = sext i32 %12 to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  %sub = sub nsw i64 %mul, %mul6
  store i64 %sub, i64* %current, align 8, !tbaa !118
  %13 = load i32, i32* %h1, align 4, !tbaa !28
  %conv7 = sext i32 %13 to i64
  %14 = load i64, i64* %current, align 8, !tbaa !118
  %sub8 = sub nsw i64 %14, %conv7
  store i64 %sub8, i64* %current, align 8, !tbaa !118
  %cmp = icmp sge i64 %sub8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %current, align 8, !tbaa !118
  %16 = load i32, i32* %h2, align 4, !tbaa !28
  %conv10 = sext i32 %16 to i64
  %add = add nsw i64 %15, %conv10
  %cmp11 = icmp sge i64 %add, 0
  %cond = select i1 %cmp11, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  %17 = bitcast i64* %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %h2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %h1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  ret i32 %cond13
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_image3x_extent(double %mask_coeff, double %data_coeff) #0 {
entry:
  %retval = alloca i32, align 4
  %mask_coeff.addr = alloca double, align 8
  %data_coeff.addr = alloca double, align 8
  store double %mask_coeff, double* %mask_coeff.addr, align 8, !tbaa !119
  store double %data_coeff, double* %data_coeff.addr, align 8, !tbaa !119
  %0 = load double, double* %mask_coeff.addr, align 8, !tbaa !119
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %data_coeff.addr, align 8, !tbaa !119
  %cmp1 = fcmp oeq double %1, 0.000000e+00
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %data_coeff.addr, align 8, !tbaa !119
  %cmp2 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load double, double* %mask_coeff.addr, align 8, !tbaa !119
  %cmp4 = fcmp ogt double %3, 0.000000e+00
  %conv5 = zext i1 %cmp4 to i32
  %4 = load double, double* %data_coeff.addr, align 8, !tbaa !119
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
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @make_midx_default(%struct.gx_device_s** %pmidev, %struct.gx_device_s* %dev, i32 %width, i32 %height, i32 %depth, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pmidev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %midev = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pmidev, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !28
  store i32 %height, i32* %height.addr, align 4, !tbaa !28
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !28
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %depth.addr, align 4, !tbaa !28
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %1) #5
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_memory_s** %midev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %width.addr, align 4, !tbaa !28
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %height.addr, align 4, !tbaa !28
  %conv = sext i32 %5 to i64
  %6 = load i32, i32* %width.addr, align 4, !tbaa !28
  %conv1 = sext i32 %6 to i64
  %div = udiv i64 -1, %conv1
  %cmp2 = icmp ugt i64 %conv, %div
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_device_memory_s* %7, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %11 = bitcast i8* %call10 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %11, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.gx_device_memory_s* %12, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %13, %struct.gx_device_memory_s* %14, %struct.gs_memory_s* %15, i32 0, %struct.gx_device_s* null) #5
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 46
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !120
  %18 = load i32, i32* %width.addr, align 4, !tbaa !28
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %width15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 13
  store i32 %18, i32* %width15, align 4, !tbaa !129
  %20 = load i32, i32* %height.addr, align 4, !tbaa !28
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %height16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 14
  store i32 %20, i32* %height16, align 4, !tbaa !130
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_memory_s* %22 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %23) #5
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_memory_s* %24 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %25) #5
  %26 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs17, i32 0, i32 0
  %27 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !131
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_memory_s* %28 to %struct.gx_device_s*
  %call18 = call i32 %27(%struct.gx_device_s* %29) #5
  store i32 %call18, i32* %code, align 4, !tbaa !28
  %30 = load i32, i32* %code, align 4, !tbaa !28
  %cmp19 = icmp slt i32 %30, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.14
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !93
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_memory_s* %34 to i8*
  call void %32(%struct.gs_memory_s* %33, i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  %36 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.14
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !132
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 7
  %39 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !133
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_memory_s* %40 to %struct.gx_device_s*
  %42 = load i32, i32* %width.addr, align 4, !tbaa !28
  %43 = load i32, i32* %height.addr, align 4, !tbaa !28
  %call25 = call i32 %39(%struct.gx_device_s* %41, i32 0, i32 0, i32 %42, i32 %43, i64 0) #5
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %midev, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_memory_s* %44 to %struct.gx_device_s*
  %46 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmidev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %45, %struct.gx_device_s** %46, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then.13, %if.then.8, %if.then.4
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_memory_s** %midev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @make_mcdex_default(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo, %struct.gx_device_s** %pmcdev, %struct.gx_device_s** %midev, %struct.gx_image_enum_common_s** %pminfo, %struct.gs_int_point_s* %origin, %struct.gs_image3x_s* %pim) #0 {
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
  %midev.addr = alloca %struct.gx_device_s**, align 8
  %pminfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %origin.addr = alloca %struct.gs_int_point_s*, align 8
  %pim.addr = alloca %struct.gs_image3x_s*, align 8
  %bbdev = alloca %struct.gx_device_bbox_s*, align 8
  %code = alloca i32, align 4
  %icc_struct = alloca %struct.cmm_dev_profile_s*, align 8
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
  store %struct.gx_device_s** %midev, %struct.gx_device_s*** %midev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pminfo, %struct.gx_image_enum_common_s*** %pminfo.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %origin, %struct.gs_int_point_s** %origin.addr, align 8, !tbaa !1
  store %struct.gs_image3x_s* %pim, %struct.gs_image3x_s** %pim.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bbox_s** %bbdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %4 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !61
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gx_device_s* %5, %struct.cmm_dev_profile_s** %icc_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %6 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 9
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !134
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_device_bbox, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #5
  %11 = bitcast i8* %call2 to %struct.gx_device_bbox_s*
  store %struct.gx_device_bbox_s* %11, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %12 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_device_bbox_s* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_bbox_init(%struct.gx_device_bbox_s* %13, %struct.gx_device_s* %14, %struct.gs_memory_s* %15) #5
  %16 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %icc_struct6 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %16, %struct.cmm_dev_profile_s** %icc_struct6, align 8, !tbaa !135
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %icc_struct7 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %18, i32 0, i32 39
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct7, align 8, !tbaa !135
  %tobool = icmp ne %struct.cmm_dev_profile_s* %19, null
  br i1 %tobool, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %icc_struct10 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 39
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct10, align 8, !tbaa !135
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %21, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %22 = load i64, i64* %ref_count, align 8, !tbaa !74
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !74
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13, %do.body
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  call void @gx_device_bbox_fwd_open_close(%struct.gx_device_bbox_s* %23, i32 0) #5
  %24 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %24, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs17, i32 0, i32 37
  %begin_typed_image18 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %25 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image18, align 8, !tbaa !140
  %26 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_bbox_s* %26 to %struct.gx_device_s*
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %30 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call19 = call i32 %25(%struct.gx_device_s* %27, %struct.gs_imager_state_s* %28, %struct.gs_matrix_s* %29, %struct.gs_image_common_s* %30, %struct.gs_int_rect_s* %31, %struct.gx_device_color_s* %32, %struct.gx_clip_path_s* %33, %struct.gs_memory_s* %34, %struct.gx_image_enum_common_s** %35) #5
  store i32 %call19, i32* %code, align 4, !tbaa !28
  %36 = load i32, i32* %code, align 4, !tbaa !28
  %cmp20 = icmp slt i32 %36, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.16
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !93
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_bbox_s* %40 to i8*
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #5
  %42 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %do.end.16
  %43 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_bbox_s* %43 to %struct.gx_device_s*
  %45 = load %struct.gx_device_s**, %struct.gx_device_s*** %pmcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %44, %struct.gx_device_s** %45, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then.4, %if.then
  %46 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gx_device_bbox_s** %bbdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #1

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #1

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

declare void @gx_device_bbox_init(%struct.gx_device_bbox_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #1

declare void @gx_device_bbox_fwd_open_close(%struct.gx_device_bbox_s*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_image3x_s", !2, i64 0, !7, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !10, i64 584, !10, i64 1416}
!7 = !{!"gs_matrix_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!8 = !{!"float", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gs_image3x_mask_s", !9, i64 0, !3, i64 4, !9, i64 260, !11, i64 264}
!11 = !{!"gs_data_image_s", !2, i64 0, !7, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564}
!12 = !{!10, !9, i64 0}
!13 = !{!10, !9, i64 260}
!14 = !{!10, !9, i64 304}
!15 = !{!6, !9, i64 36}
!16 = !{!17, !2, i64 72}
!17 = !{!"gs_memory_s", !2, i64 0, !18, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!18 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!19 = !{!20, !2, i64 0}
!20 = !{!"image3x_channel_state_s", !2, i64 0, !2, i64 8, !3, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !2, i64 40, !9, i64 48, !9, i64 52}
!21 = !{!20, !2, i64 8}
!22 = !{!20, !2, i64 40}
!23 = !{!24, !2, i64 696}
!24 = !{!"gx_image3x_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !25, i64 32, !9, i64 40, !9, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !9, i64 576, !9, i64 580, !3, i64 584, !20, i64 696}
!25 = !{!"long", !3, i64 0}
!26 = !{!24, !2, i64 736}
!27 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28}
!28 = !{!9, !9, i64 0}
!29 = !{!30, !9, i64 44}
!30 = !{!"image3x_channel_values_s", !7, i64 0, !31, i64 24, !33, i64 40, !35, i64 56}
!31 = !{!"gs_point_s", !32, i64 0, !32, i64 8}
!32 = !{!"double", !3, i64 0}
!33 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!34 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!35 = !{!"gs_image1_s", !2, i64 0, !7, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !9, i64 584, !9, i64 588, !3, i64 592, !3, i64 596}
!36 = !{!30, !9, i64 40}
!37 = !{!6, !9, i64 32}
!38 = !{!30, !9, i64 48}
!39 = !{!30, !9, i64 52}
!40 = !{!6, !2, i64 576}
!41 = !{!24, !9, i64 576}
!42 = !{!6, !3, i64 568}
!43 = !{!24, !9, i64 716}
!44 = !{!24, !9, i64 720}
!45 = !{!24, !9, i64 724}
!46 = !{!24, !9, i64 744}
!47 = !{!17, !2, i64 64}
!48 = !{!6, !9, i64 40}
!49 = !{!24, !9, i64 580}
!50 = !{!24, !2, i64 24}
!51 = !{!20, !9, i64 32}
!52 = !{!53, !32, i64 8}
!53 = !{!"gs_rect_s", !31, i64 0, !31, i64 16}
!54 = !{!53, !32, i64 0}
!55 = !{!20, !9, i64 20}
!56 = !{!53, !32, i64 16}
!57 = !{!20, !9, i64 24}
!58 = !{!53, !32, i64 24}
!59 = !{!34, !9, i64 0}
!60 = !{!34, !9, i64 4}
!61 = !{!62, !2, i64 1680}
!62 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !63, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !64, i64 96, !67, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !25, i64 928, !25, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !25, i64 968, !25, i64 976, !68, i64 984, !9, i64 1052, !9, i64 1056, !69, i64 1064, !2, i64 1104, !3, i64 1112, !71, i64 1120, !72, i64 1144}
!63 = !{!"rc_header_s", !25, i64 0, !2, i64 8, !2, i64 16}
!64 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !65, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !66, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !25, i64 704, !9, i64 712}
!65 = !{!"short", !3, i64 0}
!66 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!67 = !{!"gx_device_cached_colors_s", !25, i64 0, !25, i64 8}
!68 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!69 = !{!"gdev_space_params_s", !25, i64 0, !25, i64 8, !70, i64 16, !9, i64 32, !3, i64 36}
!70 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !25, i64 8}
!71 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!72 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!73 = !{!62, !2, i64 1104}
!74 = !{!75, !25, i64 200}
!75 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !2, i64 176, !9, i64 184, !2, i64 192, !63, i64 200}
!76 = !{!30, !2, i64 632}
!77 = !{!30, !9, i64 644}
!78 = !{!30, !3, i64 652}
!79 = !{!30, !2, i64 56}
!80 = !{!30, !9, i64 96}
!81 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82, i64 16, i64 4, !82, i64 20, i64 4, !82}
!82 = !{!8, !8, i64 0}
!83 = !{!7, !8, i64 16}
!84 = !{!7, !8, i64 20}
!85 = !{!62, !2, i64 1440}
!86 = !{i64 0, i64 8, !1, i64 8, i64 4, !82, i64 12, i64 4, !82, i64 16, i64 4, !82, i64 20, i64 4, !82, i64 24, i64 4, !82, i64 28, i64 4, !82, i64 32, i64 4, !28, i64 36, i64 4, !28, i64 40, i64 4, !28, i64 44, i64 520, !87, i64 564, i64 4, !28, i64 568, i64 4, !87, i64 572, i64 4, !28, i64 576, i64 8, !1}
!87 = !{!3, !3, i64 0}
!88 = !{!24, !2, i64 568}
!89 = !{!20, !3, i64 16}
!90 = !{!91, !9, i64 44}
!91 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !25, i64 32, !9, i64 40, !9, i64 44, !3, i64 48, !3, i64 308}
!92 = !{!24, !9, i64 44}
!93 = !{!17, !2, i64 24}
!94 = !{!10, !9, i64 296}
!95 = !{!10, !9, i64 300}
!96 = !{!6, !8, i64 8}
!97 = !{!10, !8, i64 272}
!98 = !{!6, !8, i64 12}
!99 = !{!10, !8, i64 276}
!100 = !{!6, !8, i64 16}
!101 = !{!10, !8, i64 280}
!102 = !{!6, !8, i64 20}
!103 = !{!10, !8, i64 284}
!104 = !{!30, !8, i64 16}
!105 = !{!30, !8, i64 20}
!106 = !{!30, !32, i64 24}
!107 = !{!30, !32, i64 32}
!108 = !{!20, !9, i64 28}
!109 = !{!20, !9, i64 52}
!110 = !{!20, !9, i64 48}
!111 = !{!112, !2, i64 0}
!112 = !{!"gx_image_plane_s", !2, i64 0, !9, i64 8, !9, i64 12}
!113 = !{i64 0, i64 8, !1, i64 8, i64 4, !28, i64 12, i64 4, !28}
!114 = !{!112, !9, i64 8}
!115 = !{!112, !9, i64 12}
!116 = !{!75, !2, i64 216}
!117 = !{!75, !2, i64 208}
!118 = !{!25, !25, i64 0}
!119 = !{!32, !32, i64 0}
!120 = !{!121, !2, i64 1752}
!121 = !{!"gx_device_memory_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !63, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !64, i64 96, !67, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !25, i64 928, !25, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !25, i64 968, !25, i64 976, !68, i64 984, !9, i64 1052, !9, i64 1056, !69, i64 1064, !2, i64 1104, !3, i64 1112, !71, i64 1120, !72, i64 1144, !2, i64 1728, !9, i64 1736, !2, i64 1744, !2, i64 1752, !9, i64 1760, !2, i64 1768, !9, i64 1776, !3, i64 1780, !7, i64 2548, !2, i64 2576, !122, i64 2584, !123, i64 2600, !124, i64 2624, !125, i64 2656, !126, i64 2680, !127, i64 2720, !128, i64 2736, !9, i64 2744, !9, i64 2748, !9, i64 2752, !9, i64 2756, !9, i64 2760, !25, i64 2768, !2, i64 2776, !9, i64 2784, !9, i64 2788}
!122 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!123 = !{!"_c24", !25, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!124 = !{!"_c40", !25, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!125 = !{!"_c48", !25, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!126 = !{!"_c56", !25, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!127 = !{!"_c64", !25, i64 0, !9, i64 8, !9, i64 12}
!128 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!129 = !{!121, !9, i64 832}
!130 = !{!121, !9, i64 836}
!131 = !{!121, !2, i64 1144}
!132 = !{!121, !9, i64 84}
!133 = !{!121, !2, i64 1200}
!134 = !{!17, !2, i64 80}
!135 = !{!136, !2, i64 1104}
!136 = !{!"gx_device_bbox_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !63, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !64, i64 96, !67, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !25, i64 928, !25, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !25, i64 968, !25, i64 976, !68, i64 984, !9, i64 1052, !9, i64 1056, !69, i64 1064, !2, i64 1104, !3, i64 1112, !71, i64 1120, !72, i64 1144, !2, i64 1728, !9, i64 1736, !9, i64 1740, !137, i64 1744, !2, i64 1776, !9, i64 1784, !138, i64 1788, !25, i64 1808, !25, i64 1816, !25, i64 1824}
!137 = !{!"gx_device_bbox_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!138 = !{!"gs_fixed_rect_s", !139, i64 0, !139, i64 8}
!139 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!140 = !{!136, !2, i64 1440}
