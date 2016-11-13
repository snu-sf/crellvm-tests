; ModuleID = './gsdevmem.bc'
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
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

@.str = private unnamed_addr constant [28 x i8] c"gs_makeimagedevice(palette)\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"gs_makeimagedevice(device)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_initialize_wordimagedevice(%struct.gx_device_memory_s* %new_dev, %struct.gs_matrix_s* %pmat, i32 %width, i32 %height, i8* %colors, i32 %colors_size, i32 %word_oriented, i32 %page_device, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %new_dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %colors.addr = alloca i8*, align 8
  %colors_size.addr = alloca i32, align 4
  %word_oriented.addr = alloca i32, align 4
  %page_device.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %proto_dev = alloca %struct.gx_device_memory_s*, align 8
  %palette_count = alloca i32, align 4
  %num_components = alloca i32, align 4
  %pcount = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %x_pixels_per_unit = alloca float, align 4
  %y_pixels_per_unit = alloca float, align 4
  %palette = alloca [768 x i8], align 16
  %has_color = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %primary_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %dev_palette = alloca i8*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  store %struct.gx_device_memory_s* %new_dev, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %colors, i8** %colors.addr, align 8, !tbaa !1
  store i32 %colors_size, i32* %colors_size.addr, align 4, !tbaa !5
  store i32 %word_oriented, i32* %word_oriented.addr, align 4, !tbaa !5
  store i32 %page_device, i32* %page_device.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %proto_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %palette_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %colors_size.addr, align 4, !tbaa !5
  store i32 %2, i32* %palette_count, align 4, !tbaa !5
  %3 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %num_components, align 4, !tbaa !5
  %4 = bitcast i32* %pcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %x_pixels_per_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast float* %y_pixels_per_unit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.start(i64 768, i8* %8) #1
  %9 = bitcast i32* %has_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %colors_size.addr, align 4, !tbaa !5
  switch i32 %10, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb.1
    i32 12, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 48, label %sw.bb.4
    i32 16, label %sw.bb.5
    i32 768, label %sw.bb.6
    i32 256, label %sw.bb.7
    i32 -16, label %sw.bb.8
    i32 -24, label %sw.bb.9
    i32 -32, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %palette_count, align 4, !tbaa !5
  store i32 3, i32* %num_components, align 4, !tbaa !5
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  store i32 1, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 4, i32* %palette_count, align 4, !tbaa !5
  store i32 3, i32* %num_components, align 4, !tbaa !5
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %sw.bb.2
  store i32 2, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 16, i32* %palette_count, align 4, !tbaa !5
  store i32 3, i32* %num_components, align 4, !tbaa !5
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb.4
  store i32 4, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 256, i32* %palette_count, align 4, !tbaa !5
  store i32 3, i32* %num_components, align 4, !tbaa !5
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %entry, %sw.bb.6
  store i32 8, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i32 16, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 0, i32* %palette_count, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i32 24, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 0, i32* %palette_count, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  store i32 32, i32* %bits_per_pixel, align 4, !tbaa !5
  store i32 0, i32* %palette_count, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1
  %11 = load i32, i32* %word_oriented.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %12 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_word_device_for_bits(i32 %12) #5
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %13 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %call11 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %13) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_memory_s* [ %call, %cond.true ], [ %call11, %cond.false ]
  store %struct.gx_device_memory_s* %cond, %struct.gx_device_memory_s** %proto_dev, align 8, !tbaa !1
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %proto_dev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end:                                           ; preds = %cond.end
  %15 = load i32, i32* %palette_count, align 4, !tbaa !5
  %mul = mul nsw i32 %15, 3
  store i32 %mul, i32* %pcount, align 4, !tbaa !5
  %16 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %16, 8
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i32* %primary_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %primary_mask, align 4, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %has_color, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  %21 = load i8*, i8** %colors.addr, align 8, !tbaa !1
  store i8* %21, i8** %p, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load i32, i32* %palette_count, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %22, %23
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 1, i32* %mask, align 4, !tbaa !5
  %25 = load i32, i32* %num_components, align 4, !tbaa !5
  switch i32 %25, label %sw.default.18 [
    i32 1, label %sw.bb.15
  ]

sw.bb.15:                                         ; preds = %for.body
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !7
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %arrayidx, align 1, !tbaa !7
  %29 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %27, i8* %arrayidx16, align 1, !tbaa !7
  %30 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %27, i8* %arrayidx17, align 1, !tbaa !7
  br label %sw.epilog.25

sw.default.18:                                    ; preds = %for.body
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %arrayidx20, align 1, !tbaa !7
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %arrayidx22, align 1, !tbaa !7
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx24, align 1, !tbaa !7
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 3
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %sw.default.18, %sw.bb.15
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %conv = zext i8 %42 to i32
  switch i32 %conv, label %sw.default.28 [
    i32 255, label %sw.bb.27
    i32 0, label %sw.epilog.29
  ]

sw.bb.27:                                         ; preds = %sw.epilog.25
  %43 = load i32, i32* %mask, align 4, !tbaa !5
  %shl = shl i32 %43, 4
  store i32 %shl, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.29

sw.default.28:                                    ; preds = %sw.epilog.25
  store i32 0, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.29

sw.epilog.29:                                     ; preds = %sw.default.28, %sw.bb.27, %sw.epilog.25
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %45 to i32
  switch i32 %conv31, label %sw.default.34 [
    i32 255, label %sw.bb.32
    i32 0, label %sw.epilog.35
  ]

sw.bb.32:                                         ; preds = %sw.epilog.29
  %46 = load i32, i32* %mask, align 4, !tbaa !5
  %shl33 = shl i32 %46, 2
  store i32 %shl33, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.35

sw.default.34:                                    ; preds = %sw.epilog.29
  store i32 0, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %sw.default.34, %sw.bb.32, %sw.epilog.29
  %47 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx36, align 1, !tbaa !7
  %conv37 = zext i8 %48 to i32
  switch i32 %conv37, label %sw.default.40 [
    i32 255, label %sw.bb.38
    i32 0, label %sw.epilog.41
  ]

sw.bb.38:                                         ; preds = %sw.epilog.35
  %49 = load i32, i32* %mask, align 4, !tbaa !5
  %shl39 = shl i32 %49, 1
  store i32 %shl39, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.41

sw.default.40:                                    ; preds = %sw.epilog.35
  store i32 0, i32* %mask, align 4, !tbaa !5
  br label %sw.epilog.41

sw.epilog.41:                                     ; preds = %sw.default.40, %sw.bb.38, %sw.epilog.35
  %50 = load i32, i32* %mask, align 4, !tbaa !5
  %51 = load i32, i32* %primary_mask, align 4, !tbaa !5
  %or = or i32 %51, %50
  store i32 %or, i32* %primary_mask, align 4, !tbaa !5
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %conv43 = zext i8 %53 to i32
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %55 to i32
  %cmp46 = icmp ne i32 %conv43, %conv45
  br i1 %cmp46, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.41
  %56 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %conv49 = zext i8 %57 to i32
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx50, align 1, !tbaa !7
  %conv51 = zext i8 %59 to i32
  %cmp52 = icmp ne i32 %conv49, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %sw.epilog.41
  store i32 1, i32* %has_color, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %lor.lhs.false
  %60 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %62, i64 3
  store i8* %add.ptr56, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* %primary_mask, align 4, !tbaa !5
  switch i32 %63, label %sw.default.61 [
    i32 129, label %sw.bb.57
    i32 255, label %sw.epilog.62
  ]

sw.bb.57:                                         ; preds = %for.end
  %64 = load i32, i32* %has_color, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %64, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.bb.57
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %sw.bb.57
  br label %sw.epilog.62

sw.default.61:                                    ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.62:                                     ; preds = %if.end.60, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.62, %sw.default.61, %if.then.59
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %primary_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.177 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.66

if.else:                                          ; preds = %if.end
  store i32 1, i32* %has_color, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %cleanup.cont
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %69, i32 0, i32 1
  %70 = load float, float* %xy, align 4, !tbaa !8
  %conv67 = fpext float %70 to double
  %cmp68 = fcmp oeq double %conv67, 0.000000e+00
  br i1 %cmp68, label %land.lhs.true, label %if.else.74

land.lhs.true:                                    ; preds = %if.end.66
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %71, i32 0, i32 2
  %72 = load float, float* %yx, align 4, !tbaa !11
  %conv70 = fpext float %72 to double
  %cmp71 = fcmp oeq double %conv70, 0.000000e+00
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true
  %73 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %73, i32 0, i32 0
  %74 = load float, float* %xx, align 4, !tbaa !12
  store float %74, float* %x_pixels_per_unit, align 4, !tbaa !13
  %75 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %75, i32 0, i32 3
  %76 = load float, float* %yy, align 4, !tbaa !14
  store float %76, float* %y_pixels_per_unit, align 4, !tbaa !13
  br label %if.end.89

if.else.74:                                       ; preds = %land.lhs.true, %if.end.66
  %77 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %77, i32 0, i32 0
  %78 = load float, float* %xx75, align 4, !tbaa !12
  %conv76 = fpext float %78 to double
  %cmp77 = fcmp oeq double %conv76, 0.000000e+00
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.87

land.lhs.true.79:                                 ; preds = %if.else.74
  %79 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy80 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %79, i32 0, i32 3
  %80 = load float, float* %yy80, align 4, !tbaa !14
  %conv81 = fpext float %80 to double
  %cmp82 = fcmp oeq double %conv81, 0.000000e+00
  br i1 %cmp82, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %land.lhs.true.79
  %81 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx85 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %81, i32 0, i32 2
  %82 = load float, float* %yx85, align 4, !tbaa !11
  store float %82, float* %x_pixels_per_unit, align 4, !tbaa !13
  %83 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy86 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %83, i32 0, i32 1
  %84 = load float, float* %xy86, align 4, !tbaa !8
  store float %84, float* %y_pixels_per_unit, align 4, !tbaa !13
  br label %if.end.88

if.else.87:                                       ; preds = %land.lhs.true.79, %if.else.74
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.88:                                        ; preds = %if.then.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.73
  %85 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %85, 1
  br i1 %cmp90, label %if.then.92, label %if.else.105

if.then.92:                                       ; preds = %if.end.89
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %proto_dev, align 8, !tbaa !1
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %89 = load i32, i32* %page_device.addr, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %89, 0
  %cond94 = select i1 %tobool93, i32 1, i32 -1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %86, %struct.gx_device_memory_s* %87, %struct.gs_memory_s* %88, i32 %cond94, %struct.gx_device_s* null) #5
  %90 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i64 0
  %91 = load i8, i8* %arrayidx95, align 1, !tbaa !7
  %conv96 = zext i8 %91 to i32
  %arrayidx97 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i64 1
  %92 = load i8, i8* %arrayidx97, align 1, !tbaa !7
  %conv98 = zext i8 %92 to i32
  %or99 = or i32 %conv96, %conv98
  %arrayidx100 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i64 2
  %93 = load i8, i8* %arrayidx100, align 1, !tbaa !7
  %conv101 = zext i8 %93 to i32
  %or102 = or i32 %or99, %conv101
  %cmp103 = icmp ne i32 %or102, 0
  %conv104 = zext i1 %cmp103 to i32
  call void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s* %90, i32 %conv104) #5
  br label %if.end.128

if.else.105:                                      ; preds = %if.end.89
  %94 = bitcast i8** %dev_palette to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %96 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !15
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %98 = load i32, i32* %pcount, align 4, !tbaa !5
  %call106 = call i8* %96(%struct.gs_memory_s* %97, i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call106, i8** %dev_palette, align 8, !tbaa !1
  %99 = load i8*, i8** %dev_palette, align 8, !tbaa !1
  %cmp107 = icmp eq i8* %99, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.else.105
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.110:                                       ; preds = %if.else.105
  %100 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %101 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %proto_dev, align 8, !tbaa !1
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %103 = load i32, i32* %page_device.addr, align 4, !tbaa !5
  %tobool111 = icmp ne i32 %103, 0
  %cond112 = select i1 %tobool111, i32 1, i32 -1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %100, %struct.gx_device_memory_s* %101, %struct.gs_memory_s* %102, i32 %cond112, %struct.gx_device_s* null) #5
  %104 = load i32, i32* %pcount, align 4, !tbaa !5
  %105 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %palette113 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %105, i32 0, i32 53
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette113, i32 0, i32 1
  store i32 %104, i32* %size, align 4, !tbaa !18
  %106 = load i8*, i8** %dev_palette, align 8, !tbaa !1
  %107 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %palette114 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %107, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette114, i32 0, i32 0
  store i8* %106, i8** %data, align 8, !tbaa !38
  %108 = load i8*, i8** %dev_palette, align 8, !tbaa !1
  %arraydecay115 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  %109 = load i32, i32* %pcount, align 4, !tbaa !5
  %conv116 = sext i32 %109 to i64
  %call117 = call i8* @memcpy(i8* %108, i8* %arraydecay115, i64 %conv116) #6
  %110 = load i32, i32* %has_color, align 4, !tbaa !5
  %tobool118 = icmp ne i32 %110, 0
  br i1 %tobool118, label %if.end.124, label %if.then.119

if.then.119:                                      ; preds = %if.end.110
  %111 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %111, i32 0, i32 11
  %num_components120 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  store i32 1, i32* %num_components120, align 4, !tbaa !39
  %112 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %color_info121 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %112, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info121, i32 0, i32 6
  store i32 0, i32* %max_color, align 4, !tbaa !40
  %113 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %color_info122 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %113, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info122, i32 0, i32 8
  store i32 0, i32* %dither_colors, align 4, !tbaa !41
  %114 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %color_info123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %114, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info123, i32 0, i32 4
  store i8 0, i8* %gray_index, align 1, !tbaa !42
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %if.end.110
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %if.then.109
  %115 = bitcast i8** %dev_palette to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %cleanup.dest.126 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.126, label %cleanup.177 [
    i32 0, label %cleanup.cont.127
  ]

cleanup.cont.127:                                 ; preds = %cleanup.125
  br label %if.end.128

if.end.128:                                       ; preds = %cleanup.cont.127, %if.then.92
  %116 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %retained = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %116, i32 0, i32 8
  store i32 1, i32* %retained, align 4, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %if.end.128
  %117 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %117, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !44
  %118 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %120 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %rc129 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %120, i32 0, i32 7
  %memory130 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc129, i32 0, i32 1
  store %struct.gs_memory_s* %119, %struct.gs_memory_s** %memory130, align 8, !tbaa !46
  %121 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %rc131 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %121, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc131, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !47
  br label %do.body.132

do.body.132:                                      ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.132
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.end
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  %122 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %122, i32 0, i32 51
  %123 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %124 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  %125 = bitcast %struct.gs_matrix_s* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 24, i32 4, i1 false), !tbaa.struct !48
  %126 = load float, float* %x_pixels_per_unit, align 4, !tbaa !13
  %conv135 = fpext float %126 to double
  %call136 = call double @fabs(double %conv135) #7
  %mul137 = fmul double %call136, 7.200000e+01
  %conv138 = fptrunc double %mul137 to float
  %127 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %127, i32 0, i32 22
  %arrayidx139 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  store float %conv138, float* %arrayidx139, align 4, !tbaa !13
  %128 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %128, i32 0, i32 23
  %arrayidx140 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  store float %conv138, float* %arrayidx140, align 4, !tbaa !13
  %129 = load float, float* %y_pixels_per_unit, align 4, !tbaa !13
  %conv141 = fpext float %129 to double
  %call142 = call double @fabs(double %conv141) #7
  %mul143 = fmul double %call142, 7.200000e+01
  %conv144 = fptrunc double %mul143 to float
  %130 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %HWResolution145 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %130, i32 0, i32 22
  %arrayidx146 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution145, i32 0, i64 1
  store float %conv144, float* %arrayidx146, align 4, !tbaa !13
  %131 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %MarginsHWResolution147 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %131, i32 0, i32 23
  %arrayidx148 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution147, i32 0, i64 1
  store float %conv144, float* %arrayidx148, align 4, !tbaa !13
  %132 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %133 = bitcast %struct.gx_device_memory_s* %132 to %struct.gx_device_s*
  %134 = load i32, i32* %width.addr, align 4, !tbaa !5
  %135 = load i32, i32* %height.addr, align 4, !tbaa !5
  call void @gx_device_set_width_height(%struct.gx_device_s* %133, i32 %134, i32 %135) #5
  %136 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %136) #1
  %p149 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p149, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !49
  %p150 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p150, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !53
  %137 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv151 = uitofp i32 %137 to double
  %q152 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x153 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q152, i32 0, i32 0
  store double %conv151, double* %x153, align 8, !tbaa !54
  %138 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv154 = uitofp i32 %138 to double
  %q155 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y156 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q155, i32 0, i32 1
  store double %conv154, double* %y156, align 8, !tbaa !55
  %139 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call157 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %bbox, %struct.gs_matrix_s* %139, %struct.gs_rect_s* %bbox) #5
  %p158 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %x159 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p158, i32 0, i32 0
  %140 = load double, double* %x159, align 8, !tbaa !49
  %conv160 = fptrunc double %140 to float
  %141 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %ImagingBBox = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %141, i32 0, i32 20
  %arrayidx161 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i64 0
  store float %conv160, float* %arrayidx161, align 4, !tbaa !13
  %p162 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 0
  %y163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p162, i32 0, i32 1
  %142 = load double, double* %y163, align 8, !tbaa !53
  %conv164 = fptrunc double %142 to float
  %143 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %ImagingBBox165 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %143, i32 0, i32 20
  %arrayidx166 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox165, i32 0, i64 1
  store float %conv164, float* %arrayidx166, align 4, !tbaa !13
  %q167 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %x168 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q167, i32 0, i32 0
  %144 = load double, double* %x168, align 8, !tbaa !54
  %conv169 = fptrunc double %144 to float
  %145 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %ImagingBBox170 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %145, i32 0, i32 20
  %arrayidx171 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox170, i32 0, i64 2
  store float %conv169, float* %arrayidx171, align 4, !tbaa !13
  %q172 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox, i32 0, i32 1
  %y173 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q172, i32 0, i32 1
  %146 = load double, double* %y173, align 8, !tbaa !55
  %conv174 = fptrunc double %146 to float
  %147 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %ImagingBBox175 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %147, i32 0, i32 20
  %arrayidx176 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox175, i32 0, i64 3
  store float %conv174, float* %arrayidx176, align 4, !tbaa !13
  %148 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %148, i32 0, i32 21
  store i32 1, i32* %ImagingBBox_set, align 4, !tbaa !56
  %149 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %149) #1
  %150 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %150, i32 0, i32 9
  store i32 0, i32* %is_open, align 4, !tbaa !57
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %152 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev.addr, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %152, i32 0, i32 46
  store %struct.gs_memory_s* %151, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %do.end.134, %cleanup.125, %if.else.87, %cleanup, %if.then, %sw.default
  %153 = bitcast i32* %has_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.end(i64 768, i8* %154) #1
  %155 = bitcast float* %y_pixels_per_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast float* %x_pixels_per_unit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %pcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %palette_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast %struct.gx_device_memory_s** %proto_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = load i32, i32* %retval
  ret i32 %162
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_device_memory_s* @gdev_mem_word_device_for_bits(i32) #2

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

declare void @gdev_mem_mono_set_inverted(%struct.gx_device_memory_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare void @gx_device_set_width_height(%struct.gx_device_s*, i32, i32) #2

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_makewordimagedevice(%struct.gx_device_s** %pnew_dev, %struct.gs_matrix_s* %pmat, i32 %width, i32 %height, i8* %colors, i32 %num_colors, i32 %word_oriented, i32 %page_device, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pnew_dev.addr = alloca %struct.gx_device_s**, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %colors.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %word_oriented.addr = alloca i32, align 4
  %page_device.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %pnew = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pnew_dev, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %colors, i8** %colors.addr, align 8, !tbaa !1
  store i32 %num_colors, i32* %num_colors.addr, align 4, !tbaa !5
  store i32 %word_oriented, i32* %word_oriented.addr, align 4, !tbaa !5
  store i32 %page_device, i32* %page_device.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_memory_s** %pnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !59
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, %struct.gs_memory_struct_type_s* @st_device_memory, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #5
  %5 = bitcast i8* %call to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %5, %struct.gx_device_memory_s** %pnew, align 8, !tbaa !1
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pnew, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pnew, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %10 = load i32, i32* %height.addr, align 4, !tbaa !5
  %11 = load i8*, i8** %colors.addr, align 8, !tbaa !1
  %12 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %13 = load i32, i32* %word_oriented.addr, align 4, !tbaa !5
  %14 = load i32, i32* %page_device.addr, align 4, !tbaa !5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_initialize_wordimagedevice(%struct.gx_device_memory_s* %7, %struct.gs_matrix_s* %8, i32 %9, i32 %10, i8* %11, i32 %12, i32 %13, i32 %14, %struct.gs_memory_s* %15) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !60
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pnew, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_memory_s* %20 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pnew, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_memory_s* %23 to %struct.gx_device_s*
  %25 = load %struct.gx_device_s**, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %24, %struct.gx_device_s** %25, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %26 = bitcast %struct.gx_device_memory_s** %pnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !10, i64 4}
!9 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!10 = !{!"float", !3, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!9, !10, i64 12}
!15 = !{!16, !2, i64 136}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!19, !6, i64 2592}
!19 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !20, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !22, i64 96, !25, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !21, i64 928, !21, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !21, i64 968, !21, i64 976, !26, i64 984, !6, i64 1052, !6, i64 1056, !27, i64 1064, !2, i64 1104, !3, i64 1112, !29, i64 1120, !30, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !9, i64 2548, !2, i64 2576, !31, i64 2584, !32, i64 2600, !33, i64 2624, !34, i64 2656, !35, i64 2680, !36, i64 2720, !37, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !21, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!20 = !{!"rc_header_s", !21, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"long", !3, i64 0}
!22 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !23, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !24, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !21, i64 704, !6, i64 712}
!23 = !{!"short", !3, i64 0}
!24 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_device_cached_colors_s", !21, i64 0, !21, i64 8}
!26 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!27 = !{!"gdev_space_params_s", !21, i64 0, !21, i64 8, !28, i64 16, !6, i64 32, !3, i64 36}
!28 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !21, i64 8}
!29 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!31 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!32 = !{!"_c24", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!33 = !{!"_c40", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!34 = !{!"_c48", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!35 = !{!"_c56", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!36 = !{!"_c64", !21, i64 0, !6, i64 8, !6, i64 12}
!37 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!38 = !{!19, !2, i64 2584}
!39 = !{!19, !6, i64 100}
!40 = !{!19, !6, i64 116}
!41 = !{!19, !6, i64 124}
!42 = !{!19, !3, i64 110}
!43 = !{!19, !6, i64 80}
!44 = !{!19, !21, i64 56}
!45 = !{!19, !2, i64 24}
!46 = !{!19, !2, i64 64}
!47 = !{!19, !2, i64 72}
!48 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13}
!49 = !{!50, !52, i64 0}
!50 = !{!"gs_rect_s", !51, i64 0, !51, i64 16}
!51 = !{!"gs_point_s", !52, i64 0, !52, i64 8}
!52 = !{!"double", !3, i64 0}
!53 = !{!50, !52, i64 8}
!54 = !{!50, !52, i64 16}
!55 = !{!50, !52, i64 24}
!56 = !{!19, !6, i64 880}
!57 = !{!19, !6, i64 84}
!58 = !{!19, !2, i64 1752}
!59 = !{!16, !2, i64 72}
!60 = !{!16, !2, i64 24}
