; ModuleID = './gximage2.bc'
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
%struct.gs_devicen_color_map_s = type opaque
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
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
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.gs_imager_state_s = type opaque
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
%struct.gs_image2_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, %struct.gs_state_s*, float, float, float, float, %struct.gx_path_s*, i32 }
%struct.image2_data_s = type { %struct.gs_point_s, %struct.gs_int_rect_s, %struct.gs_image1_s }

@st_gs_image2 = internal constant %struct.gs_memory_struct_type_s { i32 72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @image2_reloc_ptrs to i8*) }, align 8
@gs_image_type_2 = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 } { %struct.gs_memory_struct_type_s* @st_gs_image2, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_begin_image2, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)* @gx_image2_source_size, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)* @gx_image_no_sput, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)* @gx_image_no_sget, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)* @gx_image_default_release, i32 2 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"gs_image2_t\00", align 1
@image2_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_gs_image_common, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @image2_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_image_common = external constant %struct.gs_memory_struct_type_s, align 8
@image2_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 56 }], align 2
@.str.1 = private unnamed_addr constant [16 x i8] c"gx_begin_image2\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"UnpaintedPath unread\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @gx_begin_image2(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #0 {
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
  %pim = alloca %struct.gs_image2_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %sdev = alloca %struct.gx_device_s*, align 8
  %depth = alloca i32, align 4
  %pixel_copy = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %direct_copy = alloca i32, align 4
  %idata = alloca %struct.image2_data_s, align 8
  %row = alloca i8*, align 8
  %row_size = alloca i32, align 4
  %source_size = alloca i32, align 4
  %info = alloca %struct.gx_image_enum_common_s*, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %dmat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mat = alloca %struct.gs_matrix_s, align 4
  %trans_black = alloca i64, align 8
  %y193 = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %data = alloca i8*, align 8
  %offset = alloca i32, align 4
  %unread = alloca %struct.gs_int_rect_s*, align 8
  %num_unread = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image2_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image2_s*
  store %struct.gs_image2_s* %2, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %4, i32 0, i32 2
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %DataSource, align 8, !tbaa !5
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %sdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %7) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %8 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %10 = load i16, i16* %depth1, align 2, !tbaa !10
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !23
  %11 = bitcast i32* %pixel_copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %PixelCopy = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %12, i32 0, i32 8
  %13 = load i32, i32* %PixelCopy, align 4, !tbaa !24
  store i32 %13, i32* %pixel_copy, align 4, !tbaa !23
  %14 = bitcast i32* %has_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %direct_copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %direct_copy, align 4, !tbaa !23
  %16 = bitcast %struct.image2_data_s* %idata to i8*
  call void @llvm.lifetime.start(i64 632, i8* %16) #2
  %17 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %source_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast %struct.gx_image_enum_common_s** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #2
  %22 = bitcast %struct.gs_matrix_s* %dmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #2
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load i32, i32* %pixel_copy, align 4, !tbaa !23
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %26 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 11
  %28 = bitcast %struct.gx_device_color_info_s* %color_info3 to i8*
  %call4 = call i32 @memcmp(i8* %26, i8* %28, i64 720) #6
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end:                                           ; preds = %land.lhs.true, %entry
  %29 = load i32, i32* %pixel_copy, align 4, !tbaa !23
  %tobool6 = icmp ne i32 %29, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.11

land.lhs.true.7:                                  ; preds = %if.end
  %30 = load i32, i32* %depth, align 4, !tbaa !23
  %cmp8 = icmp sle i32 %30, 8
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.7
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end.11:                                        ; preds = %land.lhs.true.7, %if.end
  %image = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_imager_state_s* %31 to %struct.gs_state_s*
  %call12 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %32) #5
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %call12, i32 1) #5
  %image13 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 8
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !25
  %image14 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Decode15 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image14, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [130 x float], [130 x float]* %Decode15, i32 0, i64 6
  store float 0.000000e+00, float* %arrayidx16, align 4, !tbaa !25
  %image17 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Decode18 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image17, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [130 x float], [130 x float]* %Decode18, i32 0, i64 9
  store float 1.000000e+00, float* %arrayidx19, align 4, !tbaa !25
  %image20 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Decode21 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image20, i32 0, i32 5
  %arrayidx22 = getelementptr inbounds [130 x float], [130 x float]* %Decode21, i32 0, i64 7
  store float 1.000000e+00, float* %arrayidx22, align 4, !tbaa !25
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gs_matrix_s* %33, null
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.11
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gs_imager_state_s* %34 to %struct.gs_state_s*
  %call26 = call i32 @gs_currentmatrix(%struct.gs_state_s* %35, %struct.gs_matrix_s* %dmat) #5
  store %struct.gs_matrix_s* %dmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  br label %if.end.27

if.else:                                          ; preds = %if.end.11
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gs_matrix_s* %dmat to i8*
  %38 = bitcast %struct.gs_matrix_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 24, i32 4, i1 false), !tbaa.struct !26
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call28 = call i32 @gs_currentmatrix(%struct.gs_state_s* %39, %struct.gs_matrix_s* %smat) #5
  %40 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %call29 = call i32 @image2_set_data(%struct.gs_image2_s* %40, %struct.image2_data_s* %idata) #5
  store i32 %call29, i32* %code, align 4, !tbaa !23
  %41 = load i32, i32* %code, align 4, !tbaa !23
  %cmp30 = icmp slt i32 %41, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  %42 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end.33:                                        ; preds = %if.end.27
  %bbox = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %43 = load i32, i32* %x, align 4, !tbaa !27
  %conv34 = sitofp i32 %43 to double
  %origin = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %origin, i32 0, i32 0
  %44 = load double, double* %x35, align 8, !tbaa !34
  %call36 = call double @floor(double %44) #7
  %cmp37 = fcmp une double %conv34, %call36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.33
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end.40:                                        ; preds = %if.end.33
  %bbox41 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %p42 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox41, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p42, i32 0, i32 1
  %45 = load i32, i32* %y, align 4, !tbaa !35
  %conv43 = sitofp i32 %45 to double
  %origin44 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 0
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %origin44, i32 0, i32 1
  %46 = load double, double* %y45, align 8, !tbaa !36
  %call46 = call double @floor(double %46) #7
  %cmp47 = fcmp oeq double %conv43, %call46
  br i1 %cmp47, label %if.end.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %bbox49 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox49, i32 0, i32 1
  %y50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %47 = load i32, i32* %y50, align 4, !tbaa !37
  %conv51 = sitofp i32 %47 to double
  %origin52 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 0
  %y53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %origin52, i32 0, i32 1
  %48 = load double, double* %y53, align 8, !tbaa !36
  %call54 = call double @ceil(double %48) #7
  %cmp55 = fcmp oeq double %conv51, %call54
  br i1 %cmp55, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end.58:                                        ; preds = %lor.lhs.false, %if.end.40
  %image59 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image59, i32 0, i32 2
  %49 = load i32, i32* %Width, align 4, !tbaa !38
  %50 = load i32, i32* %depth, align 4, !tbaa !23
  %mul = mul nsw i32 %49, %50
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %source_size, align 4, !tbaa !23
  %image60 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Width61 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image60, i32 0, i32 2
  %51 = load i32, i32* %Width61, align 4, !tbaa !38
  %mul62 = mul nsw i32 3, %51
  %52 = load i32, i32* %source_size, align 4, !tbaa !23
  %cmp63 = icmp ugt i32 %mul62, %52
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %image65 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Width66 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image65, i32 0, i32 2
  %53 = load i32, i32* %Width66, align 4, !tbaa !38
  %mul67 = mul nsw i32 3, %53
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  %54 = load i32, i32* %source_size, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul67, %cond.true ], [ %54, %cond.false ]
  store i32 %cond, i32* %row_size, align 4, !tbaa !23
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %56 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !39
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %58 = load i32, i32* %row_size, align 4, !tbaa !23
  %call68 = call i8* %56(%struct.gs_memory_s* %57, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %call68, i8** %row, align 8, !tbaa !1
  %59 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp69 = icmp eq i8* %59, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %cond.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

if.end.72:                                        ; preds = %cond.end
  %60 = load i32, i32* %pixel_copy, align 4, !tbaa !23
  %tobool73 = icmp ne i32 %60, 0
  br i1 %tobool73, label %if.then.74, label %if.else.134

if.then.74:                                       ; preds = %if.end.72
  %61 = load i32, i32* %depth, align 4, !tbaa !23
  %image75 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image75, i32 0, i32 4
  store i32 %61, i32* %BitsPerComponent, align 4, !tbaa !42
  store i32 0, i32* %has_alpha, align 4, !tbaa !23
  %62 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp76 = icmp eq %struct.gx_clip_path_s* %62, null
  br i1 %cmp76, label %if.then.96, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.then.74
  %63 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %bbox79 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %p80 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox79, i32 0, i32 0
  %x81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p80, i32 0, i32 0
  %64 = load i32, i32* %x81, align 4, !tbaa !27
  %shl = shl i32 %64, 8
  %bbox82 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %p83 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox82, i32 0, i32 0
  %y84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p83, i32 0, i32 1
  %65 = load i32, i32* %y84, align 4, !tbaa !35
  %shl85 = shl i32 %65, 8
  %bbox86 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %q87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox86, i32 0, i32 1
  %x88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q87, i32 0, i32 0
  %66 = load i32, i32* %x88, align 4, !tbaa !43
  %shl89 = shl i32 %66, 8
  %bbox90 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %q91 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox90, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q91, i32 0, i32 1
  %67 = load i32, i32* %y92, align 4, !tbaa !37
  %shl93 = shl i32 %67, 8
  %call94 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %63, i32 %shl, i32 %shl85, i32 %shl89, i32 %shl93) #5
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.133

if.then.96:                                       ; preds = %lor.lhs.false.78, %if.then.74
  %68 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %68) #2
  %image97 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image97, i32 0, i32 1
  %call98 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %mat) #5
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 1
  %69 = load float, float* %xy, align 4, !tbaa !44
  %conv99 = fpext float %69 to double
  %cmp100 = fcmp oeq double %conv99, 0.000000e+00
  br i1 %cmp100, label %land.lhs.true.102, label %lor.lhs.false.106

land.lhs.true.102:                                ; preds = %if.then.96
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 2
  %70 = load float, float* %yx, align 4, !tbaa !45
  %conv103 = fpext float %70 to double
  %cmp104 = fcmp oeq double %conv103, 0.000000e+00
  br i1 %cmp104, label %land.lhs.true.114, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %land.lhs.true.102, %if.then.96
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 0
  %71 = load float, float* %xx, align 4, !tbaa !46
  %conv107 = fpext float %71 to double
  %cmp108 = fcmp oeq double %conv107, 0.000000e+00
  br i1 %cmp108, label %land.lhs.true.110, label %land.end

land.lhs.true.110:                                ; preds = %lor.lhs.false.106
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 3
  %72 = load float, float* %yy, align 4, !tbaa !47
  %conv111 = fpext float %72 to double
  %cmp112 = fcmp oeq double %conv111, 0.000000e+00
  br i1 %cmp112, label %land.lhs.true.114, label %land.end

land.lhs.true.114:                                ; preds = %land.lhs.true.110, %land.lhs.true.102
  %xx115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %73 = load float, float* %xx115, align 4, !tbaa !46
  %xx116 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 0
  %74 = load float, float* %xx116, align 4, !tbaa !46
  %cmp117 = fcmp oeq float %73, %74
  br i1 %cmp117, label %land.lhs.true.119, label %land.end

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %xy120 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %75 = load float, float* %xy120, align 4, !tbaa !44
  %xy121 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 1
  %76 = load float, float* %xy121, align 4, !tbaa !44
  %cmp122 = fcmp oeq float %75, %76
  br i1 %cmp122, label %land.lhs.true.124, label %land.end

land.lhs.true.124:                                ; preds = %land.lhs.true.119
  %yx125 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %77 = load float, float* %yx125, align 4, !tbaa !45
  %yx126 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 2
  %78 = load float, float* %yx126, align 4, !tbaa !45
  %cmp127 = fcmp oeq float %77, %78
  br i1 %cmp127, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.124
  %yy129 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %79 = load float, float* %yy129, align 4, !tbaa !47
  %yy130 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 3
  %80 = load float, float* %yy130, align 4, !tbaa !47
  %cmp131 = fcmp oeq float %79, %80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.124, %land.lhs.true.119, %land.lhs.true.114, %land.lhs.true.110, %lor.lhs.false.106
  %81 = phi i1 [ false, %land.lhs.true.124 ], [ false, %land.lhs.true.119 ], [ false, %land.lhs.true.114 ], [ false, %land.lhs.true.110 ], [ false, %lor.lhs.false.106 ], [ %cmp131, %land.rhs ]
  %land.ext = zext i1 %81 to i32
  store i32 %land.ext, i32* %direct_copy, align 4, !tbaa !23
  %82 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %82) #2
  br label %if.end.133

if.end.133:                                       ; preds = %land.end, %lor.lhs.false.78
  br label %if.end.152

if.else.134:                                      ; preds = %if.end.72
  %image135 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %BitsPerComponent136 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image135, i32 0, i32 4
  store i32 8, i32* %BitsPerComponent136, align 4, !tbaa !42
  %83 = bitcast i64* %trans_black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %procs137 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs137, i32 0, i32 18
  %85 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !48
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %call138 = call i64 %85(%struct.gx_device_s* %86, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0) #5
  store i64 %call138, i64* %trans_black, align 8, !tbaa !49
  %87 = load i64, i64* %trans_black, align 8, !tbaa !49
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %procs139 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 42
  %map_rgb_alpha_color140 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs139, i32 0, i32 18
  %89 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color140, align 8, !tbaa !48
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %call141 = call i64 %89(%struct.gx_device_s* %90, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext -1) #5
  %cmp142 = icmp ne i64 %87, %call141
  br i1 %cmp142, label %land.rhs.144, label %land.end.150

land.rhs.144:                                     ; preds = %if.else.134
  %91 = load i64, i64* %trans_black, align 8, !tbaa !49
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %procs145 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 42
  %map_rgb_alpha_color146 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs145, i32 0, i32 18
  %93 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color146, align 8, !tbaa !48
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %call147 = call i64 %93(%struct.gx_device_s* %94, i16 zeroext -1, i16 zeroext -1, i16 zeroext -1, i16 zeroext -1) #5
  %cmp148 = icmp ne i64 %91, %call147
  br label %land.end.150

land.end.150:                                     ; preds = %land.rhs.144, %if.else.134
  %95 = phi i1 [ false, %if.else.134 ], [ %cmp148, %land.rhs.144 ]
  %land.ext151 = zext i1 %95 to i32
  store i32 %land.ext151, i32* %has_alpha, align 4, !tbaa !23
  %96 = bitcast i64* %trans_black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  br label %if.end.152

if.end.152:                                       ; preds = %land.end.150, %if.end.133
  %97 = load i32, i32* %has_alpha, align 4, !tbaa !23
  %tobool153 = icmp ne i32 %97, 0
  %cond154 = select i1 %tobool153, i32 2, i32 0
  %image155 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image155, i32 0, i32 12
  store i32 %cond154, i32* %Alpha, align 4, !tbaa !50
  %yy156 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 3
  %98 = load float, float* %yy156, align 4, !tbaa !47
  %cmp157 = fcmp olt float %98, 0.000000e+00
  br i1 %cmp157, label %if.then.159, label %if.end.182

if.then.159:                                      ; preds = %if.end.152
  %image160 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image160, i32 0, i32 3
  %99 = load i32, i32* %Height, align 4, !tbaa !51
  %conv161 = sitofp i32 %99 to float
  %image162 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix163 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image162, i32 0, i32 1
  %yy164 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix163, i32 0, i32 3
  %100 = load float, float* %yy164, align 4, !tbaa !52
  %mul165 = fmul float %conv161, %100
  %image166 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix167 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image166, i32 0, i32 1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix167, i32 0, i32 5
  %101 = load float, float* %ty, align 4, !tbaa !53
  %add168 = fadd float %101, %mul165
  store float %add168, float* %ty, align 4, !tbaa !53
  %image169 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix170 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image169, i32 0, i32 1
  %xy171 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix170, i32 0, i32 1
  %102 = load float, float* %xy171, align 4, !tbaa !54
  %sub = fsub float -0.000000e+00, %102
  %image172 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix173 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image172, i32 0, i32 1
  %xy174 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix173, i32 0, i32 1
  store float %sub, float* %xy174, align 4, !tbaa !54
  %image175 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix176 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image175, i32 0, i32 1
  %yy177 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix176, i32 0, i32 3
  %103 = load float, float* %yy177, align 4, !tbaa !52
  %sub178 = fsub float -0.000000e+00, %103
  %image179 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix180 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image179, i32 0, i32 1
  %yy181 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix180, i32 0, i32 3
  store float %sub178, float* %yy181, align 4, !tbaa !52
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.159, %if.end.152
  %104 = load i32, i32* %direct_copy, align 4, !tbaa !23
  %tobool183 = icmp ne i32 %104, 0
  br i1 %tobool183, label %if.end.189, label %if.then.184

if.then.184:                                      ; preds = %if.end.182
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs185 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs185, i32 0, i32 37
  %begin_typed_image186 = bitcast {}** %begin_typed_image to i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)**
  %106 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image186, align 8, !tbaa !55
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %108 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %109 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %image187 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %110 = bitcast %struct.gs_image1_s* %image187 to %struct.gs_image_common_s*
  %111 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %112 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call188 = call i32 %106(%struct.gx_device_s* %107, %struct.gs_imager_state_s* %108, %struct.gs_matrix_s* %109, %struct.gs_image_common_s* %110, %struct.gs_int_rect_s* null, %struct.gx_device_color_s* %111, %struct.gx_clip_path_s* %112, %struct.gs_memory_s* %113, %struct.gx_image_enum_common_s** %info) #5
  store i32 %call188, i32* %code, align 4, !tbaa !23
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.184, %if.end.182
  %114 = load i32, i32* %code, align 4, !tbaa !23
  %cmp190 = icmp sge i32 %114, 0
  br i1 %cmp190, label %if.then.192, label %if.end.325

if.then.192:                                      ; preds = %if.end.189
  %115 = bitcast i32* %y193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #2
  %116 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %116) #2
  %117 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %117) #2
  %118 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #2
  %119 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #2
  %120 = load i32, i32* %row_size, align 4, !tbaa !23
  %121 = load i32, i32* %source_size, align 4, !tbaa !23
  %sub194 = sub i32 %120, %121
  store i32 %sub194, i32* %offset, align 4, !tbaa !23
  %bbox195 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 1
  %122 = bitcast %struct.gs_int_rect_s* %rect to i8*
  %123 = bitcast %struct.gs_int_rect_s* %bbox195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 16, i32 4, i1 false), !tbaa.struct !56
  store i32 0, i32* %y193, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.312, %if.then.192
  %124 = load i32, i32* %code, align 4, !tbaa !23
  %cmp196 = icmp sge i32 %124, 0
  br i1 %cmp196, label %land.rhs.198, label %land.end.203

land.rhs.198:                                     ; preds = %for.cond
  %125 = load i32, i32* %y193, align 4, !tbaa !23
  %image199 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Height200 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image199, i32 0, i32 3
  %126 = load i32, i32* %Height200, align 4, !tbaa !51
  %cmp201 = icmp slt i32 %125, %126
  br label %land.end.203

land.end.203:                                     ; preds = %land.rhs.198, %for.cond
  %127 = phi i1 [ false, %for.cond ], [ %cmp201, %land.rhs.198 ]
  br i1 %127, label %for.body, label %for.end.314

for.body:                                         ; preds = %land.end.203
  %128 = bitcast %struct.gs_int_rect_s** %unread to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #2
  store %struct.gs_int_rect_s* null, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %129 = bitcast i32* %num_unread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #2
  %p205 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y206 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p205, i32 0, i32 1
  %130 = load i32, i32* %y206, align 4, !tbaa !57
  %add207 = add nsw i32 %130, 1
  %q208 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y209 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q208, i32 0, i32 1
  store i32 %add207, i32* %y209, align 4, !tbaa !58
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 1370554368, i64* %options, align 8, !tbaa !59
  %131 = load i32, i32* %pixel_copy, align 4, !tbaa !23
  %tobool210 = icmp ne i32 %131, 0
  br i1 %tobool210, label %if.then.211, label %if.else.250

if.then.211:                                      ; preds = %for.body
  %options212 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %132 = load i64, i64* %options212, align 8, !tbaa !59
  %or = or i64 %132, 1
  store i64 %or, i64* %options212, align 8, !tbaa !59
  %133 = load i8*, i8** %row, align 8, !tbaa !1
  %134 = load i32, i32* %offset, align 4, !tbaa !23
  %idx.ext = zext i32 %134 to i64
  %add.ptr = getelementptr inbounds i8, i8* %133, i64 %idx.ext
  %data213 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data213, i32 0, i64 0
  store i8* %add.ptr, i8** %arrayidx214, align 8, !tbaa !1
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %procs215 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %135, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs215, i32 0, i32 38
  %136 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !61
  %137 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %call216 = call i32 %136(%struct.gx_device_s* %137, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #5
  store i32 %call216, i32* %code, align 4, !tbaa !23
  %138 = load i32, i32* %code, align 4, !tbaa !23
  %cmp217 = icmp slt i32 %138, 0
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.211
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.220:                                       ; preds = %if.then.211
  %139 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %139, i32* %num_unread, align 4, !tbaa !23
  %data221 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data221, i32 0, i64 0
  %140 = load i8*, i8** %arrayidx222, align 8, !tbaa !1
  store i8* %140, i8** %data, align 8, !tbaa !1
  %141 = load i32, i32* %direct_copy, align 4, !tbaa !23
  %tobool223 = icmp ne i32 %141, 0
  br i1 %tobool223, label %if.then.224, label %if.end.249

if.then.224:                                      ; preds = %if.end.220
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs225 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs225, i32 0, i32 10
  %143 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !62
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %145 = load i8*, i8** %data, align 8, !tbaa !1
  %146 = load i32, i32* %row_size, align 4, !tbaa !23
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 4
  %147 = load float, float* %tx, align 4, !tbaa !63
  %image226 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix227 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image226, i32 0, i32 1
  %tx228 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix227, i32 0, i32 4
  %148 = load float, float* %tx228, align 4, !tbaa !64
  %sub229 = fsub float %147, %148
  %conv230 = fptosi float %sub229 to i32
  %ty231 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 5
  %149 = load float, float* %ty231, align 4, !tbaa !65
  %image232 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %ImageMatrix233 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image232, i32 0, i32 1
  %ty234 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix233, i32 0, i32 5
  %150 = load float, float* %ty234, align 4, !tbaa !53
  %sub235 = fsub float %149, %150
  %yy236 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 3
  %151 = load float, float* %yy236, align 4, !tbaa !47
  %cmp237 = fcmp olt float %151, 0.000000e+00
  br i1 %cmp237, label %cond.true.239, label %cond.false.240

cond.true.239:                                    ; preds = %if.then.224
  %152 = load i32, i32* %y193, align 4, !tbaa !23
  %neg = xor i32 %152, -1
  br label %cond.end.241

cond.false.240:                                   ; preds = %if.then.224
  %153 = load i32, i32* %y193, align 4, !tbaa !23
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.true.239
  %cond242 = phi i32 [ %neg, %cond.true.239 ], [ %153, %cond.false.240 ]
  %conv243 = sitofp i32 %cond242 to float
  %add244 = fadd float %sub235, %conv243
  %conv245 = fptosi float %add244 to i32
  %image246 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Width247 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image246, i32 0, i32 2
  %154 = load i32, i32* %Width247, align 4, !tbaa !38
  %call248 = call i32 %143(%struct.gx_device_s* %144, i8* %145, i32 0, i32 %146, i64 0, i32 %conv230, i32 %conv245, i32 %154, i32 1) #5
  store i32 %call248, i32* %code, align 4, !tbaa !23
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.249:                                       ; preds = %if.end.220
  br label %if.end.267

if.else.250:                                      ; preds = %for.body
  %155 = load i32, i32* %has_alpha, align 4, !tbaa !23
  %tobool251 = icmp ne i32 %155, 0
  %cond252 = select i1 %tobool251, i64 64, i64 16
  %or253 = or i64 2052, %cond252
  %options254 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  %156 = load i64, i64* %options254, align 8, !tbaa !59
  %or255 = or i64 %156, %or253
  store i64 %or255, i64* %options254, align 8, !tbaa !59
  %157 = load i8*, i8** %row, align 8, !tbaa !1
  %data256 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data256, i32 0, i64 0
  store i8* %157, i8** %arrayidx257, align 8, !tbaa !1
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %procs258 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %158, i32 0, i32 42
  %get_bits_rectangle259 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs258, i32 0, i32 38
  %159 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle259, align 8, !tbaa !61
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !1
  %call260 = call i32 %159(%struct.gx_device_s* %160, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #5
  store i32 %call260, i32* %code, align 4, !tbaa !23
  %161 = load i32, i32* %code, align 4, !tbaa !23
  %cmp261 = icmp slt i32 %161, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.else.250
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.264:                                       ; preds = %if.else.250
  %162 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %162, i32* %num_unread, align 4, !tbaa !23
  %data265 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data265, i32 0, i64 0
  %163 = load i8*, i8** %arrayidx266, align 8, !tbaa !1
  store i8* %163, i8** %data, align 8, !tbaa !1
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.264, %if.end.249
  %164 = load i32, i32* %num_unread, align 4, !tbaa !23
  %cmp268 = icmp sgt i32 %164, 0
  br i1 %cmp268, label %land.lhs.true.270, label %if.end.305

land.lhs.true.270:                                ; preds = %if.end.267
  %165 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %UnpaintedPath = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %165, i32 0, i32 7
  %166 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath, align 8, !tbaa !66
  %tobool271 = icmp ne %struct.gx_path_s* %166, null
  br i1 %tobool271, label %if.then.272, label %if.end.305

if.then.272:                                      ; preds = %land.lhs.true.270
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #2
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc, %if.then.272
  %168 = load i32, i32* %code, align 4, !tbaa !23
  %cmp274 = icmp sge i32 %168, 0
  br i1 %cmp274, label %land.rhs.276, label %land.end.279

land.rhs.276:                                     ; preds = %for.cond.273
  %169 = load i32, i32* %i, align 4, !tbaa !23
  %170 = load i32, i32* %num_unread, align 4, !tbaa !23
  %cmp277 = icmp slt i32 %169, %170
  br label %land.end.279

land.end.279:                                     ; preds = %land.rhs.276, %for.cond.273
  %171 = phi i1 [ false, %for.cond.273 ], [ %cmp277, %land.rhs.276 ]
  br i1 %171, label %for.body.281, label %for.end

for.body.281:                                     ; preds = %land.end.279
  %172 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !1
  %UnpaintedPath282 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %172, i32 0, i32 7
  %173 = load %struct.gx_path_s*, %struct.gx_path_s** %UnpaintedPath282, align 8, !tbaa !66
  %174 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %174 to i64
  %175 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %175, i64 %idxprom
  %p284 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx283, i32 0, i32 0
  %x285 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p284, i32 0, i32 0
  %176 = load i32, i32* %x285, align 4, !tbaa !67
  %shl286 = shl i32 %176, 8
  %177 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom287 = sext i32 %177 to i64
  %178 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %178, i64 %idxprom287
  %p289 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx288, i32 0, i32 0
  %y290 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p289, i32 0, i32 1
  %179 = load i32, i32* %y290, align 4, !tbaa !57
  %shl291 = shl i32 %179, 8
  %180 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom292 = sext i32 %180 to i64
  %181 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %181, i64 %idxprom292
  %q294 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx293, i32 0, i32 1
  %x295 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q294, i32 0, i32 0
  %182 = load i32, i32* %x295, align 4, !tbaa !68
  %shl296 = shl i32 %182, 8
  %183 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom297 = sext i32 %183 to i64
  %184 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %184, i64 %idxprom297
  %q299 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx298, i32 0, i32 1
  %y300 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q299, i32 0, i32 1
  %185 = load i32, i32* %y300, align 4, !tbaa !58
  %shl301 = shl i32 %185, 8
  %call302 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* %173, i32 %shl286, i32 %shl291, i32 %shl296, i32 %shl301) #5
  store i32 %call302, i32* %code, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body.281
  %186 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %186, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond.273

for.end:                                          ; preds = %land.end.279
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %187, i32 0, i32 3
  %188 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %procs303 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %188, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs303, i32 0, i32 2
  %189 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !70
  %190 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory304 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %190, i32 0, i32 3
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory304, align 8, !tbaa !69
  %192 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %unread, align 8, !tbaa !1
  %193 = bitcast %struct.gs_int_rect_s* %192 to i8*
  call void %189(%struct.gs_memory_s* %191, i8* %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5
  %194 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  br label %if.end.305

if.end.305:                                       ; preds = %for.end, %land.lhs.true.270, %if.end.267
  %195 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !1
  %196 = load i32, i32* %row_size, align 4, !tbaa !23
  %call306 = call i32 @gx_image_data(%struct.gx_image_enum_common_s* %195, i8** %data, i32 0, i32 %196, i32 1) #5
  store i32 %call306, i32* %code, align 4, !tbaa !23
  %q307 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y308 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q307, i32 0, i32 1
  %197 = load i32, i32* %y308, align 4, !tbaa !58
  %p309 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y310 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p309, i32 0, i32 1
  store i32 %197, i32* %y310, align 4, !tbaa !57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.305, %if.then.263, %cond.end.241, %if.then.219
  %198 = bitcast i32* %num_unread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  %199 = bitcast %struct.gs_int_rect_s** %unread to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.314
    i32 4, label %for.inc.312
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.312

for.inc.312:                                      ; preds = %cleanup.cont, %cleanup
  %200 = load i32, i32* %y193, align 4, !tbaa !23
  %inc313 = add nsw i32 %200, 1
  store i32 %inc313, i32* %y193, align 4, !tbaa !23
  br label %for.cond

for.end.314:                                      ; preds = %cleanup, %land.end.203
  %201 = load i32, i32* %direct_copy, align 4, !tbaa !23
  %tobool315 = icmp ne i32 %201, 0
  br i1 %tobool315, label %if.end.324, label %if.then.316

if.then.316:                                      ; preds = %for.end.314
  %202 = load i32, i32* %code, align 4, !tbaa !23
  %cmp317 = icmp sge i32 %202, 0
  br i1 %cmp317, label %if.then.319, label %if.else.321

if.then.319:                                      ; preds = %if.then.316
  %203 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !1
  %call320 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %203, i32 1) #5
  store i32 %call320, i32* %code, align 4, !tbaa !23
  br label %if.end.323

if.else.321:                                      ; preds = %if.then.316
  %204 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info, align 8, !tbaa !1
  %call322 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %204, i32 0) #5
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.321, %if.then.319
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %for.end.314
  %205 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #2
  %206 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #2
  %207 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %207) #2
  %208 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %208) #2
  %209 = bitcast i32* %y193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.189
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs326 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %210, i32 0, i32 1
  %free_object327 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs326, i32 0, i32 2
  %211 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object327, align 8, !tbaa !70
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %213 = load i8*, i8** %row, align 8, !tbaa !1
  call void %211(%struct.gs_memory_s* %212, i8* %213, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  %214 = load i32, i32* %code, align 4, !tbaa !23
  %cmp328 = icmp slt i32 %214, 0
  br i1 %cmp328, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %if.end.325
  %215 = load i32, i32* %code, align 4, !tbaa !23
  br label %cond.end.332

cond.false.331:                                   ; preds = %if.end.325
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.331, %cond.true.330
  %cond333 = phi i32 [ %215, %cond.true.330 ], [ 1, %cond.false.331 ]
  store i32 %cond333, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

cleanup.334:                                      ; preds = %cond.end.332, %if.then.71, %if.then.57, %if.then.39, %if.then.32, %if.then.10, %if.then
  %216 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #2
  %217 = bitcast %struct.gs_matrix_s* %dmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %217) #2
  %218 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %218) #2
  %219 = bitcast %struct.gx_image_enum_common_s** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  %220 = bitcast i32* %source_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %221 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast %struct.image2_data_s* %idata to i8*
  call void @llvm.lifetime.end(i64 632, i8* %223) #2
  %224 = bitcast i32* %direct_copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i32* %has_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  %226 = bitcast i32* %pixel_copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast %struct.gx_device_s** %sdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
  %230 = bitcast %struct.gs_image2_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = load i32, i32* %retval
  ret i32 %231

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_image2_source_size(%struct.gs_imager_state_s* %pis, %struct.gs_image_common_s* %pim, %struct.gs_int_point_s* %psize) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image_common_s*, align 8
  %psize.addr = alloca %struct.gs_int_point_s*, align 8
  %idata = alloca %struct.image2_data_s, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pim, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %psize, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %0 = bitcast %struct.image2_data_s* %idata to i8*
  call void @llvm.lifetime.start(i64 632, i8* %0) #2
  %1 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_image_common_s* %1 to %struct.gs_image2_s*
  %call = call i32 @image2_set_data(%struct.gs_image2_s* %2, %struct.image2_data_s* %idata) #5
  %image = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %3 = load i32, i32* %Width, align 4, !tbaa !38
  %4 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %4, i32 0, i32 0
  store i32 %3, i32* %x, align 4, !tbaa !71
  %image1 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %idata, i32 0, i32 2
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image1, i32 0, i32 3
  %5 = load i32, i32* %Height, align 4, !tbaa !51
  %6 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %psize.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %6, i32 0, i32 1
  store i32 %5, i32* %y, align 4, !tbaa !72
  %7 = bitcast %struct.image2_data_s* %idata to i8*
  call void @llvm.lifetime.end(i64 632, i8* %7) #2
  ret i32 0
}

declare i32 @gx_image_no_sput(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**) #1

declare i32 @gx_image_no_sget(%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*) #1

declare void @gx_image_default_release(%struct.gs_image_common_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define void @gs_image2_t_init(%struct.gs_image2_s* %pim) #0 {
entry:
  %pim.addr = alloca %struct.gs_image2_s*, align 8
  store %struct.gs_image2_s* %pim, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %0 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %0, i32 0, i32 0
  store %struct.gx_image_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }* @gs_image_type_2 to %struct.gx_image_type_s*), %struct.gx_image_type_s** %type, align 8, !tbaa !73
  %1 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %UnpaintedPath = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %1, i32 0, i32 7
  store %struct.gx_path_s* null, %struct.gx_path_s** %UnpaintedPath, align 8, !tbaa !66
  %2 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %PixelCopy = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %2, i32 0, i32 8
  store i32 0, i32* %PixelCopy, align 4, !tbaa !24
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @image2_set_data(%struct.gs_image2_s* %pim, %struct.image2_data_s* %pid) #0 {
entry:
  %pim.addr = alloca %struct.gs_image2_s*, align 8
  %pid.addr = alloca %struct.image2_data_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %sbox = alloca %struct.gs_rect_s, align 8
  %dbox = alloca %struct.gs_rect_s, align 8
  store %struct.gs_image2_s* %pim, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  store %struct.image2_data_s* %pid, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %1, i32 0, i32 2
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %DataSource, align 8, !tbaa !5
  store %struct.gs_state_s* %2, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #2
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %7 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %XOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %7, i32 0, i32 3
  %8 = load float, float* %XOrigin, align 4, !tbaa !74
  %conv = fpext float %8 to double
  %9 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %YOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %9, i32 0, i32 4
  %10 = load float, float* %YOrigin, align 4, !tbaa !75
  %conv1 = fpext float %10 to double
  %11 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %11, i32 0, i32 0
  %call = call i32 @gs_transform(%struct.gs_state_s* %6, double %conv, double %conv1, %struct.gs_point_s* %origin) #5
  %12 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %XOrigin2 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %12, i32 0, i32 3
  %13 = load float, float* %XOrigin2, align 4, !tbaa !74
  %conv3 = fpext float %13 to double
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv3, double* %x, align 8, !tbaa !76
  %14 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %14, i32 0, i32 5
  %15 = load float, float* %Width, align 4, !tbaa !78
  %conv4 = fpext float %15 to double
  %add = fadd double %conv3, %conv4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %add, double* %x5, align 8, !tbaa !79
  %16 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %YOrigin6 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %16, i32 0, i32 4
  %17 = load float, float* %YOrigin6, align 4, !tbaa !75
  %conv7 = fpext float %17 to double
  %p8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p8, i32 0, i32 1
  store double %conv7, double* %y, align 8, !tbaa !80
  %18 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %18, i32 0, i32 6
  %19 = load float, float* %Height, align 4, !tbaa !81
  %conv9 = fpext float %19 to double
  %add10 = fadd double %conv7, %conv9
  %q11 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %sbox, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q11, i32 0, i32 1
  store double %add10, double* %y12, align 8, !tbaa !82
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call13 = call i32 @gs_currentmatrix(%struct.gs_state_s* %20, %struct.gs_matrix_s* %smat) #5
  %call14 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %sbox, %struct.gs_matrix_s* %smat, %struct.gs_rect_s* %dbox) #5
  %p15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p15, i32 0, i32 0
  %21 = load double, double* %x16, align 8, !tbaa !76
  %call17 = call double @floor(double %21) #7
  %conv18 = fptosi double %call17 to i32
  %22 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %22, i32 0, i32 1
  %p19 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p19, i32 0, i32 0
  store i32 %conv18, i32* %x20, align 4, !tbaa !27
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 1
  %23 = load double, double* %y22, align 8, !tbaa !80
  %call23 = call double @floor(double %23) #7
  %conv24 = fptosi double %call23 to i32
  %24 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox25 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %24, i32 0, i32 1
  %p26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox25, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p26, i32 0, i32 1
  store i32 %conv24, i32* %y27, align 4, !tbaa !35
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 0
  %25 = load double, double* %x29, align 8, !tbaa !79
  %call30 = call double @ceil(double %25) #7
  %conv31 = fptosi double %call30 to i32
  %26 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox32 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %26, i32 0, i32 1
  %q33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox32, i32 0, i32 1
  %x34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q33, i32 0, i32 0
  store i32 %conv31, i32* %x34, align 4, !tbaa !43
  %q35 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q35, i32 0, i32 1
  %27 = load double, double* %y36, align 8, !tbaa !82
  %call37 = call double @ceil(double %27) #7
  %conv38 = fptosi double %call37 to i32
  %28 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox39 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %28, i32 0, i32 1
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox39, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  store i32 %conv38, i32* %y41, align 4, !tbaa !37
  %29 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox42 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %29, i32 0, i32 1
  %q43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox42, i32 0, i32 1
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q43, i32 0, i32 0
  %30 = load i32, i32* %x44, align 4, !tbaa !43
  %31 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox45 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %31, i32 0, i32 1
  %p46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox45, i32 0, i32 0
  %x47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p46, i32 0, i32 0
  %32 = load i32, i32* %x47, align 4, !tbaa !27
  %sub = sub nsw i32 %30, %32
  %33 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %33, i32 0, i32 2
  %Width48 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  store i32 %sub, i32* %Width48, align 4, !tbaa !38
  %34 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox49 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %34, i32 0, i32 1
  %q50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox49, i32 0, i32 1
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q50, i32 0, i32 1
  %35 = load i32, i32* %y51, align 4, !tbaa !37
  %36 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %bbox52 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %36, i32 0, i32 1
  %p53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox52, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p53, i32 0, i32 1
  %37 = load i32, i32* %y54, align 4, !tbaa !35
  %sub55 = sub nsw i32 %35, %37
  %38 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %image56 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %38, i32 0, i32 2
  %Height57 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image56, i32 0, i32 3
  store i32 %sub55, i32* %Height57, align 4, !tbaa !51
  %39 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %image58 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %39, i32 0, i32 2
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image58, i32 0, i32 1
  %40 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix59 = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %40, i32 0, i32 1
  %41 = bitcast %struct.gs_matrix_s* %ImageMatrix to i8*
  %42 = bitcast %struct.gs_matrix_s* %ImageMatrix59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 24, i32 4, i1 false), !tbaa.struct !26
  %43 = load %struct.image2_data_s*, %struct.image2_data_s** %pid.addr, align 8, !tbaa !1
  %image60 = getelementptr inbounds %struct.image2_data_s, %struct.image2_data_s* %43, i32 0, i32 2
  %image_parent_type = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image60, i32 0, i32 13
  store i32 1, i32* %image_parent_type, align 4, !tbaa !83
  %44 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %44) #2
  %45 = bitcast %struct.gs_rect_s* %sbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %45) #2
  %46 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %46) #2
  %47 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gs_transform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #1

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #1

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_path_add_rectangle(%struct.gx_path_s*, i32, i32, i32, i32) #1

declare i32 @gx_image_data(%struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 32}
!6 = !{!"gs_image2_s", !2, i64 0, !7, i64 8, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !2, i64 56, !9, i64 64}
!7 = !{!"gs_matrix_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!8 = !{!"float", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !15, i64 108}
!11 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !12, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !14, i64 96, !17, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !9, i64 1052, !9, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !9, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !9, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!9, !9, i64 0}
!24 = !{!6, !9, i64 64}
!25 = !{!8, !8, i64 0}
!26 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 4, !25, i64 20, i64 4, !25}
!27 = !{!28, !9, i64 16}
!28 = !{!"image2_data_s", !29, i64 0, !31, i64 16, !33, i64 32}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !3, i64 0}
!31 = !{!"gs_int_rect_s", !32, i64 0, !32, i64 8}
!32 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!33 = !{!"gs_image1_s", !2, i64 0, !7, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !9, i64 584, !9, i64 588, !3, i64 592, !3, i64 596}
!34 = !{!28, !30, i64 0}
!35 = !{!28, !9, i64 20}
!36 = !{!28, !30, i64 8}
!37 = !{!28, !9, i64 28}
!38 = !{!28, !9, i64 64}
!39 = !{!40, !2, i64 64}
!40 = !{!"gs_memory_s", !2, i64 0, !41, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!42 = !{!28, !9, i64 72}
!43 = !{!28, !9, i64 24}
!44 = !{!7, !8, i64 4}
!45 = !{!7, !8, i64 8}
!46 = !{!7, !8, i64 0}
!47 = !{!7, !8, i64 12}
!48 = !{!11, !2, i64 1288}
!49 = !{!13, !13, i64 0}
!50 = !{!28, !3, i64 624}
!51 = !{!28, !9, i64 68}
!52 = !{!28, !8, i64 52}
!53 = !{!28, !8, i64 60}
!54 = !{!28, !8, i64 44}
!55 = !{!11, !2, i64 1440}
!56 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23}
!57 = !{!31, !9, i64 4}
!58 = !{!31, !9, i64 12}
!59 = !{!60, !13, i64 0}
!60 = !{!"gs_get_bits_params_s", !13, i64 0, !3, i64 8, !9, i64 520, !9, i64 524, !9, i64 528}
!61 = !{!11, !2, i64 1448}
!62 = !{!11, !2, i64 1224}
!63 = !{!7, !8, i64 16}
!64 = !{!28, !8, i64 56}
!65 = !{!7, !8, i64 20}
!66 = !{!6, !2, i64 56}
!67 = !{!31, !9, i64 0}
!68 = !{!31, !9, i64 8}
!69 = !{!11, !2, i64 24}
!70 = !{!40, !2, i64 24}
!71 = !{!32, !9, i64 0}
!72 = !{!32, !9, i64 4}
!73 = !{!6, !2, i64 0}
!74 = !{!6, !8, i64 40}
!75 = !{!6, !8, i64 44}
!76 = !{!77, !30, i64 0}
!77 = !{!"gs_rect_s", !29, i64 0, !29, i64 16}
!78 = !{!6, !8, i64 48}
!79 = !{!77, !30, i64 16}
!80 = !{!77, !30, i64 8}
!81 = !{!6, !8, i64 52}
!82 = !{!77, !30, i64 24}
!83 = !{!28, !3, i64 628}
